#include <nitro.h>
#include "include/ctrdg_work.h"

extern void CTRDGi_InitCommon(void);
extern void CTRDGi_SendtoPxi(u32 data);

static void CTRDGi_CallbackForInitModuleInfo(PXIFifoTag tag, u32 data, BOOL err);
static void CTRDGi_PulledOutCallback(PXIFifoTag tag, u32 data, BOOL err);
static void CTRDGi_CallbackForSetPhi(PXIFifoTag tag, u32 data, BOOL err);

extern CTRDGWork CTRDGi_Work;

static int CTRDGi_Lock = FALSE;

CTRDGPulledOutCallback CTRDG_UserCallback = NULL;

static BOOL isCartridgePullOut = FALSE;
static BOOL skipCheck = FALSE;
static BOOL ctrdg_already_pullout = FALSE;

void CTRDG_Init (void) {
    static BOOL isInitialized;

    if (isInitialized) {
        return;
    }
    isInitialized = TRUE;

    CTRDGi_InitCommon();

    ctrdg_already_pullout = FALSE;

#ifndef SDK_SMALL_BUILD

    PXI_Init();
    while (!PXI_IsCallbackReady(PXI_FIFO_TAG_CTRDG, PXI_PROC_ARM7)) {
    }
    PXI_SetFifoRecvCallback(PXI_FIFO_TAG_CTRDG, CTRDGi_CallbackForInitModuleInfo);

    CTRDGi_InitModuleInfo();

    PXI_SetFifoRecvCallback(PXI_FIFO_TAG_CTRDG, NULL);
    PXI_SetFifoRecvCallback(PXI_FIFO_TAG_CTRDG, CTRDGi_PulledOutCallback);

    CTRDG_UserCallback = NULL;

    {
        static CTRDGiTaskWork CTRDGTaskList;
        CTRDGi_InitTaskThread(&CTRDGTaskList);
    }

    PXI_SetFifoRecvCallback(PXI_FIFO_TAG_CTRDG_PHI, CTRDGi_CallbackForSetPhi);

#if defined(SDK_ARM9)
    CTRDG_Enable(FALSE);
#endif
#endif
}

static CTRDGHeader headerBuf ATTRIBUTE_ALIGN(32);

void CTRDGi_InitModuleInfo (void) {
#ifndef SDK_SMALL_BUILD

    static BOOL isInitialized;
    CTRDGLockByProc lockInfo;
    OSIrqMask lastIE;
    BOOL lastIME;

    if (isInitialized) {
        return;
    }
    isInitialized = TRUE;

    if (!(reg_OS_PAUSE & REG_OS_PAUSE_CHK_MASK)) {
        return;
    }

    lastIE = OS_SetIrqMask(OS_IE_SPFIFO_RECV);
    lastIME = OS_EnableIrq();

    CTRDGi_LockByProcessor(CTRDGi_Work.lockID, &lockInfo);

    {
        MIProcessor proc = MI_GetMainMemoryPriority();
        CTRDGRomCycle rc;

        CTRDGi_ChangeLatestAccessCycle(&rc);

        MI_SetMainMemoryPriority(MI_PROCESSOR_ARM9);

        DC_InvalidateRange(&((u8 *)&headerBuf)[0x80], sizeof(headerBuf) - 0x80);
        MI_DmaCopy16(
            1, (void *)(HW_CTRDG_ROM + 0x80),
            &((u8 *)&headerBuf)[0x80], sizeof(headerBuf) - 0x80
        );

        MI_SetMainMemoryPriority(proc);

        CTRDGi_RestoreAccessCycle(&rc);
    }

    CTRDGi_UnlockByProcessor(CTRDGi_Work.lockID, &lockInfo);

    if ((*(u8 *)HW_IS_CTRDG_EXIST) || !(*(u8 *)HW_SET_CTRDG_MODULE_INFO_ONCE)) {
        int i;
        CTRDGHeader * chb = &headerBuf;
        CTRDGModuleInfo * cip = CTRDGi_GetModuleInfoAddr();

        cip->moduleID.raw = chb->moduleID;
        for (i = 0; i < 3; i++) {
            cip->exLsiID[i] = chb->exLsiID[i];
        }
        cip->makerCode = chb->makerCode;
        cip->gameCode = chb->gameCode;

        *(u8 *)HW_IS_CTRDG_EXIST = (u8)((CTRDG_IsExisting())? 1 : 0);

        (*(u8 *)HW_SET_CTRDG_MODULE_INFO_ONCE) = TRUE;
    }

    MI_CpuCopy32(
        (void *)CTRDG_SYSROM9_NINLOGO_ADR, &headerBuf.nintendoLogo,
        sizeof(headerBuf.nintendoLogo)
    );
    DC_FlushAll();

    CTRDGi_SendtoPxi(
        CTRDG_PXI_COMMAND_INIT_MODULE_INFO |
        (((u32) & headerBuf - HW_MAIN_MEM) >> 5) << CTRDG_PXI_COMMAND_PARAM_SHIFT
    );

    while (CTRDGi_Work.subpInitialized != TRUE) {
        SVC_WaitByLoop(1);
    }

    (void)OS_RestoreIrq(lastIME);
    (void)OS_SetIrqMask(lastIE);

#endif
}

