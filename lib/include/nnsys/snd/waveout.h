#ifndef NNS_SND_WAVEOUT_H_
#define NNS_SND_WAVEOUT_H_

#include <nitro/types.h>

#ifdef __cplusplus
extern "C" {
#endif

#define NNS_SND_WAVEOUT_INVALID_HANDLE NULL

#define NNS_SND_WAVEOUT_VOLUME_MIN 0
#define NNS_SND_WAVEOUT_VOLUME_MAX 127

#define NNS_SND_WAVEOUT_PAN_MIN 0
#define NNS_SND_WAVEOUT_PAN_MAX 127

typedef enum NNSSndWaveFormat {
    NNS_SND_WAVE_FORMAT_PCM8,
    NNS_SND_WAVE_FORMAT_PCM16
} NNSSndWaveFormat;

struct NNSSndWaveOut;
typedef struct NNSSndWaveOut * NNSSndWaveOutHandle;

NNSSndWaveOutHandle NNS_SndWaveOutAllocChannel(int chNo);
void NNS_SndWaveOutFreeChannel(NNSSndWaveOutHandle handle);

BOOL NNS_SndWaveOutStart(
    NNSSndWaveOutHandle handle,
    NNSSndWaveFormat format,
    const void * dataaddr,
    BOOL loopFlag,
    int loopStartSample,
    int samples,
    int sampleRate,
    int volume,
    int speed,
    int pan
);
void NNS_SndWaveOutStop(NNSSndWaveOutHandle handle);

void NNS_SndWaveOutSetVolume(NNSSndWaveOutHandle handle, int volume);
void NNS_SndWaveOutSetSpeed(NNSSndWaveOutHandle handle, int speed);
void NNS_SndWaveOutSetPan(NNSSndWaveOutHandle handle, int pan);

BOOL NNS_SndWaveOutIsPlaying(NNSSndWaveOutHandle handle);

void NNS_SndWaveOutWaitForChannelStop(NNSSndWaveOutHandle handle);

#ifdef __cplusplus
}
#endif

#endif
