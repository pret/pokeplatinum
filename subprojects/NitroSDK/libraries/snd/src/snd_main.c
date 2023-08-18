#include <nitro/snd/common/main.h>
#include <nitro/os.h>
#include <nitro/snd/common/global.h>
#include <nitro/snd/common/exchannel.h>
#include <nitro/snd/common/seq.h>
#include <nitro/snd/common/alarm.h>
#include <nitro/snd/common/command.h>
#include <nitro/snd/common/util.h>
#include <nitro/snd/common/work.h>

#ifdef SDK_ARM7

#define SND_THREAD_STACK_SIZE 1024
#define SND_THREAD_MESSAGE_BUFSIZE 8

#define SND_ALARM_COUNT_P1 0x10000

#endif

#ifdef SDK_ARM9

static OSMutex sSndMutex;

#else

static OSThread sndThread;
static u64 sndStack[SND_THREAD_STACK_SIZE / sizeof(u64)];
static OSAlarm sndAlarm;
static OSMessageQueue sndMesgQueue;
static OSMessage sndMesgBuffer[SND_THREAD_MESSAGE_BUFSIZE];

#endif

#ifdef SDK_ARM7

static void SndThread(void * arg);
static void SndAlarmCallback(void * arg);

#endif

#ifdef SDK_ARM9

void SND_Init (void) {
    {
        static BOOL initialized = FALSE;
        if (initialized) {
            return;
        }
        initialized = TRUE;
    }

    OS_InitMutex(&sSndMutex);
    SND_CommandInit();
    SND_AlarmInit();
}

#else

void SND_Init (u32 threadPrio) {
    {
        static BOOL initialized = FALSE;
        if (initialized) {
            return;
        }
        initialized = TRUE;
    }

    SND_CommandInit();

    SND_CreateThread(threadPrio);
}

void SND_CreateThread (u32 threadPrio) {
    OS_CreateThread(
        &sndThread,
        SndThread,
        NULL,
        sndStack + SND_THREAD_STACK_SIZE / sizeof(u64),
        SND_THREAD_STACK_SIZE, threadPrio
    );
    OS_WakeupThreadDirect(&sndThread);
}

BOOL SND_SetThreadPriority (u32 prio) {
    return OS_SetThreadPriority(&sndThread, prio);
}

void SND_InitIntervalTimer (void) {
    OS_InitMessageQueue(&sndMesgQueue, sndMesgBuffer, SND_THREAD_MESSAGE_BUFSIZE);

    OS_CreateAlarm(&sndAlarm);
}

void SND_StartIntervalTimer (void) {
    OS_SetPeriodicAlarm(
        &sndAlarm,
        OS_GetTick() + SND_ALARM_COUNT_P1,
        SND_PROC_INTERVAL, &SndAlarmCallback, NULL
    );
}

void SND_StopIntervalTimer (void) {
    OS_CancelAlarm(&sndAlarm);
}

OSMessage SND_WaitForIntervalTimer (void) {
    OSMessage message;

    (void)OS_ReceiveMessage(&sndMesgQueue, &message, OS_MESSAGE_BLOCK);

    return message;
}

BOOL SND_SendWakeupMessage (void) {
    return OS_SendMessage(&sndMesgQueue, (OSMessage)SND_MESSAGE_WAKEUP_THREAD, OS_MESSAGE_NOBLOCK);
}

#endif

void SNDi_LockMutex (void) {
#ifdef SDK_ARM9
    OS_LockMutex(&sSndMutex);
#endif
}

void SNDi_UnlockMutex (void) {
#ifdef SDK_ARM9
    OS_UnlockMutex(&sSndMutex);
#endif
}

#ifdef SDK_ARM7

static void SndAlarmCallback (void *) {
    if (!OS_SendMessage(&sndMesgQueue, (OSMessage)SND_MESSAGE_PERIODIC, OS_MESSAGE_NOBLOCK)) {
        OS_PutString("Failed sound alarm OS_SendMessage\n");
    }
}

static void SndThread (void *) {
    SND_InitIntervalTimer();
    SND_ExChannelInit();
    SND_SeqInit();
    SND_AlarmInit();
    SND_Enable();
    SND_SetOutputSelector(
        SND_OUTPUT_MIXER,
        SND_OUTPUT_MIXER, SND_CHANNEL_OUT_MIXER, SND_CHANNEL_OUT_MIXER
    );
    SND_SetMasterVolume(SND_MASTER_VOLUME_MAX);

    SND_StartIntervalTimer();

    while (1) {
        OSMessage message;
        BOOL doPeriodicProc = FALSE;

        message = SND_WaitForIntervalTimer();

        switch ((u32)message) {
        case SND_MESSAGE_PERIODIC:
            doPeriodicProc = TRUE;
            break;
        case SND_MESSAGE_WAKEUP_THREAD:
            break;
        }

        SND_UpdateExChannel();

        SND_CommandProc();

        SND_SeqMain(doPeriodicProc);
        SND_ExChannelMain(doPeriodicProc);

        SND_UpdateSharedWork();

        (void)SND_CalcRandom();
    }

    SND_Disable();
    SND_StopIntervalTimer();
}

#endif
