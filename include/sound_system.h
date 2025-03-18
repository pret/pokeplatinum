#ifndef POKEPLATINUM_SOUND_SYSTEM_H
#define POKEPLATINUM_SOUND_SYSTEM_H

#include <nnsys.h>

#include "sys_task.h"
#include "struct_defs/struct_020052C8.h"
#include "struct_defs/chatot_cry.h"
#include "game_options.h"

#define SOUND_SYSTEM_HEAP_SIZE              0xBBC00 // ~750kB
#define SOUND_SYSTEM_CAPTURE_BUFFER_SIZE    0x1000
#define SOUND_HEAP_STATE_INVALID            -1

enum SoundHeapState {
    SOUND_HEAP_STATE_EMPTY = 0,
    SOUND_HEAP_STATE_PERSISTENT,
    SOUND_HEAP_STATE_BGM_BANK,
    SOUND_HEAP_STATE_SFX,
    SOUND_HEAP_STATE_BGM,
    
    SOUND_HEAP_STATE_COUNT = 7
};

enum SoundSystemState {
    SOUND_SYSTEM_STATE_IDLE = 0,
    SOUND_SYSTEM_STATE_PLAY = 1, // Start playing a sound
    SOUND_SYSTEM_STATE_PLAYING = 2, // Sound is playing
    SOUND_SYSTEM_STATE_FADE_IN = 3,
    SOUND_SYSTEM_STATE_FADE_OUT = 4,
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

enum SoundSystemParam {
    SOUND_SYSTEM_PARAM_BGM_FIXED = 5,

    SOUND_SYSTEM_PARAM_FADE_COUNTER = 7,

    SOUND_SYSTEM_PARAM_CURRENT_BGM = 10,
    SOUND_SYSTEM_PARAM_NEXT_BGM,

    SOUND_SYSTEM_PARAM_FIELD_BGM_BANK_STATE = 19,

    SOUND_SYSTEM_PARAM_MAIN_SCENE = 21,
    SOUND_SYSTEM_PARAM_SUB_SCENE,
    SOUND_SYSTEM_PARAM_HEAP_STATE_EMPTY,
    SOUND_SYSTEM_PARAM_HEAP_STATE_PERSISTENT,
    SOUND_SYSTEM_PARAM_HEAP_STATE_BGM_BANK,
    SOUND_SYSTEM_PARAM_HEAP_STATE_SFX,
    SOUND_SYSTEM_PARAM_HEAP_STATE_BGM,

    SOUND_SYSTEM_PARAM_FIELD_BGM = 32,
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
    u8 bgmFixed; // BGM can't change if this is set
    u8 unk_BCD4B;
    int fadeCounter;
    int unk_BCD50;
    int unk_BCD54;
    u16 currentBGM;
    u16 nextBGM;
    u8 unk_BCD5C;
    u8 unk_BCD5D;
    u16 unk_BCD5E;
    u8 unk_BCD60;
    u8 unk_BCD61;
    u8 unk_BCD62;
    u8 unk_BCD63;
    u8 fieldBGMBankState;
    u8 unk_BCD65;
    u8 mainScene;
    u8 subScene;
    int heapStates[SOUND_HEAP_STATE_COUNT];
    u8 unk_BCD84;
    u8 unk_BCD85;
    u16 currentFieldBGM;
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
void *SoundSystem_GetParam(enum SoundSystemParam param);
int SoundSystem_SaveHeapState(int *state);
void SoundSystem_LoadHeapState(int state);
BOOL SoundSystem_LoadSoundGroup(u16 group);
BOOL SoundSystem_LoadSequence(u16 id);
BOOL SoundSystem_LoadSequenceEx(u16 id, u32 flags); // See NNS_SND_ARC_LOAD_* in nnsys/snd/sndarc.h for flags
BOOL SoundSystem_LoadWaveArc(u16 id);
BOOL SoundSystem_LoadBank(u16 id);
NNSSndHandle *SoundSystem_GetSoundHandle(enum SoundHandleType type);
enum SoundHandleType SoundSystem_GetSoundHandleTypeFromPlayerID(int playerID);

#endif // POKEPLATINUM_SOUND_SYSTEM_H
