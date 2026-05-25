#ifndef POKEPLATINUM_UNDERGROUND_PLAYER_TALK_H
#define POKEPLATINUM_UNDERGROUND_PLAYER_TALK_H

#include "field/field_system_decl.h"

typedef void (*ExitCallback)(int);

void UndergroundTalk_Start(int linkNetID, ExitCallback exitCallback, FieldSystem *fieldSystem);
void UndergroundTalkResponse_Start(int unused, int linkNetID, FieldSystem *fieldSystem);
void CommCmd_RequestUndergroundTalkStateAndUpdateServer(int unused0, int unused1, void *data, void *unused3);
void CommCmd_RequestUndergroundTalkResponseStateAndUpdateServer(int unused0, int unused1, void *data, void *unused3);
void CommCmd_UndergroundTalkResponseStateUpdateServer(int unused0, int size, void *data, void *unused3);
void CommCmd_UndergroundTalkStateUpdateServer(int unused0, int size, void *data, void *unused3);
int CommPacketSizeOf_TalkStateChangeRequest(void);
void CommCmd_UndergroundSendGiftServer(int unused0, int unused1, void *data, void *unused3);
void CommCmd_UndergroundRecvGiftOffer(int unused0, int unused1, void *data, void *unused3);
int CommPacketSizeOf_Gift(void);
void CommCmd_SendUndergroundTalkMessageServer(int unused0, int unused1, void *data, void *unused3);
void CommCmd_RecvUndergroundTalkMessage(int unused0, int unused1, void *data, void *unused3);
int CommPacketSizeOf_TalkMessage(void);
void UndergroundTalk_ExitConversation(void);

#endif // POKEPLATINUM_UNDERGROUND_PLAYER_TALK_H
