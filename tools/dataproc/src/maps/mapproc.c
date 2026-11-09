#include <assert.h>
#include <errno.h>
#include <regex.h>
#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>

#include "common.h"
#include "dataproc.h"
#include "game_types.h"

#include "constants/field/script_ranges.h"
#include "constants/fieldmap.h"
#include "generated/bg_event_types.h"
#include "generated/trainer_types.h"
#include "generated/trainers.h"
#include "generated/vars_flags.h"
#include "struct_defs/events.h"
#include "data/field/hidden_items.h"
#include "berry_patches.h"
#include "location.h"

static const char *enumFile = NULL;
static const char *baseDir  = NULL;

enum { A_EVENTS, A_GROUPS };
enum { F_EVENTS_NAIX, F_GROUPS_NAIX, F_HEADERS_H, F_LOCALS_BASE };

#define L_BG_EVENT_DIR      "enum BgEventDir"
#define L_BG_EVENT_TYPE     "enum BgEventType"
#define L_OBJECT_EVENT_GFX  "enum ObjectEventGfx"
#define L_MOVEMENT_TYPE     "enum MovementType"
#define L_TRAINER_TYPE      "enum TrainerType"
#define L_VAR_FLAG          "enum VarFlag"
#define L_MAP_OBJECT_DIR    "DIR_"
#define L_MAP_HEADER        "enum MapHeaderID"
#define L_MAP_FILE          "enum MapFileID"
#define L_TRAINER_ID        "enum TrainerID"
#define L_TEXT_BANK         "enum TextBank"
#define L_POPUP_STYLE       "enum PopupStyle"
#define L_MAP_TYPE          "enum MapType"
#define L_CAMERA_TYPE       "enum CameraType"
#define L_WEATHER           "enum OverworldWeather"
#define L_BATTLE_BACKGROUND "enum BattleBackground"
#define L_MAP_GROUP         "map_group"
#define L_AREA_DATA         "area_data_"
#define L_LOCATION_NAME     "LocationNames_Text_"
#define L_SOUND_SEQ         "SEQ_"
#define L_CITY_MAP          "city_map_"
#define L_ROUTE_MAP         "route_map_"

#define HEADER_ZERO_STEM "everywhere"

static void HandleBaseDirArg(const char *arg);

static const char *const sGlobalScriptHeaders[] = {
#define SCRIPT_HEADER(_, file, __) #file,
    SCRIPT_RANGE_TABLE(SCRIPT_HEADER)
#undef SCRIPT_HEADER
};

static Buffer sGlobalScriptLabels; // T = dp_symbol, from every global script header

// Labels of the map being processed; empty while processing a map without a
// scripts.s file.
static Buffer sLocalScriptLabels; // T = dp_symbol

