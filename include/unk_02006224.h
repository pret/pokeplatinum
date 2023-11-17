#ifndef POKEPLATINUM_UNK_02006224_H
#define POKEPLATINUM_UNK_02006224_H

#include "struct_decls/struct_0202CC84_decl.h"

#include <nitro/spi.h>

BOOL CheckMicRecordingStatus(void);
BOOL IsChatotCryStructReadyForProcessing(const ChatotCry * param0);
BOOL ProcessAudioInput(const ChatotCry * param0, u32 param1, int param2, int param3);
void ResetMicStatusFlags(void);
MICResult StartMicSampling(void);
MICResult StopMicSampling(void);
void StoreMicDataInChatotCryStruct(ChatotCry * param0);
void SetMicProcessingFlag(u8 param0);
BOOL ProcessChatotCryStructWithAudioParams(ChatotCry * param0, u32 param1, int param2, int param3);
BOOL ProcessChatotCryStructWithExtendedAudioParams(ChatotCry * param0, u32 param1, int param2, int param3, u8 param4);
int Sound_Chatter(ChatotCry * param0);
BOOL IsAudioParamValid(int param0);

#endif // POKEPLATINUM_UNK_02006224_H
