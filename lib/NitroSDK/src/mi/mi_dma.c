#include <nitro.h>

#include "include/mi_dma.h"

#ifdef SDK_ARM9
#include <nitro/itcm_begin.h>

void MIi_DmaSetParams (u32 dmaNo, u32 src, u32 dest, u32 ctrl) {
    OSIntrMode enabled = OS_DisableInterrupts();
    vu32 * p = (vu32 *)((u32)REG_DMA0SAD_ADDR + dmaNo * 12);
    *p = (vu32)src;
    *(p + 1) = (vu32)dest;
    *(p + 2) = (vu32)ctrl;
    (void)OS_RestoreInterrupts(enabled);
}

void MIi_DmaSetParams_wait (u32 dmaNo, u32 src, u32 dest, u32 ctrl) {
    OSIntrMode enabled = OS_DisableInterrupts();
    vu32 * p = (vu32 *)((u32)REG_DMA0SAD_ADDR + dmaNo * 12);
    *p = (vu32)src;
    *(p + 1) = (vu32)dest;
    *(p + 2) = (vu32)ctrl;

    {
        u32 dummy = reg_MI_DMA0SAD;
    }
    {
        u32 dummy = reg_MI_DMA0SAD;
    }

    if (dmaNo == MIi_DUMMY_DMA_NO) {
        *p = (vu32)MIi_DUMMY_SRC;
        *(p + 1) = (vu32)MIi_DUMMY_DEST;
        *(p + 2) = (vu32)MIi_DUMMY_CNT;
    }

    (void)OS_RestoreInterrupts(enabled);
}

void MIi_DmaSetParams_noInt (u32 dmaNo, u32 src, u32 dest, u32 ctrl) {
    vu32 * p = (vu32 *)((u32)REG_DMA0SAD_ADDR + dmaNo * 12);
    *p = (vu32)src;
    *(p + 1) = (vu32)dest;
    *(p + 2) = (vu32)ctrl;
}

void MIi_DmaSetParams_wait_noInt (u32 dmaNo, u32 src, u32 dest, u32 ctrl) {
    vu32 * p = (vu32 *)((u32)REG_DMA0SAD_ADDR + dmaNo * 12);
    *p = (vu32)src;
    *(p + 1) = (vu32)dest;
    *(p + 2) = (vu32)ctrl;

    {
        u32 dummy = reg_MI_DMA0SAD;
    }
    {
        u32 dummy = reg_MI_DMA0SAD;
    }

    if (dmaNo == MIi_DUMMY_DMA_NO) {
        *p = (vu32)MIi_DUMMY_SRC;
        *(p + 1) = (vu32)MIi_DUMMY_DEST;
        *(p + 2) = (vu32)MIi_DUMMY_CNT;
    }

    {
        u32 dummy = reg_MI_DMA0SAD;
    }
    {
        u32 dummy = reg_MI_DMA0SAD;
    }
}

#include <nitro/itcm_end.h>
#endif

void MI_DmaFill32 (u32 dmaNo, void * dest, u32 data, u32 size) {
    vu32 * dmaCntp;

    MIi_ASSERT_DMANO(dmaNo);
    MIi_ASSERT_MUL4(size);
    MIi_ASSERT_SIZE(dmaNo, size / 4);
    MIi_ASSERT_DEST_ALIGN4(dest);
    MIi_WARNING_ADDRINTCM(dest, size);

    if (size == 0) {
        return;
    }

    MIi_Wait_BeforeDMA(dmaCntp, dmaNo);
    MIi_DmaSetParams_wait_src32(dmaNo, data, (u32)dest, MI_CNT_CLEAR32(size));
    MIi_Wait_AfterDMA(dmaCntp);
}

