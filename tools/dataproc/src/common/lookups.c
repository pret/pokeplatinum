#include <errno.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

#include "common.h"
#include "dataproc.h"
#include "internal.h"
#include "libenum.h"
#include "libexpr.h"

_Static_assert(
    sizeof(dp_symbol) == sizeof(var_t)
        && offsetof(dp_symbol, value) == offsetof(var_t, value)
        && offsetof(dp_symbol, name) == offsetof(var_t, name),
    "libexpr evaluates initializers directly against dp_symbol arrays"
);

static int CompareSymbolsByName(const void *a, const void *b)
{
    const dp_symbol *lhs = a;
    const dp_symbol *rhs = b;
    return strcmp(lhs->name, rhs->name);
}

static void Register(const char *type, dp_symbol *symbols, size_t count)
{
    if (count > 1) qsort(symbols, count, sizeof(*symbols), CompareSymbolsByName);
    for (size_t i = 1; i < count; i++) {
        if (strcmp(symbols[i - 1].name, symbols[i].name) == 0) {
            Driver_Fail("type '%s' has duplicate symbol '%s'", type, symbols[i].name);
        }
    }

    if (!dp_register(Driver_Context(), Driver_Keep(String_Dupe(type)), symbols, count)) {
        Driver_Fail("lookup type '%s' is already registered", type);
    }
}

void Lookups_Load(const Lookup *lookups)
{
    for (const Lookup *l = lookups; l && l->file != NULL; l++) {
        if (!l->defines && strncmp(l->type, "enum ", 5) != 0) {
            Driver_Fail("enum-based type '%s' must be prefixed by 'enum '", l->type);
        }

        char *path = Paths_Find(l->file);
        if (!path) Driver_Fail("could not find '%s'", l->file);

        size_t size = 0;
        char  *end  = NULL;
        char  *src  = File_Read(path, &size);
        if (!src) Driver_Fail("could not read '%s': %s", path, strerror(errno));

        enum_seq_t seq = l->defines
                       ? libenum_loadcpp(src, size, l->type, &end)
                       : libenum_find(src, size, l->type + strlen("enum "), &end);
        if (seq.errc != LIBENUM_E_OK) Driver_Fail("%s: %s", path, libenum_errs(seq.errc));
        if (seq.members == NULL)      Driver_Fail("%s: '%s' not found", path, l->type);

        dp_symbol *symbols = Zalloc(seq.size, sizeof(*symbols));

        long next = 0;
        for (size_t i = 0; i < seq.size; i++) {
            symbols[i].name = seq.members[i].name;
            if (seq.members[i].expr == NULL) symbols[i].value = next;
            else {
                scope_t scope    = { (var_t *)symbols, i };
                symbols[i].value = libexpr_eval(seq.members[i].expr, &end, &scope);
                if (*end != '\0') Driver_Fail("%s: cannot evaluate '%s'", path, seq.members[i].expr);
            }

            next = symbols[i].value + 1;
        }

        Register(l->type, symbols, seq.size);
        Driver_Keep(seq.pool); // dataproc only borrows the name strings; keep them alive
        Deps_Add(path);

        free(seq.members);
        free(symbols);
        free(src);
        free(path);
    }
}

void Lookups_Register(const char *type, const dp_symbol *symbols, size_t count)
{
    dp_symbol *copy = Zalloc(count, sizeof(*copy));

    for (size_t i = 0; i < count; i++) {
        copy[i] = (dp_symbol){
            .name  = Driver_Keep(String_Dupe(symbols[i].name)),
            .value = symbols[i].value,
        };
    }

    Register(type, copy, count);
    free(copy);
}

#define ASCII_SEP_RECORD 0x1E
#define ASCII_SEP_UNIT   0x1F

Records Records_Load(const char *filename)
{
    char *path = Paths_Find(filename);
    if (!path) Driver_Fail("could not find '%s'", filename);

    size_t size = 0;
    char  *src  = File_Read(path, &size);
    if (!src) Driver_Fail("could not read '%s': %s", path, strerror(errno));

    char *p = src;
    char *e = p + size;

    // Skip the first record, which is all metadata for external programs.
    while (p < e && *p != ASCII_SEP_RECORD) p++;
    p++;

    // Records are separated by 0x1E, inner fields are separated by 0x1F.
    Buffer recs = { 0 };
    while (p < e && *p) {
        const char *name = p;
        while (p < e && *p && *p != ASCII_SEP_UNIT) p++;
        if (p >= e) Driver_Fail("%s: record '%s' has no ID", path, name);
        *p++ = '\0';

        const char *id = p;
        while (p < e && *p && *p != ASCII_SEP_RECORD) p++;
        *p++ = '\0';

        Buffer_Push(&recs, Record, .filename = name, .id = id);
    }

    Deps_Add(path);
    Driver_Keep(src);
    Driver_Keep(recs.data);

    free(path);
    return (Records){
        .count = Buffer_Count(&recs, Record),
        .items = recs.data,
    };
}
