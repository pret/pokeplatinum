#ifndef NITRO_MI_ENDIAN_H_
#define NITRO_MI_ENDIAN_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/misc.h>
#include <nitro/types.h>
#include <nitro/platform.h>

#define MI_SwapEndian8(val) (u8)(val)

#define MI_SwapEndian16(val) (u16)( \
        (((val) & 0xFF00UL) >> 8UL) | \
        (((val) & 0x00FFUL) << 8UL))

#define MI_SwapEndian32(val) (u32)( \
        (((val) & 0xFF000000UL) >> 24UL) | \
        (((val) & 0x00FF0000UL) >> 8UL) | \
        (((val) & 0x0000FF00UL) << 8UL) | \
        (((val) & 0x000000FFUL) << 24UL))

#if (PLATFORM_BYTES_ENDIAN == PLATFORM_ENDIAN_LITTLE)
#define MIi_SwapEndian8IfLE(val) MI_SwapEndian8(val)
#define MIi_SwapEndian16IfLE(val) MI_SwapEndian16(val)
#define MIi_SwapEndian32IfLE(val) MI_SwapEndian32(val)
#define MIi_SwapEndian8IfBE(val) (val)
#define MIi_SwapEndian16IfBE(val) (val)
#define MIi_SwapEndian32IfBE(val) (val)
#else
#define MIi_SwapEndian8IfLE(val) (val)
#define MIi_SwapEndian16IfLE(val) (val)
#define MIi_SwapEndian32IfLE(val) (val)
#define MIi_SwapEndian8IfBE(val) MI_SwapEndian8(val)
#define MIi_SwapEndian16IfBE(val) MI_SwapEndian16(val)
#define MIi_SwapEndian32IfBE(val) MI_SwapEndian32(val)
#endif

#define MI_HToLE8(val) MIi_SwapEndian8IfBE(val)
#define MI_HToBE8(val) MIi_SwapEndian8IfLE(val)
#define MI_HToLE16(val) MIi_SwapEndian16IfBE(val)
#define MI_HToBE16(val) MIi_SwapEndian16IfLE(val)
#define MI_HToLE32(val) MIi_SwapEndian32IfBE(val)
#define MI_HToBE32(val) MIi_SwapEndian32IfLE(val)

#define MI_LEToH8(val) MIi_SwapEndian8IfBE(val)
#define MI_BEToH8(val) MIi_SwapEndian8IfLE(val)
#define MI_LEToH16(val) MIi_SwapEndian16IfBE(val)
#define MI_BEToH16(val) MIi_SwapEndian16IfLE(val)
#define MI_LEToH32(val) MIi_SwapEndian32IfBE(val)
#define MI_BEToH32(val) MIi_SwapEndian32IfLE(val)

SDK_INLINE u8 MI_LoadLE8 (const void * ptr)
{
    const u8 * src = (const u8 *)ptr;
    return (u8)((src[0] << 0UL));
}
SDK_INLINE u16 MI_LoadLE16 (const void * ptr)
{
    const u8 * src = (const u8 *)ptr;
    return (u16)((src[0] << 0UL) | (src[1] << 8UL));
}
SDK_INLINE u32 MI_LoadLE32 (const void * ptr)
{
    const u8 * src = (const u8 *)ptr;
    return (u32)((src[0] << 0UL) | (src[1] << 8UL) | (src[2] << 16UL) | (src[3] << 24UL));
}

SDK_INLINE u8 MI_LoadBE8 (const void * ptr)
{
    const u8 * src = (const u8 *)ptr;
    return (u8)((src[0] << 0UL));
}
SDK_INLINE u16 MI_LoadBE16 (const void * ptr)
{
    const u8 * src = (const u8 *)ptr;
    return (u16)((src[0] << 8UL) | (src[1] << 0UL));
}
SDK_INLINE u32 MI_LoadBE32 (const void * ptr)
{
    const u8 * src = (const u8 *)ptr;
    return (u32)((src[0] << 24UL) | (src[1] << 16UL) | (src[2] << 8UL) | (src[3] << 0UL));
}

SDK_INLINE void MI_StoreLE8 (void * ptr, u8 val)
{
    u8 * src = (u8 *)ptr;
    src[0] = (u8)(val >> 0UL);
}
SDK_INLINE void MI_StoreLE16 (void * ptr, u16 val)
{
    u8 * src = (u8 *)ptr;
    src[0] = (u8)(val >> 0UL);
    src[1] = (u8)(val >> 8UL);
}
SDK_INLINE void MI_StoreLE32 (void * ptr, u32 val)
{
    u8 * src = (u8 *)ptr;
    src[0] = (u8)(val >> 0UL);
    src[1] = (u8)(val >> 8UL);
    src[2] = (u8)(val >> 16UL);
    src[3] = (u8)(val >> 24UL);
}

SDK_INLINE void MI_StoreBE8 (void * ptr, u8 val)
{
    u8 * src = (u8 *)ptr;
    src[0] = (u8)(val >> 0UL);
}
SDK_INLINE void MI_StoreBE16 (void * ptr, u16 val)
{
    u8 * src = (u8 *)ptr;
    src[0] = (u8)(val >> 8UL);
    src[1] = (u8)(val >> 0UL);
}
SDK_INLINE void MI_StoreBE32 (void * ptr, u32 val)
{
    u8 * src = (u8 *)ptr;
    src[0] = (u8)(val >> 24UL);
    src[1] = (u8)(val >> 16UL);
    src[2] = (u8)(val >> 8UL);
    src[3] = (u8)(val >> 0UL);
}

#ifdef __cplusplus
}
#endif

#endif