void MI_DmaCopy32 (u32 dmaNo, const void * src, void * dest, u32 size) {
    vu32 * dmaCntp;

    MIi_ASSERT_DMANO(dmaNo);
    MIi_ASSERT_MUL4(size);
    MIi_ASSERT_SIZE(dmaNo, size / 4);
    MIi_ASSERT_SRC_ALIGN4(src);
    MIi_ASSERT_DEST_ALIGN4(dest);
    MIi_WARNING_ADDRINTCM(src, size);
    MIi_WARNING_ADDRINTCM(dest, size);

    MIi_CheckDma0SourceAddress(dmaNo, (u32)src, size, MI_DMA_SRC_INC);

    if (size == 0) {
        return;
    }

    MIi_Wait_BeforeDMA(dmaCntp, dmaNo);
    MIi_DmaSetParams_wait(dmaNo, (u32)src, (u32)dest, MI_CNT_COPY32(size));
    MIi_Wait_AfterDMA(dmaCntp);
}

void MI_DmaSend32 (u32 dmaNo, const void * src, volatile void * dest, u32 size) {
    vu32 * dmaCntp;

    MIi_ASSERT_DMANO(dmaNo);
    MIi_ASSERT_MUL4(size);
    MIi_ASSERT_SIZE(dmaNo, size / 4);
    MIi_ASSERT_SRC_ALIGN4(src);
    MIi_ASSERT_DEST_ALIGN4(dest);
    MIi_WARNING_ADDRINTCM(src, size);
    MIi_WARNING_ADDRINTCM(dest, size);

    MIi_CheckDma0SourceAddress(dmaNo, (u32)src, size, MI_DMA_SRC_INC);

    if (size == 0) {
        return;
    }

    MIi_Wait_BeforeDMA(dmaCntp, dmaNo);
    MIi_DmaSetParams_wait(dmaNo, (u32)src, (u32)dest, MI_CNT_SEND32(size));
    MIi_Wait_AfterDMA(dmaCntp);
}

void MI_DmaFill16 (u32 dmaNo, void * dest, u16 data, u32 size) {
    vu32 * dmaCntp;

    MIi_ASSERT_DMANO(dmaNo);
    MIi_ASSERT_MUL2(size);
    MIi_ASSERT_SIZE(dmaNo, size / 2);
    MIi_ASSERT_DEST_ALIGN2(dest);
    MIi_WARNING_ADDRINTCM(dest, size);

    if (size == 0) {
        return;
    }

    MIi_Wait_BeforeDMA(dmaCntp, dmaNo);
    MIi_DmaSetParams_wait_src32(dmaNo, data, (u32)dest, MI_CNT_CLEAR16(size));
    MIi_Wait_AfterDMA(dmaCntp);
}

void MI_DmaCopy16 (u32 dmaNo, const void * src, void * dest, u32 size) {
    vu32 * dmaCntp;

    MIi_ASSERT_DMANO(dmaNo);
    MIi_ASSERT_MUL2(size);
    MIi_ASSERT_SIZE(dmaNo, size / 2);
    MIi_ASSERT_SRC_ALIGN2(src);
    MIi_ASSERT_DEST_ALIGN2(dest);
    MIi_WARNING_ADDRINTCM(src, size);
    MIi_WARNING_ADDRINTCM(dest, size);

    if (size == 0) {
        return;
    }

    MIi_CheckDma0SourceAddress(dmaNo, (u32)src, size, MI_DMA_SRC_INC);

    MIi_Wait_BeforeDMA(dmaCntp, dmaNo);
    MIi_DmaSetParams_wait(dmaNo, (u32)src, (u32)dest, MI_CNT_COPY16(size));
    MIi_Wait_AfterDMA(dmaCntp);
}

void MI_DmaSend16 (u32 dmaNo, const void * src, volatile void * dest, u32 size) {
    vu32 * dmaCntp;

    MIi_ASSERT_DMANO(dmaNo);
    MIi_ASSERT_MUL2(size);
    MIi_ASSERT_SIZE(dmaNo, size / 2);
    MIi_ASSERT_SRC_ALIGN2(src);
    MIi_ASSERT_DEST_ALIGN2(dest);
    MIi_WARNING_ADDRINTCM(src, size);
    MIi_WARNING_ADDRINTCM(dest, size);

    if (size == 0) {
        return;
    }

    MIi_CheckDma0SourceAddress(dmaNo, (u32)src, size, MI_DMA_SRC_INC);

    MIi_Wait_BeforeDMA(dmaCntp, dmaNo);
    MIi_DmaSetParams_wait(dmaNo, (u32)src, (u32)dest, MI_CNT_SEND16(size));
    MIi_Wait_AfterDMA(dmaCntp);
}

