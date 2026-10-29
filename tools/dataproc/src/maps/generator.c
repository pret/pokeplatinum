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

static const char *enumFile         = NULL;
static const char *baseDir          = NULL;
static const char *rootDir          = NULL;
static const char *globalScriptsDir = NULL;
static const char *nitroarcPath     = NULL;
static const char *enumprocPath     = NULL;
static const char *scriptMakerPath  = NULL;
static const char *scriptOrderPath  = NULL;

enum { F_BUILD_MANIFEST };

static Driver driver = {
    .depfile = "maps_generator.d",

    .options = (Option[]) {
        OPTION_VALUE('R', "ROOTDIR",        &rootDir,          "Path to the project source root."),
        OPTION_VALUE('G', "GLOBAL_SCRIPTS", &globalScriptsDir, "Path to the global scripts directory."),
        OPTION_VALUE('N', "NITROARC",       &nitroarcPath,     "Path to the nitroarc program."),
        OPTION_VALUE('E', "ENUMPROC",       &enumprocPath,     "Path to the enumproc program."),
        OPTION_VALUE('S', "SCRIPT_MAKER",   &scriptMakerPath,  "Path to the script-maker program."),
        OPTION_VALUE('s', "SCRIPT_ORDER",   &scriptOrderPath,  "Path to the script-order file."),

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
    .description = "Packing archive $out..."
};

static char *packdirScripts = NULL;
static char *makerFlags     = NULL;

static void ProcScripts(FILE *build, Entry *entry, Buffer *outputs)
{
    struct stat stbuf;
    char *pathMapdir = String_Format("%s/%s", baseDir, entry->stem);
    if (stat(pathMapdir, &stbuf) != 0) {
        free(pathMapdir);
        return;
    }

    char *pathScript = String_Format("%s/scripts.s", pathMapdir);
    char *pathInit   = String_Format("%s/init.s",    pathMapdir);

    if (stat(pathScript, &stbuf) == 0) {
        char *outScript = String_Format("%s/scripts_%s", packdirScripts, entry->stem);
        BUILD_EDGE(build,
            .rule    = &rScriptMaker,
            .vars    = BUILD_VARS(BUILD_VAR("makerflags", makerFlags)),
            .outputs = BUILD_PATHS(outScript),

            .inputs         = BUILD_PATHS(pathScript),
            .implicitInputs = BUILD_PATHS(scriptMakerPath, enumprocPath),
        );

        Buffer_Push(outputs, char*, outScript);
    }

    if (stat(pathInit, &stbuf) == 0) {
        char *outInit = String_Format("%s/scripts_init_%s", packdirScripts, entry->stem);
        BUILD_EDGE(build,
            .rule    = &rScriptMaker,
            .vars    = BUILD_VARS(BUILD_VAR("makerflags", makerFlags)),
            .outputs = BUILD_PATHS(outInit),

            .inputs         = BUILD_PATHS(pathInit),
            .implicitInputs = BUILD_PATHS(scriptMakerPath, enumprocPath),
        );

        Buffer_Push(outputs, char*, outInit);
    }

    Deps_Add(pathMapdir);

    free(pathScript);
    free(pathInit);
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
        );

        Buffer_Push(outputs, char*, outname);

        free(basename);
        free(filename);
    }

    free(scriptFiles.data); // members are freed in the loop
    if (closedir(dir) != 0) Driver_Fail("cannot close directory '%s': %s", globalScriptsDir, strerror(errno));
}

static void PackScripts(FILE *build, Buffer *outputs)
{
    char *qScriptOrder = Driver_Keep(Build_QuoteValue(scriptOrderPath));
    char *narcFlags    = String_Format("--index --exclude '*.d' --files-from %s", qScriptOrder);

    Buffer_Push(outputs, char*, String_Dupe(scriptOrderPath));
    Buffer_Push(outputs, char*, String_Dupe(nitroarcPath));
    Buffer_Push(outputs, char*, NULL);

    BUILD_EDGE(build,
        .rule           = &rNARCPacker,
        .inputs         = BUILD_PATHS(packdirScripts),
        .implicitInputs = outputs->data,

        .vars = BUILD_VARS(
            BUILD_VAR("narcflags", narcFlags)
        ),

        .outputs = BUILD_PATHS(
            Driver_Keep(String_Format("%s/scr_seq.narc", CLI_OutputDir()))
        ),

        .implicitOutputs = BUILD_PATHS(
            Driver_Keep(String_Format("%s/scr_seq.naix", CLI_OutputDir())),
            Driver_Keep(String_Format("%s/scr_seq.recs", CLI_OutputDir()))
        ),
    );

    free(narcFlags);
}

int main(int argc, char **argv)
{
    Driver_Init(&driver, argc, argv);

    // NOTE: we need to record the build directory, because the paths given to
    // us by meson's generated build.ninja may be relative to the outer ninja's
    // root directory
    FILE *build = TextFile_Stream(F_BUILD_MANIFEST);
    Build_Bind(build, "builddir",    CLI_OutputDir());
    Build_Bind(build, "scriptmaker", Driver_Keep(Build_QuoteValue(scriptMakerPath)));
    Build_Bind(build, "nitroarc",    Driver_Keep(Build_QuoteValue(nitroarcPath)));
    Build_Bind(build, "enumproc",    Driver_Keep(Build_QuoteValue(enumprocPath)));
    Build_Rule(build, &rScriptMaker);
    Build_Rule(build, &rNARCPacker);

    char *qRootDir = Driver_Keep(Build_QuoteValue(rootDir));
    packdirScripts = Driver_Keep(String_Format("%s/scripts.p", CLI_OutputDir()));
    makerFlags     = Driver_Keep(String_Format("-i %s/include -i %s/asm -i . --enumproc $enumproc",
                                               qRootDir, qRootDir));

    EnsureDir(packdirScripts);

    Buffer outputs = { 0 }; // T = char*
    for (EachEntry(entry, Entries_FromEnum(enumFile, "MapHeaderID", "MAP_HEADER_", NULL, NULL))) {
        if (strcmp(entry.stem, "invalid") == 0 || strcmp(entry.stem, "dynamic") == 0) break;
        ProcScripts(build, &entry, &outputs);
    }

    ProcGlobalScripts(build, &outputs);
    PackScripts(build, &outputs);

    Deps_Add(baseDir);
    Deps_Add(globalScriptsDir);
    Buffer_Free(&outputs, char*);
    return Driver_Finish(&driver);
}
