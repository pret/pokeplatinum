#ifndef NITRO_MI_DMA_H_
#define NITRO_MI_DMA_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/misc.h>
#include <nitro/types.h>
#include <nitro/memorymap.h>

#define MI_DMA_MAX_NUM 3

#define MI_DMA_ENABLE (1UL << REG_MI_DMA0CNT_E_SHIFT)
#define MI_DMA_IF_ENABLE (1UL << REG_MI_DMA0CNT_I_SHIFT)

#ifdef SDK_ARM9
#  define MI_DMA_TIMING_MASK (REG_MI_DMA0CNT_MODE_MASK)
#  define MI_DMA_TIMING_SHIFT (REG_MI_DMA0CNT_MODE_SHIFT)
#  define MI_DMA_TIMING_IMM (0UL << REG_MI_DMA0CNT_MODE_SHIFT)
#  define MI_DMA_TIMING_V_BLANK (1UL << REG_MI_DMA0CNT_MODE_SHIFT)
#  define MI_DMA_TIMING_H_BLANK (2UL << REG_MI_DMA0CNT_MODE_SHIFT)
#  define MI_DMA_TIMING_DISP (3UL << REG_MI_DMA0CNT_MODE_SHIFT)
#  define MI_DMA_TIMING_DISP_MMEM (4UL << REG_MI_DMA0CNT_MODE_SHIFT)
#  define MI_DMA_TIMING_CARD (5UL << REG_MI_DMA0CNT_MODE_SHIFT)
#  define MI_DMA_TIMING_CARTRIDGE (6UL << REG_MI_DMA0CNT_MODE_SHIFT)
#  define MI_DMA_TIMING_GXFIFO (7UL << REG_MI_DMA0CNT_MODE_SHIFT)
#  define MIi_DMA_TIMING_ANY (u32)(~0)
#else
#  define MI_DMA_TIMING_MASK (REG_MI_DMA0CNT_TIMING_MASK)
#  define MI_DMA_TIMING_SHIFT (REG_MI_DMA0CNT_TIMING_SHIFT)
#  define MI_DMA_TIMING_IMM (0UL << REG_MI_DMA0CNT_TIMING_SHIFT)
#  define MI_DMA_TIMING_V_BLANK (1UL << REG_MI_DMA0CNT_TIMING_SHIFT)
#  define MI_DMA_TIMING_CARD (2UL << REG_MI_DMA0CNT_TIMING_SHIFT)
#  define MI_DMA_TIMING_WIRELESS (3UL << REG_MI_DMA0CNT_TIMING_SHIFT)
#  define MI_DMA_TIMING_CARTRIDGE MI_DMA_TIMING_WIRELESS
#endif

#define MI_DMA_16BIT_BUS (0UL << REG_MI_DMA0CNT_SB_SHIFT)
#define MI_DMA_32BIT_BUS (1UL << REG_MI_DMA0CNT_SB_SHIFT)

#define MI_DMA_CONTINUOUS_OFF (0UL << REG_MI_DMA0CNT_CM_SHIFT)
#define MI_DMA_CONTINUOUS_ON (1UL << REG_MI_DMA0CNT_CM_SHIFT)

#define MI_DMA_SRC_INC (0UL << REG_MI_DMA0CNT_SAR_SHIFT)
#define MI_DMA_SRC_DEC (1UL << REG_MI_DMA0CNT_SAR_SHIFT)
#define MI_DMA_SRC_FIX (2UL << REG_MI_DMA0CNT_SAR_SHIFT)
#define MI_DMA_DEST_INC (0UL << REG_MI_DMA0CNT_DAR_SHIFT)
#define MI_DMA_DEST_DEC (1UL << REG_MI_DMA0CNT_DAR_SHIFT)
#define MI_DMA_DEST_FIX (2UL << REG_MI_DMA0CNT_DAR_SHIFT)
#define MI_DMA_DEST_RELOAD (3UL << REG_MI_DMA0CNT_DAR_SHIFT)

#define MI_DMA_COUNT_MASK (REG_MI_DMA0CNT_WORDCNT_MASK)
#define MI_DMA_COUNT_SHIFT (REG_MI_DMA0CNT_WORDCNT_SHIFT)

#define MI_DMA_SINC_DINC_16 (MI_DMA_SRC_INC | MI_DMA_DEST_INC | MI_DMA_16BIT_BUS)
#define MI_DMA_SFIX_DINC_16 (MI_DMA_SRC_FIX | MI_DMA_DEST_INC | MI_DMA_16BIT_BUS)
#define MI_DMA_SINC_DFIX_16 (MI_DMA_SRC_INC | MI_DMA_DEST_FIX | MI_DMA_16BIT_BUS)
#define MI_DMA_SFIX_DFIX_16 (MI_DMA_SRC_FIX | MI_DMA_DEST_FIX | MI_DMA_16BIT_BUS)
#define MI_DMA_SINC_DINC_32 (MI_DMA_SRC_INC | MI_DMA_DEST_INC | MI_DMA_32BIT_BUS)
#define MI_DMA_SFIX_DINC_32 (MI_DMA_SRC_FIX | MI_DMA_DEST_INC | MI_DMA_32BIT_BUS)
#define MI_DMA_SINC_DFIX_32 (MI_DMA_SRC_INC | MI_DMA_DEST_FIX | MI_DMA_32BIT_BUS)
#define MI_DMA_SFIX_DFIX_32 (MI_DMA_SRC_FIX | MI_DMA_DEST_FIX | MI_DMA_32BIT_BUS)

