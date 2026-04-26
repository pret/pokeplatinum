#ifndef DATAPROC_COMMON_H
#define DATAPROC_COMMON_H

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>

#include "dataproc.h"
#include "nitroarc.h"

#define countof(_a) (sizeof(_a)/sizeof(*(_a)))

#define POKEPLATINUM_GENERATED_ENUM
#define POKEPLATINUM_GENERATED_LOOKUP
#define POKEPLATINUM_GENERATED_LOOKUP_IMPL

#define ALIGN_4 __attribute__((aligned(4)))

#define dp_regmetang(type) dp_register((lookup_t *)lookup__##type, lengthof__##type, #type)

typedef int8_t   s8;
typedef int16_t  s16;
typedef int32_t  s32;
typedef uint8_t  u8;
typedef uint16_t u16;
typedef uint32_t u32;

#define BOOL  bool
#define TRUE  true
#define FALSE false

#define maxbit(bits)           ((1 << bits) - 1)
#define boolean(path)          (dp_bool(dp_get(df, path)))
#define u8(path)               (dp_u8(dp_get(df, path)))
#define u16(path)              (dp_u16(dp_get(df, path)))
#define s8(path)               (dp_s8(dp_get(df, path)))
#define u8_maxbits(path, bits) (u8)(dp_u8range(dp_get(df, path), 0, maxbit(bits)) & maxbit(bits))
#define enum_u8(path, type)    (dp_u8(dp_lookup(dp_get(df, path), #type)))
#define enum_u16(path, type)   (dp_u16(dp_lookup(dp_get(df, path), #type)))
#define string(path)           (dp_string(dp_get(df, path)))

// Template-struct for an enum-based lookup-table to be used for type-checking
// string identifiers. Provide the base filename and the type-name that should
// be used for reporting errors. Optionally, provide a prefix to filter the
// values that are loaded from the input file.
//
// When `from_defs` is set to `true`, the lookup-table will be generated from
// `#define`d constants rather than `enum` members.
typedef struct enum_template enum_template_t;
struct enum_template {
    const char *from_file;
    const char *with_prefix;
    const char *for_type;

    bool from_defs;
};

// Template-struct for an archive to be written. Specify the output filename
// and the expected number of files, as well as if you want a named or stripped
// archive.
typedef struct archive_template archive_template_t;
struct archive_template {
    nitroarc_packer_t packer;

    const char *out_filename;
    uint16_t    num_files;
    unsigned    named;
    unsigned    stripped;
};

// Template-struct for a header file to be written. Specify the output filename
// and an optional header and footer for the content.
typedef struct header_template header_template_t;
struct header_template {
    const char *out_filename;
    FILE       *out_file;
    char       *header;
    char       *footer;
};

// Template-struct for an output text bank to be written. Specify the output
// filename.
typedef struct textbank_template textbank_template_t;
struct textbank_template {
    int         key;
    const char *out_filename;
    FILE       *out_file;
    datafile_t  df;
    datanode_t  root;
};

// Common initialization routine. Instantiate requested lookup-tables and
// prepare requested outputs. Output header-files will also search the data
// directory for a file with ".template" suffixed to the output's basename.
//
// `pre_init_hook`, when provided, will be called after the base library is
// initialized, but before any requests are fulfilled.
//
// `post_init_hook`, when provided, will be called as the function exits, after
// all requests have been fulfilled.
void common_init(
    enum format          format,
    enum_template_t     *lookups,
    archive_template_t  *archives,
    header_template_t   *headers,
    textbank_template_t *textbanks,
    const char          *source_name,
    const char          *depfile_name,
    const char          *output_dir,
    void               (*pre_init_hook)(void),
    void               (*post_init_hook)(void)
);

// Common completion routine. Write the footer-content for each output header,
// seal the initialized archives, and dump everything to disk.
//
// `addl_done_hook`, when provided, will be called right before the routine
// completes, and any failure-code returned by it will propagate into the return
// for this function.
int common_done(int errc, int (*addl_done_hook)(void));

char* strremove(char *s, const char *sub);
char* strreplace(char *s, char r, char c);
char* strreplstr(const char *s, const char *repl, const char *with);
char* strupper(const char *s);
char* strjoin(const char *s, const char *with, const char *sep);

void  splitenv(const char *name, char ***target, size_t *target_len, const char **extra, size_t extra_len);
char* fload(const char *filename);
char* pathjoin(const char *basedir, const char *subdir, const char *file);
char* guardify(const char *path);

int fdump_blob(const void *data, size_t size, const char *dest); // write_blob
int fdump_narc(nitroarc_packer_t *p, const char *dest, bool ok); // write_narc
int fdump_blobnarc(const void *data, u32 size, const char *dest); // write_narc_onefile

#endif // DATAPROC_COMMON_H
