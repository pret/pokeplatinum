#include <nitro/snd/common/command.h>

#include <nitro/misc.h>
#include <nitro/os.h>
#include <nitro/pxi.h>
#include <nitro/mi.h>

#include <nitro/snd/common/seq.h>
#include <nitro/snd/common/capture.h>
#include <nitro/snd/common/work.h>
#include <nitro/snd/common/global.h>
#include <nitro/snd/common/util.h>
#include <nitro/snd/common/alarm.h>
#include <nitro/snd/common/main.h>

#define SND_COMMAND_NUM 256

#define SND_PXI_FIFO_MESSAGE_BUFSIZE 8

#define SND_MSG_REQUEST_COMMAND_PROC 0

#define UNPACK_COMMAND(arg, shift, bit) (((arg) >> (shift)) & ((1 << (bit)) - 1))

#ifdef SDK_ARM9

static SNDCommand sCommandArray[SND_COMMAND_NUM] ATTRIBUTE_ALIGN(32);
static SNDCommand * sFreeList;
static SNDCommand * sFreeListEnd;

static SNDCommand * sReserveList;
static SNDCommand * sReserveListEnd;

static SNDCommand * sWaitingCommandListQueue[SND_PXI_FIFO_MESSAGE_BUFSIZE + 1];
static int sWaitingCommandListQueueRead;
static int sWaitingCommandListQueueWrite;

static int sWaitingCommandListCount;

static u32 sCurrentTag;
static u32 sFinishedTag;

static SNDSharedWork sSharedWork ATTRIBUTE_ALIGN(32);

#else

static OSMessage sCommandMesgBuffer[SND_PXI_FIFO_MESSAGE_BUFSIZE];
static OSMessageQueue sCommandMesgQueue;

#endif

static void PxiFifoCallback(PXIFifoTag tag, u32 data, BOOL err);
static void InitPXI(void);

#ifdef SDK_ARM9
static void RequestCommandProc(void);
static SNDCommand * AllocCommand(void);
static BOOL IsCommandAvailable(void);
#else
static void SetChannelTimer(u32 chBitMask, int timer);
static void SetChannelVolume(u32 chBitMask, int volume, SNDChannelDataShift shift);
static void SetChannelPan(u32 chBitMask, int pan);
static void StartTimer(u32 chBitMask, u32 capBitMask, u32 alarmBitMask, u32 flags);
static void StopTimer(u32 chBitMask, u32 capBitMask, u32 alarmBitMask, u32 flags);
static void ReadDriverInfo(SNDDriverInfo * info);
#endif

void SND_CommandInit (void) {
#ifdef SDK_ARM9
    SNDCommand * command;
    int i;
#endif

#ifdef SDK_ARM7
    OS_InitMessageQueue(&sCommandMesgQueue, sCommandMesgBuffer, SND_PXI_FIFO_MESSAGE_BUFSIZE);
#endif

    InitPXI();

#ifdef SDK_ARM9

    sFreeList = &sCommandArray[0];
    for (i = 0; i < SND_COMMAND_NUM - 1; i++) {
        sCommandArray[i].next = &sCommandArray[i + 1];
    }
    sCommandArray[SND_COMMAND_NUM - 1].next = NULL;
    sFreeListEnd = &sCommandArray[SND_COMMAND_NUM - 1];

    sReserveList = NULL;
    sReserveListEnd = NULL;

    sWaitingCommandListCount = 0;

    sWaitingCommandListQueueRead = 0;
    sWaitingCommandListQueueWrite = 0;

    sCurrentTag = 1;
    sFinishedTag = 0;

    SNDi_SharedWork = &sSharedWork;
    SNDi_InitSharedWork(SNDi_SharedWork);

    command = SND_AllocCommand(SND_COMMAND_BLOCK);
    if (command != NULL) {
        command->id = SND_COMMAND_SHARED_WORK;
        command->arg[0] = (u32)SNDi_SharedWork;

        SND_PushCommand(command);
        (void)SND_FlushCommand(SND_COMMAND_BLOCK);
    }

#else

    SNDi_SharedWork = NULL;

#endif
}

