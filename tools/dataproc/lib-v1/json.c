#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>

#include "dataproc.h"
#include "dataproc_backend.h"
#include "yyjson.h"

typedef struct yyjson_ctx yyjson_ctx_t;
struct yyjson_ctx {
    yyjson_doc *doc;
    yyjson_val *root;
};

typedef struct yyjson_mutctx yyjson_mutctx_t;
struct yyjson_mutctx {
    yyjson_mut_doc *doc;
    yyjson_mut_val *root;
};

static void* json_read(dp_file *f, const char *src, size_t len) {
    assert(f && "df pointer must not be NULL");
    assert(src && "source-file must be loaded");

    yyjson_read_err yyjerr = { 0 };
    yyjson_ctx_t   *yyjctx = malloc(sizeof(*yyjctx));
    if (yyjctx == NULL) return NULL;

    yyjctx->doc = yyjson_read_opts((char *)src, len, 0, NULL, &yyjerr);
    if (yyjctx->doc == NULL) {
        size_t end = len ? yyjerr.pos + 1 : 0; // no source to preview in an empty file
        dp_file_error_span(f, (dp_span){ .beg = yyjerr.pos, .end = end }, "JSON parse error: %s", yyjerr.msg);
        free(yyjctx);
        return NULL;
    }

    yyjctx->root = yyjson_doc_get_root(yyjctx->doc);
    return yyjctx;
}

static void json_rfree(void *doc) {
    assert(doc && "doc pointer must not be NULL");

    yyjson_ctx_t *yyjctx = doc;
    if (yyjctx != NULL) yyjson_doc_free(yyjctx->doc);

    free(yyjctx);
}

static void json_wfree(void *doc) {
    assert(doc && "doc pointer must not be NULL");

    yyjson_ctx_t *yyjctx = doc;
    if (yyjctx != NULL) yyjson_mut_doc_free(((yyjson_mutctx_t *)doc)->doc);

    free(yyjctx);
}

static void* json_get_root(void *ctx) {
    assert(ctx && "ctx pointer must not be NULL");

    yyjson_ctx_t *yyjctx = ctx;
    return yyjctx->root;
}

static enum dp_type json_get_type(void *_node) {
    yyjson_val *node = _node;
    switch (yyjson_get_type(node)) {
    default: return DP_ERROR;

    case YYJSON_TYPE_RAW:  return DP_STRING;
    case YYJSON_TYPE_NULL: return DP_NULL;
    case YYJSON_TYPE_BOOL: return DP_BOOL;
    case YYJSON_TYPE_STR:  return DP_STRING;
    case YYJSON_TYPE_ARR:  return DP_ARRAY;
    case YYJSON_TYPE_OBJ:  return DP_OBJECT;

    case YYJSON_TYPE_NUM:
        return yyjson_get_subtype(node) == YYJSON_SUBTYPE_REAL
            ? DP_FLOAT
            : DP_INT;
    }
}

static dp_span json_get_span(void *_node) {
    yyjson_val *node = _node;
    return (dp_span){ .beg = node->beg, .end = node->end };
}

static bool json_get_bool(void *node) {
    return yyjson_get_bool(node);
}

static bool json_get_i64(void *node, int64_t *out) {
    if (yyjson_is_uint(node) && yyjson_get_uint(node) > INT64_MAX) {
        *out = 0;
        return false;
    }

    *out = yyjson_get_sint(node);
    return true;
}

static bool json_get_u64(void *node, uint64_t *out) {
    if (yyjson_is_sint(node) && yyjson_get_sint(node) < 0) {
        *out = 0;
        return false;
    }

    *out = yyjson_get_uint(node);
    return true;
}

static double json_get_float(void *node) {
    return yyjson_get_real(node);
}

static const char* json_get_string(void *node) {
    return yyjson_get_str(node);
}

static size_t json_get_length(void *node) {
    return yyjson_get_len(node);
}

static void* json_get_element(void *array, size_t i) {
    return yyjson_arr_get(array, i);
}

static void* json_get_member(void *object, const char *k) {
    return yyjson_obj_get(object, k);
}

static void* json_new(void) {
    yyjson_mutctx_t *yyjctx = malloc(sizeof(*yyjctx));
    if (yyjctx == NULL) return NULL;

    yyjctx->doc  = yyjson_mut_doc_new(NULL);
    yyjctx->root = NULL;
    if (yyjctx->doc == NULL) return NULL;

    return yyjctx;
}

static char* json_dump(dp_file *df, void *doc) {
    assert(doc && "doc pointer must not be NULL");

    size_t           size   = 0;
    yyjson_mutctx_t *yyjctx = doc;
    yyjson_write_err yyjerr;

    char *result = yyjson_mut_write_opts(yyjctx->doc, YYJSON_WRITE_PRETTY_TWO_SPACES, NULL, &size, &yyjerr);
    if (yyjerr.code) {
        dp_file_error(df, "JSON dump error: %s", yyjerr.msg);
        return NULL;
    }

    return result;
}

