#include <regex.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "dataproc.h"
#include "validate.h"

#include "minilib/map.h"

typedef int32_t  i32;
typedef uint32_t u32;

#define POKEPLATINUM_GENERATED_LOOKUP
#define POKEPLATINUM_GENERATED_LOOKUP_IMPL
#include "generated/narc.h"

#define metang_enum(T) (enum_t){ .name = #T, .size = lengthof__##T, .table = (enumkey_t *)lookup__##T }

static const enum_t narcs = metang_enum(NarcID);

typedef struct resource_t resource_t;
struct resource_t {
    u32 narc;          // Index of the NARC from which the resource is loaded
    u32 member;        // Index of the member file to be loaded from the NARC
    u32 is_compressed; // 1 if the resource is LZ-compressed in the NARC, else 0
    u32 id;            // Index of the resource in a pack for its particular type
    u32 screen_mask;   // Mask for which VRAM banks should load the resource; only for NCGR and NCLR
    u32 palette_slot;  // Slot in which to load the palette; only for NCLR
};

typedef struct resource_list_t resource_list_t;
struct resource_list_t {
    resource_t *data;
    size_t      size;
};

typedef struct resource_pack_t resource_pack_t;
struct resource_pack_t {
    resource_list_t ncgr;
    resource_list_t nclr;
    resource_list_t ncer;
    resource_list_t nanr;
};

typedef struct template_t template_t;
struct template_t {
    i32 ncgr;
    i32 nclr;
    i32 ncer;
    i32 nanr;
    i32 mcer;
    i32 manr;
    i32 transfer;
    i32 priority;
};

typedef struct template_list_t template_list_t;
struct template_list_t {
    template_t *data;
    size_t      size;
};

resource_list_t parse_ncgr(dataproc_t *data, map_t *narc_to_naix, map_t **out_ncgr_ids);
resource_list_t parse_nclr(dataproc_t *data, map_t *narc_to_naix, map_t **out_nclr_ids);
resource_list_t parse_ncer(dataproc_t *data, map_t *narc_to_naix, map_t **out_ncer_ids);
resource_list_t parse_nanr(dataproc_t *data, map_t *narc_to_naix, map_t **out_nanr_ids);

template_list_t parse_templates(
    dataproc_t *data,
    map_t *ncgr_ids,
    map_t *nclr_ids,
    map_t *ncer_ids,
    map_t *nanr_ids
);

#define MAX_DEFINES 32

typedef struct defines_t defines_t;
struct defines_t {
    char   *narcs[MAX_DEFINES];
    char   *naixs[MAX_DEFINES];
    size_t  size;
};

typedef struct options_t options_t;
struct options_t {
    const char *inpath;
    const char *prefix;
    defines_t   defines;
};

char* strsub(const char *s, size_t pos, size_t size) {
    char *sub = calloc(size + 1, sizeof(*sub));
    memcpy(sub, s + pos, size);
    return sub;
}

void parse_opts(int argc, const char **argv, options_t *opts) {
    for (int i = 0; i < argc - 1; i++) {
        if (strcmp(argv[i], "-p") == 0 || strcmp(argv[i], "--prefix") == 0) {
            opts->prefix = argv[i + 1];
            i++;
        } else if (strcmp(argv[i], "-D") == 0 || strcmp(argv[i], "--define") == 0) {
            const char *arg   = argv[i + 1];
            size_t      index = opts->defines.size;
            if (index >= MAX_DEFINES) {
                fprintf(stderr, "error: too many defines (max: %d)\n", MAX_DEFINES);
                exit(EXIT_FAILURE);
            }

            char  *p_colon = strchr(arg, ':');
            size_t i_colon = p_colon - arg;
            opts->defines.narcs[index] = strsub(arg, 0, i_colon);
            opts->defines.naixs[index] = strsub(arg, i_colon + 1, strlen(arg) - i_colon);
            opts->defines.size++;
            i++;
        } else {
            fprintf(stderr, "error: unknown option %s\n", argv[i]);
            exit(EXIT_FAILURE);
        }
    }

    opts->inpath = argv[argc - 1];
}

void free_opts(options_t *opts) {
    for (size_t i = 0; i < opts->defines.size; i++) {
        free(opts->defines.narcs[i]);
        free(opts->defines.naixs[i]);
    }
}

