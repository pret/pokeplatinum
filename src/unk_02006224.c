#include "unk_02006224.h"

#include <nitro.h>
#include <string.h>

#include "constants/species.h"

#include "struct_defs/chatot_cry.h"

#include "math.h"
#include "sound_system.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_0202CC64.h"

BOOL CheckMicRecordingStatus(void);
void ResetMicStatusFlags(void);
MICResult StartMicSampling(void);
MICResult StopMicSampling(void);
void StoreMicDataInChatotCryStruct(ChatotCry *param0);
BOOL Sound_PlayChatotCry(ChatotCry *param0, u32 param1, int param2, int param3);
int Sound_Chatter(ChatotCry *param0);

BOOL CheckMicRecordingStatus(void)
{
    u8 *v0 = SoundSystem_GetParam(16);
    u8 *v1 = SoundSystem_GetParam(30);

    if (*v1 == 1) {
        if (*v0 == 1) {
            if (Sound_IsWaveOutPlaying(WAVE_OUT_CHANNEL_PRIMARY) == 0) {
                ResetMicStatusFlags();
                return 1;
            }
        } else {
            ResetMicStatusFlags();
            return 1;
        }
    }

    return 0;
}

BOOL IsChatotCryStructReadyForProcessing(const ChatotCry *cry)
{
    u8 *v0 = SoundSystem_GetParam(31);
    u8 *v1 = SoundSystem_GetParam(54);

    if (IsChatotCryDataValid(cry) == FALSE) {
        return FALSE;
    }

    if (*v1 == 1) {
        return FALSE;
    }

    if (*v0 == 1) {
        return FALSE;
    }

    return TRUE;
}

BOOL ProcessAudioInput(const ChatotCry *cry, u32 param1, int volume, int pan)
{
    u16 v0;
    int v1, v2;
    s8 *v3 = sub_02005014();
    u8 *v4 = SoundSystem_GetParam(30);

    if (IsChatotCryStructReadyForProcessing(cry) == FALSE) {
        return FALSE;
    }

    if (pan < 0) {
        v2 = 64 + (pan / 2);
    } else {
        v2 = 64 + (pan / 2);
    }

    Sound_StopPokemonCries(0);
    ResetMicStatusFlags();
    Sound_AllocateWaveOutChannel(WAVE_OUT_CHANNEL_PRIMARY);

    v0 = (LCRNG_Next() % 8192);
    ProcessChatotCryAudioData(v3, GetChatotCryAudioBuffer(cry));

    {
        WaveOutParam v5;

        v5.handle = Sound_GetWaveOutHandle(WAVE_OUT_CHANNEL_PRIMARY);
        v5.format = NNS_SND_WAVE_FORMAT_PCM8;
        v5.data = sub_02005014();
        v5.loop = FALSE;
        v5.loopStartSample = 0;
        v5.samples = (2000 * 1);
        v5.sampleRate = 2000;
        v5.volume = volume;
        v5.speed = WAVE_OUT_SPEED(1.0) + v0;
        v5.pan = v2;

        v1 = Sound_PlayWaveOut(&v5, WAVE_OUT_CHANNEL_PRIMARY);
        Sound_SetWaveOutVolume(WAVE_OUT_CHANNEL_PRIMARY, volume);
    }

    *v4 = 1;
    Sound_FlagDefaultChatotCry(FALSE);

    return v1;
}

void ResetMicStatusFlags(void)
{
    u8 *v0 = SoundSystem_GetParam(16);
    u8 *v1 = SoundSystem_GetParam(30);

    if (*v0 == 1) {
        Sound_StopWaveOutReversed(WAVE_OUT_CHANNEL_PRIMARY);
        Sound_FreeWaveOutChannel(WAVE_OUT_CHANNEL_PRIMARY);
    }

    *v1 = 0;
    return;
}

MICResult StartMicSampling(void)
{
    MICAutoParam v0;

    v0.type = MIC_SAMPLING_TYPE_SIGNED_8BIT;
    v0.buffer = sub_02005014();
    v0.size = (2000 * 1);

    if ((v0.size & 0x1f) != 0) {
        v0.size &= 0xffffffe0;
    }

    v0.rate = HW_CPU_CLOCK_ARM7 / 2000;
    v0.loop_enable = 0;
    v0.full_callback = NULL;
    v0.full_arg = NULL;

    return Sound_StartMicAutoSampling(&v0);
}

MICResult StopMicSampling(void)
{
    return Sound_StopMicAutoSampling();
}

void StoreMicDataInChatotCryStruct(ChatotCry *param0)
{
    StoreProcessedAudioInChatotCryData(param0, (const s8 *)sub_02005014());
    return;
}

void Sound_FlagDefaultChatotCry(u8 value)
{
    u8 *v0 = SoundSystem_GetParam(31);

    *v0 = value;
    return;
}

BOOL Sound_PlayChatotCry(ChatotCry *param0, u32 param1, int volume, int pan)
{
    int v0;
    ChatotCry **v1 = SoundSystem_GetParam(36);

    if (param0 == NULL) {
        v0 = ProcessAudioInput(*v1, param1, volume, pan);
    } else {
        v0 = ProcessAudioInput(param0, param1, volume, pan);
    }

    if (v0 == FALSE) {
        Sound_FlagDefaultChatotCry(TRUE);
        v0 = Sound_PlayPokemonCryEx(POKECRY_NORMAL, SPECIES_CHATOT, pan, volume, HEAP_ID_FIELDMAP, 0);
    }

    return v0;
}

BOOL Sound_PlayDelayedChatotCry(ChatotCry *param0, u32 param1, int volume, int pan, u8 delay)
{
    int v0;
    ChatotCry **v1 = SoundSystem_GetParam(36);

    if (param0 == NULL) {
        v0 = ProcessAudioInput(*v1, param1, volume, pan);
    } else {
        v0 = ProcessAudioInput(param0, param1, volume, pan);
    }

    if (v0 == 0) {
        Sound_FlagDefaultChatotCry(TRUE);
        Sound_PlayDelayedPokemonCry(POKECRY_NORMAL, SPECIES_CHATOT, pan, volume, HEAP_ID_FIELDMAP, delay, 0);
        v0 = 1;
    }

    return v0;
}

int Sound_Chatter(ChatotCry *param0)
{
    const s8 *v0;
    s8 v1;

    if (IsChatotCryDataValid(param0) == 0) {
        return 0;
    }

    v0 = GetChatotCryAudioBuffer(param0);
    v1 = v0[15];

    if ((-128 <= v1) && (v1 < -30)) {
        return 1;
    }

    if ((30 <= v1) && (v1 < 128)) {
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
