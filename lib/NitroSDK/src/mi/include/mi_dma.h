#ifndef NITRO_COMMON_MI_DMA_H_
#define NITRO_COMMON_MI_DMA_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro.h>

#ifdef SDK_ARM9
# ifdef SDK_TS
#  define MIi_DMA_CLEAR_DATA_BUF REG_DMA0_CLR_DATA_ADDR
# else
#  define MIi_DMA_CLEAR_DATA_BUF HW_DMA_CLEAR_DATA_BUF
# endif
#else
# define MIi_DMA_CLEAR_DATA_BUF HW_PRV_WRAM_DMA_CLEAR_DATA_BUF
#endif

typedef union {
    u32 b32;
    u16 b16;
} MIiDmaClearSrc;

#ifdef SDK_ARM9

void MIi_DmaSetParams(u32 dmaNo, u32 src, u32 dest, u32 ctrl);
void MIi_DmaSetParams_wait(u32 dmaNo, u32 src, u32 dest, u32 ctrl);
void MIi_DmaSetParams_noInt(u32 dmaNo, u32 src, u32 dest, u32 ctrl);
void MIi_DmaSetParams_wait_noInt(u32 dmaNo, u32 src, u32 dest, u32 ctrl);

#else
static inline void MIi_DmaSetParams (u32 dmaNo, u32 src, u32 dest, u32 ctrl) {
    OSIntrMode enabled = OS_DisableInterrupts();
    vu32 * p = (vu32 *)((u32)REG_DMA0SAD_ADDR + dmaNo * 12);
    *p = (vu32)src;
    *(p + 1) = (vu32)dest;
    *(p + 2) = (vu32)ctrl;
    (void)OS_RestoreInterrupts(enabled);
}

static inline void MIi_DmaSetParams_wait (u32 dmaNo, u32 src, u32 dest, u32 ctrl) {
    OSIntrMode enabled = OS_DisableInterrupts();
    vu32 * p = (vu32 *)((u32)REG_DMA0SAD_ADDR + dmaNo * 12);
    *p = (vu32)src;
    *(p + 1) = (vu32)dest;
    *(p + 2) = (vu32)ctrl;

    {
        u32 dummy = reg_MI_DMA0SAD;
    }

    (void)OS_RestoreInterrupts(enabled);
}

static inline void MIi_DmaSetParams_noInt (u32 dmaNo, u32 src, u32 dest, u32 ctrl) {
    vu32 * p = (vu32 *)((u32)REG_DMA0SAD_ADDR + dmaNo * 12);
    *p = (vu32)src;
    *(p + 1) = (vu32)dest;
    *(p + 2) = (vu32)ctrl;
}

static inline void MIi_DmaSetParams_wait_noInt (u32 dmaNo, u32 src, u32 dest, u32 ctrl) {
    vu32 * p = (vu32 *)((u32)REG_DMA0SAD_ADDR + dmaNo * 12);
    *p = (vu32)src;
    *(p + 1) = (vu32)dest;
    *(p + 2) = (vu32)ctrl;

    {
        u32 dummy = reg_MI_DMA0SAD;
    }
}
#endif

static inline void MIi_DmaSetParams_src32 (u32 dmaNo, u32 data, u32 dest, u32 ctrl) {
    OSIntrMode enabled = OS_DisableInterrupts();

    MIiDmaClearSrc * srcp = (MIiDmaClearSrc *)((u32)MIi_DMA_CLEAR_DATA_BUF + dmaNo * 4);
    srcp->b32 = data;
    MIi_DmaSetParams_noInt(dmaNo, (u32)srcp, dest, ctrl);

    (void)OS_RestoreInterrupts(enabled);
}

static inline void MIi_DmaSetParams_src16 (u32 dmaNo, u16 data, u32 dest, u32 ctrl) {
    OSIntrMode enabled = OS_DisableInterrupts();

    MIiDmaClearSrc * srcp = (MIiDmaClearSrc *)((u32)MIi_DMA_CLEAR_DATA_BUF + dmaNo * 4);
    srcp->b16 = data;
    MIi_DmaSetParams_noInt(dmaNo, (u32)srcp, dest, ctrl);

    (void)OS_RestoreInterrupts(enabled);
}

static inline void MIi_DmaSetParams_wait_src32 (u32 dmaNo, u32 data, u32 dest, u32 ctrl) {
    OSIntrMode enabled = OS_DisableInterrupts();

    MIiDmaClearSrc * srcp = (MIiDmaClearSrc *)((u32)MIi_DMA_CLEAR_DATA_BUF + dmaNo * 4);
    srcp->b32 = data;
    MIi_DmaSetParams_wait_noInt(dmaNo, (u32)srcp, dest, ctrl);

    (void)OS_RestoreInterrupts(enabled);
}

