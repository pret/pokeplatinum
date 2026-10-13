#define _GNU_SOURCE // vasprintf, asprintf, strndup

#include "dataproc.h"

#include <assert.h>
#include <errno.h>
#include <inttypes.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "dataproc_backend.h"

#define HL_BOLD_CYAN    "\033[1;36m" // bold + cyan
#define HL_BOLD_YELLOW  "\033[1;33m" // bold + yellow
#define HL_BOLD_RED     "\033[1;31m" // bold + red
#define HL_BOLD_DEFAULT "\033[1;39m" // bold + default color
#define HL_RESET        "\033[0m"    // clear all formatting

typedef struct regentry regentry;
struct regentry {
    const char *type;
    dp_symbol *table;
    size_t size;
};

struct dp_ctx {
    const char *hl_note;
    const char *hl_warning;
    const char *hl_error;
    const char *hl_emphasis;
    const char *hl_reset;

    const dp_reader *reader;

    FILE     *stream;
    regentry *registry;
    size_t    registry_len;
    size_t    registry_cap;
};

struct dp_diagnostic {
    dp_span     span;
    const char *message;

    enum dp_level  level;
    dp_diagnostic *next;
};

struct dp_file {
    const char *filename;
    const char *source;
    size_t      size;

    dp_diagnostic *diag_head;
    dp_diagnostic *diag_tail;

    const dp_reader *reader;
    const dp_writer *writer;

    dp_ctx *ctx;
    void   *doc;
    void   *pool;
};

// ======================================= POOL ALLOCATOR ======================================= //

#define MEMPAGE_CAPACITY 4096

typedef struct mempool mempool_t;
typedef struct mempage mempage_t;

struct mempool {
    mempage_t *head;
    mempage_t *tail;
};

struct mempage {
    char *beg;
    char *end;

    mempage_t *next;
};

static mempage_t* page_new(void) {
    mempage_t *page = malloc(sizeof(*page));
    page->beg       = malloc(MEMPAGE_CAPACITY);
    page->end       = page->beg;
    page->next      = NULL;

    return page;
}

static mempool_t* pool_new(void) {
    mempage_t *page = page_new();
    mempool_t *pool = malloc(sizeof(*pool));
    pool->head      = page;
    pool->tail      = page;
    return pool;
}

#define palloc(pool, T, count) pool_alloc(pool, count, sizeof(T), _Alignof(T))

static void* pool_alloc(mempool_t *pool, size_t items, size_t size, size_t align) {
    assert(items * size <= MEMPAGE_CAPACITY && "total memory request exceeds maximum pagesize");

    ptrdiff_t padding   = -(uintptr_t)pool->tail->beg & (align - 1);
    ptrdiff_t used      = pool->tail->end - pool->tail->beg + padding;
    ptrdiff_t available = MEMPAGE_CAPACITY - used;
    if (available < 0 || items * size > (size_t)available){
        pool->tail->next = page_new();
        pool->tail       = pool->tail->next;
    }

    void *ptr        = pool->tail->end + padding;
    pool->tail->end += padding + (items * size);
    return memset(ptr, 0, items * size);
}

static void pool_free(mempool_t *pool) {
    if (!pool) return;

    mempage_t *curr = pool->head;
    while (curr) {
        mempage_t *next = curr->next;
        free(curr->beg);
        free(curr);
        curr = next;
    }

    free(pool);
}

// ========================================= DIAGNOSTICS ======================================== //

static char* make_node_diagnostic(dp_node *dn, const char *fmt, va_list args) {
    char *body = NULL, *message = NULL;
    if (vasprintf(&body, fmt, args) < 0) abort();

    if (dn->path) {
        if (asprintf(&message, "%s: %s", dn->path, body) < 0) abort();
        free(body);
    } else {
        message = body;
    }

    return message;
}

static void push_diagnostic(dp_file *df, dp_span span, enum dp_level level, const char *message) {
    dp_diagnostic *next = malloc(sizeof(*next));
    next->span         = span;
    next->message      = message;
    next->level        = level;
    next->next         = NULL;

    if (df->diag_tail == NULL) {
        df->diag_head = next;
        df->diag_tail = next;
    } else {
        df->diag_tail->next = next;
        df->diag_tail       = next;
    }
}

#define dp_diag(level)                                                               \
    do {                                                                             \
        if (dn.type == DP_ERROR) return;                                             \
                                                                                     \
        va_list args;                                                                \
        va_start(args, fmt);                                                         \
        dp_span span = dn.file->reader                                               \
                     ? dn.file->reader->span(dn.node)                                \
                     : (dp_span){ 0 };                                               \
        push_diagnostic(dn.file, span, level, make_node_diagnostic(&dn, fmt, args)); \
        va_end(args);                                                                \
    } while (0)

