#ifndef NITRO_SND_COMMON_GLOBAL_H_
#define NITRO_SND_COMMON_GLOBAL_H_

#include <nitro/types.h>

#ifdef __cplusplus
extern "C" {
#endif

#define SND_MASTER_VOLUME_MAX 0x7f

typedef enum SNDChannelOut {
    SND_CHANNEL_OUT_MIXER,
    SND_CHANNEL_OUT_BYPASS
} SNDChannelOut;

typedef enum SNDOutput {
    SND_OUTPUT_MIXER,
    SND_OUTPUT_CHANNEL1,
    SND_OUTPUT_CHANNEL3,
    SND_OUTPUT_CHANNEL1_3
} SNDOutput;

#ifdef SDK_ARM7

void SND_Enable(void);
void SND_Disable(void);

void SND_Shutdown(void);

void SND_BeginSleep(void);
void SND_EndSleep(void);

void SND_SetMasterVolume(int volume);

void SND_SetOutputSelector(SNDOutput left,
                           SNDOutput right, SNDChannelOut channel1, SNDChannelOut channel3);

#endif

#ifdef __cplusplus
}
#endif

#endif
