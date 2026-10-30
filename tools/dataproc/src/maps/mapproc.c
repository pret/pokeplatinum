#include <errno.h>
#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>

#include "common.h"
#include "dataproc.h"
#include "game_types.h"

#include "struct_defs/events.h"

static const char *enumFile = NULL;
static const char *baseDir  = NULL;

enum { A_EVENTS };
enum { F_EVENTS_NAIX, F_LOCALS_BASE };

#define L_BG_EVENT_DIR     "enum BgEventDir"
#define L_OBJECT_EVENT_GFX "enum ObjectEventGfx"
#define L_MOVEMENT_TYPE    "enum MovementType"
#define L_TRAINER_TYPE     "enum TrainerType"
#define L_VAR_FLAG         "enum VarFlag"
#define L_MAP_HEADER       "enum MapHeaderID"
#define L_TRAINER_ID       "enum TrainerID"

static void HandleBaseDirArg(const char *arg);

static Driver driver = {
    .depfile = "maps_processor.d",

    .options = (Option[]) {
        POSITIONAL        ("ENUMFILE", &enumFile,        "Header defining enum MapHeaderID."),
        POSITIONAL_HANDLER("BASEDIR",  HandleBaseDirArg, "Base directory containing map data subdirs."),
        { 0 },
    },

    .lookups = (Lookup[]) {
        LOOKUP_ENUM("generated/bg_event_dirs.h",     L_BG_EVENT_DIR),
        LOOKUP_ENUM("generated/object_events_gfx.h", L_OBJECT_EVENT_GFX),
        LOOKUP_ENUM("generated/movement_types.h",    L_MOVEMENT_TYPE),
        LOOKUP_ENUM("generated/trainer_types.h",     L_TRAINER_TYPE),
        LOOKUP_ENUM("generated/vars_flags.h",        L_VAR_FLAG),
        LOOKUP_ENUM("constants/fieldmap.h",          L_MAP_HEADER),
        LOOKUP_ENUM("generated/trainers.h",          L_TRAINER_ID),
        { 0 },
    },

    .outputs = {
        .archives = (Archive[]) {
            [A_EVENTS] = { .filename = "zone_event.narc" },
            { 0 },
        },

        .writeIfChanged = true,
    },
};

static void HandleBaseDirArg(const char *arg)
{
    baseDir = arg;

    Buffer outTextFiles = { 0 }; // T = TextFile
    Buffer_Push(&outTextFiles, TextFile, .filename = String_Dupe("zone_event.naix"),
                                         .wrap     = TEXT_FILE_WRAP_GUARD);

    for (EachEntry(entry, Entries_FromEnum(enumFile, "MapHeaderID", "MAP_HEADER_", NULL, NULL))) {
        char *filename = String_Format("%s/%s/events.json", baseDir, entry.stem);

        struct stat stbuf;
        if (stat(filename, &stbuf) == 0) {
            Buffer_Push(&outTextFiles, TextFile, .filename = String_Format("locals/%s.h", entry.stem),
                                                 .wrap     = TEXT_FILE_WRAP_GUARD);
        }

        free(filename);
    }

    Buffer_Push(&outTextFiles, TextFile, 0);
    driver.outputs.textFiles = Driver_Keep(outTextFiles.data);
}

static void EnsureDir(const char *path)
{
    if (mkdir(path, S_IRWXU | S_IRWXG | S_IRWXO) && errno != EEXIST) {
        Driver_Fail("failed to ensure directory '%s': %s", path, strerror(errno));
    }
}

static size_t eventIndex = 0;

typedef struct EventBuffer { u32 count; void *buffer; } EventBuffer;

static inline u32 ClampCount(dp_node array, size_t max)
{
    size_t count = dp_arr_len(array);
    if (count > max) {
        dp_warn(array, "array has length greater than %zu", max);
        count = max;
    }

    return count;
}

static inline u16 ProcCloneID(dp_node parent, u16 fallback)
{
    dp_node cloneID = dp_try(parent, ".clone_id");
    return dp_missing(cloneID) ? fallback : dp_u16(cloneID);
}