void dp_error(dp_node dn, const char *fmt, ...) { dp_diag(DP_LEVEL_ERROR);   }
void dp_warn(dp_node dn, const char *fmt, ...)  { dp_diag(DP_LEVEL_WARNING); }
void dp_note(dp_node dn, const char *fmt, ...)  { dp_diag(DP_LEVEL_NOTE);    }

static void file_error_span(dp_file *f, dp_span span, const char *fmt, va_list args) {
    char *message = NULL;
    if (vasprintf(&message, fmt, args) < 0) abort();
    push_diagnostic(f, span, DP_LEVEL_ERROR, message);
}

void dp_file_error(dp_file *f, const char *fmt, ...) {
    va_list args;
    va_start(args, fmt);
    file_error_span(f, (dp_span){ 0 }, fmt, args);
    va_end(args);
}

void dp_file_error_span(dp_file *f, dp_span span, const char *fmt, ...) {
    va_list args;
    va_start(args, fmt);
    file_error_span(f, span, fmt, args);
    va_end(args);
}

// ======================================= IMPLEMENTATION ======================================= //

#define assert_reader(reader)                                             \
    do {                                                                  \
        assert(reader && "reader pointer must not be NULL");              \
        assert(reader->parse && "reader must be fully implemented");      \
        assert(reader->free && "reader must be fully implemented");       \
        assert(reader->root && "reader must be fully implemented");       \
        assert(reader->type && "reader must be fully implemented");       \
        assert(reader->span && "reader must be fully implemented");       \
        assert(reader->get_bool && "reader must be fully implemented");   \
        assert(reader->get_int && "reader must be fully implemented");    \
        assert(reader->get_uint && "reader must be fully implemented");   \
        assert(reader->get_float && "reader must be fully implemented");  \
        assert(reader->get_string && "reader must be fully implemented"); \
        assert(reader->arr_len && "reader must be fully implemented");    \
        assert(reader->arr_at && "reader must be fully implemented");     \
        assert(reader->obj_at && "reader must be fully implemented");     \
    } while (0)

#define assert_writer(writer)                                              \
    do {                                                                   \
        assert(writer && "writer pointer must not be NULL");               \
        assert(writer->create && "writer must be fully implemented");      \
        assert(writer->free && "writer must be fully implemented");        \
        assert(writer->dump && "writer must be fully implemented");        \
        assert(writer->new_array && "writer must be fully implemented");   \
        assert(writer->new_object && "writer must be fully implemented");  \
        assert(writer->push_bool && "writer must be fully implemented");   \
        assert(writer->push_int && "writer must be fully implemented");    \
        assert(writer->push_uint && "writer must be fully implemented");   \
        assert(writer->push_float && "writer must be fully implemented");  \
        assert(writer->push_string && "writer must be fully implemented"); \
        assert(writer->push_array && "writer must be fully implemented");  \
        assert(writer->push_object && "writer must be fully implemented"); \
        assert(writer->put_bool && "writer must be fully implemented");    \
        assert(writer->put_int && "writer must be fully implemented");     \
        assert(writer->put_uint && "writer must be fully implemented");    \
        assert(writer->put_float && "writer must be fully implemented");   \
        assert(writer->put_string && "writer must be fully implemented");  \
        assert(writer->put_array && "writer must be fully implemented");   \
        assert(writer->put_object && "writer must be fully implemented");  \
    } while (0)

dp_ctx* dp_ctx_new(const dp_reader *reader) {
    assert_reader(reader);

    dp_ctx *ctx = calloc(1, sizeof(dp_ctx));
    if (!ctx) return NULL;

    const char *nocolor = getenv("NO_COLOR");
    dp_ctx_set_color(ctx, nocolor == NULL || nocolor[0] == 0);
    dp_ctx_set_stream(ctx, stderr);

    ctx->reader       = reader;
    ctx->registry_len = 0;
    ctx->registry_cap = 64;
    ctx->registry     = calloc(ctx->registry_cap, sizeof(*ctx->registry));
    if (!ctx->registry) {
        free(ctx);
        ctx = NULL;
    }

    return ctx;
}

void dp_ctx_free(dp_ctx *ctx) {
    for (size_t i = 0; i < ctx->registry_len; i++) {
        free(ctx->registry[i].table);
    }

    free(ctx->registry);
    free(ctx);
}

