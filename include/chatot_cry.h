#ifndef POKEPLATINUM_CHATOT_CRY_H
#define POKEPLATINUM_CHATOT_CRY_H

#include "struct_defs/chatot_cry.h"

#include "savedata.h"

int ChatotCry_SaveSize(void);
void ChatotCry_Init(ChatotCry *chatotCry);
ChatotCry *ChatotCry_New(enum HeapID heapID);
ChatotCry *SaveData_GetChatotCry(SaveData *saveData);
BOOL ChatotCry_IsValid(const ChatotCry *chatotCry);
void ChatotCry_ResetStatus(ChatotCry *chatotCry);
const void *ChatotCry_GetRawAudio(const ChatotCry *chatotCry);
void ChatotCry_GetUpsampledAudio(s8 *outData, const s8 *inCryData);
void ChatotCry_StoreAudio(ChatotCry *chatotCry, const s8 *inData);

void ChatotCry_Copy(ChatotCry *dest, const ChatotCry *src);

#endif // POKEPLATINUM_CHATOT_CRY_H
