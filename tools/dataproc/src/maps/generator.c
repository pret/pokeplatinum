#include <dirent.h>
#include <errno.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <unistd.h>

#include "buildgen.h"
#include "common.h"
#include "game_types.h"

#include "generated/species.h"
#include "struct_defs/wild_encounters.h"

static const char *enumFile           = NULL;
static const char *baseDir            = NULL;
static const char *rootDir            = NULL;
static const char *globalScriptsDir   = NULL;
static const char *nitroarcPath       = NULL;
static const char *enumprocPath       = NULL;
static const char *mapprocPath        = NULL;
static const char *scriptMakerPath    = NULL;
static const char *scriptOrderPath    = NULL;
static const char *encounterprocPath  = NULL;
static const char *encounterOrderPath = NULL;
static const char *zukanScriptPath    = NULL;

enum { F_BUILD_MANIFEST };
enum { B_ENCOUNTERS_UNKNOWN };

static Driver driver = {
    .depfile = "maps_generator.d",

    .options = (Option[]) {
        OPTION_VALUE('R', "ROOTDIR",         &rootDir,            "Path to the project source root."),
        OPTION_VALUE('G', "GLOBAL_SCRIPTS",  &globalScriptsDir,   "Path to the global scripts directory."),
        OPTION_VALUE('N', "NITROARC",        &nitroarcPath,       "Path to the nitroarc program."),
        OPTION_VALUE('E', "ENUMPROC",        &enumprocPath,       "Path to the enumproc program."),
        OPTION_VALUE('P', "MAPPROC",         &mapprocPath,        "Path to the mapproc program."),
        OPTION_VALUE('S', "SCRIPT_MAKER",    &scriptMakerPath,    "Path to the script-maker program."),
        OPTION_VALUE('s', "SCRIPT_ORDER",    &scriptOrderPath,    "Path to the script-order file."),
        OPTION_VALUE('C', "ENCOUNTERPROC",   &encounterprocPath,  "Path to the encounterproc program."),
        OPTION_VALUE('c', "ENCOUNTER_ORDER", &encounterOrderPath, "Path to the encounter-order file."),
        OPTION_VALUE('Z', "ZUKAN_SCRIPT",    &zukanScriptPath,    "Path to the Pokedex encounter-archive script."),

        POSITIONAL("ENUMFILE", &enumFile, "Header defining enum MapHeaderID."),
        POSITIONAL("BASEDIR",  &baseDir,  "Base directory containing map data subdirs."),
        { 0 },
    },

    .lookups = (Lookup[]) {
        { 0 },
    },

    .outputs = {
        .textFiles = (TextFile[]) {
            [F_BUILD_MANIFEST] = { .filename = "build.ninja", .wrap = TEXT_FILE_WRAP_NONE },
            { 0 },
        },

        .binaryFiles = (BinaryFile[]) {
            [B_ENCOUNTERS_UNKNOWN] = { .filename = "encounters.p/encounters_unknown" },
            { 0 },
        },

        .writeIfChanged = true,
    },
};

static void EnsureDir(const char *path)
{
    if (mkdir(path, S_IRWXU | S_IRWXG | S_IRWXO) && errno != EEXIST) {
        Driver_Fail("failed to ensure directory '%s': %s", path, strerror(errno));
    }
}

static const BuildRule rScriptMaker = {
    .name        = "script",
    .command     = "$scriptmaker $makerflags --depfile $out.d $in -O $out",
    .description = "Assembling script $out...",
    .depfile     = "$out.d",
    .deps        = true,
};

static const BuildRule rNARCPacker = {
    .name        = "narc",
    .command     = "$nitroarc -c $narcflags -f $out $in",
    .description = "Packing archive $out...",
};

static const BuildRule rMapproc = {
    .name        = "mapproc",
    .command     = "$mapproc -M $out.d -o $builddir $enumfile $basedir",
    .description = "Compiling map data...",
    .depfile     = "$out.d",
    .deps        = true,
    .restat      = true,
};

