#ifndef POKEPLATINUM_UNK_02003B60_H
#define POKEPLATINUM_UNK_02003B60_H

#include <nnsys.h>

#include "sys_task.h"
#include "struct_defs/struct_020052C8.h"
#include "struct_defs/chatot_cry.h"
#include "game_options.h"

#define SOUND_SYSTEM_HEAP_SIZE              0xBBC00 // ~750kB
#define SOUND_SYSTEM_CAPTURE_BUFFER_SIZE    0x1000
#define SOUND_SYSTEM_HANDLE_COUNT           9

enum SoundHeapState {
    SOUND_HEAP_STATE_EMPTY = 0,
    SOUND_HEAP_STATE_PERSISTENT,
    
    SOUND_HEAP_STATE_COUNT = 7,
    SOUND_HEAP_STATE_INVALID = -1
};

typedef struct SoundSystem {
    NNSSndArc arc; // Only used for storage, NNS manages the arc
    NNSSndHeapHandle heap;
    u8 heapBuffer[SOUND_SYSTEM_HEAP_SIZE]; // Main sound heap where sound data is loaded into
    NNSSndHandle soundHandles[SOUND_SYSTEM_HANDLE_COUNT];
    NNSSndWaveOutHandle unk_BBD20[2];
    const NNSSndArcBankInfo *unk_BBD28;
    u8 unk_BBD2C[SOUND_SYSTEM_CAPTURE_BUFFER_SIZE] ATTRIBUTE_ALIGN(32);
    UnkStruct_020052C8 unk_BCD2C;
    u16 unk_BCD48;
    u8 unk_BCD4A;
    u8 unk_BCD4B;
    int unk_BCD4C;
    int unk_BCD50;
    int unk_BCD54;
    u16 unk_BCD58;
    u16 unk_BCD5A;
    u8 unk_BCD5C;
    u8 unk_BCD5D;
    u16 unk_BCD5E;
    u8 unk_BCD60;
    u8 unk_BCD61;
    u8 unk_BCD62;
    u8 unk_BCD63;
    u8 unk_BCD64;
    u8 unk_BCD65;
    u8 unk_BCD66;
    u8 unk_BCD67;
    enum SoundHeapState heapStates[SOUND_HEAP_STATE_COUNT];
    u8 unk_BCD84;
    u8 unk_BCD85;
    u16 unk_BCD86;
    const SNDWaveData *unk_BCD88;
    void *unk_BCD8C;
    int unk_BCD90;
    SysTask *unk_BCD94;
    ChatotCry *chatotCry;
    ChatotCry *unk_BCD9C[4];
    int unk_BCDAC[2];
    int unk_BCDB4[2];
    int unk_BCDBC[2];
    int unk_BCDC4[2];
    u16 unk_BCDCC[2];
    u8 unk_BCDD0[2];
    u8 unk_BCDD2;
    u8 unk_BCDD3;
} SoundSystem;

void SoundSystem_Init(ChatotCry *chatotCry, Options *options);
void UpdateSound(void);
void sub_02003D0C(int param0);
SoundSystem *SoundSystem_Get(void);
void *sub_02003D5C(int param0);
enum SoundHeapState SoundSystem_SaveHeapState(enum SoundHeapState *state);
void SoundSystem_LoadHeapState(enum SoundHeapState state);
BOOL SoundSystem_LoadSoundGroup(u16 param0);
BOOL sub_02004068(u16 param0);
BOOL sub_02004080(u16 param0, u32 param1);
BOOL sub_0200409C(u16 param0);
BOOL sub_020040B4(u16 param0);
NNSSndHandle *sub_020040CC(int param0);
int sub_020040F0(int param0);

#endif // POKEPLATINUM_UNK_02003B60_H
