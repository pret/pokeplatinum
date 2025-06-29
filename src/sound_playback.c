#include "sound_playback.h"

#include <nitro.h>
#include <string.h>

#include "constants/species.h"
#include "generated/sdat.h"

#include "struct_defs/chatot_cry.h"

#include "global/utility.h"

#include "heap.h"
#include "sound.h"
#include "sound_chatot.h"
#include "sound_system.h"
#include "sys_task.h"
#include "sys_task_manager.h"

#define WAVE_OUT_SPEED_HYPERVOICE_1 (WAVE_OUT_SPEED(1.046875))
#define WAVE_OUT_SPEED_UPROAR_1     (WAVE_OUT_SPEED(0.8125))

#define DEFAULT_FANFARE_DELAY 15

typedef struct PokemonCryDurationParam {
    int remainingFrames;
    SysTask *task;
} PokemonCryDurationParam;

static void Sound_Impl_HandleBGMChange(u16 param0, enum SoundHandleType param1);
static BOOL Sound_Impl_PlayBGM(u16 seqID, u8 playerID, enum SoundHandleType handleType);
static BOOL Sound_Impl_PlayFieldBGM(u16 seqID, u8 playerID, enum SoundHandleType handleType);
static void Sound_Impl_ResetBGM(void);
void Sound_StopAll(void);
static void Sound_Impl_SetPokemonCryVolume(u16 param0, enum SoundHandleType param1, int param2);
void Sound_StopPokemonCries(int param0);
void Sound_SetPokemonCryDuration(int param0, int heapID);
static void Sound_Impl_CryDurationTask(SysTask *param0, void *param1);
void Sound_Impl_DestroyCryDurationTask(void);
static BOOL Sound_Impl_IsShayminSkyForm(u16 species, u8 form);
void Sound_ClearPokemonCryParams(void);
static BOOL Sound_Impl_PlayPokemonCryEcho(u16 species, s8 pitch, u8 form);
static BOOL Sound_PlayPokemonCryReversedEcho(u16 param0, s8 param1, int param2, int param3, int heapID);
BOOL Sound_UpdateFanfareDelay(void);
static void Sound_Impl_StopFanfare(int param0);
BOOL Sound_IsBGMPausedByFanfare(void);
static void Sound_Impl_SetFanfareDelay(u16 param0);

// "Basic" BGM refers to BGM stored in BANK_BASIC
BOOL Sound_PlayBasicBGM(u16 seqID)
{
    u8 playerID = Sound_GetPlayerForSequence(seqID);
    enum SoundHandleType handleType = SoundSystem_GetSoundHandleTypeFromPlayerID(playerID);

    BOOL result = NNS_SndArcPlayerStartSeq(SoundSystem_GetSoundHandle(handleType), seqID);

    Sound_Impl_HandleBGMChange(seqID, handleType);
    return result;
}

BOOL Sound_PlayBGM(u16 bgmID)
{
    BOOL result;
    u8 player = Sound_GetPlayerForSequence(bgmID);
    enum SoundHandleType handleType = SoundSystem_GetSoundHandleTypeFromPlayerID(player);

    if (player == PLAYER_BGM) {
        result = Sound_Impl_PlayBGM(bgmID, player, handleType);
    } else if (player == PLAYER_FIELD) {
        result = Sound_Impl_PlayFieldBGM(bgmID, player, handleType);
    } else {
        GF_ASSERT(FALSE);
        return FALSE;
    }

    // Field BGM Bank may or may not have been switched, so set it to idle
    Sound_SetFieldBGMBankState(FIELD_BGM_BANK_STATE_IDLE);

    Sound_Impl_HandleBGMChange(bgmID, handleType);
    return result;
}

static void Sound_Impl_HandleBGMChange(u16 seqID, enum SoundHandleType handleType)
{
    Sound_SetCurrentBGM(seqID);
    Sound_AdjustVolumeForVoiceChatEx(seqID, handleType);
    SoundSystem_SetState(SOUND_SYSTEM_STATE_PLAY);
}

static BOOL Sound_Impl_PlayBGM(u16 seqID, u8 playerID, enum SoundHandleType handleType)
{
    SoundSystem_LoadHeapState(Sound_GetHeapState(SOUND_HEAP_STATE_SFX));
    SoundSystem_LoadSequence(seqID);
    SoundSystem_SaveHeapState(SoundSystem_GetParam(SOUND_SYSTEM_PARAM_HEAP_STATE_BGM));

    return NNS_SndArcPlayerStartSeq(SoundSystem_GetSoundHandle(handleType), seqID);
}

static BOOL Sound_Impl_PlayFieldBGM(u16 seqID, u8 playerID, enum SoundHandleType handleType)
{
    UNUSED(SoundSystem_GetParam(SOUND_SYSTEM_PARAM_FIELD_BGM_BANK_STATE));
    u16 *newFieldBGM = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_FIELD_BGM);

    int currentSeqID = Sound_GetSequenceIDFromSoundHandle(SoundSystem_GetSoundHandle(SOUND_HANDLE_TYPE_FIELD_BGM));
    Sound_LoadSoundDataForFieldBGM(seqID, Sound_GetBankIDFromSequenceID(currentSeqID));

    return NNS_SndArcPlayerStartSeqEx(
        SoundSystem_GetSoundHandle(handleType),
        -1,
        Sound_GetBankIDFromSequenceID(*newFieldBGM),
        -1,
        seqID);
}

