#ifndef POKEPLATINUM_UNDERGROUND_PLAYER_H
#define POKEPLATINUM_UNDERGROUND_PLAYER_H

typedef struct TalkEvent {
    u8 result;
    u8 netID;
    u8 talkTargetNetID;
} TalkEvent;

enum TalkResult {
    TALK_RESULT_SUCCESS = 1,
    TALK_RESULT_FAIL,
    TALK_RESULT_MINING = 4,
};

enum FlagEventType {
    FLAG_EVENT_DISCARD = 0,
    FLAG_EVENT_REGISTER = 3,
    FLAG_EVENT_STEAL = 5,
    FLAG_EVENT_TALK = 11,
    FLAG_EVENT_BURIED_OBJECT,
};

void UndergroundPlayer_DeleteAllPlayers(void);
void UndergroundPlayer_ProcessOpenMenuRequest(int netID, int unused1, void *unused2, void *unused3);
void UndergroundPlayer_ProcessOpenMenuEvent(int unused0, int unused1, void *data, void *unused3);
void UndergroundPlayer_ProcessTalkEvent(int unused0, int unused1, void *data, void *unused3);
int CommPacketSizeOf_FlagEvent(void);
void UndergroundPlayer_ProcessFlagEventType(int netID, int unused1, void *data, void *unused3);
BOOL UndergroundPlayer_TalkHeldFlagCheck(int netID, int targetNetID, BOOL blockInteraction);
BOOL UndergroundPlayer_BuriedObjectHeldFlagCheck(int netID);
void UndergroundPlayer_ProcessFlagEvent(int unused0, int unused1, void *data, void *unused3);
void UndergroundPlayer_ClearHeldFlagInfo(void);
u8 *ov23_0224AAA0(int unused0, void *unused1, int unused2);
void UndergroundPlayer_SendHeldFlagOwnerInfo(void);
int CommPacketSizeOf_TrainerInfo(void);
void UndergroundPlayer_ProcessHeldFlagOwnerInfo(int flagOwnerNetID, int unused1, void *data, void *unused3);
void UndergroundPlayer_ProcessHeldFlagOwnerInfoServer(int unused0, int unused1, void *data, void *unused3);
int CommPacketSizeOf_HeldFlagInfo(void);
void UndergroundPlayer_ProcessHeldFlagOwnerInfoAck(int unused0, int unused1, void *data, void *unused3);
BOOL UndergroundPlayer_HaveLinksReceivedHeldFlagData(void);
void ov23_0224AC4C(void);
BOOL UndergroundPlayer_IsAffectedByTrap(int netID);
void ov23_0224ACE8(int netID, int unused1, void *unused2, void *unused3);
void ov23_0224ACF8(int unused0, int unused1, void *data, void *unused3);
int UndergroundPlayer_GetXPos(int netID);
int UndergroundPlayer_GetZPos(int netID);
void UndergroundPlayer_UpdateStatus(int netID, int status);
void UndergroundPlayer_RevertStatusToNormal(int netID);
void UndergroundPlayer_MoveToFromSecretBaseServer(int netID, int x, int z, int dir);
void UndergroundPlayer_MoveToFromSecretBaseClient(int netID, int x, int z, int dir);
BOOL UndergroundPlayer_DeleteHeldFlagDataClient(int netID);
BOOL UndergroundPlayer_IsHoldingFlag(int netID);
BOOL UndergroundPlayer_TryTakeFlagFromBase(int flagTakerNetID, int flagOwnerNetID);
void UndergroundPlayer_StopDisplayingEmote(int netID);
void UndergroundPlayer_HandleEmoteDisplay(int netID);
void UndergroundPlayer_AddExclamationEmote(int netID);
void UndergroundPlayer_AddOKEmote(int netID);
void UndergroundPlayer_RemoveEmote(int netID);

#endif // POKEPLATINUM_UNDERGROUND_PLAYER_H
