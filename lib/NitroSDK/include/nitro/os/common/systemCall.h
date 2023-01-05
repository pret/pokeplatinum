#ifndef NITRO_OS_SYSTEMCALL_H_
#define NITRO_OS_SYSTEMCALL_H_

#include <nitro/mi/stream.h>
#include <nitro/mi/uncompress.h>
#include <nitro/os/common/system.h>

#ifdef __cplusplus
extern "C" {
#endif

#ifdef SDK_SVC_WAITVBLANK_COMPATIBLE
void SVC_WaitVBlankIntr(void);
#else
#define SVC_WaitVBlankIntr OS_WaitVBlankIntr
#endif

void SVC_WaitByLoop(s32 count);

void SVC_CpuSet(const void * srcp, void * destp, u32 dmaCntData);

void SVC_CpuSetFast(const void * srcp, void * destp, u32 dmaCntData);

#define SVC_CpuClear(data, destp, size, bit)                  \
    do {                                                             \
        vu ## bit tmp = (vu ## bit )(data);                             \
        SVC_CpuSet((u8 *)&(tmp), (u8 *)(destp), (                   \
                       MI_DMA_SRC_FIX |                                 \
                       MI_DMA_ ## bit ## BIT_BUS | ((size) / ((bit) / 8) & 0x1fffff)));  \
    } while (0)

#define SVC_CpuClearArray(data, destp, bit)                   \
    SVC_CpuClear(data, destp, sizeof(destp), bit)

#define SVC_CpuCopy(srcp, destp, size, bit)                   \
                                                                \
    SVC_CpuSet((u8 *)(srcp), (u8 *)(destp), (                  \
                   MI_DMA_SRC_INC |                                 \
                   MI_DMA_ ## bit ## BIT_BUS | ((size) / ((bit) / 8) & 0x1fffff)))

#define SVC_CpuCopyArray(srcp, destp, bit)                  \
    SVC_CpuCopy(srcp, destp, sizeof(srcp), bit)

#define SVC_CpuClearFast(data, destp, size)                   \
    do {                                                             \
        vu32 tmp = (vu32 )(data);                                   \
        SVC_CpuSetFast((u8 *)&(tmp), (u8 *)(destp), (               \
                           MI_DMA_SRC_FIX | ((size) / (32 / 8) & 0x1fffff)));   \
    } while (0)

#define SVC_CpuClearArrayFast(data, destp)                    \
    SVC_CpuClearFast(data, destp, sizeof(destp))

#define SVC_CpuCopyFast(srcp, destp, size)                    \
                                                                \
    SVC_CpuSetFast((u8 *)(srcp), (u8 *)(destp), (              \
                       MI_DMA_SRC_INC | ((size) / (32 / 8) & 0x1fffff)))

#define SVC_CpuCopyArrayFast(srcp, destp)                     \
    SVC_CpuCopyFast(srcp, destp, sizeof(srcp))

void SVC_UnpackBits(const void * srcp, void * destp, const MIUnpackBitsParam * paramp);

void SVC_UncompressLZ8(const void * srcp, void * destp);

void SVC_UncompressRL8(const void * srcp, void * destp);

#ifdef SDK_TS

s32 SVC_UncompressLZ16FromDevice(const void * srcp, void * destp, const void * paramp,
                                 const MIReadStreamCallbacks * callbacks);

s32 SVC_UncompressRL16FromDevice(const void * srcp, void * destp, const void * paramp,
                                 const MIReadStreamCallbacks * callbacks);

s32 SVC_UncompressHuffmanFromDevice(const void * srcp, void * destp, u8 * tableBufp,
                                    const MIReadStreamCallbacks * callbacks);

u16 SVC_GetCRC16(u32 start, const void * datap, u32 size);

BOOL SVC_IsMmemExpanded(void);

#endif

#if defined(SDK_ARM7) || (defined(SDK_ARM9) && defined(SDK_TS))

s32 SVC_Div(s32 number, s32 denom);

s32 SVC_DivRem(s32 number, s32 denom);

u16 SVC_Sqrt(u32 src);

void SVC_Halt(void);

#endif

#ifdef SDK_ARM7

void SVC_Sleep(void);

void SVC_SetSoundBias(s32 stepLoops);

void SVC_ResetSoundBias(s32 stepLoops);

#ifdef SDK_TS

s16 SVC_GetSinTable(int index);
u16 SVC_GetPitchTable(int index);
u8 SVC_GetVolumeTable(int index);

#endif

#endif

#ifdef __cplusplus
}
#endif

#endif
