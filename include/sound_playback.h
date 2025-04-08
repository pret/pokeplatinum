#ifndef POKEPLATINUM_SOUND_PLAYBACK_H
#define POKEPLATINUM_SOUND_PLAYBACK_H

#include "constants/sound.h"
#include "generated/sdat.h"

#include "sound_system.h"

#define SOUND_PLAYBACK_TRACK(TRACK) (1 << (TRACK))
#define SOUND_PLAYBACK_TRACK_ALL    0xFFFF

enum BGMFadeInType {
    BGM_FADE_IN_TYPE_FROM_ZERO = 0, // Fade in from volume 0
    BGM_FADE_IN_TYPE_FROM_CURRENT = 1, // Fade in from the current volume
};

BOOL Sound_PlayBasicBGM(u16 bgmID);
BOOL Sound_PlayBGM(u16 bgmID);
BOOL sub_02005588(u8 scene, u16 seqID);
void Sound_StopBGM(u16 bgmID, int fadeOutFrames);
void Sound_FadeInBGM(int targetVolume, int frames, enum BGMFadeInType fadeInType);
void Sound_FadeOutBGM(int targetVolume, int frames);
BOOL Sound_IsFadeActive(void);
BOOL Sound_IsSequencePlaying(u16 seqID);
void Sound_StopWaveOutAndSequences(void);
void Sound_StopAll(void);
BOOL Sound_PlayPannedEffect(u16 seqID, int pan);
BOOL Sound_PlayEffect(u16 seqID);
BOOL Sound_PlayEffectOnPlayer(u16 seqID, int playerID);
void Sound_StopEffect(u16 seqID, int fadeOutFrames);
void Sound_StopEffectFromHandle(enum SoundHandleType handleType, int fadeOutFrames);
void Sound_StopAllEffects(int fadeOutFrames); // Fade parameter is not actually used
BOOL Sound_IsEffectPlaying(u16 seqID);
BOOL Sound_IsAnyEffectPlaying(void);

// Pans the given sound effect sequence either to the left (pan < 0) or to the right (pan > 0)
// tracks is for example (SOUND_PLAYBACK_TRACK(10) | SOUND_PLAYBACK_TRACK(2)) or SOUND_PLAYBACK_TRACK_ALL
void Sound_PanEffect(u16 seqID, u16 tracks, int pan);
void Sound_PanAllEffects(int pan);
BOOL Sound_PlayPokemonCry(u16 species, u8 form);
BOOL Sound_PlayDelayedPokemonCry(u16 species, u8 delay, u8 form);
void Sound_StopPokemonCries(int fadeOutFrames);
BOOL Sound_IsPokemonCryPlaying(void);
BOOL Sound_PlayPokemonCryEx(enum PokemonCryMod cryMod, u16 species, int pan, int volume, int heapID, u8 form);
void Sound_PlayDelayedPokemonCryEx(enum PokemonCryMod cryMod, u16 species, int pan, int volume, int heapID, u8 delay, u8 form);
void Sound_ClearPokemonCryParams(void);
BOOL Sound_PlayFanfare(u16 seqID);
BOOL Sound_UpdateFanfareDelay(void);
BOOL Sound_IsBGMPausedByFanfare(void);

#endif // POKEPLATINUM_SOUND_PLAYBACK_H
