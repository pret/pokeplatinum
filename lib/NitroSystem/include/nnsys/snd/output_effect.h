#ifndef NNS_SND_OUTPUT_EFFECT_H_
#define NNS_SND_OUTPUT_EFFECT_H_

#include <nitro/types.h>
#include <nnsys/snd/capture.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
    NNS_SND_CAPTURE_OUTPUT_EFFECT_NORMAL,
    NNS_SND_CAPTURE_OUTPUT_EFFECT_SURROUND,
    NNS_SND_CAPTURE_OUTPUT_EFFECT_HEADPHONE,
    NNS_SND_CAPTURE_OUTPUT_EFFECT_MONO
} NNSSndCaptureOutputEffectType;

BOOL NNS_SndCaptureStartOutputEffect(void * buffer_p, u32 bufSize, NNSSndCaptureOutputEffectType type);
void NNS_SndCaptureStopOutputEffect(void);
void NNS_SndCaptureChangeOutputEffect(NNSSndCaptureOutputEffectType type);
void NNS_SndCaptureSetOutputEffectCallback(NNSSndCaptureCallback func, void * arg);
void NNS_SndCaptureSetPostOutputEffectCallback(NNSSndCaptureCallback func, void * arg);

#ifdef __cplusplus
}
#endif

#endif
