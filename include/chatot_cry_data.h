#ifndef POKEPLATINUM_CHATOT_CRY_DATA_H
#define POKEPLATINUM_CHATOT_CRY_DATA_H

#include "struct_defs/chatot_cry.h"

#include "savedata.h"

int ChatotCry_SaveSize(void);
void ChatotCry_Init(ChatotCry *chatotCry);
ChatotCry *ChatotCry_New(enum HeapID heapID);
ChatotCry *SaveData_GetChatotCry(SaveData *saveData);
BOOL IsChatotCryDataValid(const ChatotCry *chatotCry);
void ResetChatotCryDataStatus(ChatotCry *chatotCry);
const void *GetChatotCryAudioBuffer(const ChatotCry *chatotCry);

/**
 * @brief Converts Chatot Cry data (stored in 1Khz 4-bit) to wave data (2khz 8-bit).
 *
 * @param outData
 * @param inCryData
 */
void ProcessChatotCryAudioData(s8 *outData, const s8 *inCryData);

/**
 * @brief Stores input data (2khz 8-bit) in a ChatotCry object (1khz 4-bit).
 *
 * @param chatotCry
 * @param inData
 */
void StoreProcessedAudioInChatotCryData(ChatotCry *chatotCry, const s8 *inData);

void CopyChatotCryData(ChatotCry *dest, const ChatotCry *src);

#endif // POKEPLATINUM_CHATOT_CRY_DATA_H
