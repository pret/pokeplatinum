#ifndef NNSYS_SND_WAVEOUT_H_
#define NNSYS_SND_WAVEOUT_H_

#define NNS_SND_WAVEOUT_INVALID_HANDLE NULL

typedef enum NNSSndWaveFormat {
    NNS_SND_WAVE_FORMAT_PCM8,
    NNS_SND_WAVE_FORMAT_PCM16
} NNSSndWaveFormat;

struct NNSSndWaveOut;
typedef struct NNSSndWaveOut * NNSSndWaveOutHandle;

NNSSndWaveOutHandle NNS_SndWaveOutAllocChannel(int chNo);

#endif //NNSYS_SND_WAVEOUT_H_
