#include "sound.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_020052C8.h"

#include "communication_system.h"
#include "heap.h"
#include "sound_system.h"
#include "sound_playback.h"
#include "generated/sdat.h"


static void Sound_LoadSoundEffectsForSceneWithState(u8 param0);
static void Sound_Impl_PlayFieldBGM(u16 param0, int param1);
static void Sound_Impl_ResumeAndSwitchFieldBGM(u16 param0, u16 param1);
static void Sound_Impl_PlayBattleBGM(u16 param0, int param1);
static void sub_020048AC(u16 param0, int param1);
static void Sound_Impl_PlayContestBGM(u16 param0, int param1);
static void sub_020048F0(u16 param0, int param1);
static void Sound_Impl_LoadSubSceneSoundData(u8 param0);
static void Sound_Impl_PlayCutsceneBGM(u8 param0, u16 param1, int param2);
void sub_02004950(u16 param0);
void sub_02004A54(int param0, int param1, int param2);
void Sound_SetInitialVolumeForSequence(u16 param0, int param1);
NNSSndWaveOutHandle *Sound_GetWaveOutHandle(enum WaveOutChannel channel);
BOOL Sound_AllocateWaveOutChannel(enum WaveOutChannel param0);
void Sound_FreeWaveOutChannel(enum WaveOutChannel param0);
void Sound_SetWaveOutPan(enum WaveOutChannel param0, u8 param1);
void Sound_SetWaveOutSpeed(enum WaveOutChannel param0, u32 param1);
void Sound_SetWaveOutVolume(enum WaveOutChannel param0, int param1);
BOOL Sound_PlayWaveOut(WaveOutParam *param0, enum WaveOutChannel param1);
void Sound_StopWaveOut(enum WaveOutChannel param0);
BOOL Sound_IsWaveOutPlaying(enum WaveOutChannel param0);
void Sound_StopWaveOutReversed(enum WaveOutChannel param0);
static void Sound_Impl_ReverseBuffer(u8 *param0, u32 param1);
BOOL Sound_IsCaptureActive(void);
BOOL Sound_StartReverb(int param0);
void Sound_StopReverb(int param0);
void Sound_SetReverbVolume(int param0, int param1);
BOOL sub_02004EFC(void);
void sub_02004F44(void);
void sub_02004F4C(int param0);
void sub_020052C8(void *param0, void *param1, u32 param2, NNSSndCaptureFormat param3, void *param4);
void Sound_SetPitchForHandle(enum SoundHandleType param0, u16 param1, int param2);
void sub_02004F7C(u16 param0, u16 param1, int param2);
void Sound_SetPanForHandle(enum SoundHandleType param0, u16 param1, int param2);
void sub_02004FA8(int param0, int param1);
void Sound_SetMasterVolume(int param0);
void *sub_02005014(void);
static void Sound_Impl_FadeToBGM(u8 param0, u16 param1, int param2, int param3, u8 param4, void *param5);
static void Sound_SetBGMAllocatableChannels(u16 param0);
void sub_020053CC(int param0);
static void Sound_Impl_PauseOrStopFieldBGM(void);
const u8 *sub_020050E0(const SNDWaveData *param0);
const u32 sub_020050EC(const SNDWaveData *param0);
const SNDWaveData *sub_020050F8(int param0);
static const SNDWaveData *sub_02005130(int param0);
u32 sub_02005188(int param0, const SNDWaveData *param1, int param2);
u32 sub_020051C4(int param0);
void sub_020051D0(const SNDWaveData *param0, u8 *param1, int param2, int param3);

static s8 Unk_021BEBA0[2000] ATTRIBUTE_ALIGN(32);
static int Unk_021BEB80;

void Sound_SetBGMFixed(u8 fixed)
{
    u8 *param = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_BGM_FIXED);
    *param = fixed;
}

u8 Sound_IsBGMFixed(void)
{
    u8 *param = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_BGM_FIXED);
    return *param;
}

void Sound_SetCurrentBGM(u16 bgmID)
{
    u16 *param = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CURRENT_BGM);
    *param = bgmID;

    Sound_SetNextBGM(0);
}

u16 Sound_GetCurrentBGM(void)
{
    u16 *param = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CURRENT_BGM);
    return *param;
}

void Sound_SetNextBGM(u16 bgmID)
{
    u16 *param = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_NEXT_BGM);
    *param = bgmID;
}

u16 Sound_GetNextBGM(void)
{
    u16 *param = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_NEXT_BGM);
    return *param;
}

void Sound_SetFieldBGM(u16 bgmID)
{
    u16 *param = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_FIELD_BGM);
    *param = bgmID;
}

void Sound_SetScene(u8 scene)
{
    u8 *mainScene = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_MAIN_SCENE);
    u8 *subScene = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_SUB_SCENE);

    if (scene < SOUND_SCENE_MAX) {
        *mainScene = scene;
        *subScene = SOUND_SCENE_NONE;
    } else {
        *subScene = scene;
    }
}

void Sound_SetSubScene(u8 scene)
{
    u8 *mainScene = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_MAIN_SCENE); // Required to match
    u8 *subScene = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_SUB_SCENE);
    *subScene = scene;
}

