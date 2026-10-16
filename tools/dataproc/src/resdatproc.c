#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

#include "common.h"
#include "game_types.h"

#define MAX_NARCS 16
#define SENTINEL  0xFFFFFFFE

static const char *resdatFile = NULL;
static const char *prefix     = "templates";
static size_t      fileIndex  = 0;

static const char *narcArgs[MAX_NARCS]; // NARC_ID:RECORDS, validated by AddNarc
static size_t      numNarcs = 0;

// Resource outputs share their IDs with the resource kinds the game reads from
// each file's header, so B_CHARS..B_ANIMS must stay first and in this order.
enum { B_CHARS, B_PLTTS, B_CELLS, B_ANIMS, B_TEMPLATES, B_HEADERS };
enum { F_HEADER };

#define L_NARC  "enum NarcID"
#define L_CHARS "characters"
#define L_PLTTS "palettes"
#define L_CELLS "cells"
#define L_ANIMS "animations"

static const struct {
    const char *key;  // array of resources in the input
    const char *type; // lookup type of their IDs, for template references
} kinds[] = {
    [B_CHARS] = { ".characters", L_CHARS },
    [B_PLTTS] = { ".palettes",   L_PLTTS },
    [B_CELLS] = { ".cells",      L_CELLS },
    [B_ANIMS] = { ".animations", L_ANIMS },
};

typedef struct ResourceData {
    u32 narc;
    u32 member;
    u32 compressed;
    u32 id;
    u32 screenMask;
    u32 paletteSlot;
} ResourceData;

typedef struct TemplateData {
    s32 charID;
    s32 plttID;
    s32 cellID;
    s32 animID;
    s32 mcelID; // unused by gen 4 games
    s32 maniID; // unused by gen 4 games
    s32 transfer;
    s32 priority;
} TemplateData;

static void AddNarc(const char *arg)
{
    if (numNarcs == MAX_NARCS) CLI_Fail("too many '-D' options; max is %d", MAX_NARCS);
    if (!strchr(arg, ':'))     CLI_Fail("missing ':' separator in argument '%s'", arg);

    narcArgs[numNarcs++] = arg;
}

static void SetFileIndex(const char *arg)
{
    char *end = NULL;
    fileIndex = strtoull(arg, &end, 0);
    if (*arg == '-' || *arg == '\0' || *end != '\0') {
        CLI_Fail("argument for '-n' must be a nonnegative integer, got '%s'", arg);
    }
}

static Driver driver = {
    .depfile = "resdat.d",

    .options = (Option[]) {
        OPTION_HANDLER('D', "NARC_ID:RECORDS", AddNarc, "Name NARC_ID's members from its nitroarc RECORDS. Repeatable."),
        OPTION_VALUE('p', "PREFIX", &prefix,
                     "Name the outputs PREFIX_{chars,pltts,cells,anims}.resdat, PREFIX.cldat and PREFIX.h."),
        OPTION_HANDLER('n', "INDEX", SetFileIndex,
                       "Use element INDEX of any array-valued 'from_file' property. Defaults to 0."),
        POSITIONAL("RESDAT_JSON", &resdatFile, "Resource and template definitions."),
        { 0 },
    },

    .lookups = (Lookup[]) {
        LOOKUP_ENUM("constants/narc.h", L_NARC),
        { 0 },
    },

    // Named here only until main() applies the -p prefix.
    .outputs = {
        .binaryFiles = (BinaryFile[]) {
            [B_CHARS]     = { .filename = "chars.resdat" },
            [B_PLTTS]     = { .filename = "pltts.resdat" },
            [B_CELLS]     = { .filename = "cells.resdat" },
            [B_ANIMS]     = { .filename = "anims.resdat" },
            [B_TEMPLATES] = { .filename = "templates.cldat" },
            { 0 },
        },

        .textFiles = (TextFile[]) {
            [F_HEADER] = { .filename = "templates.h", .wrap = TEXT_FILE_WRAP_GUARD },
            { 0 },
        },
    },
};

// Register each NARC's member names as a lookup type named after the NARC.
// Member names are loaded in archive order.
static void RegisterNarcs(void)
{
    for (size_t i = 0; i < numNarcs; i++) {
        const char *sep  = strchr(narcArgs[i], ':');
        char       *narc = String_Format("%.*s", (int)(sep - narcArgs[i]), narcArgs[i]);
        Records     recs = Records_Load(sep + 1);

        dp_symbol *members = Zalloc(recs.count, sizeof(*members));
        for (size_t j = 0; j < recs.count; j++) {
            members[j] = (dp_symbol){ .value = (long)j, .name = recs.items[j].id };
        }

        Lookups_Register(narc, members, recs.count);
        free(members);
        free(narc);
    }
}

static void ReadSource(dp_node res, ResourceData *data)
{
    const dp_node narc = dp_lookup_at(res, ".from_narc", L_NARC);
    data->narc = dp_u32(narc);
    if (dp_type_of(narc) != DP_SYMBOL) return; // error is already staged

    dp_node file = dp_at(res, ".from_file");
    if (dp_type_of(file) == DP_ARRAY) file = dp_arr_at(file, fileIndex);

    const dp_node member = dp_lookup(file, dp_string(narc));
    data->member = dp_u32(member);
    if (dp_type_of(member) != DP_SYMBOL) dp_note(narc, "type '%s' defined here", dp_string(narc));
}

