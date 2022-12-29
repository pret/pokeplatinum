#ifndef NNS_SND_STREAM_H_
#define NNS_SND_STREAM_H_

#include <nitro/types.h>
#include <nitro/snd.h>
#include <nitro/spi.h>
#include <nnsys/fnd/list.h>
#include <nnsys/snd/config.h>

#ifdef __cplusplus
extern "C" {
#endif

#define NNS_SND_STRM_CHANNEL_MAX 16

#define NNS_SND_STRM_PAN_MIN 0
#define NNS_SND_STRM_PAN_MAX 127

#define NNS_SND_STRM_TIMER_CLOCK (SND_TIMER_CLOCK / 32)
#define NNS_SND_STRM_TIMER_MIN ((SND_CHANNEL_TIMER_MIN + 31) / 32)
#define NNS_SND_STRM_TIMER_MAX (SND_CHANNEL_TIMER_MAX / 32)

typedef enum NNSSndStrmFormat {
    NNS_SND_STRM_FORMAT_PCM8,
    NNS_SND_STRM_FORMAT_PCM16
} NNSSndStrmFormat;

typedef enum NNSSndStrmCallbackStatus {
    NNS_SND_STRM_CALLBACK_SETUP,
    NNS_SND_STRM_CALLBACK_INTERVAL
} NNSSndStrmCallbackStatus;

typedef void (* NNSSndStrmCallback)(
    NNSSndStrmCallbackStatus status,
    int numChannles,
    void * buffer[],
    u32 len,
    NNSSndStrmFormat format,
    void * arg
);

typedef struct NNSSndStrm {
    NNSFndLink link;
    PMSleepCallbackInfo preSleepInfo;
    PMSleepCallbackInfo postSleepInfo;

    NNSSndStrmFormat format;
    BOOL activeFlag : 1;
    BOOL startFlag :   1;

    u32 chBufLen;
    int interval;
    NNSSndStrmCallback callback;
    void * callbackArg;
    int curBuffer;

    int volume;

    int alarmNo;
    u32 chBitMask;
    int numChannels;
    u8 channelNo[NNS_SND_STRM_CHANNEL_MAX];
} NNSSndStrm;

void NNS_SndStrmInit(NNSSndStrm * stream);

BOOL NNS_SndStrmAllocChannel(NNSSndStrm * stream, int numChannels, const u8 chNoList[]);
void NNS_SndStrmFreeChannel(NNSSndStrm * stream);

BOOL NNS_SndStrmSetup(
    NNSSndStrm * stream,
    NNSSndStrmFormat format,
    void * buffer,
    u32 bufSize,
    int timer,
    int interval,
    NNSSndStrmCallback callback,
    void * arg
);
void NNS_SndStrmStart(NNSSndStrm * stream);
void NNS_SndStrmStop(NNSSndStrm * stream);

void NNS_SndStrmSetVolume(NNSSndStrm * stream, int volume);
void NNS_SndStrmSetChannelVolume(NNSSndStrm * stream, int chNo, int volume);
void NNS_SndStrmSetChannelPan(NNSSndStrm * stream, int chNo, int pan);

NNS_SND_INLINE void NNS_SndStrmBeginSleep (NNSSndStrm * stream)
{
#pragma unused( stream )
}
NNS_SND_INLINE void NNS_SndStrmEndSleep (NNSSndStrm * stream)
{
#pragma unused( stream )
}

#ifdef __cplusplus
}
#endif

#endif