static void CTRDGi_CallbackForInitModuleInfo (PXIFifoTag tag, u32 data, BOOL err) {
#pragma unused( tag, err )

    if ((data & CTRDG_PXI_COMMAND_MASK) == CTRDG_PXI_COMMAND_INIT_MODULE_INFO) {
        CTRDGi_Work.subpInitialized = TRUE;
    } else {
#ifndef SDK_FINALROM
        OS_Panic("illegal Cartridge pxi command.");
#else
        OS_Panic("");
#endif
    }
}

static void CTRDGi_PulledOutCallback (PXIFifoTag tag, u32 data, BOOL err) {
#pragma unused( tag, err )

    if ((data & CTRDG_PXI_COMMAND_MASK) == CTRDG_PXI_COMMAND_PULLED_OUT) {
        if (ctrdg_already_pullout == FALSE) {
            BOOL isTerminateImm = FALSE;

            if (CTRDG_UserCallback) {
                isTerminateImm = CTRDG_UserCallback();
            }

            if (isTerminateImm) {
                CTRDG_TerminateForPulledOut();
            }

            ctrdg_already_pullout = TRUE;
        }
    } else {
        OS_Printf(">>>tag[%x] data[%x] err[%x]\n", tag, data, err);
#ifndef SDK_FINALROM
        OS_Panic("illegal Cartridge pxi command.");
#else
        OS_Panic("");
#endif
    }
}

void CTRDG_SetPulledOutCallback (CTRDGPulledOutCallback callback) {
    CTRDG_UserCallback = callback;
}

void CTRDG_TerminateForPulledOut (void) {
    CTRDGi_SendtoPxi(CTRDG_PXI_COMMAND_TERMINATE);

    OS_Terminate();
}

void CTRDG_SendToARM7 (void * arg) {
    (void)PXI_SendWordByFifo(PXI_FIFO_TAG_CTRDG_Ex, (u32)arg, FALSE);
}

void CTRDG_CheckPulledOut (void) {
    if (skipCheck || isCartridgePullOut) {
        return;
    }

    isCartridgePullOut = CTRDG_IsPulledOut();

    if (!CTRDG_IsExisting()) {
        if (!isCartridgePullOut) {
            skipCheck = TRUE;
            return;
        }
    }

    if (isCartridgePullOut) {
        CTRDGi_PulledOutCallback(PXI_FIFO_TAG_CTRDG, CTRDG_PXI_COMMAND_PULLED_OUT, NULL);
    }
}

void CTRDG_SetPhiClock (CTRDGPhiClock clock) {
    u32 data = ((u32)clock << CTRDG_PXI_COMMAND_PARAM_SHIFT) | CTRDG_PXI_COMMAND_SET_PHI;

    SDK_ASSERT((u32)clock <= CTRDG_PHI_CLOCK_16MHZ);

    MIi_SetPhiClock((MIiPhiClock)clock);

    CTRDGi_Lock = TRUE;
    while (PXI_SendWordByFifo(PXI_FIFO_TAG_CTRDG_PHI, data, FALSE) != PXI_FIFO_SUCCESS) {
        SVC_WaitByLoop(1);
    }

    while (CTRDGi_Lock) {
        SVC_WaitByLoop(1);
    }
}

static void CTRDGi_CallbackForSetPhi (PXIFifoTag tag, u32 data, BOOL err) {
#pragma unused(tag, data, err)
    CTRDGi_Lock = FALSE;
}