static void ProcResources(dp_node root, int kind)
{
    const dp_node array   = dp_at(root, kinds[kind].key);
    dp_symbol    *ids     = Zalloc(dp_arr_len(array), sizeof(*ids));
    size_t        numIDs  = 0;
    const u32     header  = (u32)kind;
    BinaryFile_Write(kind, &header, sizeof(header));

    for (dp_each(res, i, array)) {
        if (dp_bool(dp_try(res, ".dummy"))) continue; // keeps its index, but isn't written

        ResourceData data = {
            .compressed = dp_bool_at(res, ".compressed"),
            .id         = (u32)i,
        };

        ReadSource(res, &data);

        // MATCH DETAIL: Kinds without VRAM placement or a palette slot repeat
        // the NARC ID in those fields.
        bool vram        = kind == B_CHARS || kind == B_PLTTS;
        data.screenMask  = vram ? (u32)(dp_bool_at(res, ".on_main_screen") | dp_bool_at(res, ".on_sub_screen") << 1) : data.narc;
        data.paletteSlot = kind == B_PLTTS ? (u32)dp_uint_in_at(res, ".load_in_slot", 0, 15) : data.narc;

        BinaryFile_Write(kind, &data, sizeof(data));

        const dp_node idNode = dp_at(res, ".id");
        const char   *id     = dp_string(idNode);
        if (id == NULL) continue; // error is already staged

        bool duplicate = false;
        for (size_t j = 0; j < numIDs && !duplicate; j++) {
            if (strcmp(ids[j].name, id) == 0) {
                dp_error(idNode, "%s ID '%s' is already defined", kinds[kind].type, id);
                dp_note(dp_at(dp_arr_at(array, (size_t)ids[j].value), ".id"), "previously defined here");
                duplicate = true;
            }
        }

        if (!duplicate) ids[numIDs++] = (dp_symbol){ .value = (long)i, .name = id };
    }

    const ResourceData sentinel = { SENTINEL, SENTINEL, SENTINEL, SENTINEL, SENTINEL, SENTINEL };
    BinaryFile_Write(kind, &sentinel, sizeof(sentinel));

    Lookups_Register(kinds[kind].type, ids, numIDs);
    free(ids);
}

static void ProcTemplates(dp_node root)
{
    for (dp_each(tmpl, i, dp_at(root, ".templates"))) {
        TemplateData data = {
            .charID   = dp_s32(dp_lookup_at(tmpl, ".characters", L_CHARS)),
            .plttID   = dp_s32(dp_lookup_at(tmpl, ".palette", L_PLTTS)),
            .cellID   = dp_s32(dp_lookup_at(tmpl, ".cells", L_CELLS)),
            .animID   = dp_s32(dp_lookup_at(tmpl, ".animations", L_ANIMS)),
            .mcelID   = -1,
            .maniID   = -1,
            .transfer = dp_bool_at(tmpl, ".vram_transfer"),
            .priority = dp_s32_at(tmpl, ".priority"),
        };

        BinaryFile_Write(B_TEMPLATES, &data, sizeof(data));
        const dp_node id = dp_at(tmpl, ".id");
        TextFile_Printf(F_HEADER, "#define %s %zu\n", Symbol_Name(id), i);
    }

    const TemplateData sentinel = { SENTINEL, SENTINEL, SENTINEL, SENTINEL, SENTINEL, SENTINEL, SENTINEL, SENTINEL };
    BinaryFile_Write(B_TEMPLATES, &sentinel, sizeof(sentinel));
}

int main(int argc, char **argv)
{
    Driver_Init(&driver, argc, argv);
    RegisterNarcs();

    char *names[] = {
        [B_CHARS]     = String_Format("%s_chars.resdat", prefix),
        [B_PLTTS]     = String_Format("%s_pltts.resdat", prefix),
        [B_CELLS]     = String_Format("%s_cells.resdat", prefix),
        [B_ANIMS]     = String_Format("%s_anims.resdat", prefix),
        [B_TEMPLATES] = String_Format("%s.cldat", prefix),
        [B_HEADERS]   = String_Format("%s.h", prefix),
    };

    for (int i = B_CHARS; i <= B_TEMPLATES; i++) driver.outputs.binaryFiles[i].filename = names[i];
    driver.outputs.textFiles[F_HEADER].filename = names[B_TEMPLATES + 1];

    dp_file *resdat = Driver_Load("%s", resdatFile);
    for (int kind = B_CHARS; kind <= B_ANIMS; kind++) ProcResources(dp_root(resdat), kind);
    ProcTemplates(dp_root(resdat));
    Driver_Close(resdat);

    int status = Driver_Finish(&driver);
    for (size_t i = 0; i < NELEMS(names); i++) free(names[i]);
    return status;
}
