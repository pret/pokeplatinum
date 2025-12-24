#include "dataproc.h"

#include <assert.h>
#include <libgen.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "dataproc_t.h"
#include "interface_json.h"

typedef struct regentry_t regentry_t;
struct regentry_t {
    const char *extension;
    interface_t interface;
};

static const regentry_t registry[] = {
    {
        "json", {
            .load = json_load,
            .free = json_free,
            .span = json_span,

            .is_bool   = json_is_bool,
            .is_int    = json_is_int,
            .is_i64    = json_is_i64,
            .is_u64    = json_is_u64,
            .is_float  = json_is_float,
            .is_string = json_is_string,
            .is_array  = json_is_array,
            .is_object = json_is_object,

            .get_bool   = json_get_bool,
            .get_int    = json_get_int,
            .get_i64    = json_get_i64,
            .get_u64    = json_get_u64,
            .get_float  = json_get_float,
            .get_string = json_get_string,

            .get_length  = json_get_length,
            .get_element = json_get_element,
            .get_member  = json_get_member,
        }
    },

    { 0 }, // WARN: MUST BE LAST
};

static void slurp(dataproc_t *dp, const char *fname) {
    FILE *f = NULL;
    if ((f = fopen(fname, "rb")) == NULL) goto cleanup;

    fseek(f, 0, SEEK_END);
    if ((dp->fsize = ftell(f)) <= 0) goto cleanup;
    if ((dp->fdata = malloc(dp->fsize + 1)) == NULL) goto cleanup;

    fseek(f, 0, SEEK_SET);
    fread((char *)dp->fdata, sizeof(char), dp->fsize, f);

cleanup:
    if (f) fclose(f);
}

static const interface_t* find_registered(const char *fname) {
    const char *p_dot = strrchr(fname, '.');
    if (!p_dot) return NULL;

    const interface_t *result = NULL;
    const regentry_t  *entry  = NULL;

    for (entry = &registry[0]; entry->extension != NULL; entry++) {
        if (strcmp(entry->extension, p_dot + 1) == 0) {
            result = &entry->interface;
            break;
        }
    }

    return result;
}

dataproc_t* dataproc_load(const char *fname, bool report) {
    dataproc_t *data = calloc(1, sizeof(*data));
    data->err_msg    = calloc(1024, sizeof(*data->err_msg));
    data->fname      = fname;
    data->report     = report;
    data->interface  = find_registered(fname);

    if (data->interface == NULL) {
        dataproc_errfmt(data, "could not load interface for file '%s'", fname);
        return data;
    }

    slurp(data, fname);
    if (data->fdata == NULL) {
        dataproc_errfmt(data, "could not read input file '%s'", fname);
        return data;
    }

    data->cont_err = true;
    data->interface->load(data);
    return data;
}

void dataproc_free(dataproc_t *data) {
    data->interface->free(data);

    free((char *)data->fdata);
    free(data->err_msg);
    free(data);
}

static size_t keycpy(char *dst, const char *src, char terminator) {
    size_t len = 1;
    while (src[len] && src[len] != terminator && src[len] != '[') len++;
    len -= 1;

    memcpy(dst, src + 1, len);
    dst[len] = 0;

    return len;
}

void* dataproc_get(dataproc_t *data, const char *path) {
    const interface_t *itf    = data->interface;
    const char        *p      = path;
    char               k[256] = { 0 };

    if (p[0] == '$') p++;

    void *node = data->root;
    void *next = NULL;
    while (p[0]) {
        if (p[0] == '.') {
            assert(itf->is_object(node));
            if (!itf->is_object(node)) {
                dataproc_errfmt(data, "expected '%.*s' to be an object", (int)(p - path), path);
                return node;
            }

            size_t len = keycpy(k, p, '.');

            next = itf->get_member(node, k);
            if (next == NULL) {
                dataproc_errfmt(data, "expected object at '%.*s' to have member '%s'", (int)(p - path), path, k);
                return node;
            }

            node = next;
            p   += 1 + len;
        }
        else if (p[0] == '[' && p[1] == '\'') {
            assert(itf->is_object(node));
            if (!itf->is_object(node)) {
                dataproc_errfmt(data, "expected '%.*s' to be an object", (int)(p - path), path);
                return node;
            }

            size_t len = keycpy(k, p + 1, '\'');

            next = itf->get_member(node, k);
            if (next == NULL) {
                dataproc_errfmt(data, "expected object at '%.*s' to have member '%s'", (int)(p - path), path, k);
                return node;
            }

            node = next;
            p   += 2 + len;

            assert(p[0] == '\'');
            assert(p[1] == ']');
            if (p[0] != '\'' || p[1] != ']') {
                dataproc_errfmt(data, "unterminated object-accessor: '%s'", path);
                data->cont_err = false;
                return NULL;
            }

            p += 2;
        }
        else if (p[0] == '[' && p[1] >= '0' && p[1] <= '9') {
            assert(itf->is_array(node));
            if (!itf->is_array(node)) {
                dataproc_errfmt(data, "expected '%.*s' to be an array", (int)(p - path), path);
                return node;
            }

            size_t idx = 0, i;
            for (i = 1; p[i] >= '0' && p[i] <= '9'; i++) {
                idx *= 10;
                idx += p[i] - '0';
            }

            next = itf->get_element(node, idx);
            if (next == NULL) {
                dataproc_errfmt(data, "expected array at '%.*s' to have index '%ld'", (int)(p - path), path, idx);
                return node;
            }

            node = next;
            p   += i;

            assert(p[0] == ']');
            if (p[0] != ']') {
                dataproc_errfmt(data, "unterminated array-accessor: '%s'", path);
                data->cont_err = false;
                return NULL;
            }

            p += 1;
        }
        else {
            dataproc_errfmt(data, "invalid path syntax: '%s'", path);
            data->cont_err = false;
            return NULL;
        }
    }

    return node;
}
