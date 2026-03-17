#ifndef DATAPROC_PRIVATE_H
#define DATAPROC_PRIVATE_H

#include <stddef.h>

#include "dataproc.h"

typedef struct span span_t;
struct span {
    size_t beg;
    size_t end;
};

struct diagnostic {
    span_t      span;
    const char *message;

    enum diaglevel level;
    diagnostic_t  *prev;
    diagnostic_t  *next;
};

__attribute__((format(printf, 4, 5)))
void dp_gerror(datafile_t *df, size_t beg, size_t end, const char *errfmt, ...);

#endif // DATAPROC_PRIVATE_H