void usage(void) {
    printf("resdat - Pack a JSON file into resdat and cldat binary files\n");
    printf("\n");
    printf("Usage: resdat [options] FILE\n");
    printf("\n");
    printf("Options:\n");
    printf("  -p, --prefix STRING      Prefix output files with STRING\n");
    printf("  -D, --define NARC:NAIX   Map a NARC name to a NAIX file for member lookups\n");
}

const char* fload(const char *path) {
    FILE *f = fopen(path, "rb");
    if (!f) {
        fprintf(stderr, "error: could not open file %s\n", path);
        exit(EXIT_FAILURE);
    }

    fseek(f, 0, SEEK_END);
    long fsize = ftell(f);
    fseek(f, 0, SEEK_SET);

    if (fsize <= 0) {
        fprintf(stderr, "error: bad file size for %s\n", path);
        exit(EXIT_FAILURE);
    }

    char *data = malloc(fsize + 1);
    fread(data, 1, fsize, f);
    data[fsize] = '\0';

    fclose(f);
    return data;
}

void free_naix_map(void *map) {
    map_t *naix_to_file = map;
    destroy_map(&naix_to_file);
}

void load_naixs(options_t *opts, map_t *narc_to_naix) {
    regex_t pat_define;
    if (regcomp(&pat_define, "#define ([a-zA-Z_0-9]+) ([0-9]+)", REG_EXTENDED)) {
        fprintf(stderr, "error: could not compile NAIX regex\n");
        exit(EXIT_FAILURE);
    }

    int match = 0;
    const size_t max_groups = 3; // 0 is the whole match
    regmatch_t groups[max_groups];

    for (size_t i = 0; i < opts->defines.size; i++) {
        const char *narc   = opts->defines.narcs[i]; // NARC constant
        const char *naix   = fload(opts->defines.naixs[i]);
        const char *p_naix = naix;

        map_t *naix_to_file = new_map();
        while ((match = regexec(&pat_define, p_naix, max_groups, groups, 0)) == 0) {
            // We store +1 so that `0` still designates a key that does not exist in the map
            long  val = strtol(p_naix + groups[2].rm_so, NULL, 10) + 1;

            long  len = groups[1].rm_eo - groups[1].rm_so;
            char *key = calloc(len + 1, sizeof(*key));
            memcpy(key, p_naix + groups[1].rm_so, len);

            map_set(naix_to_file, key, (void *)val);
            p_naix += groups[0].rm_eo;
            free(key); // map contains its own key-copy
        }

        map_set(narc_to_naix, narc, naix_to_file);
        free((char *)naix);
    }

    regfree(&pat_define);
}

static inline char* prefix_path(const char *path, const char *prefix) {
    char *full_path;
    if (prefix) {
        const size_t pref_size = strlen(prefix);
        const size_t path_size = strlen(path);
        const size_t full_size = pref_size + path_size + 1;

        full_path = calloc(full_size + 1, sizeof(*full_path));
        memcpy(full_path,                 prefix, pref_size);
        memcpy(full_path + pref_size + 1, path,   path_size);
        full_path[pref_size] = '/';
    } else {
        const size_t path_size = strlen(path);

        full_path = calloc(path_size + 1, sizeof(*full_path));
        memcpy(full_path, path, path_size);
    }

    return full_path;
}

static inline void pack_resdat(const char *path, const char *prefix, resource_list_t *list, u32 type) {
    char *full_path = prefix_path(path, prefix);

    FILE *f = fopen(full_path, "wb");
    if (!f) {
        fprintf(stderr, "error: could not open %s for writing\n", full_path);
        goto cleanup;
    }

    resource_t foot = { -2, -2, -2, -2, -2, -2 };

    fwrite(&type,      sizeof(u32),        1,          f);
    fwrite(list->data, sizeof(resource_t), list->size, f);
    fwrite(&foot,      sizeof(resource_t), 1,          f);
    fclose(f);

cleanup:
    free(full_path);
}

static inline void pack_cldat(const char *path, const char *prefix, template_list_t *list) {
    char *full_path = prefix_path(path, prefix);

    FILE *f = fopen(full_path, "wb");
    if (!f) {
        fprintf(stderr, "error: could not open %s for writing\n", full_path);
        goto cleanup;
    }

    template_t foot = { -2, -2, -2, -2, -2, -2, -2, -2 };

    fwrite(list->data, sizeof(template_t), list->size, f);
    fwrite(&foot,      sizeof(template_t), 1,          f);
    fclose(f);

cleanup:
    free(full_path);
}

