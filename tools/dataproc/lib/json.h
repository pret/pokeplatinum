#ifndef DATAPROC_JSON_H
#define DATAPROC_JSON_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#include "dataproc.h"
#include "private.h"

int  json_read(datafile_t *dp);
void json_free(datafile_t *dp);

void*         json_get_root(void *ctx);
enum nodetype json_get_type(void *node);
span_t        json_get_span(void *node);

bool        json_get_bool(void *node);
int         json_get_int(void *node);
int64_t     json_get_i64(void *node);
uint64_t    json_get_u64(void *node);
double      json_get_float(void *node);
const char* json_get_string(void *node);
size_t      json_get_length(void *node);
void*       json_get_element(void *array, size_t i);
void*       json_get_member(void *object, const char *k);

#endif // DATAPROC_JSON_H
