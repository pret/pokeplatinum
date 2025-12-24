#include "interface_json.h"

#include <stddef.h>

#include "dataproc.h"
#include "dataproc_t.h" // IWYU pragma: keep
#include "yyjson.h"

void json_load(dataproc_t *data) {
    yyjson_read_err err = { 0 };
    data->doc = yyjson_read_opts((char *)data->fdata, data->fsize, 0, NULL, &err);

    if (data->doc == NULL) {
        dataproc_errfmt(data, "invalid json: %s", err.msg);
        data->err_span = (span_t){ err.pos, err.pos };
        return;
    }

    data->root = yyjson_doc_get_root(data->doc);
}

void json_free(dataproc_t *data) {
    yyjson_doc_free(data->doc);
}

span_t json_span(void *node) {
    if (node == NULL) return (span_t){ 0, 0 };

    yyjson_val *value = node;
    return (span_t){ value->beg, value->end };
}

bool json_is_bool(void *node)   { return yyjson_is_bool(node); }
bool json_is_int(void *node)    { return yyjson_is_int(node);  }
bool json_is_i64(void *node)    { return yyjson_is_sint(node); }
bool json_is_u64(void *node)    { return yyjson_is_uint(node); }
bool json_is_float(void *node)  { return yyjson_is_real(node); }
bool json_is_string(void *node) { return yyjson_is_str(node);  }
bool json_is_array(void *node)  { return yyjson_is_arr(node);  }
bool json_is_object(void *node) { return yyjson_is_obj(node);  }


bool        json_get_bool(void *node)   { return yyjson_get_bool(node); }
int         json_get_int(void *node)    { return yyjson_get_int(node);  }
int64_t     json_get_i64(void *node)    { return yyjson_get_sint(node); }
uint64_t    json_get_u64(void *node)    { return yyjson_get_uint(node); }
double      json_get_float(void *node)  { return yyjson_get_real(node); }
const char* json_get_string(void *node) { return yyjson_get_str(node);  }

size_t json_get_length(void *node) { return yyjson_get_len(node); }

void* json_get_element(void *array, size_t index)    { return yyjson_arr_get(array, index); }
void* json_get_member(void *object, const char *key) { return yyjson_obj_get(object, key);  }