BOOL sub_02005588(u8 scene, u16 seqID)
{
    if (scene != SOUND_SCENE_FIELD) {
        GF_ASSERT(FALSE);
        return FALSE;
    }

    if (Sound_GetPlayerForSequence(seqID) != PLAYER_BGM) {
        GF_ASSERT(FALSE);
        return FALSE;
    }

    BOOL success = SoundSystem_LoadSequenceEx(seqID, NNS_SND_ARC_LOAD_SEQ);
    success = NNS_SndArcPlayerStartSeq(SoundSystem_GetSoundHandle(SOUND_HANDLE_TYPE_BGM), seqID);

    Sound_SetCurrentBGM(seqID);
    SoundSystem_SetState(SOUND_SYSTEM_STATE_PLAY);

    return success;
}

void Sound_StopBGM(u16 bgmID, int fadeOutFrames)
{
    NNS_SndPlayerStopSeqBySeqNo(bgmID, fadeOutFrames);

    u8 playerID = Sound_GetPlayerForSequence(bgmID);

    if (playerID != SOUND_PLAYER_INVALID) {
        enum SoundHandleType handleType = SoundSystem_GetSoundHandleTypeFromPlayerID(playerID);
        NNS_SndHandleReleaseSeq(SoundSystem_GetSoundHandle(handleType));
    }

    Sound_Impl_ResetBGM();
}

static void Sound_Impl_ResetBGM(void)
{
    Sound_SetCurrentBGM(SEQ_NONE);
    Sound_SetNextBGM(SEQ_NONE);
    SoundSystem_SetState(SOUND_SYSTEM_STATE_IDLE);
}

void Sound_FadeInBGM(int targetVolume, int frames, enum BGMFadeInType fadeInType)
{
    u16 currentBGM = Sound_GetCurrentBGM();
    u8 playerID = Sound_GetPlayerForSequence(currentBGM);
    if (playerID == SOUND_PLAYER_INVALID) {
        return;
    }

    enum SoundHandleType handleType = SoundSystem_GetSoundHandleTypeFromPlayerID(playerID);

    if (fadeInType == BGM_FADE_IN_TYPE_FROM_ZERO) {
        Sound_FadeVolumeForHandle(handleType, 0, 0);
    }

    Sound_FadeVolumeForHandle(handleType, targetVolume, frames);
    Sound_SetFadeCounter(frames);
    SoundSystem_SetState(SOUND_SYSTEM_STATE_FADE_IN);
}

void Sound_FadeOutBGM(int targetVolume, int frames)
{
    u16 currentBGM = Sound_GetCurrentBGM();
    u8 playerID = Sound_GetPlayerForSequence(currentBGM);
    if (playerID == SOUND_PLAYER_INVALID) {
        return;
    }

    if (Sound_IsFadeActive() == FALSE) {
        enum SoundHandleType handleType = SoundSystem_GetSoundHandleTypeFromPlayerID(playerID);
        Sound_FadeVolumeForHandle(handleType, targetVolume, frames);
        Sound_SetFadeCounter(frames);
    }

    SoundSystem_SetState(SOUND_SYSTEM_STATE_FADE_OUT);
}

BOOL Sound_IsFadeActive()
{
    u16 *param = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_FADE_COUNTER);
    return *param;
}

// Only "kind of" actually does what the function name says
// Because it also returns >0 if a different sequence is playing
// on the same player.
BOOL Sound_IsSequencePlaying(u16 seqID)
{
    u8 playerID = Sound_GetPlayerForSequence(seqID);
    return Sound_GetNumberOfPlayingSequencesForPlayer(playerID);
}

void Sound_StopWaveOutAndSequences(void)
{
    u8 *primaryAllocated = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_WAVE_OUT_PRIMARY_ALLOCATED);
    u8 *secondaryAllocated = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_WAVE_OUT_SECONDARY_ALLOCATED);

    NNS_SndPlayerStopSeqAll(0);

    if (*primaryAllocated == TRUE) {
        Sound_StopWaveOut(WAVE_OUT_CHANNEL_PRIMARY);
    }

    if (*secondaryAllocated == TRUE) {
        Sound_StopWaveOut(WAVE_OUT_CHANNEL_SECONDARY);
    }

    SoundSystem_SetState(SOUND_SYSTEM_STATE_IDLE);
}

void Sound_StopAll(void)
{
    u8 *primaryAllocated = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_WAVE_OUT_PRIMARY_ALLOCATED);
    u8 *secondaryAllocated = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_WAVE_OUT_SECONDARY_ALLOCATED);

    NNS_SndPlayerStopSeq(SoundSystem_GetSoundHandle(SOUND_HANDLE_TYPE_BGM), 0);
    Sound_Impl_ResetBGM();

    for (int i = 0; i < NUM_SFX_HANDLES; i++) {
        Sound_StopEffectFromHandle(SOUND_HANDLE_TYPE_SFX_1 + i, 0);
    }

    Sound_StopPokemonCries(0);

    if (*primaryAllocated == TRUE) {
        Sound_StopWaveOut(WAVE_OUT_CHANNEL_PRIMARY);
    }

    if (*secondaryAllocated == TRUE) {
        Sound_StopWaveOut(WAVE_OUT_CHANNEL_SECONDARY);
    }
}