#ifdef SDK_ARM9

const SNDCommand * SND_RecvCommandReply (u32 flags) {
    OSIntrMode bak_psr = OS_DisableInterrupts();
    SNDCommand * commandList;
    SNDCommand * commandListEnd;

    if (flags & SND_COMMAND_BLOCK) {
        while (sFinishedTag == SNDi_GetFinishedCommandTag()) {
            (void)OS_RestoreInterrupts(bak_psr);
            OS_SpinWait(100);
            bak_psr = OS_DisableInterrupts();
        }
    } else {
        if (sFinishedTag == SNDi_GetFinishedCommandTag()) {
            (void)OS_RestoreInterrupts(bak_psr);
            return NULL;
        }
    }

    commandList = sWaitingCommandListQueue[sWaitingCommandListQueueRead];
    sWaitingCommandListQueueRead++;
    if (sWaitingCommandListQueueRead > SND_PXI_FIFO_MESSAGE_BUFSIZE) {
        sWaitingCommandListQueueRead = 0;
    }

    commandListEnd = commandList;
    while (commandListEnd->next != NULL) {
        commandListEnd = commandListEnd->next;
    }

    if (sFreeListEnd != NULL) {
        sFreeListEnd->next = commandList;
    } else {
        sFreeList = commandList;
    }
    sFreeListEnd = commandListEnd;

    sWaitingCommandListCount--;
    sFinishedTag++;

    (void)OS_RestoreInterrupts(bak_psr);
    return commandList;
}

SNDCommand * SND_AllocCommand (u32 flags) {
    SNDCommand * command;

    if (!IsCommandAvailable()) {
        return NULL;
    }

    command = AllocCommand();
    if (command != NULL) {
        return command;
    }

    if ((flags & SND_COMMAND_BLOCK) == 0) {
        return NULL;
    }

    if (SND_CountWaitingCommand() > 0) {
        while (SND_RecvCommandReply(SND_COMMAND_NOBLOCK) != NULL) {
        }

        command = AllocCommand();
        if (command != NULL) {
            return command;
        }
    } else {
        (void)SND_FlushCommand(SND_COMMAND_BLOCK);
    }

    RequestCommandProc();

    do{
        (void)SND_RecvCommandReply(SND_COMMAND_BLOCK);
        command = AllocCommand();
    } while (command == NULL);

    return command;
}

void SND_PushCommand (struct SNDCommand * command) {
    OSIntrMode bak_psr;

    SDK_NULL_ASSERT(command);

    bak_psr = OS_DisableInterrupts();

    if (sReserveListEnd == NULL) {
        sReserveList = command;
        sReserveListEnd = command;
    } else {
        sReserveListEnd->next = command;
        sReserveListEnd = command;
    }

    command->next = NULL;

    (void)OS_RestoreInterrupts(bak_psr);
}

