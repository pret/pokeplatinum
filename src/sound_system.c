#include "sound_system.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/chatot_cry.h"
#include "struct_defs/struct_020052C8.h"

#include "generated/sdat.h"

#include "game_options.h"
#include "sys_task_manager.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_02006224.h"



static void SoundSystem_InitHeapStates(SoundSystem *soundSys);
static void SoundSystem_InitSoundHandles(SoundSystem *soundSys);
static void SoundSystem_LoadPersistentGroup(SoundSystem *soundSys);
static void SoundSystem_InitMic();
static BOOL sub_02003D28();
static void sub_02003C64();
static void sub_020041B4();

static SoundSystem sSoundSystem;
static int sSoundSystemState;
static NNSSndCaptureOutputEffectType Unk_02101DF4;

void SoundSystem_Init(ChatotCry *chatotCry, Options *options)
{
    SoundSystem *soundSys = SoundSystem_Get();

    NNS_SndInit();

    SoundSystem_InitMic();
    SoundSystem_InitHeapStates(soundSys);

    soundSys->heap = NNS_SndHeapCreate(&soundSys->heapBuffer, sizeof(soundSys->heapBuffer));

    NNS_SndArcInit(&soundSys->arc, "data/sound/pl_sound_data.sdat", soundSys->heap, 0);
    NNS_SndArcPlayerSetup(soundSys->heap);

    SoundSystem_InitSoundHandles(soundSys);
    SoundSystem_LoadPersistentGroup(soundSys);

    Unk_02101DF4 = NNS_SND_CAPTURE_OUTPUT_EFFECT_NORMAL;
    soundSys->chatotCry = chatotCry;

    Sound_SetPlaybackMode(options->soundMode);
}

void SoundSystem_Update()
{
    SoundSystem *soundSys = SoundSystem_Get();

    if (sub_02003D28() == 0) {
        if (soundSys->fadeCounter > 0) {
            soundSys->fadeCounter--;
        }

        sub_02003C64();
    }

    CheckMicRecordingStatus();

    for (int i = 0; i < 2; i++) {
        if (soundSys->unk_BCDD0[i] != 0) {
            soundSys->unk_BCDD0[i]--;

            if (soundSys->unk_BCDD0[i] == 0) {
                Sound_PlayPokemonCry(soundSys->unk_BCDAC[i], soundSys->unk_BCDCC[i], soundSys->unk_BCDB4[i], soundSys->unk_BCDBC[i], soundSys->unk_BCDC4[i], 0);
            }
        }
    }

    NNS_SndMain();
    return;
}

static void sub_02003C64()
{
    int v0;
    SoundSystem *v1 = SoundSystem_Get();

    switch (sSoundSystemState) {
    case SOUND_SYSTEM_STATE_IDLE:
        break;
    case SOUND_SYSTEM_STATE_PLAY:
        SoundSystem_SetState(SOUND_SYSTEM_STATE_PLAYING);
        break;
    case SOUND_SYSTEM_STATE_PLAYING:
        break;
    case SOUND_SYSTEM_STATE_FADE_IN:
        if (Sound_IsFadeActive() == FALSE) {
            SoundSystem_SetState(SOUND_SYSTEM_STATE_PLAYING);
        }
        break;
    case SOUND_SYSTEM_STATE_FADE_OUT:
        if (Sound_IsFadeActive() == FALSE) {
            SoundSystem_SetState(SOUND_SYSTEM_STATE_PLAYING);
        }
        break;
    case 5:
        if (Sound_IsFadeActive() == FALSE) {
            if (sub_02004FEC() == 0) {
                sub_020041B4();
                Sound_PlayBGM(v1->nextBGM);
            }
        }
        break;
    case 6:
        if (Sound_IsFadeActive() == FALSE) {
            if (sub_02004FEC() == 0) {
                sub_020041B4();
                Sound_PlayBGM(v1->nextBGM);
                Sound_FadeInBGM(127, v1->unk_BCD54, 0);
            }
        }
        break;
    }

    return;
}

void SoundSystem_SetState(enum SoundSystemState state)
{
    SoundSystem *soundSys = SoundSystem_Get();

    soundSys->unk_BCD48 = 0;
    sSoundSystemState = state;
}

static BOOL sub_02003D28()
{
    SoundSystem *v0 = SoundSystem_Get();

    if (Sound_GetNumberOfPlayingSequencesForPlayer(2) != 0) {
        return 1;
    }

    if (v0->unk_BCD5E != 0) {
        return 1;
    }

    return 0;
}

