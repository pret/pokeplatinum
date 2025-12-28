#include "validate.h"

#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#include "dataproc.h"
#include "dataproc_t.h"

#define perror()                                      \
    do {                                              \
        data->err_span = data->interface->span(node); \
        dataproc_perror(data);                        \
    } while (0)

#define errfmt(fmt, ...)                              \
    do {                                              \
        dataproc_errfmt(data, fmt, __VA_ARGS__);      \
        perror();                                     \
    } while (0)

bool get_bool(dataproc_t *data, const char *path) {
    void *node = dataproc_get(data, path);

    if (data->is_err) {
        perror();
        return 0;
    }

    if (!data->interface->is_bool(node)) {
        errfmt("expected '%s' to be 'true' or 'false'", path);
        return 0;
    }

    return data->interface->get_bool(node);
}

static long get_int_in_range(dataproc_t *data, const char *path, long min, long max) {
    void *node = dataproc_get(data, path);

    if (data->is_err) {
        perror();
        return 0;
    }

    if (!data->interface->is_int(node)) {
        errfmt("expected '%s' to be an integer", path);
        return 0;
    }

    int val = data->interface->get_int(node);
    if (val < min || val > max) {
        errfmt("expected '%s' to be an integer in the range [%ld,%ld]", path, min, max);
        return 0;
    }

    return val;
}

long get_u8(dataproc_t *data, const char *path) {
    return get_int_in_range(data, path, 0, UINT8_MAX);
}

long get_bitfield(dataproc_t *data, const char *path, int nbits) {
    return get_int_in_range(data, path, 0, (1 << nbits) - 1);
}

static int compare_enumkey_t(const void *k, const void *a_memb) {
    const char      *key  = k;
    const enumkey_t *memb = a_memb;

    return strcmp(key, memb->k);
}

long get_enumkey(dataproc_t *data, const char *path, const enum_t *lookup) {
    void *node = dataproc_get(data, path);

    if (data->is_err) {
        perror();
        return 0;
    }

    if (!data->interface->is_string(node)) {
        errfmt("expected '%s' to be an enum-key", path);
        return 0;
    }

    const char      *key   = data->interface->get_string(node);
    const enumkey_t *match = bsearch(key, lookup->table, lookup->size, sizeof(enumkey_t), compare_enumkey_t);
    if (match == NULL) {
        errfmt("expected '%s' to be an enum-key for '%s'", path, lookup->name);
        return 0;
    }

    return match->v;
}

void* get_array(dataproc_t *data, const char *path) {
    void *node = dataproc_get(data, path);

    if (data->is_err) {
        perror();
        return NULL;
    }

    if (!data->interface->is_array(node)) {
        errfmt("expected '%s' to be an array", path);
        return NULL;
    }

    return node;
}

size_t get_array_size(dataproc_t *data, void *array) {
    if (data->is_err) return 0;
    if (!data->interface->is_array(array)) {
        data->is_err   = true;
        data->err_span = data->interface->span(array);
        return 0;
    }

    return data->interface->get_length(array);
}

void* get_array_element(dataproc_t *data, void *array, size_t i) {
    if (data->is_err) return NULL;
    if (!data->interface->is_array(array)) {
        data->is_err   = true;
        data->err_span = data->interface->span(array);
        return NULL;
    }

    return data->interface->get_element(array, i);
}

void*  get_object_member(dataproc_t *data, void *object, const char *key) {
    if (data->is_err) return NULL;
    if (!data->interface->is_object(object)) {
        data->is_err   = true;
        data->err_span = data->interface->span(object);
        return NULL;
    }

    return data->interface->get_member(object, key);
}

bool take_bool(dataproc_t *data, void *value) {
    if (data->is_err) return false;
    if (!data->interface->is_bool(value)) {
        data->is_err   = true;
        data->err_span = data->interface->span(value);
        return false;
    }

    return data->interface->get_bool(value);
}

unsigned long take_u64(dataproc_t *data, void *value) {
    if (data->is_err) return false;
    if (!data->interface->is_u64(value)) {
        data->is_err   = true;
        data->err_span = data->interface->span(value);
        return false;
    }

    return data->interface->get_u64(value);
}

const char* take_string(dataproc_t *data, void *value) {
    if (data->is_err) return NULL;
    if (!data->interface->is_string(value)) {
        data->is_err   = true;
        data->err_span = data->interface->span(value);
        return NULL;
    }

    return data->interface->get_string(value);
}

void* take_object(dataproc_t *data, void *value) {
    if (data->is_err) return NULL;
    if (!data->interface->is_object(value)) {
        data->is_err   = true;
        data->err_span = data->interface->span(value);
        return NULL;
    }

    return value;
}