static Driver driver = {
    .depfile = "maps_processor.d",

    .options = (Option[]) {
        POSITIONAL        ("ENUMFILE", &enumFile,        "Header defining enum MapHeaderID."),
        POSITIONAL_HANDLER("BASEDIR",  HandleBaseDirArg, "Base directory containing map data subdirs."),
        { 0 },
    },

    .lookups = (Lookup[]) {
        LOOKUP_ENUM("generated/bg_event_dirs.h",      L_BG_EVENT_DIR),
        LOOKUP_ENUM("generated/bg_event_types.h",     L_BG_EVENT_TYPE),
        LOOKUP_ENUM("generated/object_events_gfx.h",  L_OBJECT_EVENT_GFX),
        LOOKUP_ENUM("generated/movement_types.h",     L_MOVEMENT_TYPE),
        LOOKUP_ENUM("generated/trainer_types.h",      L_TRAINER_TYPE),
        LOOKUP_ENUM("generated/vars_flags.h",         L_VAR_FLAG),
        LOOKUP_ENUM("generated/trainers.h",           L_TRAINER_ID),
        LOOKUP_ENUM("generated/text_banks.h",         L_TEXT_BANK),
        LOOKUP_ENUM("constants/fieldmap.h",           L_MAP_HEADER),
        LOOKUP_ENUM("constants/fieldmap.h",           L_MAP_FILE),
        LOOKUP_ENUM("constants/fieldmap.h",           L_POPUP_STYLE),
        LOOKUP_ENUM("constants/fieldmap.h",           L_CAMERA_TYPE),
        LOOKUP_ENUM("constants/fieldmap.h",           L_MAP_TYPE),
        LOOKUP_ENUM("constants/overworld_weather.h",  L_WEATHER),
        LOOKUP_ENUM("constants/battle/backgrounds.h", L_BATTLE_BACKGROUND),

        LOOKUP_DEFINES("constants/map_object.h",                  L_MAP_OBJECT_DIR),
        LOOKUP_DEFINES("res/field/area_data/area_data.naix",      L_AREA_DATA),
        LOOKUP_DEFINES("res/graphics/signposts/field_board.naix", L_CITY_MAP),
        LOOKUP_DEFINES("res/graphics/signposts/field_board.naix", L_ROUTE_MAP),
        LOOKUP_DEFINES("res/sound/pl_sound_data.naix",            L_SOUND_SEQ),
        LOOKUP_DEFINES("res/text/bank/location_names.h",          L_LOCATION_NAME),
        { 0 },
    },

    .outputs = {
        .archives = (Archive[]) {
            [A_EVENTS] = { .filename = "zone_event.narc" },
            [A_GROUPS] = { .filename = "map_matrix.narc" },
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
    Buffer_Push(&outTextFiles, TextFile, .filename = String_Dupe("map_matrix.naix"),
                                         .wrap     = TEXT_FILE_WRAP_GUARD);
    Buffer_Push(&outTextFiles, TextFile, .filename = String_Dupe("headers.h"),
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

static int CompareSymbolNames(const void *a, const void *b)
{
    const dp_symbol *lhs = a;
    const dp_symbol *rhs = b;
    return strcmp(lhs->name, rhs->name);
}

static void SortScriptLabels(Buffer *labels, const char *source)
{
    const size_t count = Buffer_Count(labels, dp_symbol);
    if (count == 0) return;

    qsort(labels->data, count, sizeof(dp_symbol), CompareSymbolNames);
    for (size_t i = 1; i < count; i++) {
        const char *name = Buffer_At(labels, dp_symbol, i).name;
        if (strcmp(Buffer_At(labels, dp_symbol, i - 1).name, name) == 0) {
            Driver_Fail("%s: duplicate script-label '%s'", source, name);
        }
    }
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

static inline u32 ClampLength(dp_node string, size_t max)
{
    const char *s = dp_string(string);
    if (!s) return 0;

    size_t len = strlen(s);
    if (len > max) {
        dp_warn(string, "string has length greater than %zu", max);
        len = max;
    }

    return len;
}

static inline bool IsClone(dp_node entry)
{
    dp_node node = dp_try(entry, ".clone");
    return !dp_missing(node) && dp_type_of(node) != DP_ERROR;
}

static inline u16 ProcHiddenFlag(dp_node parent)
{
    // This could be a var-flag, or just 0 as a string
    dp_node     node  = dp_at(parent, ".hidden_flag");
    const char *value = dp_string(node);
    if (!value) return 0;

    if (strcmp(value, "0") == 0) return 0;

    return dp_u16(dp_lookup(node, L_VAR_FLAG));
}

static inline dp_symbol* MatchScriptLabel(const dp_symbol *key, const Buffer *labels)
{
    if (labels->size == 0) return NULL;
    return bsearch(key, labels->data, Buffer_Count(labels, dp_symbol), sizeof(dp_symbol), CompareSymbolNames);
}

static bool FindScriptLabel(const char *label, u16 *outID)
{
    const dp_symbol key   = { .name = label };
    dp_symbol      *match = MatchScriptLabel(&key, &sLocalScriptLabels);
    if (!match) match = MatchScriptLabel(&key, &sGlobalScriptLabels);

    if (match) *outID = match->value;
    return match != NULL;
}

static u16 ProcScript(dp_node parent)
{
    dp_node node = dp_try(parent, ".script");
    if (dp_missing(node)) return 0;
    if (dp_type_of(node) == DP_INT) return dp_u16(node);

    const char *label = dp_string(node);
    if (label == NULL) return 0;

    u16 id;
    if (FindScriptLabel(label, &id)) return id;

    dp_error(node, "unrecognized script-label '%s'", label);
    return 0;
}

typedef struct KindContext {
    dp_node     objects; // second pass only
    const char *stem;    // first pass only
    size_t      index;   // first pass only
} KindContext;

typedef struct ObjectKind {
    const char *key;
    bool        ownsScript; // `true`: a `script` child is forbidden; `false`: required, unless the kind is generic
    void      (*proc)(dp_node kind, dp_node entry, ObjectEvent *event, const KindContext *ctx);
    void      (*preproc)(dp_node kind, u16 data[3], const KindContext *ctx);
} ObjectKind;

typedef struct ObjectData {
    const ObjectKind *kind;
    u16               index;
    u16               data[3];
} ObjectData;

static Buffer sObjects;     // T = ObjectData, every object in first-pass order
static Buffer sObjectsBase; // T = size_t, indexed by eventIndex

static void PreprocTrainer(dp_node kind, u16 data[3], const KindContext *ctx)
{
    (void)ctx;

    u16 sight    = dp_u16_at(kind, ".sight_range");
    u16 interval = dp_u16(dp_try(kind, ".interval_steps"));

    data[0] = sight;
    data[1] = interval;
}

static void ProcTrainer(dp_node kind, dp_node entry, ObjectEvent *event, const KindContext *ctx)
{
    dp_node trainerType = dp_try(entry, ".trainer_type");
    if (dp_type_of(trainerType) == DP_STRING && strcmp(dp_string(trainerType), "TRAINER_TYPE_NONE") == 0) {
        dp_error(trainerType, "overworld trainers must not have TRAINER_TYPE_NONE");
    }

    dp_node id = dp_lookup_at(kind, ".id", L_TRAINER_ID);
    if (dp_type_of(id) == DP_ERROR) return;
    if (dp_u16(id) == TRAINER_NONE) {
        dp_error(id, "trainer declares its ID as TRAINER_NONE");
        return;
    }

    u16     script    = dp_u16(id) - 1 + SCRIPT_ID_OFFSET_SINGLE_BATTLES;
    dp_node dependsOn = dp_try(kind, ".depends_on");
    if (!dp_missing(dependsOn)) {
        const char *dependsID = dp_string(dependsOn);
        if (dependsID == NULL) return;

        const size_t count = dp_arr_len(ctx->objects);
        dp_node      match = { 0 };

        for (size_t i = 0; i < count; i++) {
            dp_node     other     = dp_arr_at(ctx->objects, i);
            const char *candidate = dp_string(dp_try(other, ".id"));
            if (candidate == NULL) continue;

            if (strcmp(candidate, dependsID) == 0) {
                match = other;
                break;
            }
        }

        dp_node     lead     = dp_try(match, ".trainer");
        const char *idOurs   = dp_string(dp_try(kind, ".id"));
        const char *idTheirs = dp_string(dp_try(lead, ".id"));
        bool        chained  = !dp_missing(dp_try(lead, ".depends_on"));

        if (dp_type_of(match) == DP_ERROR) {
            dp_error(dependsOn, "trainer depends on another object that does not exist");
        } else if (dp_missing(lead)) {
            dp_error(dependsOn, "trainer depends on another object that is not a trainer");
            dp_note(match, "ID '%s' points to this object", dp_string(dp_at(match, ".id")));
        } else if (idOurs && idTheirs && strcmp(idOurs, idTheirs) != 0) {
            dp_error(dependsOn, "trainer depends on another trainer with a different ID");
            dp_note(dp_at(lead, ".id"), "different trainer ID defined here");
        } else if (chained) {
            dp_error(dependsOn, "trainer depends on another dependent trainer");
            dp_note(dp_at(lead, ".depends_on"), "trainer declared as dependent here");
        } else {
            script += SCRIPT_ID_OFFSET_DOUBLE_BATTLES - SCRIPT_ID_OFFSET_SINGLE_BATTLES;
        }
    }

    event->script = script;
}

typedef struct BerryPatchLocation { u16 event; const char *stem; } BerryPatchLocation;
static BerryPatchLocation sPatchLocations[MAX_BERRY_PATCHES] = { 0 };

static void PreprocBerryTree(dp_node kind, u16 data[3], const KindContext *ctx)
{
    int64_t patch = dp_int(kind);
    if (dp_type_of(kind) != DP_INT) return; // already reported
    if (patch < 0 || patch >= MAX_BERRY_PATCHES) {
        dp_error(kind, "berry tree's patch index must be in the range [0,%u)", MAX_BERRY_PATCHES);
        return;
    }

    BerryPatchLocation *location = &sPatchLocations[patch];
    if (location->stem) {
        dp_error(kind, "berry tree's patch index is already used by '%s', event %u", location->stem, location->event);
        return;
    }

    data[0]         = patch;
    location->event = ctx->index;
    location->stem  = ctx->stem;
}

static void ProcBerryTree(dp_node kind, dp_node entry, ObjectEvent *event, const KindContext *ctx)
{
    (void)kind;
    (void)entry;
    (void)ctx;

    event->script = SCRIPT_ID_OFFSET_BERRY_TREE_INTERACTIONS;
}

static void PreprocSignpost(dp_node kind, u16 data[3], const KindContext *ctx)
{
    (void)ctx;

    const char *signpost = dp_string(kind);
    if (signpost == NULL) return;

    const char *type = NULL;
    const char *base = NULL;
    if (strncmp(signpost, L_ROUTE_MAP, strlen(L_ROUTE_MAP)) == 0) {
        type = L_ROUTE_MAP;
        base = "route_map_00_NCGR";
    } else if (strncmp(signpost, L_CITY_MAP, strlen(L_CITY_MAP)) == 0) {
        type = L_CITY_MAP;
        base = "city_map_empty_NCGR";
    } else {
        dp_error(kind, "signpost graphics index is neither a city-map nor a route-map");
        return;
    }

    data[0] = dp_u16(dp_lookup(kind, type)) - Lookups_ValueOf(type, base);
}

static void ProcClone(dp_node kind, dp_node entry, ObjectEvent *event, const KindContext *ctx)
{
    (void)ctx;

    dp_node hiddenFlag = dp_try(entry, ".hidden_flag");
    if (!dp_missing(hiddenFlag)) {
        dp_error(hiddenFlag, "clones must not declare a hidden flag");
        dp_note(kind, "declared as a clone here");
    }

    dp_node map       = dp_lookup_at(kind, ".map", L_MAP_HEADER);
    event->hiddenFlag = dp_u16(map);
    event->script     = 0xFFFF;
    if (dp_type_of(map) == DP_ERROR) return;

    char   *type  = String_Format("objects:%s", dp_string(map));
    dp_node owner = dp_lookup_at(kind, ".id", type);
    free(type);
    if (dp_type_of(owner) == DP_ERROR) return;

    const ObjectData *object = &Buffer_At(&sObjects, ObjectData, dp_u32(owner));
    event->localID = object->index;
    memcpy(event->data, object->data, sizeof(event->data));
}

static void PreprocEventGeneric(dp_node kind, u16 data[3], const KindContext *ctx)
{
    (void)ctx;

    // data is (often) a sparse array and not fully populated
    dp_node   array = dp_at(kind, ".data");
    const u32 count = ClampCount(array, 3);
    for (size_t j = 0; j < count; j++) {
        data[j] = dp_u16(dp_arr_at(array, j));
    }
}

static void ProcEventGeneric(dp_node kind, dp_node entry, ObjectEvent *event, const KindContext *ctx)
{
    (void)kind;
    (void)ctx;

    event->script = ProcScript(entry);
}

static const ObjectKind sObjectKinds[] = {
    { .key = ".trainer",    .ownsScript = true,  .proc = ProcTrainer,      .preproc = PreprocTrainer   },
    { .key = ".berry_tree", .ownsScript = true,  .proc = ProcBerryTree,    .preproc = PreprocBerryTree },
    { .key = ".signpost",   .ownsScript = false, .proc = ProcEventGeneric, .preproc = PreprocSignpost  },
    { .key = ".clone",      .ownsScript = true,  .proc = ProcClone,        .preproc = NULL             },
};

static const ObjectKind sGenericObjectKind = {
    .key        = NULL,
    .ownsScript = false,
    .proc       = ProcEventGeneric,
    .preproc    = PreprocEventGeneric,
};

static const ObjectKind* PickObjectKind(dp_node entry)
{
    const ObjectKind *kind = NULL;
    dp_node node = { 0 };

    for (size_t i = 0; i < NELEMS(sObjectKinds); i++) {
        const ObjectKind *candidate = &sObjectKinds[i];
        dp_node curr = dp_try(entry, candidate->key);

        if (!dp_missing(curr)) {
            if (kind) {
                dp_error(curr, "multiple kind-class nodes are not allowed");
                dp_note(node, "previous kind-class node defined here");
                return NULL;
            }

            node = curr;
            kind = candidate;
        }
    }

    return kind ? kind : &sGenericObjectKind;
}

static void ProcEventBase(dp_node entry, ObjectEvent *event, size_t i)
{
    if (!IsClone(entry)) event->hiddenFlag = ProcHiddenFlag(entry);

    event->localID        = i;
    event->graphicsID     = dp_u16(dp_lookup_at(entry, ".graphics_id", L_OBJECT_EVENT_GFX));
    event->movementType   = dp_u16(dp_lookup_at(entry, ".movement_type", L_MOVEMENT_TYPE));
    event->trainerType    = dp_u16(dp_lookup_at(entry, ".trainer_type", L_TRAINER_TYPE));
    event->dir            = dp_s16(dp_lookup_at(entry, ".initial_dir", L_MAP_OBJECT_DIR));
    event->movementRangeX = dp_u16_at(entry, ".movement_range_x");
    event->movementRangeZ = dp_u16_at(entry, ".movement_range_z");
    event->x              = dp_u16_at(entry, ".x");
    event->z              = dp_u16_at(entry, ".z");
    event->y              = (u32)dp_u16_at(entry, ".y") << 16;
}

static void CheckKindConflicts(dp_node entry, dp_node kindNode, const ObjectKind *kind)
{
    if (kind == &sGenericObjectKind) return;

    dp_node script = dp_try(entry, ".script");
    if (kind->ownsScript && !dp_missing(script)) {
        dp_error(script, "object declares a special kind with a deduced script");
        dp_note(kindNode, "special kind declared here");
    } else if (!kind->ownsScript && dp_missing(script)) {
        dp_error(kindNode, "object declares a special kind that requires a script");
    }

    dp_node data = dp_try(entry, ".data");
    if (!dp_missing(data)) {
        dp_error(data, "object declares a special kind with deduced data values");
        dp_note(kindNode, "special kind declared here");
    }
}

static EventBuffer ProcBGEvents(dp_node array)
{
    const u32 count  = ClampCount(array, UINT32_MAX);
    BgEvent  *events = Zalloc(count, sizeof(*events));

    for (size_t i = 0; i < count; i++) {
        dp_node  entry = dp_arr_at(array, i);
        BgEvent *event = &events[i];

        dp_node hiddenItem = dp_try(entry, ".hidden_item");
        if (!dp_missing(hiddenItem)) {
            dp_node flagNode = dp_lookup(hiddenItem, L_VAR_FLAG);
            u16     flag     = dp_u16(flagNode);
            event->type      = BG_EVENT_TYPE_HIDDEN_ITEM;
            event->script    = SCRIPT_ID_OFFSET_HIDDEN_ITEMS + flag - HIDDEN_ITEM_FLAGS_START;

            if (dp_type_of(flagNode) != DP_ERROR) {
                bool found = false;
                for (size_t j = 0; !found && j < NELEMS(gHiddenItems); j++) {
                    found = gHiddenItems[j].script == flag - HIDDEN_ITEM_FLAGS_START;
                }

                if (!found) {
                    dp_error(hiddenItem, "hidden item declares a flag with no entry in gHiddenItems");
                    event->script = 0;
                }
            }

            dp_node type = dp_try(entry, ".type");
            if (!dp_missing(type)) {
                dp_error(type, "hidden item declares a type");
                dp_note(hiddenItem, "declared as a hidden item here");
            }

            dp_node script = dp_try(entry, ".script");
            if (!dp_missing(script)) {
                dp_error(script, "hidden item declares a script");
                dp_note(hiddenItem, "declared as a hidden item here");
            }
        } else {
            event->script = ProcScript(entry);
            event->type   = dp_u16(dp_lookup_at(entry, ".type", L_BG_EVENT_TYPE));
            if (event->type == BG_EVENT_TYPE_HIDDEN_ITEM) {
                dp_error(dp_at(entry, ".type"), "hidden items must declare their flag with a hidden_item key");
            }
        }

        event->x = dp_u32_at(entry, ".x");
        event->z = dp_u32_at(entry, ".z");
        event->y = dp_u32_at(entry, ".y");

        event->playerFacingDir = dp_u16(dp_lookup_at(entry, ".player_facing_dir", L_BG_EVENT_DIR));
    }

    return (EventBuffer) { .count = count, .buffer = events };
}

static EventBuffer ProcObjectEvents(dp_node array)
{
    const size_t  base   = Buffer_At(&sObjectsBase, size_t, eventIndex);
    const u32     count  = ClampCount(array, UINT32_MAX);
    ObjectEvent  *events = Zalloc(count, sizeof(*events));
    KindContext   ctx    = { .objects = array };

    for (size_t i = 0; i < count; i++) {
        dp_node           entry  = dp_arr_at(array, i);
        const ObjectData *object = &Buffer_At(&sObjects, ObjectData, base + i);
        const ObjectKind *kind   = object->kind;
        ObjectEvent      *event  = &events[i];

        memcpy(event->data, object->data, sizeof(event->data));
        ProcEventBase(entry, event, i);
        if (kind) kind->proc(kind->key ? dp_at(entry, kind->key) : entry, entry, event, &ctx);
    }

    return (EventBuffer) { .count = count, .buffer = events };
}

static EventBuffer ProcWarpEvents(dp_node array)
{
    const u32  count  = ClampCount(array, WARP_ID_DYNAMIC);
    WarpEvent *events = Zalloc(count, sizeof(*events));

    for (size_t i = 0; i < count; i++) {
        dp_node    entry = dp_arr_at(array, i);
        WarpEvent *event = &events[i];
        event->x         = dp_u16_at(entry, ".x");
        event->z         = dp_u16_at(entry, ".z");

        dp_node destHeader = dp_lookup_at(entry, ".dest_header_id", L_MAP_HEADER);
        event->destHeaderID = dp_u16(destHeader);

        dp_node destWarp = dp_try(entry, ".dest_warp_id");
        if (event->destHeaderID == MAP_HEADER_DYNAMIC) {
            if (!dp_missing(destWarp)) {
                dp_warn(destWarp, "ignoring destination warp ID on dynamic header");
                dp_note(destHeader, "set to dynamic destination here");
            }

            event->destWarpID = WARP_ID_DYNAMIC;
        } else if (dp_type_of(destHeader) != DP_ERROR) {
            char *headerWarps = String_Format("warps:%s", dp_string(destHeader));
            event->destWarpID = dp_u16(dp_lookup_at(entry, ".dest_warp_id", headerWarps));
            free(headerWarps);
        }
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
        event->script       = ProcScript(entry);
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

static void ProcHeader(Entry *entry, bool hasEncounters, bool hasScripts, bool hasInit, bool hasEvents)
{
    dp_node root             = entry->root;
    dp_node areaData         = dp_lookup_at(root, ".areaData",         L_AREA_DATA);
    dp_node mapGroup         = dp_lookup_at(root, ".mapGroup",         L_MAP_GROUP);
    dp_node locationName     = dp_lookup_at(root, ".locationName",     L_LOCATION_NAME);
    dp_node textBank         = dp_lookup_at(root, ".textBank",         L_TEXT_BANK);
    dp_node popupStyle       = dp_lookup_at(root, ".popupStyle",       L_POPUP_STYLE);
    dp_node weather          = dp_lookup_at(root, ".weather",          L_WEATHER);
    dp_node cameraType       = dp_lookup_at(root, ".cameraType",       L_CAMERA_TYPE);
    dp_node battleBackground = dp_lookup_at(root, ".battleBackground", L_BATTLE_BACKGROUND);
    dp_node mapType          = dp_lookup_at(root, ".mapType",          L_MAP_TYPE);
    dp_node musicDay         = dp_lookup_at(root, ".musicDay",         L_SOUND_SEQ);
    dp_node musicNight       = dp_lookup_at(root, ".musicNight",       L_SOUND_SEQ);

    // Pre-empt errors into the source header.json, not the C table.
    dp_u8  (areaData);
    dp_u16 (mapGroup);
    dp_u8  (locationName);
    dp_u16 (textBank);
    dp_u8  (popupStyle);
    dp_u8  (weather);
    dp_u8  (cameraType);
    dp_bits(battleBackground, 5);
    dp_bits(mapType, 7);
    dp_u16 (musicDay);
    dp_u16 (musicNight);

    u8   preloaded            = dp_u8_at(root, ".preloaded");
    bool isBikeAllowed        = dp_bool_at(root, ".isBikeAllowed");
    bool isRunningAllowed     = dp_bool_at(root, ".isRunningAllowed");
    bool isEscapeRopeAllowed  = dp_bool_at(root, ".isEscapeRopeAllowed");
    bool isFlyAllowed         = dp_bool_at(root, ".isFlyAllowed");
    bool overrideNoEncounters = dp_bool(dp_try(root, ".overrideNoEncounters"));

    char *encounters = NULL;
    if (hasEncounters && !overrideNoEncounters) encounters = String_Format("encounters_%s", entry->stem);

    TextFile_Printf(F_HEADERS_H,
        "    [%s] = {\n"
        "        .areaDataArchiveID = %s,\n"
        "        .preloadedMapObjectsArchiveID = %u,\n"
        "        .mapMatrixID = map_group_%s,\n"
        "        .scriptsArchiveID = scripts_%s,\n"
        "        .initScriptsArchiveID = scripts_init_%s,\n"
        "        .msgArchiveID = %s,\n"
        "        .dayMusicID = %s,\n"
        "        .nightMusicID = %s,\n"
        "        .wildEncountersArchiveID = %s,\n"
        "        .eventsArchiveID = events_%s,\n"
        "        .mapLabelTextID = %s,\n"
        "        .mapLabelWindowID = %s,\n"
        "        .weather = %s,\n"
        "        .cameraType = %s,\n"
        "        .mapType = %s,\n"
        "        .battleBG = %s,\n"
        "        .isBikeAllowed = %s,\n"
        "        .isRunningAllowed = %s,\n"
        "        .isEscapeRopeAllowed = %s,\n"
        "        .isFlyAllowed = %s,\n"
        "    },\n",
        entry->name,
        Symbol_Name(areaData),
        preloaded,
        Symbol_Name(mapGroup),
        hasScripts ? entry->stem : HEADER_ZERO_STEM,
        hasInit    ? entry->stem : HEADER_ZERO_STEM,
        Symbol_Name(textBank),
        Symbol_Name(musicDay),
        Symbol_Name(musicNight),
        encounters ? encounters : "ENCOUNTERS_NONE",
        hasEvents ? entry->stem : HEADER_ZERO_STEM,
        Symbol_Name(locationName),
        Symbol_Name(popupStyle),
        Symbol_Name(weather),
        Symbol_Name(cameraType),
        Symbol_Name(mapType),
        Symbol_Name(battleBackground),
        isBikeAllowed       ? "TRUE" : "FALSE",
        isRunningAllowed    ? "TRUE" : "FALSE",
        isEscapeRopeAllowed ? "TRUE" : "FALSE",
        isFlyAllowed        ? "TRUE" : "FALSE"
    );

    free(encounters);
}

static regex_t sScriptEntry, sScriptEntryEnd, sScriptEntryAny;

static void CompileRegex(regex_t *re, const char *pattern)
{
    int errc = regcomp(re, pattern, REG_EXTENDED);
    if (errc != 0) {
        char msg[256];
        regerror(errc, re, msg, sizeof(msg));
        Driver_Fail("cannot compile regex '%s': %s", pattern, msg);
    }
}

static void SetupScriptEntryPatterns(void)
{
    CompileRegex(&sScriptEntry,    "^[[:space:]]*ScriptEntry[[:space:]]+([A-Za-z_][A-Za-z0-9_]*)");
    CompileRegex(&sScriptEntryEnd, "^[[:space:]]*ScriptEntryEnd([^A-Za-z0-9_]|$)");
    CompileRegex(&sScriptEntryAny, "^[[:space:]]*ScriptEntry");
}

static void ScanLocalScriptLabels(const char *filename)
{
    FILE *f = fopen(filename, "r");
    if (!f) Driver_Fail("cannot open '%s': %s", filename, strerror(errno));

    char  *line    = NULL;
    size_t cap     = 0;
    size_t lineNum = 0;
    long   id      = 1;

    while (getline(&line, &cap, f) != -1) {
        lineNum++;
        line[strcspn(line, "\r\n")] = '\0';

        regmatch_t match[2];
        if (regexec(&sScriptEntryEnd, line, 0, NULL, 0) == 0) break;
        if (regexec(&sScriptEntry, line, NELEMS(match), match, 0) == 0) {
            char *name = String_Format("%.*s", (int)(match[1].rm_eo - match[1].rm_so), line + match[1].rm_so);
            Buffer_Push(&sLocalScriptLabels, dp_symbol, .value = id++, .name = name);
        } else if (regexec(&sScriptEntryAny, line, 0, NULL, 0) == 0) {
            Driver_Fail("%s:%zu: cannot parse ScriptEntry line: %s", filename, lineNum, line);
        }
    }

    free(line);
    fclose(f);

    SortScriptLabels(&sLocalScriptLabels, filename);
    Deps_Add(filename);
}

static void ClearLocalScriptLabels(void)
{
    for (size_t i = 0; i < Buffer_Count(&sLocalScriptLabels, dp_symbol); i++) {
        free((char *)Buffer_At(&sLocalScriptLabels, dp_symbol, i).name);
    }

    free(sLocalScriptLabels.data);
    sLocalScriptLabels = (Buffer){ 0 };
}

static void ProcEntry(Entry *entry)
{
    char *eventsFilename      = String_Format("%s/%s/events.json", baseDir, entry->stem);
    char *encountersFilename  = String_Format("%s/%s/encounters.json", baseDir, entry->stem);
    char *scriptsFilename     = String_Format("%s/%s/scripts.s", baseDir, entry->stem);
    char *initScriptsFilename = String_Format("%s/%s/init.s", baseDir, entry->stem);

    struct stat stbuf;
    bool hasEncounters = stat(encountersFilename, &stbuf) == 0;
    bool hasScripts    = stat(scriptsFilename, &stbuf) == 0;
    bool hasInit       = stat(initScriptsFilename, &stbuf) == 0;
    bool hasEvents     = stat(eventsFilename, &stbuf) == 0;

    if (hasEvents) {
        if (hasScripts) ScanLocalScriptLabels(scriptsFilename);

        dp_file *file = Driver_Load("%s", eventsFilename);
        ProcEvents(dp_root(file), entry->stem);
        Driver_Close(file);
        eventIndex++;
    }

    ProcHeader(entry, hasEncounters, hasScripts, hasInit, hasEvents);

    ClearLocalScriptLabels();
    free(eventsFilename);
    free(encountersFilename);
    free(scriptsFilename);
    free(initScriptsFilename);
}

static Buffer sLocalIDs; // T = const char*, every ID defined by the current map

static void DefineLocalID(Buffer *table, dp_node entry, size_t index, long value)
{
    dp_node     nodeID = dp_at(entry, ".id");
    const char *id     = Symbol_Name(nodeID);
    if (strcmp(id, "BAD_SYMBOL") == 0) return;

    // Compare against all local IDs; warps and objects may not share IDs with
    // one another.
    for (size_t i = 0; i < Buffer_Count(&sLocalIDs, const char*); i++) {
        if (strcmp(Buffer_At(&sLocalIDs, const char*, i), id) == 0) {
            dp_error(nodeID, "duplicate event IDs are ambiguous");
            return;
        }
    }

    Buffer_Push(&sLocalIDs, const char*, id);
    Buffer_Push(table, dp_symbol, .value = value, .name = id);
    TextFile_Printf(F_LOCALS_BASE + eventIndex, "#define %s %zu\n", id, index);
}

static void RegisterLocalIDs(const char *group, const char *name, Buffer *table)
{
    char *type = String_Format("%s:%s", group, name);
    Lookups_Register(type, table->data, Buffer_Count(table, dp_symbol));

    free(type);
    free(table->data);
}

static void PreprocObjects(dp_node root, const char *stem, const char *name)
{
    dp_node     objects = dp_try(root, ".object_events");
    const u32   count   = ClampCount(objects, UINT32_MAX);
    KindContext ctx     = { .stem = stem };
    Buffer      table   = { 0 }; // T = dp_symbol

    assert(Buffer_Count(&sObjectsBase, size_t) == eventIndex);
    Buffer_Push(&sObjectsBase, size_t, Buffer_Count(&sObjects, ObjectData));

    for (size_t i = 0; i < count; i++) {
        dp_node    entry  = dp_arr_at(objects, i);
        ObjectData object = { .kind = PickObjectKind(entry), .index = i };

        ctx.index = i;
        if (object.kind) {
            dp_node kindNode = object.kind->key ? dp_at(entry, object.kind->key) : entry;
            CheckKindConflicts(entry, kindNode, object.kind);
            if (object.kind->preproc) object.kind->preproc(kindNode, object.data, &ctx);
        }

        size_t position = Buffer_Count(&sObjects, ObjectData);
        Buffer_Append(&sObjects, &object, sizeof(object));

        if (IsClone(entry)) { // Clones are never registered, so they cannot themselves be cloned.
            dp_node id = dp_try(entry, ".id");
            if (!dp_missing(id)) {
                dp_error(id, "clones must not declare their own ID");
                dp_note(dp_at(entry, ".clone"), "declared as a clone here");
            }
        } else {
            DefineLocalID(&table, entry, i, position);
        }
    }

    RegisterLocalIDs("objects", name, &table);
}

static void PreprocWarps(dp_node root, const char *name)
{
    dp_node warps = dp_try(root, ".warp_events");
    size_t  count = dp_arr_len(warps);
    Buffer  table = { 0 }; // T = dp_symbol

    // NOTE: Don't use ClampCount here, so there's only one warning
    if (count > WARP_ID_DYNAMIC) count = WARP_ID_DYNAMIC;

    for (size_t i = 0; i < count; i++) {
        DefineLocalID(&table, dp_arr_at(warps, i), i, i);
    }

    RegisterLocalIDs("warps", name, &table);
}

static void PreprocEntry(Entry *entry)
{
    char *eventsFilename = String_Format("%s/%s/events.json", baseDir, entry->stem);

    struct stat stbuf;
    bool hasEvents = stat(eventsFilename, &stbuf) == 0;
    if (hasEvents) {
        dp_file *file = Driver_Load("%s", eventsFilename);
        dp_node  root = dp_root(file);

        PreprocWarps(root, entry->name);
        PreprocObjects(root, entry->stem, entry->name);
        Driver_Close(file);
        sLocalIDs.size = 0;
        eventIndex++;
    }

    free(eventsFilename);
}

static void PackGrid(Buffer *out, dp_node grid, u8 height, u8 width, size_t cellSize, const char *lookupType)
{
    size_t h = dp_arr_len(grid);
    if (h != height) {
        dp_error(grid, "expected grid to have %u rows, but got %zu", height, h);
        return;
    }

    for (size_t r = 0; r < height; r++) {
        dp_node row = dp_arr_at(grid, r);
        size_t  w   = dp_arr_len(row);
        if (w != width) {
            dp_error(row, "expected grid-row to have %u columns, but got %zu", width, w);
            return;
        }

        for (size_t c = 0; c < width; c++) {
            dp_node node = dp_arr_at(row, c);
            if (lookupType) node = dp_lookup(node, lookupType);

            if (cellSize == sizeof(u16)) Buffer_Push(out, u16, dp_u16(node));
            else                         Buffer_Push(out, u8,  dp_u8(node));
        }
    }
}

static dp_file* ProcGroups(void)
{
    char    *filename = Driver_Keep(String_Format("%s/groups.json", baseDir));
    dp_file *df       = Driver_Load("%s", filename);
    dp_node  root     = dp_root(df);
    size_t   count    = dp_arr_len(root);

    dp_symbol *lookup = Zalloc(count, sizeof(*lookup));
    for (size_t i = 0; i < count; i++) {
        dp_node group   = dp_arr_at(root, i);
        lookup[i].name  = Symbol_Name(dp_at(group, ".id"));
        lookup[i].value = i;

        dp_node     headers   = dp_at(group, ".headers");
        dp_node     altitudes = dp_at(group, ".altitudes");
        dp_node     maps      = dp_at(group, ".maps");
        dp_node     nameNode  = dp_at(group, ".name");
        u8          nameLen   = ClampLength(nameNode, UINT8_MAX);
        const char *name      = dp_string(nameNode);
        if (!name) name = "";

        u8     matrixHeight = ClampCount(maps, UINT8_MAX);
        u8     matrixWidth  = matrixHeight == 0 ? 0 : ClampCount(dp_arr_at(maps, 0), UINT8_MAX);
        bool   hasHeaders   = dp_arr_len(headers) != 0;
        bool   hasAltitudes = dp_arr_len(altitudes) != 0;

        Buffer bytes = { 0 };
        Buffer_Push(&bytes, u8, matrixWidth);
        Buffer_Push(&bytes, u8, matrixHeight);
        Buffer_Push(&bytes, u8, hasHeaders);
        Buffer_Push(&bytes, u8, hasAltitudes);
        Buffer_Push(&bytes, u8, nameLen);
        Buffer_Append(&bytes, name, nameLen);

        if (hasHeaders)   PackGrid(&bytes, headers,   matrixHeight, matrixWidth, sizeof(u16), L_MAP_HEADER);
        if (hasAltitudes) PackGrid(&bytes, altitudes, matrixHeight, matrixWidth, sizeof(u8),  NULL);
        PackGrid(&bytes, maps, matrixHeight, matrixWidth, sizeof(u16), L_MAP_FILE);

        Archive_Pack(A_GROUPS, bytes.data, bytes.size);
        TextFile_Printf(F_GROUPS_NAIX, "#define map_group_%s %zu\n", lookup[i].name, i);
        free(bytes.data);
    }

    Lookups_Register(L_MAP_GROUP, lookup, count);

    free(lookup);
    return df;
}

static void SetupHeaderTable(void)
{
    TextFile_Printf(F_HEADERS_H,
        "#include \"constants/battle/backgrounds.h\"\n"
        "#include \"constants/fieldmap.h\"\n"
        "#include \"constants/overworld_weather.h\"\n"
        "#include \"generated/text_banks.h\"\n"
        "\n"
        "#include \"map_header.h\"\n"
        "\n"
        "#include \"res/field/area_data/area_data.naix\"\n"
        "#include \"res/field/maps/map_matrix.naix\"\n"
        "#include \"res/field/maps/pl_enc_data.naix\"\n"
        "#include \"res/field/maps/scr_seq.naix\"\n"
        "#include \"res/field/maps/zone_event.naix\"\n"
        "#include \"res/sound/pl_sound_data.naix\"\n"
        "#include \"res/text/bank/location_names.h\"\n"
        "\n"
        "static const MapHeader sMapHeaders[] = {\n"
    );
}

static bool HasHeader(const char *name)
{
    return strcmp(name, "MAP_HEADER_INVALID") != 0
        && strcmp(name, "MAP_HEADER_DYNAMIC") != 0;
}

static inline bool MatchesAnyPreviousHeader(size_t i)
{
    for (size_t j = 0; j < i; j++) {
        if (strcmp(sGlobalScriptHeaders[i], sGlobalScriptHeaders[j]) == 0) return true;
    }

    return false;
}

static void SetupGlobalScriptLabels(void)
{
    for (size_t i = 0; i < NELEMS(sGlobalScriptHeaders); i++) {
        if (MatchesAnyPreviousHeader(i)) continue; // a file may span multiple script ranges

        char *filepath = String_Format("%s/%s.h", CLI_OutputDir(), sGlobalScriptHeaders[i]);
        FILE *f        = fopen(filepath, "r");
        if (!f) Driver_Fail("cannot open '%s': %s", filepath, strerror(errno));

        // `#define <label> <script ID>`
        char line[512], name[512];
        long value;
        while (fgets(line, sizeof(line), f)) {
            if (sscanf(line, "#define %511s %ld", name, &value) == 2) {
                Buffer_Push(&sGlobalScriptLabels, dp_symbol, .value = value, .name = Driver_Keep(String_Dupe(name)));
            }
        }

        fclose(f);
        Deps_Add(filepath);
        free(filepath);
    }

    SortScriptLabels(&sGlobalScriptLabels, "global script headers");
}

int main(int argc, char **argv)
{
    Driver_Init(&driver, argc, argv);

    char *localsDir = String_Format("%s/locals", CLI_OutputDir());
    EnsureDir(localsDir);
    SetupHeaderTable();
    SetupGlobalScriptLabels();
    SetupScriptEntryPatterns();

    dp_file *groups = ProcGroups();

    for (EachEntry(entry, Entries_FromEnum(enumFile, "MapHeaderID", "MAP_HEADER_", NULL, NULL))) {
        if (!HasHeader(entry.name)) continue;
        PreprocEntry(&entry);
    }

    eventIndex = 0; // reset for processing loop
    for (EachEntry(entry, Entries_Filter(Entries_FromEnum(enumFile, "MapHeaderID", "MAP_HEADER_", "%s/%s/header.json", baseDir), HasHeader))) {
        if (!entry.hasData) continue;
        ProcEntry(&entry);
    }

    regfree(&sScriptEntry);
    regfree(&sScriptEntryEnd);
    regfree(&sScriptEntryAny);
    free(sGlobalScriptLabels.data);
    free(sObjects.data);
    free(sObjectsBase.data);
    free(sLocalIDs.data);
    free(localsDir);
    Driver_Close(groups);
    TextFile_Printf(F_HEADERS_H, "};\n");
    return Driver_Finish(&driver);
}