int Sound_LoadSoundEffectsForScene(u8 scene)
{
    int result;

    switch (scene) {
    case 1:
    case 9:
    case 10:
    case 17:
    case 20:
    case 23:
        result = SoundSystem_LoadSoundGroup(GROUP_SE_FIELD);
        break;
    case 19:
        result = SoundSystem_LoadSoundGroup(GROUP_SE_FIELD);

        SoundSystem_LoadSequenceEx(SEQ_SE_PL_BALLOON02, NNS_SND_ARC_LOAD_SEQ);
        SoundSystem_LoadSequenceEx(SEQ_SE_PL_BALLOON03_2, NNS_SND_ARC_LOAD_SEQ);
        SoundSystem_LoadSequenceEx(SEQ_SE_PL_BALLOON05, NNS_SND_ARC_LOAD_SEQ);

        SoundSystem_LoadSequenceEx(SEQ_SE_PL_BALLOON01, NNS_SND_ARC_LOAD_SEQ);
        SoundSystem_LoadSequenceEx(SEQ_SE_PL_BALLOON07, NNS_SND_ARC_LOAD_SEQ);
        SoundSystem_LoadSequenceEx(SEQ_SE_PL_ALERT4, NNS_SND_ARC_LOAD_SEQ);

        SoundSystem_LoadSequenceEx(SEQ_SE_DP_FW104, NNS_SND_ARC_LOAD_SEQ);
        SoundSystem_LoadSequenceEx(SEQ_SE_PL_NOMI02, NNS_SND_ARC_LOAD_SEQ);
        SoundSystem_LoadSequenceEx(SEQ_SE_DP_023, NNS_SND_ARC_LOAD_SEQ);

        SoundSystem_LoadSequenceEx(SEQ_SE_PL_POINT1, NNS_SND_ARC_LOAD_SEQ);
        SoundSystem_LoadSequenceEx(SEQ_SE_PL_POINT2, NNS_SND_ARC_LOAD_SEQ);
        SoundSystem_LoadSequenceEx(SEQ_SE_PL_POINT3, NNS_SND_ARC_LOAD_SEQ);
        SoundSystem_LoadSequenceEx(SEQ_SE_PL_BALLOON05_2, NNS_SND_ARC_LOAD_SEQ);

        SoundSystem_LoadSequenceEx(SEQ_SE_DP_HAMARU, NNS_SND_ARC_LOAD_SEQ);
        SoundSystem_LoadSequenceEx(SEQ_SE_DP_CON_016, NNS_SND_ARC_LOAD_SEQ);
        SoundSystem_LoadSequenceEx(SEQ_SE_PL_KIRAKIRA, NNS_SND_ARC_LOAD_SEQ);
        SoundSystem_LoadSequenceEx(SEQ_SE_PL_FCALL, NNS_SND_ARC_LOAD_SEQ);
        break;
    case 14:
        result = SoundSystem_LoadSoundGroup(GROUP_SE_NUTMIXER);
        break;
    case 2:
    case 13:
        result = SoundSystem_LoadSoundGroup(GROUP_SE_BATTLE);
        break;
    case 18:
        result = SoundSystem_LoadSoundGroup(GROUP_SE_BATTLE);
        break;
    case 21:
        result = SoundSystem_LoadBank(BANK_SE_HIROBA);
        result = SoundSystem_LoadWaveArc(WAVE_ARC_SE_HIROBA);
        break;
    case 3:
        result = SoundSystem_LoadSoundGroup(GROUP_SE_TRADE);
        break;
    case SOUND_SCENE_FIELD:
    case 22:
        result = SoundSystem_LoadSoundGroup(GROUP_SE_FIELD);
        break;
    case SOUND_SCENE_BATTLE:
        result = SoundSystem_LoadSoundGroup(GROUP_SE_BATTLE);
        break;
    case 11:
        result = SoundSystem_LoadSoundGroup(GROUP_SE_FIELD);
        break;
    case SOUND_SCENE_CONTEST:
        result = SoundSystem_LoadSoundGroup(GROUP_SE_CONTEST);
        break;
    case 8:
        result = SoundSystem_LoadSoundGroup(GROUP_SE_FIELD);
        break;
    case 12:
        result = SoundSystem_LoadSoundGroup(GROUP_SE_NUTMIXER);
        break;
    case 16:
        result = SoundSystem_LoadSoundGroup(GROUP_SE_FIELD);
        result = SoundSystem_LoadSoundGroup(GROUP_SE_DIG);
        break;
    case 15:
        result = SoundSystem_LoadSoundGroup(GROUP_SE_FIELD);
        break;
    case SOUND_SCENE_SUB_BAG:
        result = SoundSystem_LoadSoundGroup(GROUP_SE_BAG);
        break;
    case 66:
        result = SoundSystem_LoadSoundGroup(GROUP_SE_SLOT);
        break;
    case 52:
        result = SoundSystem_LoadSoundGroup(GROUP_SE_NAMEIN);
        break;
    case 7:
    case 53:
        result = SoundSystem_LoadSoundGroup(GROUP_SE_IMAGE);
        break;
    case 54:
        result = SoundSystem_LoadSoundGroup(GROUP_SE_ZUKAN);
        break;
    case 55:
    case 67:
        result = SoundSystem_LoadBank(BANK_SE_TOWNMAP);
        result = SoundSystem_LoadWaveArc(WAVE_ARC_SE_TOWNMAP);
        break;
    case 56:
        result = SoundSystem_LoadSoundGroup(GROUP_SE_TRCARD);
        break;
    case 57:
        result = SoundSystem_LoadSoundGroup(GROUP_SE_POKELIST);
        break;
    case 58:
        result = SoundSystem_LoadSoundGroup(GROUP_SE_DIG);
        break;
    case 59:
        result = SoundSystem_LoadSoundGroup(GROUP_SE_CUSTOM);
        break;
    case 60:
        result = SoundSystem_LoadSoundGroup(GROUP_SE_BAG);
        break;
    case 61:
        result = SoundSystem_LoadSoundGroup(GROUP_SE_NAMEIN);
        break;
    case 62:
        result = SoundSystem_LoadSoundGroup(GROUP_SE_CUSTOM);
        break;
    case 63:
        result = SoundSystem_LoadSoundGroup(GROUP_SE_CLIMAX);
        break;
    case 64:
        result = SoundSystem_LoadBank(BANK_SE_SHIP);
        result = SoundSystem_LoadWaveArc(WAVE_ARC_SE_SHIP);
        break;
    case 65:
        result = SoundSystem_LoadBank(BANK_SE_TRAIN);
        result = SoundSystem_LoadWaveArc(WAVE_ARC_SE_TRAIN);
        break;
    case 68:
        result = SoundSystem_LoadBank(BANK_SE_SCRATCH);
        result = SoundSystem_LoadWaveArc(WAVE_ARC_SE_SCRATCH);
        break;
    }

    return result;
}

