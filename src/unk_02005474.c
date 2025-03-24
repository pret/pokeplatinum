#include "unk_02005474.h"

#include <nitro.h>
#include <string.h>

#include "constants/species.h"
#include "generated/sdat.h"

#include "struct_defs/chatot_cry.h"

#include "heap.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "sound_system.h"
#include "unk_020041CC.h"
#include "unk_02006224.h"

typedef struct {
    int unk_00;
    SysTask *unk_04;
} UnkStruct_02005E64;

BOOL Sound_PlayBasicBGM(u16 param0);
BOOL Sound_PlayBGM(u16 param0);
static void Sound_Impl_HandleBGMChange(u16 param0, enum SoundHandleType param1);
static BOOL Sound_Impl_PlayBGM(u16 seqID, u8 playerID, enum SoundHandleType handleType);
static BOOL Sound_Impl_PlayFieldBGM(u16 seqID, u8 playerID, enum SoundHandleType handleType);
BOOL sub_02005588(u8 param0, u16 param1);
void Sound_StopBGM(u16 param0, int param1);
static void Sound_Impl_ResetBGM(void);
void Sound_FadeInBGM(int param0, int param1, enum BGMFadeInType param2);
void Sound_FadeOutBGM(int param0, int param1);
BOOL Sound_IsFadeActive(void);
BOOL Sound_IsSequencePlaying(u16 param0);
void Sound_StopAll(void);
void sub_020056D4(void);
BOOL Sound_PlayEffect(u16 param0);
BOOL Sound_PlayEffectOnPlayer(u16 param0, int param1);
BOOL Sound_PlayPannedEffect(u16 param0, int param1);
void Sound_StopEffect(u16 param0, int param1);
void Sound_StopEffectFromHandle(enum SoundHandleType param0, int param1);
void Sound_StopAllEffects(int param0);
BOOL Sound_IsAnyEffectPlaying(void);
void Sound_PanEffect(u16 param0, u16 param1, int param2);
void Sound_PanAllEffects(int param0);
static void sub_02005E4C(u16 param0, int param1, int param2);
void sub_0200592C(int param0);
int sub_0200598C(void);
void sub_02005E64(int param0, int heapID);
static void sub_02005EB0(SysTask *param0, void *param1);
void sub_02005F24(void);
static BOOL sub_02006038(u16 species, u8 form);
void sub_0200605C(void);
static BOOL sub_020060EC(u16 species, s8 pitch, u8 form);
static BOOL sub_02006120(u16 param0, s8 param1, int param2, int param3, int heapID);
BOOL sub_02006150(u16 param0);
int sub_0200619C(void);
static void sub_020061C8(int param0);
int sub_020061E4(void);
static void sub_02006214(u16 param0);

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
    int result;
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
    u8 *v1 = SoundSystem_GetParam(19);
    u16 *newFieldBGM = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_FIELD_BGM);

    int currentSeqID = Sound_GetSequenceIDFromSoundHandle(SoundSystem_GetSoundHandle(SOUND_HANDLE_TYPE_FIELD_BGM));
    Sound_LoadSoundDataForFieldBGM(seqID, Sound_GetBankIDFromSequenceID(currentSeqID));

    return NNS_SndArcPlayerStartSeqEx(
        SoundSystem_GetSoundHandle(handleType), 
        -1, 
        Sound_GetBankIDFromSequenceID(*newFieldBGM), 
        -1, 
        seqID
    );
}

BOOL sub_02005588(u8 param0, u16 param1)
{
    int v0;

    if (param0 != 4) {
        GF_ASSERT(FALSE);
        return 0;
    }

    if (Sound_GetPlayerForSequence(param1) != 7) {
        GF_ASSERT(FALSE);
        return 0;
    }

    v0 = SoundSystem_LoadSequenceEx(param1, NNS_SND_ARC_LOAD_SEQ);
    v0 = NNS_SndArcPlayerStartSeq(SoundSystem_GetSoundHandle(7), param1);

    if (v0 == 0) {
        (void)0;
    }

    Sound_SetCurrentBGM(param1);
    SoundSystem_SetState(1);

    return v0;
}