int main(int argc, const char **argv) {
    if (argc < 2) { fprintf(stderr, "missing FILE argument\n"); return EXIT_FAILURE; }
    if (strcmp(argv[1], "-h") == 0 || strcmp(argv[1], "--help") == 0 || strcmp(argv[1], "-?") == 0) {
        usage();
        return EXIT_SUCCESS;
    }

    options_t opts = { 0 };
    parse_opts(argc - 1, argv + 1, &opts);

    map_t *narc_to_naix     = new_map();
    narc_to_naix->free_func = free_naix_map;
    load_naixs(&opts, narc_to_naix);

    int errc = EXIT_FAILURE;
    dataproc_t *data = dataproc_load(opts.inpath, true);
    if (dataproc_iserror(data)) {
        dataproc_perror(data);
        goto cleanup;
    }

    map_t *ncgr_ids = NULL, *nclr_ids = NULL, *ncer_ids = NULL, *nanr_ids = NULL;
    resource_pack_t respack = {
        .ncgr = parse_ncgr(data, narc_to_naix, &ncgr_ids),
        .nclr = parse_nclr(data, narc_to_naix, &nclr_ids),
        .ncer = parse_ncer(data, narc_to_naix, &ncer_ids),
        .nanr = parse_nanr(data, narc_to_naix, &nanr_ids),
    };

    template_list_t templates = parse_templates(
        data,
        ncgr_ids,
        nclr_ids,
        ncer_ids,
        nanr_ids
    );

    pack_resdat("ncgrs.resdat", opts.prefix, &respack.ncgr, 0);
    pack_resdat("nclrs.resdat", opts.prefix, &respack.nclr, 1);
    pack_resdat("ncers.resdat", opts.prefix, &respack.ncer, 2);
    pack_resdat("nanrs.resdat", opts.prefix, &respack.nanr, 3);
    pack_cldat("templates.cldat", opts.prefix, &templates);

    free(respack.ncgr.data);
    free(respack.nclr.data);
    free(respack.ncer.data);
    free(respack.nanr.data);
    free(templates.data);
    if (ncgr_ids) destroy_map(&ncgr_ids);
    if (nclr_ids) destroy_map(&nclr_ids);
    if (ncer_ids) destroy_map(&ncer_ids);
    if (nanr_ids) destroy_map(&nanr_ids);

    errc = EXIT_SUCCESS;

cleanup:
    dataproc_free(data);
    destroy_map(&narc_to_naix);
    free_opts(&opts);
    return errc;
}

