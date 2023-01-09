#ifndef G2DI_DMA_H_
#define G2DI_DMA_H_

#include <nitro.h>

#ifdef __cplusplus
extern "C" {
#endif

NNS_G2D_INLINE void NNSi_G2dDmaCopy16 (u32 dmaNo, const void * src, void * dest, u32 size) {
    if (dmaNo != GX_DMA_NOT_USE) {
        MI_DmaCopy16(dmaNo, src, dest, size);
    } else {
        MI_CpuCopy16(src, dest, size);
    }
}

NNS_G2D_INLINE void NNSi_G2dDmaFill32 (u32 dmaNo, void * dest, u32 data, u32 size) {
    if (dmaNo != GX_DMA_NOT_USE) {
        MI_DmaFill32(dmaNo, dest, data, size);
    } else {
        MI_CpuFill32(dest, data, size);
    }
}

#ifdef __cplusplus
}
#endif

#endif
