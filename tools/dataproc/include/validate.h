#ifndef DATAPROC_VALIDATE_H
#define DATAPROC_VALIDATE_H

#include <stdbool.h>
#include <stddef.h>

#include "dataproc.h"

typedef struct enumkey_t enumkey_t;
struct enumkey_t {
    long        v;
    const char *k;
};

typedef struct enum_t enum_t;
struct enum_t {
    const char *name;
    size_t      size;
    enumkey_t  *table;
};

bool  get_bool(dataproc_t *data, const char *path);
long  get_u8(dataproc_t *data, const char *path);
long  get_bitfield(dataproc_t *data, const char *path, int nbits);
long  get_enumkey(dataproc_t *data, const char *path, const enum_t *lookup);

void*  get_array(dataproc_t *data, const char *path);
size_t get_array_size(dataproc_t *data, void *array);
void*  get_array_element(dataproc_t *data, void *array, size_t i);

void*  get_object_member(dataproc_t *data, void *object, const char *key);

bool          take_bool(dataproc_t *data, void *value);
unsigned long take_u64(dataproc_t *data, void *value);
const char*   take_string(dataproc_t *data, void *value);
void*         take_object(dataproc_t *data, void *value);

#endif // DATAPROC_VALIDATE_H