BOOL Sound_SetSceneAndPlayBGM(u8 scene, u16 bgmID, int param2)
{
    u8 *mainScene = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_MAIN_SCENE);
    u8 *subScene = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_SUB_SCENE);
    u16 *v2 = SoundSystem_GetParam(14);

    if (scene < SOUND_SCENE_MAX) {
        if (*mainScene == scene) {
            return FALSE;
        }
    } else {
        if (*subScene == scene) {
            return FALSE;
        }
    }

    Sound_SetScene(scene);

    switch (scene) {
    case SOUND_SCENE_FIELD:
        sub_020053CC(0);
        Sound_Impl_PlayFieldBGM(bgmID, param2);
        (*v2) = 0;
        break;
    case SOUND_SCENE_BATTLE:
        Sound_Impl_PlayBattleBGM(bgmID, param2);
        break;
    case 11:
        sub_020048AC(bgmID, param2);
        break;
    case SOUND_SCENE_CONTEST:
        Sound_Impl_PlayContestBGM(bgmID, param2);
        break;
    case 7:
        sub_020048F0(bgmID, param2);
        break;
    case SOUND_SCENE_SUB_BAG:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
        Sound_Impl_LoadSubSceneSoundData(scene);
        break;
    case 1:
        sub_020053CC(1);
        Sound_Impl_PlayCutsceneBGM(scene, bgmID, param2);
        break;
    case 14:
        sub_020053CC(2);
        Sound_Impl_PlayCutsceneBGM(scene, bgmID, param2);
        break;
    case 2:
        sub_020053CC(0);
        Sound_Impl_PlayCutsceneBGM(scene, bgmID, param2);
        break;
    case 3:
    case 8:
    case 9:
    case 10:
    case 12:
    case 13:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 23:
        Sound_Impl_PlayCutsceneBGM(scene, bgmID, param2);
        break;
    case 22:
        Sound_Impl_PlayCutsceneBGM(scene, bgmID, param2);
        break;
    }

    return TRUE;
}

static void Sound_LoadSoundEffectsForSceneWithState(u8 scene)
{
    int *persistentState = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_HEAP_STATE_PERSISTENT);

    SoundSystem_LoadHeapState(*persistentState);
    SoundSystem_SaveHeapState(SoundSystem_GetParam(SOUND_SYSTEM_PARAM_HEAP_STATE_BGM_BANK));
    Sound_LoadSoundEffectsForScene(scene);
    SoundSystem_SaveHeapState(SoundSystem_GetParam(SOUND_SYSTEM_PARAM_HEAP_STATE_SFX));
}

static void Sound_Impl_PlayFieldBGM(u16 bgmID, int unused)
{
    u8 *fieldBGMPaused = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_FIELD_BGM_PAUSED);
    (void)SoundSystem_GetParam(SOUND_SYSTEM_PARAM_HEAP_STATE_PERSISTENT);
    (void)SoundSystem_GetParam(SOUND_SYSTEM_PARAM_FIELD_BGM);

    int currentFieldBGM = Sound_GetSequenceIDFromSoundHandle(SoundSystem_GetSoundHandle(SOUND_HANDLE_TYPE_FIELD_BGM));

    if (*fieldBGMPaused == FALSE) {
        if (currentFieldBGM == bgmID) {
            if (Sound_GetNextBGM() != SEQ_BICYCLE) {
                return;
            }
        }
    }

    Sound_SetFieldBGMBankState(FIELD_BGM_BANK_STATE_SWITCH);
    Sound_StopAll();

    if (currentFieldBGM != bgmID) {
        Sound_SetBGMPlayerPaused(PLAYER_FIELD, FALSE);
        Sound_StopWaveOutAndSequences();
    }

    if (*fieldBGMPaused == TRUE) {
        SoundSystem_LoadHeapState(Sound_GetHeapState(SOUND_HEAP_STATE_BGM_BANK));
        Sound_LoadSoundEffectsForScene(SOUND_SCENE_FIELD);
        SoundSystem_SaveHeapState(SoundSystem_GetParam(SOUND_SYSTEM_PARAM_HEAP_STATE_SFX));

        if (currentFieldBGM != bgmID) {
            Sound_SetBGMPlayerPaused(PLAYER_FIELD, FALSE);
        }

        Sound_Impl_ResumeAndSwitchFieldBGM(bgmID, currentFieldBGM);
        return;
    }

    Sound_PlayBGM(bgmID);
}

static void Sound_Impl_ResumeAndSwitchFieldBGM(u16 bgmID, u16 unused)
{
    u16 *currentBGM = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_FIELD_BGM);
    u16 currentBankID = Sound_GetBankIDFromSequenceID(*currentBGM);

    if (currentBankID != BANK_BGM_FIELD && currentBankID != BANK_BGM_DUNGEON) {
        SoundSystem_LoadSequenceEx(bgmID, NNS_SND_ARC_LOAD_WAVE);
        GF_ASSERT(FALSE);
    } else {
        SoundSystem_LoadSequenceEx(*currentBGM, NNS_SND_ARC_LOAD_WAVE | NNS_SND_ARC_LOAD_BANK);
    }

    SoundSystem_SaveHeapState(SoundSystem_GetParam(SOUND_SYSTEM_PARAM_HEAP_STATE_BGM));
    Sound_SetBGMPlayerPaused(PLAYER_FIELD, FALSE);
    Sound_FadeInBGM(SOUND_VOLUME_MAX, 40, BGM_FADE_IN_TYPE_FROM_ZERO);
    Sound_SetFieldBGMBankState(FIELD_BGM_BANK_STATE_IDLE);
}

void Sound_LoadSoundDataForFieldBGM(u16 seqID, u16 currentBankID)
{
    u8 *bankState = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_FIELD_BGM_BANK_STATE);
    u16 *newFieldBGM = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_FIELD_BGM);

    if (*bankState == FIELD_BGM_BANK_STATE_SWITCH || currentBankID == 0) {
        SoundSystem_LoadHeapState(Sound_GetHeapState(SOUND_HEAP_STATE_PERSISTENT));
        Sound_SetSubScene(0);
        SoundSystem_LoadSequenceEx(*newFieldBGM, NNS_SND_ARC_LOAD_BANK);
        SoundSystem_SaveHeapState(SoundSystem_GetParam(SOUND_SYSTEM_PARAM_HEAP_STATE_BGM_BANK));
        Sound_LoadSoundEffectsForScene(SOUND_SCENE_FIELD);
        SoundSystem_SaveHeapState(SoundSystem_GetParam(SOUND_SYSTEM_PARAM_HEAP_STATE_SFX));

        u16 newBankID = Sound_GetBankIDFromSequenceID(*newFieldBGM);
        if (newBankID != BANK_BGM_FIELD && newBankID != BANK_BGM_DUNGEON) {
            SoundSystem_LoadSequenceEx(seqID, NNS_SND_ARC_LOAD_WAVE);
            GF_ASSERT(FALSE);
        } else {
            SoundSystem_LoadSequenceEx(*newFieldBGM, NNS_SND_ARC_LOAD_WAVE);
        }

        SoundSystem_SaveHeapState(SoundSystem_GetParam(SOUND_SYSTEM_PARAM_HEAP_STATE_BGM));
    }
}