static void* json_arr_new(void *ctx) {
    assert(ctx && "ctx pointer must not be NULL");

    yyjson_mutctx_t *yyjctx = ctx;
    yyjctx->root = yyjson_mut_arr(yyjctx->doc);
    yyjson_mut_doc_set_root(yyjctx->doc, yyjctx->root);
    return yyjctx->root;
}

static bool json_arr_appbool(void *ctx, void *node, bool v) {
    yyjson_mutctx_t *yyjctx = ctx;
    return yyjson_mut_arr_add_bool(yyjctx->doc, node, v);
}

static bool json_arr_appint(void *ctx, void *node, int64_t v) {
    yyjson_mutctx_t *yyjctx = ctx;
    return yyjson_mut_arr_add_int(yyjctx->doc, node, v);
}

static bool json_arr_appuint(void *ctx, void *node, uint64_t v) {
    yyjson_mutctx_t *yyjctx = ctx;
    return yyjson_mut_arr_add_uint(yyjctx->doc, node, v);
}

static bool json_arr_appfloat(void *ctx, void *node, double v) {
    yyjson_mutctx_t *yyjctx = ctx;
    return yyjson_mut_arr_add_real(yyjctx->doc, node, v);
}

static bool json_arr_appstring(void *ctx, void *node, const char *v) {
    yyjson_mutctx_t *yyjctx = ctx;
    return yyjson_mut_arr_add_strcpy(yyjctx->doc, node, v);
}

static void* json_arr_apparray(void *ctx, void *node) {
    yyjson_mutctx_t *yyjctx = ctx;
    return yyjson_mut_arr_add_arr(yyjctx->doc, node);
}

static void* json_arr_appobject(void *ctx, void *node) {
    yyjson_mutctx_t *yyjctx = ctx;
    return yyjson_mut_arr_add_obj(yyjctx->doc, node);
}

static void* json_obj_new(void *ctx) {
    assert(ctx && "ctx pointer must not be NULL");

    yyjson_mutctx_t *yyjctx = ctx;
    yyjctx->root = yyjson_mut_obj(yyjctx->doc);
    yyjson_mut_doc_set_root(yyjctx->doc, yyjctx->root);
    return yyjctx->root;
}

static bool json_obj_putbool(void *ctx, void *node, const char *k, bool v) {
    yyjson_mutctx_t *yyjctx = ctx;
    return yyjson_mut_obj_add_bool(yyjctx->doc, node, k, v);
}

static bool json_obj_putint(void *ctx, void *node, const char *k, int64_t v) {
    yyjson_mutctx_t *yyjctx = ctx;
    return yyjson_mut_obj_add_int(yyjctx->doc, node, k, v);
}

static bool json_obj_putuint(void *ctx, void *node, const char *k, uint64_t v) {
    yyjson_mutctx_t *yyjctx = ctx;
    return yyjson_mut_obj_add_uint(yyjctx->doc, node, k, v);
}

static bool json_obj_putfloat(void *ctx, void *node, const char *k, double v) {
    yyjson_mutctx_t *yyjctx = ctx;
    return yyjson_mut_obj_add_real(yyjctx->doc, node, k, v);
}

static bool json_obj_putstring(void *ctx, void *node, const char *k, const char *v) {
    yyjson_mutctx_t *yyjctx = ctx;
    return yyjson_mut_obj_add_strcpy(yyjctx->doc, node, k, v);
}

static void* json_obj_putarray(void *ctx, void *node, const char *k) {
    yyjson_mutctx_t *yyjctx = ctx;
    return yyjson_mut_obj_add_arr(yyjctx->doc, node, k);
}

static void* json_obj_putobject(void *ctx, void *node, const char *k) {
    yyjson_mutctx_t *yyjctx = ctx;
    return yyjson_mut_obj_add_obj(yyjctx->doc, node, k);
}

const dp_reader dp_json_reader = {
    .name       = "json",
    .parse      = json_read,
    .free       = json_rfree,
    .root       = json_get_root,
    .type       = json_get_type,
    .span       = json_get_span,
    .get_bool   = json_get_bool,
    .get_int    = json_get_i64,
    .get_uint   = json_get_u64,
    .get_float  = json_get_float,
    .get_string = json_get_string,
    .arr_len    = json_get_length,
    .arr_at     = json_get_element,
    .obj_at     = json_get_member,
};

const dp_writer dp_json_writer = {
    .name        = "json",
    .create      = json_new,
    .free        = json_wfree,
    .dump        = json_dump,
    .new_array   = json_arr_new,
    .new_object  = json_obj_new,
    .push_bool   = json_arr_appbool,
    .push_int    = json_arr_appint,
    .push_uint   = json_arr_appuint,
    .push_float  = json_arr_appfloat,
    .push_string = json_arr_appstring,
    .push_array  = json_arr_apparray,
    .push_object = json_arr_appobject,
    .put_bool    = json_obj_putbool,
    .put_int     = json_obj_putint,
    .put_uint    = json_obj_putuint,
    .put_float   = json_obj_putfloat,
    .put_string  = json_obj_putstring,
    .put_array   = json_obj_putarray,
    .put_object  = json_obj_putobject,
};