SoundSystem *SoundSystem_Get()
{
    return &sSoundSystem;
}

void *SoundSystem_GetParam(enum SoundSystemParam param)
{
    SoundSystem *soundSys = SoundSystem_Get();

    switch (param) {
    case SOUND_SYSTEM_PARAM_BGM_FIXED:
        return &soundSys->bgmFixed;
    case 6:
        return &soundSys->unk_BCD4B;
    case 0:
        return &soundSys->unk_BBD20[0];
    case 1:
        return &soundSys->unk_BBD20[1];
    case 2:
        return &soundSys->unk_BBD28;
    case 3:
        return &soundSys->unk_BBD2C;
    case 4:
        return &soundSys->unk_BCD2C;
    case SOUND_SYSTEM_PARAM_FADE_COUNTER:
        return &soundSys->fadeCounter;
    case 8:
        return &soundSys->unk_BCD50;
    case 9:
        return &soundSys->unk_BCD54;
    case SOUND_SYSTEM_PARAM_CURRENT_BGM:
        return &soundSys->currentBGM;
    case SOUND_SYSTEM_PARAM_NEXT_BGM:
        return &soundSys->nextBGM;
    case 12:
        return &soundSys->unk_BCD5C;
    case 13:
        return &soundSys->unk_BCD5D;
    case 14:
        return &soundSys->unk_BCD5E;
    case 15:
        return &soundSys->unk_BCD60;
    case 16:
        return &soundSys->unk_BCD61;
    case 17:
        return &soundSys->unk_BCD62;
    case 18:
        return &soundSys->unk_BCD63;
    case SOUND_SYSTEM_PARAM_FIELD_BGM_BANK_STATE:
        return &soundSys->fieldBGMBankState;
    case 20:
        return &soundSys->unk_BCD65;
    case SOUND_SYSTEM_PARAM_MAIN_SCENE:
        return &soundSys->mainScene;
    case SOUND_SYSTEM_PARAM_SUB_SCENE:
        return &soundSys->subScene;
    case SOUND_SYSTEM_PARAM_HEAP_STATE_EMPTY:
        return &soundSys->heapStates[SOUND_HEAP_STATE_EMPTY];
    case SOUND_SYSTEM_PARAM_HEAP_STATE_PERSISTENT:
        return &soundSys->heapStates[SOUND_HEAP_STATE_PERSISTENT];
    case SOUND_SYSTEM_PARAM_HEAP_STATE_BGM_BANK:
        return &soundSys->heapStates[SOUND_HEAP_STATE_BGM_BANK];
    case SOUND_SYSTEM_PARAM_HEAP_STATE_SFX:
        return &soundSys->heapStates[SOUND_HEAP_STATE_SFX];
    case SOUND_SYSTEM_PARAM_HEAP_STATE_BGM:
        return &soundSys->heapStates[SOUND_HEAP_STATE_BGM];
    case 28:
        return &soundSys->heapStates[5];
    case 29:
        return &soundSys->heapStates[6];
    case 30:
        return &soundSys->unk_BCD84;
    case 31:
        return &soundSys->unk_BCD85;
    case SOUND_SYSTEM_PARAM_FIELD_BGM:
        return &soundSys->currentFieldBGM;
    case 33:
        return &soundSys->unk_BCD88;
    case 34:
        return &soundSys->unk_BCD8C;
    case 35:
        return &soundSys->unk_BCD94;
    case 36:
        return &soundSys->chatotCry;
    case 37:
        return &soundSys->unk_BCD9C[0];
    case 38:
        return &soundSys->unk_BCD9C[1];
    case 39:
        return &soundSys->unk_BCD9C[2];
    case 40:
        return &soundSys->unk_BCD9C[3];
    case 41:
        return &soundSys->unk_BCDAC[0];
    case 42:
        return &soundSys->unk_BCDB4[0];
    case 43:
        return &soundSys->unk_BCDBC[0];
    case 44:
        return &soundSys->unk_BCDC4[0];
    case 45:
        return &soundSys->unk_BCDCC[0];
    case 46:
        return &soundSys->unk_BCDD0[0];
    case 47:
        return &soundSys->unk_BCDAC[1];
    case 48:
        return &soundSys->unk_BCDB4[1];
    case 49:
        return &soundSys->unk_BCDBC[1];
    case 50:
        return &soundSys->unk_BCDC4[1];
    case 51:
        return &soundSys->unk_BCDCC[1];
    case 52:
        return &soundSys->unk_BCDD0[1];
    case 53:
        return &soundSys->unk_BCDD2;
    case 54:
        return &soundSys->unk_BCDD3;
    }

    GF_ASSERT(FALSE);
    return NULL;
}