#define MI_DMA_IMM16ENABLE (MI_DMA_ENABLE | MI_DMA_TIMING_IMM | MI_DMA_16BIT_BUS)
#define MI_DMA_IMM32ENABLE (MI_DMA_ENABLE | MI_DMA_TIMING_IMM | MI_DMA_32BIT_BUS)

#define MI_CNT_CLEAR16(size) (MI_DMA_IMM16ENABLE | MI_DMA_SRC_FIX | MI_DMA_DEST_INC | ((size) / 2))
#define MI_CNT_CLEAR32(size) (MI_DMA_IMM32ENABLE | MI_DMA_SRC_FIX | MI_DMA_DEST_INC | ((size) / 4))
#define MI_CNT_CLEAR16_IF(size) (MI_CNT_CLEAR16((size)) | MI_DMA_IF_ENABLE)
#define MI_CNT_CLEAR32_IF(size) (MI_CNT_CLEAR32((size)) | MI_DMA_IF_ENABLE)

#define MI_CNT_COPY16(size) (MI_DMA_IMM16ENABLE | MI_DMA_SRC_INC | MI_DMA_DEST_INC | ((size) / 2))
#define MI_CNT_COPY32(size) (MI_DMA_IMM32ENABLE | MI_DMA_SRC_INC | MI_DMA_DEST_INC | ((size) / 4))
#define MI_CNT_COPY16_IF(size) (MI_CNT_COPY16((size)) | MI_DMA_IF_ENABLE)
#define MI_CNT_COPY32_IF(size) (MI_CNT_COPY32((size)) | MI_DMA_IF_ENABLE)

#define MI_CNT_SEND16(size) (MI_DMA_IMM16ENABLE | MI_DMA_SRC_INC | MI_DMA_DEST_FIX | ((size) / 2))
#define MI_CNT_SEND32(size) (MI_DMA_IMM32ENABLE | MI_DMA_SRC_INC | MI_DMA_DEST_FIX | ((size) / 4))
#define MI_CNT_SEND16_IF(size) (MI_CNT_SEND16((size)) | MI_DMA_IF_ENABLE)
#define MI_CNT_SEND32_IF(size) (MI_CNT_SEND32((size)) | MI_DMA_IF_ENABLE)

#ifdef SDK_ARM9
#  define MI_CNT_HBCOPY16(size) (MI_DMA_ENABLE | MI_DMA_TIMING_H_BLANK | MI_DMA_SRC_INC | MI_DMA_DEST_RELOAD | MI_DMA_CONTINUOUS_ON | MI_DMA_16BIT_BUS | ((size) / 2))
#  define MI_CNT_HBCOPY32(size) (MI_DMA_ENABLE | MI_DMA_TIMING_H_BLANK | MI_DMA_SRC_INC | MI_DMA_DEST_RELOAD | MI_DMA_CONTINUOUS_ON | MI_DMA_32BIT_BUS | ((size) / 4))
#  define MI_CNT_HBCOPY16_IF(size) (MI_CNT_HBCOPY16((size)) | MI_DMA_IF_ENABLE)
#  define MI_CNT_HBCOPY32_IF(size) (MI_CNT_HBCOPY32((size)) | MI_DMA_IF_ENABLE)
#endif

#define MI_CNT_VBCOPY16(size) (MI_DMA_ENABLE | MI_DMA_TIMING_V_BLANK | MI_DMA_SRC_INC | MI_DMA_DEST_INC | MI_DMA_16BIT_BUS | ((size) / 2))
#define MI_CNT_VBCOPY32(size) (MI_DMA_ENABLE | MI_DMA_TIMING_V_BLANK | MI_DMA_SRC_INC | MI_DMA_DEST_INC | MI_DMA_32BIT_BUS | ((size) / 4))
#define MI_CNT_VBCOPY16_IF(size) (MI_CNT_VBCOPY16((size)) | MI_DMA_IF_ENABLE)
#define MI_CNT_VBCOPY32_IF(size) (MI_CNT_VBCOPY32((size)) | MI_DMA_IF_ENABLE)

#define MI_CNT_CARDRECV32(size) (MI_DMA_ENABLE | MI_DMA_TIMING_CARD | MI_DMA_SRC_FIX | MI_DMA_DEST_INC | MI_DMA_32BIT_BUS | ((size) / 4))

