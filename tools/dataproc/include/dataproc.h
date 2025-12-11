#ifndef DATAPROC_H
#define DATAPROC_H

#include <stdbool.h>
#include <stddef.h>

typedef struct dataproc_t dataproc_t;

typedef struct span_t span_t;
struct span_t {
    size_t beg;
    size_t end;
};

/**
 * Load a data file for processing. The exact implementation to be used is
 * determined by the extension of the filename. If the extension is not
 * recognized, then the structure will be flagged as erroneous.
 *
 * If `report` is provided as `true`, then accessor routines should attempt to
 * write any field-level error message to the console before returning.
 */
dataproc_t* dataproc_load(const char *fname, bool report);

/**
 * Free an allocated processing structure.
 */
void dataproc_free(dataproc_t *root);

/**
 * Check if the data processing structure contains an error.
 */
bool dataproc_iserror(dataproc_t *data);

/**
 * Check if the data processing structure has ever produced an error.
 */
bool dataproc_anyerror(dataproc_t *data);

/**
 * Set the error-span for the processing structure to the location of a given
 * node.
 */
void dataproc_errspan(dataproc_t *data, void *value);

/**
 * Provide a formatted field-level error message. The same rules as `printf`,
 * etc. apply.
 */
__attribute__((format(printf, 2, 3)))
int dataproc_errfmt(dataproc_t *data, const char *fmt, ...);

/**
 * Print the field-level error message, if any, and flag the structure as no
 * longer erroneous.
 */
void dataproc_perror(dataproc_t *data);

/**
 * Get an arbitrary node from the loaded data structure.
 */
void* dataproc_get(dataproc_t *data, const char *path);

#endif // DATAPROC_H
