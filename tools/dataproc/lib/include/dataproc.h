#ifndef DATAPROC_H
#define DATAPROC_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>

#ifdef __cplusplus
extern "C" {
#endif

enum dp_type {
    DP_ERROR = 0,
    DP_MISSING,
    DP_NULL,
    DP_BOOL,
    DP_INT,
    DP_FLOAT,
    DP_STRING,
    DP_ARRAY,
    DP_OBJECT,
    DP_SYMBOL,
};

enum dp_level {
    DP_LEVEL_NONE,
    DP_LEVEL_NOTE,
    DP_LEVEL_WARNING,
    DP_LEVEL_ERROR,
};

typedef struct dp_diagnostic dp_diagnostic;
typedef struct dp_file       dp_file;
typedef struct dp_node       dp_node;
typedef struct dp_symbol     dp_symbol;
typedef struct dp_span       dp_span;
typedef struct dp_ctx        dp_ctx;
typedef struct dp_reader     dp_reader;
typedef struct dp_writer     dp_writer;

struct dp_node {
    dp_file      *file;
    char         *path;
    enum dp_type  type;
    void         *node;   // for DP_SYMBOL, the string node that was looked up
    long          mapped;
};

struct dp_symbol {
    long        value;
    const char *name;
};

extern const dp_reader dp_json_reader;
extern const dp_writer dp_json_writer;

dp_ctx* dp_ctx_new(const dp_reader *reader);
void    dp_ctx_free(dp_ctx *ctx);
void    dp_ctx_set_stream(dp_ctx *ctx, FILE *stream);
void    dp_ctx_set_color(dp_ctx *ctx, bool enabled);
bool    dp_register(dp_ctx *ctx, const char *type, const dp_symbol *symbols, size_t count);

dp_file* dp_load(dp_ctx *ctx, const char *path);
dp_file* dp_load_with(dp_ctx *ctx, const char *path, const dp_reader *reader);
dp_file* dp_parse(dp_ctx *ctx, const char *name, const char *src, size_t len, const dp_reader *reader);
dp_file* dp_new(dp_ctx *ctx, const dp_writer *writer, const char *name);

dp_node       dp_root(dp_file *df);
enum dp_level dp_report(dp_file *df);
char*         dp_dump(dp_file *df);
void          dp_close(dp_file *df);

void dp_error(dp_node dn, const char *fmt, ...) __attribute__((format(printf, 2, 3)));
void dp_warn(dp_node dn, const char *fmt, ...) __attribute__((format(printf, 2, 3)));
void dp_note(dp_node dn, const char *fmt, ...) __attribute__((format(printf, 2, 3)));
void dp_file_error(dp_file *f, const char *fmt, ...) __attribute__((format(printf, 2, 3)));
void dp_file_error_span(dp_file *f, dp_span span, const char *fmt, ...) __attribute__((format(printf, 3, 4)));

dp_node     dp_at(dp_node dn, const char *path);
dp_node     dp_try(dp_node dn, const char *path);
bool        dp_missing(dp_node dn);
enum dp_type dp_type_of(dp_node dn);
const char*  dp_path_of(dp_node dn);
bool        dp_bool(dp_node dn);
int64_t     dp_int_in(dp_node dn, int64_t min, int64_t max);
uint64_t    dp_uint_in(dp_node dn, uint64_t min, uint64_t max);
uint64_t    dp_bits(dp_node dn, unsigned bits);
double      dp_float(dp_node dn);
const char* dp_string(dp_node dn);
size_t      dp_arr_len(dp_node dn);
dp_node     dp_arr_at(dp_node dn, size_t i);
dp_node     dp_lookup(dp_node dn, const char *type);

// for (dp_each(elem, i, arr)) { ... }: declares `size_t i` and `dp_node elem`
// for the body.
// Hidden names derive from elem, so nested loops need distinct element names.
// `break`, `continue`, and `return` work as one would expect in a typical loop.
#define dp_each(elem, i, arr)                                              \
    dp_node dp_arr_##elem = (arr), elem, *dp_once_##elem = &dp_arr_##elem; \
    dp_once_##elem;                                                        \
    dp_once_##elem = NULL)                                                 \
        for (size_t i = 0, dp_len_##elem = dp_arr_len(dp_arr_##elem);      \
             i < dp_len_##elem && (elem = dp_arr_at(dp_arr_##elem, i), 1); \
             i++

static inline int64_t  dp_int(dp_node dn)  { return dp_int_in(dn, INT64_MIN, INT64_MAX); }
static inline int8_t   dp_s8(dp_node dn)   { return (int8_t)dp_int_in(dn,  INT8_MIN,  INT8_MAX); }
static inline int16_t  dp_s16(dp_node dn)  { return (int16_t)dp_int_in(dn, INT16_MIN, INT16_MAX); }
static inline int32_t  dp_s32(dp_node dn)  { return (int32_t)dp_int_in(dn, INT32_MIN, INT32_MAX); }
static inline int64_t  dp_s64(dp_node dn)  { return dp_int_in(dn, INT64_MIN, INT64_MAX); }
static inline uint64_t dp_uint(dp_node dn) { return dp_uint_in(dn, 0, UINT64_MAX); }
static inline uint8_t  dp_u8(dp_node dn)   { return (uint8_t)dp_uint_in(dn, 0,  UINT8_MAX); }
static inline uint16_t dp_u16(dp_node dn)  { return (uint16_t)dp_uint_in(dn, 0, UINT16_MAX); }
static inline uint32_t dp_u32(dp_node dn)  { return (uint32_t)dp_uint_in(dn, 0, UINT32_MAX); }
static inline uint64_t dp_u64(dp_node dn)  { return dp_uint_in(dn, 0, UINT64_MAX); }

static inline bool dp_bool_at(dp_node dn, const char *path) {
    return dp_bool(dp_at(dn, path));
}

static inline int64_t dp_int_in_at(dp_node dn, const char *path, int64_t min, int64_t max) {
    return dp_int_in(dp_at(dn, path), min, max);
}

static inline uint64_t dp_uint_in_at(dp_node dn, const char *path, uint64_t min, uint64_t max) {
    return dp_uint_in(dp_at(dn, path), min, max);
}

static inline uint64_t dp_bits_at(dp_node dn, const char *path, unsigned bits) {
    return dp_bits(dp_at(dn, path), bits);
}

static inline double dp_float_at(dp_node dn, const char *path) {
    return dp_float(dp_at(dn, path));
}

static inline const char* dp_string_at(dp_node dn, const char *path) {
    return dp_string(dp_at(dn, path));
}

static inline dp_node dp_lookup_at(dp_node dn, const char *path, const char *type) {
    return dp_lookup(dp_at(dn, path), type);
}

static inline int64_t  dp_int_at(dp_node dn, const char *path)  { return dp_int(dp_at(dn, path));  }
static inline int8_t   dp_s8_at(dp_node dn, const char *path)   { return dp_s8(dp_at(dn, path));   }
static inline int16_t  dp_s16_at(dp_node dn, const char *path)  { return dp_s16(dp_at(dn, path));  }
static inline int32_t  dp_s32_at(dp_node dn, const char *path)  { return dp_s32(dp_at(dn, path));  }
static inline int64_t  dp_s64_at(dp_node dn, const char *path)  { return dp_s64(dp_at(dn, path));  }
static inline uint64_t dp_uint_at(dp_node dn, const char *path) { return dp_uint(dp_at(dn, path)); }
static inline uint8_t  dp_u8_at(dp_node dn, const char *path)   { return dp_u8(dp_at(dn, path));   }
static inline uint16_t dp_u16_at(dp_node dn, const char *path)  { return dp_u16(dp_at(dn, path));  }
static inline uint32_t dp_u32_at(dp_node dn, const char *path)  { return dp_u32(dp_at(dn, path));  }
static inline uint64_t dp_u64_at(dp_node dn, const char *path)  { return dp_u64(dp_at(dn, path));  }

dp_node dp_new_object(dp_file *df);
dp_node dp_new_array(dp_file *df);

void    dp_put_bool(dp_node obj, const char *key, bool v);
void    dp_put_int(dp_node obj, const char *key, int64_t v);
void    dp_put_uint(dp_node obj, const char *key, uint64_t v);
void    dp_put_float(dp_node obj, const char *key, double v);
void    dp_put_string(dp_node obj, const char *key, const char *v);
dp_node dp_put_array(dp_node obj, const char *key);
dp_node dp_put_object(dp_node obj, const char *key);

void    dp_push_bool(dp_node arr, bool v);
void    dp_push_int(dp_node arr, int64_t v);
void    dp_push_uint(dp_node arr, uint64_t v);
void    dp_push_float(dp_node arr, double v);
void    dp_push_string(dp_node arr, const char *v);
dp_node dp_push_array(dp_node arr);
dp_node dp_push_object(dp_node arr);

#ifndef __cplusplus
// Pick the dp_put_* / dp_push_* scalar function from the value's type.
//
// NOTE: In C17: true, false, comparisons, and the logical operators all have
// type int, so they write 0 or 1. To get a boolean, use dp_put_bool or
// dp_push_bool directly, or explicitly cast to bool.
#define DP__SCALAR(fn, v) _Generic((v),                                                   \
    bool:               fn##_bool,                                                        \
    char:               fn##_int,                                                         \
    signed char:        fn##_int,                                                         \
    short:              fn##_int,                                                         \
    int:                fn##_int,                                                         \
    long:               fn##_int,                                                         \
    long long:          fn##_int,                                                         \
    unsigned char:      fn##_uint,                                                        \
    unsigned short:     fn##_uint,                                                        \
    unsigned int:       fn##_uint,                                                        \
    unsigned long:      fn##_uint,                                                        \
    unsigned long long: fn##_uint,                                                        \
    float:              fn##_float,                                                       \
    double:             fn##_float,                                                       \
    char *:             fn##_string,                                                      \
    const char *:       fn##_string)

#define dp_put(obj, key, v) DP__SCALAR(dp_put, v)(obj, key, v)
#define dp_push(arr, v)     DP__SCALAR(dp_push, v)(arr, v)
#endif

#ifdef __cplusplus
}
#endif

#endif // DATAPROC_H
