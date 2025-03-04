#ifndef POKEPLATINUM_UNK_0202CC64_H
#define POKEPLATINUM_UNK_0202CC64_H

#include "struct_defs/chatot_cry.h"

#include "savedata.h"

int ChatotCry_SaveSize(void);
void ChatotCry_Init(ChatotCry *param0);
ChatotCry *ChatotCry_New(int heapID);
ChatotCry *GetChatotCryDataFromSave(SaveData *param0);
BOOL IsChatotCryDataValid(const ChatotCry *param0);
void ResetChatotCryDataStatus(ChatotCry *param0);
const void *GetChatotCryAudioBuffer(const ChatotCry *param0);
void ProcessChatotCryAudioData(s8 *param0, const s8 *param1);
void StoreProcessedAudioInChatotCryData(ChatotCry *param0, const s8 *param1);
void CopyChatotCryData(ChatotCry *param0, const ChatotCry *param1);

#endif // POKEPLATINUM_UNK_0202CC64_H
