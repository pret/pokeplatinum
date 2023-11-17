#ifndef POKEPLATINUM_UNK_0202CC64_H
#define POKEPLATINUM_UNK_0202CC64_H

#include "struct_decls/struct_0202CC84_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

int GetSizeOfChatotCryData(void);
void ChatotCry_Init(ChatotCryData * param0);
ChatotCryData * AllocateAndInitializeChatotCryData(int param0);
ChatotCryData * GetChatotCryDataFromSave(SaveData * param0);
BOOL IsChatotCryDataValid(const ChatotCryData * param0);
void ResetChatotCryDataStatus(ChatotCryData * param0);
const void * GetChatotCryAudioBuffer(const ChatotCryData * param0);
void ProcessChatotCryAudioData(s8 * param0, const s8 * param1);
void StoreProcessedAudioInChatotCryData(ChatotCryData * param0, const s8 * param1);
void CopyChatotCryData(ChatotCryData * param0, const ChatotCryData * param1);

#endif // POKEPLATINUM_UNK_0202CC64_H
