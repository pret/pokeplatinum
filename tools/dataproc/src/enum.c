#include "enum.h"

#include <stdbool.h>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Duplicate a string onto the heap.
static char* strdup_(const char *s) {
    size_t l = strlen(s);
    char  *d = calloc(l + 1, sizeof(*d));
    memcpy(d, s, l);
    return d;
}

// Find the first occurrence of `c` (or `\0`) within `s`.
static char* strchrnul_(const char *s, int c) {
    while (s && *s && *s != c) s++;
    return (char *)s;
}

// Find the first occurrence of a character OTHER than `c` (or `\0`) within `s`.
static char* strnchr(const char *s, int c) {
    while (s && *s && *s == c) s++;
    return (char *)s;
}

// Locates the first occurrence of `c` (or `\0`) within `*s` and replaces it
// with `\0`. `*s` is then advanced to the succeeding character, and the
// original value of `*s` is returned.
//
// If `*s` is NULL, then NULL is returned immediately.
static char* strcsep(char **s, char c) {
	char *p = *s;

	char *e = strchrnul_(p, c);
	if (*e) *e++ = 0; else e = 0;

	*s = e;
	return p;
}

// Locates the first occurrence of any character from `charset` within `*s` and
// replaces it with `\0`. `*s` is then advanced to the succeeding character, and
// the original value of `*s` is returned.
//
// If `*s` is NULL, then NULL is returned immediately.
//
// Generalization of `strcsep` for multiple-characters.
static char* strssep(char **s, const char *charset) {
	char *p = *s;
	if (!p) return NULL;

	char *e = p + strcspn(p, charset);
	if (*e) *e++ = 0; else e = 0;

	*s = e;
	return p;
}

#define INIT_CAP 256

static int push_symval(enum_t *table, const char *tok, const char *val, unsigned flags) {
    if (table->len + 1 >= table->cap) {
        size_t  new_cap = table->cap * 3 / 2;
        symb_t *new_sym = realloc(table->syms, new_cap * sizeof(*table->syms));
        if (new_sym == NULL) return 1;

        table->syms = new_sym;
        table->cap  = new_cap;
    }

    if (flags & ENUM_F_CONVERT) { // if val == NULL, get previous (syms[len-1]) and increment
        if (val == NULL) {
            const symb_t *prev_sym    = &table->syms[table->len - 1];
            table->syms[table->len++] = (symb_t){
                .tok     = (char *)tok,
                .val_int = prev_sym->val_int + 1,
            };
        }
        else {
            table->syms[table->len++] = (symb_t){
                .tok     = (char *)tok,
                .val_int = strtol(val, NULL, 0),
            };
        }
    }
    else {
        table->syms[table->len++] = (symb_t){
            .tok     = (char *)tok,
            .val_lit = (char *)val
        };
    }

    return 0;
}

static int compare_tok(const void *lhs, const void *rhs) {
    const symb_t *sym_lhs = lhs;
    const symb_t *sym_rhs = rhs;
    return strcmp(sym_lhs->tok, sym_rhs->tok);
}

static int push_define(enum_t *table, char **s, unsigned flags) {
    char *sym = strcsep(s, ' ');
    char *val = strnchr(*s, ' ');

    return (val && *val) ? push_symval(table, sym, val, flags) : 0;
}

static void push_enum_member(enum_t *table, char **s, unsigned flags) {
    char *line = strnchr(strcsep(s, '\n'), ' ');
    char *sym  = strssep(&line, " ,");
    char *equ  = strnchr(line, ' ');
    char *val  = equ && *equ == '=' ? strnchr(equ + 1, ' ') : NULL;
    char *end  = strchrnul_(val, ',');

    if (end)  *end = 0;
    if (*sym) push_symval(table, sym, val, flags);
}

enum_t enum_parse_def(const char *buf, const char *prefix, unsigned flags) {
    enum_t ret = {
        .name = prefix ? (char *)prefix : NULL,
        .pool = strdup_(buf),
        .syms = calloc(INIT_CAP, sizeof(*ret.syms)),
        .cnv  = !!(flags & ENUM_F_CONVERT),
        .len  = 0,
        .cap  = INIT_CAP,
    };

    char  *s   = ret.pool;
    size_t len = prefix ? strlen(prefix) : 0;

    while (*s) {
        char *line = strcsep(&s, '\n');

        if (strncmp(line, "#define ", 8) != 0) continue; else line += 8;
        if (prefix && strncmp(line, prefix, len) != 0) continue;
        if (push_define(&ret, &line, flags) != 0) break;
    }

    if (flags & ENUM_F_SORT) qsort(ret.syms, ret.len, sizeof(*ret.syms), compare_tok);
    return ret;
}

