#ifndef POKEPLATINUM_UNDERGROUND_PLAYER_TALK_H
#define POKEPLATINUM_UNDERGROUND_PLAYER_TALK_H

#include "field/field_system_decl.h"

typedef void (*ExitCallback)(int);

void UndergroundTalk_Start(int linkNetID, ExitCallback exitCallback, FieldSystem *fieldSystem);
void UndergroundTalkResponse_Start(int unused, int linkNetID, FieldSystem *fieldSystem);
void UndergroundTalk_RequestLinkTalkStateUpdateServer(int unused0, int unused1, void *data, void *unused3);
void UndergroundTalkResponse_RequestLinkTalkStateUpdateServer(int unused0, int unused1, void *data, void *unused3);
void UndergroundTalkResponse_HandleLinkTalkStateUpdateServer(int unused0, int size, void *data, void *unused3);
void UndergroundTalk_HandleLinkTalkStateUpdateServer(int unused0, int size, void *data, void *unused3);
int CommPacketSizeOf_TalkStateChangeRequest(void);
void UndergroundTalk_SendGiftServer(int unused0, int unused1, void *data, void *unused3);
void UndergroundTalkResponse_ReceiveGiftOffer(int unused0, int unused1, void *data, void *unused3);
int CommPacketSizeOf_Gift(void);
void UndergroundTalk_SendTalkMessageServer(int unused0, int unused1, void *data, void *unused3);
void UndergroundTalk_ReceiveTalkMessage(int unused0, int unused1, void *data, void *unused3);
int CommPacketSizeOf_TalkMessage(void);
void UndergroundTalk_ExitConversation(void);

#endif // POKEPLATINUM_UNDERGROUND_PLAYER_TALK_H
