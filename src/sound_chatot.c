#include "sound_chatot.h"

#include <nitro.h>
#include <string.h>

#include "constants/species.h"

#include "struct_defs/chatot_cry.h"

#include "math.h"
#include "sound_system.h"
#include "sound.h"
#include "sound_playback.h"
#include "unk_0202CC64.h"

#define CHATOT_CRY_SPEED_VARIANCE   8192
#define CHATOT_CRY_WAVE_BUFFER_SIZE SOUND_WAVE_BUFFER_SIZE
#define CHATOT_CRY_SAMPLING_RATE    2000

BOOL Sound_UpdateChatotCry(void)
{
    u8 *wavePrimaryAllocated = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_WAVE_OUT_PRIMARY_ALLOCATED);
    u8 *chatotCryPlaying = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CHATOT_CRY_PLAYING);

    if (*chatotCryPlaying == TRUE) {
        if (*wavePrimaryAllocated == TRUE) {
            if (Sound_IsWaveOutPlaying(WAVE_OUT_CHANNEL_PRIMARY) == FALSE) {
                Sound_StopChatotCry();
                return TRUE;
            }
        } else {
            Sound_StopChatotCry();
            return TRUE;
        }
    }

    return FALSE;
}

BOOL Sound_IsRecordedChatotCryPlayable(const ChatotCry *cry)
{
    u8 *usingDefaultCry = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_DEFAULT_CHATOT_CRY);
    u8 *v1 = SoundSystem_GetParam(54);

    if (IsChatotCryDataValid(cry) == FALSE) {
        return FALSE;
    }

    if (*v1 == TRUE) {
        return FALSE;
    }

    if (*usingDefaultCry == TRUE) {
        return FALSE;
    }

    return TRUE;
}

BOOL Sound_Impl_PlayChatotCry(const ChatotCry *cry, u32 unused, int volume, int pan)
{
    s8 *waveBuffer = Sound_GetWaveBuffer();
    u8 *chatotCryPlaying = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CHATOT_CRY_PLAYING);

    if (Sound_IsRecordedChatotCryPlayable(cry) == FALSE) {
        return FALSE;
    }

    int wavePan;
    if (pan < 0) {
        wavePan = WAVE_OUT_PAN_CENTER + (pan / 2);
    } else {
        wavePan = WAVE_OUT_PAN_CENTER + (pan / 2);
    }

    Sound_StopPokemonCries(0);
    Sound_StopChatotCry();
    Sound_AllocateWaveOutChannel(WAVE_OUT_CHANNEL_PRIMARY);

    u16 speedVariance = LCRNG_Next() % CHATOT_CRY_SPEED_VARIANCE;
    ProcessChatotCryAudioData(waveBuffer, GetChatotCryAudioBuffer(cry));

    WaveOutParam param;
    param.handle = Sound_GetWaveOutHandle(WAVE_OUT_CHANNEL_PRIMARY);
    param.format = NNS_SND_WAVE_FORMAT_PCM8;
    param.data = Sound_GetWaveBuffer();
    param.loop = FALSE;
    param.loopStartSample = 0;
    param.samples = CHATOT_CRY_WAVE_BUFFER_SIZE;
    param.sampleRate = CHATOT_CRY_SAMPLING_RATE;
    param.volume = volume;
    param.speed = WAVE_OUT_SPEED(1.0) + speedVariance;
    param.pan = wavePan;

    BOOL success = Sound_PlayWaveOut(&param, WAVE_OUT_CHANNEL_PRIMARY);
    Sound_SetWaveOutVolume(WAVE_OUT_CHANNEL_PRIMARY, volume);

    *chatotCryPlaying = TRUE;
    Sound_SetUsingDefaultChatotCry(FALSE);

    return success;
}