static const BuildRule rEncounters = {
    .name        = "encounters",
    .command     = "$encounterproc -M $out.d -o $encdir $in $name",
    .description = "Compiling encounters $out...",
    .depfile     = "$out.d",
    .deps        = true,
};

// The script reads generated Python constants from the outer build root, which
// is also where the inner build runs.
static const BuildRule rZukan = {
    .name        = "zukan",
    .command     = "env PYTHONPATH=. $zukan --narc $nitroarc --private-dir $zukandir"
                   " --output-dir $builddir --coronet-file $coronet --honey-file $honey"
                   " --trophy-file $trophy --marsh-file $marsh $in",
    .description = "Packing archive $out...",
};

// The unused encounter files are all identical and have no source file. This
// generator writes them itself rather than deferring to the per-file processor.
static const WildEncounters sEncountersUnknown = {
    .grassEncounters = {
        .encounterRate = 15,
        .encounters    = {
            { .level = 45, .species = SPECIES_HAUNTER  },
            { .level = 45, .species = SPECIES_BRONZONG },
            { .level = 46, .species = SPECIES_HAUNTER  },
            { .level = 45, .species = SPECIES_GOLBAT   },
            { .level = 47, .species = SPECIES_HAUNTER  },
            { .level = 46, .species = SPECIES_GOLBAT   },
            { .level = 47, .species = SPECIES_GOLBAT   },
            { .level = 46, .species = SPECIES_CHIMECHO },
            { .level = 47, .species = SPECIES_DUSCLOPS },
            { .level = 45, .species = SPECIES_CHIMECHO },
            { .level = 48, .species = SPECIES_DUSCLOPS },
            { .level = 47, .species = SPECIES_CHIMECHO },
        },
    },

    .swarmEncounters             = { SPECIES_HAUNTER, SPECIES_BRONZONG },
    .dayEncounters               = { SPECIES_HAUNTER, SPECIES_GOLBAT },
    .nightEncounters             = { SPECIES_DUSCLOPS, SPECIES_GOLBAT },
    .radarEncounters             = { SPECIES_HAUNTER, SPECIES_GOLBAT, SPECIES_DUSCLOPS, SPECIES_CHIMECHO },
    .encounterRatesForms         = { 100, 100, 0, 0, 0 },
    .dualSlotRubyEncounters      = { SPECIES_SOLROCK, SPECIES_SOLROCK },
    .dualSlotSapphireEncounters  = { SPECIES_LUNATONE, SPECIES_LUNATONE },
    .dualSlotEmeraldEncouters    = { SPECIES_DUSCLOPS, SPECIES_CHIMECHO },
    .dualSlotFireredEncounters   = { SPECIES_DUSCLOPS, SPECIES_CHIMECHO },
    .dualSlotLeafgreenEncounters = { SPECIES_DUSCLOPS, SPECIES_CHIMECHO },
};

static char *packdirScripts    = NULL;
static char *packdirEncounters = NULL;
static char *makerFlags        = NULL;
static char *outEventsArchive  = NULL;

static void ProcMapEvents(FILE *build, const char **implicitOutputs)
{
    BUILD_EDGE(build,
        .rule = &rMapproc,
        .vars = BUILD_VARS(
            BUILD_VAR("enumfile", enumFile),
            BUILD_VAR("basedir",  baseDir)
        ),

        .outputs         = BUILD_PATHS(outEventsArchive),
        .inputs          = BUILD_PATHS(enumFile, baseDir),
        .implicitInputs  = BUILD_PATHS(mapprocPath),
        .implicitOutputs = implicitOutputs,
    );
}