static void Sound_Impl_PlayBattleBGM(u16 bgmID, int unused)
{
    (void)SoundSystem_GetParam(SOUND_SYSTEM_PARAM_HEAP_STATE_PERSISTENT);

    Sound_Impl_PauseOrStopFieldBGM();
    SoundSystem_LoadHeapState(Sound_GetHeapState(SOUND_HEAP_STATE_BGM_BANK));
    Sound_LoadSoundEffectsForScene(SOUND_SCENE_BATTLE);
    SoundSystem_SaveHeapState(SoundSystem_GetParam(SOUND_SYSTEM_PARAM_HEAP_STATE_SFX));
    Sound_SetFieldBGMBankState(FIELD_BGM_BANK_STATE_SWITCH);
    Sound_PlayBGM(bgmID);
}

static void sub_020048AC(u16 param0, int param1)
{
    (void)SoundSystem_GetParam(SOUND_SYSTEM_PARAM_HEAP_STATE_PERSISTENT);

    Sound_StopWaveOutAndSequences();
    Sound_ClearBGMPauseFlags();
    Sound_LoadSoundEffectsForSceneWithState(SOUND_SCENE_FIELD);
    Sound_PlayBGM(param0);
}

void Sound_Impl_PlayContestBGM(u16 bgmID, int unused)
{
    (void)SoundSystem_GetParam(SOUND_SYSTEM_PARAM_HEAP_STATE_PERSISTENT);

    Sound_StopWaveOutAndSequences();
    Sound_LoadSoundEffectsForSceneWithState(SOUND_SCENE_CONTEST);
    Sound_SetFieldBGMBankState(FIELD_BGM_BANK_STATE_SWITCH);
    Sound_PlayBGM(bgmID);
}

void sub_020048F0(u16 bgmID, int unused)
{
    (void)SoundSystem_GetParam(SOUND_SYSTEM_PARAM_HEAP_STATE_PERSISTENT);

    Sound_StopWaveOutAndSequences();
    Sound_LoadSoundEffectsForSceneWithState(7);
    Sound_SetFieldBGMBankState(FIELD_BGM_BANK_STATE_SWITCH);
    Sound_PlayBGM(bgmID);
}

static void Sound_Impl_LoadSubSceneSoundData(u8 scene)
{
    Sound_LoadHeapStateBGM();
    Sound_LoadSoundEffectsForScene(scene);
    SoundSystem_SaveHeapState(SoundSystem_GetParam(SOUND_SYSTEM_PARAM_HEAP_STATE_SUB_SFX));
}

static void Sound_Impl_PlayCutsceneBGM(u8 scene, u16 bgmID, int unused)
{
    (void)SoundSystem_GetParam(SOUND_SYSTEM_PARAM_HEAP_STATE_PERSISTENT);

    Sound_StopWaveOutAndSequences();
    Sound_LoadSoundEffectsForSceneWithState(scene);
    Sound_PlayBGM(bgmID);
}

void sub_02004950(u16 param0)
{
    int v0;
    SoundSystem *v1 = SoundSystem_Get();

    Sound_Impl_PauseOrStopFieldBGM();

    v0 = Sound_PlayBGM(param0);
    return;
}

void Sound_LoadHeapStateBGM(void)
{
    SoundSystem_LoadHeapState(Sound_GetHeapState(SOUND_HEAP_STATE_BGM));
}

int Sound_GetHeapState(enum SoundHeapState state)
{
    int *param;
    SoundSystem *soundSys = SoundSystem_Get();

    if (state >= SOUND_HEAP_STATE_COUNT) {
        GF_ASSERT(FALSE);
        param = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_HEAP_STATE_BGM);
        return *param;
    }

    switch (state) {
    case SOUND_HEAP_STATE_EMPTY:
        param = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_HEAP_STATE_EMPTY);
        break;
    case SOUND_HEAP_STATE_PERSISTENT:
        param = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_HEAP_STATE_PERSISTENT);
        break;
    case SOUND_HEAP_STATE_BGM_BANK:
        param = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_HEAP_STATE_BGM_BANK);
        break;
    case SOUND_HEAP_STATE_SFX:
        param = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_HEAP_STATE_SFX);
        break;
    case SOUND_HEAP_STATE_BGM:
        param = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_HEAP_STATE_BGM);
        break;
    case SOUND_HEAP_STATE_SUB_SFX:
        param = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_HEAP_STATE_SUB_SFX);
        break;
    case 6:
        param = SoundSystem_GetParam(29);
        break;
    }

    return *param;
}

void Sound_SetBGMPlayerPaused(u8 playerID, BOOL paused)
{
    u8 handleType;
    u8 *playerPaused;

    if (playerID == PLAYER_FIELD) {
        playerPaused = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_FIELD_BGM_PAUSED);
        handleType = SOUND_HANDLE_TYPE_FIELD_BGM;
    } else if (playerID == PLAYER_BGM) {
        playerPaused = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_BGM_PAUSED);
        handleType = SOUND_HANDLE_TYPE_BGM;
    } else {
        return;
    }

    if (paused == FALSE) {
        Sound_SetCurrentBGM(Sound_GetSequenceIDFromSoundHandle(SoundSystem_GetSoundHandle(handleType)));
    }

    NNS_SndPlayerPause(SoundSystem_GetSoundHandle(handleType), paused);
    *playerPaused = paused;
}

void Sound_ClearBGMPauseFlags(void)
{
    u8 *fieldBGMPaused = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_FIELD_BGM_PAUSED);
    u8 *bgmPaused = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_BGM_PAUSED);

    *fieldBGMPaused = FALSE;
    *bgmPaused = FALSE;
}

void Sound_FadeVolumeForHandle(enum SoundHandleType handleType, int targetVolume, int frames)
{
    NNS_SndPlayerMoveVolume(SoundSystem_GetSoundHandle(handleType), targetVolume, frames);
}

