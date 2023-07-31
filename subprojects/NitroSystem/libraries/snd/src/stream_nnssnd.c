#include <nnsys/snd/stream.h>
#include <nitro/snd.h>
#include <nnsys/misc.h>
#include <nnsys/snd/resource_mgr.h>

typedef struct NNSSndStrmChannel {
    void * buffer;
    int volume;
} NNSSndStrmChannel;

static NNSSndStrmChannel sStrmChannel[SND_CHANNEL_NUM];
static NNSFndList sStrmList;

static void ShutdownStrm(NNSSndStrm * stream);
static void ForceStopStrm(NNSSndStrm * stream);
static void AlarmCallback(void * arg);
static void StrmCallback(NNSSndStrm * stream, NNSSndStrmCallbackStatus status);
static void BeginSleep(void * arg);
static void EndSleep(void * arg);

void NNS_SndStrmInit (NNSSndStrm * stream) {
    NNS_NULL_ASSERT(stream);

    {
        static BOOL bInitialized = FALSE;

        if (!bInitialized) {
            NNS_FND_INIT_LIST(&sStrmList, NNSSndStrm, link);

            bInitialized = TRUE;
        }
    }

    PM_SetSleepCallbackInfo(&stream->preSleepInfo, BeginSleep, stream);
    PM_SetSleepCallbackInfo(&stream->postSleepInfo, EndSleep, stream);

    stream->chBitMask = 0;
    stream->numChannels = 0;
    stream->activeFlag = FALSE;
    stream->startFlag = FALSE;
}

BOOL NNS_SndStrmAllocChannel (NNSSndStrm * stream, int numChannels, const u8 chNoList[]) {
    u32 chBitMask;
    int i;

    NNS_NULL_ASSERT(stream);
    NNS_MINMAX_ASSERT(numChannels, 1, SND_CHANNEL_NUM);

    chBitMask = 0;
    for ( i = 0; i < numChannels ; i++ ) {
        NNS_MINMAX_ASSERT(chNoList[i], SND_CHANNEL_MIN, SND_CHANNEL_MAX);

        stream->channelNo[i] = chNoList[i];
        chBitMask |= (1 << chNoList[i]);
    }

    if (!NNS_SndLockChannel(chBitMask)) {
        return FALSE;
    }

    stream->numChannels = numChannels;
    stream->chBitMask = chBitMask;

    return TRUE;
}

void NNS_SndStrmFreeChannel (NNSSndStrm * stream) {
    NNS_NULL_ASSERT(stream);

    if (stream->chBitMask == 0) {
        return;
    }

    NNS_SndUnlockChannel(stream->chBitMask);

    stream->chBitMask = 0;
    stream->numChannels = 0;
}

BOOL NNS_SndStrmSetup (NNSSndStrm * stream, NNSSndStrmFormat format, void * buffer, u32 bufSize, int timer, int interval, NNSSndStrmCallback callback, void * arg) {
    NNSSndStrmChannel * chp;
    unsigned int samples;
    unsigned int alarmTimer;
    int chNo;
    int index;

    NNS_NULL_ASSERT(stream);
    NNS_ASSERTMSG(((u32)buffer & 0x1f) == 0, "buffer address must be aligned to 32 bytes boundary.");
    NNS_ASSERTMSG(
        (bufSize % (interval * stream->numChannels * 32)) == 0,
        "buffer size must be a multiple of interval * numChannels * 32."
    );
    NNS_MINMAX_ASSERT(timer, NNS_SND_STRM_TIMER_MIN, NNS_SND_STRM_TIMER_MAX);
    NNS_NULL_ASSERT(callback);

    if (stream->activeFlag) {
        NNS_SndStrmStop(stream);
    }

    bufSize /= 32 * interval * stream->numChannels;
    stream->chBufLen = bufSize * interval * 32;

    samples = stream->chBufLen;
    if (format == NNS_SND_STRM_FORMAT_PCM16) {
        samples >>= 1;
    }

    NNS_ASSERTMSG((samples % interval) == 0, "interval must be a multiple of sample count.");
    alarmTimer = timer * samples / interval;

    stream->alarmNo = NNS_SndAllocAlarm();
    if (stream->alarmNo < 0) {
        return FALSE;
    }

    for ( index = 0; index < stream->numChannels ; index++ ) {
        chNo = stream->channelNo[index];

        chp = &sStrmChannel[chNo];

        chp->buffer = (u8 *)buffer + stream->chBufLen * index;
        NNS_ALIGN4_ASSERT(chp->buffer);

        chp->volume = 0;

        SND_SetupChannelPcm(
            chNo,
            (SNDWaveFormat)format,
            chp->buffer,
            SND_CHANNEL_LOOP_REPEAT,
            0,
            (int)(stream->chBufLen >> 2),
            127,
            SND_CHANNEL_DATASHIFT_NONE,
            timer << 5,
                64
        );
    }

    SND_SetupAlarm(
        stream->alarmNo,
        alarmTimer,
        alarmTimer,
        AlarmCallback,
        stream
    );

    NNS_FndAppendListObject(&sStrmList, stream);

    stream->format = format;
    stream->interval = interval;
    stream->callback = callback;
    stream->callbackArg = arg;
    stream->curBuffer = 0;

    stream->volume = 0;

    stream->activeFlag = TRUE;

    {
        OSIntrMode old = OS_DisableInterrupts();

        stream->interval = 1;
        StrmCallback(stream, NNS_SND_STRM_CALLBACK_SETUP);
        stream->interval = interval;

        (void)OS_RestoreInterrupts(old);
    }

    return TRUE;
}

