#ifndef NITRO_MI_UNCOMP_STREAM_H_
#define NITRO_MI_UNCOMP_STREAM_H_

#include <nitro/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    u8 * destp;
    s32 destCount;
    u16 destTmp;
    u8 destTmpCnt;
    u8 flags;
    u16 length;
    u8 _padding[2];
} MIUncompContextRL;

typedef struct {
    u8 * destp;
    s32 destCount;
    u32 length;
    u16 destTmp;
    u8 destTmpCnt;
    u8 flags;
    u8 flagIndex;
    u8 lengthFlg;
    u8 exFormat;
    u8 _padding[1];
} MIUncompContextLZ;

typedef struct {
    u8 * destp;
    s32 destCount;
    u8 * treep;
    u32 srcTmp;
    u32 destTmp;
    s16 treeSize;
    u8 srcTmpCnt;
    u8 destTmpCnt;
    u8 bitSize;
    u8 _padding2[3];
    u8 tree[0x200];
} MIUncompContextHuffman;

void MI_InitUncompContextRL(MIUncompContextRL * context, u8 * dest,
                            const MICompressionHeader * header);
void MI_InitUncompContextLZ(MIUncompContextLZ * context, u8 * dest,
                            const MICompressionHeader * header);
void MI_InitUncompContextHuffman(MIUncompContextHuffman * context, u8 * dest,
                                 const MICompressionHeader * header);

s32 MI_ReadUncompRL8(MIUncompContextRL * context, const u8 * data, u32 len);
s32 MI_ReadUncompRL16(MIUncompContextRL * context, const u8 * data, u32 len);
s32 MI_ReadUncompLZ8(MIUncompContextLZ * context, const u8 * data, u32 len);
s32 MI_ReadUncompLZ16(MIUncompContextLZ * context, const u8 * data, u32 len);
s32 MI_ReadUncompHuffman(MIUncompContextHuffman * context, const u8 * data, u32 len);

#ifdef __cplusplus
}
#endif

#endif