void Sound_StopChatotCry(void)
{
    u8 *wavePrimaryAllocated = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_WAVE_OUT_PRIMARY_ALLOCATED);
    u8 *chatotCryPlaying = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CHATOT_CRY_PLAYING);

    if (*wavePrimaryAllocated == TRUE) {
        Sound_StopWaveOutReversed(WAVE_OUT_CHANNEL_PRIMARY);
        Sound_FreeWaveOutChannel(WAVE_OUT_CHANNEL_PRIMARY);
    }

    *chatotCryPlaying = FALSE;
}

MICResult Sound_StartRecordingChatotCry(void)
{
    MICAutoParam param;

    param.type = MIC_SAMPLING_TYPE_SIGNED_8BIT;
    param.buffer = Sound_GetWaveBuffer();
    param.size = CHATOT_CRY_WAVE_BUFFER_SIZE;

    // The size must be 32 byte aligned
    if ((param.size & 0x1f) != 0) {
        param.size &= 0xffffffe0;
    }

    param.rate = HW_CPU_CLOCK_ARM7 / CHATOT_CRY_WAVE_BUFFER_SIZE;
    param.loop_enable = FALSE;
    param.full_callback = NULL;
    param.full_arg = NULL;

    return Sound_StartMicAutoSampling(&param);
}

MICResult Sound_StopRecordingChatotCry(void)
{
    return Sound_StopMicAutoSampling();
}

void Sound_StoreRecordedChatotCry(ChatotCry *cry)
{
    StoreProcessedAudioInChatotCryData(cry, (const s8 *)Sound_GetWaveBuffer());
}

void Sound_SetUsingDefaultChatotCry(u8 value)
{
    u8 *param = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_DEFAULT_CHATOT_CRY);
    *param = value;
}

BOOL Sound_PlayChatotCry(ChatotCry *cry, u32 unused, int volume, int pan)
{
    BOOL success;
    ChatotCry **storedCry = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CHATOT_CRY);

    if (cry == NULL) {
        success = Sound_Impl_PlayChatotCry(*storedCry, unused, volume, pan);
    } else {
        success = Sound_Impl_PlayChatotCry(cry, unused, volume, pan);
    }

    if (success == FALSE) {
        Sound_SetUsingDefaultChatotCry(TRUE);
        success = Sound_PlayPokemonCryEx(POKECRY_NORMAL, SPECIES_CHATOT, pan, volume, HEAP_ID_FIELDMAP, 0);
    }

    return success;
}

BOOL Sound_PlayDelayedChatotCry(ChatotCry *cry, u32 unused, int volume, int pan, u8 delay)
{
    BOOL success;
    ChatotCry **storedCry = SoundSystem_GetParam(SOUND_SYSTEM_PARAM_CHATOT_CRY);

    if (cry == NULL) {
        success = Sound_Impl_PlayChatotCry(*storedCry, unused, volume, pan);
    } else {
        success = Sound_Impl_PlayChatotCry(cry, unused, volume, pan);
    }

    if (success == FALSE) {
        Sound_SetUsingDefaultChatotCry(TRUE);
        Sound_PlayDelayedPokemonCryEx(POKECRY_NORMAL, SPECIES_CHATOT, pan, volume, HEAP_ID_FIELDMAP, delay, 0);
        success = TRUE;
    }

    return success;
}

int Sound_GetChatterActivationParameter(ChatotCry *chatotCry)
{
    const s8 *buffer;
    s8 val;

    if (IsChatotCryDataValid(chatotCry) == FALSE) {
        return 0;
    }

    buffer = GetChatotCryAudioBuffer(chatotCry);
    val = buffer[15];

    if (-128 <= val && val < -30) {
        return 1;
    }

    if (30 <= val && val < 128) {
        return 2;
    }

    return 0;
}

BOOL Sound_CanPlayChatotCry(enum PokemonCryMod cryMod)
{
    switch (cryMod) {
    case POKECRY_NORMAL:
    case POKECRY_HALF_DURATION:
    case POKECRY_FAINT:
    case POKECRY_PINCH_NORMAL:
    case POKECRY_PINCH_HALF_DURATION:
        return TRUE;
    }

    return FALSE;
}