int SoundSystem_SaveHeapState(int *state)
{
    int newState = NNS_SndHeapSaveState(SoundSystem_Get()->heap);
    if (newState == SOUND_HEAP_STATE_INVALID) {
        GF_ASSERT(FALSE);
    }

    if (state != NULL) {
        *state = newState;
    }

    return newState;
}

void SoundSystem_LoadHeapState(int state)
{
    NNS_SndHeapLoadState(SoundSystem_Get()->heap, state);
}

BOOL SoundSystem_LoadSoundGroup(u16 group)
{
    return NNS_SndArcLoadGroup(group, SoundSystem_Get()->heap);
}

BOOL SoundSystem_LoadSequence(u16 id)
{
    return NNS_SndArcLoadSeq(id, SoundSystem_Get()->heap);
}

BOOL SoundSystem_LoadSequenceEx(u16 id, u32 flags)
{
    return NNS_SndArcLoadSeqEx(id, flags, SoundSystem_Get()->heap);
}

BOOL SoundSystem_LoadWaveArc(u16 id)
{
    return NNS_SndArcLoadWaveArc(id, SoundSystem_Get()->heap);
}

BOOL SoundSystem_LoadBank(u16 id)
{
    return NNS_SndArcLoadBank(id, SoundSystem_Get()->heap);
}

NNSSndHandle *SoundSystem_GetSoundHandle(enum SoundHandleType type)
{
    SoundSystem *soundSys = SoundSystem_Get();

    if (type >= SOUND_HANDLE_TYPE_COUNT) {
        GF_ASSERT(FALSE);
        type = SOUND_HANDLE_TYPE_FIELD_BGM;
    }

    return &soundSys->soundHandles[type];
}

enum SoundHandleType SoundSystem_GetSoundHandleTypeFromPlayerID(int playerID)
{
    enum SoundHandleType type;

    switch (playerID) {
    case PLAYER_FIELD:
        type = SOUND_HANDLE_TYPE_FIELD_BGM;
        break;
    case PLAYER_PV:
        type = SOUND_HANDLE_TYPE_POKEMON_CRY;
        break;
    case PLAYER_ME:
        type = 2;
        break;
    case PLAYER_SE_1:
        type = SOUND_HANDLE_TYPE_SFX_1;
        break;
    case PLAYER_SE_2:
        type = SOUND_HANDLE_TYPE_SFX_2;
        break;
    case PLAYER_SE_3:
        type = SOUND_HANDLE_TYPE_SFX_3;
        break;
    case PLAYER_SE_4:
        type = SOUND_HANDLE_TYPE_SFX_4;
        break;
    case PLAYER_BGM:
        type = SOUND_HANDLE_TYPE_BGM;
        break;
    default:
        GF_ASSERT(FALSE);
        type = SOUND_HANDLE_TYPE_SFX_1;
        break;
    }

    return type;
}

static void SoundSystem_InitHeapStates(SoundSystem *soundSys)
{
    memset(soundSys, 0, sizeof(SoundSystem));

    for (int i = 0; i < SOUND_HEAP_STATE_COUNT; i++) {
        soundSys->heapStates[i] = (i + 1);
    }
}

static void SoundSystem_InitSoundHandles(SoundSystem *soundSys)
{
    for (int i = 0; i < SOUND_HANDLE_TYPE_COUNT; i++) {
        NNS_SndHandleInit(&soundSys->soundHandles[i]);
    }
}

static void SoundSystem_LoadPersistentGroup(SoundSystem *soundSys)
{
    SoundSystem_SaveHeapState(&soundSys->heapStates[SOUND_HEAP_STATE_EMPTY]);
    SoundSystem_LoadSoundGroup(GROUP_GLOBAL);
    SoundSystem_SaveHeapState(&soundSys->heapStates[SOUND_HEAP_STATE_PERSISTENT]);
}

static void SoundSystem_InitMic()
{
    MIC_Init();
    PM_SetAmp(PM_AMP_ON);
    PM_SetAmpGain(PM_AMPGAIN_80);
}

static void sub_020041B4()
{
    NNS_SndPlayerStopSeqByPlayerNo(7, 0);
    NNS_SndHandleReleaseSeq(SoundSystem_GetSoundHandle(7));
}
