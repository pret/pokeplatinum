#include <nnsys/snd/waveout.h>
#include <nitro/snd.h>
#include <nnsys/misc.h>
#include <nnsys/snd/resource_mgr.h>

typedef struct NNSSndWaveOut {
    int chNo;
    int sampleRate;
    BOOL activeFlag;
    BOOL startFlag;
    u32 startCommandTag;
} NNSSndWaveOut;

static NNSSndWaveOut sWaveOut[SND_CHANNEL_NUM];

NNSSndWaveOutHandle NNS_SndWaveOutAllocChannel (int chNo) {
    NNSSndWaveOut * waveout;

    NNS_MINMAX_ASSERT(chNo, SND_CHANNEL_MIN, SND_CHANNEL_MAX);

    if (!NNS_SndLockChannel((u32)(1 << chNo))) {
        return NNS_SND_WAVEOUT_INVALID_HANDLE;
    }

    waveout = &sWaveOut[chNo];
    waveout->chNo = chNo;
    waveout->activeFlag = FALSE;

    return waveout;
}

void NNS_SndWaveOutFreeChannel (NNSSndWaveOutHandle handle) {
    NNS_NULL_ASSERT(handle);
    NNS_SndUnlockChannel((u32)(1 << handle->chNo));
}

BOOL NNS_SndWaveOutStart (NNSSndWaveOutHandle handle, NNSSndWaveFormat format, const void * dataaddr, BOOL loopFlag, int loopStartSample, int samples, int sampleRate, int volume, int speed, int pan) {
    int loopStart;
    int loopLen;
    u64 timer;

    NNS_NULL_ASSERT(handle);
    NNS_ALIGN4_ASSERT(dataaddr);
    NNS_MINMAX_ASSERT(volume, NNS_SND_WAVEOUT_VOLUME_MIN, NNS_SND_WAVEOUT_VOLUME_MAX);
    NNS_MINMAX_ASSERT(pan, NNS_SND_WAVEOUT_PAN_MIN, NNS_SND_WAVEOUT_PAN_MAX);

    switch (format) {
    case NNS_SND_WAVE_FORMAT_PCM8:
        NNS_ASSERTMSG((loopStartSample & 0x03) == 0, "loopStartSample must be a multiple of 4");
        NNS_ASSERTMSG((samples & 0x03) == 0, "samples must be a multiple of 4");
        loopStart = (loopStartSample >> 2);
        loopLen = (samples >> 2) - loopStart;
        break;
    case NNS_SND_WAVE_FORMAT_PCM16:
        NNS_ASSERTMSG((loopStartSample & 0x01) == 0, "loopStartSample must be a multiple of 2");
        NNS_ASSERTMSG((samples & 0x01) == 0, "samples must be a multiple of 2");
        loopStart = (loopStartSample >> 1);
        loopLen = (samples >> 1) - loopStart;
        break;
    }

    timer = (u64)SND_TIMER_CLOCK * 0x8000 / sampleRate / speed;
    if (timer < SND_CHANNEL_TIMER_MIN) {
        timer = SND_CHANNEL_TIMER_MIN;
    } else if (timer > SND_CHANNEL_TIMER_MAX) {
        timer = SND_CHANNEL_TIMER_MAX;
    }

    SND_SetupChannelPcm(
        handle->chNo,
        (SNDWaveFormat)format,
        dataaddr,
        loopFlag ? SND_CHANNEL_LOOP_REPEAT : SND_CHANNEL_LOOP_1SHOT,
        loopStart,
        loopLen,
        volume,
        SND_CHANNEL_DATASHIFT_NONE,
        (int)timer,
        pan
    );
    SND_StartTimer(
        (u32)(1 << handle->chNo),
        0, 0, 0
    );

    handle->activeFlag = TRUE;
    handle->startFlag = FALSE;
    handle->startCommandTag = SND_GetCurrentCommandTag();
    handle->sampleRate = sampleRate;

    return TRUE;
}

void NNS_SndWaveOutStop (NNSSndWaveOutHandle handle) {
    NNS_NULL_ASSERT(handle);

    if (!handle->activeFlag) {
        return;
    }

    SND_StopTimer(
        (u32)(1 << handle->chNo),
        0, 0, 0
    );

    handle->activeFlag = FALSE;
}

void NNS_SndWaveOutSetVolume (NNSSndWaveOutHandle handle, int volume) {
    NNS_NULL_ASSERT(handle);

    if (!handle->activeFlag) {
        return;
    }

    SND_SetChannelVolume(
        (u32)(1 << handle->chNo),
        volume,
        SND_CHANNEL_DATASHIFT_NONE
    );
}

void NNS_SndWaveOutSetSpeed (NNSSndWaveOutHandle handle, int speed) {
    u64 timer;

    NNS_NULL_ASSERT(handle);

    if (!handle->activeFlag) {
        return;
    }

    timer = (u64)SND_TIMER_CLOCK * 0x8000 / handle->sampleRate / speed;
    if (timer < SND_CHANNEL_TIMER_MIN) {
        timer = SND_CHANNEL_TIMER_MIN;
    } else if (timer > SND_CHANNEL_TIMER_MAX) {
        timer = SND_CHANNEL_TIMER_MAX;
    }

    SND_SetChannelTimer(
        (u32)(1 << handle->chNo),
        (int)timer
    );
}

void NNS_SndWaveOutSetPan (NNSSndWaveOutHandle handle, int pan) {
    NNS_NULL_ASSERT(handle);

    if (!handle->activeFlag) {
        return;
    }

    SND_SetChannelPan(
        (u32)(1 << handle->chNo),
        pan
    );
}

BOOL NNS_SndWaveOutIsPlaying (NNSSndWaveOutHandle handle) {
    NNS_NULL_ASSERT(handle);

    if (!handle->activeFlag) {
        return FALSE;
    }

    if (!handle->startFlag) {
        if (!SND_IsFinishedCommandTag(handle->startCommandTag)) {
            return TRUE;
        }

        handle->startFlag = TRUE;
    }

    if (SND_GetChannelStatus() & (1 << handle->chNo)) {
        return TRUE;
    }

    handle->activeFlag = FALSE;

    return FALSE;
}

void NNS_SndWaveOutWaitForChannelStop (NNSSndWaveOutHandle handle) {
    u32 commandTag;

    NNS_NULL_ASSERT(handle);

    if (!handle->activeFlag) {
        if ((SND_GetChannelStatus() & (1 << handle->chNo)) == 0) {
            return;
        }

        commandTag = SND_GetCurrentCommandTag();
        (void)SND_FlushCommand(SND_COMMAND_BLOCK);
        SND_WaitForCommandProc(commandTag);

        return;
    } else {
        if (!handle->startFlag) {
            SND_WaitForCommandProc(handle->startCommandTag);
            handle->startFlag = TRUE;
        }
        while (1) {
            if ((SND_GetChannelStatus() & (1 << handle->chNo)) == 0) {
                return;
            }
        }
    }
}
