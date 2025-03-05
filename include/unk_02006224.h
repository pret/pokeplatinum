#ifndef POKEPLATINUM_UNK_02006224_H
#define POKEPLATINUM_UNK_02006224_H

#include "constants/sound.h"

#include "struct_defs/chatot_cry.h"

BOOL CheckMicRecordingStatus(void);
BOOL IsChatotCryStructReadyForProcessing(const ChatotCry *cry);
BOOL ProcessAudioInput(const ChatotCry *cry, u32 param1, int volume, int pan);
void ResetMicStatusFlags(void);
MICResult StartMicSampling(void);
MICResult StopMicSampling(void);
void StoreMicDataInChatotCryStruct(ChatotCry *param0);
void Sound_FlagDefaultChatotCry(u8 value);
BOOL Sound_PlayChatotCry(ChatotCry *param0, u32 param1, int param2, int param3);
BOOL Sound_PlayDelayedChatotCry(ChatotCry *param0, u32 param1, int volume, int pan, u8 delay);
int Sound_Chatter(ChatotCry *param0);
BOOL Sound_CanPlayChatotCry(enum PokemonCryMod cryMod);

#endif // POKEPLATINUM_UNK_02006224_H
