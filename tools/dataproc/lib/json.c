#include "json.h"

#include <assert.h>
#include <stdlib.h>

#include "dataproc.h"
#include "private.h"
#include "yyjson.h"

typedef struct yyjson_ctx yyjson_ctx_t;
struct yyjson_ctx {
    yyjson_doc *doc;
    yyjson_val *root;
};

int json_read(datafile_t *df) {
    assert(df && "df pointer must not be NULL");
    assert(df->source && "df must have loaded a source-file");

    yyjson_read_err yyjerr = { 0 };
    yyjson_ctx_t   *yyjctx = malloc(sizeof(*yyjctx));
    if (yyjctx == NULL) return DATAPROC_E_ALLOC;

    yyjctx->doc = yyjson_read_opts((char *)df->source, df->size, 0, NULL, &yyjerr);
    if (yyjctx->doc == NULL) {
        dp_gerror(df, yyjerr.pos, yyjerr.pos + 1, "JSON parse error: %s", yyjerr.msg);
        free(yyjctx);
        return DATAPROC_E_BACKEND;
    }

    yyjctx->root = yyjson_doc_get_root(yyjctx->doc);
    df->ctx      = yyjctx;
    return DATAPROC_E_NONE;
}

void json_free(datafile_t *df) {
    assert(df && "df pointer must not be NULL");

    yyjson_ctx_t *yyjctx = df->ctx;
    if (yyjctx != NULL) {
        yyjson_doc_free(yyjctx->doc);
        free(yyjctx);
    }

    df->ctx = NULL;
}

void* json_get_root(void *ctx) {
    assert(ctx && "ctx pointer must not be NULL");

    yyjson_ctx_t *yyjctx = ctx;
    return yyjctx->root;
}

enum nodetype json_get_type(void *_node) {
    yyjson_val *node = _node;
    switch (yyjson_get_type(node)) {
    default: return DATAPROC_T_NONE;

    case YYJSON_TYPE_RAW:  return DATAPROC_T_STRING;
    case YYJSON_TYPE_NULL: return DATAPROC_T_NULL;
    case YYJSON_TYPE_BOOL: return DATAPROC_T_BOOLEAN;
    case YYJSON_TYPE_STR:  return DATAPROC_T_STRING;
    case YYJSON_TYPE_ARR:  return DATAPROC_T_ARRAY;
    case YYJSON_TYPE_OBJ:  return DATAPROC_T_OBJECT;

    case YYJSON_TYPE_NUM:
        return yyjson_get_subtype(node) == YYJSON_SUBTYPE_REAL
            ? DATAPROC_T_FLOAT
            : DATAPROC_T_INT;
    }
}

span_t json_get_span(void *_node) {
    yyjson_val *node = _node;
    return (span_t){ .beg = node->beg, .end = node->end };
}

bool json_get_bool(void *node) {
    return yyjson_get_bool(node);
}

int json_get_int(void *node) {
    return yyjson_get_int(node);
}

int64_t json_get_i64(void *node) {
    return yyjson_get_sint(node);
}

uint64_t json_get_u64(void *node) {
    return yyjson_get_uint(node);
}

double json_get_float(void *node) {
    return yyjson_get_real(node);
}

const char* json_get_string(void *node) {
    return yyjson_get_str(node);
}

size_t json_get_length(void *node) {
    return yyjson_get_len(node);
}

void* json_get_element(void *array, size_t i) {
    return yyjson_arr_get(array, i);
}

void* json_get_member(void *object, const char *k) {
    return yyjson_obj_get(object, k);
}
