#ifndef NITRO_MI_MEMORY_H_
#define NITRO_MI_MEMORY_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/misc.h>
#include <nitro/types.h>

void MIi_CpuClear16(u16 data, void * destp, u32 size);
void MIi_CpuCopy16(const void * srcp, void * destp, u32 size);
void MIi_CpuSend16(const void * srcp, volatile void * destp, u32 size);

void MIi_CpuClear32(u32 data, void * destp, u32 size);
void MIi_CpuCopy32(const void * srcp, void * destp, u32 size);
void MIi_CpuSend32(const void * srcp, volatile void * destp, u32 size);

void MIi_CpuClearFast(u32 data, void * destp, u32 size);
void MIi_CpuCopyFast(const void * srcp, void * destp, u32 size);

static inline void MI_CpuFill32 (void * dest, u32 data, u32 size)
{
    SDK_ASSERTMSG((size & 3) == 0, "size & 3 must be 0");
    SDK_ASSERTMSG(((u32)dest & 3) == 0, "destination address must be in 4-byte alignment");

    MIi_CpuClear32(data, dest, size);
}

static inline void MI_CpuCopy32 (const void * src, void * dest, u32 size)
{
    SDK_ASSERTMSG((size & 3) == 0, "size & 3 must be 0");
    SDK_ASSERTMSG(((u32)src & 3) == 0, "source address must be in 4-byte alignment");
    SDK_ASSERTMSG(((u32)dest & 3) == 0, "destination address must be in 4-byte alignment");

    MIi_CpuCopy32(src, dest, size);
}

static inline void MI_CpuClear32 (void * dest, u32 size)
{
    MI_CpuFill32(dest, 0, size);
}

static inline void MI_CpuSend32 (const void * src, volatile void * dest, u32 size)
{
    SDK_ASSERTMSG((size & 3) == 0, "size & 3 must be 0");
    SDK_ASSERTMSG(((u32)src & 3) == 0, "source address must be in 4-byte alignment");
    SDK_ASSERTMSG(((u32)dest & 3) == 0, "destination address must be in 4-byte alignment");

    MIi_CpuSend32(src, dest, size);
}

static inline void MI_CpuFill16 (void * dest, u16 data, u32 size)
{
    SDK_ASSERTMSG((size & 1) == 0, "size & 1 must be 0");
    SDK_ASSERTMSG(((u32)dest & 1) == 0, "source address must be in 2-byte alignment");

    MIi_CpuClear16(data, dest, size);
}

static inline void MI_CpuCopy16 (const void * src, void * dest, u32 size)
{
    SDK_ASSERTMSG((size & 1) == 0, "size & 1 must be 0");
    SDK_ASSERTMSG(((u32)src & 1) == 0, "source address must be in 2-byte alignment");
    SDK_ASSERTMSG(((u32)dest & 1) == 0, "destination address must be in 2-byte alignment");

    MIi_CpuCopy16(src, dest, size);
}

static inline void MI_CpuClear16 (void * dest, u32 size)
{
    MI_CpuFill16(dest, 0, size);
}

static inline void MI_CpuSend16 (const void * src, volatile void * dest, u32 size)
{
    SDK_ASSERTMSG((size & 1) == 0, "size & 1 must be 0");
    SDK_ASSERTMSG(((u32)src & 1) == 0, "source address must be in 2-byte alignment");
    SDK_ASSERTMSG(((u32)dest & 1) == 0, "destination address must be in 2-byte alignment");

    MIi_CpuSend16(src, dest, size);
}

static inline void MI_CpuFillFast (void * dest, u32 data, u32 size)
{
    SDK_ASSERTMSG((size & 3) == 0, "size & 3 must be 0");
    SDK_ASSERTMSG(((u32)dest & 3) == 0, "source address must be in 4-byte alignment");

    MIi_CpuClearFast(data, dest, size);
}

static inline void MI_CpuCopyFast (const void * src, void * dest, u32 size)
{
    SDK_ASSERTMSG((size & 3) == 0, "size & 3 must be 0");
    SDK_ASSERTMSG(((u32)src & 3) == 0, "source address must be in 4-byte alignment");
    SDK_ASSERTMSG(((u32)dest & 3) == 0, "destination address must be in 4-byte alignment");

    MIi_CpuCopyFast(src, dest, size);
}

static inline void MI_CpuClearFast (void * dest, u32 size)
{
    MI_CpuFillFast(dest, 0, size);
}

void MI_CpuFill8(void * dest, u8 data, u32 size);

void MI_CpuCopy8(const void * src, void * dest, u32 size);

static inline void MI_CpuClear8 (void * dest, u32 size)
{
    MI_CpuFill8(dest, 0, size);
}

#ifndef SDK_ASM
#define MI_ReadWord(adrs) (*(vu32 *)(adrs))
#endif

#ifndef SDK_ASM
#define MI_WriteWord(adrs, val) do {(*(vu32 *)(adrs)) = (u32)(val);} while (0)
#endif

void MI_Copy16B(register const void * pSrc, register void * pDest);
void MI_Copy32B(register const void * pSrc, register void * pDest);
void MI_Copy36B(register const void * pSrc, register void * pDest);
void MI_Copy48B(register const void * pSrc, register void * pDest);
void MI_Copy64B(register const void * pSrc, register void * pDest);
void MI_Copy128B(register const void * pSrc, register void * pDest);

void MI_Zero32B(register void * pDest);
void MI_Zero36B(register void * pDest);
void MI_Zero48B(register void * pDest);
void MI_Zero64B(register void * pDest);

#ifdef __cplusplus
}
#endif

#endif