void Sound_StopBGM(u16 bgmID, int fadeOutFrames)
{
    NNS_SndPlayerStopSeqBySeqNo(bgmID, fadeOutFrames);

    u8 playerID = Sound_GetPlayerForSequence(bgmID);

    if (playerID != 0xff) {
        enum SoundHandleType handleType = SoundSystem_GetSoundHandleTypeFromPlayerID(playerID);
        NNS_SndHandleReleaseSeq(SoundSystem_GetSoundHandle(handleType));
    }

    Sound_Impl_ResetBGM();
}

static void Sound_Impl_ResetBGM(void)
{
    Sound_SetCurrentBGM(0);
    Sound_SetNextBGM(0);
    SoundSystem_SetState(SOUND_SYSTEM_STATE_IDLE);
}

void Sound_FadeInBGM(int targetVolume, int frames, enum BGMFadeInType fadeInType)
{
    u16 currentBGM = Sound_GetCurrentBGM();
    u8 playerID = Sound_GetPlayerForSequence(currentBGM);
    if (playerID == 0xff) {
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
    if (playerID == 0xff) {
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

void Sound_StopAll(void)
{
    u8 *v0 = SoundSystem_GetParam(16);
    u8 *v1 = SoundSystem_GetParam(17);

    NNS_SndPlayerStopSeqAll(0);

    if (*v0 == 1) {
        sub_02004CF4(14);
    }

    if (*v1 == 1) {
        sub_02004CF4(15);
    }

    SoundSystem_SetState(SOUND_SYSTEM_STATE_IDLE);
}

void sub_020056D4(void)
{
    int v0;
    u8 *v1 = SoundSystem_GetParam(16);
    u8 *v2 = SoundSystem_GetParam(17);

    NNS_SndPlayerStopSeq(SoundSystem_GetSoundHandle(7), 0);
    Sound_Impl_ResetBGM();

    for (v0 = 0; v0 < 4; v0++) {
        Sound_StopEffectFromHandle((3 + v0), 0);
    }

    sub_0200592C(0);

    if (*v1 == 1) {
        sub_02004CF4(14);
    }

    if (*v2 == 1) {
        sub_02004CF4(15);
    }

    return;
}

BOOL Sound_PlayPannedEffect(u16 seqID, int pan)
{
    int result = Sound_PlayEffect(seqID);
    Sound_PanEffect(seqID, SOUND_EFFECT_TRACK_ALL, pan);

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
    for (int i = 0; i < 4; i++) {
        Sound_StopEffectFromHandle(SOUND_HANDLE_TYPE_SFX_1 + i, 0);
    }
}

BOOL Sound_IsEffectPlaying(u16 seqID)
{
    return Sound_GetNumberOfPlayingSequencesForPlayer(Sound_GetPlayerForSequence(seqID));
}

BOOL Sound_IsAnyEffectPlaying()
{
    for (int i = 0; i < 4; i++) {
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

    for (int i = 0; i < 4; i++) {
        NNS_SndPlayerSetTrackPan(SoundSystem_GetSoundHandle(handleType + i), SOUND_EFFECT_TRACK_ALL, pan);
    }
}

BOOL Sound_PlayPokemonCry(u16 species, u8 form)
{
    int v1;
    u8 *v2 = SoundSystem_GetParam(18);
    ChatotCry **chatotCry = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CHATOT_CRY);
    u8 *v4 = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_ALLOW_2_POKEMON_CRIES);

    u16 waveID = species;
    if (sub_02006038(species, form) == 1) {
        waveID = WAVE_ARC_PV516_SKY;
    }

    if (waveID != WAVE_ARC_PV516_SKY) {
        if (waveID > MAX_SPECIES || waveID == SPECIES_NONE) {
            waveID = SPECIES_BULBASAUR;
        }
    }

    if (waveID == SPECIES_CHATOT) {
        if (ProcessAudioInput(*chatotCry, 0, 127, 0) == TRUE) {
            Sound_FlagDefaultChatotCry(FALSE);
            return TRUE;
        }
    }

    if (*v2 == 0) {
        if (*v4 == 0) {
            sub_0200592C(0);
        }

        v1 = NNS_SndArcPlayerStartSeqEx(SoundSystem_GetSoundHandle(SOUND_HANDLE_TYPE_POKEMON_CRY), -1, waveID, -1, 2);
        Sound_AdjustVolumeForVoiceChatEx(waveID, 1);
    } else {
        v1 = NNS_SndArcPlayerStartSeqEx(SoundSystem_GetSoundHandle(8), -1, waveID, -1, 2);
        Sound_AdjustVolumeForVoiceChatEx(waveID, 8);
    }

    Sound_FlagDefaultChatotCry(FALSE);

    if (v1 == 0) {
        (void)0;
    }

    return v1;
}

BOOL sub_0200590C(u16 species, u8 delay, u8 form)
{
    Sound_PlayDelayedPokemonCry(POKECRY_NORMAL, species, 0, 127, HEAP_ID_FIELDMAP, delay, form);
    return 1;
}

void sub_0200592C(int param0)
{
    u8 *v0 = SoundSystem_GetParam(16);
    u8 *v1 = SoundSystem_GetParam(17);
    u8 *v2 = SoundSystem_GetParam(15);

    NNS_SndPlayerStopSeq(SoundSystem_GetSoundHandle(1), param0);
    NNS_SndPlayerStopSeq(SoundSystem_GetSoundHandle(8), param0);

    if (*v0 == 1) {
        sub_02004E84(14);
        sub_02004C4C(14);
    }

    if (*v1 == 1) {
        sub_02004E84(15);
        sub_02004C4C(15);
    }

    ResetMicStatusFlags();
    sub_0200605C();

    return;
}

int sub_0200598C(void)
{
    u8 *v0 = SoundSystem_GetParam(16);
    u8 *v1 = SoundSystem_GetParam(17);
    u8 *v2 = SoundSystem_GetParam(15);
    u8 *v3 = SoundSystem_GetParam(46);

    if (*v0 == 1) {
        return sub_02004D04(14);
    }

    if (*v1 == 1) {
        return sub_02004D04(15);
    }

    return Sound_GetNumberOfPlayingSequencesForPlayer(0);
}

BOOL Sound_PlayPokemonCryEx(enum PokemonCryMod cryMod, u16 species, int param2, int volume, int heapID, u8 form)
{
    int v0, v1;
    u16 v3;
    int v4, v5, v6, v7;
    u8 *v8 = SoundSystem_GetParam(16);
    u8 *v9 = SoundSystem_GetParam(17);
    u8 *v10 = SoundSystem_GetParam(18);
    u8 *v11 = SoundSystem_GetParam(30);
    ChatotCry **v12 = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CHATOT_CRY);

    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;

    if (sub_02006038(species, form) == 1) {
        species = SPECIES_EGG;
    }

    if (species != SPECIES_EGG) {
        if ((species > MAX_SPECIES) || (species == SPECIES_NONE)) {
            species = SPECIES_BULBASAUR;
        }
    }

    if (param2 < 0) {
        v0 = 64 + (param2 / 2);
    } else {
        v0 = 64 + (param2 / 2);
    }

    v1 = volume - 30;

    if (v1 <= 0) {
        v1 = 1;
    }

    v3 = 0;
    *v10 = 0;

    if (*v8 == 1) {
        sub_02004E84(14);
        sub_02004C4C(14);
    }

    if (*v9 == 1) {
        sub_02004E84(15);
        sub_02004C4C(15);
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

            if (*v11 == 0) {
                sub_02004F94(1, 0xffff, param2);
                sub_02005E4C(species, 1, volume);
            } else {
                if (*v8 == 1) {
                    sub_02004D14(14, v0);
                    sub_02004D40(14, volume);
                } else {
                    sub_02004F94(1, 0xffff, param2);
                    sub_02005E4C(species, 1, volume);
                }
            }

            return 1;
        default:
            Sound_FlagDefaultChatotCry(TRUE);
            break;
        }
    }

    switch (cryMod) {
    case POKECRY_NORMAL:
        v4 = Sound_PlayPokemonCry(species, form);
        sub_02004F94(1, 0xffff, param2);
        sub_02005E4C(species, 1, volume);
        break;
    case POKECRY_HALF_DURATION:
        v4 = Sound_PlayPokemonCry(species, form);
        sub_02004F94(1, 0xffff, param2);
        sub_02005E4C(species, 1, volume);
        sub_02005E64(20, heapID);
        break;
    case POKECRY_FIELD_EVENT:
        v4 = Sound_PlayPokemonCry(species, form);
        sub_02004F94(1, 0xffff, param2);
        sub_02005E4C(species, 1, volume);
        sub_02004F68(1, 0xffff, 64);
        v6 = sub_020060EC(species, 20, form);
        sub_02004F94(8, 0xffff, param2);
        sub_02005E4C(species, 8, v1);
        break;
    case POKECRY_MID_MOVE:
        v4 = Sound_PlayPokemonCry(species, form);
        sub_02004F94(1, 0xffff, param2);
        sub_02005E4C(species, 1, volume);
        sub_02005E64(30, heapID);
        sub_02004F68(1, 0xffff, 192);
        v6 = sub_020060EC(species, 16, form);
        sub_02004F94(8, 0xffff, param2);
        sub_02005E4C(species, 8, v1);
        break;
    case POKECRY_HYPERVOICE_1:
        v5 = sub_02004BCC(14);
        v5 = sub_02004D78(species, volume, v0, 14, heapID);
        sub_02004D14(14, v0);
        sub_02005E64(15, heapID);
        sub_02004D2C(14, (32768 + 1536));
        v7 = sub_02006120(species, -64, v1, v0, heapID);
        sub_02004D2C(15, (32768 + 1536));
        break;
    case POKECRY_FAINT:
        v4 = Sound_PlayPokemonCry(species, form);
        sub_02004F94(1, 0xffff, param2);
        sub_02005E4C(species, 1, volume);
        sub_02004F68(1, 0xffff, -224);
        break;
    case POKECRY_HYPERVOICE_2:
        v4 = Sound_PlayPokemonCry(species, form);
        sub_02004F94(1, 0xffff, param2);
        sub_02005E4C(species, 1, volume);
        sub_02004F68(1, 0xffff, 44);
        v6 = sub_020060EC(species, -64, form);
        sub_02004F94(8, 0xffff, param2);
        sub_02005E4C(species, 8, v1);
        break;
    case POKECRY_HOWL_1:
        v4 = Sound_PlayPokemonCry(species, form);
        sub_02004F94(1, 0xffff, param2);
        sub_02005E4C(species, 1, volume);
        sub_02005E64(11, heapID);
        sub_02004F68(1, 0xffff, -128);
        break;
    case POKECRY_HOWL_2:
        v4 = Sound_PlayPokemonCry(species, form);
        sub_02004F94(1, 0xffff, param2);
        sub_02005E4C(species, 1, volume);
        sub_02005E64(60, heapID);
        sub_02004F68(1, 0xffff, 60);
        break;
    case POKECRY_UPROAR_1:
        v5 = sub_02004BCC(14);
        v5 = sub_02004D78(species, volume, v0, 14, heapID);
        sub_02004D14(14, v0);
        sub_02005E64(13, heapID);
        sub_02004D2C(14, (32768 - 6144));
        break;
    case POKECRY_UPROAR_2:
        v4 = Sound_PlayPokemonCry(species, form);
        sub_02004F94(1, 0xffff, param2);
        sub_02005E4C(species, 1, volume);
        sub_02005E64(100, heapID);
        sub_02004F68(1, 0xffff, -44);
        break;
    case POKECRY_PINCH_NORMAL:
        v4 = Sound_PlayPokemonCry(species, form);
        sub_02004F94(1, 0xffff, param2);
        sub_02005E4C(species, 1, volume);
        sub_02004F68(1, 0xffff, -96);
        break;
    case POKECRY_PINCH_HALF_DURATION:
        v4 = Sound_PlayPokemonCry(species, form);
        sub_02004F94(1, 0xffff, param2);
        sub_02005E4C(species, 1, volume);
        sub_02005E64(20, heapID);
        sub_02004F68(1, 0xffff, -96);
        break;
    case POKECRY_POKEDEX_CHORUS:
        Sound_PlayPokemonCry(species, form);
        sub_02005E4C(species, 1, 127);
        sub_020060EC(species, 20, form);
        sub_02004F94(8, 0xffff, param2);
        Sound_FadeVolumeForHandle(8, volume, 0);
        break;
    case POKECRY_POKEDEX:
        v4 = Sound_PlayPokemonCry(species, form);
        break;
    }

    return 1;
}

