#include "util.h"

#include <limits.h>

bool ParseNumber(const char *const s, char **end, const int radix, int *const intValue)
{
    char *localEnd;

    if (end == NULL)
        end = &localEnd;

    errno = 0;

    const long longValue = strtol(s, end, radix);

    if (*end == s)
        return false; // not a number

    if ((longValue == LONG_MIN || longValue == LONG_MAX) && errno == ERANGE)
        return false;

    if (longValue > INT_MAX)
        return false;

    if (longValue < INT_MIN)
        return false;

    *intValue = (int)longValue;

    return true;
}

char *GetFileExtension(char *const path)
{
    char *extension = path;

    while (*extension != 0)
        extension++;

    while (extension > path && *extension != '.' && *extension != '/')
    {
        extension--;
    }

    if (*extension == '/')
        return path;

    if (extension == path)
        return NULL;

    extension++;

    if (*extension == 0)
        return NULL;

    return extension;
}

uint8_t *ReadWholeFile(const char *const path, uint32_t *const size)
{
    FILE *fp = fopen(path, "rb");

    if (fp == NULL)
        FATAL_ERROR("Failed to open \"%s\" for reading.\n", path);

    fseek(fp, 0, SEEK_END);

    *size = ftell(fp);

    uint8_t *buffer = malloc(*size);

    if (buffer == NULL)
        FATAL_ERROR("Failed to allocate memory for reading \"%s\".\n", path);

    rewind(fp);

    if (fread(buffer, *size, 1, fp) != 1)
        FATAL_ERROR("Failed to read \"%s\".\n", path);

    fclose(fp);

    return buffer;
}

uint16_t ReadU16_LE(const void *const src)
{
    const uint8_t *bytes = src;
    return (bytes[1] << 8) | bytes[0];
}

uint16_t ReadU16_BE(const void *const src)
{
    const uint8_t *bytes = src;
    return (bytes[0] << 8) | bytes[1];
}

uint32_t ReadU24_LE(const void *const src)
{
    const uint8_t *bytes = src;
    return (bytes[2] << 16) | (bytes[1] << 8) | bytes[0];
}

uint32_t ReadU24_BE(const void *const src)
{
    const uint8_t *bytes = src;
    return (bytes[0] << 16) | (bytes[1] << 8) | bytes[2];
}

uint32_t ReadU32_LE(const void *const src)
{
    const uint8_t *bytes = src;
    return (bytes[3] << 24) | (bytes[2] << 16) | (bytes[1] << 8) | bytes[0];
}

uint32_t ReadU32_BE(const void *const src)
{
    const uint8_t *bytes = src;
    return (bytes[0] << 24) | (bytes[1] << 16) | (bytes[2] << 8) | bytes[3];
}

uint32_t ReadVariableLength(const void *const src, uint8_t *size)
{
    const uint8_t *bytes = src;
    *size = 0;
    uint32_t val = bytes[0] & 0x7F;
    while (bytes[*size] & 0x80)
    {
        *size += 1;
        val = (val << 7) + (bytes[*size] & 0x7F);
    }
    *size += 1;
    return val;
}

void WriteU16_LE(void *const dst, const uint16_t value)
{
    uint8_t *const bytes = dst;
    bytes[0] = value;
    bytes[1] = value >> 8;
}

void WriteU16_BE(void *const dst, const uint16_t value)
{
    uint8_t *const bytes = dst;
    bytes[0] = value >> 8;
    bytes[1] = value;
}

void WriteU24_LE(void *const dst, const uint32_t value)
{
    uint8_t *const bytes = dst;
    bytes[0] = value;
    bytes[1] = value >> 8;
    bytes[2] = value >> 16;
}

void WriteU24_BE(void *const dst, const uint32_t value)
{
    uint8_t *const bytes = dst;
    bytes[0] = value >> 16;
    bytes[1] = value >> 8;
    bytes[2] = value;
}

void WriteU32_LE(void *const dst, const uint32_t value)
{
    uint8_t *const bytes = dst;
    bytes[0] = value;
    bytes[1] = value >> 8;
    bytes[2] = value >> 16;
    bytes[3] = value >> 24;
}

void WriteU32_BE(void *const dst, const uint32_t value)
{
    uint8_t *const bytes = dst;
    bytes[0] = value >> 24;
    bytes[1] = value >> 16;
    bytes[2] = value >> 8;
    bytes[3] = value;
}

uint8_t WriteVariableLength(void *const dst, const uint32_t value)
{
    uint8_t *const bytes = dst;
    uint8_t size = 0;
    for (int i = 3; i > 0; i--)
    {
        if (value >> (7 * i))
        {
            bytes[size] = (value >> (7 * i)) & 0x7F;
            bytes[size++] |= 0x80;
        }
    }
    bytes[size++] = value & 0x7F;
    return size;
}

uint8_t VariableLength(const uint32_t value)
{
    uint8_t size = 1;
    for (int i = 3; i > 0; i--)
    {
        if (value >> (7 * i))
        {
            size++;
        }
    }
    return size;
}

char *JoinPaths(const char *const parent, const char *const child)
{
    int newLen = strlen(parent) + strlen(child) + 2;
    char *newPath = malloc(newLen);
    snprintf(newPath, newLen, "%s/%s", parent, child);
    return newPath;
}

struct StrVec *StrVec_New(const size_t capacity)
{
    struct StrVec *vec = malloc(sizeof(struct StrVec));

    vec->s = malloc(capacity * sizeof(char *));
    vec->count = 0;
    vec->capacity = capacity;

    return vec;
}

int strcmp_q(const void *s1, const void *s2)
{
    char *const *a = s1;
    char *const *b = s2;
    return strcmp(*a, *b);
}

int U32cmp_q(const void *i1, const void *i2)
{
    const int a = *(uint32_t*)i1;
    const int b = *(uint32_t*)i2;
    return (a > b) - (a < b);
}

void WriteNitroChunk(void *const dst, const char *const fileType, const uint32_t fileSize)
{
    struct NitroChunk *nitroChunk = dst;
    memcpy(&nitroChunk->chunkID, fileType, 4);
    WriteU16_LE(&nitroChunk->magic1, 0xFEFF);
    WriteU16_LE(&nitroChunk->magic2, 0x0100);
    WriteU32_LE(&nitroChunk->fileSize, fileSize);
    WriteU16_LE(&nitroChunk->size, sizeof(struct NitroChunk));
    WriteU16_LE(&nitroChunk->magic3, 0x0001);
}
