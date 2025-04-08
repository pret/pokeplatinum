#ifndef POKEPLATINUM_SOUND_CHATOT_H
#define POKEPLATINUM_SOUND_CHATOT_H

#include "constants/sound.h"

#include "struct_defs/chatot_cry.h"

BOOL Sound_UpdateChatotCry(void);
BOOL Sound_IsRecordedChatotCryPlayable(const ChatotCry *cry);
BOOL Sound_Impl_PlayChatotCry(const ChatotCry *cry, u32 unused, int volume, int pan);
void Sound_StopChatotCry(void);
MICResult Sound_StartRecordingChatotCry(void);
MICResult Sound_StopRecordingChatotCry(void);
void Sound_StoreRecordedChatotCry(ChatotCry *cry);
void Sound_SetUsingDefaultChatotCry(u8 value);
BOOL Sound_PlayChatotCry(ChatotCry *cry, u32 unused, int volume, int pan);
BOOL Sound_PlayDelayedChatotCry(ChatotCry *cry, u32 unused, int volume, int pan, u8 delay);
int Sound_GetChatterActivationParameter(ChatotCry *cry);
BOOL Sound_CanPlayChatotCry(enum PokemonCryMod cryMod);

#endif // POKEPLATINUM_SOUND_CHATOT_H
