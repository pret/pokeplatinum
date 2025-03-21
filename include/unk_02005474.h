#ifndef POKEPLATINUM_UNK_02005474_H
#define POKEPLATINUM_UNK_02005474_H

#include "constants/sound.h"
#include "sound_system.h"

#include "generated/sdat.h"

enum BGMFadeInType {
    BGM_FADE_IN_TYPE_FROM_ZERO = 0, // Fade in from volume 0
    BGM_FADE_IN_TYPE_FROM_CURRENT = 1, // Fade in from the current volume
};

#define SOUND_EFFECT_TRACK(TRACK)   (1 << (TRACK))
#define SOUND_EFFECT_TRACK_ALL      0xFFFF

BOOL Sound_PlayBasicBGM(u16 param0);
BOOL Sound_PlayBGM(u16 param0);
BOOL sub_02005588(u8 param0, u16 param1);
void Sound_StopBGM(u16 param0, int param1);
void Sound_FadeInBGM(int param0, int param1, enum BGMFadeInType param2);
void Sound_FadeOutBGM(int param0, int param1);
BOOL Sound_IsFadeActive(void);
BOOL Sound_IsSequencePlaying(u16 param0);
void Sound_StopAll(void);
void sub_020056D4(void);
BOOL Sound_PlayPannedEffect(u16 param0, int param1);
BOOL Sound_PlayEffect(u16 param0);
BOOL Sound_PlayEffectOnPlayer(u16 param0, int param1);
void Sound_StopEffect(u16 param0, int param1);
void Sound_StopEffectFromHandle(enum SoundHandleType param0, int param1);
void Sound_StopAllEffects(int fadeOutFrames); // Fade parameter is not actually used
BOOL Sound_IsEffectPlaying(u16 param0);
BOOL Sound_IsAnyEffectPlaying();

// Pans the given sound effect sequence either to the left (pan < 0) or to the right (pan > 0)
// tracks is for example (SOUND_EFFECT_TRACK(10) | SOUND_EFFECT_TRACK(2)) or SOUND_EFFECT_TRACK_ALL
void Sound_PanEffect(u16 seqID, u16 tracks, int pan);
void Sound_PanAllEffects(int param0);
BOOL sub_02005844(u16 species, u8 form);
BOOL sub_0200590C(u16 species, u8 delay, u8 form);
void sub_0200592C(int param0);
int sub_0200598C(void);
BOOL Sound_PlayPokemonCry(enum PokemonCryMod cryMod, u16 species, int param2, int volume, int heapID, u8 form);
void Sound_PlayDelayedPokemonCry(enum PokemonCryMod cryMod, u16 species, int param2, int volume, int heapID, u8 delay, u8 form);
void sub_0200605C(void);
BOOL sub_02006150(u16 param0);
int sub_0200619C(void);
int sub_020061E4(void);

#endif // POKEPLATINUM_UNK_02005474_H