static void ProcMapDir(FILE *build, Entry *entry, Buffer *scriptOutputs, Buffer *eventLocals,
                       Buffer *encounterOutputs, Buffer *zukanInputs)
{
    struct stat stbuf;
    char *pathMapdir = String_Format("%s/%s", baseDir, entry->stem);
    if (stat(pathMapdir, &stbuf) != 0) {
        free(pathMapdir);
        return;
    }

    char *pathScript     = String_Format("%s/scripts.s",       pathMapdir);
    char *pathInit       = String_Format("%s/init.s",          pathMapdir);
    char *pathEvents     = String_Format("%s/events.json",     pathMapdir);
    char *pathEncounters = String_Format("%s/encounters.json", pathMapdir);

    if (stat(pathEvents, &stbuf) == 0) {
        char *outLocals = String_Format("%s/locals/%s.h", CLI_OutputDir(), entry->stem);
        Buffer_Push(eventLocals, char*, outLocals);
    }

    if (stat(pathEncounters, &stbuf) == 0) {
        // encounterproc handles single-files, not a batch.
        char *name          = String_Format("encounters_%s", entry->stem);
        char *outEncounters = String_Format("%s/%s", packdirEncounters, name);
        BUILD_EDGE(build,
            .rule    = &rEncounters,
            .vars    = BUILD_VARS(BUILD_VAR("name", name)),
            .outputs = BUILD_PATHS(outEncounters),

            .inputs         = BUILD_PATHS(pathEncounters),
            .implicitInputs = BUILD_PATHS(encounterprocPath),
        );

        Buffer_Push(encounterOutputs, char*, outEncounters);
        Buffer_Push(zukanInputs, char*, String_Dupe(pathEncounters));
        free(name);
    }

    if (stat(pathScript, &stbuf) == 0) {
        char *outScript = String_Format("%s/scripts_%s", packdirScripts, entry->stem);
        BUILD_EDGE(build,
            .rule    = &rScriptMaker,
            .vars    = BUILD_VARS(BUILD_VAR("makerflags", makerFlags)),
            .outputs = BUILD_PATHS(outScript),

            .inputs         = BUILD_PATHS(pathScript),
            .implicitInputs = BUILD_PATHS(scriptMakerPath, enumprocPath),
            .orderOnly      = BUILD_PATHS(outEventsArchive),
        );

        Buffer_Push(scriptOutputs, char*, outScript);
    }

    if (stat(pathInit, &stbuf) == 0) {
        char *outInit = String_Format("%s/scripts_init_%s", packdirScripts, entry->stem);
        BUILD_EDGE(build,
            .rule    = &rScriptMaker,
            .vars    = BUILD_VARS(BUILD_VAR("makerflags", makerFlags)),
            .outputs = BUILD_PATHS(outInit),

            .inputs         = BUILD_PATHS(pathInit),
            .implicitInputs = BUILD_PATHS(scriptMakerPath, enumprocPath),
            .orderOnly      = BUILD_PATHS(outEventsArchive),
        );

        Buffer_Push(scriptOutputs, char*, outInit);
    }

    Deps_Add(pathMapdir);

    free(pathScript);
    free(pathInit);
    free(pathEvents);
    free(pathEncounters);
    free(pathMapdir);
}

static int SortStrings(const void *a, const void *b)
{
    const char *lhs = *(char *const *)a;
    const char *rhs = *(char *const *)b;
    return strcmp(lhs, rhs);
}

static void ProcGlobalScripts(FILE *build, Buffer *outputs)
{
    DIR *dir = opendir(globalScriptsDir);
    if (!dir) Driver_Fail("cannot open directory '%s': %s", globalScriptsDir, strerror(errno));

    Buffer scriptFiles = { 0 }; // T = char*
    for (struct dirent *entry; (entry = readdir(dir));) {
        if (String_EndsWith(entry->d_name, ".s")) {
            Buffer_Push(&scriptFiles, char*, String_Dupe(entry->d_name));
        }
    }

    // Stabilize the order of the collected script files.
    qsort(scriptFiles.data, Buffer_Count(&scriptFiles, char*), sizeof(char*), SortStrings);
    for (size_t i = 0; i < Buffer_Count(&scriptFiles, char*); i++) {
        char *basename = Buffer_At(&scriptFiles, char*, i);
        char *filename = String_Format("%s/%s", globalScriptsDir, basename);
        char *outname  = String_Format("%s/scripts_%.*s", packdirScripts,
                                       (int)strlen(basename) - 2, basename);
        BUILD_EDGE(build,
            .rule    = &rScriptMaker,
            .vars    = BUILD_VARS(BUILD_VAR("makerflags", makerFlags)),
            .outputs = BUILD_PATHS(outname),

            .inputs         = BUILD_PATHS(filename),
            .implicitInputs = BUILD_PATHS(scriptMakerPath, enumprocPath),
            .orderOnly      = BUILD_PATHS(outEventsArchive),
        );

        Buffer_Push(outputs, char*, outname);

        free(basename);
        free(filename);
    }

    free(scriptFiles.data); // members are freed in the loop
    if (closedir(dir) != 0) Driver_Fail("cannot close directory '%s': %s", globalScriptsDir, strerror(errno));
}

