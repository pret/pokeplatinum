#ifndef POKEPLATINUM_UNK_02006224_H
#define POKEPLATINUM_UNK_02006224_H

#include "struct_defs/chatot_cry.h"

#include <nitro/spi.h>

BOOL CheckMicRecordingStatus(void);
BOOL IsChatotCryStructReadyForProcessing(const ChatotCry * param0);
BOOL ProcessAudioInput(const ChatotCry * param0, u32 param1, int param2, int param3);
void ResetMicStatusFlags(void);
MICResult StartMicSampling(void);
MICResult StopMicSampling(void);
void StoreMicDataInChatotCryStruct(ChatotCry * param0);
void Sound_FlagDefaultChatotCry(u8 param0);
BOOL Sound_PlayChatotCry(ChatotCry * param0, u32 param1, int param2, int param3);
BOOL Sound_PlayDelayedChatotCry(ChatotCry * param0, u32 param1, int param2, int param3, u8 param4);
int Sound_Chatter(ChatotCry * param0);
BOOL Sound_CanPlayChatotCry(int param0);

#endif // POKEPLATINUM_UNK_02006224_H
