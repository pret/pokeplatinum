#ifndef DATAPROC_COMMON_INTERNAL_H
#define DATAPROC_COMMON_INTERNAL_H

#include <stdarg.h>
#include <stddef.h>
#include <stdio.h>

#include "common.h"
#include "dataproc.h"

#define countof(arr) (sizeof(arr) / sizeof(*(arr)))
#define lengthof(s)  (countof(s) - 1)

// A basic growable byte-buffer.
typedef struct Buffer { void *data; size_t size; size_t cap; } Buffer;
void   Buffer_Append(Buffer *b, const void *data, size_t size);
void   Buffer_VPrintf(Buffer *b, const char *fmt, va_list args);
void*  Buffer_Ptr(Buffer *b, size_t index, size_t size);

#define Buffer_Push(b, T, ...) Buffer_Append((b), &(T){ __VA_ARGS__ }, sizeof(T))
#define Buffer_At(b, T, i)     (*(T *)Buffer_Ptr((b), (i), sizeof(T)))
#define Buffer_Count(b, T)     ((b)->size / sizeof(T))

// va_list form of String_Format (common.h).
char* String_VFormat(const char *fmt, va_list args);

// Safe duplicator. Aborts on allocation failure.
char* String_Dupe(const char *s);

// Return the whole file, NUL-terminated. On failure, the returned
// value is NULL and errno is set.
char* File_Read(const char *path, size_t *size);

// Write `size` bytes of `data` to `path`, replacing it. On failure, returns
// false and errno is set; reporting is up to the caller.
bool File_Write(const char *path, const void *data, size_t size);

// Find the first of REPO_INCLUDE/file or REPO_BUILD/file that exists.
// If none is found, returns NULL.
char* Paths_Find(const char *file);

// Access the current dataproc context.
dp_ctx* Driver_Context(void);

// Parse the CLI options for the driver.
void CLI_Parse(Option *options, const char *defaultDepfile, int argc, char **argv);

// Access the current driver's program name.
const char* CLI_ProgramName(void);

// Access the current driver's output directory.
const char* CLI_OutputDir(void);

// Access the current driver's depfile path.
const char* CLI_Depfile(void);

// Write all outputs. Return true if successful, false on any error encountered.
bool Output_WriteAll(Outputs *outputs);

// Append every output's path, joined with OUTDIR, delimited by spaces.
void Output_PrintTargets(const Outputs *outputs, Buffer *b);

// Mark the given path as a driver dependency for the depfile's output.
void Deps_Add(const char *path);

// Load and register the requested lookup tables. The listed array must be 0-terminated.
void Lookups_Load(const Lookup *lookups);

// Setup the output state: count tables, load templates, create text banks, etc.
void Output_Init(Outputs *outputs);

// Free all output state. Driver_Finish should call this whether or not the run succeeded.
void Output_Close(void);
 
#endif // DATAPROC_COMMON_INTERNAL_H