void MI_DmaFill32Async (u32 dmaNo, void * dest, u32 data, u32 size, MIDmaCallback callback, void * arg) {
    MIi_ASSERT_DMANO(dmaNo);
    MIi_ASSERT_MUL4(size);
    MIi_ASSERT_SIZE(dmaNo, size / 4);
    MIi_ASSERT_DEST_ALIGN4(dest);
    MIi_WARNING_ADDRINTCM(dest, size);

    if (size == 0) {
        MIi_CallCallback(callback, arg);
    } else {
        MI_WaitDma(dmaNo);

        if (callback) {
            OSi_EnterDmaCallback(dmaNo, callback, arg);
            MIi_DmaSetParams_src32(dmaNo, data, (u32)dest, MI_CNT_CLEAR32_IF(size));
        } else {
            MIi_DmaSetParams_src32(dmaNo, data, (u32)dest, MI_CNT_CLEAR32(size));
        }
    }
}

void MI_DmaCopy32Async (u32 dmaNo, const void * src, void * dest, u32 size, MIDmaCallback callback, void * arg) {
    MIi_ASSERT_DMANO(dmaNo);
    MIi_ASSERT_MUL4(size);
    MIi_ASSERT_SIZE(dmaNo, size / 4);
    MIi_ASSERT_SRC_ALIGN4(src);
    MIi_ASSERT_DEST_ALIGN4(dest);
    MIi_WARNING_ADDRINTCM(src, size);
    MIi_WARNING_ADDRINTCM(dest, size);

    MIi_CheckDma0SourceAddress(dmaNo, (u32)src, size, MI_DMA_SRC_INC);

    if (size == 0) {
        MIi_CallCallback(callback, arg);
    } else {
        MI_WaitDma(dmaNo);

        if (callback) {
            OSi_EnterDmaCallback(dmaNo, callback, arg);
            MIi_DmaSetParams(dmaNo, (u32)src, (u32)dest, MI_CNT_COPY32_IF(size));
        } else {
            MIi_DmaSetParams(dmaNo, (u32)src, (u32)dest, MI_CNT_COPY32(size));
        }
    }
}

void MI_DmaSend32Async (u32 dmaNo, const void * src, volatile void * dest, u32 size, MIDmaCallback callback, void * arg) {
    MIi_ASSERT_DMANO(dmaNo);
    MIi_ASSERT_MUL4(size);
    MIi_ASSERT_SIZE(dmaNo, size / 4);
    MIi_ASSERT_SRC_ALIGN4(src);
    MIi_ASSERT_DEST_ALIGN4(dest);
    MIi_WARNING_ADDRINTCM(src, size);
    MIi_WARNING_ADDRINTCM(dest, size);

    MIi_CheckDma0SourceAddress(dmaNo, (u32)src, size, MI_DMA_SRC_INC);

    if (size == 0) {
        MIi_CallCallback(callback, arg);
    } else {
        MI_WaitDma(dmaNo);

        if (callback) {
            OSi_EnterDmaCallback(dmaNo, callback, arg);
            MIi_DmaSetParams(dmaNo, (u32)src, (u32)dest, MI_CNT_SEND32_IF(size));
        } else {
            MIi_DmaSetParams(dmaNo, (u32)src, (u32)dest, MI_CNT_SEND32(size));
        }
    }
}

