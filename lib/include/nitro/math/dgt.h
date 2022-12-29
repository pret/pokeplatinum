#ifndef NITRO_MATH_DGT_H_
#define NITRO_MATH_DGT_H_

#include <nitro/misc.h>
#include <nitro/types.h>
#include <nitro/dgt/common.h>
#include <nitro/dgt/dgt.h>

#ifdef __cplusplus
extern "C" {
#endif

#define MATH_MD5_DIGEST_SIZE DGT_HASH1_DIGEST_SIZE
#define MATH_SHA1_DIGEST_SIZE DGT_HASH2_DIGEST_SIZE

#define MATH_MD5_BLOCK_SIZE DGT_HASH_BLOCK_SIZE
#define MATH_SHA1_BLOCK_SIZE DGT_HASH_BLOCK_SIZE

typedef DGTHash1Context MATHMD5Context;
typedef DGTHash2Context MATHSHA1Context;

static inline void MATH_MD5Init (MATHMD5Context * context)
{
    DGT_Hash1Reset(context);
}

static inline void MATH_MD5Update (MATHMD5Context * context, const void * input, u32 length)
{
    DGT_Hash1SetSource(context, (u8 *)input, length);
}

static inline void MATH_MD5GetHash (MATHMD5Context * context, void * digest)
{
    DGT_Hash1GetDigest_R((u8 *)digest, context);
}

static inline void MATH_MD5GetDigest (MATHMD5Context * context, void * digest)
{
    MATH_MD5GetHash(context, digest);
}

static inline void MATH_SHA1Init (MATHSHA1Context * context)
{
    DGT_Hash2Reset(context);
}

static inline void MATH_SHA1Update (MATHSHA1Context * context, const void * input, u32 length)
{
    DGT_Hash2SetSource(context, (u8 *)input, length);
}

static inline void MATH_SHA1GetHash (MATHSHA1Context * context, void * digest)
{
    DGT_Hash2GetDigest(context, (u8 *)digest);
}

static inline void MATH_SHA1GetDigest (MATHSHA1Context * context, void * digest)
{
    MATH_SHA1GetHash(context, digest);
}

void MATH_CalcMD5(void * digest, const void * data, u32 dataLength);

void MATH_CalcSHA1(void * digest, const void * data, u32 dataLength);

static inline void MATH_CalcHMACMD5 (void * digest, const void * data, u32 dataLength, const void * key, u32 keyLength)
{
    DGT_Hash1CalcHmac(digest, (void *)data, (int)dataLength, (void *)key, (int)keyLength);
}

static inline void MATH_CalcHMACSHA1 (void * digest, const void * data, u32 dataLength, const void * key, u32 keyLength)
{
    DGT_Hash2CalcHmac(digest, (void *)data, (int)dataLength, (void *)key, (int)keyLength);
}

#ifdef __cplusplus
}
#endif

#endif
