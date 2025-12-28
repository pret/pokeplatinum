#include "dataproc.h"

#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>

#include "dataproc_t.h" // IWYU pragma: keep

typedef struct errpos_t errpos_t;
struct errpos_t {
    size_t row;
    size_t col;
    size_t row_beg;
    size_t row_end;
};

static inline errpos_t find_error(dataproc_t *data) {
    size_t   cur = 0;
    errpos_t pos = {
        .row     = 1,
        .col     = 1,
        .row_beg = 0,
        .row_end = 0,
    };

    if (data->err_span.beg >= data->fsize)        return pos;
    if (data->err_span.end >= data->fsize)        return pos;
    if (data->err_span.beg >  data->err_span.end) return pos;

    while (cur < data->err_span.beg) {
        if (data->fdata[cur] == '\n') {
            pos.row_beg = cur + 1;
            pos.row_end = cur;
            pos.col     = 0;
            pos.row++;
        }

        pos.col++;
        cur++;
    }

    for (
        pos.row_end = cur;
        pos.row_end < data->fsize && data->fdata[pos.row_end] != '\n';
        pos.row_end++
    );

    return pos;
}

bool dataproc_iserror(dataproc_t *data) { return data->is_err; }
bool dataproc_anyerror(dataproc_t *data) { return data->any_err; }

void dataproc_errspan(dataproc_t *data, void *value) {
    data->err_span = data->interface->span(value);
}

__attribute__((format(printf, 2, 3)))
int dataproc_errfmt(dataproc_t *data, const char *fmt, ...) {
    va_list args;
    va_start(args, fmt);

    int result    = vsnprintf(data->err_msg, 1024, fmt, args);
    data->any_err = true;
    data->is_err  = true;

    va_end(args);
    return result;
}

#define HIGHLIGHT0(style)     hi_##style, hi_reset
#define HIGHLIGHT(style, ...) hi_##style, __VA_ARGS__, hi_reset

void dataproc_perror(dataproc_t *data) {
    if (data->is_err && data->report) {
        errpos_t    errpos   = find_error(data);

        const char *hi_error = "\033[1;31m";
        const char *hi_bold  = "\033[1;37m";
        const char *hi_reset = "\033[0m";
        const char *no_color = getenv("NO_COLOR");
        if (no_color != NULL && no_color[0] != '\0') {
            hi_error = "";
            hi_bold  = "";
            hi_reset = "";
        }

        // TODO: NO_COLOR support
        fprintf(stderr, "%s%s:%zu:%zu:%s ", HIGHLIGHT(bold, data->fname, errpos.row, errpos.col));
        fprintf(stderr, "%serror:%s ",      HIGHLIGHT0(error));
        fprintf(stderr, "%s\n",             data->err_msg);

        int beg_to_err = data->err_span.beg - errpos.row_beg;
        int err_to_end = errpos.row_end - data->err_span.end;
        int err_to_err = err_to_end >= 0
                       ? data->err_span.end - data->err_span.beg  // value is all on one line
                       : errpos.row_end - data->err_span.beg - 1; // value spans multiple lines

        fprintf(stderr, " %4zu | ", errpos.row);
        fprintf(stderr, "%.*s", beg_to_err, data->fdata + errpos.row_beg);
        fprintf(stderr, "%s%.*s%s", HIGHLIGHT(error, err_to_err + 1, data->fdata + data->err_span.beg));

        if (err_to_end >= 0) {
            fprintf(stderr, "%.*s\n", err_to_end - 1, data->fdata + data->err_span.end + 1);
        }
        else {
            fputc('\n', stderr);
        }

        fprintf(stderr, "      | %*s", beg_to_err, "");
        fprintf(stderr, "%s^", hi_error);
        for (int i = 0; i < err_to_err - 1; i++) fputc('~', stderr);
        if (err_to_err > 0) fputc('^', stderr);
        fprintf(stderr, "%s\n", hi_reset);

        data->err_span = (span_t){ 0 };
        data->is_err   = false;
    }
}