void dp_ctx_set_stream(dp_ctx *ctx, FILE *stream) {
    ctx->stream = stream;
}

void dp_ctx_set_color(dp_ctx *ctx, bool enabled) {
    if (enabled) {
        ctx->hl_note     = HL_BOLD_CYAN;
        ctx->hl_warning  = HL_BOLD_YELLOW;
        ctx->hl_error    = HL_BOLD_RED;
        ctx->hl_emphasis = HL_BOLD_DEFAULT;
        ctx->hl_reset    = HL_RESET;
    } else {
        ctx->hl_note     = "";
        ctx->hl_warning  = "";
        ctx->hl_error    = "";
        ctx->hl_emphasis = "";
        ctx->hl_reset    = "";
    }
}

static int compare_symbols_by_name(const void *a, const void *b) {
    const dp_symbol *lhs = a;
    const dp_symbol *rhs = b;
    return strcmp(lhs->name, rhs->name);
}

bool dp_register(dp_ctx *ctx, const char *type, const dp_symbol *symbols, size_t count) {
    for (size_t i = 0; i < ctx->registry_len; i++) {
        regentry *entry = &ctx->registry[i];
        if (strcmp(entry->type, type) == 0) return false;
    }

    if (ctx->registry_len == ctx->registry_cap) {
        size_t    cap = ctx->registry_cap * 2;
        regentry *tmp = realloc(ctx->registry, cap * sizeof(*tmp));
        if (!tmp) return false;

        ctx->registry_cap = cap;
        ctx->registry     = tmp;
    }

    dp_symbol *copy = NULL;

    if (count != 0) {
        copy = calloc(count, sizeof(*copy));
        if (!copy) return false;

        memcpy(copy, symbols, sizeof(*copy) * count);
        qsort(copy, count, sizeof(*copy), compare_symbols_by_name);
        for (size_t i = 1; i < count; i++) {
            if (strcmp(copy[i - 1].name, copy[i].name) == 0) {
                free(copy);
                return false;
            }
        }
    }

    ctx->registry[ctx->registry_len] = (regentry){
        .table = copy,
        .size  = count,
        .type  = type,
    };

    ctx->registry_len++;
    return true;
}

static bool slurp(dp_file *df, const char *filename) {
    assert(df && "df pointer must not be NULL");
    assert(filename && "filename must not be NULL");

    df->filename = filename;
    df->source   = NULL;

    FILE *f = fopen(filename, "rb");
    if (f == NULL) {
        dp_file_error(df, "could not open file '%s': %s", filename, strerror(errno));
        return false;
    }

    fseek(f, 0, SEEK_END);
    long fsize = ftell(f);
    fseek(f, 0, SEEK_SET);

    if (fsize < 0)  {
        dp_file_error(df, "invalid size for file '%s': %s", filename, strerror(errno));
        fclose(f);
        return false;
    }

    char *buf = malloc(fsize + 1);
    if (buf == NULL) {
        dp_file_error(df, "allocation failure for file '%s': %s", filename, strerror(errno));
        fclose(f);
        return false;
    }

    fread(buf, 1, fsize, f);
    fclose(f);
    buf[fsize] = 0;

    df->source = buf;
    df->size   = fsize;

    assert(df->filename && "df should know its filename");
    assert(df->source && "df should point to file contents");
    return true;
}

static bool duplicate(dp_file *df, const char *name, const char *src, size_t len) {
    char *buf = calloc(len + 1, sizeof(*df->source));
    if (!buf) {
        dp_file_error(df, "allocation failure duplicating source content");
        return false;
    }

    memcpy(buf, src, len);
    buf[len]     = '\0';
    df->filename = name;
    df->source   = buf;
    df->size     = len;
    return true;
}

dp_file* dp_load(dp_ctx *ctx, const char *path) {
    return dp_load_with(ctx, path, ctx->reader);
}

dp_file* dp_load_with(dp_ctx *ctx, const char *path, const dp_reader *reader) {
    assert(ctx && "ctx pointer must not be NULL");
    assert(path && "path must not be NULL");
    assert_reader(reader);

    dp_file *df = calloc(1, sizeof(*df));
    if (!df) return NULL;

    df->pool   = pool_new();
    df->ctx    = ctx;
    df->reader = reader;

    if (!slurp(df, path)) return df;

    df->doc = reader->parse(df, df->source, df->size);
    return df;
}

