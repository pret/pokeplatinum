#include <nitro.h>
#include <card_rom.h>

static CARDPulledOutCallback CARD_UserCallback;
static BOOL CARDi_IsPulledOutFlag = FALSE;

static void CARDi_PulledOutCallback(PXIFifoTag tag, u32 data, BOOL err);
static void CARDi_SendtoPxi(u32 data, u32 wait);

void CARD_InitPulledOutCallback (void)
{
    PXI_Init();
    PXI_SetFifoRecvCallback(PXI_FIFO_TAG_CARD, CARDi_PulledOutCallback);

    CARD_UserCallback = NULL;
}

static void CARDi_PulledOutCallback (PXIFifoTag tag, u32 data, BOOL err)
{
#pragma unused(tag, err)

    u32 command = data & CARD_PXI_COMMAND_MASK;

    if (command == CARD_PXI_COMMAND_PULLED_OUT)
    {
        if (CARDi_IsPulledOutFlag == FALSE)
        {
            BOOL isTerminateImm = TRUE;
            CARDi_IsPulledOutFlag = TRUE;

            if (CARD_UserCallback)
            {
                isTerminateImm = CARD_UserCallback();
            }

            if (isTerminateImm)
            {
                CARD_TerminateForPulledOut();
            }
        }
    }
    else
    {
#ifndef SDK_FINALROM
        OS_Panic("illegal card pxi command.");
#else
        OS_Panic("");
#endif
    }
}

void CARD_SetPulledOutCallback (CARDPulledOutCallback callback)
{
    CARD_UserCallback = callback;
}

BOOL CARD_IsPulledOut (void)
{
    return CARDi_IsPulledOutFlag;
}

void CARD_TerminateForPulledOut (void)
{
#ifndef SDK_TEG
    BOOL should_be_halt = TRUE;

    MI_StopDma(0);
    MI_StopDma(1);
    MI_StopDma(2);
    MI_StopDma(3);

    if (PAD_DetectFold())
    {
        u32 res;
        while ((res = PM_ForceToPowerOff()) == SPI_PXI_RESULT_EXCLUSIVE)
        {
            OS_SpinWait(HW_CPU_CLOCK_ARM9 / 100);
        }
        if (res == PM_RESULT_SUCCESS)
        {
            should_be_halt = FALSE;
        }
    }
    if (should_be_halt)
    {
        CARDi_SendtoPxi(CARD_PXI_COMMAND_TERMINATE, 1);
    }
#endif

    OS_Terminate();
}

void CARDi_CheckPulledOutCore (u32 id)
{
    vu32 iplCardID = *(vu32 *)((*(u16 *)HW_CHECK_DEBUGGER_SW == 0) ? HW_RED_RESERVED : HW_BOOT_CHECK_INFO_BUF);

    if (id != (u32)iplCardID)
    {
        OSIntrMode bak_cpsr = OS_DisableInterrupts();
        CARDi_PulledOutCallback(PXI_FIFO_TAG_CARD, CARD_PXI_COMMAND_PULLED_OUT, FALSE);
        (void)OS_RestoreInterrupts(bak_cpsr);
    }
}

void CARD_CheckPulledOut (void)
{
    CARDi_CheckPulledOutCore(CARDi_ReadRomID());
}

static void CARDi_SendtoPxi (u32 data, u32 wait)
{
    while (PXI_SendWordByFifo(PXI_FIFO_TAG_CARD, data, FALSE) != PXI_FIFO_SUCCESS)
    {
        SVC_WaitByLoop((s32)wait);
    }
}