void Sound_SetInitialVolumeForHandle(enum SoundHandleType handleType, int volume)
{
    if (volume < SOUND_VOLUME_MIN) {
        volume = SOUND_VOLUME_MIN;
    }

    if (volume > SOUND_VOLUME_MAX) {
        volume = SOUND_VOLUME_MAX;
    }

    NNS_SndPlayerSetInitialVolume(SoundSystem_GetSoundHandle(handleType), volume);
}

void Sound_AdjustVolumeForVoiceChat(int seqID)
{
    u8 playerID = Sound_GetPlayerForSequence(seqID);
    enum SoundHandleType handleType = SoundSystem_GetSoundHandleTypeFromPlayerID(playerID);

    Sound_AdjustVolumeForVoiceChatEx(seqID, handleType);
}

void Sound_AdjustVolumeForVoiceChatEx(int seqID, enum SoundHandleType handleType)
{
    u8 volume;
    const NNSSndSeqParam *param = NNS_SndArcGetSeqParam(seqID);

    switch (handleType) {
    case SOUND_HANDLE_TYPE_POKEMON_CRY:
    case 8:
        volume = SOUND_VOLUME_MAX;
        break;

    default:
        if (param == NULL) {
            return;
        }

        volume = param->volume;
        break;
    }

    if (sub_02036314() == TRUE) {
        Sound_SetInitialVolumeForHandle(handleType, (volume / 5));
    }
}

void Sound_SetInitialVolumeForSequence(u16 seqID, int volume)
{
    u8 playerID = Sound_GetPlayerForSequence(seqID);
    enum SoundHandleType handleType = SoundSystem_GetSoundHandleTypeFromPlayerID(playerID);

    Sound_SetInitialVolumeForHandle(handleType, volume);
}

BOOL Sound_PlaySequenceWithPlayer(enum SoundHandleType handleType, int playerID, u16 seqID)
{
    return NNS_SndArcPlayerStartSeqEx(SoundSystem_GetSoundHandle(handleType), playerID, -1, -1, seqID);
}

int Sound_GetNumberOfPlayingSequencesForPlayer(int playerID)
{
    if (playerID < 0) {
        GF_ASSERT(FALSE);
    }

    return NNS_SndPlayerCountPlayingSeqByPlayerNo(playerID);
}

u8 Sound_GetPlayerForSequence(u16 seqID)
{
    if (seqID == 0) {
        return 0xFF;
    }

    const NNSSndSeqParam *param = NNS_SndArcGetSeqParam(seqID);
    if (param == NULL) {
        return 0xff;
    }

    return param->playerNo;
}

int Sound_GetSequenceIDFromSoundHandle(NNSSndHandle *handle)
{
    return NNS_SndPlayerGetSeqNo(handle);
}

const NNSSndArcBankInfo *Sound_GetBankInfoForSequence(int seqID)
{
    return NNS_SndArcGetBankInfo(Sound_GetBankIDFromSequenceID(seqID));
}

u16 Sound_GetBankIDFromSequenceID(int seqID)
{
    const NNSSndSeqParam *param = NNS_SndArcGetSeqParam(seqID);
    if (param == NULL) {
        return 0;
    }

    return param->bankNo;
}

MICResult Sound_StartMicAutoSampling(MICAutoParam *param)
{
    return MIC_StartAutoSampling(param);
}

MICResult Sound_StopMicAutoSampling(void)
{
    (void)SoundSystem_Get();
    return MIC_StopAutoSampling();
}

MICResult Sound_StartMicManualSampling(MICSamplingType type, void *buffer, MICCallback callback, void *param)
{
    return MIC_DoSamplingAsync(type, buffer, callback, param);
}

NNSSndWaveOutHandle *Sound_GetWaveOutHandle(enum WaveOutChannel channel)
{
    (void)SoundSystem_Get();
    u8 *primaryAllocated = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_WAVE_OUT_PRIMARY_ALLOCATED);
    u8 *secondaryAllocated = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_WAVE_OUT_SECONDARY_ALLOCATED);

    if (channel != WAVE_OUT_CHANNEL_PRIMARY && channel != WAVE_OUT_CHANNEL_SECONDARY) {
        GF_ASSERT(FALSE);
    }

    if (channel == WAVE_OUT_CHANNEL_PRIMARY && *primaryAllocated == FALSE) {
        GF_ASSERT(FALSE);
    }

    if (channel == WAVE_OUT_CHANNEL_SECONDARY && *secondaryAllocated == FALSE) {
        GF_ASSERT(FALSE);
    }

    if (channel == WAVE_OUT_CHANNEL_PRIMARY) {
        return SoundSystem_GetParam(SOUND_SYSTEM_PARAM_WAVE_OUT_PRIMARY_HANDLE);
    } else {
        return SoundSystem_GetParam(SOUND_SYSTEM_PARAM_WAVE_OUT_SECONDARY_HANDLE);
    }
}

BOOL Sound_AllocateWaveOutChannel(enum WaveOutChannel channel)
{
    NNSSndWaveOutHandle *handle;
    
    (void)SoundSystem_Get();
    u8 *primaryAllocated = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_WAVE_OUT_PRIMARY_ALLOCATED);
    u8 *secondaryAllocated = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_WAVE_OUT_SECONDARY_ALLOCATED);

    if (channel != WAVE_OUT_CHANNEL_PRIMARY && channel != WAVE_OUT_CHANNEL_SECONDARY) {
        GF_ASSERT(FALSE);
    }

    if (channel == WAVE_OUT_CHANNEL_PRIMARY) {
        if (*primaryAllocated == FALSE) {
            handle = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_WAVE_OUT_PRIMARY_HANDLE);
            *handle = NNS_SndWaveOutAllocChannel(channel);

            if (*handle == NNS_SND_WAVEOUT_INVALID_HANDLE) {
                return FALSE;
            }

            *primaryAllocated = TRUE;
        } else {
            GF_ASSERT(FALSE);
        }
    } else {
        if (*secondaryAllocated == FALSE) {
            handle = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_WAVE_OUT_SECONDARY_HANDLE);
            *handle = NNS_SndWaveOutAllocChannel(channel);

            if (*handle == NNS_SND_WAVEOUT_INVALID_HANDLE) {
                return FALSE;
            }

            *secondaryAllocated = TRUE;
        } else {
            GF_ASSERT(FALSE);
        }
    }

    return TRUE;
}