BOOL Sound_PlayPannedEffect(u16 seqID, int pan)
{
    int result = Sound_PlayEffect(seqID);
    Sound_PanEffect(seqID, SOUND_PLAYBACK_TRACK_ALL, pan);

    return result;
}

BOOL Sound_PlayEffect(u16 seqID)
{
    enum SoundHandleType handleType = SoundSystem_GetSoundHandleTypeFromPlayerID(Sound_GetPlayerForSequence(seqID));
    BOOL result = NNS_SndArcPlayerStartSeq(SoundSystem_GetSoundHandle(handleType), seqID);

    Sound_AdjustVolumeForVoiceChatEx(seqID, handleType);

    return result;
}

BOOL Sound_PlayEffectOnPlayer(u16 seqID, int playerID)
{
    enum SoundHandleType handleType = SoundSystem_GetSoundHandleTypeFromPlayerID(playerID);
    BOOL result = NNS_SndArcPlayerStartSeqEx(SoundSystem_GetSoundHandle(handleType), playerID, -1, -1, seqID);

    Sound_AdjustVolumeForVoiceChatEx(seqID, handleType);

    return result;
}

void Sound_StopEffect(u16 seqID, int fadeOutFrames)
{
    NNS_SndPlayerStopSeqBySeqNo(seqID, fadeOutFrames);
}

void Sound_StopEffectFromHandle(enum SoundHandleType handleType, int fadeOutFrames)
{
    NNS_SndPlayerStopSeq(SoundSystem_GetSoundHandle(handleType), fadeOutFrames);
}

void Sound_StopAllEffects(int fadeOutFrames)
{
    for (int i = 0; i < NUM_SFX_HANDLES; i++) {
        Sound_StopEffectFromHandle(SOUND_HANDLE_TYPE_SFX_1 + i, 0);
    }
}

BOOL Sound_IsEffectPlaying(u16 seqID)
{
    return Sound_GetNumberOfPlayingSequencesForPlayer(Sound_GetPlayerForSequence(seqID));
}

BOOL Sound_IsAnyEffectPlaying()
{
    for (int i = 0; i < NUM_SFX_HANDLES; i++) {
        if (Sound_GetNumberOfPlayingSequencesForPlayer(PLAYER_SE_1 + i) == 1) {
            return TRUE;
        }
    }

    return FALSE;
}

void Sound_PanEffect(u16 seqID, u16 tracks, int pan)
{
    enum SoundHandleType handleType = SoundSystem_GetSoundHandleTypeFromPlayerID(Sound_GetPlayerForSequence(seqID));
    NNS_SndPlayerSetTrackPan(SoundSystem_GetSoundHandle(handleType), tracks, pan);
}

void Sound_PanAllEffects(int pan)
{
    enum SoundHandleType handleType = SoundSystem_GetSoundHandleTypeFromPlayerID(PLAYER_SE_1);

    for (int i = 0; i < NUM_SFX_HANDLES; i++) {
        NNS_SndPlayerSetTrackPan(SoundSystem_GetSoundHandle(handleType + i), SOUND_PLAYBACK_TRACK_ALL, pan);
    }
}

BOOL Sound_PlayPokemonCry(u16 species, u8 form)
{
    BOOL success;
    u8 *echoEnabled = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_ECHO_ENABLED);
    ChatotCry **chatotCry = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CHATOT_CRY);
    u8 *allow2Cries = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_ALLOW_2_POKEMON_CRIES);

    u16 waveID = species;
    if (Sound_Impl_IsShayminSkyForm(species, form) == TRUE) {
        waveID = WAVE_ARC_PV516_SKY;
    }

    if (waveID != WAVE_ARC_PV516_SKY) {
        if (waveID > MAX_SPECIES || waveID == SPECIES_NONE) {
            waveID = SPECIES_BULBASAUR;
        }
    }

    if (waveID == SPECIES_CHATOT) {
        if (Sound_Impl_PlayChatotCry(*chatotCry, 0, SOUND_VOLUME_MAX, 0) == TRUE) {
            Sound_SetUsingDefaultChatotCry(FALSE);
            return TRUE;
        }
    }

    if (*echoEnabled == FALSE) {
        if (*allow2Cries == FALSE) {
            Sound_StopPokemonCries(0);
        }

        success = NNS_SndArcPlayerStartSeqEx(SoundSystem_GetSoundHandle(SOUND_HANDLE_TYPE_POKEMON_CRY), -1, waveID, -1, SEQ_PV);
        Sound_AdjustVolumeForVoiceChatEx(waveID, SOUND_HANDLE_TYPE_POKEMON_CRY);
    } else {
        success = NNS_SndArcPlayerStartSeqEx(SoundSystem_GetSoundHandle(SOUND_HANDLE_TYPE_ECHO), -1, waveID, -1, SEQ_PV);
        Sound_AdjustVolumeForVoiceChatEx(waveID, SOUND_HANDLE_TYPE_ECHO);
    }

    Sound_SetUsingDefaultChatotCry(FALSE);

    return success;
}