static void sub_02005E4C(u16 param0, int param1, int param2)
{
    Sound_SetInitialVolumeForHandle(param1, param2);
    Sound_AdjustVolumeForVoiceChatEx(param0, param1);

    return;
}

void sub_02005E64(int param0, int heapID)
{
    UnkStruct_02005E64 *v0 = NULL;
    SysTask **v1 = SoundSystem_GetParam(35);

    if (*v1 != NULL) {
        (void)0;
    }

    sub_02005F24();

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_02005E64));

    if (v0 == NULL) {
        GF_ASSERT(FALSE);
        return;
    }

    memset(v0, 0, sizeof(UnkStruct_02005E64));

    v0->unk_00 = param0;
    v0->unk_04 = SysTask_Start(sub_02005EB0, v0, 0);
    *v1 = v0->unk_04;

    return;
}

static void sub_02005EB0(SysTask *param0, void *param1)
{
    u8 *v0 = SoundSystem_GetParam(16);
    u8 *v1 = SoundSystem_GetParam(17);
    UnkStruct_02005E64 *v2 = (UnkStruct_02005E64 *)param1;

    if (v2->unk_00 == 10) {
        Sound_FadeVolumeForHandle(1, 0, v2->unk_00);
        Sound_FadeVolumeForHandle(8, 0, v2->unk_00);
    }

    v2->unk_00--;

    if (sub_0200598C() == 0) {
        v2->unk_00 = 0;
    }

    if (v2->unk_00 <= 0) {
        sub_0200592C(0);

        if (*v0 == 1) {
            sub_02004E84(14);
            sub_02004C4C(14);
        }

        if (*v1 == 1) {
            sub_02004E84(15);
            sub_02004C4C(15);
        }

        sub_02005F24();
    }

    return;
}