dp_file* dp_parse(dp_ctx *ctx, const char *name, const char *src, size_t len, const dp_reader *reader) {
    assert(ctx && "ctx pointer must not be NULL");
    assert(name && "name must not be NULL");
    assert(src && "src content must not be NULL");
    assert_reader(reader);

    dp_file *df = calloc(1, sizeof(*df));
    if (!df) return NULL;

    df->pool   = pool_new();
    df->ctx    = ctx;
    df->reader = reader;

    if (!duplicate(df, name, src, len)) return df;

    df->doc = reader->parse(df, df->source, df->size);
    return df;
}

void dp_close(dp_file *df) {
    if (df == NULL) return;

    if (df->doc) {
        if (df->reader)      df->reader->free(df->doc);
        else if (df->writer) df->writer->free(df->doc);
    }

    free((char *)df->source);

    dp_diagnostic *curr = df->diag_head, *next = NULL;
    while (curr != NULL) {
        next = curr->next;
        free((char *)curr->message);
        free(curr);
        curr = next;
    }

    pool_free(df->pool);
    free(df);
}

typedef struct errpos errpos_t;
struct errpos {
    size_t line;
    size_t col;
    size_t line_head;
};

static errpos_t locate(dp_file *df, dp_diagnostic *perr) {
    errpos_t    pos  = { .line = 1, .col = 1, .line_head = 0, };
    const char *p    = df->source;

    while (p && *p && (size_t)(p - df->source) < perr->span.beg) {
        if (*p == '\n') {
            pos.line     += 1;
            pos.col       = 1;
            pos.line_head = p - df->source + 1;
        }
        else pos.col++;

        p++;
    }

    return pos;
}

#define HL_DIAG(...)     hl_diag, __VA_ARGS__, df->ctx->hl_reset
#define HL_EMPHASIS(...) df->ctx->hl_emphasis, __VA_ARGS__, df->ctx->hl_reset

enum dp_level dp_report(dp_file *df) {
    assert(df && "df pointer must not be NULL");

    if (!df->diag_head) return DP_LEVEL_NONE;

    enum dp_level max_sev = DP_LEVEL_NOTE;
    for (dp_diagnostic *perr = df->diag_head; perr; perr = perr->next) {
        if (perr->level > max_sev) max_sev = perr->level;

        const char *prefix = NULL, *hl_diag = NULL;
        switch (perr->level) {
        case DP_LEVEL_NOTE:    prefix = "note:";    hl_diag = df->ctx->hl_note;    break;
        case DP_LEVEL_WARNING: prefix = "warning:"; hl_diag = df->ctx->hl_warning; break;
        case DP_LEVEL_ERROR:   prefix = "error:";   hl_diag = df->ctx->hl_error;   break;
        case DP_LEVEL_NONE:    assert(false && "DP_LEVEL_NONE is an invalid level"); abort(); break;
        }

        if (perr->span.beg == 0 && perr->span.end == 0) {
            fprintf(df->ctx->stream, "%s%s:%s %s%s%s %s\n",
                    HL_EMPHASIS(df->filename),
                    HL_DIAG(prefix),
                    perr->message);
        }
        else {
            errpos_t pos = locate(df, perr);
            fprintf(df->ctx->stream, "%s%s:%zu:%zu:%s %s%s%s %s\n",
                    HL_EMPHASIS(df->filename, pos.line, pos.col),
                    HL_DIAG(prefix),
                    perr->message);

            const char *p = df->source + pos.line_head;
            const char *e = p;
            while (e && *e && *e != '\n') e++;

            // TODO: multi-line support for previews
            size_t line_tail = e - df->source;
            int len_prefix   = (int)(perr->span.beg - pos.line_head);
            int len_error    = perr->span.end < line_tail
                ? (int)(perr->span.end - perr->span.beg)
                : (int)(line_tail - perr->span.beg);
            int len_suffix   = (int)(line_tail - pos.line_head - len_prefix - len_error);
            fprintf(df->ctx->stream, " %4zu | %.*s%s%.*s%s%.*s\n",
                    pos.line,
                    len_prefix, p,
                    HL_DIAG(len_error, p + len_prefix),
                    len_suffix, p + len_prefix + len_error);
            fprintf(df->ctx->stream, "      | ");
            for (int i = 0; i < len_prefix; i++) fputc(' ', df->ctx->stream);
            fputs(hl_diag, df->ctx->stream);
            for (int i = 0; i < len_error; i++)  fputc('^', df->ctx->stream);
            fputs(df->ctx->hl_reset, df->ctx->stream);
            for (int i = 0; i < len_suffix; i++) fputc(' ', df->ctx->stream);
            fputc('\n', df->ctx->stream);
        }
    }

    return max_sev;
}