BOOL Sound_PlayDelayedPokemonCry(u16 species, u8 delay, u8 form)
{
    Sound_PlayDelayedPokemonCryEx(POKECRY_NORMAL, species, 0, SOUND_VOLUME_MAX, HEAP_ID_FIELDMAP, delay, form);
    return TRUE;
}

void Sound_StopPokemonCries(int fadeOutFrames)
{
    u8 *primaryAllocated = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_WAVE_OUT_PRIMARY_ALLOCATED);
    u8 *secondaryAllocated = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_WAVE_OUT_SECONDARY_ALLOCATED);
    UNUSED(SoundSystem_GetParam(SOUND_SYSTEM_PARAM_WAVE_OUT_REVERSED_PLAYBACK));

    NNS_SndPlayerStopSeq(SoundSystem_GetSoundHandle(SOUND_HANDLE_TYPE_POKEMON_CRY), fadeOutFrames);
    NNS_SndPlayerStopSeq(SoundSystem_GetSoundHandle(SOUND_HANDLE_TYPE_ECHO), fadeOutFrames);

    if (*primaryAllocated == TRUE) {
        Sound_StopWaveOutReversed(WAVE_OUT_CHANNEL_PRIMARY);
        Sound_FreeWaveOutChannel(WAVE_OUT_CHANNEL_PRIMARY);
    }

    if (*secondaryAllocated == TRUE) {
        Sound_StopWaveOutReversed(WAVE_OUT_CHANNEL_SECONDARY);
        Sound_FreeWaveOutChannel(WAVE_OUT_CHANNEL_SECONDARY);
    }

    Sound_StopChatotCry();
    Sound_ClearPokemonCryParams();
}

BOOL Sound_IsPokemonCryPlaying(void)
{
    u8 *primaryAllocated = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_WAVE_OUT_PRIMARY_ALLOCATED);
    u8 *secondaryAllocated = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_WAVE_OUT_SECONDARY_ALLOCATED);
    UNUSED(SoundSystem_GetParam(SOUND_SYSTEM_PARAM_WAVE_OUT_REVERSED_PLAYBACK));
    UNUSED(SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CRY_A_DELAY));

    if (*primaryAllocated == TRUE) {
        return Sound_IsWaveOutPlaying(WAVE_OUT_CHANNEL_PRIMARY);
    }

    if (*secondaryAllocated == TRUE) {
        return Sound_IsWaveOutPlaying(WAVE_OUT_CHANNEL_SECONDARY);
    }

    return Sound_GetNumberOfPlayingSequencesForPlayer(PLAYER_PV);
}

