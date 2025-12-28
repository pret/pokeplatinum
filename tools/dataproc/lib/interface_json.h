#ifndef DATAPROC_JSON_H
#define DATAPROC_JSON_H

#include <stddef.h>
#include <stdint.h>

#include "dataproc.h"
#include "dataproc_t.h" // IWYU pragma: keep

void   json_load(dataproc_t *data);
void   json_free(dataproc_t *data);
span_t json_span(void *node);

bool json_is_bool(void *node);
bool json_is_int(void *node);
bool json_is_i64(void *node);
bool json_is_u64(void *node);
bool json_is_float(void *node);
bool json_is_string(void *node);
bool json_is_array(void *node);
bool json_is_object(void *node);

bool        json_get_bool(void *node);
int         json_get_int(void *node);
int64_t     json_get_i64(void *node);
uint64_t    json_get_u64(void *node);
double      json_get_float(void *node);
const char* json_get_string(void *node);

size_t json_get_length(void *node);

void* json_get_element(void *array, size_t index);
void* json_get_member(void *object, const char *key);

#endif // DATAPROC_JSON_H