static inline bool is_word(char c) {
    return c == '_'
        || (c >= 'a' && c <= 'z')
        || (c >= 'A' && c <= 'Z')
        || (c >= '0' && c <= '9');
}

static bool queriable(enum dp_type type) {
    return type == DP_ARRAY || type == DP_OBJECT;
}

static const char* typename(enum dp_type type) {
    switch (type) {
    case DP_NULL:    return "a null-literal";
    case DP_BOOL:    return "a boolean";
    case DP_INT:     return "an integer";
    case DP_FLOAT:   return "a float";
    case DP_STRING:  return "a string";
    case DP_ARRAY:   return "an array";
    case DP_OBJECT:  return "an object";
    case DP_SYMBOL:  return "a mapped constant";
    case DP_ERROR:   return "(error)";
    case DP_MISSING: return "(missing)";
    default:         abort();
    }
}

enum queryerr {
    DP_Q_OK = 0,
    DP_Q_END,
    DP_Q_MISSINGDOT, // missing a leading dot
    DP_Q_BADTOKEN,   // hit an unexpected token
    DP_Q_RBRACE,     // missing a closing r-brace for array-accessor
    DP_Q_ARRINDEX,   // array index is not a non-negative integer
    DP_Q_EMPTY,      // nothing to query
};

static const char* query_errmsg(enum queryerr code) {
    switch (code) {
    case DP_Q_OK:         return "(query ok)";
    case DP_Q_END:        return "(query end)";
    case DP_Q_MISSINGDOT: return "missing a leading '.'";
    case DP_Q_BADTOKEN:   return "unexpected access-delimiting token";
    case DP_Q_RBRACE:     return "missing closing-brace ']'";
    case DP_Q_ARRINDEX:   return "array index must be a non-negative integer";
    case DP_Q_EMPTY:      return "empty query";
    default:              abort();
    }
}

typedef struct querystep querystep;
struct querystep {
    bool is_key;
    const char *key;
    size_t key_len;
    size_t index;
};

// Read one step of the query and return OK, END, or a syntax error
static enum queryerr next_step(const char **q, querystep *out) {
    assert(q && "q must not be NULL");
    assert(*q && "*q must not be NULL");
    assert(out && "out must not be NULL");

    const char *p = *q;
    *out = (querystep){ 0 };

    if (*p == '\0') return DP_Q_END;

    if (*p == '.') {
        p++;

        if (is_word(*p)) {
            out->is_key  = true;
            out->key     = p;

            do { p++; out->key_len++; } while (is_word(*p));
            *q = p;
            return DP_Q_OK;
        }
    }

    if (*p == '[') {
        p++;

        out->is_key = false;

        const char *s = p;
        while (*p >= '0' && *p <= '9') {
            int d = *p - '0';
            out->index = out->index > (SIZE_MAX - d) / 10
                       ? SIZE_MAX
                       : out->index * 10 + d;

            p++;
        }

        if (s == p)     return DP_Q_ARRINDEX; // no digits
        if (*p == '\0') return DP_Q_RBRACE;   // missing brace
        if (*p != ']')  return DP_Q_ARRINDEX; // non-numeric index

        p++;

        *q = p;
        return DP_Q_OK;
    }

    return DP_Q_BADTOKEN;
}

static dp_node poison(dp_node dn) {
    dn.type = DP_ERROR;
    dn.node = NULL;
    return dn;
}

// Verify the whole query
static enum queryerr validate_query(const char *path) {
    if (*path == '\0') return DP_Q_EMPTY;
    if (*path != '.')  return DP_Q_MISSINGDOT;

    const char   *query = path;
    querystep     step;
    enum queryerr e;
    while ((e = next_step(&query, &step)) == DP_Q_OK) {}
    return e;
}

// Join a node's path with a relative path to make a canonical path.
// Only call this on a validated query; syntax errors are silent.
static char* render_query(mempool_t *pool, const char *prev, const char *path) {
    size_t prev_len = (prev[0] == '.' && prev[1] == '\0') ? 0 : strlen(prev);
    char  *out      = palloc(pool, char, prev_len + 1 + strlen(path) + 1);
    char  *end      = out;

    memcpy(end, prev, prev_len);
    end += prev_len;

    const char *query = path;
    querystep   step;
    while (next_step(&query, &step) == DP_Q_OK) {
        if (step.is_key) {
            end += sprintf(end, ".%.*s", (int)step.key_len, step.key);
        } else {
            if (end == out) *end++ = '.'; // indexing on the root is ".[0]", not "[0]"

            end += sprintf(end, "[%zu]", step.index);
        }
    }

    if (end == out) *end++ = '.'; // the root itself
    *end = '\0';
    return out;
}