void Sound_FreeWaveOutChannel(enum WaveOutChannel channel)
{
    (void)SoundSystem_Get();
    
    u8 *primaryAllocated = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_WAVE_OUT_PRIMARY_ALLOCATED);
    u8 *secondaryAllocated = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_WAVE_OUT_SECONDARY_ALLOCATED);

    if (channel != WAVE_OUT_CHANNEL_PRIMARY && channel != WAVE_OUT_CHANNEL_SECONDARY) {
        GF_ASSERT(FALSE);
        return;
    }

    if (channel == WAVE_OUT_CHANNEL_PRIMARY) {
        if (*primaryAllocated == TRUE) {
            NNS_SndWaveOutFreeChannel(*Sound_GetWaveOutHandle(channel));
            *primaryAllocated = FALSE;
        } else {
            GF_ASSERT(FALSE);
        }
    } else {
        if (*secondaryAllocated == TRUE) {
            NNS_SndWaveOutFreeChannel(*Sound_GetWaveOutHandle(channel));
            *secondaryAllocated = FALSE;
        } else {
            GF_ASSERT(FALSE);
        }
    }
}

BOOL Sound_PlayWaveOut(WaveOutParam *param, enum WaveOutChannel channel)
{
    BOOL success = NNS_SndWaveOutStart(
        *param->handle, 
        param->format, 
        param->data, 
        param->loop, 
        param->loopStartSample, 
        param->samples, 
        param->sampleRate, 
        param->volume, 
        param->speed, 
        param->pan
    );

    if (success == FALSE) {
        Sound_FreeWaveOutChannel(channel);
    }

    return success;
}

void Sound_StopWaveOut(enum WaveOutChannel channel)
{
    NNS_SndWaveOutStop(*Sound_GetWaveOutHandle(channel));
}

BOOL Sound_IsWaveOutPlaying(enum WaveOutChannel channel)
{
    return NNS_SndWaveOutIsPlaying(*Sound_GetWaveOutHandle(channel));
}

void Sound_SetWaveOutPan(enum WaveOutChannel channel, u8 pan)
{
    u8 clampedPan;
    if (pan > 127) {
        clampedPan = 127;
    } else {
        clampedPan = pan;
    }

    NNS_SndWaveOutSetPan(*Sound_GetWaveOutHandle(channel), clampedPan);
}

void Sound_SetWaveOutSpeed(enum WaveOutChannel channel, u32 speed)
{
    NNS_SndWaveOutSetSpeed(*Sound_GetWaveOutHandle(channel), speed);
}

void Sound_SetWaveOutVolume(enum WaveOutChannel channel, int volume)
{
    if (sub_02036314() == 1) {
        NNS_SndWaveOutSetVolume(*Sound_GetWaveOutHandle(channel), volume / 5);
    } else {
        NNS_SndWaveOutSetVolume(*Sound_GetWaveOutHandle(channel), volume);
    }
}

BOOL Sound_PlayWaveOutReversed(u16 waveArcID, int volume, int pan, enum WaveOutChannel channel, int heapID)
{
    (void)SoundSystem_Get();
    void **reverseBuffer = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_WAVE_OUT_REVERSE_BUFFER);

    if (channel != WAVE_OUT_CHANNEL_PRIMARY && channel != WAVE_OUT_CHANNEL_SECONDARY) {
        GF_ASSERT(FALSE);
    }

    const NNSSndArcWaveArcInfo *info = NNS_SndArcGetWaveArcInfo(waveArcID);
    if (info == NULL) {
        GF_ASSERT(FALSE);
        return FALSE;
    }

    u32 fileSize = NNS_SndArcGetFileSize(info->fileId);
    if (fileSize == 0) {
        GF_ASSERT(FALSE);
        return FALSE;
    }

    if (channel == WAVE_OUT_CHANNEL_PRIMARY) {
        *reverseBuffer = Heap_AllocFromHeap(heapID, fileSize);
        if (*reverseBuffer == NULL) {
            GF_ASSERT(FALSE);
            return FALSE;
        }

        memset(*reverseBuffer, 0, fileSize);

        if (NNS_SndArcReadFile(info->fileId, *reverseBuffer, fileSize, 0) == -1) {
            GF_ASSERT(FALSE);
            return FALSE;
        }

        Sound_Impl_ReverseBuffer(*reverseBuffer, fileSize);
    }

    WaveOutParam param;
    param.handle = Sound_GetWaveOutHandle(channel);
    param.format = NNS_SND_WAVE_FORMAT_PCM8;
    param.data = *reverseBuffer;
    param.loop = FALSE;
    param.loopStartSample = 0;
    param.samples = fileSize;
    param.sampleRate = 13379;
    param.volume = volume;
    param.speed = WAVE_OUT_SPEED(0.75);
    param.pan = pan;

    BOOL result = Sound_PlayWaveOut(&param, channel);

    Sound_SetWaveOutVolume(channel, volume);

    u8 *reversedPlayback = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_WAVE_OUT_REVERSED_PLAYBACK);
    *reversedPlayback = TRUE;

    return result;
}

static void Sound_Impl_ReverseBuffer(u8 *buffer, u32 size)
{
    for (int i = 0; i < (size / 2); i++) {
        u8 tmp = buffer[i];
        buffer[i] = buffer[size - 1 - i];
        buffer[size - 1 - i] = tmp;
    }
}

void Sound_StopWaveOutReversed(enum WaveOutChannel channel)
{
    (void)SoundSystem_Get();
    u8 *reversedPlaybackEnabled = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_WAVE_OUT_REVERSED_PLAYBACK);
    void **reverseBuffer = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_WAVE_OUT_REVERSE_BUFFER);

    if (channel != WAVE_OUT_CHANNEL_PRIMARY && channel != WAVE_OUT_CHANNEL_SECONDARY) {
        GF_ASSERT(FALSE);
    }

    Sound_StopWaveOut(channel);

    if (*reversedPlaybackEnabled == TRUE) {
        *reversedPlaybackEnabled = FALSE;
        Heap_FreeToHeap(*reverseBuffer);
    }
}

BOOL Sound_IsCaptureActive(void)
{
    return NNS_SndCaptureIsActive();
}

BOOL Sound_StartReverb(int volume)
{
    (void)SoundSystem_Get();
    void *buffer = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_REVERB_BUFFER);
    return NNS_SndCaptureStartReverb(buffer, 0x1000, (NNS_SND_CAPTURE_FORMAT_PCM16), 16000, volume);
}

void Sound_StopReverb(int frames)
{
    NNS_SndCaptureStopReverb(frames);
}

