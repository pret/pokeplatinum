#ifndef NITRO_SND_COMMON_CHANNEL_H_
#define NITRO_SND_COMMON_CHANNEL_H_

#include <nitro/types.h>

#if !(defined(SDK_WIN32) || defined(SDK_FROM_TOOL))
#include <nitro/misc.h>
#include <nitro/hw/common/armArch.h>

#ifdef SDK_ARM7
#include <nitro/hw/ARM7/ioreg_SND.h>
#endif

#else

#define HW_CPU_CLOCK_ARM7 33513982

#endif

#ifdef __cplusplus
extern "C" {
#endif

#define SND_TIMER_CLOCK (HW_CPU_CLOCK_ARM7 / 2)

#define SND_CHANNEL_NUM 16
#define SND_CHANNEL_MIN 0
#define SND_CHANNEL_MAX 15

#define SND_PSG_CHANNEL_MIN 8
#define SND_PSG_CHANNEL_MAX 13
#define SND_PSG_CHANNEL_NUM (SND_PSG_CHANNEL_MAX - SND_PSG_CHANNEL_MIN + 1)

#define SND_NOISE_CHANNEL_MIN 14
#define SND_NOISE_CHANNEL_MAX 15
#define SND_NOISE_CHANNEL_NUM (SND_NOISE_CHANNEL_MAX - SND_NOISE_CHANNEL_MIN + 1)

#define SND_CHANNEL_PAN_MIN 0
#define SND_CHANNEL_PAN_CENTER 64
#define SND_CHANNEL_PAN_MAX 0x7f

#define SND_CHANNEL_VOLUME_MIN 0
#define SND_CHANNEL_VOLUME_MAX 0x7f

#define SND_CHANNEL_TIMER_MIN 0x10
#define SND_CHANNEL_TIMER_MAX 0xffff

#define SND_CHANNEL_LOOP_START_MAX 0xffff
#define SND_CHANNEL_LOOP_LEN_MAX 0x3fffff

#define SND_CHANNEL_SAD_MASK 0x07fffffc

#define SND_PCM_CHANNEL_MASK 0xffff
#define SND_PSG_CHANNEL_MASK 0x3f00
#define SND_NOISE_CHANNEL_MASK 0xc000
#define SND_CAPIN_CHANNEL_MASK 0x0005
#define SND_CAPOUT_CHANNEL_MASK 0x000a

#define SND_CHANNEL_STOP_HOLD (1 << 0)

#define SND_CHANNEL_REG_OFFSET(ch) ((ch) << 4)

#ifdef SDK_ARM9

#define REG_SND_SOUND0CNT_E_SHIFT 31
#define REG_SND_SOUND0CNT_E_SIZE 1
#define REG_SND_SOUND0CNT_E_MASK 0x80000000

#define REG_SND_SOUND0CNT_FORMAT_SHIFT 29
#define REG_SND_SOUND0CNT_FORMAT_SIZE 2
#define REG_SND_SOUND0CNT_FORMAT_MASK 0x60000000

#define REG_SND_SOUND0CNT_REPEAT_SHIFT 27
#define REG_SND_SOUND0CNT_REPEAT_SIZE 2
#define REG_SND_SOUND0CNT_REPEAT_MASK 0x18000000

#define REG_SND_SOUND0CNT_DUTY_SHIFT 24
#define REG_SND_SOUND0CNT_DUTY_SIZE 3
#define REG_SND_SOUND0CNT_DUTY_MASK 0x07000000

#define REG_SND_SOUND0CNT_PAN_SHIFT 16
#define REG_SND_SOUND0CNT_PAN_SIZE 7
#define REG_SND_SOUND0CNT_PAN_MASK 0x007f0000

#define REG_SND_SOUND0CNT_HOLD_SHIFT 15
#define REG_SND_SOUND0CNT_HOLD_SIZE 1
#define REG_SND_SOUND0CNT_HOLD_MASK 0x00008000

#define REG_SND_SOUND0CNT_SHIFT_SHIFT 8
#define REG_SND_SOUND0CNT_SHIFT_SIZE 2
#define REG_SND_SOUND0CNT_SHIFT_MASK 0x00000300

#define REG_SND_SOUND0CNT_VOLUME_SHIFT 0
#define REG_SND_SOUND0CNT_VOLUME_SIZE 7
#define REG_SND_SOUND0CNT_VOLUME_MASK 0x0000007f

#endif

typedef enum {
    SND_CHANNEL_0,
    SND_CHANNEL_1,
    SND_CHANNEL_2,
    SND_CHANNEL_3,
    SND_CHANNEL_4,
    SND_CHANNEL_5,
    SND_CHANNEL_6,
    SND_CHANNEL_7,
    SND_CHANNEL_8,
    SND_CHANNEL_9,
    SND_CHANNEL_10,
    SND_CHANNEL_11,
    SND_CHANNEL_12,
    SND_CHANNEL_13,
    SND_CHANNEL_14,
    SND_CHANNEL_15
} SNDChannelId;

typedef enum {
    SND_WAVE_FORMAT_PCM8,
    SND_WAVE_FORMAT_PCM16,
    SND_WAVE_FORMAT_ADPCM,
    SND_WAVE_FORMAT_PSG,
    SND_WAVE_FORMAT_NOISE = SND_WAVE_FORMAT_PSG
} SNDWaveFormat;

typedef enum {
    SND_CHANNEL_LOOP_MANUAL,
    SND_CHANNEL_LOOP_REPEAT,
    SND_CHANNEL_LOOP_1SHOT
} SNDChannelLoop;

#define SND_CHANNEL_LOOP_REPAET SND_CHANNEL_LOOP_REPEAT

typedef enum {
    SND_DUTY_1_8,
    SND_DUTY_2_8,
    SND_DUTY_3_8,
    SND_DUTY_4_8,
    SND_DUTY_5_8,
    SND_DUTY_6_8,
    SND_DUTY_7_8
} SNDDuty;

typedef enum {
    SND_CHANNEL_DATASHIFT_NONE,
    SND_CHANNEL_DATASHIFT_1BIT,
    SND_CHANNEL_DATASHIFT_2BIT,
    SND_CHANNEL_DATASHIFT_4BIT
} SNDChannelDataShift;

#ifdef SDK_ARM7
#if !(defined(SDK_WIN32) || defined(SDK_FROM_TOOL))

static inline void SND_StartChannel (int chNo)
{
    SDK_MINMAX_ASSERT(chNo, SND_CHANNEL_MIN, SND_CHANNEL_MAX);

    *((REGType8v *)(REG_SOUND0CNT_8_ADDR + SND_CHANNEL_REG_OFFSET(chNo)))
        |= REG_SND_SOUND0CNT_8_E_MASK;
}

#else

void SND_StartChannel(int chNo);

#endif

#endif

#ifdef SDK_ARM7

void SND_SetupChannelPcm(int chNo,
                         const void * dataaddr,
                         SNDWaveFormat format,
                         SNDChannelLoop loop,
                         int loopStart,
                         int loopLen, int volume, SNDChannelDataShift shift, int timer, int pan);
void SND_SetupChannelPsg(int chNo,
                         SNDDuty duty,
                         int volume, SNDChannelDataShift shift, int timer, int pan);
void SND_SetupChannelNoise(int chNo, int volume, SNDChannelDataShift shift, int timer, int pan);

void SND_StopChannel(int chNo, s32 flags);

void SND_SetChannelVolume(int chNo, int volume, SNDChannelDataShift shift);
void SND_SetChannelTimer(int chNo, int timer);
void SND_SetChannelPan(int chNo, int pan);

BOOL SND_IsChannelActive(int chNo);

void SND_SetMasterPan(int pan);

u32 SND_GetChannelControl(int chNo);

#endif

#ifdef SDK_ARM7

void SNDi_SetSurroundDecay(int decay);

#endif

#ifdef __cplusplus
}
#endif

#endif
