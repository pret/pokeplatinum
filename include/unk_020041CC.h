#ifndef POKEPLATINUM_UNK_020041CC_H
#define POKEPLATINUM_UNK_020041CC_H

#include <nitro/snd.h>
#include <nitro/spi.h>
#include <nnsys.h>

#include "sound_system.h"
#include "struct_defs/struct_02004CB4.h"


#define FIELD_BGM_BANK_STATE_IDLE   0
#define FIELD_BGM_BANK_STATE_SWITCH 1


void Sound_SetBGMFixed(u8 fixed);
u8 Sound_IsBGMFixed(void);
void Sound_SetCurrentBGM(u16 bgmID);
u16 Sound_GetCurrentBGM();
void Sound_SetNextBGM(u16 bgmID);
u16 Sound_GetNextBGM();
void Sound_SetFieldBGM(u16 param0);
void Sound_SetScene(u8 scene);
void Sound_SetSubScene(u8 scene);
int Sound_LoadSoundEffectsForScene(u8 param0);
BOOL sub_02004550(u8 param0, u16 param1, int param2);
void Sound_LoadSoundDataForFieldBGM(u16 param0, u16 param1);
void sub_02004950(u16 param0);
void sub_02004964(void);
int Sound_GetHeapState(enum SoundHeapState state);
void sub_020049F4(u8 param0, BOOL param1);
void sub_02004A3C();
void sub_02004A54(int param0, int param1, int param2);
void Sound_SetInitialVolumeForHandle(enum SoundHandleType param0, int param1);
void sub_02004A84(int param0);
void Sound_AdjustVolumeForVoiceChat(int param0, enum SoundHandleType param1);
void sub_02004AD4(u16 param0, int param1);
BOOL sub_02004AE8(int param0, int param1, u16 param2);
int sub_02004B04(int param0);
u8 Sound_GetPlayerForSequence(u16 param0);
int Sound_GetSequenceIDFromSoundHandle(NNSSndHandle *param0);
const NNSSndArcBankInfo *sub_02004B3C(int param0);
u16 Sound_GetBankIDFromSequenceID(int param0);
MICResult sub_02004B5C(MICAutoParam *param0);
MICResult sub_02004B64(void);
MICResult sub_02004B70(MICSamplingType param0, void *param1, MICCallback param2, void *param3);
NNSSndWaveOutHandle *sub_02004B78(u32 param0);
BOOL sub_02004BCC(u32 param0);
void sub_02004C4C(u32 param0);
BOOL sub_02004CB4(UnkStruct_02004CB4 *param0, u32 param1);
void sub_02004CF4(u32 param0);
BOOL sub_02004D04(u32 param0);
void sub_02004D14(u32 param0, u8 param1);
void sub_02004D2C(u32 param0, u32 param1);
void sub_02004D40(u32 param0, int param1);
BOOL sub_02004D78(u16 param0, int param1, int param2, u32 param3, int heapID);
void sub_02004E84(u32 param0);
BOOL sub_02004EC0(void);
BOOL sub_02004EC8(int param0);
void sub_02004EEC(int param0);
void sub_02004EF4(int param0, int param1);
BOOL sub_02004EFC(void);
void sub_02004F44(void);
void sub_02004F4C(int param0);
void sub_02004F68(int param0, u16 param1, int param2);
void sub_02004F7C(u16 param0, u16 param1, int param2);
void sub_02004F94(int param0, u16 param1, int param2);
void sub_02004FA8(int param0, int param1);
void Sound_SetPlaybackMode(BOOL param0);
void sub_02004FCC(int param0);
void sub_02004FDC(int param0);
int sub_02004FEC(void);
void sub_0200500C(int param0);
void *sub_02005014(void);
void Sound_SetFieldBGMBankState(int param0);
BOOL sub_0200502C(u8 param0, u16 param1, int param2, int param3, u8 param4, void *param5);
BOOL sub_02005068(u8 param0, u16 param1, int param2, int param3, int param4, u8 param5, void *param6);
const u8 *sub_020050E0(const SNDWaveData *param0);
const u32 sub_020050EC(const SNDWaveData *param0);
const SNDWaveData *sub_020050F8(int param0);
u32 sub_02005188(int param0, const SNDWaveData *param1, int param2);
u32 sub_020051C4(int param0);
void sub_020051D0(const SNDWaveData *param0, u8 *param1, int param2, int param3);
void sub_020053CC(int param0);
void sub_0200544C(int param0, int param1);
void sub_02005454(BOOL param0);
void sub_02005464(BOOL param0);

#endif // POKEPLATINUM_UNK_020041CC_H