enum_t enum_parse_one(const char *buf, unsigned flags, char **endptr) {
    enum_t ret = {
        .name = NULL,
        .pool = strdup_(buf),
        .syms = calloc(INIT_CAP, sizeof(*ret.syms)),
        .cnv  = !!(flags & ENUM_F_CONVERT),
        .len  = 0,
        .cap  = INIT_CAP,
    };

    char *s = ret.pool;
    while (*s) {
        char *line = strcsep(&s, '\n');

        if (strncmp(line, "enum ", 5) != 0) continue; else line += 5;
        if (*line != '{') {
            ret.name = strssep(&line, " {");
        }

        // NOTE: assumption: opening brace is on the same line, and members
        // are defined one-per-line

        while (*s && strncmp(s, "};", 2) != 0) {
            push_enum_member(&ret, &s, flags);
        }

        s += 2;
        break; // stop after the one `enum` is found
    }

    if (flags & ENUM_F_SORT) qsort(ret.syms, ret.len, sizeof(*ret.syms), compare_tok);
    if (endptr) *endptr = (char *)buf + (s - ret.pool);
    return ret;
}

static enum_t* push_subtable(enums_t *tables, const char *name, unsigned flags) {
    if (tables->len + 1 >= tables->cap) {
        size_t  new_cap = tables->cap * 3 / 2;
        enum_t *new_arr = realloc(tables->enums, new_cap * sizeof(*tables->enums));
        if (new_arr == NULL) return NULL;

        tables->enums = new_arr;
        tables->cap   = new_cap;
    }

    enum_t *next = &tables->enums[tables->len++];
    next->name   = (char *)name;
    next->pool   = NULL;
    next->syms   = calloc(INIT_CAP, sizeof(*next->syms));
    next->cnv    = !!(flags & ENUM_F_CONVERT);
    next->len    = 0;
    next->cap    = INIT_CAP;

    return next;
}

static int compare_table(const void *lhs, const void *rhs) {
    const enum_t *table_lhs = lhs;
    const enum_t *table_rhs = rhs;
    return strcmp(table_lhs->name, table_rhs->name);
}

enums_t enum_parse_all(const char *buf, unsigned flags) {
    enums_t ret = {
        .enums = calloc(INIT_CAP, sizeof(*ret.enums)),
        .pool  = strdup_(buf),
        .len   = 0,
        .cap   = INIT_CAP,
    };

    push_subtable(&ret, NULL, flags);

    char *s = ret.pool;
    while (*s) {
        char   *line = strcsep(&s, '\n');
        enum_t *sub  = &ret.enums[0];

        if (strncmp(line, "enum ", 5) == 0) {
            line += 5;
            if (*line != '{') {
                sub = push_subtable(&ret, strssep(&line, " {"), flags);
                if (sub == NULL) break;
            }

            while (*s && strncmp(s, "};", 2) != 0) {
                push_enum_member(sub, &s, flags);
            }
        }
        else if (strncmp(line, "#define ", 8) == 0) {
            line += 8;
            push_define(sub, &line, flags);
        }
        else continue;
    }

    if (flags & ENUM_F_SORT) {
        for (size_t i = 0; i < ret.len; i++) {
            qsort(ret.enums[i].syms,
                  ret.enums[i].len,
                  sizeof(*ret.enums[i].syms),
                  compare_tok);
        }

        qsort(ret.enums + 1, ret.len - 1, sizeof(*ret.enums), compare_table);
    }
    return ret;
}

void enum_free(enum_t *table) {
    free(table->pool);
    free(table->syms);

    table->name = NULL;
    table->pool = NULL;
    table->syms = NULL;
}

void enum_free_all(enums_t *tables) {
    for (size_t i = 0; i < tables->len; i++) enum_free(&tables->enums[i]);

    free(tables->enums);
    free(tables->pool);

    tables->enums = NULL;
    tables->pool  = NULL;
}
