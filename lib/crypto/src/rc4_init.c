#include <nitro/types.h>

#include "crypto/rc4.h"

void CRYPTO_RC4Init(CRYPTORC4Context *ctx, const void *key, u32 keyLength)
{
    u8 *s;
    u8 id1, id2;
    int i;

    if (keyLength > 16) {
        keyLength = 16;
    }

    ctx->i = 0;
    ctx->j = 0;

    s = ctx->s;

    for (i = 0; i < RC4_S_SIZE; i++) {
        s[i] = i;
    }

    id1 = id2 = 0;
    for (i = 0; i < RC4_S_SIZE; i++) {
        u8 tmp = s[i];
        id2 = (((u8 *)key)[id1] + tmp + id2);
        if (++id1 == (u8)keyLength) {
            id1 = 0;
        }
        s[i] = s[id2];
        s[id2] = tmp;
    }
}

void CRYPTO_RC4FastInit(CRYPTORC4FastContext *ctx, const void *key, u32 keyLength)
{
    u32 *s;
    u32 id1, id2;
    int i;

    if (keyLength > 16) {
        keyLength = 16;
    }

    ctx->i = 0;
    ctx->j = 0;

    s = ctx->s;

    for (i = 0; i < RC4_S_SIZE; i++) {
        s[i] = i;
    }

    id1 = id2 = 0;
    for (i = 0; i < RC4_S_SIZE; i++) {
        u32 tmp = s[i];
        id2 = (((u8 *)key)[id1] + tmp + id2) % RC4_S_SIZE;
        if (++id1 == keyLength) {
            id1 = 0;
        }
        s[i] = s[id2];
        s[id2] = tmp;
    }

    for (i = 0; i < RC4_S_SIZE; i++) {
        s[i] <<= 24;
    }
}