void Sound_SetReverbVolume(int targetVolume, int frames)
{
    NNS_SndCaptureSetReverbVolume(targetVolume, frames);
}

BOOL sub_02004EFC(void)
{
    SoundSystem *v1 = SoundSystem_Get();

    MI_CpuClear8(SoundSystem_GetParam(4), sizeof(UnkStruct_020052C8));
    return NNS_SndCaptureStartEffect(
        SoundSystem_GetParam(SOUND_SYSTEM_PARAM_REVERB_BUFFER), 
        0x1000, 
        NNS_SND_CAPTURE_FORMAT_PCM16, 
        22000, 
        2, 
        sub_020052C8, SoundSystem_GetParam(4)
    );
}

void sub_02004F44(void)
{
    NNS_SndCaptureStopEffect();
    return;
}

void sub_02004F4C(int param0)
{
    u8 *v0 = SoundSystem_GetParam(20);

    if (param0 > 8) {
        param0 = 8;
    } else if (param0 < 0) {
        param0 = 0;
    }

    *v0 = param0;
    return;
}

void Sound_SetPitchForHandle(enum SoundHandleType handleType, u16 tracks, int pitch)
{
    NNS_SndPlayerSetTrackPitch(SoundSystem_GetSoundHandle(handleType), tracks, pitch);
}

void sub_02004F7C(u16 param0, u16 param1, int param2)
{
    u8 v0 = Sound_GetPlayerForSequence(param0);
    int v1 = SoundSystem_GetSoundHandleTypeFromPlayerID(v0);

    Sound_SetPitchForHandle(v1, param1, param2);
    return;
}

void Sound_SetPanForHandle(enum SoundHandleType param0, u16 param1, int param2)
{
    NNS_SndPlayerSetTrackPan(SoundSystem_GetSoundHandle(param0), param1, param2);
}

void sub_02004FA8(int param0, int param1)
{
    NNS_SndPlayerSetTempoRatio(SoundSystem_GetSoundHandle(param0), param1);
    return;
}

void Sound_SetPlaybackMode(BOOL param0)
{
    NNS_SndSetMonoFlag(param0);
    Unk_021BEB80 = param0;
    return;
}

void Sound_SetFadeCounter(int frames)
{
    int *param = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_FADE_COUNTER);
    *param = frames;
}

void Sound_SetFollowUpWaitFrames(int frames)
{
    int *param = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_FOLLOW_UP_WAIT_FRAMES);
    *param = frames;
}

BOOL Sound_UpdateFollowUpWaitFrames()
{
    u16 *waitFrames = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_FOLLOW_UP_WAIT_FRAMES);
    if (*waitFrames <= 0) {
        *waitFrames = 0;
        return FALSE;
    }

    (*waitFrames)--;
    return *waitFrames;
}

void Sound_SetMasterVolume(int volume)
{
    NNS_SndSetMasterVolume(volume);
}

void *sub_02005014(void)
{
    return &Unk_021BEBA0[0];
}

// Needs to be set to FIELD_BGM_BANK_STATE_SWITCH before calling
// Sound_PlayBGM, if the bank needs to be switched
void Sound_SetFieldBGMBankState(int state)
{
    u8 *param = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_FIELD_BGM_BANK_STATE);
    *param = state;
}

BOOL Sound_FadeOutAndPlayBGM(u8 unused1, u16 bgmID, int fadeOutFrames, int waitFrames, u8 bankState, void *unused2)
{
    u8 *subScene = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_SUB_SCENE);

    Sound_Impl_FadeToBGM(unused1, bgmID, fadeOutFrames, waitFrames, bankState, unused2);
    *subScene = 0;
    SoundSystem_SetState(SOUND_SYSTEM_STATE_FADE_OUT_PLAY);

    return TRUE;
}

BOOL Sound_FadeToBGM(u8 unused1, u16 bgmID, int fadeOutFrames, int waitFrames, int fadeInFrames, u8 bankState, void *unused2)
{
    int *fadeFrames = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_FOLLOW_UP_FADE_FRAMES);

    Sound_Impl_FadeToBGM(unused1, bgmID, fadeOutFrames, waitFrames, bankState, unused2);
    *fadeFrames = fadeInFrames;
    SoundSystem_SetState(SOUND_SYSTEM_STATE_FADE_OUT_FADE_IN);

    return TRUE;
}

static void Sound_Impl_FadeToBGM(u8 unused1, u16 bgmID, int fadeOutFrames, int fadeInFrames, u8 bankState, void *unused2)
{
    const NNSSndArcBankInfo **currentBankInfo = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CURRENT_BANK_INFO);

    Sound_FadeOutBGM(SOUND_VOLUME_MIN, fadeOutFrames);
    Sound_SetCurrentBGM(0);

    Sound_SetNextBGM(bgmID);
    Sound_SetFollowUpWaitFrames(fadeInFrames);

    *currentBankInfo = Sound_GetBankInfoForSequence(bgmID);
    Sound_SetFieldBGMBankState(bankState);
}

const u8 *sub_020050E0(const SNDWaveData *param0)
{
    if (param0 == NULL) {
        return NULL;
    }

    return &param0->samples[0];
}

const u32 sub_020050EC(const SNDWaveData *param0)
{
    if (param0 == NULL) {
        return 0;
    }

    return param0->param.looplen;
}

const SNDWaveData *sub_020050F8(int param0)
{
    u16 v0;

    SoundSystem_LoadHeapState(Sound_GetHeapState(5));

    v0 = param0;

    if (v0 != 441) {
        if ((param0 > 495) || (param0 == 0)) {
            v0 = 1;
        }
    }

    SoundSystem_LoadWaveArc(v0);

    return sub_02005130(v0);
}

static const SNDWaveData *sub_02005130(int param0)
{
    u16 v0;
    const NNSSndArcWaveArcInfo *v1;
    SNDWaveArc *v2 = NULL;
    const SNDWaveData **v3 = SoundSystem_GetParam(33);

    v0 = param0;

    if (v0 != 441) {
        if ((param0 > 495) || (param0 == 0)) {
            v0 = 1;
        }
    }

    v1 = NNS_SndArcGetWaveArcInfo(v0);

    if (v1 == NULL) {
        GF_ASSERT(FALSE);
        return NULL;
    }

    v2 = (SNDWaveArc *)NNS_SndArcGetFileAddress(v1->fileId);

    if (v2 == NULL) {
        GF_ASSERT(FALSE);
        return NULL;
    }

    *v3 = SND_GetWaveDataAddress(v2, 0);

    return *v3;
}

