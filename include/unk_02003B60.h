#ifndef POKEPLATINUM_UNK_02003B60_H
#define POKEPLATINUM_UNK_02003B60_H

#include <nnsys.h>

#include "sys_task.h"
#include "struct_defs/struct_020052C8.h"
#include "struct_defs/chatot_cry.h"
#include "game_options.h"

#define SOUND_SYSTEM_HEAP_SIZE              0xBBC00 // ~750kB
#define SOUND_SYSTEM_CAPTURE_BUFFER_SIZE    0x1000

enum SoundHeapState {
    SOUND_HEAP_STATE_EMPTY = 0,
    SOUND_HEAP_STATE_PERSISTENT,
    
    SOUND_HEAP_STATE_COUNT = 7,
    SOUND_HEAP_STATE_INVALID = -1
};

enum SoundSystemState {
    SOUND_SYSTEM_STATE_IDLE = 0,
};

enum SoundHandleType {
    SOUND_HANDLE_TYPE_FIELD_BGM = 0,
    SOUND_HANDLE_TYPE_POKEMON_CRY,
    // Unknown (2)
    SOUND_HANDLE_TYPE_SFX_1 = 3,
    SOUND_HANDLE_TYPE_SFX_2,
    SOUND_HANDLE_TYPE_SFX_3,
    SOUND_HANDLE_TYPE_SFX_4,
    SOUND_HANDLE_TYPE_BGM,
    // Unknown (8)

    SOUND_HANDLE_TYPE_COUNT = 9
};

typedef struct SoundSystem {
    NNSSndArc arc; // Only used for storage, NNS manages the arc
    NNSSndHeapHandle heap;
    u8 heapBuffer[SOUND_SYSTEM_HEAP_SIZE]; // Main sound heap where sound data is loaded into
    NNSSndHandle soundHandles[SOUND_HANDLE_TYPE_COUNT];
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
void SoundSystem_Update();
void SoundSystem_SetState(enum SoundSystemState status);
SoundSystem *SoundSystem_Get();
void *sub_02003D5C(int param0);
enum SoundHeapState SoundSystem_SaveHeapState(enum SoundHeapState *state);
void SoundSystem_LoadHeapState(enum SoundHeapState state);
BOOL SoundSystem_LoadSoundGroup(u16 group);
BOOL SoundSystem_LoadSequence(u16 id);
BOOL SoundSystem_LoadSequenceEx(u16 id, u32 flags); // See NNS_SND_ARC_LOAD_* in nnsys/snd/sndarc.h for flags
BOOL SoundSystem_LoadWaveArc(u16 param0);
BOOL SoundSystem_LoadBank(u16 param0);
NNSSndHandle *SoundSystem_GetSoundHandle(enum SoundHandleType type);
int SoundSystem_GetSoundHandleTypeFromPlayerID(int param0);

#endif // POKEPLATINUM_UNK_02003B60_H
