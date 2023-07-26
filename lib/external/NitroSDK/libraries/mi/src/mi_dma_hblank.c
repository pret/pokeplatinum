#ifdef SDK_ARM9
#include <nitro.h>

#include "include/mi_dma.h"

void MI_HBlankDmaCopy32 (u32 dmaNo, const void * src, void * dest, u32 size) {
    MIi_ASSERT_DMANO(dmaNo);
    MIi_ASSERT_SRC_ALIGN4(src);
    MIi_ASSERT_DEST_ALIGN4(dest);
    MIi_WARNING_ADDRINTCM(src, size);
    MIi_WARNING_ADDRINTCM(dest, size);

    MIi_CheckAnotherAutoDMA(dmaNo, MI_DMA_TIMING_H_BLANK);
    MIi_CheckDma0SourceAddress(dmaNo, (u32)src, size, MI_DMA_SRC_INC);
    if (size == 0) {
        return;
    }

    MI_WaitDma(dmaNo);
    MIi_DmaSetParams(dmaNo, (u32)src, (u32)dest, MI_CNT_HBCOPY32(size));
}

void MI_HBlankDmaCopy16 (u32 dmaNo, const void * src, void * dest, u32 size) {
    MIi_ASSERT_DMANO(dmaNo);
    MIi_ASSERT_SRC_ALIGN2(src);
    MIi_ASSERT_DEST_ALIGN2(dest);
    MIi_WARNING_ADDRINTCM(src, size);
    MIi_WARNING_ADDRINTCM(dest, size);

    MIi_CheckAnotherAutoDMA(dmaNo, MI_DMA_TIMING_H_BLANK);
    MIi_CheckDma0SourceAddress(dmaNo, (u32)src, size, MI_DMA_SRC_INC);
    if (size == 0) {
        return;
    }

    MI_WaitDma(dmaNo);
    MIi_DmaSetParams(dmaNo, (u32)src, (u32)dest, MI_CNT_HBCOPY16(size));
}

void MI_HBlankDmaCopy32If (u32 dmaNo, const void * src, void * dest, u32 size) {
    MIi_ASSERT_DMANO(dmaNo);
    MIi_ASSERT_SRC_ALIGN4(src);
    MIi_ASSERT_DEST_ALIGN4(dest);
    MIi_WARNING_ADDRINTCM(src, size);
    MIi_WARNING_ADDRINTCM(dest, size);

    MIi_CheckAnotherAutoDMA(dmaNo, MI_DMA_TIMING_H_BLANK);
    MIi_CheckDma0SourceAddress(dmaNo, (u32)src, size, MI_DMA_SRC_INC);
    if (size == 0) {
        return;
    }

    MI_WaitDma(dmaNo);
    MIi_DmaSetParams(dmaNo, (u32)src, (u32)dest, MI_CNT_HBCOPY32_IF(size));
}

void MI_HBlankDmaCopy16If (u32 dmaNo, const void * src, void * dest, u32 size) {
    MIi_ASSERT_DMANO(dmaNo);
    MIi_ASSERT_SRC_ALIGN2(src);
    MIi_ASSERT_DEST_ALIGN2(dest);
    MIi_WARNING_ADDRINTCM(src, size);
    MIi_WARNING_ADDRINTCM(dest, size);

    MIi_CheckAnotherAutoDMA(dmaNo, MI_DMA_TIMING_H_BLANK);
    MIi_CheckDma0SourceAddress(dmaNo, (u32)src, size, MI_DMA_SRC_INC);
    if (size == 0) {
        return;
    }

    MI_WaitDma(dmaNo);
    MIi_DmaSetParams(dmaNo, (u32)src, (u32)dest, MI_CNT_HBCOPY16_IF(size));
}
#endif