void NNS_SndStrmStart (NNSSndStrm * stream) {
    NNS_NULL_ASSERT(stream);

    SND_StartTimer(
        stream->chBitMask,
        0,
        (u32)(1 << stream->alarmNo),
        0
    );

    if (!stream->startFlag) {
        PM_PrependPreSleepCallback(&stream->preSleepInfo);
        PM_AppendPostSleepCallback(&stream->postSleepInfo);

        stream->startFlag = TRUE;
    }
}

void NNS_SndStrmStop (NNSSndStrm * stream) {
    NNS_NULL_ASSERT(stream);

    if (!stream->activeFlag) {
        return;
    }

    ForceStopStrm(stream);
}

void NNS_SndStrmSetVolume (NNSSndStrm * stream, int volume) {
    u16 chVolume;
    int vol;
    int chNo;
    int i;

    NNS_NULL_ASSERT(stream);

    stream->volume = volume;

    for ( i = 0 ; i < stream->numChannels ; i++ ) {
        chNo = stream->channelNo[i];
        vol = stream->volume + sStrmChannel[chNo].volume;
        chVolume = SND_CalcChannelVolume(vol);

        SND_SetChannelVolume(
            (u32)(1 << chNo),
            chVolume & 0xff,
            (SNDChannelDataShift)(chVolume >> 8)
        );
    }
}

void NNS_SndStrmSetChannelVolume (NNSSndStrm * stream, int chNo, int volume) {
    u16 chVolume;
    int vol;

    NNS_NULL_ASSERT(stream);

    if (chNo > stream->numChannels - 1) {
        return;
    }

    chNo = stream->channelNo[chNo];
    sStrmChannel[chNo].volume = volume;

    vol = stream->volume + sStrmChannel[chNo].volume;
    chVolume = SND_CalcChannelVolume(vol);

    SND_SetChannelVolume(
        (u32)(1 << chNo),
        chVolume & 0xff,
        (SNDChannelDataShift)(chVolume >> 8)
    );
}

void NNS_SndStrmSetChannelPan (NNSSndStrm * stream, int chNo, int pan) {
    NNS_NULL_ASSERT(stream);
    NNS_MINMAX_ASSERT(pan, NNS_SND_STRM_PAN_MIN, NNS_SND_STRM_PAN_MAX);

    if (chNo > stream->numChannels - 1) {
        return;
    }

    SND_SetChannelPan((u32)(1 << stream->channelNo[chNo]), pan);
}

static void ForceStopStrm (NNSSndStrm * stream) {
    u32 commandTag;

    NNS_NULL_ASSERT(stream);

    if (stream->startFlag) {
        SND_StopTimer(
            stream->chBitMask,
            0,
            (u32)(1 << stream->alarmNo),
            0
        );

        PM_DeletePreSleepCallback(&stream->preSleepInfo);
        PM_DeletePostSleepCallback(&stream->postSleepInfo);

        stream->startFlag = FALSE;

        commandTag = SND_GetCurrentCommandTag();
        (void)SND_FlushCommand(SND_COMMAND_BLOCK);
        SND_WaitForCommandProc(commandTag);
    }

    ShutdownStrm(stream);
}

static void ShutdownStrm (NNSSndStrm * stream) {
    NNS_NULL_ASSERT(stream);

    NNS_SndFreeAlarm(stream->alarmNo);

    NNS_FndRemoveListObject(&sStrmList, stream);

    stream->activeFlag = FALSE;
}

static void AlarmCallback (void * arg) {
    StrmCallback((NNSSndStrm *)arg, NNS_SND_STRM_CALLBACK_INTERVAL);
}

static void StrmCallback (NNSSndStrm * stream, NNSSndStrmCallbackStatus status) {
    static void * buffer[NNS_SND_STRM_CHANNEL_MAX];
    const unsigned long blockSize = stream->chBufLen / stream->interval;
    const unsigned long offset = blockSize * stream->curBuffer;
    int index;
    int chNo;

    for ( index = 0; index < stream->numChannels ; index++ ) {
        chNo = stream->channelNo[index];

        buffer[index] = (u8 *)(sStrmChannel[chNo].buffer) + offset;
    }

    stream->callback(
        status,
        stream->numChannels,
        buffer,
        blockSize,
        stream->format,
        stream->callbackArg
    );

    stream->curBuffer++;
    if (stream->curBuffer >= stream->interval) {
        stream->curBuffer = 0;
    }
}

void BeginSleep (void * arg) {
    NNSSndStrm * stream = (NNSSndStrm *)arg;
    u32 commandTag;

    NNS_NULL_ASSERT(stream);

    if (!stream->startFlag) {
        return;
    }

    SND_StopTimer(
        stream->chBitMask,
        0,
        (u32)(1 << stream->alarmNo),
        0
    );

    commandTag = SND_GetCurrentCommandTag();
    (void)SND_FlushCommand(SND_COMMAND_BLOCK);
    SND_WaitForCommandProc(commandTag);
}

void EndSleep (void * arg) {
    NNSSndStrm * stream = (NNSSndStrm *)arg;

    NNS_NULL_ASSERT(stream);

    if (!stream->startFlag) {
        return;
    }

    while (stream->curBuffer != 0) {
        OSIntrMode old = OS_DisableInterrupts();

        StrmCallback(stream, NNS_SND_STRM_CALLBACK_INTERVAL);

        (void)OS_RestoreInterrupts(old);
    }

    SND_StartTimer(
        stream->chBitMask,
        0,
        (u32)(1 << stream->alarmNo),
        0
    );
}
