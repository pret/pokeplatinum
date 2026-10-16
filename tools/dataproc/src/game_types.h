#ifndef DATAPROC_GAME_TYPES_H
#define DATAPROC_GAME_TYPES_H

#include <stdbool.h>
#include <stdint.h>

typedef int8_t   s8;
typedef int16_t  s16;
typedef int32_t  s32;
typedef int64_t  s64;
typedef uint8_t  u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;

#define BOOL  bool
#define TRUE  true
#define FALSE false

#define ALIGN_4    __attribute__((aligned(4)))
#define NELEMS(a)  (sizeof(a) / sizeof (*(a)))

// Generated headers expose enums, not #defines.
#define POKEPLATINUM_GENERATED_ENUM

// Keep drivers out of "narc.h" to avoid loading the SDK.
#define POKEPLATINUM_NARC_H
typedef struct NARC NARC;

#endif // DATAPROC_GAME_TYPES_H