void sub_02005F24()
{
    void *v0;
    SysTask **v1 = SoundSystem_GetParam(35);

    if (*v1 != NULL) {
        v0 = SysTask_GetParam(*v1);
        SysTask_Done(*v1);
        Heap_FreeToHeap(v0);
    }

    *v1 = NULL;
    return;
}

void Sound_PlayDelayedPokemonCry(enum PokemonCryMod cryMod, u16 species, int param2, int volume, int heapID, u8 delay, u8 form)
{
    int *v1;
    u16 *v2;
    int *v3;
    int *v4;
    int *v5;
    u8 *v6;
    u8 *v7 = SoundSystem_GetParam(6);
    u8 *v8 = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_ALLOW_2_POKEMON_CRIES);

    if (*v7 == 0) {
        v1 = SoundSystem_GetParam(41);
        v2 = SoundSystem_GetParam(45);
        v3 = SoundSystem_GetParam(42);
        v4 = SoundSystem_GetParam(43);
        v5 = SoundSystem_GetParam(44);
        v6 = SoundSystem_GetParam(46);
    } else {
        v1 = SoundSystem_GetParam(47);
        v2 = SoundSystem_GetParam(51);
        v3 = SoundSystem_GetParam(48);
        v4 = SoundSystem_GetParam(49);
        v5 = SoundSystem_GetParam(50);
        v6 = SoundSystem_GetParam(52);
    }

    if (*v8 == 1) {
        *v7 ^= 1;
    }

    if (sub_02006038(species, form) == 1) {
        species = SPECIES_EGG;
    }

    if (species == 0) {
        return;
    }

    if (delay == 0) {
        Sound_PlayPokemonCryEx(cryMod, species, param2, volume, heapID, form);
        return;
    }

    *v1 = cryMod;
    *v2 = species;
    *v3 = param2;
    *v4 = volume;
    *v5 = heapID;
    *v6 = delay;

    return;
}

