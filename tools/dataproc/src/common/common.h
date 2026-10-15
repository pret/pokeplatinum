#ifndef DATAPROC_COMMON_H
#define DATAPROC_COMMON_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdnoreturn.h>

#define FORMATTER(fmt_i, args_i) __attribute__((format(printf, fmt_i, args_i)))
#define CLEANUP(fn)              __attribute__((cleanup(fn)))

#include "dataproc.h"

// Zeroed allocation: `count` of elements, `size` of each element in bytes. If
// at least one of `count` or `size` == 0, returns NULL. Aborts on an allocation
// failure.
void* Zalloc(size_t count, size_t size);

// ==================================== CLI ====================================

enum OptionKind {
    OPTION_KIND_END = 0,
    OPTION_KIND_VALUE,
    OPTION_KIND_SWITCH,
    OPTION_KIND_HANDLER,
};

typedef struct Option {
    char         flag;    // positional args set 0
    const char  *metavar;
    const char  *help;

    enum OptionKind kind;
    union {
        const char **value;
        bool        *set;
        void       (*handler)(const char *arg);
    };
} Option;

// Use these macros to define your CLI. Not using them is treated as undefined
// behavior for the parser.
#define OPTION_VALUE(f, meta, target, h) { .flag = (f), .metavar = (meta), .help = (h), .kind = OPTION_KIND_VALUE,   .value   = (target) }
#define OPTION_SWITCH(f, target, h)      { .flag = (f),                    .help = (h), .kind = OPTION_KIND_SWITCH,  .set     = (target) }
#define OPTION_HANDLER(f, meta, fn, h)   { .flag = (f), .metavar = (meta), .help = (h), .kind = OPTION_KIND_HANDLER, .handler = (fn)     }
#define POSITIONAL(meta, target, h)      {              .metavar = (meta), .help = (h), .kind = OPTION_KIND_VALUE,   .value   = (target) }

// Issue a CLI failure with a formatted message and usage, then abort.
noreturn void CLI_Fail(const char *fmt, ...) FORMATTER(1, 2);

// ================================== LOOKUPS ==================================

typedef struct Lookup {
    const char *file;
    const char *type;
    bool        defines;
} Lookup;

#define LOOKUP_ENUM(f, t)         { .file = (f), .type = (t) }
#define LOOKUP_DEFINES(f, prefix) { .file = (f), .type = (prefix), .defines = true }

// Register a lookup-table built at run-time, e.g., from loaded data. The type,
// array, and symbol names are copied, so inputs may be temporary. If `type` is
// already registered or a name appears twice, then the run terminates.
void Lookups_Register(const char *type, const dp_symbol *symbols, size_t count);

// ================================== OUTPUTS ==================================

enum TextFileWrap {
    TEXT_FILE_WRAP_NONE = 0,
    TEXT_FILE_WRAP_GUARD,
    TEXT_FILE_WRAP_TEMPLATE,
};

typedef struct Archive    { const char *filename;                         } Archive;
typedef struct TextFile   { const char *filename; enum TextFileWrap wrap; } TextFile;
typedef struct BinaryFile { const char *filename;                         } BinaryFile;
typedef struct TextBank   { const char *filename; int key;                } TextBank;

// Output filenames are read when outputs are written (in `Driver_Finish`), so a
// driver may rename an output after `Driver_Init`, e.g. to apply a CLI prefix.
// This is not true for a `TEXT_FILE_WRAP_TEMPLATE` file's template, whch is
// loaded by name during `Driver_Init`.
typedef struct Outputs {
    Archive    *archives;
    TextFile   *textFiles;
    BinaryFile *binaryFiles;
    TextBank   *textBanks;
} Outputs;

void Archive_Pack(int id, const void *data, size_t size);
void TextFile_Printf(int id, const char *fmt, ...) FORMATTER(2, 3);
void BinaryFile_Write(int id, const void *data, size_t size);
void TextBank_PushNode(int id, dp_node content, const char *idFmt, ...) FORMATTER(3, 4);
void TextBank_PushString(int id, const char *content, const char *idFmt, ...) FORMATTER(3, 4);
void TextBank_PushLines(int id, const char *const *lines, size_t count, const char *idFmt, ...) FORMATTER(4, 5);
void TextBank_PushGarbage(int id, uint64_t size, const char *idFmt, ...) FORMATTER(3, 4);