static inline u16 ProcHiddenFlag(dp_node parent)
{
    // This could be a var-flag, or a map header (for clones), or just 0 as a string
    dp_node     node  = dp_at(parent, ".hidden_flag");
    const char *value = dp_string(node);
    if (!value) return 0;

    if (strcmp(value, "0") == 0) return 0;

    if (strncmp(value, "MAP_HEADER_", sizeof("MAP_HEADER_") - 1) == 0) {
        return dp_u16(dp_lookup(node, L_MAP_HEADER));
    }

    return dp_u16(dp_lookup(node, L_VAR_FLAG));
}

static inline u16 ProcScriptOrTrainer(dp_node parent)
{
    dp_node node = dp_at(parent, ".script");
    if (dp_type_of(node) == DP_INT) return dp_u16(node);

    u16 value = dp_u16(dp_lookup(node, L_TRAINER_ID)) - 1;
    value    += 3000; // SCRIPT_ID_OFFSET_SINGLE_BATTLES

    dp_node double_id = dp_try(parent, ".double_battle_id");
    if (!dp_missing(double_id) && dp_u16(double_id) == 2) {
        value += 2000; // SCRIPT_ID_OFFSET_DOUBLE_BATTLES - SINGLE
    }

    return value;
}

static EventBuffer ProcBGEvents(dp_node array)
{
    const u32 count  = ClampCount(array, UINT32_MAX);
    BgEvent  *events = Zalloc(count, sizeof(*events));

    for (size_t i = 0; i < count; i++) {
        dp_node  entry = dp_arr_at(array, i);
        BgEvent *event = &events[i];
        event->script  = dp_u16_at(entry, ".script");
        event->type    = dp_u16_at(entry, ".type");
        event->x       = dp_u32_at(entry, ".x");
        event->z       = dp_u32_at(entry, ".z");
        event->y       = dp_u32_at(entry, ".y");

        event->playerFacingDir = dp_u16(dp_lookup_at(entry, ".player_facing_dir", L_BG_EVENT_DIR));
    }

    return (EventBuffer) { .count = count, .buffer = events };
}

static EventBuffer ProcObjectEvents(dp_node array)
{
    const u32    count  = ClampCount(array, UINT32_MAX);
    ObjectEvent *events = Zalloc(count, sizeof(*events));

    for (size_t i = 0; i < count; i++) {
        dp_node      entry    = dp_arr_at(array, i);
        ObjectEvent *event    = &events[i];
        event->localID        = ProcCloneID(entry, i);
        event->graphicsID     = dp_u16(dp_lookup_at(entry, ".graphics_id", L_OBJECT_EVENT_GFX));
        event->movementType   = dp_u16(dp_lookup_at(entry, ".movement_type", L_MOVEMENT_TYPE));
        event->trainerType    = dp_u16(dp_lookup_at(entry, ".trainer_type", L_TRAINER_TYPE));
        event->script         = ProcScriptOrTrainer(entry);
        event->hiddenFlag     = ProcHiddenFlag(entry);
        event->dir            = dp_s16_at(entry, ".initial_dir");
        event->movementRangeX = dp_u16_at(entry, ".movement_range_x");
        event->movementRangeZ = dp_u16_at(entry, ".movement_range_z");
        event->x              = dp_u16_at(entry, ".x");
        event->z              = dp_u16_at(entry, ".z");
        event->y              = (u32)dp_u16_at(entry, ".y") << 16;

        // data is (often) a sparse array and not fully populated
        dp_node data = dp_at(entry, ".data");
        for (size_t j = 0; j < ClampCount(data, NELEMS(event->data)); j++) {
            event->data[j] = dp_u16(dp_arr_at(data, j));
        }

        TextFile_Printf(F_LOCALS_BASE + eventIndex, "#define %s %zu\n",
                        Symbol_Name(dp_at(entry, ".id")), i);
    }

    return (EventBuffer) { .count = count, .buffer = events };
}