static void PackArchive(FILE *build, Buffer *outputs, const char *packdir, const char *orderPath, const char *name)
{
    char *qOrder    = Driver_Keep(Build_QuoteValue(orderPath));
    char *narcFlags = String_Format("--index --exclude '*.d' --files-from %s", qOrder);

    Buffer_Push(outputs, char*, String_Dupe(orderPath));
    Buffer_Push(outputs, char*, String_Dupe(nitroarcPath));
    Buffer_Push(outputs, char*, NULL);

    BUILD_EDGE(build,
        .rule           = &rNARCPacker,
        .inputs         = BUILD_PATHS(packdir),
        .implicitInputs = outputs->data,

        .vars = BUILD_VARS(
            BUILD_VAR("narcflags", narcFlags)
        ),

        .outputs = BUILD_PATHS(
            Driver_Keep(String_Format("%s/%s.narc", CLI_OutputDir(), name))
        ),

        .implicitOutputs = BUILD_PATHS(
            Driver_Keep(String_Format("%s/%s.naix", CLI_OutputDir(), name)),
            Driver_Keep(String_Format("%s/%s.recs", CLI_OutputDir(), name))
        ),
    );

    free(narcFlags);
}

static void PackZukan(FILE *build, Buffer *inputs)
{
    char *pathHoney   = String_Format("%s/encounters_honey_tree.json",          baseDir);
    char *pathMarsh   = String_Format("%s/encounters_great_marsh_lookout.json", baseDir);
    char *pathCoronet = String_Format("%s/%s/encounters.json", baseDir, "mt_coronet_b1f");
    char *pathTrophy  = String_Format("%s/%s/encounters.json", baseDir, "trophy_garden");

    char *qHoney    = Build_QuoteValue(pathHoney);
    char *qMarsh    = Build_QuoteValue(pathMarsh);
    char *qCoronet  = Build_QuoteValue(pathCoronet);
    char *qTrophy   = Build_QuoteValue(pathTrophy);
    char *zukanDir  = String_Format("%s/zukan.p", CLI_OutputDir());
    char *qZukanDir = Build_QuoteValue(zukanDir);

    Buffer_Push(inputs, char*, pathHoney);
    Buffer_Push(inputs, char*, pathMarsh);
    Buffer_Push(inputs, char*, NULL);

    BUILD_EDGE(build,
        .rule = &rZukan,
        .vars = BUILD_VARS(
            BUILD_VAR("zukandir", qZukanDir),
            BUILD_VAR("honey",    qHoney),
            BUILD_VAR("marsh",    qMarsh),
            BUILD_VAR("coronet",  qCoronet),
            BUILD_VAR("trophy",   qTrophy)
        ),

        .outputs        = BUILD_PATHS(Driver_Keep(String_Format("%s/zukan_enc_platinum.narc", CLI_OutputDir()))),
        .inputs         = inputs->data,
        .implicitInputs = BUILD_PATHS(zukanScriptPath, nitroarcPath, "generated/species.py"),
    );

    free(qHoney);
    free(qMarsh);
    free(qCoronet);
    free(qTrophy);
    free(qZukanDir);
    free(zukanDir);
    free(pathCoronet);
    free(pathTrophy);
}

