#include <nitro/ctrdg.h>
#include "include/ctrdg_work.h"
#include <nitro/os/ARM9/cache.h>

CTRDGWork CTRDGi_Work;

static BOOL CTRDGi_EnableFlag = FALSE;

void CTRDGi_InitCommon (void) {
    SVC_CpuClear(0, &CTRDGi_Work, sizeof(CTRDGi_Work), 32);

    CTRDGi_Work.lockID = (u16)OS_GetLockID();
}

BOOL CTRDG_IsBitID (u8 bitID) {
    return (CTRDG_IsExisting() && CTRDGi_IsBitIDAtInit(bitID));
}

BOOL CTRDGi_IsBitIDAtInit (u8 bitID) {
    BOOL retval = FALSE;

    CTRDGModuleInfo * cip = CTRDGi_GetModuleInfoAddr();

    if (cip->moduleID.raw != 0xffff && cip->moduleID.raw != 0x0000 && ~cip->moduleID.bitID & bitID) {
        retval = TRUE;
    }

    return retval;
}

BOOL CTRDG_IsNumberID (u8 numberID) {
    return (CTRDG_IsExisting() && CTRDGi_IsNumberIDAtInit(numberID));
}

BOOL CTRDGi_IsNumberIDAtInit (u8 numberID) {
    BOOL retval = FALSE;

    CTRDGModuleInfo * cip = CTRDGi_GetModuleInfoAddr();

    if (cip->moduleID.raw != 0xffff && cip->moduleID.raw != 0x0000) {
        if (cip->moduleID.numberID == numberID) {
            retval = TRUE;
        } else if (!cip->moduleID.disableExLsiID) {
            if (cip->exLsiID[0] == numberID
                || cip->exLsiID[1] == numberID || cip->exLsiID[2] == numberID) {
                retval = TRUE;
            }
        }
    }

    return retval;
}

BOOL CTRDG_IsAgbCartridge (void) {
    return (CTRDG_IsExisting() && CTRDGi_IsAgbCartridgeAtInit());
}

BOOL CTRDG_IsOptionCartridge (void) {
    return (CTRDG_IsExisting() && !CTRDGi_IsAgbCartridgeAtInit());
}

BOOL CTRDGi_IsAgbCartridgeAtInit (void) {
    CTRDGModuleInfo * cip = CTRDGi_GetModuleInfoAddr();

    return cip->isAgbCartridge;
}

u32 CTRDG_GetAgbGameCode (void) {
    u32 retval = FALSE;

    if (CTRDG_IsExisting()) {
        retval = CTRDGi_GetAgbGameCodeAtInit();
    }

    return retval;
}

u32 CTRDGi_GetAgbGameCodeAtInit (void) {
    CTRDGModuleInfo * cip = CTRDGi_GetModuleInfoAddr();
    u32 retval = FALSE;

    if (CTRDGi_IsAgbCartridgeAtInit()) {
        retval = cip->gameCode;
    }

    return retval;
}

u16 CTRDG_GetAgbMakerCode (void) {
    u16 retval = FALSE;

    if (CTRDG_IsExisting()) {
        retval = CTRDGi_GetAgbMakerCodeAtInit();
    }

    return retval;
}

u16 CTRDGi_GetAgbMakerCodeAtInit (void) {
    CTRDGModuleInfo * cip = CTRDGi_GetModuleInfoAddr();
    u16 retval = FALSE;

    if (CTRDGi_IsAgbCartridgeAtInit()) {
        retval = cip->makerCode;
    }

    return retval;
}

BOOL CTRDG_IsPulledOut (void) {
    CTRDGModuleInfo * cip = CTRDGi_GetModuleInfoAddr();

    if (cip->moduleID.raw == 0xffff) {
        return FALSE;
    }

    if (!cip->detectPullOut) {
        (void)CTRDG_IsExisting();
    }

    return cip->detectPullOut;
}

BOOL CTRDG_IsAgbCartridgePulledOut (void) {
    return (CTRDG_IsPulledOut() && CTRDGi_IsAgbCartridgeAtInit());
}

BOOL CTRDG_IsOptionCartridgePulledOut (void) {
    return (CTRDG_IsPulledOut() && !CTRDGi_IsAgbCartridgeAtInit());
}