static EventBuffer ProcWarpEvents(dp_node array)
{
    const u32  count  = ClampCount(array, UINT32_MAX);
    WarpEvent *events = Zalloc(count, sizeof(*events));

    for (size_t i = 0; i < count; i++) {
        dp_node    entry    = dp_arr_at(array, i);
        WarpEvent *event    = &events[i];
        event->x            = dp_u16_at(entry, ".x");
        event->z            = dp_u16_at(entry, ".z");
        event->destHeaderID = dp_u16(dp_lookup_at(entry, ".dest_header_id", L_MAP_HEADER));
        event->destWarpID   = dp_u16_at(entry, ".dest_warp_id");
    }

    return (EventBuffer) { .count = count, .buffer = events };
}

static EventBuffer ProcCoordEvents(dp_node array)
{
    const u32   count  = ClampCount(array, UINT32_MAX);
    CoordEvent *events = Zalloc(count, sizeof(*events));

    for (size_t i = 0; i < count; i++) {
        dp_node     entry   = dp_arr_at(array, i);
        CoordEvent *event   = &events[i];
        event->script       = dp_u16_at(entry, ".script");
        event->x            = dp_u16_at(entry, ".x");
        event->z            = dp_u16_at(entry, ".z");
        event->width        = dp_u16_at(entry, ".width");
        event->length       = dp_u16_at(entry, ".length");
        event->y            = dp_u16_at(entry, ".y");
        event->value        = dp_u16_at(entry, ".value");
        event->var          = dp_u16(dp_lookup_at(entry, ".var", L_VAR_FLAG));
    }

    return (EventBuffer) { .count = count, .buffer = events };
}

#define CopyEvents(p, events, T) \
    (memcpy(p,              &events.count,  sizeof(u32)),              \
     memcpy(p + sizeof(u32), events.buffer, events.count * sizeof(T)), \
     sizeof(u32) + events.count * sizeof(T))

static void ProcEvents(dp_node root, const char *stem)
{
    EventBuffer bgEvents = ProcBGEvents(dp_at(root, ".bg_events"));
    EventBuffer objectEvents = ProcObjectEvents(dp_at(root, ".object_events"));
    EventBuffer warpEvents = ProcWarpEvents(dp_at(root, ".warp_events"));
    EventBuffer coordEvents = ProcCoordEvents(dp_at(root, ".coord_events"));

    size_t size = bgEvents.count * sizeof(BgEvent)
                + objectEvents.count * sizeof(ObjectEvent)
                + warpEvents.count * sizeof(WarpEvent)
                + coordEvents.count * sizeof(CoordEvent)
                + sizeof(u32) * 4;

    char *buffer = Zalloc(size, sizeof(*buffer));
    char *p      = buffer;
    p           += CopyEvents(p, bgEvents,     BgEvent);
    p           += CopyEvents(p, objectEvents, ObjectEvent);
    p           += CopyEvents(p, warpEvents,   WarpEvent);
    p           += CopyEvents(p, coordEvents,  CoordEvent);

    Archive_Pack(A_EVENTS, buffer, size);
    TextFile_Printf(F_EVENTS_NAIX, "#define events_%s %zu\n", stem, eventIndex);

    free(bgEvents.buffer);
    free(objectEvents.buffer);
    free(warpEvents.buffer);
    free(coordEvents.buffer);
    free(buffer);
}

static void ProcEntry(Entry *entry)
{
    char *filename = String_Format("%s/%s/events.json", baseDir, entry->stem);

    struct stat stbuf;
    if (stat(filename, &stbuf) == 0) {
        dp_file *file = Driver_Load("%s", filename); // TODO: kinda gross?
        ProcEvents(dp_root(file), entry->stem);
        Driver_Close(file);
        eventIndex++;
    }

    free(filename);
}

int main(int argc, char **argv)
{
    Driver_Init(&driver, argc, argv);

    char *localsDir = String_Format("%s/locals", CLI_OutputDir());
    EnsureDir(localsDir);

    for (EachEntry(entry, Entries_FromEnum(enumFile, "MapHeaderID", "MAP_HEADER_", NULL, NULL))) {
        ProcEntry(&entry);
    }

    free(localsDir);
    return Driver_Finish(&driver);
}