static inline void MIi_DmaSetParams_wait_src16 (u32 dmaNo, u16 data, u32 dest, u32 ctrl) {
    OSIntrMode enabled = OS_DisableInterrupts();

    MIiDmaClearSrc * srcp = (MIiDmaClearSrc *)((u32)MIi_DMA_CLEAR_DATA_BUF + dmaNo * 4);
    srcp->b16 = data;
    MIi_DmaSetParams_wait_noInt(dmaNo, (u32)srcp, dest, ctrl);

    (void)OS_RestoreInterrupts(enabled);
}

extern void OSi_EnterDmaCallback(u32 dmaNo, MIDmaCallback callback, void * arg);

static inline void MIi_CallCallback (MIDmaCallback callback, void * arg) {
    if (callback) {
        (callback)(arg);
    }
}

#define MIi_Wait_BeforeDMA(dmaCntp, dmaNo)                  \
    do {                                                      \
        dmaCntp = &((vu32 *)REG_DMA0SAD_ADDR)[dmaNo * 3 + 2];    \
        MIi_ASSERT_DMANO(dmaNo);                              \
        while (*dmaCntp & REG_MI_DMA0CNT_E_MASK) {}           \
    }while (0)

#define MIi_Wait_AfterDMA(dmaCntp)                          \
    do {                                                      \
        while (*dmaCntp & REG_MI_DMA0CNT_E_MASK) {}           \
    }while (0)

#define MIi_ASSERT_DMANO(dmaNo) SDK_ASSERTMSG((dmaNo) <= MI_DMA_MAX_NUM, "illegal DMA No.")
#define MIi_ASSERT_MUL2(size) SDK_ASSERTMSG(((size) & 1) == 0, "size & 1 must be 0")
#define MIi_ASSERT_MUL4(size) SDK_ASSERTMSG(((size) & 3) == 0, "size & 3 must be 0")
#define MIi_ASSERT_SRC_ALIGN512(src) SDK_ASSERTMSG(((u32)(src) & 511) == 0, "source address must be in 512-byte alignment")
#define MIi_ASSERT_SRC_ALIGN4(src) SDK_ASSERTMSG(((u32)(src) & 3) == 0, "source address must be in 4-byte alignment")
#define MIi_ASSERT_SRC_ALIGN2(src) SDK_ASSERTMSG(((u32)(src) & 1) == 0, "source address must be in 2-byte alignment")
#define MIi_ASSERT_DEST_ALIGN4(dest) SDK_ASSERTMSG(((u32)(dest) & 3) == 0, "destination address must be in 4-byte alignment")
#define MIi_ASSERT_DEST_ALIGN2(dest) SDK_ASSERTMSG(((u32)(dest) & 1) == 0, "destination address must be in 2-byte alignment")

#ifdef SDK_ARM9
#  define MIi_ASSERT_SIZE(dmaNo, size) SDK_ASSERTMSG((size) <= 0x1fffff, "size too large");
#else
#  define MIi_ASSERT_SIZE(dmaNo, size)                        \
    do{                                                         \
        if (dmaNo <= 2)                                       \
        {                                                       \
            SDK_ASSERTMSG((size) <= 0x3fff, "size too large"); \
        }                                                       \
        else                                                    \
        {                                                       \
            SDK_ASSERTMSG((size) <= 0xffff, "size too large"); \
        }                                                       \
    } while (0)
#endif

#if defined(SDK_ARM9) && defined(SDK_DEBUG)
void MIi_CheckAddressInTCM(u32 addr, u32 size);
#define MIi_WARNING_ADDRINTCM(addr, size) MIi_CheckAddressInTCM((u32)addr, (u32)size)
#else
#define MIi_WARNING_ADDRINTCM(addr, size) ((void)0)
#endif

#ifdef SDK_ARM9
void MIi_CheckAnotherAutoDMA(u32 dmaNo, u32 dmaType);
#endif

void MIi_CheckDma0SourceAddress(u32 dmaNo, u32 src, u32 size, u32 dir);

#define MIi_DUMMY_DMA_NO 0
#define MIi_DUMMY_SRC 0
#define MIi_DUMMY_DEST 0
#define MIi_DUMMY_CNT (MI_DMA_ENABLE | MI_DMA_SRC_FIX | MI_DMA_DEST_FIX | MI_DMA_16BIT_BUS | 1)

#ifdef __cplusplus
}
#endif

#endif
