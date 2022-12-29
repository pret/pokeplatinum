#ifndef NITRO_DGT_DGT_H_
#define NITRO_DGT_DGT_H_

#include <nitro/dgt/common.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct DGTHash1Context {
    union {
        struct {
            unsigned long a, b, c, d;
        };
        unsigned long state[4];
    };
    unsigned long long length;
    union {
        unsigned long buffer32[16];
        unsigned char buffer8[64];
    };
} DGTHash1Context;

#if defined(SDK_DGT_HASH2_CODE_SAFE) || defined(SDK_WIN32) || defined(SDK_FROM_TOOL)
typedef struct DGTHash2Context {
    unsigned long Intermediate_Hash[5];
    unsigned long Length_Low;
    unsigned long Length_High;
    int Message_Block_Index;
    unsigned char Message_Block[64];
    int Computed;
    int Corrupted;
} DGTHash2Context;
#else
typedef struct DGTHash2Context {
    unsigned long h0, h1, h2, h3, h4;
    unsigned long Nl, Nh;
    int num;
    unsigned long data[64 / 4];
    int dummy[2];
} DGTHash2Context;
#endif

#ifdef SDK_DGT_HASH1_CODE_SAFE
void DGT_Hash1Reset(DGTHash1Context *);
void DGT_Hash1SetSource(DGTHash1Context *, unsigned char *, unsigned long);
void DGT_Hash1GetDigest_R(unsigned char digest[16], DGTHash1Context *);
#else
void DGT_Hash1Reset(DGTHash1Context *);
void DGT_Hash1SetSource(DGTHash1Context *, const void *, unsigned long);
void DGT_Hash1GetDigest_R(void * digest, DGTHash1Context *);
#endif

#if defined(SDK_DGT_HASH2_CODE_SAFE) || defined(SDK_WIN32) || defined(SDK_FROM_TOOL)
void DGT_Hash2Reset(DGTHash2Context *);
void DGT_Hash2SetSource(DGTHash2Context *, unsigned char *, unsigned long);
void DGT_Hash2GetDigest(DGTHash2Context *, unsigned char digest[20]);
#else
void DGT_Hash2Reset(DGTHash2Context *);
void DGT_Hash2SetSource(DGTHash2Context *, const unsigned char *, unsigned long);
void DGT_Hash2GetDigest(DGTHash2Context *, unsigned char * digest);
#endif

void DGT_Hash1CalcHmac(
    void * digest,
    void * bin_ptr,
    int bin_len,
    void * key_ptr,
    int key_len
);

void DGT_Hash2CalcHmac(
    void * digest,
    void * bin_ptr,
    int bin_len,
    void * key_ptr,
    int key_len
);

int DGT_Hash1CalcHmacForRms(
    void * digest,
    void * romh_ptr,
    int romh_len,
    void * mbin_ptr,
    int mbin_len,
    void * sbin_ptr,
    int sbin_len,
    void * key_ptr,
    int key_len
);

int DGT_Hash2CalcHmacForRms(
    void * digest,
    void * romh_ptr,
    int romh_len,
    void * mbin_ptr,
    int mbin_len,
    void * sbin_ptr,
    int sbin_len,
    void * key_ptr,
    int key_len
);

int DGT_Hash1TestHmacForRms(
    void * digest,
    void * romh_ptr,
    int romh_len,
    void * mbin_ptr,
    int mbin_len,
    void * sbin_ptr,
    int sbin_len,
    void * key_ptr,
    int key_len
);

int DGT_Hash2TestHmacForRms(
    void * digest,
    void * romh_ptr,
    int romh_len,
    void * mbin_ptr,
    int mbin_len,
    void * sbin_ptr,
    int sbin_len,
    void * key_ptr,
    int key_len
);

int DGT_SetOverlayTableMode(int flag);

#ifdef __cplusplus
}
#endif
#endif
