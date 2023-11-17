#ifndef POKEPLATINUM_UNK_0202CC64_H
#define POKEPLATINUM_UNK_0202CC64_H

#include "struct_decls/struct_0202CC84_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

int GetSizeOfChatotCry(void);
void ChatotCry_Init(ChatotCry * param0);
ChatotCry * AllocateAndInitializeChatotCry(int param0);
ChatotCry * GetChatotCryFromSave(SaveData * param0);
BOOL IsChatotCryValid(const ChatotCry * param0);
void ResetChatotCryStatus(ChatotCry * param0);
const void * GetChatotCryAudioBuffer(const ChatotCry * param0);
void ProcessChatotCryAudioData(s8 * param0, const s8 * param1);
void StoreProcessedAudioInChatotCry(ChatotCry * param0, const s8 * param1);
void CopyChatotCry(ChatotCry * param0, const ChatotCry * param1);

#endif // POKEPLATINUM_UNK_0202CC64_H
