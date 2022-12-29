#ifndef NITRO_SND_INTERFACE_H_
#define NITRO_SND_INTERFACE_H_

#include <nitro/types.h>
#include <nitro/snd/common/capture.h>
#include <nitro/snd/common/channel.h>
#include <nitro/snd/common/global.h>
#include <nitro/snd/common/alarm.h>
#include <nitro/snd/common/seq.h>

#ifdef __cplusplus
extern "C" {
#endif

struct SNDBankData;
struct SNDSharedWork;
struct SNDSpCallback;
struct SNDDriverInfo;

void SND_StartSeq(int playerNo, const void * base, u32 offset, const struct SNDBankData * bank);
void SND_PrepareSeq(int playerNo, const void * base, u32 offset, const struct SNDBankData * bank);
void SND_StartPreparedSeq(int playerNo);
void SND_StopSeq(int playerNo);

void SND_StopSeq(int playerNo);
void SND_PauseSeq(int playerNo, BOOL flag);

void SND_SetPlayerTempoRatio(int playerNo, int ratio);
void SND_SetPlayerVolume(int playerNo, int volume);
void SND_SetPlayerChannelPriority(int playerNo, int prio);
void SND_SetPlayerLocalVariable(int playerNo, int varNo, s16 var);
void SND_SetPlayerGlobalVariable(int varNo, s16 var);

void SND_SetTrackMute(int playerNo, u32 trackBitMask, BOOL flag);
void SND_SetTrackMuteEx(int playerNo, u32 trackBitMask, SNDSeqMute mute);
void SND_SetTrackVolume(int playerNo, u32 trackBitMask, int volume);
void SND_SetTrackPitch(int playerNo, u32 trackBitMask, int pitch);
void SND_SetTrackPan(int playerNo, u32 trackBitMask, int pan);
void SND_SetTrackPanRange(int playerNo, u32 trackBitMask, int panRange);
void SND_SetTrackModDepth(int playerNo, u32 trackBitMask, int depth);
void SND_SetTrackModSpeed(int playerNo, u32 trackBitMask, int speed);
void SND_SetTrackAllocatableChannel(int playerNo, u32 trackBitMask, u32 chBitMask);

void SND_StartTimer(u32 chBitMask, u32 capBitMask, u32 alarmBitMask, u32 flags);
void SND_StopTimer(u32 chBitMask, u32 capBitMask, u32 alarmBitMask, u32 flags);

void SND_LockChannel(u32 chBitMask, u32 flags);
void SND_UnlockChannel(u32 chBitMask, u32 flags);
void SND_StopUnlockedChannel(u32 chBitMask, u32 flags);

void SND_SetupChannelPcm(int chNo,
                         SNDWaveFormat format,
                         const void * dataAddr,
                         SNDChannelLoop loop,
                         int loopStart,
                         int dataLen, int volume, SNDChannelDataShift shift, int timer, int pan);
void SND_SetupChannelPsg(int chNo,
                         SNDDuty duty,
                         int volume, SNDChannelDataShift shift, int timer, int pan);
void SND_SetupChannelNoise(int chNo, int volume, SNDChannelDataShift shift, int timer, int pan);

void SND_SetChannelVolume(u32 chBitMask, int volume, SNDChannelDataShift shift);
void SND_SetChannelTimer(u32 chBitMask, int timer);
void SND_SetChannelPan(u32 chBitMask, int pan);

void SND_SetupCapture(SNDCapture capture,
                      SNDCaptureFormat format,
                      void * buffer_p,
                      u32 length, BOOL loopFlag, SNDCaptureIn in, SNDCaptureOut out);

void SND_SetupAlarm(int alarmNo, u32 tick, u32 period, SNDAlarmHandler handler, void * arg);

void SND_SetMasterVolume(int volume);

void SND_SetOutputSelector(SNDOutput left,
                           SNDOutput right, SNDChannelOut channel1, SNDChannelOut channel3);

void SND_SetMasterPan(int pan);
void SND_ResetMasterPan(void);

void SND_InvalidateSeqData(const void * start, const void * end);
void SND_InvalidateBankData(const void * start, const void * end);
void SND_InvalidateWaveData(const void * start, const void * end);

void SND_ReadDriverInfo(struct SNDDriverInfo * info);

void SNDi_SetPlayerParam(int playerNo, u32 offset, u32 data, int size);
void SNDi_SetTrackParam(int playerNo, u32 trackBitMask, u32 offset, u32 data, int size);
void SNDi_SkipSeq(int playerNo, u32 tick);
void SNDi_SetSurroundDecay(int decay);

#ifdef __cplusplus
}
#endif

#endif
