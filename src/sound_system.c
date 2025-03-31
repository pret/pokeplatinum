#include "sound_system.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/chatot_cry.h"
#include "struct_defs/struct_020052C8.h"

#include "generated/sdat.h"

#include "game_options.h"
#include "sys_task_manager.h"
#include "sound.h"
#include "sound_playback.h"
#include "unk_02006224.h"



static void SoundSystem_InitHeapStates(SoundSystem *soundSys);
static void SoundSystem_InitSoundHandles(SoundSystem *soundSys);
static void SoundSystem_LoadPersistentGroup(SoundSystem *soundSys);
static void SoundSystem_InitMic();
static BOOL SoundSystem_IsFanfarePlaying();
static void SoundSystem_UpdateState();
static void SoundSystem_StopBGM();

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

    if (SoundSystem_IsFanfarePlaying() == FALSE) {
        if (soundSys->fadeCounter > 0) {
            soundSys->fadeCounter--;
        }

        SoundSystem_UpdateState();
    }

    CheckMicRecordingStatus();

    for (int i = 0; i < 2; i++) {
        if (soundSys->pokemonCryDelay[i] != 0) {
            soundSys->pokemonCryDelay[i]--;

            if (soundSys->pokemonCryDelay[i] == 0) {
                Sound_PlayPokemonCryEx(soundSys->pokemonCryMod[i], soundSys->pokemonCryWaveID[i], soundSys->pokemonCryPan[i], soundSys->pokemonCryVolume[i], soundSys->pokemonCryHeapID[i], 0);
            }
        }
    }

    NNS_SndMain();
    return;
}

static void SoundSystem_UpdateState()
{
    SoundSystem *soundSys = SoundSystem_Get();

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
    case SOUND_SYSTEM_STATE_FADE_OUT_PLAY:
        if (Sound_IsFadeActive() == FALSE) {
            if (Sound_UpdateFollowUpWaitFrames() == 0) {
                SoundSystem_StopBGM();
                Sound_PlayBGM(soundSys->nextBGM);
            }
        }
        break;
    case SOUND_SYSTEM_STATE_FADE_OUT_FADE_IN:
        if (Sound_IsFadeActive() == FALSE) {
            if (Sound_UpdateFollowUpWaitFrames() == 0) {
                SoundSystem_StopBGM();
                Sound_PlayBGM(soundSys->nextBGM);
                Sound_FadeInBGM(SOUND_VOLUME_MAX, soundSys->followUpFadeFrames, BGM_FADE_IN_TYPE_FROM_ZERO);
            }
        }
        break;
    }
}

void SoundSystem_SetState(enum SoundSystemState state)
{
    SoundSystem *soundSys = SoundSystem_Get();

    soundSys->unk_BCD48 = 0;
    sSoundSystemState = state;
}

