#include <errno.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

#include "common.h"
#include "dataproc.h"
#include "internal.h"
#include "libenum.h"

struct Entries {
    const char **names;
    size_t       count;
    size_t       next;
    char        *pool;
    const char  *prefix;
    const char  *pathFmt;
    const char  *baseDir;
    bool       (*hasDataFn)(const char *name);
    dp_file     *open;
};

Entries* Entries_FromEnum(const char *filename, const char *enumName, const char *prefix,
                          const char *pathFmt, const char *baseDir)
{
    size_t size = 0;
    char  *src  = File_Read(filename, &size);
    if (!src) Driver_Fail("could not read '%s': %s", filename, strerror(errno));

    char      *end = NULL;
    enum_seq_t seq = libenum_find(src, size, enumName, &end);
    if (seq.errc != LIBENUM_E_OK) Driver_Fail("%s: %s", filename, libenum_errs(seq.errc));
    if (seq.members == NULL)      Driver_Fail("%s: '%s' not found", filename, enumName);

    // Ignore the last member if it starts with MAX_
    if (seq.size > 0 && strncmp(seq.members[seq.size - 1].name, "MAX_", lengthof("MAX_")) == 0) seq.size--;

    Deps_Add(filename);
    Driver_Keep(seq.pool);

    Entries *e     = Zalloc(1, sizeof(*e));
    char   **names = Zalloc(seq.size, sizeof(*names));

    e->names   = Driver_Keep(names);
    e->count   = seq.size;
    e->prefix  = prefix;
    e->pathFmt = pathFmt;
    e->baseDir = baseDir;

    for (size_t i = 0; i < seq.size; i++) {
        e->names[i] = seq.members[i].name;

        if (strncmp(e->names[i], prefix, strlen(prefix)) != 0) {
            Driver_Fail("%s: member '%s' doesn't start with '%s'", filename, e->names[i], prefix);
        }
    }

    free(seq.members); // We already extracted the names and have a copy of the pool pointer
    free(src);         // The pool has a copy of this content
    return e;
}

Entries* Entries_FromList(const char *filename, const char *pathFmt, const char *baseDir)
{
    size_t size;
    char *src = File_Read(filename, &size);
    if (!src) Driver_Fail("could not read '%s': %s", filename, strerror(errno));

    Buffer names = { 0 };
    char  *p     = src;
    char  *end   = p + size;

    while (p < end) {
        p += strspn(p, "\r\n");
        if (*p == '\0') break;

        char *s = p;
        p += strcspn(p, "\r\n");
        *p++ = '\0';

        Buffer_Push(&names, char*, s);
    }

    Deps_Add(filename);
    Driver_Keep(src);

    Entries *e = Zalloc(1, sizeof(*e));
    e->names   = Driver_Keep(names.data);
    e->count   = Buffer_Count(&names, char*);
    e->prefix  = "";
    e->pathFmt = pathFmt;
    e->baseDir = baseDir;

    return e;
}

bool Entries_Next(Entries *e, Entry *out)
{
    Driver_Close(e->open); // handles the reporting
    e->open = NULL;
    if (e->next == e->count) {
        return false;
    }

    size_t i = e->next++;
    *out     = (Entry){
        .index = i,
        .name  = e->names[i],
        .stem  = Driver_Keep(String_ToLower(e->names[i] + strlen(e->prefix))),
    };

    if (e->hasDataFn == NULL || e->hasDataFn(out->name)) {
        e->open      = Driver_Load(e->pathFmt, e->baseDir, out->stem);
        out->root    = dp_root(e->open);
        out->hasData = true;
    }

    return true;
}

Entries* Entries_Filter(Entries *e, bool (*fn)(const char *name)) {
    e->hasDataFn = fn;
    return e;
}

void Entries_Close(Entries *e) { Driver_Close(e->open); free(e); }
