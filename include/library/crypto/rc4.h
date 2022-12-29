#ifndef POKEPLATINUM_RC4_H
#define POKEPLATINUM_RC4_H

#ifdef __cplusplus
extern "C" {
#endif

typedef struct CRYPTORC4Context_t {
    u8 i, j;
    u8 padd[2];
    u8 s[256];
} CRYPTORC4Context;

typedef struct CRYPTORC4FastContext_t {
    u32 i, j;
    u32 s[256];
} CRYPTORC4FastContext;

void CRYPTO_RC4Init(CRYPTORC4Context *, const void *, u32);
void CRYPTO_RC4Encrypt(CRYPTORC4Context *, const void *, u32, void *);
void CRYPTO_RC4FastInit(CRYPTORC4FastContext *, const void *, u32);
void CRYPTO_RC4FastEncrypt(CRYPTORC4FastContext *, const void *, u32, void *);

static inline void CRYPTO_RC4Decrypt (CRYPTORC4Context * param0, const void * param1, u32 param2, void * param3)
{
    CRYPTO_RC4Encrypt(param0, param1, param2, param3);
}

static inline void CRYPTO_RC4 (const void * param0, u32 param1, void * param2, u32 param3)
{
    CRYPTORC4Context v0;
    CRYPTO_RC4Init(&v0, param0, param1);
    CRYPTO_RC4Encrypt(&v0, param2, param3, param2);
}

static inline void CRYPTO_RC4FastDecrypt (CRYPTORC4FastContext * param0, const void * param1, u32 param2, void * param3)
{
    CRYPTO_RC4FastEncrypt(param0, param1, param2, param3);
}

static inline void CRYPTO_RC4Fast (const void * param0, u32 param1, void * param2, u32 param3)
{
    CRYPTORC4FastContext v0;
    CRYPTO_RC4FastInit(&v0, param0, param1);
    CRYPTO_RC4FastEncrypt(&v0, param2, param3, param2);
}

#ifdef __cplusplus
}
#endif

#endif // POKEPLATINUM_RC4_H