// Execute a query:
//
// 1. "." is valid and accepted as the passed-value of `dn`
// 2. Validate the query for any syntax errors; return a poisoned node if any are found
// 3. Return poison for a poisoned node
// 4. Render the canonical path onto the returned node
// 5. Return early for a missing node
// 6. Walk the path to the desired child node
//
// When `error_if_missing` is true, a missing child is treated as an error.
static dp_node dp_query(dp_node dn, const char *path, bool error_if_missing) {
    assert(path && "path query must not be NULL");
    assert((!dn.file || dn.file->reader) && "not a file opened for reading");

    enum queryerr e;

    if (path[0] == '.' && path[1] == '\0') return dn;
    if ((e = validate_query(path)) != DP_Q_END) {
        if (dn.file) dp_file_error(dn.file, "%s: query syntax error: %s", path, query_errmsg(e));
        return poison(dn);
    }

    if (dn.type == DP_ERROR) return poison(dn);

    dn.path = render_query(dn.file->pool, dn.path, path);
    if (dn.type == DP_MISSING) return dn;

    const char *query = path;
    querystep   step;
    while (next_step(&query, &step) == DP_Q_OK) {
        enum dp_type wanted = step.is_key ? DP_OBJECT : DP_ARRAY;
        if (dn.type != wanted) {
            if (queriable(dn.type)) dp_error(dn, "expected %s, but got %s", typename(wanted), typename(dn.type));
            else                    dp_error(dn, "expected an array or object, but got %s", typename(dn.type));
            return poison(dn);
        }

        void *child = NULL;
        if (step.is_key) {
            char *key = strndup(step.key, step.key_len);
            child     = dn.file->reader->obj_at(dn.node, key);
            free(key);
        } else {
            child = dn.file->reader->arr_at(dn.node, step.index);
        }

        if (child == NULL) {
            if (!error_if_missing) {
                dn.type = DP_MISSING; // stay on the most recent existing ancestor
                return dn;
            }

            if (step.is_key) dp_error(dn, "object has no member named \"%.*s\"", (int)step.key_len, step.key);
            else             dp_error(dn, "array index %zu is out-of-bounds", step.index);
            return poison(dn);
        }

        dn.node = child;
        dn.type = dn.file->reader->type(child);
    }

    return dn;
}

dp_node dp_try(dp_node dn, const char *path) {
    return dp_query(dn, path, false);
}

dp_node dp_at(dp_node dn, const char *path) {
    return dp_query(dn, path, true);
}

bool dp_missing(dp_node dn) {
    return dn.type == DP_MISSING;
}

enum dp_type dp_type_of(dp_node dn) {
    return dn.type;
}

// The canonical path from the root, owned by the file. Nodes without a path,
// zero-initialised ones and those created by a writer, give NULL.
const char* dp_path_of(dp_node dn) {
    return dn.path;
}

#define asserttype(expected, retval)                  \
    do {                                              \
        if (dn.type == DP_ERROR)   return retval;     \
        if (dn.type == DP_MISSING) return retval;     \
        if (dn.type != expected) {                    \
            dp_error(                                 \
                dn,                                   \
                "expected %s, but got %s",            \
                typename(expected), typename(dn.type) \
            );                                        \
            return retval;                            \
        }                                             \
    } while (0)

bool dp_bool(dp_node dn) {
    asserttype(DP_BOOL, false);
    return dn.file->reader->get_bool(dn.node);
}

int64_t dp_int_in(dp_node dn, int64_t min, int64_t max) {
    int64_t v    = 0;
    bool    fits = true;
    if (dn.type == DP_SYMBOL) v = dn.mapped;
    else {
        asserttype(DP_INT, 0);
        fits = dn.file->reader->get_int(dn.node, &v);
    }

    if (!fits || v < min || v > max) {
        dp_error(dn, "expected a value in the range [%" PRId64 ",%" PRId64 "]", min, max);
        return 0;
    }

    return v;
}

uint64_t dp_uint_in(dp_node dn, uint64_t min, uint64_t max) {
    uint64_t v    = 0;
    bool     fits = true;
    if (dn.type == DP_SYMBOL) {
        fits = (dn.mapped >= 0);
        v    = (uint64_t)dn.mapped;
    }
    else {
        asserttype(DP_INT, 0);
        fits = dn.file->reader->get_uint(dn.node, &v);
    }

    if (!fits || v < min || v > max) {
        dp_error(dn, "expected a value in the range [%" PRIu64 ",%" PRIu64 "]", min, max);
        return 0;
    }

    return v;
}

