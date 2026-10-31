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

enum { A_EVENTS, A_GROUPS };
enum { F_EVENTS_NAIX, F_GROUPS_NAIX, F_HEADERS_H, F_LOCALS_BASE };

#define L_BG_EVENT_DIR      "enum BgEventDir"
#define L_OBJECT_EVENT_GFX  "enum ObjectEventGfx"
#define L_MOVEMENT_TYPE     "enum MovementType"
#define L_TRAINER_TYPE      "enum TrainerType"
#define L_VAR_FLAG          "enum VarFlag"
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

#define HEADER_ZERO_STEM "everywhere"

static void HandleBaseDirArg(const char *arg);

static Driver driver = {
    .depfile = "maps_processor.d",

    .options = (Option[]) {
        POSITIONAL        ("ENUMFILE", &enumFile,        "Header defining enum MapHeaderID."),
        POSITIONAL_HANDLER("BASEDIR",  HandleBaseDirArg, "Base directory containing map data subdirs."),
        { 0 },
    },

    .lookups = (Lookup[]) {
        LOOKUP_ENUM("generated/bg_event_dirs.h",      L_BG_EVENT_DIR),
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

        LOOKUP_DEFINES("res/field/area_data/area_data.naix", L_AREA_DATA),
        LOOKUP_DEFINES("res/text/bank/location_names.h",     L_LOCATION_NAME),
        LOOKUP_DEFINES("res/sound/pl_sound_data.naix",       L_SOUND_SEQ),
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
        dp_file *file = Driver_Load("%s", eventsFilename); // TODO: kinda gross?
        ProcEvents(dp_root(file), entry->stem);
        Driver_Close(file);
        eventIndex++;
    }

    ProcHeader(entry, hasEncounters, hasScripts, hasInit, hasEvents);
    free(eventsFilename);
    free(encountersFilename);
    free(scriptsFilename);
    free(initScriptsFilename);
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

int main(int argc, char **argv)
{
    Driver_Init(&driver, argc, argv);

    char *localsDir = String_Format("%s/locals", CLI_OutputDir());
    EnsureDir(localsDir);
    SetupHeaderTable();

    dp_file *groups = ProcGroups();
    for (EachEntry(entry, Entries_Filter(Entries_FromEnum(enumFile, "MapHeaderID", "MAP_HEADER_", "%s/%s/header.json", baseDir), HasHeader))) {
        if (!entry.hasData) continue;
        ProcEntry(&entry);
    }

    free(localsDir);
    Driver_Close(groups);
    TextFile_Printf(F_HEADERS_H, "};\n");
    return Driver_Finish(&driver);
}