#define raise(fmt, ...) \
    do {                                           \
        dataproc_errfmt(data, fmt, ##__VA_ARGS__); \
        dataproc_perror(data);                     \
    } while (0)

#define raise_from(e, fmt, ...) \
    do {                                           \
        dataproc_errspan(data, e);                 \
        dataproc_errfmt(data, fmt, ##__VA_ARGS__); \
        dataproc_perror(data);                     \
    } while (0)

static inline const char* get_member_string(dataproc_t *data, void *object, const char *key, const char *parent) {
    void *value = get_object_member(data, object, key);
    if (dataproc_iserror(data)) {
        raise("expected '%s' to have member with key '%s'", parent, key);
        return NULL;
    }

    const char *value_s = take_string(data, value);
    if (dataproc_iserror(data)) {
        raise("expected '%s.%s' to be a string", parent, key);
        return NULL;
    }

    return value_s;
}

static inline unsigned long get_member_u64(dataproc_t *data, void *object, const char *key, const char *parent) {
    void *value = get_object_member(data, object, key);
    if (dataproc_iserror(data)) {
        raise("expected '%s' to have member with key '%s'", parent, key);
        return 0;
    }

    unsigned long value_ul = take_u64(data, value);
    if (dataproc_iserror(data)) {
        raise("expected '%s.%s' to be an unsigned integer", parent, key);
        return 0;
    }

    return value_ul;
}

static int cmp_lookup_keys(const void *k, const void *v) {
    const char      *key = k;
    const enumkey_t *val = v;
    return strcmp(key, val->k);
}

static inline const char* get_from_narc(
    dataproc_t *data,
    void *object,
    const char *key,
    const char *parent,
    map_t *narc_to_naix,
    long *out_narc_id,
    map_t **out_naix_to_file
) {
    void *value = get_object_member(data, object, key);
    if (dataproc_iserror(data)) {
        raise("expected '%s' to have member with key '%s'", parent, key);
        return NULL;
    }

    const char *value_s = take_string(data, value);
    if (dataproc_iserror(data)) {
        raise("expected '%s.%s' to be a string", parent, key);
        return NULL;
    }

    const enumkey_t *narc_match = bsearch(value_s, narcs.table, narcs.size, sizeof(enumkey_t), cmp_lookup_keys);
    if (narc_match == NULL) {
        raise_from(value, "expected '%s.%s' to be an enum-key for %s", parent, key, narcs.name);
        return NULL;
    }

    *out_narc_id      = narc_match->v;
    *out_naix_to_file = map_get(narc_to_naix, value_s);
    if (*out_naix_to_file == NULL) {
        raise_from(value, "expected '%s.%s' to have a defined NAIX mapping", parent, key);
        return NULL;
    }

    return value_s;
}

static inline const char* get_from_file(
    dataproc_t *data,
    void *object,
    const char *key,
    const char *parent,
    const char *from_narc,
    map_t *naix_to_file,
    long *out_file_id
) {
    void *value = get_object_member(data, object, key);
    if (dataproc_iserror(data)) {
        raise("expected '%s' to have member with key '%s'", parent, key);
        return NULL;
    }

    const char *value_s = take_string(data, value);
    if (dataproc_iserror(data)) {
        raise("expected '%s.%s' to be a string", parent, key);
        return NULL;
    }

    *out_file_id = (long)map_get(naix_to_file, value_s) - 1;
    if (*out_file_id < 0) {
        raise_from(value, "expected '%s.%s' to be defined in NAIX for %s", parent, key, from_narc);
        return NULL;
    }

    return value_s;
}

static inline bool get_member_bool(dataproc_t *data, void *object, const char *key, const char *parent) {
    void *value = get_object_member(data, object, key);
    if (dataproc_iserror(data)) {
        raise("expected '%s' to have member with key '%s'", parent, key);
        return false;
    }

    bool value_b = take_bool(data, value);
    if (dataproc_iserror(data)) {
        raise("expected '%s.%s' to be a boolean", parent, key);
        return NULL;
    }

    return value_b;
}

resource_list_t parse_ncgr(dataproc_t *data, map_t *narc_to_naix, map_t **out_ncgr_ids) {
    void  *ncgr_array = get_array(data, ".characters");
    size_t ncgr_count = get_array_size(data, ncgr_array);

    resource_list_t ncgrs = { 0 };
    if (ncgr_count == 0) goto cleanup;

    *out_ncgr_ids = new_map();
    ncgrs.data    = malloc(ncgr_count * sizeof(*ncgrs.data));
    ncgrs.size    = ncgr_count;
    for (size_t i = 0; i < ncgr_count; i++) {
        void *elem   = get_array_element(data, ncgr_array, i);
        void *object = take_object(data, elem);

        if (object == NULL) {
            raise("expected '.characters[%zu]' to be an object", i);
            continue;
        }

        char parent_path[64] = { 0 };
        snprintf(parent_path, 64, ".characters[%zu]", i);

        map_t *naix_to_file = NULL;
        const char *id         = get_member_string(data, object, "id",             parent_path);
        const bool  compressed = get_member_bool  (data, object, "compressed",     parent_path);
        const bool  on_main    = get_member_bool  (data, object, "on_main_screen", parent_path);
        const bool  on_sub     = get_member_bool  (data, object, "on_sub_screen",  parent_path);

        long narc_id = 0, file_id = 0;
        const char *from_narc = get_from_narc(data, object, "from_narc", parent_path, narc_to_naix, &narc_id, &naix_to_file);
        const char *from_file = get_from_file(data, object, "from_file", parent_path, from_narc, naix_to_file, &file_id);

        (void)from_file;
        ncgrs.data[i].narc          = narc_id;
        ncgrs.data[i].member        = file_id;
        ncgrs.data[i].id            = i;
        ncgrs.data[i].is_compressed = compressed;
        ncgrs.data[i].screen_mask   = on_main | (on_sub << 1);
        ncgrs.data[i].palette_slot  = narc_id;

        map_set(*out_ncgr_ids, id, &ncgrs.data[i]);
    }

cleanup:
    return ncgrs;
}

resource_list_t parse_nclr(dataproc_t *data, map_t *narc_to_naix, map_t **out_nclr_ids) {
    void  *nclr_array = get_array(data, ".palettes");
    size_t nclr_count = get_array_size(data, nclr_array);

    resource_list_t nclrs = { 0 };
    if (nclr_count == 0) goto cleanup;

    *out_nclr_ids = new_map();
    nclrs.data    = malloc(nclr_count * sizeof(*nclrs.data));
    nclrs.size    = nclr_count;
    for (size_t i = 0; i < nclr_count; i++) {
        void *elem   = get_array_element(data, nclr_array, i);
        void *object = take_object(data, elem);

        if (object == NULL) {
            raise("expected '.palettes[%zu]' to be an object", i);
            continue;
        }

        char parent_path[64] = { 0 };
        snprintf(parent_path, 64, ".palettes[%zu]", i);

        map_t *naix_to_file = NULL;
        const char *id         = get_member_string(data, object, "id",             parent_path);
        const long  pal_slot   = get_member_u64   (data, object, "load_in_slot",   parent_path);
        const bool  compressed = get_member_bool  (data, object, "compressed",     parent_path);
        const bool  on_main    = get_member_bool  (data, object, "on_main_screen", parent_path);
        const bool  on_sub     = get_member_bool  (data, object, "on_sub_screen",  parent_path);

        long narc_id = 0, file_id = 0;
        const char *from_narc = get_from_narc(data, object, "from_narc", parent_path, narc_to_naix, &narc_id, &naix_to_file);
        const char *from_file = get_from_file(data, object, "from_file", parent_path, from_narc, naix_to_file, &file_id);

        (void)from_file;
        nclrs.data[i].narc          = narc_id;
        nclrs.data[i].member        = file_id;
        nclrs.data[i].id            = i;
        nclrs.data[i].is_compressed = compressed;
        nclrs.data[i].screen_mask   = on_main | (on_sub << 1);
        nclrs.data[i].palette_slot  = pal_slot;

        map_set(*out_nclr_ids, id, &nclrs.data[i]);
    }

cleanup:
    return nclrs;
}

resource_list_t parse_ncer(dataproc_t *data, map_t *narc_to_naix, map_t **out_ncer_ids) {
    void  *ncer_array = get_array(data, ".cells");
    size_t ncer_count = get_array_size(data, ncer_array);

    resource_list_t ncers = { 0 };
    if (ncer_count == 0) goto cleanup;

    *out_ncer_ids = new_map();
    ncers.data    = malloc(ncer_count * sizeof(*ncers.data));
    ncers.size    = ncer_count;
    for (size_t i = 0; i < ncer_count; i++) {
        void *elem   = get_array_element(data, ncer_array, i);
        void *object = take_object(data, elem);

        if (object == NULL) {
            raise("expected '.cells[%zu]' to be an object", i);
            continue;
        }

        char parent_path[64] = { 0 };
        snprintf(parent_path, 64, ".cells[%zu]", i);

        map_t *naix_to_file = NULL;
        const char *id         = get_member_string(data, object, "id",         parent_path);
        const bool  compressed = get_member_bool  (data, object, "compressed", parent_path);

        long narc_id = 0, file_id = 0;
        const char *from_narc = get_from_narc(data, object, "from_narc", parent_path, narc_to_naix, &narc_id, &naix_to_file);
        const char *from_file = get_from_file(data, object, "from_file", parent_path, from_narc, naix_to_file, &file_id);

        (void)from_file;
        ncers.data[i].narc          = narc_id;
        ncers.data[i].member        = file_id;
        ncers.data[i].id            = i;
        ncers.data[i].is_compressed = compressed;
        ncers.data[i].screen_mask   = narc_id;
        ncers.data[i].palette_slot  = narc_id;

        map_set(*out_ncer_ids, id, &ncers.data[i]);
    }

cleanup:
    return ncers;
}

resource_list_t parse_nanr(dataproc_t *data, map_t *narc_to_naix, map_t **out_nanr_ids) {
    void  *nanr_array = get_array(data, ".animations");
    size_t nanr_count = get_array_size(data, nanr_array);

    resource_list_t nanrs = { 0 };
    if (nanr_count == 0) goto cleanup;

    *out_nanr_ids = new_map();
    nanrs.data    = malloc(nanr_count * sizeof(*nanrs.data));
    nanrs.size    = nanr_count;
    for (size_t i = 0; i < nanr_count; i++) {
        void *elem   = get_array_element(data, nanr_array, i);
        void *object = take_object(data, elem);

        if (object == NULL) {
            raise("expected '.animations[%zu]' to be an object", i);
            continue;
        }

        char parent_path[64] = { 0 };
        snprintf(parent_path, 64, ".animations[%zu]", i);

        map_t *naix_to_file = NULL;
        const char *id         = get_member_string(data, object, "id",         parent_path);
        const bool  compressed = get_member_bool  (data, object, "compressed", parent_path);

        long narc_id = 0, file_id = 0;
        const char *from_narc = get_from_narc(data, object, "from_narc", parent_path, narc_to_naix, &narc_id, &naix_to_file);
        const char *from_file = get_from_file(data, object, "from_file", parent_path, from_narc, naix_to_file, &file_id);

        (void)from_file;
        nanrs.data[i].narc          = narc_id;
        nanrs.data[i].member        = file_id;
        nanrs.data[i].id            = i;
        nanrs.data[i].is_compressed = compressed;
        nanrs.data[i].screen_mask   = narc_id;
        nanrs.data[i].palette_slot  = narc_id;

        map_set(*out_nanr_ids, id, &nanrs.data[i]);
    }

cleanup:
    return nanrs;
}

static inline long map_member_string(dataproc_t *data, void *object, const char *key, const char *parent, map_t *map) {
    void *value = get_object_member(data, object, key);
    if (dataproc_iserror(data)) {
        raise("expected '%s' to have member with key '%s'", parent, key);
        return 0;
    }

    const char *value_s = take_string(data, value);
    if (dataproc_iserror(data)) {
        raise("expected '%s.%s' to be a string", parent, key);
        return 0;
    }

    resource_t *mapped = map_get(map, value_s);
    if (mapped == NULL) {
        raise_from(value, "expected '%s.%s' to be defined in '.%s'", parent, key, key);
        return 0;
    }

    return mapped->id;
}

template_list_t parse_templates(
    dataproc_t *data,
    map_t *ncgr_ids,
    map_t *nclr_ids,
    map_t *ncer_ids,
    map_t *nanr_ids
) {
    void  *templates_array = get_array(data, ".templates");
    size_t templates_count = get_array_size(data, templates_array);

    template_list_t templates = { 0 };
    if (templates_count == 0) goto cleanup;

    templates.data = malloc(templates_count * sizeof(*templates.data));
    templates.size = templates_count;
    for (size_t i = 0; i < templates_count; i++) {
        void *elem   = get_array_element(data, templates_array, i);
        void *object = take_object(data, elem);

        if (object == NULL) {
            raise("expected '.templates[%zu]' to be an object", i);
            continue;
        }

        char parent_path[64] = { 0 };
        snprintf(parent_path, 64, ".templates[%zu]", i);

        long ncgr_id  = map_member_string(data, object, "characters",    parent_path, ncgr_ids);
        long nclr_id  = map_member_string(data, object, "palette",       parent_path, nclr_ids);
        long ncer_id  = map_member_string(data, object, "cells",         parent_path, ncer_ids);
        long nanr_id  = map_member_string(data, object, "animations",    parent_path, nanr_ids);
        bool transfer = get_member_bool  (data, object, "vram_transfer", parent_path);
        long priority = get_member_u64   (data, object, "priority",      parent_path);

        templates.data[i].ncgr     = ncgr_id;
        templates.data[i].nclr     = nclr_id;
        templates.data[i].ncer     = ncer_id;
        templates.data[i].nanr     = nanr_id;
        templates.data[i].mcer     = -1;
        templates.data[i].manr     = -1;
        templates.data[i].transfer = transfer;
        templates.data[i].priority = priority;
    }

cleanup:
    return templates;
}
