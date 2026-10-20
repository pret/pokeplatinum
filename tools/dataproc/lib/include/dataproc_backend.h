#ifndef DATAPROC_BACKEND_H
#define DATAPROC_BACKEND_H

#include <stddef.h>
#include <stdint.h>

#include "dataproc.h"

typedef struct dp_span dp_span;
struct dp_span {
    size_t beg;
    size_t end;
};

struct dp_reader {
    const char    *name;
    void        *(*parse)(dp_file *f, const char *src, size_t len);
    void         (*free)(void *doc);
    void        *(*root)(void *doc);
    enum dp_type (*type)(void *val);
    dp_span      (*span)(void *val);
    bool         (*get_bool)(void *val);
    bool         (*get_int)(void *val, int64_t *out);   // returns false with *out == 0 if the value does not fit in int64_t
    bool         (*get_uint)(void *val, uint64_t *out); // returns false with *out == 0 if the value is negative
    double       (*get_float)(void *val);
    const char  *(*get_string)(void *val);
    size_t       (*arr_len)(void *val);
    void        *(*arr_at)(void *val, size_t i);
    void        *(*obj_at)(void *val, const char *key);
};

struct dp_writer {
    const char    *name;
    void        *(*create)(void);
    void         (*free)(void *doc);
    char        *(*dump)(dp_file *f, void *doc);
    void        *(*new_array)(void *doc);
    void        *(*new_object)(void *doc);
    bool         (*push_bool)(void *doc, void *arr, bool v);
    bool         (*push_int)(void *doc, void *arr, int64_t v);
    bool         (*push_uint)(void *doc, void *arr, uint64_t v);
    bool         (*push_float)(void *doc, void *arr, double v);
    bool         (*push_string)(void *doc, void *arr, const char *v);
    void        *(*push_array)(void *doc, void *arr);
    void        *(*push_object)(void *doc, void *arr);
    bool         (*put_bool)(void *doc, void *obj, const char *key, bool v);
    bool         (*put_int)(void *doc, void *obj, const char *key, int64_t v);
    bool         (*put_uint)(void *doc, void *obj, const char *key, uint64_t v);
    bool         (*put_float)(void *doc, void *obj, const char *key, double v);
    bool         (*put_string)(void *doc, void *obj, const char *key, const char *v);
    void        *(*put_array)(void *doc, void *obj, const char *key);
    void        *(*put_object)(void *doc, void *obj, const char *key);
};

#endif // DATAPROC_BACKEND_H
