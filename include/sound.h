#ifndef POKEPLATINUM_SOUND_H
#define POKEPLATINUM_SOUND_H

#include <nitro/snd.h>
#include <nitro/spi.h>
#include <nnsys.h>

#include "sound_system.h"

#define FIELD_BGM_BANK_STATE_IDLE   0
#define FIELD_BGM_BANK_STATE_SWITCH 1

#define SOUND_VOLUME_MIN 0
#define SOUND_VOLUME_MAX 127

#define SOUND_WAVE_BUFFER_SIZE 2000

// Used to set pitch
#define SOUND_SEMITONE         64
#define SOUND_SEMITONES(STEPS) ((int)((STEPS) * SOUND_SEMITONE))

#define WAVE_OUT_SPEED(SPEED) (int)((SPEED) * 32768)

#define SOUND_TEMPO_RATIO(RATIO) (int)((RATIO) * 256)

#define WAVE_OUT_PAN_LEFT   0
#define WAVE_OUT_PAN_CENTER 64
#define WAVE_OUT_PAN_RIGHT  127

enum SoundScene {
    SOUND_SCENE_NONE = 0,

    SOUND_SCENE_FIELD = 4,
    SOUND_SCENE_BATTLE,
    SOUND_SCENE_CONTEST,

    SOUND_SCENE_MAX = 51,

    SOUND_SCENE_SUB_BAG = 51,
};

enum WaveOutChannel {
    WAVE_OUT_CHANNEL_PRIMARY = 14,
    WAVE_OUT_CHANNEL_SECONDARY = 15,
};

enum SoundChannelConfig {
    SOUND_CHANNEL_CONFIG_DEFAULT = 0, // Default channel allocation, no reverb
    SOUND_CHANNEL_CONFIG_TITLE, // Extra BGM channels allocated, reverb at ~25% volume
    SOUND_CHANNEL_CONFIG_ENDING, // Extra BGM channels allocated, reverb at ~12% volume
};

typedef struct WaveOutParam {
    NNSSndWaveOutHandle *handle;
    NNSSndWaveFormat format;
    const void *data;
    BOOL loop;
    int loopStartSample;
    int samples;
    int sampleRate;
    int volume;
    int speed;
    int pan;
} WaveOutParam;