BOOL SND_FlushCommand (u32 flags) {
    OSIntrMode bak_psr = OS_DisableInterrupts();

    if (sReserveList == NULL) {
        (void)OS_RestoreInterrupts(bak_psr);
        return TRUE;
    }

    if (sWaitingCommandListCount >= SND_PXI_FIFO_MESSAGE_BUFSIZE) {
        if ((flags & SND_COMMAND_BLOCK) == 0) {
            (void)OS_RestoreInterrupts(bak_psr);
            return FALSE;
        }

        do{
            (void)SND_RecvCommandReply(SND_COMMAND_BLOCK);
        } while (sWaitingCommandListCount >= SND_PXI_FIFO_MESSAGE_BUFSIZE);

        if (sReserveList == NULL) {
            (void)OS_RestoreInterrupts(bak_psr);
            return TRUE;
        }
    }

    DC_FlushRange(sCommandArray, sizeof(sCommandArray));
    if (PXI_SendWordByFifo(PXI_FIFO_TAG_SOUND, (u32)sReserveList, FALSE) < 0) {
        if ((flags & SND_COMMAND_BLOCK) == 0) {
            (void)OS_RestoreInterrupts(bak_psr);
            return FALSE;
        }

        while (sWaitingCommandListCount >= SND_PXI_FIFO_MESSAGE_BUFSIZE ||
               PXI_SendWordByFifo(PXI_FIFO_TAG_SOUND, (u32)sReserveList, FALSE) < 0) {
            (void)OS_RestoreInterrupts(bak_psr);
            (void)SND_RecvCommandReply(SND_COMMAND_NOBLOCK);
            bak_psr = OS_DisableInterrupts();

            DC_FlushRange(sCommandArray, sizeof(sCommandArray));

            if (sReserveList == NULL) {
                (void)OS_RestoreInterrupts(bak_psr);
                return TRUE;
            }
        }
    }

    sWaitingCommandListQueue[sWaitingCommandListQueueWrite] = sReserveList;
    sWaitingCommandListQueueWrite++;
    if (sWaitingCommandListQueueWrite > SND_PXI_FIFO_MESSAGE_BUFSIZE) {
        sWaitingCommandListQueueWrite = 0;
    }

    sReserveList = NULL;
    sReserveListEnd = NULL;

    sWaitingCommandListCount++;
    sCurrentTag++;

    (void)OS_RestoreInterrupts(bak_psr);

    if (flags & SND_COMMAND_IMMEDIATE) {
        RequestCommandProc();
    }

    return TRUE;
}

void SND_WaitForCommandProc (u32 tag) {
    if (SND_IsFinishedCommandTag(tag)) {
        return;
    }

    while (SND_RecvCommandReply(SND_COMMAND_NOBLOCK) != NULL) {
    }
    if (SND_IsFinishedCommandTag(tag)) {
        return;
    }

    RequestCommandProc();

    while (!SND_IsFinishedCommandTag(tag)) {
        (void)SND_RecvCommandReply(SND_COMMAND_BLOCK);
    }
}

void SND_WaitForFreeCommand (int count) {
    int freeCount = SND_CountFreeCommand();

    SDK_MAX_ASSERT(count, SND_COMMAND_NUM);

    if (freeCount >= count) {
        return;
    }

    if (freeCount + SND_CountWaitingCommand() >= count) {
        while (SND_RecvCommandReply(SND_COMMAND_NOBLOCK) != NULL) {
        }

        if (SND_CountFreeCommand() >= count) {
            return;
        }
    } else {
        (void)SND_FlushCommand(SND_COMMAND_BLOCK);
    }

    RequestCommandProc();

    do{
        (void)SND_RecvCommandReply(SND_COMMAND_BLOCK);
    } while (SND_CountFreeCommand() < count);
}

u32 SND_GetCurrentCommandTag (void) {
    OSIntrMode bak_psr = OS_DisableInterrupts();
    u32 tag;

    if (sReserveList == NULL) {
        tag = sFinishedTag;
    } else {
        tag = sCurrentTag;
    }

    (void)OS_RestoreInterrupts(bak_psr);
    return tag;
}

BOOL SND_IsFinishedCommandTag (u32 tag) {
    OSIntrMode bak_psr = OS_DisableInterrupts();
    BOOL result;

    if (tag > sFinishedTag) {
        if (tag - sFinishedTag < 0x80000000) {
            result = FALSE;
        } else {
            result = TRUE;
        }
    } else {
        if (sFinishedTag - tag < 0x80000000) {
            result = TRUE;
        } else {
            result = FALSE;
        }
    }

    (void)OS_RestoreInterrupts(bak_psr);
    return result;
}

int SND_CountFreeCommand (void) {
    OSIntrMode bak_psr = OS_DisableInterrupts();
    SNDCommand * command;
    int count = 0;

    command = sFreeList;
    while (command != NULL) {
        ++count;
        command = command->next;
    }

    (void)OS_RestoreInterrupts(bak_psr);
    return count;
}

