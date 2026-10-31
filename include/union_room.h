#ifndef POKEPLATINUM_UNION_ROOM_H
#define POKEPLATINUM_UNION_ROOM_H

#include <nitro/math.h>
#include <nitro/wm.h>

#include "field/field_system_decl.h"

#include "easy_chat_sentence.h"
#include "easy_chat_words.h"
#include "savedata.h"
#include "string_template.h"
#include "sys_task_manager.h"
#include "trainer_case.h"
#include "trainer_info.h"

typedef struct UnionRoomManager UnionRoomManager;

typedef void (*UnionRoomTask)(UnionRoomManager *);

/**
 * @brief The union room's session: the connection state machine, the peer protocol and the
 * data exchanged with the other players in the room.
 */
struct UnionRoomManager {
    FieldSystem *fieldSystem;
    SaveData *saveData;
    TrainerInfo *trainerInfo;
    SysTask *sysTask;
    UnionRoomTask task;
    int timer;
    u32 connectionID;
    u32 connectState;
    int pendingConnection;
    int unused_24;
    int unused_28;
    int unused_2C;
    u32 peerActivity;
    u32 proposedActivity;
    u32 unused_38;
    BOOL answerDeclined;
    u32 activityAnswer;
    BOOL chatEnded;
    u16 unused_48[10][2];
    u16 unused_70[40][2];
    WMbssDesc *bssDesc[16];
    MATHRandContext32 rand;
    int unused_168;
    int unused_16C;
    int unused_170;
    u16 unused_174;
    u8 partySelectionResults[2];
    EasyChatSentence pendingSentence;
    BOOL sentencePending;
    TrainerCase *trainerCase;
    TrainerCase *receivedTrainerCases[2];
};

/**
 * @brief What a player is doing in the union room, as broadcast to the other players.
 *
 * Stored in #UnionRoomGameInfo and used to pick the message shown when talking
 * to that player.
 */
enum UnionRoomStatus {
    UR_STATUS_NONE = 0,
    UR_STATUS_DRAWING,
    UR_STATUS_MIXING_RECORDS,
    UR_STATUS_UNK_03,
    UR_STATUS_BUSY,
    UR_STATUS_SHOWING_TRAINER_CASE,
    UR_STATUS_BATTLING,
    UR_STATUS_TRADING,
    UR_STATUS_UNK_08,
    UR_STATUS_UNK_09,
    UR_STATUS_UNK_10,
    UR_STATUS_UNK_11,
    UR_STATUS_UNK_12,
    UR_STATUS_SPIN_TRADING,
};

/**
 * @brief The activity a player proposes to another player.
 *
 * Sent with #UnionRoom_SendActivity and echoed back by the player that receives
 * the proposal when they accept it.
 */
enum UnionRoomActivity {
    UR_ACTIVITY_NONE = 0,
    UR_ACTIVITY_SHOW_TRAINER_CASE,
    UR_ACTIVITY_BATTLE,
    UR_ACTIVITY_TRADE,
    UR_ACTIVITY_DRAW,
    UR_ACTIVITY_MIX_RECORDS,
    UR_ACTIVITY_SPIN_TRADE,
    UR_ACTIVITY_DECLINED,
};

/**
 * @brief Which message #UnionRoom_SendActivity sends.
 */
enum UnionRoomActivitySendMode {
    UR_ACTIVITY_SEND_PROPOSAL = 0,
    UR_ACTIVITY_SEND_ANSWER,
};

/**
 * @brief What the player being talked to is currently doing.
 *
 * Returned by #UnionRoom_GetInteractionType; the caller picks the conversation
 * that matches the result.
 */
enum UnionRoomInteraction {
    UR_INTERACTION_TALK = 1,
    UR_INTERACTION_JOIN_DRAW,
    UR_INTERACTION_JOIN_MIX_RECORDS,
    UR_INTERACTION_JOIN_SPIN_TRADE,
    UR_INTERACTION_BUSY,
};

/**
 * @brief The result of the connection attempt started by #UnionRoom_StartInteraction.
 *
 * Polled by the union room scripts through the script commands that wrap
 * #UnionRoom_GetConnectState.
 */
enum UnionRoomConnectState {
    UR_CONNECT_STATE_NONE = 0,
    UR_CONNECT_STATE_CONNECTED,
    UR_CONNECT_STATE_FAILED,
    UR_CONNECT_STATE_PEER_CONTACTED,
};

/**
 * @brief The connection that #UnionRoom_StartInteraction asked for.
 */
enum UnionRoomPendingConnection {
    UR_PENDING_CONNECTION_NONE = 0,
    UR_PENDING_CONNECTION_UNION,
    UR_PENDING_CONNECTION_DRAW,
};

/**
 * @brief The choice each player makes in the party menu before a union room battle.
 */
enum UnionRoomPartySelectionResult {
    UR_PARTY_SELECTION_CONFIRMED = 1,
    UR_PARTY_SELECTION_CANCELLED,
};