// =================================== DRIVER ==================================

typedef struct Driver {
    const char *depfile;
    Option     *options;
    Lookup     *lookups;
    Outputs     outputs;
} Driver;

void          Driver_Init(Driver *driver, int argc, char **argv);
dp_file*      Driver_Load(const char *pathFmt, ...) FORMATTER(1, 2);
void          Driver_Close(dp_file *file);
noreturn void Driver_Fail(const char *fmt, ...) FORMATTER(1, 2);

// Report any errors encountered during processing, then write output-files if
// none were encountered. Driver implementations should skip additional errors
// for the same root-cause wherever possible. For instance, if an accessor
// function for a string returns `NULL` (because, for instance, an object is
// missing a particular member key), do not report another error in the calling
// function; just return.
int Driver_Finish(Driver *driver);

// Free `p` when the driver-run completes, after the context has been freed. This
// is for anything that must live until the end of the run, e.g.:
//
// - Symbol names
// - String pools
// - Entry names and stems
// - Record buffers
// - etc.
void* Driver_Keep(void *p);

// ================================== ENTRIES ==================================

typedef struct Entry {
    size_t      index;   // Position in the source file.
    const char *name;    // The full name of the entry.
    const char *stem;    // `name`, but lowercased. In Entries_FromEnum, also strips `prefix`.
    dp_node     root;    // The processed root node.
    bool        hasData; // When `false`, there is no accompanying data file,
                         // but there is no error.
} Entry;
typedef struct Entries Entries;

// Read entries from an enum definition. pathFmt always receives exactly (baseDir, stem).
Entries* Entries_FromEnum(const char *file, const char *enumName, const char *prefix,
                          const char *pathFmt, const char *baseDir);

// Read entries from plain-text lines. pathFmt always receives exactly (baseDir, stem).
Entries* Entries_FromList(const char *file, const char *pathFmt, const char *baseDir);

// `fn` is a function which returns `true` if the named entry *should* have data
// fields, or `false` if it is to be ignored by any data-processing routines.
Entries* Entries_Filter(Entries *entries, bool (*fn)(const char *name));

// Pick out the next entry from entries, closing any currently-open entry.
// Returns false when called while there are no entries remaining.
bool Entries_Next(Entries *entries, Entry *entry);

// Close the entries iterator.
void Entries_Close(Entries *entries);

static inline void Entries_Release(Entries **entries) { Entries_Close(*entries); }

// for (EachEntry(entry, entries)) { ... }
// `break`, `continue`, and `return` are safe to use and act as one would expect: the
// Entries structure is closed however the loop exits.
#define EachEntry(entry, entries)                                  \
    Entries *entries_##entry CLEANUP(Entries_Release) = (entries), \
    *once_##entry = entries_##entry;                               \
    once_##entry;                                                  \
    once_##entry = NULL)                                           \
        for (Entry entry; Entries_Next(entries_##entry, &entry);

// ================================== RECORDS ==================================

typedef struct Record  { const char *filename; const char *id; } Record;
typedef struct Records { size_t count; const Record *items;    } Records;

Records Records_Load(const char *filename);

// ================================== STRINGS ==================================

// Format a string as printf does. Must be freed by the caller.
char* String_Format(const char *fmt, ...) FORMATTER(1, 2);

// Uppercase the input string. Must be freed by the caller.
char* String_ToUpper(const char *s);

// Lowercase the input string. Must be freed by the caller.
char* String_ToLower(const char *s);

// Count the number of displayed UTF-8 characters (not the number of bytes).
size_t String_CountChars(const char *s);

// Test if a given string ends with `suffix`.
bool String_EndsWith(const char *s, const char *suffix);

// Safe duplicator. Aborts on allocation failure.
char* String_Dupe(const char *s);

// =============================== COMMON HELPERS ==============================

// Extract the string-value of a node, or return "BAD_SYMBOL" if it's invalid.
const char* Symbol_Name(dp_node node);

#endif // DATAPROC_COMMON_H