int SND_CountReservedCommand (void) {
    OSIntrMode bak_psr = OS_DisableInterrupts();
    SNDCommand * command;
    int count = 0;

    command = sReserveList;
    while (command != NULL) {
        ++count;
        command = command->next;
    }

    (void)OS_RestoreInterrupts(bak_psr);
    return count;
}

int SND_CountWaitingCommand (void) {
    int freeCount = SND_CountFreeCommand();
    int reservedCount = SND_CountReservedCommand();

    return SND_COMMAND_NUM - freeCount - reservedCount;
}

#else

void SND_CommandProc (void) {
    OSMessage message;
    const SNDCommand * command_p;
    SNDCommand command;

    while (OS_ReceiveMessage(&sCommandMesgQueue, &message, OS_MESSAGE_NOBLOCK)) {
        command_p = (const SNDCommand *)message;

        while (command_p != NULL) {
            command = *command_p;

            switch (command.id) {
            case SND_COMMAND_START_SEQ:
                SND_StartSeq(
                    (int)command.arg[0],
                    (const void *)command.arg[1],
                    command.arg[2], (struct SNDBankData *)command.arg[3]
                );
                break;

            case SND_COMMAND_STOP_SEQ:
                SND_StopSeq((int)command.arg[0]);
                break;

            case SND_COMMAND_PREPARE_SEQ:
                SND_PrepareSeq(
                    (int)command.arg[0],
                    (const void *)command.arg[1],
                    command.arg[2], (struct SNDBankData *)command.arg[3]
                );
                break;

            case SND_COMMAND_START_PREPARED_SEQ:
                SND_StartPreparedSeq((int)command.arg[0]);
                break;

            case SND_COMMAND_PAUSE_SEQ:
                SND_PauseSeq((int)command.arg[0], (BOOL)command.arg[1]);
                break;

            case SND_COMMAND_SKIP_SEQ:
                SND_SkipSeq((int)command.arg[0], (u32)command.arg[1]);
                break;

            case SND_COMMAND_PLAYER_PARAM:
                SNDi_SetPlayerParam(
                    (int)command.arg[0],
                    command.arg[1], command.arg[2], (int)command.arg[3]
                );
                break;

            case SND_COMMAND_TRACK_PARAM:
                SNDi_SetTrackParam(
                    (int)UNPACK_COMMAND(command.arg[0], 0, 24),
                    command.arg[1],
                    command.arg[2],
                    command.arg[3], (int)UNPACK_COMMAND(command.arg[0], 24, 8)
                );
                break;

            case SND_COMMAND_MUTE_TRACK:
                SND_SetTrackMute((int)command.arg[0], command.arg[1], (SNDSeqMute)command.arg[2]);
                break;

            case SND_COMMAND_ALLOCATABLE_CHANNEL:
                SND_SetTrackAllocatableChannel((int)command.arg[0], command.arg[1], command.arg[2]);
                break;

            case SND_COMMAND_PLAYER_LOCAL_VAR:
                SND_SetPlayerLocalVariable(
                    (int)command.arg[0],
                    (int)command.arg[1], (s16)command.arg[2]
                );
                break;

            case SND_COMMAND_PLAYER_GLOBAL_VAR:
                SND_SetPlayerGlobalVariable((int)command.arg[0], (s16)command.arg[1]);
                break;

            case SND_COMMAND_START_TIMER:
                StartTimer(command.arg[0], command.arg[1], command.arg[2], command.arg[3]);
                break;

            case SND_COMMAND_STOP_TIMER:
                StopTimer(command.arg[0], command.arg[1], command.arg[2], command.arg[3]);
                break;

            case SND_COMMAND_SETUP_CAPTURE:
                SND_SetupCapture(
                    (SNDCapture)UNPACK_COMMAND(command.arg[2], 31, 1),
                    (SNDCaptureFormat)UNPACK_COMMAND(command.arg[2], 30, 1),
                    (void *)command.arg[0],
                    (int)command.arg[1],
                    (BOOL)UNPACK_COMMAND(command.arg[2], 29, 1),
                    (SNDCaptureIn)UNPACK_COMMAND(command.arg[2], 28, 1),
                    (SNDCaptureOut)UNPACK_COMMAND(command.arg[2], 27, 1)
                );
                break;

            case SND_COMMAND_SETUP_ALARM:
                SND_SetupAlarm(
                    (int)command.arg[0],
                    (OSTick)command.arg[1], (OSTick)command.arg[2], (int)command.arg[3]
                );
                break;

            case SND_COMMAND_CHANNEL_TIMER:
                SetChannelTimer((u32)command.arg[0], (int)command.arg[1]);
                break;

            case SND_COMMAND_CHANNEL_VOLUME:
                SetChannelVolume(
                    (u32)command.arg[0],
                    (int)command.arg[1], (SNDChannelDataShift)command.arg[2]
                );
                break;

            case SND_COMMAND_CHANNEL_PAN:
                SetChannelPan((u32)command.arg[0], (int)command.arg[1]);
                break;

            case SND_COMMAND_SETUP_CHANNEL_PCM:
                SND_SetupChannelPcm(
                    (int)UNPACK_COMMAND(command.arg[0], 0, 16),
                    (const void *)UNPACK_COMMAND(command.arg[1], 0, 27),
                    (SNDWaveFormat)UNPACK_COMMAND(command.arg[3], 24, 2),
                    (SNDChannelLoop)UNPACK_COMMAND(command.arg[3], 26, 2),
                    (int)UNPACK_COMMAND(command.arg[3], 0, 16),
                    (int)UNPACK_COMMAND(command.arg[2], 0, 22),
                    (int)UNPACK_COMMAND(command.arg[2], 24, 7),
                    (SNDChannelDataShift)UNPACK_COMMAND(command.arg[2], 22, 2),
                    (int)UNPACK_COMMAND(command.arg[0], 16, 16),
                    (int)UNPACK_COMMAND(command.arg[3], 16, 7)
                );
                break;

            case SND_COMMAND_SETUP_CHANNEL_PSG:
                SND_SetupChannelPsg(
                    (int)command.arg[0],
                    (SNDDuty)command.arg[3],
                    (int)UNPACK_COMMAND(command.arg[1], 0, 7),
                    (SNDChannelDataShift)UNPACK_COMMAND(command.arg[1], 8, 2),
                    (int)UNPACK_COMMAND(command.arg[2], 8, 16),
                    (int)UNPACK_COMMAND(command.arg[2], 0, 7)
                );
                break;

            case SND_COMMAND_SETUP_CHANNEL_NOISE:
                SND_SetupChannelNoise(
                    (int)command.arg[0],
                    (int)UNPACK_COMMAND(command.arg[1], 0, 7),
                    (SNDChannelDataShift)UNPACK_COMMAND(command.arg[1], 8, 2),
                    (int)UNPACK_COMMAND(command.arg[2], 8, 16),
                    (int)UNPACK_COMMAND(command.arg[2], 0, 7)
                );
                break;

            case SND_COMMAND_SURROUND_DECAY:
                SNDi_SetSurroundDecay((int)command.arg[0]);
                break;

            case SND_COMMAND_MASTER_VOLUME:
                SND_SetMasterVolume((int)command.arg[0]);
                break;

            case SND_COMMAND_MASTER_PAN:
                SND_SetMasterPan((int)command.arg[0]);
                break;

            case SND_COMMAND_OUTPUT_SELECTOR:
                SND_SetOutputSelector(
                    (SNDOutput)command.arg[0],
                    (SNDOutput)command.arg[1],
                    (SNDChannelOut)command.arg[2], (SNDChannelOut)command.arg[3]
                );
                break;

            case SND_COMMAND_LOCK_CHANNEL:
                SND_LockChannel(command.arg[0], command.arg[1]);
                break;

            case SND_COMMAND_UNLOCK_CHANNEL:
                SND_UnlockChannel(command.arg[0], command.arg[1]);
                break;

            case SND_COMMAND_STOP_UNLOCKED_CHANNEL:
                SND_StopUnlockedChannel(command.arg[0], command.arg[1]);
                break;

            case SND_COMMAND_INVALIDATE_SEQ:
                SND_InvalidateSeq((const void *)command.arg[0], (const void *)command.arg[1]);
                break;

            case SND_COMMAND_INVALIDATE_BANK:
                SND_InvalidateBank((const void *)command.arg[0], (const void *)command.arg[1]);
                break;

            case SND_COMMAND_INVALIDATE_WAVE:
                SND_InvalidateWave((const void *)command.arg[0], (const void *)command.arg[1]);
                break;

            case SND_COMMAND_SHARED_WORK:
                SNDi_SharedWork = (SNDSharedWork *)command.arg[0];
                break;

            case SND_COMMAND_READ_DRIVER_INFO:
                ReadDriverInfo((SNDDriverInfo *)command.arg[0]);
                break;
            }

            command_p = command.next;
        }

        SDK_NULL_ASSERT(SNDi_SharedWork);
        SNDi_SharedWork->finishCommandTag++;
    }
}

