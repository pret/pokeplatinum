#ifndef UTIL_H
#define UTIL_H

#include <stdlib.h>
#include <string.h>
#include <dirent.h>
#include <errno.h>
#include <stdbool.h>
#include <stdio.h>
#include <stddef.h>
#include <stdint.h>

#include <sys/stat.h>

#define UNUSED

#define FATAL_ERROR(format, ...)            \
do {                                        \
    fprintf(stderr, format, ##__VA_ARGS__); \
    exit(1);                                \
} while (0)

#define PADDINGSIZE(length, padTo) (padTo - length) % padTo

struct NitroChunk
{
    uint32_t chunkID;
    uint16_t magic1; // endianness?
    uint16_t magic2;
    uint32_t fileSize;
    uint16_t size;
    uint16_t magic3; // version?
};

struct DataFile
{
    struct DataFile *next;
    unsigned char *data;
    uint32_t size;
};

struct DataPackage
{
    struct DataFile *head;
    struct DataFile *tail;
    uint32_t count;
    uint32_t size;
};

struct StrVec
{
    char **s;
    size_t count;
    size_t capacity;
};

bool ParseNumber(const char *const s, char **end, const int radix, int *const intValue);
char *GetFileExtension(char *const path);
uint8_t *ReadWholeFile(const char *const path, uint32_t *const size);
uint16_t ReadU16_LE(const void *const src);
uint16_t ReadU16_BE(const void *const src);
uint32_t ReadU24_LE(const void *const src);
uint32_t ReadU24_BE(const void *const src);
uint32_t ReadU32_LE(const void *const src);
uint32_t ReadU32_BE(const void *const src);
uint32_t ReadVariableLength(const void *const src, uint8_t *size);
void WriteU16_LE(void *const dst, const uint16_t value);
void WriteU16_BE(void *const dst, const uint16_t value);
void WriteU24_LE(void *const dst, const uint32_t value);
void WriteU24_BE(void *const dst, const uint32_t value);
void WriteU32_LE(void *const dst, const uint32_t value);
void WriteU32_BE(void *const dst, const uint32_t value);
uint8_t WriteVariableLength(void *const dst, const uint32_t value);
uint8_t VariableLength(const uint32_t value);
char *JoinPaths(const char *const parent, const char *const child);
struct StrVec *StrVec_New(const size_t capacity);
int strcmp_q(const void *s1, const void *s2);
int U32cmp_q(const void *i1, const void *i2);
void WriteNitroChunk(void *const dst, const char *const fileType, const uint32_t fileSize);

#endif //UTIL_H