BOOL Sound_PlayPokemonCryEx(enum PokemonCryMod cryMod, u16 species, int pan, int volume, int heapID, u8 form)
{
    int waveOutPan, echoVolume; // Need to be declared up here to match
    u8 *wavePrimaryAllocated = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_WAVE_OUT_PRIMARY_ALLOCATED);
    u8 *waveSecondaryAllocated = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_WAVE_OUT_SECONDARY_ALLOCATED);
    u8 *echoEnabled = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_ECHO_ENABLED);
    u8 *chatotCryPlaying = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CHATOT_CRY_PLAYING);
    UNUSED(SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CHATOT_CRY));

    if (Sound_Impl_IsShayminSkyForm(species, form) == TRUE) {
        species = WAVE_ARC_PV516_SKY;
    }

    if (species != WAVE_ARC_PV516_SKY) {
        if (species > MAX_SPECIES || species == SPECIES_NONE) {
            species = SPECIES_BULBASAUR;
        }
    }

    waveOutPan = WAVE_OUT_PAN_CENTER + (pan / 2);
    echoVolume = volume - 30;

    if (echoVolume <= 0) {
        echoVolume = 1;
    }

    *echoEnabled = FALSE;

    if (*wavePrimaryAllocated == TRUE) {
        Sound_StopWaveOutReversed(WAVE_OUT_CHANNEL_PRIMARY);
        Sound_FreeWaveOutChannel(WAVE_OUT_CHANNEL_PRIMARY);
    }

    if (*waveSecondaryAllocated == TRUE) {
        Sound_StopWaveOutReversed(WAVE_OUT_CHANNEL_SECONDARY);
        Sound_FreeWaveOutChannel(WAVE_OUT_CHANNEL_SECONDARY);
    }

    if (species == SPECIES_CHATOT) {
        switch (cryMod) {
        case POKECRY_NORMAL:
        case POKECRY_HALF_DURATION:
        case POKECRY_FIELD_EVENT:
        case POKECRY_FAINT:
        case POKECRY_PINCH_NORMAL:
        case POKECRY_PINCH_HALF_DURATION:
            Sound_PlayPokemonCry(SPECIES_CHATOT, form);

            if (*chatotCryPlaying == FALSE) {
                Sound_SetPanForHandle(SOUND_HANDLE_TYPE_POKEMON_CRY, SOUND_PLAYBACK_TRACK_ALL, pan);
                Sound_Impl_SetPokemonCryVolume(species, SOUND_HANDLE_TYPE_POKEMON_CRY, volume);
            } else {
                if (*wavePrimaryAllocated == TRUE) {
                    Sound_SetWaveOutPan(WAVE_OUT_CHANNEL_PRIMARY, waveOutPan);
                    Sound_SetWaveOutVolume(WAVE_OUT_CHANNEL_PRIMARY, volume);
                } else {
                    Sound_SetPanForHandle(SOUND_HANDLE_TYPE_POKEMON_CRY, SOUND_PLAYBACK_TRACK_ALL, pan);
                    Sound_Impl_SetPokemonCryVolume(species, SOUND_HANDLE_TYPE_POKEMON_CRY, volume);
                }
            }

            return TRUE;
        default:
            Sound_SetUsingDefaultChatotCry(TRUE);
            break;
        }
    }

    switch (cryMod) {
    case POKECRY_NORMAL:
        Sound_PlayPokemonCry(species, form);
        Sound_SetPanForHandle(SOUND_HANDLE_TYPE_POKEMON_CRY, SOUND_PLAYBACK_TRACK_ALL, pan);
        Sound_Impl_SetPokemonCryVolume(species, SOUND_HANDLE_TYPE_POKEMON_CRY, volume);
        break;
    case POKECRY_HALF_DURATION:
        Sound_PlayPokemonCry(species, form);
        Sound_SetPanForHandle(SOUND_HANDLE_TYPE_POKEMON_CRY, SOUND_PLAYBACK_TRACK_ALL, pan);
        Sound_Impl_SetPokemonCryVolume(species, SOUND_HANDLE_TYPE_POKEMON_CRY, volume);
        Sound_SetPokemonCryDuration(20, heapID);
        break;
    case POKECRY_FIELD_EVENT:
        Sound_PlayPokemonCry(species, form);
        Sound_SetPanForHandle(SOUND_HANDLE_TYPE_POKEMON_CRY, SOUND_PLAYBACK_TRACK_ALL, pan);
        Sound_Impl_SetPokemonCryVolume(species, SOUND_HANDLE_TYPE_POKEMON_CRY, volume);
        Sound_SetPitchForHandle(SOUND_HANDLE_TYPE_POKEMON_CRY, SOUND_PLAYBACK_TRACK_ALL, SOUND_SEMITONES(1));

        Sound_Impl_PlayPokemonCryEcho(species, SOUND_SEMITONES(0.3125), form);
        Sound_SetPanForHandle(SOUND_HANDLE_TYPE_ECHO, SOUND_PLAYBACK_TRACK_ALL, pan);
        Sound_Impl_SetPokemonCryVolume(species, SOUND_HANDLE_TYPE_ECHO, echoVolume);
        break;
    case POKECRY_MID_MOVE:
        Sound_PlayPokemonCry(species, form);
        Sound_SetPanForHandle(SOUND_HANDLE_TYPE_POKEMON_CRY, SOUND_PLAYBACK_TRACK_ALL, pan);
        Sound_Impl_SetPokemonCryVolume(species, SOUND_HANDLE_TYPE_POKEMON_CRY, volume);
        Sound_SetPokemonCryDuration(30, heapID);
        Sound_SetPitchForHandle(SOUND_HANDLE_TYPE_POKEMON_CRY, SOUND_PLAYBACK_TRACK_ALL, SOUND_SEMITONES(3));

        Sound_Impl_PlayPokemonCryEcho(species, SOUND_SEMITONES(0.25), form);
        Sound_SetPanForHandle(SOUND_HANDLE_TYPE_ECHO, SOUND_PLAYBACK_TRACK_ALL, pan);
        Sound_Impl_SetPokemonCryVolume(species, SOUND_HANDLE_TYPE_ECHO, echoVolume);
        break;
    case POKECRY_HYPERVOICE_1:
        Sound_AllocateWaveOutChannel(WAVE_OUT_CHANNEL_PRIMARY);
        Sound_PlayWaveOutReversed(species, volume, waveOutPan, WAVE_OUT_CHANNEL_PRIMARY, heapID);
        Sound_SetWaveOutPan(WAVE_OUT_CHANNEL_PRIMARY, waveOutPan);
        Sound_SetPokemonCryDuration(15, heapID);
        Sound_SetWaveOutSpeed(WAVE_OUT_CHANNEL_PRIMARY, WAVE_OUT_SPEED_HYPERVOICE_1);
        Sound_PlayPokemonCryReversedEcho(species, SOUND_SEMITONES(-1), echoVolume, waveOutPan, heapID);
        Sound_SetWaveOutSpeed(WAVE_OUT_CHANNEL_SECONDARY, WAVE_OUT_SPEED_HYPERVOICE_1);
        break;
    case POKECRY_FAINT:
        Sound_PlayPokemonCry(species, form);
        Sound_SetPanForHandle(SOUND_HANDLE_TYPE_POKEMON_CRY, SOUND_PLAYBACK_TRACK_ALL, pan);
        Sound_Impl_SetPokemonCryVolume(species, SOUND_HANDLE_TYPE_POKEMON_CRY, volume);
        Sound_SetPitchForHandle(SOUND_HANDLE_TYPE_POKEMON_CRY, SOUND_PLAYBACK_TRACK_ALL, SOUND_SEMITONES(-3.5));
        break;
    case POKECRY_HYPERVOICE_2:
        Sound_PlayPokemonCry(species, form);
        Sound_SetPanForHandle(SOUND_HANDLE_TYPE_POKEMON_CRY, SOUND_PLAYBACK_TRACK_ALL, pan);
        Sound_Impl_SetPokemonCryVolume(species, SOUND_HANDLE_TYPE_POKEMON_CRY, volume);
        Sound_SetPitchForHandle(SOUND_HANDLE_TYPE_POKEMON_CRY, SOUND_PLAYBACK_TRACK_ALL, SOUND_SEMITONES(0.6875));

        Sound_Impl_PlayPokemonCryEcho(species, SOUND_SEMITONES(-1), form);
        Sound_SetPanForHandle(SOUND_HANDLE_TYPE_ECHO, SOUND_PLAYBACK_TRACK_ALL, pan);
        Sound_Impl_SetPokemonCryVolume(species, SOUND_HANDLE_TYPE_ECHO, echoVolume);
        break;
    case POKECRY_HOWL_1:
        Sound_PlayPokemonCry(species, form);
        Sound_SetPanForHandle(SOUND_HANDLE_TYPE_POKEMON_CRY, SOUND_PLAYBACK_TRACK_ALL, pan);
        Sound_Impl_SetPokemonCryVolume(species, SOUND_HANDLE_TYPE_POKEMON_CRY, volume);
        Sound_SetPokemonCryDuration(11, heapID);
        Sound_SetPitchForHandle(SOUND_HANDLE_TYPE_POKEMON_CRY, SOUND_PLAYBACK_TRACK_ALL, SOUND_SEMITONES(-2));
        break;
    case POKECRY_HOWL_2:
        Sound_PlayPokemonCry(species, form);
        Sound_SetPanForHandle(SOUND_HANDLE_TYPE_POKEMON_CRY, SOUND_PLAYBACK_TRACK_ALL, pan);
        Sound_Impl_SetPokemonCryVolume(species, SOUND_HANDLE_TYPE_POKEMON_CRY, volume);
        Sound_SetPokemonCryDuration(60, heapID);
        Sound_SetPitchForHandle(SOUND_HANDLE_TYPE_POKEMON_CRY, SOUND_PLAYBACK_TRACK_ALL, SOUND_SEMITONES(0.9375));
        break;
    case POKECRY_UPROAR_1:
        Sound_AllocateWaveOutChannel(WAVE_OUT_CHANNEL_PRIMARY);
        Sound_PlayWaveOutReversed(species, volume, waveOutPan, WAVE_OUT_CHANNEL_PRIMARY, heapID);
        Sound_SetWaveOutPan(WAVE_OUT_CHANNEL_PRIMARY, waveOutPan);
        Sound_SetPokemonCryDuration(13, heapID);
        Sound_SetWaveOutSpeed(WAVE_OUT_CHANNEL_PRIMARY, WAVE_OUT_SPEED_UPROAR_1);
        break;
    case POKECRY_UPROAR_2:
        Sound_PlayPokemonCry(species, form);
        Sound_SetPanForHandle(SOUND_HANDLE_TYPE_POKEMON_CRY, SOUND_PLAYBACK_TRACK_ALL, pan);
        Sound_Impl_SetPokemonCryVolume(species, SOUND_HANDLE_TYPE_POKEMON_CRY, volume);
        Sound_SetPokemonCryDuration(100, heapID);
        Sound_SetPitchForHandle(SOUND_HANDLE_TYPE_POKEMON_CRY, SOUND_PLAYBACK_TRACK_ALL, SOUND_SEMITONES(-0.6875));
        break;
    case POKECRY_PINCH_NORMAL:
        Sound_PlayPokemonCry(species, form);
        Sound_SetPanForHandle(SOUND_HANDLE_TYPE_POKEMON_CRY, SOUND_PLAYBACK_TRACK_ALL, pan);
        Sound_Impl_SetPokemonCryVolume(species, SOUND_HANDLE_TYPE_POKEMON_CRY, volume);
        Sound_SetPitchForHandle(SOUND_HANDLE_TYPE_POKEMON_CRY, SOUND_PLAYBACK_TRACK_ALL, SOUND_SEMITONES(-1.5));
        break;
    case POKECRY_PINCH_HALF_DURATION:
        Sound_PlayPokemonCry(species, form);
        Sound_SetPanForHandle(SOUND_HANDLE_TYPE_POKEMON_CRY, SOUND_PLAYBACK_TRACK_ALL, pan);
        Sound_Impl_SetPokemonCryVolume(species, SOUND_HANDLE_TYPE_POKEMON_CRY, volume);
        Sound_SetPokemonCryDuration(20, heapID);
        Sound_SetPitchForHandle(SOUND_HANDLE_TYPE_POKEMON_CRY, SOUND_PLAYBACK_TRACK_ALL, SOUND_SEMITONES(-1.5));
        break;
    case POKECRY_POKEDEX_CHORUS:
        Sound_PlayPokemonCry(species, form);
        Sound_Impl_SetPokemonCryVolume(species, SOUND_HANDLE_TYPE_POKEMON_CRY, SOUND_VOLUME_MAX);
        Sound_Impl_PlayPokemonCryEcho(species, SOUND_SEMITONES(0.3125), form);
        Sound_SetPanForHandle(SOUND_HANDLE_TYPE_ECHO, SOUND_PLAYBACK_TRACK_ALL, pan);
        Sound_FadeVolumeForHandle(SOUND_HANDLE_TYPE_ECHO, volume, 0);
        break;
    case POKECRY_POKEDEX:
        Sound_PlayPokemonCry(species, form);
        break;
    }

    return TRUE;
}

