#ifndef DATAPROC_T_H
#define DATAPROC_T_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#include "dataproc.h"

typedef struct interface_t interface_t;
struct interface_t {
    void (*load)(dataproc_t *data);
    void (*free)(dataproc_t *data);

    span_t (*span)(void *node);

    bool        (*get_bool)(void *node);
    int         (*get_int)(void *node);
    int64_t     (*get_i64)(void *node);
    uint64_t    (*get_u64)(void *node);
    double      (*get_float)(void *node);
    const char* (*get_string)(void *node);

    size_t (*get_length)(void *node);
    void*  (*get_element)(void *array, size_t index);
    void*  (*get_member)(void *object, const char *key);

    bool (*is_bool)(void *node);
    bool (*is_int)(void *node);
    bool (*is_i64)(void *node);
    bool (*is_u64)(void *node);
    bool (*is_float)(void *node);
    bool (*is_string)(void *node);
    bool (*is_array)(void *node);
    bool (*is_object)(void *node);
};

struct dataproc_t {
    const char *fname;
    const char *fdata;
    size_t      fsize;

    void *doc;
    void *root;

    char   *err_msg;
    span_t  err_span;

    int   any_err  : 1; // has ever errored?
    int   is_err   : 1; // is currently errored?
    int   cont_err : 1; // is error with data content?
    int   report   : 1;

    const interface_t *interface;
};

#endif // DATAPROC_T_H