static BOOL sub_02006038(u16 species, u8 form)
{
    if (species == SPECIES_SHAYMIN) {
        if (form == 1) {
            return TRUE;
        }
    }

    if (species == SPECIES_EGG) {
        return TRUE;
    }

    return FALSE;
}

void sub_0200605C(void)
{
    int *v0 = SoundSystem_GetParam(41);
    u16 *v1 = SoundSystem_GetParam(45);
    int *v2 = SoundSystem_GetParam(42);
    int *v3 = SoundSystem_GetParam(43);
    int *v4 = SoundSystem_GetParam(44);
    u8 *v5 = SoundSystem_GetParam(46);
    int *v6 = SoundSystem_GetParam(47);
    u16 *v7 = SoundSystem_GetParam(51);
    int *v8 = SoundSystem_GetParam(48);
    int *v9 = SoundSystem_GetParam(49);
    int *v10 = SoundSystem_GetParam(50);
    u8 *v11 = SoundSystem_GetParam(52);

    *v0 = 0;
    *v1 = 0;
    *v2 = 0;
    *v3 = 0;
    *v4 = 0;
    *v5 = 0;

    *v6 = 0;
    *v7 = 0;
    *v8 = 0;
    *v9 = 0;
    *v10 = 0;
    *v11 = 0;

    return;
}

