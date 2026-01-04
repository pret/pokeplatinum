#ifndef POKEPLATINUM_VOICE_CHAT_H
#define POKEPLATINUM_VOICE_CHAT_H

#include "constants/heap.h"

void VoiceChat_Start(enum HeapID heapID, int codec, int numConferenceSessions);
void VoiceChat_Main(void);
void VoiceChat_Stop(void);
void VoiceChat_SetCleanupCallback(void (*func)(void));
void VoiceChat_Enable(void);
void VoiceChat_Disable(void);
BOOL VoiceChat_DetectVoice(void);
BOOL VoiceChat_ProcessReceivedData(int id, void *buffer, int size);
void VoiceChat_RequestEnd(void);
BOOL VoiceChat_AddConferenceClients(int newClientsBitmap, int currentClientID);

#endif // POKEPLATINUM_VOICE_CHAT_H