int main(int argc, char **argv)
{
    Driver_Init(&driver, argc, argv);

    // NOTE: we need to record the build directory, because the paths given to
    // us by meson's generated build.ninja may be relative to the outer ninja's
    // root directory
    FILE *build = TextFile_Stream(F_BUILD_MANIFEST);
    char *qRootDir    = Driver_Keep(Build_QuoteValue(rootDir));
    packdirScripts    = Driver_Keep(String_Format("%s/scripts.p", CLI_OutputDir()));
    packdirEncounters = Driver_Keep(String_Format("%s/encounters.p", CLI_OutputDir()));
    makerFlags        = Driver_Keep(String_Format("-i %s/include -i %s/asm -i . --enumproc $enumproc",
                                                  qRootDir, qRootDir));
    outEventsArchive  = Driver_Keep(String_Format("%s/zone_event.narc", CLI_OutputDir()));

    Build_Bind(build, "builddir",      CLI_OutputDir());
    Build_Bind(build, "scriptmaker",   Driver_Keep(Build_QuoteValue(scriptMakerPath)));
    Build_Bind(build, "nitroarc",      Driver_Keep(Build_QuoteValue(nitroarcPath)));
    Build_Bind(build, "enumproc",      Driver_Keep(Build_QuoteValue(enumprocPath)));
    Build_Bind(build, "mapproc",       Driver_Keep(Build_QuoteValue(mapprocPath)));
    Build_Bind(build, "encounterproc", Driver_Keep(Build_QuoteValue(encounterprocPath)));
    Build_Bind(build, "zukan",         Driver_Keep(Build_QuoteValue(zukanScriptPath)));
    Build_Bind(build, "encdir",        Driver_Keep(Build_QuoteValue(packdirEncounters)));
    Build_Rule(build, &rScriptMaker);
    Build_Rule(build, &rNARCPacker);
    Build_Rule(build, &rMapproc);
    Build_Rule(build, &rEncounters);
    Build_Rule(build, &rZukan);

    EnsureDir(packdirScripts);
    EnsureDir(packdirEncounters);

    Buffer scriptOutputs    = { 0 }; // T = char*
    Buffer eventLocals      = { 0 }; // T = char*
    Buffer encounterOutputs = { 0 }; // T = char*
    Buffer zukanInputs      = { 0 }; // T = char*

    for (EachEntry(entry, Entries_FromEnum(enumFile, "MapHeaderID", "MAP_HEADER_", NULL, NULL))) {
        if (strcmp(entry.stem, "invalid") == 0 || strcmp(entry.stem, "dynamic") == 0) break;
        ProcMapDir(build, &entry, &scriptOutputs, &eventLocals, &encounterOutputs, &zukanInputs);
    }

    Buffer_Push(&eventLocals, char*, String_Format("%s/zone_event.naix", CLI_OutputDir()));
    Buffer_Push(&eventLocals, char*, String_Format("%s/map_matrix.narc", CLI_OutputDir()));
    Buffer_Push(&eventLocals, char*, String_Format("%s/map_matrix.naix", CLI_OutputDir()));
    Buffer_Push(&eventLocals, char*, String_Format("%s/headers.h", CLI_OutputDir()));
    Buffer_Push(&eventLocals, char*, NULL);

    BinaryFile_Write(B_ENCOUNTERS_UNKNOWN, &sEncountersUnknown, sizeof(sEncountersUnknown));
    Buffer_Push(&encounterOutputs, char*, String_Format("%s/encounters_unknown", packdirEncounters));

    ProcMapEvents(build, eventLocals.data);
    ProcGlobalScripts(build, &scriptOutputs);
    PackArchive(build, &scriptOutputs, packdirScripts, scriptOrderPath, "scr_seq");
    PackArchive(build, &encounterOutputs, packdirEncounters, encounterOrderPath, "pl_enc_data");
    PackZukan(build, &zukanInputs);

    Deps_Add(baseDir);
    Deps_Add(globalScriptsDir);

    Buffer_Free(&scriptOutputs, char*);
    Buffer_Free(&eventLocals, char*);
    Buffer_Free(&encounterOutputs, char*);
    Buffer_Free(&zukanInputs, char*);
    return Driver_Finish(&driver);
}