static BOOL sub_020060EC(u16 species, s8 pitch, u8 form)
{
    int v0;
    u8 *v1 = SoundSystem_GetParam(18);

    *v1 = 1;

    Sound_FlagDefaultChatotCry(TRUE);
    v0 = Sound_PlayPokemonCry(species, form);
    sub_02004F68(8, 0xffff, pitch);

    return v0;
}

static BOOL sub_02006120(u16 param0, s8 param1, int param2, int param3, int heapID)
{
    int v0;
    u8 *v1 = SoundSystem_GetParam(18);

    *v1 = 1;

    v0 = sub_02004BCC(15);
    v0 = sub_02004D78(param0, param2, param3, 15, heapID);

    return v0;
}

BOOL sub_02006150(u16 param0)
{
    u16 v0;
    u8 v1;
    int v2, v3;
    const NNSSndArcBankInfo *v4 = Sound_GetBankInfoForSequence(param0);

    sub_02006214(param0);

    v0 = Sound_GetCurrentBGM();
    v1 = Sound_GetPlayerForSequence(v0);

    if (v1 != 0xff) {
        Sound_SetBGMPlayerPaused(v1, 1);
    }

    SoundSystem_SaveHeapState(SoundSystem_GetParam(29));

    v2 = SoundSystem_LoadSequenceEx(param0, (NNS_SND_ARC_LOAD_SEQ | NNS_SND_ARC_LOAD_BANK));
    v2 = NNS_SndArcPlayerStartSeq(SoundSystem_GetSoundHandle(2), param0);

    Sound_AdjustVolumeForVoiceChatEx(param0, 2);

    return v2;
}

int sub_0200619C(void)
{
    u16 *v0 = SoundSystem_GetParam(14);

    if (Sound_GetNumberOfPlayingSequencesForPlayer(2) != 0) {
        return 1;
    }

    if (*v0 > 0) {
        (*v0)--;
        return 1;
    }

    return 0;
}

static void sub_020061C8(int param0)
{
    int v0, v1;
    u16 v2;

    NNS_SndPlayerStopSeq(SoundSystem_GetSoundHandle(2), param0);
    SoundSystem_LoadHeapState(Sound_GetHeapState(6));

    return;
}

int sub_020061E4(void)
{
    u8 v0;
    u16 v1;
    u16 *v2 = SoundSystem_GetParam(14);

    if (sub_0200619C() == 1) {
        return 1;
    }

    sub_020061C8(0);

    v1 = Sound_GetCurrentBGM();
    v0 = Sound_GetPlayerForSequence(v1);

    if (v0 != 0xff) {
        Sound_SetBGMPlayerPaused(v0, 0);
    }

    return 0;
}

static void sub_02006214(u16 param0)
{
    u16 *v0 = SoundSystem_GetParam(14);

    (*v0) = 15;
    return;
}