/**
 * @brief Which player cancelled the party menu before a union room battle.
 *
 * Returned by #UnionRoom_GetPartySelectionCancelState.
 */
enum UnionRoomPartySelectionCancelState {
    UR_PARTY_SELECTION_NOT_CANCELLED = 0,
    UR_PARTY_SELECTION_CANCELLED_BY_LOCAL,
    UR_PARTY_SELECTION_CANCELLED_BY_REMOTE,
};

/**
 * @brief The number of players in one of the union room player groups.
 */
#define UNION_ROOM_GROUP_SIZE 4

/**
 * @brief The first index of each of the ten groups of four union room players.
 *
 * A player's index is its map-object local ID minus one: `unk_0205C22C.c` pairs its array
 * slot `i` with the map object whose local ID is `i + 1`, and `UnionRoom_GetGroupFromPlayerIndex`
 * matches an already decremented local ID against `[base, base + 4)`. `base + member` for
 * `member` in 0..3 therefore names the four players of a group, and the ten groups cover the
 * map objects whose local IDs are 11..50.
 */
extern const u16 gUnionRoomGroupPlayerIndices[];

UnionRoomManager *FieldSystem_InitUnionRoom(FieldSystem *fieldSystem);
void FieldSystem_ExitUnionRoom(FieldSystem *fieldSystem);
FieldSystem *UnionRoom_GetFieldSystem(UnionRoomManager *manager);
WMBssDesc *UnionRoom_GetBssDesc(UnionRoomManager *manager, int index);
enum UnionRoomInteraction UnionRoom_GetInteractionType(UnionRoomManager *manager, int localID);
enum UnionRoomInteraction UnionRoom_StartInteraction(UnionRoomManager *manager, int localID, enum UnionRoomInteraction interaction);
enum UnionRoomConnectState UnionRoom_GetConnectState(UnionRoomManager *manager);
enum UnionRoomActivity UnionRoom_GetActivityAnswer(UnionRoomManager *manager);
enum UnionRoomActivity UnionRoom_GetActivityProposal(UnionRoomManager *manager);
void UnionRoom_SendActivity(UnionRoomManager *manager, enum UnionRoomActivitySendMode mode, u32 value);
void sub_0205B988(int param0, int param1, void *param2, void *param3);
void sub_0205B98C(int param0, int param1, void *param2, void *param3);
void UnionRoom_RecvRestart(int unused0, int unused1, void *unused2, void *fieldSystemPtr);
void UnionRoom_RecvActivityProposal(int unused0, int unused1, void *data, void *fieldSystemPtr);
void UnionRoom_RecvActivityAnswer(int unused0, int unused1, void *data, void *fieldSystemPtr);
void UnionRoom_RecvChatEnded(int unused0, int unused1, void *unused2, void *fieldSystemPtr);
BOOL UnionRoom_HasChatEnded(UnionRoomManager *manager);
int UnionRoom_SendChatEnded(UnionRoomManager *manager, int result);
void UnionRoom_RecvTrainerCase(int netId, int unused1, void *data, void *fieldSystemPtr);
u8 *UnionRoom_GetTrainerCaseRecvBuffer(int netId, void *fieldSystemPtr, int unused2);
void UnionRoom_RecvPartySelectionResult(int netId, int unused1, void *data, void *fieldSystemPtr);
u16 UnionRoom_GetPartySelectionCancelState(UnionRoomManager *manager);
void UnionRoom_SendPartySelectionResult(enum UnionRoomPartySelectionResult result);
int UnionRoom_GetTrainerCasePlayerMessage(StringTemplate *strTemplate);
int UnionRoom_GetMessage(UnionRoomManager *manager, int localID, int msgType, StringTemplate *strTemplate);
u8 UnionRoom_GetCommInfoGameCode(void);
void UnionRoom_SetStatus(enum UnionRoomStatus status);
int UnionRoom_GetTealaMessage(UnionRoomManager *manager, StringTemplate *strTemplate);
void UnionRoom_SetPendingSentence(UnionRoomManager *manager, EasyChatSentence *sentence);
EasyChatSentence *UnionRoom_TakePendingSentence(UnionRoomManager *manager);
void UnionRoom_DoGreeting(StringTemplate *strTemplate, BOOL useConnectedPlayer, int localID, TrainerInfo *playerTrainerInfo, UnlockedEasyChatWords *unlockedWords);
void UnionRoom_SetSentence(EasyChatSentence *sentence);
void UnionRoom_ResetActivity(UnionRoomManager *manager);
void *UnionRoom_GetTrainerCase(UnionRoomManager *manager);
void UnionRoom_FreeTrainerCases(UnionRoomManager *manager);
void UnionRoom_SendTrainerCase(UnionRoomManager *manager);

#endif // POKEPLATINUM_UNION_ROOM_H