uint64_t dp_bits(dp_node dn, unsigned bits) {
    if (bits > 64) {
        if (dn.file) {
            dp_file_error(dn.file, "%s: requested bit width %u > 64",
                          dn.path ? dn.path : ".", bits);
        }
        return 0;
    }

    uint64_t max = bits == 64 ? UINT64_MAX : (UINT64_C(1) << bits) - 1;
    return dp_uint_in(dn, 0, max);
}

double dp_float(dp_node dn) {
    if (dn.type == DP_INT) {
        int64_t  i;
        uint64_t u;

        if      (dn.file->reader->get_int(dn.node, &i))  return (double)i;
        else if (dn.file->reader->get_uint(dn.node, &u)) return (double)u;
        else {
            dp_error(dn, "integer cannot convert to floating-point");
            return 0.0;
        }
    }

    asserttype(DP_FLOAT, 0.0);
    return dn.file->reader->get_float(dn.node);
}

const char* dp_string(dp_node dn) {
    if (dn.type == DP_SYMBOL) dn.type = DP_STRING;
    asserttype(DP_STRING, NULL);
    return dn.file->reader->get_string(dn.node);
}

size_t dp_arr_len(dp_node dn) {
    asserttype(DP_ARRAY, 0);
    return dn.file->reader->arr_len(dn.node);
}

dp_node dp_arr_at(dp_node dn, size_t i) {
    char step[32];
    snprintf(step, sizeof(step), ".[%zu]", i);
    return dp_at(dn, step);
}

static regentry* regfind(dp_ctx *ctx, const char *type) {
    for (size_t i = 0; i < ctx->registry_len; i++) {
        regentry *entry = &ctx->registry[i];
        if (strcmp(entry->type, type) == 0) return entry;
    }

    return NULL;
}

static int lookup_cmp(const void *key, const void *member) {
    const char     *value = key;
    const dp_symbol *entry = member;

    return strcmp(value, entry->name);
}

static dp_symbol* lookup_find(dp_node *dnp, const char *type) {
    dp_node dn = *dnp;

    asserttype(DP_STRING, (dnp->node = NULL, dnp->type = DP_ERROR, NULL));

    regentry *entry = regfind(dnp->file->ctx, type);
    if (entry == NULL) {
        dp_error(dn, "no lookup table registered for \"%s\"", type);
        dnp->node = NULL;
        dnp->type = DP_ERROR;
        return NULL;
    }

    const char *value = dn.file->reader->get_string(dn.node);
    dp_symbol  *found = entry->size
                      ? bsearch(value, entry->table, entry->size, sizeof(dp_symbol), lookup_cmp)
                      : NULL;

    if (!found) {
        dp_error(dn, "expected an identifier for \"%s\"", type);
        dnp->node = NULL;
        dnp->type = DP_ERROR;
        return NULL;
    }

    return found;
}

dp_node dp_lookup(dp_node dn, const char *type) {
    if (dp_missing(dn)) return dn;

    dp_symbol *found = lookup_find(&dn, type);
    if (found) {
        dn.mapped = found->value;
        dn.type   = DP_SYMBOL;
    }

    return dn;
}

dp_file* dp_new(dp_ctx *ctx, const dp_writer *writer, const char *name) {
    assert(ctx && "ctx pointer must not be NULL");
    assert_writer(writer);

    if (name == NULL) name = "<new file>";

    dp_file *df = calloc(1, sizeof(*df));
    if (!df) return NULL;

    df->pool     = pool_new();
    df->ctx      = ctx;
    df->filename = name;
    df->writer   = writer;

    void *doc = writer->create();
    if (!doc) {
        dp_file_error(df, "could not create a document");
        return df;
    }

    df->doc      = doc;
    return df;
}

dp_node dp_root(dp_file *df) {
    if (!df || df->doc == NULL) {
        return (dp_node){
            .file = df,
            .path = ".",
            .type = DP_ERROR,
            .node = NULL,
        };
    }

    assert(df->reader && "not a file opened for reading");
    void *raw = df->reader->root(df->doc);
    return (dp_node){
        .file = df,
        .path = ".",
        .type = df->reader->type(raw),
        .node = raw,
    };
}

char* dp_dump(dp_file *df) {
    assert(df->writer && "not a file opened for writing");
    return df->writer->dump(df, df->doc);
}