u32 sub_02005188(int param0, const SNDWaveData *param1, int param2)
{
    int v0;
    u32 v1;
    u32 v2 = sub_020051C4(1);
    u32 v3 = param1->param.looplen;

    v0 = param2 / (64 * 12);
    v0 = v0 * 2;

    if (v0 < 0) {
        v0 = 32 / v0 * -1;
    } else if (v0 == 0) {
        v0 = 32;
    } else {
        v0 = 32 * v0;
    }

    v1 = (v2 * v0);

    if (v1 >= v3) {
        v1 = 0;
    }

    return v1;
}

u32 sub_020051C4(int param0)
{
    u32 v0 = NNS_SndPlayerGetTick(SoundSystem_GetSoundHandle(param0));
    return v0;
}

static const u8 Unk_020E4D0C[9] = {
    0x2,
    0x3,
    0x4,
    0x5,
    0x6,
    0x7,
    0x8,
    0x9,
    0xA
};

void sub_020051D0(const SNDWaveData *param0, u8 *param1, int param2, int param3)
{
    int v0;
    int v1;
    s8 v2;
    int v3, v4, v5, v6;
    u32 v7 = sub_02005188(1, param0, param3);

    v1 = v7 - 100;

    if (v1 < 0) {
        v1 = 0;
    }

    v6 = 0;
    v5 = 0;
    v2 = ((param0)->samples[v1] < 128) ? 1 : -1;

    for (v3 = v1; v3 < v7; v3 += 2) {
        v0 = 0;

        if (v2 > 0) {
            if ((param0)->samples[v3] > 128) {
                v0 = 1;
            } else {
                v6++;
            }
        } else {
            if ((param0)->samples[v3] < 128) {
                v0 = 1;
            } else {
                v6++;
            }
        }

        if (v0 == 1) {
            for (v4 = 0; v4 < 9; v4++) {
                if (v6 < Unk_020E4D0C[v4]) {
                    v5 = v4;
                    break;
                }
            }

            if (v5 >= param2) {
                v5 = (param2 - 1);
            }

            if (v6 != 0) {
                param1[param2 - 1 - v5]++;
            } else {
                (void)0;
            }

            v6 = 0;
            v0 = 0;
            v2 = ((param0)->samples[v3] < 128) ? 1 : -1;
        }
    }

    for (v3 = 0; v3 < param2; v3++) {
        if (param1[v3] >= 10) {
            param1[v3] = 9;
        }
    }

    for (v3 = 0; v3 < (param2 - 1); v3++) {
        if ((param1[v3] == 0) && (param1[v3 + 1] != 0)) {
            param1[v3] = (param1[v3 + 1] / 2);
            break;
        }
    }

    return;
}

static void sub_020052C8(void *param0, void *param1, u32 param2, NNSSndCaptureFormat param3, void *param4)
{
    s16 v0[8][2];
    s16 *v1 = (s16 *)param0;
    s16 *v2 = (s16 *)param1;
    UnkStruct_020052C8 *v3 = (UnkStruct_020052C8 *)param4;
    u8 *v4 = SoundSystem_GetParam(20);
    int v5;
    int v6;
    int v7, v8;

    v5 = (param3 == NNS_SND_CAPTURE_FORMAT_PCM8) ? param2 : (param2 >> 1);

    if ((*v4) == 0) {
        return;
    }

    for (v7 = 0; v7 < (*v4); v7++) {
        v0[v7][0] = v1[v5 - (*v4) + v7];
        v0[v7][1] = v2[v5 - (*v4) + v7];
    }

    for (v7 = v5 - 1; v7 >= (*v4) - 1; v7--) {
        v6 = 0;

        for (v8 = 0; v8 < (*v4); v8++) {
            v6 += v1[v7 - v8];
        }

        v1[v7] = (s16)(v6 /= (*v4));

        v6 = 0;

        for (v8 = 0; v8 < (*v4); v8++) {
            v6 += v2[v7 - v8];
        }

        v2[v7] = (s16)(v6 /= (*v4));
    }

    for (v7 = 0; v7 < (*v4); v7++) {
        v3->unk_00[v7][0] = v0[v7][0];
        v3->unk_00[v7][1] = v0[v7][1];
    }

    DC_FlushRange(param0, v5);
    DC_FlushRange(param1, v5);
}

static void Sound_SetBGMAllocatableChannels(u16 channels)
{
    NNS_SndPlayerSetAllocatableChannel(PLAYER_BGM, channels);
}

void sub_020053CC(int param0)
{
    if (param0 == 0) {
        Sound_SetBGMAllocatableChannels(0x7ff);
        Sound_StopReverb(0);
    } else if (param0 == 1) {
        Sound_SetBGMAllocatableChannels(0x7fff);

        if (Sound_StartReverb(30) == 0) {
            (void)0;
        } else {
            (void)0;
        }
    } else {
        Sound_SetBGMAllocatableChannels(0x7fff);

        if (Sound_StartReverb(15) == 0) {
            (void)0;
        } else {
            (void)0;
        }
    }

    Sound_IsCaptureActive();

    return;
}

static void Sound_Impl_PauseOrStopFieldBGM(void)
{
    if ((Sound_IsFadeActive() == FALSE) && 
        (Sound_GetSequenceIDFromSoundHandle(SoundSystem_GetSoundHandle(SOUND_HANDLE_TYPE_FIELD_BGM)) != -1) && 
        (Sound_GetCurrentBGM() != SEQ_POKERADAR)) {
        Sound_StopAll();
        Sound_SetBGMPlayerPaused(PLAYER_FIELD, TRUE);
    } else {
        Sound_StopWaveOutAndSequences();
    }
}

void Sound_SetPlayerVolume(int playerID, int volume)
{
    NNS_SndPlayerSetPlayerVolume(playerID, volume);
}

void Sound_Set2PokemonCriesAllowed(BOOL allowed)
{
    u8 *param = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_ALLOW_2_POKEMON_CRIES);
    *param = allowed;
}

void sub_02005464(BOOL param0)
{
    u8 *v0 = SoundSystem_GetParam(54);

    *v0 = param0;
    return;
}