BOOL CTRDG_IsExisting (void) {
    BOOL retval = TRUE;
    CTRDGLockByProc lockInfo;

    CTRDGHeader * chp = CTRDGi_GetHeaderAddr();
    CTRDGModuleInfo * cip = CTRDGi_GetModuleInfoAddr();

    if (cip->moduleID.raw == 0xffff) {
        return FALSE;
    }

    if (cip->detectPullOut == TRUE) {
        return FALSE;
    }
#if defined(SDK_ARM7)

    if (CTRDGi_LockByProcessor(CTRDGi_Work.lockID, &lockInfo) == FALSE) {
        (void)OS_RestoreInterrupts(lockInfo.irq);
        return TRUE;
    }
#else

    CTRDGi_LockByProcessor(CTRDGi_Work.lockID, &lockInfo);
#endif

    {
        CTRDGRomCycle rc;
        u8 isRomCode;

        CTRDGi_ChangeLatestAccessCycle(&rc);
        isRomCode = chp->isRomCode;

        if ((isRomCode == CTRDG_IS_ROM_CODE && cip->moduleID.raw != chp->moduleID)
            || (isRomCode != CTRDG_IS_ROM_CODE && cip->moduleID.raw != *CTRDGi_GetModuleIDImageAddr())
            || ((cip->gameCode != chp->gameCode) && cip->isAgbCartridge)) {
            cip->detectPullOut = TRUE;
            retval = FALSE;
        }

        CTRDGi_RestoreAccessCycle(&rc);
    }

    CTRDGi_UnlockByProcessor(CTRDGi_Work.lockID, &lockInfo);

    return retval;
}

void CTRDGi_ChangeLatestAccessCycle (CTRDGRomCycle * r) {
    r->c1 = MI_GetCartridgeRomCycle1st();
    r->c2 = MI_GetCartridgeRomCycle2nd();

    MI_SetCartridgeRomCycle1st(MI_CTRDG_ROMCYCLE1_18);
    MI_SetCartridgeRomCycle2nd(MI_CTRDG_ROMCYCLE2_6);
}

void CTRDGi_RestoreAccessCycle (CTRDGRomCycle * r) {
    MI_SetCartridgeRomCycle1st(r->c1);
    MI_SetCartridgeRomCycle2nd(r->c2);
}

#if defined(SDK_ARM7)
BOOL CTRDGi_LockByProcessor (u16 lockID, CTRDGLockByProc * info)
#else
void CTRDGi_LockByProcessor (u16 lockID, CTRDGLockByProc * info)
#endif
{
    while (1) {
        info->irq = OS_DisableInterrupts();

        if (((info->locked = OS_ReadOwnerOfLockCartridge() & CTRDG_LOCKED_BY_MYPROC_FLAG) != 0)
            || (OS_TryLockCartridge(lockID) == OS_LOCK_SUCCESS)) {
#if defined(SDK_ARM7)
            return TRUE;
#else
            break;
#endif
        }
#if defined(SDK_ARM7)
        return FALSE;
#endif
        (void)OS_RestoreInterrupts(info->irq);

        SVC_WaitByLoop(1);
    }
}

void CTRDGi_UnlockByProcessor (u16 lockID, CTRDGLockByProc * info) {
    if (!info->locked) {
        (void)OS_UnLockCartridge(lockID);
    }

    (void)OS_RestoreInterrupts(info->irq);
}

void CTRDGi_SendtoPxi (u32 data) {
    while (PXI_SendWordByFifo(PXI_FIFO_TAG_CTRDG, data, FALSE) != PXI_FIFO_SUCCESS) {
        SVC_WaitByLoop(1);
    }
}

BOOL CTRDG_DmaCopy16 (u32 dmaNo, const void * src, void * dest, u32 size) {
    return CTRDGi_CopyCommon(dmaNo, src, dest, size, CTRDGi_FORWARD_DMA16);
}
BOOL CTRDG_DmaCopy32 (u32 dmaNo, const void * src, void * dest, u32 size) {
    return CTRDGi_CopyCommon(dmaNo, src, dest, size, CTRDGi_FORWARD_DMA32);
}

BOOL CTRDG_CpuCopy8 (const void * src, void * dest, u32 size) {
    if (HW_CTRDG_ROM <= (u32)dest && (u32)dest < HW_CTRDG_RAM_END) {
        return CTRDGi_CopyCommon(
            0, (const void *)dest, (void *)src, size,
            CTRDGi_FORWARD_CPU8
        );
    } else {
        return CTRDGi_CopyCommon(0, src, dest, size, CTRDGi_FORWARD_CPU8);
    }
}
BOOL CTRDG_CpuCopy16 (const void * src, void * dest, u32 size) {
    return CTRDGi_CopyCommon(0, src, dest, size, CTRDGi_FORWARD_CPU16);
}
BOOL CTRDG_CpuCopy32 (const void * src, void * dest, u32 size) {
    return CTRDGi_CopyCommon(0, src, dest, size, CTRDGi_FORWARD_CPU32);
}

