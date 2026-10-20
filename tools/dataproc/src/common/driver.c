#include <assert.h>
#include <errno.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "common.h"
#include "dataproc.h"
#include "internal.h"

#define MAX_OPEN 64

typedef struct OpenFile { char *path; dp_file *file; } OpenFile;

static dp_ctx  *ctx;
static bool     failed; // Set by any file closing with errors.
static Buffer   deps;   // Input dependencies, in the order recorded. T = char*
static Buffer   kept;   // Managed allocations, freed after the context. T = void*

static OpenFile open[MAX_OPEN] = { 0 }; // Loaded files that are still open.

dp_ctx* Driver_Context(void) {
    return ctx;
}

void Deps_Add(const char *path) { Buffer_Push(&deps, char*, String_Dupe(path)); }

static inline void Kept_Add(void *keep) { Buffer_Push(&kept, void*, keep); }

static inline void Open_Add(char *path, dp_file *file) {
    for (size_t i = 0; i < MAX_OPEN; i++) {
        if (open[i].file == NULL) {
            open[i].path = path;
            open[i].file = file;
            return;
        }
    }

    Driver_Fail("more than %d files open at once", MAX_OPEN);
}

static inline void Open_CloseAt(size_t i) {
    if (open[i].file == NULL) return;

    if (dp_report(open[i].file) == DP_LEVEL_ERROR) failed = true;
    dp_close(open[i].file);
    free(open[i].path);
    open[i] = (OpenFile){ 0 };
}

void* Driver_Keep(void *p) { Kept_Add(p); return p; }

void Driver_Init(Driver *d, int argc, char **argv)
{
    CLI_Parse(d->options, d->depfile, argc, argv);

    ctx = dp_ctx_new(&dp_json_reader); // stderr, colored by default, respects NO_COLOR
    if (!ctx) Driver_Fail("failed to initialize runtime context");

    Output_Init(&d->outputs);
    Lookups_Load(d->lookups);
}

dp_file* Driver_Load(const char *pathFmt, ...)
{
    va_list args;
    va_start(args, pathFmt);
    char *path = String_VFormat(pathFmt, args);
    va_end(args);

    dp_file *file = dp_load(ctx, path);
    if (!file) abort(); // allocation failure

    Deps_Add(path);
    Open_Add(path, file);

    return file;
}

void Driver_Close(dp_file *file)
{
    if (file == NULL) return;

    for (size_t i = 0; i < MAX_OPEN; i++) {
        if (open[i].file == file) {
            Open_CloseAt(i);
            return;
        }
    }

    assert(false && "file was not opened by Driver_Load, or was already closed");
}

noreturn void Driver_Fail(const char *fmt, ...)
{
    fprintf(stderr, "%s: fatal: ", CLI_ProgramName());

    va_list args;
    va_start(args, fmt);
    vfprintf(stderr, fmt, args);
    va_end(args);

    fputc('\n', stderr);
    exit(EXIT_FAILURE);
}

static void Depfile_Write(const char *path, const Outputs *outputs)
{
    Buffer out = { 0 };
    Output_PrintTargets(outputs, &out);
    Buffer_Append(&out, ": ", 2);

    size_t count = Buffer_Count(&deps, char*);
    for (size_t i = 0; i < count; i++) {
        const char *dep = Buffer_At(&deps, char*, i);
        Buffer_Append(&out, dep, strlen(dep));
        Buffer_Append(&out, " ", 1);
    }

    Buffer_Append(&out, "\n", 1);
    if (!File_Write(path, out.data, out.size)) {
        fprintf(stderr, "error writing depfile '%s': %s\n", path, strerror(errno));
        failed = true;
    }

    free(out.data);
}

int Driver_Finish(Driver *d)
{
    for (size_t i = 0; i < MAX_OPEN; i++) Open_CloseAt(i);

    if (!failed) failed = !Output_WriteAll(&d->outputs);
    if (!failed) Depfile_Write(CLI_Depfile(), &d->outputs);
    Output_Close();
    dp_ctx_free(ctx);

    for (size_t i = 0; i < Buffer_Count(&kept, void*); i++) {
        free(Buffer_At(&kept, void*, i));
    }

    for (size_t i = 0; i < Buffer_Count(&deps, char*); i++) {
        free(Buffer_At(&deps, char*, i));
    }

    free(deps.data);
    free(kept.data);
    return failed ? EXIT_FAILURE : EXIT_SUCCESS;
}
