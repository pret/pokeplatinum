#ifndef NITRO_MI_COMPRESS_H_
#define NITRO_MI_COMPRESS_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/misc.h>
#include <nitro/types.h>

u32 MI_CompressLZImpl(const u8 * srcp, u32 size, u8 * dstp, BOOL exFormat);
u32 MI_CompressLZFastImpl(const u8 * srcp, u32 size, u8 * dstp, u8 * work, BOOL exFormat);

inline u32 MI_CompressLZ (const u8 * srcp, u32 size, u8 * dstp)
{
    return MI_CompressLZImpl(srcp, size, dstp, FALSE);
}
inline u32 MI_CompressLZEx (const u8 * srcp, u32 size, u8 * dstp)
{
    return MI_CompressLZImpl(srcp, size, dstp, TRUE);
}
inline u32 MI_CompressLZFast (const u8 * srcp, u32 size, u8 * dstp, u8 * work)
{
    return MI_CompressLZFastImpl(srcp, size, dstp, work, FALSE);
}
inline u32 MI_CompressLZExFast (const u8 * srcp, u32 size, u8 * dstp, u8 * work)
{
    return MI_CompressLZFastImpl(srcp, size, dstp, work, TRUE);
}

#define MI_LZ_FAST_COMPRESS_WORK_SIZE ((4096 + 256 + 256) * sizeof(s16))

u32 MI_CompressRL(const u8 * srcp, u32 size, u8 * dstp);

#define MI_HUFFMAN_COMPRESS_WORK_SIZE (12288 + 512 + 1536)

u32 MI_CompressHuffman(const u8 * srcp, u32 size, u8 * dstp, u8 huffBitSize, u8 * work);

#ifdef __cplusplus
}
#endif

#endif