static BOOL SoundSystem_IsFanfarePlaying()
{
    SoundSystem *soundSys = SoundSystem_Get();

    if (Sound_GetNumberOfPlayingSequencesForPlayer(PLAYER_ME) != 0) {
        return TRUE;
    }

    if (soundSys->fanfareDelay != 0) {
        return TRUE;
    }

    return FALSE;
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
    case SOUND_SYSTEM_PARAM_ACTIVE_CRY:
        return &soundSys->activePokemonCry;
    case SOUND_SYSTEM_PARAM_WAVE_OUT_PRIMARY_HANDLE:
        return &soundSys->waveOutHandles[0];
    case SOUND_SYSTEM_PARAM_WAVE_OUT_SECONDARY_HANDLE:
        return &soundSys->waveOutHandles[1];
    case SOUND_SYSTEM_PARAM_CURRENT_BANK_INFO:
        return &soundSys->currentBankInfo;
    case SOUND_SYSTEM_PARAM_REVERB_BUFFER:
        return &soundSys->reverbBuffer;
    case 4:
        return &soundSys->unk_BCD2C;
    case SOUND_SYSTEM_PARAM_FADE_COUNTER:
        return &soundSys->fadeCounter;
    case SOUND_SYSTEM_PARAM_FOLLOW_UP_WAIT_FRAMES:
        return &soundSys->followUpWaitFrames;
    case SOUND_SYSTEM_PARAM_FOLLOW_UP_FADE_FRAMES:
        return &soundSys->followUpFadeFrames;
    case SOUND_SYSTEM_PARAM_CURRENT_BGM:
        return &soundSys->currentBGM;
    case SOUND_SYSTEM_PARAM_NEXT_BGM:
        return &soundSys->nextBGM;
    case SOUND_SYSTEM_PARAM_FIELD_BGM_PAUSED:
        return &soundSys->fieldBGMPaused;
    case SOUND_SYSTEM_PARAM_BGM_PAUSED:
        return &soundSys->bgmPaused;
    case SOUND_SYSTEM_PARAM_FANFARE_DELAY:
        return &soundSys->fanfareDelay;
    case SOUND_SYSTEM_PARAM_WAVE_OUT_REVERSED_PLAYBACK:
        return &soundSys->waveOutReversedPlayback;
    case SOUND_SYSTEM_PARAM_WAVE_OUT_PRIMARY_ALLOCATED:
        return &soundSys->waveOutPrimaryAllocated;
    case SOUND_SYSTEM_PARAM_WAVE_OUT_SECONDARY_ALLOCATED:
        return &soundSys->waveOutSecondaryAllocated;
    case SOUND_SYSTEM_PARAM_ECHO_ENABLED:
        return &soundSys->echoEnabled;
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
    case SOUND_SYSTEM_PARAM_HEAP_STATE_SUB_SFX:
        return &soundSys->heapStates[SOUND_HEAP_STATE_SUB_SFX];
    case SOUND_SYSTEM_PARAM_HEAP_STATE_FANFARE:
        return &soundSys->heapStates[SOUND_HEAP_STATE_FANFARE];
    case 30:
        return &soundSys->unk_BCD84;
    case 31:
        return &soundSys->unk_BCD85;
    case SOUND_SYSTEM_PARAM_FIELD_BGM:
        return &soundSys->currentFieldBGM;
    case 33:
        return &soundSys->unk_BCD88;
    case SOUND_SYSTEM_PARAM_WAVE_OUT_REVERSE_BUFFER:
        return &soundSys->waveOutReverseBuffer;
    case SOUND_SYSTEM_PARAM_CRY_DURATION_TASK:
        return &soundSys->pokemonCryDurationTask;
    case SOUND_SYSTEM_PARAM_CHATOT_CRY:
        return &soundSys->chatotCry;
    case 37:
        return &soundSys->unk_BCD9C[0];
    case 38:
        return &soundSys->unk_BCD9C[1];
    case 39:
        return &soundSys->unk_BCD9C[2];
    case 40:
        return &soundSys->unk_BCD9C[3];
    case SOUND_SYSTEM_PARAM_CRY_A_MOD:
        return &soundSys->pokemonCryMod[0];
    case SOUND_SYSTEM_PARAM_CRY_A_PAN:
        return &soundSys->pokemonCryPan[0];
    case SOUND_SYSTEM_PARAM_CRY_A_VOLUME:
        return &soundSys->pokemonCryVolume[0];
    case SOUND_SYSTEM_PARAM_CRY_A_HEAP_ID:
        return &soundSys->pokemonCryHeapID[0];
    case SOUND_SYSTEM_PARAM_CRY_A_WAVE_ID:
        return &soundSys->pokemonCryWaveID[0];
    case SOUND_SYSTEM_PARAM_CRY_A_DELAY:
        return &soundSys->pokemonCryDelay[0];
    case SOUND_SYSTEM_PARAM_CRY_B_MOD:
        return &soundSys->pokemonCryMod[1];
    case SOUND_SYSTEM_PARAM_CRY_B_PAN:
        return &soundSys->pokemonCryPan[1];
    case SOUND_SYSTEM_PARAM_CRY_B_VOLUME:
        return &soundSys->pokemonCryVolume[1];
    case SOUND_SYSTEM_PARAM_CRY_B_HEAP_ID:
        return &soundSys->pokemonCryHeapID[1];
    case SOUND_SYSTEM_PARAM_CRY_B_WAVE_ID:
        return &soundSys->pokemonCryWaveID[1];
    case SOUND_SYSTEM_PARAM_CRY_B_DELAY:
        return &soundSys->pokemonCryDelay[1];
    case SOUND_SYSTEM_PARAM_ALLOW_2_POKEMON_CRIES:
        return &soundSys->allowTwoPokemonCries;
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
        type = SOUND_HANDLE_TYPE_FANFARE;
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

static void SoundSystem_StopBGM()
{
    NNS_SndPlayerStopSeqByPlayerNo(PLAYER_BGM, 0);
    NNS_SndHandleReleaseSeq(SoundSystem_GetSoundHandle(SOUND_HANDLE_TYPE_BGM));
}
