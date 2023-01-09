#ifndef NITRO_GXDMA_H_
#define NITRO_GXDMA_H_

#include <nitro/gx/gx.h>
#include <nitro/mi.h>

#ifdef __cplusplus
extern "C" {
#endif

static void GXi_DmaCopy32(u32 dmaNo, const void * src, void * dest, u32 size);
static void GXi_DmaCopy16(u32 dmaNo, const void * src, void * dest, u32 size);
static void GXi_DmaCopy32Async(u32 dmaNo, const void * src, void * dest, u32 size, MIDmaCallback callback, void * arg);
static void GXi_WaitDma(u32 dmaNo);

#define GX_CPU_FASTER32_SIZE 48
#define GX_CPU_FASTER16_SIZE 28

static inline void GXi_DmaCopy32 (u32 dmaNo, const void * src, void * dest, u32 size) {
    if (dmaNo != GX_DMA_NOT_USE && size > GX_CPU_FASTER32_SIZE) {
        MI_DmaCopy32(dmaNo, src, dest, size);
    } else {
        MI_CpuCopy32(src, dest, size);
    }
}

static inline void GXi_DmaCopy16 (u32 dmaNo, const void * src, void * dest, u32 size) {
    if (dmaNo != GX_DMA_NOT_USE && size > GX_CPU_FASTER16_SIZE) {
        MI_DmaCopy16(dmaNo, src, dest, size);
    } else {
        MI_CpuCopy16(src, dest, size);
    }
}

static inline void GXi_DmaCopy32Async (u32 dmaNo, const void * src, void * dest, u32 size, MIDmaCallback callback, void * arg) {
    if (dmaNo != GX_DMA_NOT_USE) {
        MI_DmaCopy32Async(dmaNo, src, dest, size, callback, arg);
    } else {
        MI_CpuCopy32(src, dest, size);
    }
}

static inline void GXi_WaitDma (u32 dmaNo) {
    if (dmaNo != GX_DMA_NOT_USE) {
        MI_WaitDma(dmaNo);
    }
}

#ifdef __cplusplus
}
#endif

#endif
