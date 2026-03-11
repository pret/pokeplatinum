#ifndef POKEPLATINUM_CRYPTO_UTIL_H
#define POKEPLATINUM_CRYPTO_UTIL_H

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/types.h>

void CRYPTO_SetAllocator(void *(*allocFunc)(u32), void (*freeFunc)(void *));

#ifdef __cplusplus
}
#endif

#endif // POKEPLATINUM_CRYPTO_UTIL_H
