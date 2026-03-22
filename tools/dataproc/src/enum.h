#ifndef ENUM_H
#define ENUM_H

#include <stdbool.h>
#include <stddef.h>

typedef struct symb_t symb_t;
struct symb_t {
    union {
        char *val_lit;
        long  val_int;
    };
    char *tok;
};

typedef struct enum_t enum_t;
struct enum_t {
    char   *name;
    char   *pool;
    symb_t *syms;
    bool    cnv;
    size_t  len;
    size_t  cap;
};

typedef struct enums_t enums_t;
struct enums_t {
    enum_t *enums;
    char   *pool;
    size_t  len;
    size_t  cap;
};

#define ENUM_F_SORT    (1 << 0)
#define ENUM_F_CONVERT (1 << 1)

// Parse a C file `buf` for defined preprocesor tokens with replacement values
// and return them as a symbol-table. If `prefix` is given as non-`NULL`, it
// will be used to filter preprocessor tokens from `buf` that are included in
// the output.
//
// If `flags` contains `ENUM_F_SORT`, then symbols in the output table will be
// sorted lexicographically by their tokens.
//
// If `flags` contains `ENUM_F_CONVERT`, then numeric strings will be parsed
// into integer values.
enum_t enum_parse_def(const char *buf, const char *prefix, unsigned flags);

// Parse a C file `buf` for a named `enum` and return its member-names as a
// symbol-table. If `e_name` is given as `NULL`, then this routine will return
// an empty symbol-table; otherwise, its value is used to find a matching `enum`
// from `buf` whose member-names shall be loaded into the output.
//
// If `flags` contains `ENUM_F_SORT`, then symbols in the output table will be
// sorted lexicographically by their tokens.
//
// If `flags` contains `ENUM_F_CONVERT`, then numeric strings will be parsed
// into integer values.
//
// If `endptr` is not `NULL`, then `*endptr` will be set to the next unprocessed
// character in `buf` upon exit.
enum_t enum_parse_one(const char *buf, unsigned flags, char **endptr);

// Parse a C file `buf` for both `enum`s and defined preprocessor tokens and
// return them as a table of symbol-tables. All preprocessor tokens and members
// of unnamed `enum`s will be present in the symbol-table at `enums[0]`; members
// of named `enum`s will be present in their own individual symbol-tables.
//
// If `flags` contains `ENUM_F_SORT`, then symbols in the output tables will be
// sorted lexicographically by their tokens, and all named output tables wiil be
// sorted lexicographically by their names.
enums_t enum_parse_all(const char *buf, unsigned flags);

// Free allocations in a symbol-table.
void enum_free(enum_t *table);
void enum_free_all(enums_t *tables);

#endif // ENUM_H