static void Sound_Impl_SetPokemonCryVolume(u16 species, enum SoundHandleType handleType, int volume)
{
    Sound_SetInitialVolumeForHandle(handleType, volume);
    Sound_AdjustVolumeForVoiceChatEx(species, handleType);
}

void Sound_SetPokemonCryDuration(int duration, int heapID)
{
    PokemonCryDurationParam *param = NULL;
    SysTask **task = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CRY_DURATION_TASK);

    Sound_Impl_DestroyCryDurationTask();

    param = Heap_AllocFromHeap(heapID, sizeof(PokemonCryDurationParam));
    if (param == NULL) {
        GF_ASSERT(FALSE);
        return;
    }

    memset(param, 0, sizeof(PokemonCryDurationParam));

    param->remainingFrames = duration;
    param->task = SysTask_Start(Sound_Impl_CryDurationTask, param, 0);
    *task = param->task;
}

static void Sound_Impl_CryDurationTask(SysTask *task, void *arg)
{
    u8 *wavePrimaryAllocated = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_WAVE_OUT_PRIMARY_ALLOCATED);
    u8 *waveSecondaryAllocated = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_WAVE_OUT_SECONDARY_ALLOCATED);
    PokemonCryDurationParam *param = (PokemonCryDurationParam *)arg;

    if (param->remainingFrames == 10) {
        Sound_FadeVolumeForHandle(SOUND_HANDLE_TYPE_POKEMON_CRY, 0, param->remainingFrames);
        Sound_FadeVolumeForHandle(SOUND_HANDLE_TYPE_ECHO, 0, param->remainingFrames);
    }

    param->remainingFrames--;

    if (Sound_IsPokemonCryPlaying() == FALSE) {
        param->remainingFrames = 0;
    }

    if (param->remainingFrames <= 0) {
        Sound_StopPokemonCries(0);

        if (*wavePrimaryAllocated == TRUE) {
            Sound_StopWaveOutReversed(WAVE_OUT_CHANNEL_PRIMARY);
            Sound_FreeWaveOutChannel(WAVE_OUT_CHANNEL_PRIMARY);
        }

        if (*waveSecondaryAllocated == TRUE) {
            Sound_StopWaveOutReversed(WAVE_OUT_CHANNEL_SECONDARY);
            Sound_FreeWaveOutChannel(WAVE_OUT_CHANNEL_SECONDARY);
        }

        Sound_Impl_DestroyCryDurationTask();
    }
}