#endif

static void PxiFifoCallback (PXIFifoTag tag, u32 data, BOOL) {
    OSIntrMode enabled;
    BOOL result;

#ifdef SDK_DEBUG
    SDK_ASSERT(tag == PXI_FIFO_TAG_SOUND);
#else
#pragma unused( tag )
#endif

    enabled = OS_DisableInterrupts();

#ifdef SDK_ARM9

#pragma unused( result )
    SNDi_CallAlarmHandler((int)data);

#else

    if (data >= HW_MAIN_MEM) {
        result = OS_SendMessage(&sCommandMesgQueue, (OSMessage)data, OS_MESSAGE_NOBLOCK);
        SDK_ASSERTMSG(result, "Failed OS_SendMessage");
    } else {
        switch (data) {
        case SND_MSG_REQUEST_COMMAND_PROC:
        {
            (void)SND_SendWakeupMessage();
            break;
        }
        }
    }

#endif

    (void)OS_RestoreInterrupts(enabled);
}

static void InitPXI (void) {
    PXI_SetFifoRecvCallback(PXI_FIFO_TAG_SOUND, PxiFifoCallback);

#ifdef SDK_ARM9
    if (IsCommandAvailable()) {
        while (!PXI_IsCallbackReady(PXI_FIFO_TAG_SOUND, PXI_PROC_ARM7)) {
            OS_SpinWait(100);
        }
    }
#endif
}

