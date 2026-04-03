#ifndef POKEPLATINUM_SIGN_H
#define POKEPLATINUM_SIGN_H

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/types.h>

BOOL CRYPTO_VerifySignature(const u8 *param0, int param1, const u8 *param2, const u8 *param3);

#ifdef __cplusplus
}
#endif

#endif // POKEPLATINUM_SIGN_H