void Sound_Impl_DestroyCryDurationTask()
{
    SysTask **task = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CRY_DURATION_TASK);

    if (*task != NULL) {
        void *param = SysTask_GetParam(*task);
        SysTask_Done(*task);
        Heap_Free(param);
    }

    *task = NULL;
}

void Sound_PlayDelayedPokemonCryEx(enum PokemonCryMod cryMod, u16 species, int pan, int volume, int heapID, u8 delay, u8 form)
{
    int *paramMod;
    u16 *paramWaveID;
    int *paramPan;
    int *paramVolume;
    int *paramHeapID;
    u8 *paramDelay;

    u8 *activeCry = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_ACTIVE_CRY);
    u8 *allow2Cries = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_ALLOW_2_POKEMON_CRIES);

    if (*activeCry == 0) {
        paramMod = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CRY_A_MOD);
        paramWaveID = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CRY_A_WAVE_ID);
        paramPan = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CRY_A_PAN);
        paramVolume = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CRY_A_VOLUME);
        paramHeapID = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CRY_A_HEAP_ID);
        paramDelay = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CRY_A_DELAY);
    } else {
        paramMod = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CRY_B_MOD);
        paramWaveID = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CRY_B_WAVE_ID);
        paramPan = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CRY_B_PAN);
        paramVolume = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CRY_B_VOLUME);
        paramHeapID = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CRY_B_HEAP_ID);
        paramDelay = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CRY_B_DELAY);
    }

    if (*allow2Cries == TRUE) {
        *activeCry ^= 1;
    }

    if (Sound_Impl_IsShayminSkyForm(species, form) == TRUE) {
        species = WAVE_ARC_PV516_SKY;
    }

    if (species == SPECIES_NONE) {
        return;
    }

    if (delay == 0) {
        Sound_PlayPokemonCryEx(cryMod, species, pan, volume, heapID, form);
        return;
    }

    *paramMod = cryMod;
    *paramWaveID = species;
    *paramPan = pan;
    *paramVolume = volume;
    *paramHeapID = heapID;
    *paramDelay = delay;
}