#ifdef SDK_ARM9

static void RequestCommandProc (void) {
    while (PXI_SendWordByFifo(PXI_FIFO_TAG_SOUND, SND_MSG_REQUEST_COMMAND_PROC, FALSE) < 0) {
    }
}

static SNDCommand * AllocCommand (void) {
    OSIntrMode bak_psr = OS_DisableInterrupts();
    SNDCommand * command;

    if (sFreeList == NULL) {
        (void)OS_RestoreInterrupts(bak_psr);
        return NULL;
    }

    command = sFreeList;
    sFreeList = sFreeList->next;

    if (sFreeList == NULL) {
        sFreeListEnd = NULL;
    }

    (void)OS_RestoreInterrupts(bak_psr);
    return command;
}

static BOOL IsCommandAvailable (void) {
    OSIntrMode prev_mode;
    u32 res;

    if (!OS_IsRunOnEmulator()) {
        return TRUE;
    }

    prev_mode = OS_DisableInterrupts();

    *(vu32 *)0x4fff200 = 0x10;
    res = *(vu32 *)0x4fff200;

    (void)OS_RestoreInterrupts(prev_mode);

    return res ? TRUE : FALSE;
}

#else

static void SetChannelTimer (u32 chBitMask, int timer) {
    int ch;

    for (ch = 0; ch < SND_CHANNEL_NUM && chBitMask != 0; ch++, chBitMask >>= 1) {
        if ((chBitMask & 0x01) == 0) {
            continue;
        }
        SND_SetChannelTimer(ch, timer);
    }
}