void Sound_SetBGMFixed(u8 fixed);
u8 Sound_IsBGMFixed(void);
void Sound_SetCurrentBGM(u16 bgmID);
u16 Sound_Impl_GetCurrentBGM();
static inline u16 Sound_GetCurrentBGM1(void* p) { return Sound_Impl_GetCurrentBGM(p); }
static inline u16 Sound_GetCurrentBGM(void) { return Sound_Impl_GetCurrentBGM(); }
void Sound_SetNextBGM(u16 bgmID);
u16 Sound_GetNextBGM(void);
void Sound_SetFieldBGM(u16 bgmID);
void Sound_SetScene(u8 scene);
void Sound_SetSubScene(u8 scene);
int Sound_LoadSoundEffectsForScene(u8 scene);
BOOL Sound_SetSceneAndPlayBGM(u8 scene, u16 bgmID, int unused);
void Sound_LoadSoundDataForFieldBGM(u16 seqID, u16 currentBankID);
void sub_02004950(u16 param0);
void Sound_LoadHeapStateBGM(void);
int Sound_GetHeapState(enum SoundHeapState state);
void Sound_SetBGMPlayerPaused(u8 playerID, BOOL paused); // playerID can be either PLAYER_FIELD or PLAYER_BGM
void Sound_ClearBGMPauseFlags(void);
void Sound_FadeVolumeForHandle(enum SoundHandleType handleType, int targetVolume, int frames);
void Sound_SetInitialVolumeForHandle(enum SoundHandleType handleType, int volume);
void Sound_AdjustVolumeForVoiceChat(int seqID);
void Sound_AdjustVolumeForVoiceChatEx(int seqID, enum SoundHandleType handleType);
void Sound_SetInitialVolumeForSequence(u16 seqID, int volume);
BOOL Sound_PlaySequenceWithPlayer(enum SoundHandleType handleType, int playerID, u16 seqID);
int Sound_GetNumberOfPlayingSequencesForPlayer(int playerID);
u8 Sound_GetPlayerForSequence(u16 seqID);
int Sound_GetSequenceIDFromSoundHandle(NNSSndHandle *handle);
const NNSSndArcBankInfo *Sound_GetBankInfoForSequence(int seqID);
u16 Sound_GetBankIDFromSequenceID(int seqID);
MICResult Sound_StartMicAutoSampling(MICAutoParam *param);
MICResult Sound_StopMicAutoSampling(void);
MICResult Sound_StartMicManualSampling(MICSamplingType type, void *buffer, MICCallback callback, void *param);
NNSSndWaveOutHandle *Sound_GetWaveOutHandle(enum WaveOutChannel channel);
BOOL Sound_AllocateWaveOutChannel(enum WaveOutChannel channel);
void Sound_FreeWaveOutChannel(enum WaveOutChannel channel);
BOOL Sound_PlayWaveOut(WaveOutParam *param, enum WaveOutChannel channel);
void Sound_StopWaveOut(enum WaveOutChannel channel);
BOOL Sound_IsWaveOutPlaying(enum WaveOutChannel channel);
void Sound_SetWaveOutPan(enum WaveOutChannel channel, u8 pan);
void Sound_SetWaveOutSpeed(enum WaveOutChannel channel, u32 speed);
void Sound_SetWaveOutVolume(enum WaveOutChannel channel, int volume);
BOOL Sound_PlayWaveOutReversed(u16 waveArcID, int volume, int pan, enum WaveOutChannel channel, int heapID);
void Sound_StopWaveOutReversed(enum WaveOutChannel channel);
BOOL Sound_IsCaptureActive(void);
BOOL Sound_StartReverb(int frames);
void Sound_StopReverb(int frames);
void Sound_SetReverbVolume(int targetVolume, int frames);
BOOL Sound_StartFilter(void);
void Sound_StopFilter(void);
void Sound_SetFilterSize(int size);
void Sound_SetPitchForHandle(enum SoundHandleType handleType, u16 tracks, int pitch);
void Sound_SetPitchForSequence(u16 seqID, u16 tracks, int pitch);
void Sound_SetPanForHandle(enum SoundHandleType handleType, u16 tracks, int pan);
void Sound_SetTempoRatioForHandle(enum SoundHandleType handleType, int tempoRatio); // See SOUND_TEMPO_RATIO(...)
void Sound_SetPlaybackMode(int mode); // See SOUND_PLAYBACK_MODE_*
void Sound_SetFadeCounter(int frames);
void Sound_SetFollowUpWaitFrames(int frames);
BOOL Sound_UpdateFollowUpWaitFrames(void);
void Sound_SetMasterVolume(int volume);
void *Sound_GetWaveBuffer(void);
void Sound_SetFieldBGMBankState(int state); // See FIELD_BGM_BANK_STATE_*
BOOL Sound_FadeOutAndPlayBGM(u8 unused1, u16 bgmID, int fadeOutFrames, int waitFrames, u8 bankState, void *unused2);
BOOL Sound_FadeToBGM(u8 unused1, u16 bgmID, int fadeOutFrames, int waitFrames, int fadeInFrames, u8 bankState, void *unused2);
const u8 *Sound_WaveData_GetSamples(const SNDWaveData *data);
const u32 Sound_WaveData_GetLoopLength(const SNDWaveData *data);
const SNDWaveData *Sound_LoadPokedexDataForSpecies(int species);
u32 Sound_GetNumberOfPlayedCrySamples(int unused, const SNDWaveData *data, int pitch);
u32 Sound_GetTicksForHandle(enum SoundHandleType handleType);
void Sound_WaveData_AccumulateAmplitudes(const SNDWaveData *data, u8 *amplitudes, int numAmplitudes, int pitch);
void Sound_ConfigureBGMChannelsAndReverb(enum SoundChannelConfig config);
void Sound_SetPlayerVolume(int playerID, int volume);
void Sound_Set2PokemonCriesAllowed(BOOL allowed);
void sub_02005464(BOOL param0);

#endif // POKEPLATINUM_SOUND_H