static BOOL Sound_Impl_IsShayminSkyForm(u16 species, u8 form)
{
    if (species == SPECIES_SHAYMIN) {
        if (form == 1) {
            return TRUE;
        }
    }

    if (species == WAVE_ARC_PV516_SKY) {
        return TRUE;
    }

    return FALSE;
}

void Sound_ClearPokemonCryParams(void)
{
    int *modA = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CRY_A_MOD);
    u16 *waveIDA = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CRY_A_WAVE_ID);
    int *panA = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CRY_A_PAN);
    int *volumeA = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CRY_A_VOLUME);
    int *heapIDA = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CRY_A_HEAP_ID);
    u8 *delayA = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CRY_A_DELAY);

    int *modB = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CRY_B_MOD);
    u16 *waveIDB = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CRY_B_WAVE_ID);
    int *panB = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CRY_B_PAN);
    int *volumeB = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CRY_B_VOLUME);
    int *heapIDB = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CRY_B_HEAP_ID);
    u8 *delayB = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CRY_B_DELAY);

    *modA = 0;
    *waveIDA = 0;
    *panA = 0;
    *volumeA = 0;
    *heapIDA = 0;
    *delayA = 0;

    *modB = 0;
    *waveIDB = 0;
    *panB = 0;
    *volumeB = 0;
    *heapIDB = 0;
    *delayB = 0;
}

static BOOL Sound_Impl_PlayPokemonCryEcho(u16 species, s8 pitch, u8 form)
{
    u8 *echoEnabled = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_ECHO_ENABLED);
    *echoEnabled = TRUE;

    Sound_SetUsingDefaultChatotCry(TRUE);
    BOOL success = Sound_PlayPokemonCry(species, form);
    Sound_SetPitchForHandle(SOUND_HANDLE_TYPE_ECHO, SOUND_PLAYBACK_TRACK_ALL, pitch);

    return success;
}

static BOOL Sound_PlayPokemonCryReversedEcho(u16 species, s8 unused, int volume, int pan, int heapID)
{
    u8 *echoEnabled = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_ECHO_ENABLED);
    *echoEnabled = TRUE;

    BOOL success = Sound_AllocateWaveOutChannel(WAVE_OUT_CHANNEL_SECONDARY);
    success = Sound_PlayWaveOutReversed(species, volume, pan, WAVE_OUT_CHANNEL_SECONDARY, heapID);

    return success;
}

BOOL Sound_PlayFanfare(u16 seqID)
{
    const NNSSndArcBankInfo *bankInfo = Sound_GetBankInfoForSequence(seqID);

    Sound_Impl_SetFanfareDelay(seqID);

    u8 playerID = Sound_GetPlayerForSequence(Sound_GetCurrentBGM());
    if (playerID != SOUND_PLAYER_INVALID) {
        Sound_SetBGMPlayerPaused(playerID, TRUE);
    }

    SoundSystem_SaveHeapState(SoundSystem_GetParam(SOUND_SYSTEM_PARAM_HEAP_STATE_FANFARE));

    BOOL success = SoundSystem_LoadSequenceEx(seqID, (NNS_SND_ARC_LOAD_SEQ | NNS_SND_ARC_LOAD_BANK));
    success = NNS_SndArcPlayerStartSeq(SoundSystem_GetSoundHandle(SOUND_HANDLE_TYPE_FANFARE), seqID);

    Sound_AdjustVolumeForVoiceChatEx(seqID, SOUND_HANDLE_TYPE_FANFARE);

    return success;
}

BOOL Sound_UpdateFanfareDelay(void)
{
    u16 *fanfareDelay = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_FANFARE_DELAY);

    if (Sound_GetNumberOfPlayingSequencesForPlayer(PLAYER_ME) != 0) {
        return TRUE;
    }

    if (*fanfareDelay > 0) {
        (*fanfareDelay)--;
        return TRUE;
    }

    return FALSE;
}

static void Sound_Impl_StopFanfare(int frames)
{
    NNS_SndPlayerStopSeq(SoundSystem_GetSoundHandle(SOUND_HANDLE_TYPE_FANFARE), frames);
    SoundSystem_LoadHeapState(Sound_GetHeapState(SOUND_HEAP_STATE_FANFARE));
}

BOOL Sound_IsBGMPausedByFanfare(void)
{
    UNUSED(SoundSystem_GetParam(SOUND_SYSTEM_PARAM_FANFARE_DELAY));

    if (Sound_UpdateFanfareDelay() == TRUE) {
        return TRUE;
    }

    Sound_Impl_StopFanfare(0);

    u16 currentBGM = Sound_GetCurrentBGM();
    u8 playerID = Sound_GetPlayerForSequence(currentBGM);
    if (playerID != SOUND_PLAYER_INVALID) {
        Sound_SetBGMPlayerPaused(playerID, FALSE);
    }

    return FALSE;
}

static void Sound_Impl_SetFanfareDelay(u16 unused)
{
    u16 *param = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_FANFARE_DELAY);
    *param = DEFAULT_FANFARE_DELAY;
}
