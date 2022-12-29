#ifndef NNS_SND_CAPTURE_H_
#define NNS_SND_CAPTURE_H_

#include <nitro/types.h>
#include <nitro/snd.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
    NNS_SND_CAPTURE_FORMAT_PCM16,
    NNS_SND_CAPTURE_FORMAT_PCM8
} NNSSndCaptureFormat;

typedef enum {
    NNS_SND_CAPTURE_TYPE_REVERB,
    NNS_SND_CAPTURE_TYPE_EFFECT,
    NNS_SND_CAPTURE_TYPE_SAMPLING
} NNSSndCaptureType;

typedef void (* NNSSndCaptureCallback)(
    void * bufferL,
    void * bufferR,
    u32 len,
    NNSSndCaptureFormat format,
    void * arg
);
typedef NNSSndCaptureCallback NNSSndCaptureEffectCallback;

void NNS_SndCaptureCreateThread(u32 threadPrio);
void NNS_SndCaptureDestroyThread(void);

BOOL NNS_SndCaptureStartReverb(
    void * buffer_p,
    u32 bufSize,
    NNSSndCaptureFormat format,
    int sampleRate,
    int volume
);
void NNS_SndCaptureStopReverb(int frames);
void NNS_SndCaptureSetReverbVolume(int volume, int frames);

BOOL NNS_SndCaptureStartEffect(
    void * buffer_p,
    u32 bufSize,
    NNSSndCaptureFormat format,
    int sampleRate,
    int interval,
    NNSSndCaptureEffectCallback callback,
    void * arg
);
void NNS_SndCaptureStopEffect(void);

BOOL NNS_SndCaptureStartSampling(
    void * buffer_p,
    u32 bufSize,
    NNSSndCaptureFormat format,
    int sampleRate,
    int interval,
    NNSSndCaptureCallback callback,
    void * arg
);
void NNS_SndCaptureStopSampling(void);

BOOL NNS_SndCaptureIsActive(void);
NNSSndCaptureType NNS_SndCaptureGetCaptureType(void);

void NNSi_SndCaptureInit(void);
void NNSi_SndCaptureMain(void);

BOOL NNSi_SndCaptureStart(
    NNSSndCaptureType type,
    void * buffer0,
    void * buffer1,
    u32 bufLen,
    NNSSndCaptureFormat format,
    SNDCaptureIn input,
    SNDCaptureOut output,
    BOOL loopFlag,
    int sampleRate,
    int volume,
    int pan0,
    int pan1,
    int interval,
    NNSSndCaptureCallback callback,
    void * arg
);
void NNSi_SndCaptureStop(void);

void NNSi_SndCaptureBeginSleep(void);
void NNSi_SndCaptureEndSleep(void);

#ifdef __cplusplus
}
#endif

#endif