void MI_DmaFill16Async (u32 dmaNo, void * dest, u16 data, u32 size, MIDmaCallback callback, void * arg) {
    MIi_ASSERT_DMANO(dmaNo);
    MIi_ASSERT_MUL2(size);
    MIi_ASSERT_SIZE(dmaNo, size / 2);
    MIi_ASSERT_DEST_ALIGN2(dest);
    MIi_WARNING_ADDRINTCM(dest, size);

    if (size == 0) {
        MIi_CallCallback(callback, arg);
    } else {
        MI_WaitDma(dmaNo);

        if (callback) {
            OSi_EnterDmaCallback(dmaNo, callback, arg);
            MIi_DmaSetParams_src32(dmaNo, data, (u32)dest, MI_CNT_CLEAR16_IF(size));
        } else {
            MIi_DmaSetParams_src32(dmaNo, data, (u32)dest, MI_CNT_CLEAR16(size));
        }
    }
}

void MI_DmaCopy16Async (u32 dmaNo, const void * src, void * dest, u32 size, MIDmaCallback callback, void * arg) {
    MIi_ASSERT_DMANO(dmaNo);
    MIi_ASSERT_MUL2(size);
    MIi_ASSERT_SIZE(dmaNo, size / 2);
    MIi_ASSERT_SRC_ALIGN2(src);
    MIi_ASSERT_DEST_ALIGN2(dest);
    MIi_WARNING_ADDRINTCM(src, size);
    MIi_WARNING_ADDRINTCM(dest, size);

    MIi_CheckDma0SourceAddress(dmaNo, (u32)src, size, MI_DMA_SRC_INC);

    if (size == 0) {
        MIi_CallCallback(callback, arg);
    } else {
        MI_WaitDma(dmaNo);

        if (callback) {
            OSi_EnterDmaCallback(dmaNo, callback, arg);
            MIi_DmaSetParams(dmaNo, (u32)src, (u32)dest, MI_CNT_COPY16_IF(size));
        } else {
            MIi_DmaSetParams(dmaNo, (u32)src, (u32)dest, MI_CNT_COPY16(size));
        }
    }
}

void MI_DmaSend16Async (u32 dmaNo, const void * src, volatile void * dest, u32 size, MIDmaCallback callback, void * arg) {
    MIi_ASSERT_DMANO(dmaNo);
    MIi_ASSERT_MUL2(size);
    MIi_ASSERT_SIZE(dmaNo, size / 2);
    MIi_ASSERT_SRC_ALIGN2(src);
    MIi_ASSERT_DEST_ALIGN2(dest);
    MIi_WARNING_ADDRINTCM(src, size);
    MIi_WARNING_ADDRINTCM(dest, size);

    MIi_CheckDma0SourceAddress(dmaNo, (u32)src, size, MI_DMA_SRC_INC);

    if (size == 0) {
        MIi_CallCallback(callback, arg);
    } else {
        MI_WaitDma(dmaNo);

        if (callback) {
            OSi_EnterDmaCallback(dmaNo, callback, arg);
            MIi_DmaSetParams(dmaNo, (u32)src, (u32)dest, MI_CNT_SEND16_IF(size));
        } else {
            MIi_DmaSetParams(dmaNo, (u32)src, (u32)dest, MI_CNT_SEND16(size));
        }
    }
}

BOOL MI_IsDmaBusy (u32 dmaNo) {
    vu32 * dmaCntp = &((vu32 *)REG_DMA0SAD_ADDR)[dmaNo * 3 + 2];

    MIi_ASSERT_DMANO(dmaNo);
    return (BOOL)((*(vu32 *)dmaCntp & REG_MI_DMA0CNT_E_MASK) >> REG_MI_DMA0CNT_E_SHIFT);
}

void MI_WaitDma (u32 dmaNo) {
    OSIntrMode enabled = OS_DisableInterrupts();
    vu32 * dmaCntp = &((vu32 *)REG_DMA0SAD_ADDR)[dmaNo * 3 + 2];

    MIi_ASSERT_DMANO(dmaNo);
    while (*dmaCntp & REG_MI_DMA0CNT_E_MASK) {
    }

    if (dmaNo == MIi_DUMMY_DMA_NO) {
        vu32 * p = (vu32 *)((u32)REG_DMA0SAD_ADDR + dmaNo * 12);
        *p = (vu32)MIi_DUMMY_SRC;
        *(p + 1) = (vu32)MIi_DUMMY_DEST;
        *(p + 2) = (vu32)MIi_DUMMY_CNT;
    }

    (void)OS_RestoreInterrupts(enabled);
}