// The root of a written file. A failure is reported on the file, and the root
// is poison; a document that was never created was reported by dp_new.
static dp_node new_root(dp_file *df, enum dp_type type) {
    assert(df->writer && "not a file opened for writing");

    dp_node root = { .file = df };
    if (!df->doc) return root;

    root.node = type == DP_OBJECT ? df->writer->new_object(df->doc) : df->writer->new_array(df->doc);
    if (!root.node) {
        dp_file_error(df, "could not create the root %s", type == DP_OBJECT ? "object" : "array");
        return root;
    }

    root.type = type;
    return root;
}

dp_node dp_new_object(dp_file *df) { return new_root(df, DP_OBJECT); }
dp_node dp_new_array(dp_file *df)  { return new_root(df, DP_ARRAY); }

// Writes into poison do nothing (the failure was already reported). Writes into
// the wrong kind of container are a bug in the calling code.
#define writable(dn, kind, retval)                                                   \
    do {                                                                             \
        if ((dn).type == DP_ERROR) return retval;                                    \
        assert((dn).file->writer && "not a file opened for writing");                \
        assert((dn).type == (kind) && "cannot write into this kind of container");   \
    } while (0)

// A value the backend could not add is reported on its container. For writer
// nodes, that's just the file.
#define put_scalar(dn, key, member, v)                                               \
    do {                                                                             \
        writable(dn, DP_OBJECT, );                                                   \
        if (!(dn).file->writer->member((dn).file->doc, (dn).node, key, v)) {         \
            dp_error(dn, "could not add member \"%s\"", key);                        \
        }                                                                            \
    } while (0)

#define push_scalar(dn, member, v)                                                   \
    do {                                                                             \
        writable(dn, DP_ARRAY, );                                                    \
        if (!(dn).file->writer->member((dn).file->doc, (dn).node, v)) {              \
            dp_error(dn, "could not append a value to an array");                    \
        }                                                                            \
    } while (0)

void dp_put_bool(dp_node dn, const char *key, bool v)          { put_scalar(dn, key, put_bool, v); }
void dp_put_int(dp_node dn, const char *key, int64_t v)        { put_scalar(dn, key, put_int, v); }
void dp_put_uint(dp_node dn, const char *key, uint64_t v)      { put_scalar(dn, key, put_uint, v); }
void dp_put_float(dp_node dn, const char *key, double v)       { put_scalar(dn, key, put_float, v); }
void dp_put_string(dp_node dn, const char *key, const char *v) { put_scalar(dn, key, put_string, v); }

void dp_push_bool(dp_node dn, bool v)          { push_scalar(dn, push_bool, v); }
void dp_push_int(dp_node dn, int64_t v)        { push_scalar(dn, push_int, v); }
void dp_push_uint(dp_node dn, uint64_t v)      { push_scalar(dn, push_uint, v); }
void dp_push_float(dp_node dn, double v)       { push_scalar(dn, push_float, v); }
void dp_push_string(dp_node dn, const char *v) { push_scalar(dn, push_string, v); }

// A container the backend could not add is reported on its parent and is
// poison, so writes into it are silent.
static dp_node new_child(dp_node parent, void *node, enum dp_type type) {
    dp_node child = { .file = parent.file };
    if (!node) return child;

    child.node = node;
    child.type = type;
    return child;
}

dp_node dp_put_array(dp_node dn, const char *key) {
    writable(dn, DP_OBJECT, dn);
    dp_node child = new_child(dn, dn.file->writer->put_array(dn.file->doc, dn.node, key), DP_ARRAY);
    if (child.type == DP_ERROR) dp_error(dn, "could not add member \"%s\"", key);
    return child;
}

dp_node dp_put_object(dp_node dn, const char *key) {
    writable(dn, DP_OBJECT, dn);
    dp_node child = new_child(dn, dn.file->writer->put_object(dn.file->doc, dn.node, key), DP_OBJECT);
    if (child.type == DP_ERROR) dp_error(dn, "could not add member \"%s\"", key);
    return child;
}

dp_node dp_push_array(dp_node dn) {
    writable(dn, DP_ARRAY, dn);
    dp_node child = new_child(dn, dn.file->writer->push_array(dn.file->doc, dn.node), DP_ARRAY);
    if (child.type == DP_ERROR) dp_error(dn, "could not append new array to an array");
    return child;
}

dp_node dp_push_object(dp_node dn) {
    writable(dn, DP_ARRAY, dn);
    dp_node child = new_child(dn, dn.file->writer->push_object(dn.file->doc, dn.node), DP_OBJECT);
    if (child.type == DP_ERROR) dp_error(dn, "could not append new object to an array");
    return child;
}