BOOL CTRDGi_CopyCommon (u32 dmaNo, const void * src, void * dest, u32 size, u32 forwardType) {
    if (!CTRDG_IsExisting()) {
        return FALSE;
    }

    CTRDG_CheckEnabled();

    (void)OS_LockCartridge(CTRDGi_Work.lockID);

    if ((forwardType & CTRDGi_FORWARD_TYPE_MASK) == CTRDGi_FORWARD_TYPE_DMA) {
        MI_StopDma(dmaNo);
        DC_FlushRange(dest, size);
    }

    switch (forwardType) {
    case CTRDGi_FORWARD_DMA16:
        MI_DmaCopy16(dmaNo, src, dest, size);
        break;
    case CTRDGi_FORWARD_DMA32:
        MI_DmaCopy32(dmaNo, src, dest, size);
        break;
    case CTRDGi_FORWARD_CPU16:
        MI_CpuCopy16(src, dest, size);
        break;
    case CTRDGi_FORWARD_CPU32:
        MI_CpuCopy32(src, dest, size);
        break;

    case CTRDGi_FORWARD_CPU8:
    {
        int n;
        u8 * dest8 = (u8 *)dest;
        u8 * src8 = (u8 *)src;
        for (n = 0; n < size; n++) {
            *dest8++ = *src8++;
        }
    }
    break;
    }

    (void)OS_UnLockCartridge(CTRDGi_Work.lockID);

    if (!CTRDG_IsExisting()) {
        return FALSE;
    }

    return TRUE;
}

BOOL CTRDG_Read8 (const u8 * address, u8 * rdata) {
    return CTRDGi_AccessCommon((void *)address, 0, rdata, CTRDGi_ACCESS_READ8);
}
BOOL CTRDG_Read16 (const u16 * address, u16 * rdata) {
    return CTRDGi_AccessCommon((void *)address, 0, rdata, CTRDGi_ACCESS_READ16);
}
BOOL CTRDG_Read32 (const u32 * address, u32 * rdata) {
    return CTRDGi_AccessCommon((void *)address, 0, rdata, CTRDGi_ACCESS_READ32);
}

BOOL CTRDG_Write8 (u8 * address, u8 data) {
    return CTRDGi_AccessCommon(address, data, 0, CTRDGi_ACCESS_WRITE8);
}
BOOL CTRDG_Write16 (u16 * address, u16 data) {
    return CTRDGi_AccessCommon(address, data, 0, CTRDGi_ACCESS_WRITE16);
}
BOOL CTRDG_Write32 (u32 * address, u32 data) {
    return CTRDGi_AccessCommon(address, data, 0, CTRDGi_ACCESS_WRITE32);
}

BOOL CTRDGi_AccessCommon (void * address, u32 data, void * rdata, u32 accessType) {
    if (!CTRDG_IsExisting()) {
        return FALSE;
    }

    CTRDG_CheckEnabled();

    (void)OS_LockCartridge(CTRDGi_Work.lockID);

    switch (accessType) {
    case CTRDGi_ACCESS_READ8:
        if (rdata) {
            *(u8 *)rdata = *(u8 *)address;
        }
        break;
    case CTRDGi_ACCESS_READ16:
        if (rdata) {
            *(u16 *)rdata = *(u16 *)address;
        }
        break;
    case CTRDGi_ACCESS_READ32:
        if (rdata) {
            *(u32 *)rdata = *(u32 *)address;
        }
        break;
    case CTRDGi_ACCESS_WRITE8:
        *(u8 *)address = (u8)data;
        break;
    case CTRDGi_ACCESS_WRITE16:
        *(u16 *)address = (u16)data;
        break;
    case CTRDGi_ACCESS_WRITE32:
        *(u32 *)address = (u32)data;
        break;
    }

    (void)OS_UnLockCartridge(CTRDGi_Work.lockID);

    if (!CTRDG_IsExisting()) {
        return FALSE;
    }

    return TRUE;
}

BOOL CTRDG_IsEnabled (void) {
    return CTRDGi_EnableFlag;
}

void CTRDG_Enable (BOOL enable) {
    OSIntrMode bak_cpsr = OS_DisableInterrupts();
    CTRDGi_EnableFlag = enable;
#if defined(SDK_ARM9)
    if (!CTRDG_IsOptionCartridge()) {
        u32 acc = (u32)(enable ? OS_PR3_ACCESS_RW : OS_PR3_ACCESS_RO);
        (void)OS_SetDPermissionsForProtectionRegion(OS_PR3_ACCESS_MASK, acc);
    }
#endif
    (void)OS_RestoreInterrupts(bak_cpsr);
}

void CTRDG_CheckEnabled (void) {
#ifdef SDK_ARM9
    if (!CTRDG_IsOptionCartridge() && !CTRDG_IsEnabled()) {
        OS_TPanic
            ("cartridge permission denied. (you must call CTRDG_Enable() under the guideline.)");
    }
#endif
}