#ifdef SDK_ARM9
#  define MI_CNT_MMCOPY(size) (MI_DMA_ENABLE | MI_DMA_TIMING_DISP_MMEM | MI_DMA_SRC_INC | MI_DMA_DEST_FIX | MI_DMA_CONTINUOUS_ON | MI_DMA_32BIT_BUS | (4))
#endif

#ifdef SDK_ARM9
#  define MI_CNT_GXCOPY(size) (MI_DMA_ENABLE | MI_DMA_TIMING_GXFIFO | MI_DMA_SRC_INC | MI_DMA_DEST_FIX | MI_DMA_32BIT_BUS | ((size) / 4))
#  define MI_CNT_GXCOPY_IF(size) (MI_CNT_GXCOPY(size) | MI_DMA_IF_ENABLE)
#endif

typedef void (* MIDmaCallback) (void *);

void MI_DmaFill32(u32 dmaNo, void * dest, u32 data, u32 size);

void MI_DmaCopy32(u32 dmaNo, const void * src, void * dest, u32 size);

static inline void MI_DmaClear32 (u32 dmaNo, void * dest, u32 size)
{
    MI_DmaFill32(dmaNo, dest, 0, size);
}

void MI_DmaSend32(u32 dmaNo, const void * src, volatile void * dest, u32 size);

void MI_DmaFill16(u32 dmaNo, void * dest, u16 data, u32 size);

void MI_DmaCopy16(u32 dmaNo, const void * src, void * dest, u32 size);

static inline void MI_DmaClear16 (u32 dmaNo, void * dest, u32 size)
{
    MI_DmaFill16(dmaNo, dest, 0, size);
}

void MI_DmaSend16(u32 dmaNo, const void * src, volatile void * dest, u32 size);

void MI_DmaFill32Async(u32 dmaNo, void * dest, u32 data, u32 size, MIDmaCallback callback,
                       void * arg);

void MI_DmaCopy32Async(u32 dmaNo, const void * src, void * dest, u32 size, MIDmaCallback callback,
                       void * arg);

static inline void MI_DmaClear32Async (u32 dmaNo, void * dest, u32 size, MIDmaCallback callback,
                                       void * arg)
{
    MI_DmaFill32Async(dmaNo, dest, 0, size, callback, arg);
}

void MI_DmaSend32Async(u32 dmaNo, const void * src, volatile void * dest, u32 size,
                       MIDmaCallback callback, void * arg);

void MI_DmaFill16Async(u32 dmaNo, void * dest, u16 data, u32 size, MIDmaCallback callback,
                       void * arg);

void MI_DmaCopy16Async(u32 dmaNo, const void * src, void * dest, u32 size, MIDmaCallback callback,
                       void * arg);

static inline void MI_DmaClear16Async (u32 dmaNo, void * dest, u32 size, MIDmaCallback callback,
                                       void * arg)
{
    MI_DmaFill16Async(dmaNo, dest, 0, size, callback, arg);
}

void MI_DmaSend16Async(u32 dmaNo, const void * src, volatile void * dest, u32 size,
                       MIDmaCallback callback, void * arg);

void MI_HBlankDmaCopy32(u32 dmaNo, const void * src, void * dest, u32 size);

void MI_HBlankDmaCopy16(u32 dmaNo, const void * src, void * dest, u32 size);

void MI_HBlankDmaCopy32If(u32 dmaNo, const void * src, void * dest, u32 size);

void MI_HBlankDmaCopy16If(u32 dmaNo, const void * src, void * dest, u32 size);

void MI_VBlankDmaCopy32(u32 dmaNo, const void * src, void * dest, u32 size);

void MI_VBlankDmaCopy16(u32 dmaNo, const void * src, void * dest, u32 size);

void MI_VBlankDmaCopy32Async(u32 dmaNo, const void * src, void * dest, u32 size,
                             MIDmaCallback callback, void * arg);

void MI_VBlankDmaCopy16Async(u32 dmaNo, const void * src, void * dest, u32 size,
                             MIDmaCallback callback, void * arg);

void MIi_CardDmaCopy32(u32 dmaNo, const void * src, void * dest, u32 size);

void MI_DispMemDmaCopy(u32 dmaNo, const void * src);

void MI_SendGXCommand(u32 dmaNo, const void * src, u32 commandLength);

void MI_SendGXCommandAsync(u32 dmaNo, const void * src, u32 commandLength, MIDmaCallback callback,
                           void * arg);

void MI_SendGXCommandFast(u32 dmaNo, const void * src, u32 commandLength);

void MI_SendGXCommandAsyncFast(u32 dmaNo, const void * src, u32 commandLength,
                               MIDmaCallback callback, void * arg);

BOOL MI_IsDmaBusy(u32 dmaNo);

void MI_WaitDma(u32 dmaNo);

void MI_StopDma(u32 dmaNo);

#ifdef __cplusplus
}
#endif

#endif