static void SetChannelVolume (u32 chBitMask, int volume, SNDChannelDataShift shift) {
    int ch;

    for (ch = 0; ch < SND_CHANNEL_NUM && chBitMask != 0; ch++, chBitMask >>= 1) {
        if ((chBitMask & 0x01) == 0) {
            continue;
        }
        SND_SetChannelVolume(ch, volume, shift);
    }
}

static void SetChannelPan (u32 chBitMask, int pan) {
    int ch;

    for (ch = 0; ch < SND_CHANNEL_NUM && chBitMask != 0; ch++, chBitMask >>= 1) {
        if ((chBitMask & 0x01) == 0) {
            continue;
        }
        SND_SetChannelPan(ch, pan);
    }
}

static void StartTimer (u32 chBitMask, u32 capBitMask, u32 alarmBitMask, u32) {
    OSIntrMode enabled;
    int i;

    enabled = OS_DisableInterrupts();

    for (i = 0; i < SND_CHANNEL_NUM && chBitMask != 0; i++, chBitMask >>= 1) {
        if ((chBitMask & 0x01) == 0) {
            continue;
        }
        SND_StartChannel(i);
    }

    if (capBitMask & (1 << SND_CAPTURE_0)) {
        if (capBitMask & (1 << SND_CAPTURE_1)) {
            SND_StartCaptureBoth();
        } else {
            SND_StartCapture(SND_CAPTURE_0);
        }
    } else if (capBitMask & (1 << SND_CAPTURE_1)) {
        SND_StartCapture(SND_CAPTURE_1);
    }

    for (i = 0; i < SND_ALARM_NUM && alarmBitMask != 0; i++, alarmBitMask >>= 1) {
        if ((alarmBitMask & 0x01) == 0) {
            continue;
        }
        SND_StartAlarm(i);
    }

    (void)OS_RestoreInterrupts(enabled);

    SND_UpdateSharedWork();
}

static void StopTimer (u32 chBitMask, u32 capBitMask, u32 alarmBitMask, u32 flags) {
    OSIntrMode enabled;
    int i;

    enabled = OS_DisableInterrupts();

    for (i = 0; i < SND_ALARM_NUM && alarmBitMask != 0; i++, alarmBitMask >>= 1) {
        if ((alarmBitMask & 0x01) == 0) {
            continue;
        }
        SND_StopAlarm(i);
    }

    for (i = 0; i < SND_CHANNEL_NUM && chBitMask != 0; i++, chBitMask >>= 1) {
        if ((chBitMask & 0x01) == 0) {
            continue;
        }
        SND_StopChannel(i, (s32)flags);
    }

    if (capBitMask & (1 << SND_CAPTURE_0)) {
        SND_StopCapture(SND_CAPTURE_0);
    }
    if (capBitMask & (1 << SND_CAPTURE_1)) {
        SND_StopCapture(SND_CAPTURE_1);
    }

    (void)OS_RestoreInterrupts(enabled);

    SND_UpdateSharedWork();
}

static void ReadDriverInfo (SNDDriverInfo * info) {
    int ch;

    MI_CpuCopy32(&SNDi_Work, &info->work, sizeof(SNDi_Work));

    info->workAddress = &SNDi_Work;

    for (ch = 0; ch < SND_CHANNEL_NUM; ch++) {
        info->chCtrl[ch] = SND_GetChannelControl(ch);
    }

    info->lockedChannels = SND_GetLockedChannel(0);
}

#endif