void MI_StopDma (u32 dmaNo) {
    OSIntrMode enabled = OS_DisableInterrupts();
    vu16 * dmaCntp = &((vu16 *)REG_DMA0SAD_ADDR)[dmaNo * 6 + 5];

    MIi_ASSERT_DMANO(dmaNo);

    *dmaCntp &= ~((MI_DMA_TIMING_MASK | MI_DMA_CONTINUOUS_ON) >> 16);
    *dmaCntp &= ~(MI_DMA_ENABLE >> 16);

    {
        s32 dummy = dmaCntp[0];
    }
    {
        s32 dummy = dmaCntp[0];
    }

    if (dmaNo == MIi_DUMMY_DMA_NO) {
        vu32 * p = (vu32 *)((u32)REG_DMA0SAD_ADDR + dmaNo * 12);
        *p = (vu32)MIi_DUMMY_SRC;
        *(p + 1) = (vu32)MIi_DUMMY_DEST;
        *(p + 2) = (vu32)MIi_DUMMY_CNT;
    }

    (void)OS_RestoreInterrupts(enabled);
}

#ifdef SDK_ARM9

void MIi_CheckAnotherAutoDMA (u32 dmaNo, u32 dmaType) {
    int n;
    u32 dmaCnt;
    u32 timing;

    for (n = 0; n < MI_DMA_MAX_NUM; n++) {
        if (n == dmaNo) {
            continue;
        }

        dmaCnt = *(REGType32v *)(REG_DMA0CNT_ADDR + n * 12);

        if ((dmaCnt & MI_DMA_ENABLE) == 0) {
            continue;
        }

        timing = dmaCnt & MI_DMA_TIMING_MASK;

        if (timing == dmaType
            || (timing == MI_DMA_TIMING_V_BLANK && dmaType == MI_DMA_TIMING_H_BLANK)
            || (timing == MI_DMA_TIMING_H_BLANK && dmaType == MI_DMA_TIMING_V_BLANK)) {
            continue;
        }

        if (timing == MI_DMA_TIMING_DISP
            || timing == MI_DMA_TIMING_DISP_MMEM
            || timing == MI_DMA_TIMING_CARD
            || timing == MI_DMA_TIMING_CARTRIDGE
            || timing == MI_DMA_TIMING_GXFIFO
            || timing == MI_DMA_TIMING_V_BLANK || timing == MI_DMA_TIMING_H_BLANK) {
            OS_Panic("cannot start auto DMA at the same time.");
        }
    }
}

#endif

void MIi_CheckDma0SourceAddress (u32 dmaNo, u32 src, u32 size, u32 dir) {
    if (dmaNo == 0) {
        u32 addStart;
        u32 addEnd;

        addStart = src & 0xff000000;

        switch (dir) {
        case MI_DMA_SRC_INC:
            addEnd = src + size;
            break;
        case MI_DMA_SRC_DEC:
            addEnd = src - size;
            break;
        default:
            addEnd = src;
            break;
        }
        addEnd &= 0xff000000;

        if (addStart == 0x04000000 || addStart >= 0x08000000 ||
            addEnd == 0x04000000 || addEnd >= 0x08000000) {
            OS_Panic("illegal DMA0 source address.");
        }
    }
}

#if defined(SDK_ARM9) && defined(SDK_DEBUG)
void MIi_CheckAddressInTCM (u32 addr, u32 size) {
    u32 itcm = HW_ITCM;
    u32 dtcm = OS_GetDTCMAddress();

    SDK_WARNING(
        itcm >= addr + size
        || addr >= itcm + HW_ITCM_SIZE, "intend to do DMA in ITCM area (%x)", addr
    );
    SDK_WARNING(
        dtcm >= addr + size
        || addr >= dtcm + HW_DTCM_SIZE, "intend to do DMA in DTCM area (%x)", addr
    );
}
#endif
