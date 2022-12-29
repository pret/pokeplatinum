#ifndef NITRO_MI_UNCOMPRESS_H_
#define NITRO_MI_UNCOMPRESS_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/misc.h>
#include <nitro/types.h>

typedef enum {
    MI_COMPRESSION_LZ = 0x10,
    MI_COMPRESSION_HUFFMAN = 0x20,
    MI_COMPRESSION_RL = 0x30,
    MI_COMPRESSION_DIFF = 0x80,

    MI_COMPRESSION_TYPE_MASK = 0xf0,
    MI_COMPRESSION_TYPE_EX_MASK = 0xff
} MICompressionType;

typedef struct {
    u32 compParam : 4;
    u32 compType : 4;
    u32 destSize : 24;
} MICompressionHeader;

typedef struct {
    u16 srcNum;
    u16 srcBitNum : 8;
    u16 destBitNum : 8;
    u32 destOffset : 31;
    u32 destOffset0_on : 1;
} MIUnpackBitsParam;

void MI_UnpackBits(const void * srcp, void * destp, MIUnpackBitsParam * paramp);

void MI_UncompressLZ8(const void * srcp, void * destp);

void MI_UncompressLZ16(const void * srcp, void * destp);

void MI_UncompressHuffman(const void * srcp, void * destp);

void MI_UncompressRL8(const void * srcp, void * destp);

void MI_UncompressRL16(const void * srcp, void * destp);

void MI_UnfilterDiff8(const void * srcp, void * destp);

void MI_UnfilterDiff16(const void * srcp, void * destp);

static inline u32 MI_GetUncompressedSize (const void * srcp)
{
    return (*(u32 *)srcp >> 8);
}

static inline MICompressionType MI_GetCompressionType (const void * srcp)
{
    return (MICompressionType)(*(u32 *)srcp & MI_COMPRESSION_TYPE_MASK);
}

void MIi_UncompressBackward(void * bottom);

#ifdef __cplusplus
}
#endif

#endif
