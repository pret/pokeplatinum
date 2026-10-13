#include <assert.h>
#include <errno.h>
#include <stdarg.h>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "common.h"
#include "dataproc.h"
#include "internal.h"

#define ALLOC_BASE_SIZE 4096

void Buffer_Append(Buffer *b, const void *data, size_t size)
{
    if (b->size + size >= b->cap) {
        size_t cap = b->cap ? b->cap * 2 : ALLOC_BASE_SIZE;
        while (b->size + size >= cap) cap *= 2;

        void *tmp = realloc(b->data, cap);
        if (!tmp) abort(); // TODO: developer diagnostic

        b->data = tmp;
        b->cap  = cap;
    }

    char *buf = b->data;
    memcpy(buf + b->size, data, size);
    b->size += size;
}

void Buffer_VPrintf(Buffer *b, const char *fmt, va_list args)
{
    char *s = String_VFormat(fmt, args);
    Buffer_Append(b, s, strlen(s));
    free(s);
}

void* Buffer_Ptr(Buffer *b, size_t index, size_t size)
{
    assert(b->size % size == 0 && "Buffer size not divisible by element size");
    assert((index + 1) * size <= b->size && "index is out-of-bounds");

    size_t i = index * size;
    char  *e = b->data;
    return &e[i];
}

char* String_Format(const char *fmt, ...)
{
    va_list args;
    va_start(args, fmt);

    char *result = String_VFormat(fmt, args);

    va_end(args);

    return result;
}

char* String_VFormat(const char *fmt, va_list args)
{
    va_list args_copy;
    va_copy(args_copy, args);
    char *out = NULL;
    int size  = vsnprintf(out, 0, fmt, args_copy);
    va_end(args_copy);

    if (size < 0) abort();
    out = Zalloc((size_t)size + 1, 1);
    vsnprintf(out, (size_t)size + 1, fmt, args);

    return out;
}

char* String_Dupe(const char *s)
{
    char *out = strdup(s);
    if (!out) abort();
    return out;
}

void* Zalloc(size_t count, size_t size)
{
    if (count == 0 || size == 0) return NULL;

    void *out = calloc(count, size);
    if (!out) abort();
    return out;
}

char* String_ToUpper(const char *s)
{
    size_t size = strlen(s);
    char  *out  = Zalloc(size + 1, 1);

    for (size_t i = 0; i < size; i++) {
        out[i] = s[i];

        if (out[i] >= 'a' && out[i] <= 'z') {
            out[i] -= ('a' - 'A');
        }
    }

    out[size] = '\0';
    return out;
}

char* String_ToLower(const char *s)
{
    size_t size = strlen(s);
    char  *out  = Zalloc(size + 1, 1);

    for (size_t i = 0; i < size; i++) {
        out[i] = s[i];

        if (out[i] >= 'A' && out[i] <= 'Z') {
            out[i] += ('a' - 'A');
        }
    }

    out[size] = '\0';
    return out;
}

size_t String_CountChars(const char *s)
{
    size_t count = 0;
    for (; *s != '\0'; s++) count += ((unsigned char)*s & 0xC0) != 0x80;
    return count;
}

bool String_EndsWith(const char *s, const char *suffix)
{
    const size_t len = strlen(s);
    return len >= strlen(suffix)
        && strcmp(s + len - strlen(suffix), suffix) == 0;
}

char* File_Read(const char *path, size_t *size)
{
    int old_errno;
    FILE *f = fopen(path, "rb");
    if (!f) goto error;

    fseek(f, 0, SEEK_END);
    long fsize = ftell(f);
    fseek(f, 0, SEEK_SET);

    if (fsize < 0) goto error_close;

    char *out = malloc(fsize + 1);
    if (!out) goto error_close;

    long nread = fread(out, sizeof(*out), fsize, f);
    if (nread != fsize) {
        if (!ferror(f)) errno = EIO; // short read without a stream error
        goto error_free;
    }

    fclose(f);
    out[fsize] = '\0';
    if (size) *size = fsize;
    return out;


error_free:
    free(out);

error_close:
    old_errno = errno;
    fclose(f);
    errno = old_errno;

error:
    return NULL;
}

bool File_Write(const char *path, const void *data, size_t size)
{
    FILE *f = fopen(path, "wb");
    if (!f) return false;

    if (size > 0 && fwrite(data, 1, size, f) != size) {
        if (!ferror(f)) errno = EIO; // short write without a stream error

        int old_errno = errno;
        fclose(f);
        errno = old_errno;
        return false;
    }

    return fclose(f) == 0;
}

char* Paths_Find(const char *file)
{
    const char *targets[] = {
        REPO_INCLUDE,
        REPO_BUILD,
    };

    char *found = NULL;
    for (size_t i = 0; !found && i < countof(targets); i++) {
        char *target = String_Format("%s/%s", targets[i], file);
        if (access(target, F_OK) == 0) found = target;
        else free(target);
    }

    return found;
}

const char* Symbol_Name(dp_node node)
{
    const char *s = dp_string(node);
    return s != NULL ? s : "BAD_SYMBOL";
}
