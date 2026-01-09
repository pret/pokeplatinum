#include "overlay023/underground_player.h"

#include <nitro.h>
#include <string.h>

#include "generated/trainer_score_events.h"

#include "struct_defs/struct_02057B48.h"
#include "struct_defs/underground_record.h"

#include "field/field_system.h"
#include "overlay005/ov5_021F50BC.h"
#include "overlay005/ov5_021F5284.h"
#include "overlay005/ov5_021F5428.h"
#include "overlay005/ov5_021F55CC.h"
#include "overlay023/ov23_02241F74.h"
#include "overlay023/secret_bases.h"
#include "overlay023/underground_menu.h"
#include "overlay023/underground_player_status.h"
#include "overlay023/underground_player_talk.h"
#include "overlay023/underground_text_printer.h"

#include "comm_player_manager.h"
#include "communication_information.h"
#include "communication_system.h"
#include "field_system.h"
#include "game_records.h"
#include "heap.h"
#include "map_object_move.h"
#include "overworld_anim_manager.h"
#include "player_avatar.h"
#include "sound.h"
#include "sound_playback.h"
#include "string_gf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system_flags.h"
#include "system_vars.h"
#include "trainer_info.h"
#include "tv_episode_segment.h"
#include "unk_0202854C.h"
#include "vars_flags.h"

#include "res/text/bank/underground_capture_flag.h"
#include "res/text/bank/underground_common.h"

typedef struct OpenMenuEvent {
    u8 result;
    u8 netID;
} OpenMenuEvent;

typedef struct FlagEvent {
    u8 type;
    u8 netID; // netID of player initiating the event
    u8 targetNetID; // netID of player the initiator interacted with, if applicable
} FlagEvent;

typedef struct FreezeContext {
    int timer;
    int netID;
} FreezeContext;

enum OpenMenuResult {
    MENU_RESULT_SUCCESS = 1,
    MENU_RESULT_FAIL,
    MENU_RESULT_HOLDING_FLAG,
};

void UndergroundPlayer_DeleteAllPlayers(void)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();

    if (commPlayerMan == NULL) {
        return;
    }

    for (int netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        CommPlayer_Destroy(netID, FALSE, FALSE);
        CommPlayerMan_RemovePlayerFromHole(netID);
    }

    commPlayerMan->isResetting = TRUE;
}

static void UndergroundPlayer_ProcessRegisteredFlag(int netID)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();

    if (netID == CommSys_CurNetId()) {
        if (commPlayerMan->heldFlagOwnerInfo[netID] != NULL) {
            GameRecords_IncrementTrainerScore(SaveData_GetGameRecords(commPlayerMan->fieldSystem->saveData), TRAINER_SCORE_EVENT_UNDERGROUND_CAPTURE_FLAG);

            if (commPlayerMan->registeredFlagOwnerInfoUnused[MAX_CAPTURED_FLAG_RECORDS - 1]) {
                Heap_Free(commPlayerMan->registeredFlagOwnerInfoUnused[MAX_CAPTURED_FLAG_RECORDS - 1]);
            }

            for (int i = MAX_CAPTURED_FLAG_RECORDS - 1; i >= 1; i--) {
                commPlayerMan->registeredFlagOwnerInfoUnused[i] = commPlayerMan->registeredFlagOwnerInfoUnused[i - 1];
            }

            commPlayerMan->registeredFlagOwnerInfoUnused[0] = commPlayerMan->heldFlagOwnerInfo[netID];
            Underground_StoreRegisteredFlagOwnerInfo(SaveData_GetUnderground(FieldSystem_GetSaveData(commPlayerMan->fieldSystem)), commPlayerMan->heldFlagOwnerInfo[netID]);

            commPlayerMan->heldFlagOwnerInfo[netID] = NULL;
            commPlayerMan->heldFlagInfo[netID].netID = NETID_NONE;
        }
    } else {
        UndergroundPlayer_DeleteHeldFlagDataClient(netID);
    }
}

static BOOL UndergroundPlayer_TryTransferFlag(int flagReceiverNetID, int flagHolderNetID)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();

    if (commPlayerMan->heldFlagOwnerInfo[flagReceiverNetID] == NULL && commPlayerMan->heldFlagOwnerInfo[flagHolderNetID] != NULL) {
        commPlayerMan->heldFlagOwnerInfo[flagReceiverNetID] = commPlayerMan->heldFlagOwnerInfo[flagHolderNetID];
        commPlayerMan->heldFlagOwnerInfo[flagHolderNetID] = NULL;
        commPlayerMan->emote[flagReceiverNetID] = EMOTE_FLAG;
        commPlayerMan->emote[flagHolderNetID] = EMOTE_NONE;
        commPlayerMan->heldFlagInfo[flagReceiverNetID].netID = flagReceiverNetID;
        commPlayerMan->heldFlagInfo[flagHolderNetID].netID = NETID_NONE;
        TrainerInfo_Copy(commPlayerMan->heldFlagOwnerInfo[flagReceiverNetID], (TrainerInfo *)&commPlayerMan->heldFlagInfo[flagReceiverNetID].ownerInfo);
        return TRUE;
    }

    return FALSE;
}

static void UndergroundPlayer_ResumeFieldSystemCallback(int unused)
{
    CommPlayerMan_ResumeFieldSystem();
}

static void UndergroundPlayer_ResumeFieldSystemCallback2(int unused)
{
    CommPlayerMan_ResumeFieldSystem();
}

static void UndergroundPlayer_TalkWithFlagTextCallback(int unused)
{
    CommPlayerMan_ResumeFieldSystemWithContextBit(PAUSE_BIT_TALK_WITH_FLAG);
}

static void UndergroundPlayer_BuriedObjectWithFlagTextCallback(int unused)
{
    CommPlayerMan_ResumeFieldSystemWithContextBit(PAUSE_BIT_BURIED_OBJECT_WITH_FLAG);
}

static void UndergroundPlayer_StealFlagTextCallback(int unused)
{
    CommPlayerMan_ResumeFieldSystemWithContextBit(PAUSE_BIT_STOLE_FLAG);
}

static void UndergroundPlayer_CloseMenuCallback(int unused)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();

    if (commPlayerMan) {
        commPlayerMan->menuOpen = FALSE;
    }
}

void UndergroundPlayer_ProcessOpenMenuRequest(int netID, int unused1, void *unused2, void *unused3)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();

    OpenMenuEvent event;
    event.result = MENU_RESULT_FAIL;
    event.netID = netID;

    if (commPlayerMan->movementEnabled[netID] && !UndergroundPlayer_IsAffectedByTrap(netID)) {
        if (UndergroundPlayer_IsHoldingFlag(netID)) {
            event.result = MENU_RESULT_HOLDING_FLAG;
        } else {
            event.result = MENU_RESULT_SUCCESS;
        }
    }

    if (CommSys_SendDataServer(29, &event, sizeof(OpenMenuEvent))) {
        if (event.result != MENU_RESULT_FAIL) {
            CommPlayerMan_SetMovementEnabled(netID, FALSE);
        }
    }
}

void UndergroundPlayer_ProcessOpenMenuEvent(int unused0, int unused1, void *data, void *unused3)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();
    OpenMenuEvent *event = data;

    if (!CommSys_IsSendingMovementData()) {
        return;
    }

    if (event->result == MENU_RESULT_SUCCESS && event->netID == CommSys_CurNetId()) {
        if (!commPlayerMan->menuOpen) {
            commPlayerMan->menuOpen = TRUE;

            UndergroundMenu_Start(UndergroundPlayer_CloseMenuCallback, commPlayerMan->fieldSystem);
        }
    } else if (event->result == MENU_RESULT_HOLDING_FLAG && event->netID == CommSys_CurNetId()) {
        if (!commPlayerMan->menuOpen) {
            commPlayerMan->menuOpen = TRUE;
            UndergroundMenu_StartHoldingFlag(UndergroundPlayer_CloseMenuCallback, commPlayerMan->fieldSystem);
        }
    }
}

void UndergroundPlayer_ProcessTalkEvent(int unused0, int unused1, void *data, void *unused3)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();
    TalkEvent *event = data;
    VarsFlags *varsFlags = SaveData_GetVarsFlags(commPlayerMan->fieldSystem->saveData);

    GF_ASSERT(event->netID < MAX_CONNECTED_PLAYERS);

    if (event->result == TALK_RESULT_MINING && event->netID == CommSys_CurNetId()) {
        CommPlayerMan_PauseFieldSystem();
        UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), UndergroundCommon_Text_ImDiggingRightNow, TRUE, UndergroundPlayer_ResumeFieldSystemCallback);
    }

    if (event->result == TALK_RESULT_SUCCESS) {
        CommPlayer_LookTowards(event->netID, event->talkTargetNetID);
    }

    if (event->result == TALK_RESULT_SUCCESS && event->netID == CommSys_CurNetId()) {
        UndergroundTalk_Start(event->talkTargetNetID, UndergroundPlayer_CloseMenuCallback, commPlayerMan->fieldSystem);

        commPlayerMan->dummy.field0 = event->netID;
        commPlayerMan->dummy.field1 = event->talkTargetNetID;
        commPlayerMan->dummy.field2 = 0;
        commPlayerMan->dummy.field3 = 0;

        if (commPlayerMan->talkCount[event->talkTargetNetID] == 0) {
            UndergroundRecord_IncrementPeopleMet(SaveData_GetUndergroundRecord(FieldSystem_GetSaveData(commPlayerMan->fieldSystem)), event->talkTargetNetID);
            SystemVars_SetSpiritombCounter(varsFlags, SystemVars_GetSpiritombCounter(varsFlags) + 1);
            SystemVars_SetUndergroundTalkCounter(varsFlags, SystemVars_GetUndergroundTalkCounter(varsFlags) + 1);

            commPlayerMan->talkCount[event->talkTargetNetID]++;
        }
    }

    if (event->result == TALK_RESULT_SUCCESS && event->talkTargetNetID == CommSys_CurNetId()) {
        UndergroundTalkResponse_Start(event->talkTargetNetID, event->netID, commPlayerMan->fieldSystem);
    }

    if (event->result == TALK_RESULT_FAIL && event->netID == CommSys_CurNetId()) {
        CommPlayerMan_PauseFieldSystem();
        UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), UndergroundCommon_Text_PersonSeemsOccupied, TRUE, UndergroundPlayer_ResumeFieldSystemCallback);
    }

    if (event->result == TALK_RESULT_SUCCESS) {
        ov23_0224300C(event->netID, event->talkTargetNetID);
    }
}

int CommPacketSizeOf_FlagEvent(void)
{
    return sizeof(FlagEvent);
}

void UndergroundPlayer_ProcessFlagEventType(int netID, int unused1, void *data, void *unused3)
{
    u8 *flagEventType = data;
    FlagEvent event;

    event.netID = netID;

    switch (*flagEventType) {
    case FLAG_EVENT_DISCARD:
        event.type = FLAG_EVENT_DISCARD;
        CommSys_SendDataFixedSizeServer(85, &event);
        break;
    case FLAG_EVENT_REGISTER:
        event.type = FLAG_EVENT_REGISTER;
        CommSys_SendDataFixedSizeServer(85, &event);
        CommPlayerMan_SetMovementEnabled(netID, FALSE);
        break;
    }
}

static void UndergroundPlayer_LostFlagTextCallback(int unused)
{
    UndergroundPlayer_RemoveEmote(CommSys_CurNetId());
    UndergroundTextPrinter_EraseMessageBoxWindow(CommManUnderground_GetCaptureFlagTextPrinter());

    CommPlayerMan_ResumeFieldSystemWithContextBit(PAUSE_BIT_LOST_FLAG);
}

static void UndergroundPlayer_UnfreezeCountdown(SysTask *sysTask, void *data)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();
    FreezeContext *ctx = data;
    u8 netID = ctx->netID;
    u8 done = FALSE;

    if (!CommSys_IsPlayerConnected(netID)) {
        Heap_Free(ctx);
        SysTask_Done(sysTask);
        return;
    } else {
        ctx->timer++;

        if (ctx->timer > 60) {
            done = TRUE;
        }
    }

    if (done) {
        commPlayerMan->movementEnabled2[netID] = TRUE;
        Heap_Free(ctx);
        SysTask_Done(sysTask);
    }
}

static void UndergroundPlayer_Freeze2Seconds(int netID)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();
    FreezeContext *ctx = Heap_Alloc(HEAP_ID_FIELD2, sizeof(FreezeContext));

    ctx->timer = 0;
    ctx->netID = netID;
    commPlayerMan->movementEnabled2[netID] = FALSE;

    SysTask_Start(UndergroundPlayer_UnfreezeCountdown, ctx, 100);
    CommPlayerMan_SetMovementEnabled(netID, FALSE);
}

BOOL UndergroundPlayer_TalkHeldFlagCheck(int netID, int targetNetID, BOOL blockInteraction)
{
    FlagEvent event;

    if (blockInteraction & 0x1) {
        event.type = FLAG_EVENT_TALK;
    } else if (UndergroundPlayer_IsHoldingFlag(netID)) {
        event.type = FLAG_EVENT_TALK;
    } else {
        if (targetNetID == NETID_NONE) {
            return FALSE;
        } else if (!UndergroundPlayer_IsHoldingFlag(targetNetID)) {
            return FALSE;
        } else {
            event.type = FLAG_EVENT_STEAL;
            UndergroundPlayer_Freeze2Seconds(targetNetID);
        }
    }

    event.netID = netID;
    event.targetNetID = targetNetID;

    CommPlayerMan_SetMovementEnabled(netID, FALSE);
    CommSys_SendDataFixedSizeServer(85, &event);

    return TRUE;
}

BOOL UndergroundPlayer_BuriedObjectHeldFlagCheck(int netID)
{
    FlagEvent event;

    if (UndergroundPlayer_IsHoldingFlag(netID)) {
        event.type = FLAG_EVENT_BURIED_OBJECT;
    } else {
        return FALSE;
    }

    event.netID = netID;
    CommSys_SendDataFixedSizeServer(85, &event);

    return TRUE;
}

static void UndergroundPlayer_HandleCurrentPlayerLosingFlag(FlagEvent *param0, BOOL takerIsNotFlagOwner, UndergroundRecord *unused)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();

    ov23_0224321C();

    sub_02057FC4(FALSE);
    CommPlayerMan_PauseFieldSystemWithContextBit(PAUSE_BIT_LOST_FLAG);

    UndergroundTextPrinter_SetPlayerNameIndex0(CommManUnderground_GetCaptureFlagTextPrinter(), CommInfo_TrainerInfo(param0->netID));

    if (takerIsNotFlagOwner) {
        commPlayerMan->emote[CommSys_CurNetId()] = EMOTE_NONE;
        UndergroundPlayer_RemoveEmote(CommSys_CurNetId());
        UndergroundPlayer_AddExclamationEmote(CommSys_CurNetId());
        UndergroundTextPrinter_PrintText(CommManUnderground_GetCaptureFlagTextPrinter(), UndergroundCaptureFlag_Text_PlayerTookAwayYourFlag, TRUE, UndergroundPlayer_LostFlagTextCallback);
    } else {
        UndergroundTextPrinter_PrintText(CommManUnderground_GetCaptureFlagTextPrinter(), UndergroundCaptureFlag_Text_PlayerTookBackTheFlag, TRUE, UndergroundPlayer_LostFlagTextCallback);
    }

    Sound_FadeOutAndPlayBGM(4, SEQ_TANKOU, 60, 0, 0xFF, NULL);
    Sound_PlayEffect(SEQ_SE_DP_CARD10);
}

void UndergroundPlayer_ProcessFlagEvent(int unused0, int unused1, void *data, void *unused3)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();
    FlagEvent *event = data;
    UndergroundRecord *undergroundRecord = SaveData_GetUndergroundRecord(FieldSystem_GetSaveData(commPlayerMan->fieldSystem));

    switch (event->type) {
    case FLAG_EVENT_DISCARD:
        if (commPlayerMan->heldFlagOwnerInfo[event->netID]) {
            UndergroundPlayer_DeleteHeldFlagDataClient(event->netID);
            UndergroundPlayer_RemoveEmote(event->netID);

            if (event->netID == CommSys_CurNetId()) {
                CommPlayerMan_PauseFieldSystem();
                UndergroundTextPrinter_PrintText(CommManUnderground_GetCaptureFlagTextPrinter(), UndergroundCaptureFlag_Text_DiscardedFlag, TRUE, UndergroundPlayer_ResumeFieldSystemCallback2);
                Sound_FadeOutAndPlayBGM(4, SEQ_TANKOU, 60, 0, 0xFF, NULL);
            }
        }
        break;
    case FLAG_EVENT_STEAL:
        if (CommInfo_TrainerInfo(event->netID) == NULL) {
            UndergroundPlayer_DeleteHeldFlagDataClient(event->targetNetID);
            return;
        }

        if (commPlayerMan->heldFlagOwnerInfo[event->targetNetID] == NULL) {
            if (event->netID == CommSys_CurNetId()) {
                CommPlayerMan_ResumeFieldSystem();
            }

            return;
        }

        if (TrainerInfo_Equals(commPlayerMan->heldFlagOwnerInfo[event->targetNetID], CommInfo_TrainerInfo(event->netID)) == TRUE) {
            UndergroundPlayer_DeleteHeldFlagDataClient(event->targetNetID);

            if (event->netID == CommSys_CurNetId()) {
                UndergroundRecord_IncrementFlagsRecovered(undergroundRecord);
                CommPlayerMan_PauseFieldSystem();
                UndergroundTextPrinter_PrintText(CommManUnderground_GetCaptureFlagTextPrinter(), UndergroundCaptureFlag_Text_YouTookBackTheFlag, TRUE, UndergroundPlayer_ResumeFieldSystemCallback);
                Sound_PlayEffect(SEQ_SE_DP_UG_021);
            } else if (event->targetNetID == CommSys_CurNetId()) {
                UndergroundPlayer_HandleCurrentPlayerLosingFlag(event, FALSE, undergroundRecord);
            }

            SecretBases_QueueTookBackFlagMessage(event->netID);
        } else if (UndergroundPlayer_TryTransferFlag(event->netID, event->targetNetID)) {
            if (event->netID == CommSys_CurNetId()) {
                UndergroundRecord_IncrementFlagsStolen(undergroundRecord);
                CommPlayerMan_PauseFieldSystemWithContextBit(PAUSE_BIT_STOLE_FLAG);
                UndergroundTextPrinter_SetPlayerNameIndex0(CommManUnderground_GetCaptureFlagTextPrinter(), CommInfo_TrainerInfo(event->targetNetID));
                UndergroundTextPrinter_PrintText(CommManUnderground_GetCaptureFlagTextPrinter(), UndergroundCaptureFlag_Text_TookAFlagFromPlayer, TRUE, UndergroundPlayer_StealFlagTextCallback);
                Sound_PlayBGM(SEQ_HATANIGE);
                Sound_PlayEffect(SEQ_SE_DP_UG_021);
            } else if (event->targetNetID == CommSys_CurNetId()) {
                UndergroundPlayer_HandleCurrentPlayerLosingFlag(event, TRUE, undergroundRecord);
            }

            SecretBases_QueueTookFlagMessage(event->netID, event->targetNetID);
        }
        break;
    case FLAG_EVENT_TALK:
        if (event->netID == CommSys_CurNetId()) {
            CommPlayerMan_PauseFieldSystemWithContextBit(PAUSE_BIT_TALK_WITH_FLAG);
            UndergroundTextPrinter_PrintText(CommManUnderground_GetCaptureFlagTextPrinter(), UndergroundCaptureFlag_Text_NoTimeToChat, TRUE, UndergroundPlayer_TalkWithFlagTextCallback);
        }
        break;
    case FLAG_EVENT_BURIED_OBJECT:
        if (event->netID == CommSys_CurNetId()) {
            CommPlayerMan_PauseFieldSystemWithContextBit(PAUSE_BIT_BURIED_OBJECT_WITH_FLAG);
            UndergroundTextPrinter_PrintText(CommManUnderground_GetCaptureFlagTextPrinter(), UndergroundCaptureFlag_Text_SomethingBuriedButHoldingFlag, TRUE, UndergroundPlayer_BuriedObjectWithFlagTextCallback);
        }
        break;
    case FLAG_EVENT_REGISTER:
        commPlayerMan->emote[event->netID] = EMOTE_NONE;
        UndergroundPlayer_RemoveEmote(event->netID);

        if (event->netID == CommSys_CurNetId()) {
            UndergroundRecord *undergroundRecord = SaveData_GetUndergroundRecord(FieldSystem_GetSaveData(commPlayerMan->fieldSystem));
            u8 prevFlagRank = UndergroundRecord_GetFlagRank(undergroundRecord);

            UndergroundRecord_IncrementCapturedFlagCount(undergroundRecord);
            SystemFlag_SetDeliveredStolenFlag(SaveData_GetVarsFlags(commPlayerMan->fieldSystem->saveData));

            if (commPlayerMan->heldFlagOwnerInfo[event->netID]) {
                FieldSystem_SaveTVEpisodeSegment_CaptureTheFlagDigest_TakeFlag(commPlayerMan->fieldSystem, commPlayerMan->heldFlagOwnerInfo[event->netID]);

                if (commPlayerMan->flagsRegisteredInCurrentSession != 0xffff) {
                    commPlayerMan->flagsRegisteredInCurrentSession++;
                }
            }

            CommPlayerMan_PauseFieldSystem();
            Sound_PlayEffect(SEQ_SE_DP_UG_027);

            if (prevFlagRank == UndergroundRecord_GetFlagRank(undergroundRecord)) {
                UndergroundTextPrinter_PrintText(CommManUnderground_GetCaptureFlagTextPrinter(), UndergroundCaptureFlag_Text_ObtainedFlagWasRegistered, TRUE, UndergroundPlayer_ResumeFieldSystemCallback);
            } else {
                CommSys_SendDataFixedSize(96, &prevFlagRank);
            }

            Sound_FadeOutAndPlayBGM(4, SEQ_TANKOU, 60, 0, 0xFF, NULL);
        }

        if (commPlayerMan->heldFlagOwnerInfo[event->netID]) {
            if (TrainerInfo_Equals(commPlayerMan->heldFlagOwnerInfo[event->netID], CommInfo_TrainerInfo(CommSys_CurNetId())) == TRUE) {
                FieldSystem_SaveTVEpisodeSegment_CaptureTheFlagDigest_LoseFlag(commPlayerMan->fieldSystem, CommInfo_TrainerInfo(event->netID));
            }
        }

        UndergroundPlayer_ProcessRegisteredFlag(event->netID);
        break;
    }
}

void UndergroundPlayer_ClearHeldFlagInfo(void)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();

    for (int netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        commPlayerMan->heldFlagInfo[netID].netID = NETID_NONE;
    }
}

u8 *ov23_0224AAA0(int unused0, void *unused1, int unused2)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();
    return (u8 *)&commPlayerMan->heldFlagInfo[MAX_CONNECTED_PLAYERS];
}

void UndergroundPlayer_SendHeldFlagOwnerInfo(void)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();

    commPlayerMan->linksReceivedHeldFlagData = FALSE;

    if (commPlayerMan->heldFlagOwnerInfo[CommSys_CurNetId()]) {
        CommSys_SendDataFixedSize(91, commPlayerMan->heldFlagOwnerInfo[CommSys_CurNetId()]);
    } else {
        TrainerInfo *trainerInfo = TrainerInfo_New(HEAP_ID_COMMUNICATION);
        String *name = String_Init(20, HEAP_ID_COMMUNICATION);

        GF_ASSERT(trainerInfo);
        GF_ASSERT(name);

        TrainerInfo_SetNameFromString(trainerInfo, name);
        CommSys_SendDataFixedSize(91, trainerInfo);
        String_Free(name);
        Heap_Free(trainerInfo);
    }
}

int CommPacketSizeOf_TrainerInfo(void)
{
    return sizeof(TrainerInfo);
}

void UndergroundPlayer_ProcessHeldFlagOwnerInfo(int flagOwnerNetID, int unused1, void *data, void *unused3)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();
    const TrainerInfo *flagOwnerInfo = data;
    u8 buffer = flagOwnerNetID;

    if (commPlayerMan) {
        TrainerInfo_Copy(flagOwnerInfo, (TrainerInfo *)commPlayerMan->heldFlagInfo[flagOwnerNetID].ownerInfo);

        String *name = TrainerInfo_NameNewString(flagOwnerInfo, HEAP_ID_COMMUNICATION);

        if (String_Length(name) != 0) {
            commPlayerMan->heldFlagInfo[flagOwnerNetID].netID = flagOwnerNetID;
        }

        for (int netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
            if (commPlayerMan->heldFlagInfo[netID].netID != NETID_NONE) {
                commPlayerMan->heldFlagInfo[netID].netID = netID;
                CommSys_SendDataHugeServer(92, &commPlayerMan->heldFlagInfo[netID], sizeof(HeldFlagInfo));
            }
        }

        CommSys_SendDataServer(93, &buffer, sizeof(u8));
        String_Free(name);

        commPlayerMan->updatingHeldFlags = TRUE;
    } else {
        GF_ASSERT(FALSE);
    }
}

void UndergroundPlayer_ProcessHeldFlagOwnerInfoServer(int unused0, int unused1, void *data, void *unused3)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();
    HeldFlagInfo *heldFlagInfo = data;

    if (commPlayerMan) {
        int netID = heldFlagInfo->netID;

        if (commPlayerMan->heldFlagOwnerInfo[netID]) {
            Heap_Free(commPlayerMan->heldFlagOwnerInfo[netID]);
        }

        commPlayerMan->heldFlagOwnerInfo[netID] = TrainerInfo_New(HEAP_ID_COMMUNICATION);
        TrainerInfo_Copy((TrainerInfo *)heldFlagInfo->ownerInfo, commPlayerMan->heldFlagOwnerInfo[netID]);
        commPlayerMan->emote[netID] = EMOTE_FLAG;
    }
}

int CommPacketSizeOf_HeldFlagInfo(void)
{
    return sizeof(HeldFlagInfo);
}

void UndergroundPlayer_ProcessHeldFlagOwnerInfoAck(int unused0, int unused1, void *data, void *unused3)
{
    u8 *netID = data;
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();

    if (*netID == CommSys_CurNetId()) {
        commPlayerMan->linksReceivedHeldFlagData = TRUE;
    }

    commPlayerMan->updatingHeldFlags = FALSE;
}

BOOL UndergroundPlayer_HaveLinksReceivedHeldFlagData(void)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();
    return commPlayerMan->linksReceivedHeldFlagData;
}

void ov23_0224AC4C(void)
{
    TrainerInfo *flagOwnerInfo = NULL;
    int netID; // needs to be declared here to match
    int curNetID = CommSys_CurNetId();
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();

    if (commPlayerMan->heldFlagOwnerInfo[curNetID]) {
        flagOwnerInfo = commPlayerMan->heldFlagOwnerInfo[curNetID];
        commPlayerMan->heldFlagOwnerInfo[curNetID] = NULL;
        commPlayerMan->emote[curNetID] = EMOTE_NONE;
        commPlayerMan->heldFlagInfo[curNetID].netID = NETID_NONE;
    }

    for (netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        UndergroundPlayer_DeleteHeldFlagDataClient(netID);
    }

    if (flagOwnerInfo) {
        commPlayerMan->heldFlagOwnerInfo[0] = flagOwnerInfo;
        commPlayerMan->emote[0] = EMOTE_FLAG;

        TrainerInfo_Copy(flagOwnerInfo, (TrainerInfo *)&commPlayerMan->heldFlagInfo[0].ownerInfo);

        commPlayerMan->heldFlagInfo[0].netID = 0;
    }
}

BOOL UndergroundPlayer_IsAffectedByTrap(int netID)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();

    if (commPlayerMan->playerStatuses) {
        return !UndergroundPlayerStatus_IsNormal(UndergroundPlayerStatuses_GetPlayerStatus(commPlayerMan->playerStatuses, netID));
    }

    return FALSE;
}

void ov23_0224ACE8(int netID, int unused1, void *unused2, void *unused3)
{
    u8 data = netID;
    CommSys_SendDataFixedSizeServer(26, &data);
}

void ov23_0224ACF8(int unused0, int unused1, void *data, void *unused3)
{
    u8 *netID = data;
    ov23_02243020(*netID);
}

int UndergroundPlayer_GetXPos(int netID)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();

    if (!commPlayerMan) {
        return 0xffff;
    } else if (CommSys_CurNetId() == netID) {
        return commPlayerMan->playerLocation[netID].x;
    } else if (!sub_02058C40()) {
        return 0xffff;
    }

    return commPlayerMan->playerLocation[netID].x;
}

int UndergroundPlayer_GetZPos(int netID)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();

    if (!commPlayerMan) {
        return 0xffff;
    } else if (CommSys_CurNetId() == netID) {
        return commPlayerMan->playerLocation[netID].z;
    } else if (!sub_02058C40()) {
        return 0xffff;
    }

    return commPlayerMan->playerLocation[netID].z;
}

void UndergroundPlayer_UpdateStatus(int netID, int status)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();
    UndergroundPlayerStatus_Update(UndergroundPlayerStatuses_GetPlayerStatus(commPlayerMan->playerStatuses, netID), status);
}

void UndergroundPlayer_RevertStatusToNormal(int netID)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();
    UndergroundPlayerStatus_Update(UndergroundPlayerStatuses_GetPlayerStatus(commPlayerMan->playerStatuses, netID), PLAYER_STATUS_NORMAL);
}

void UndergroundPlayer_MoveToFromSecretBaseServer(int netID, int x, int z, int dir)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();
    CommPlayerLocation *playerLocation = &commPlayerMan->playerLocationServer[netID];

    playerLocation->x = x + MapObject_GetDxFromDir(dir);
    playerLocation->z = z + MapObject_GetDzFromDir(dir);
    playerLocation->dir = dir;
}

void UndergroundPlayer_MoveToFromSecretBaseClient(int netID, int x, int z, int dir)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();

    if (!commPlayerMan) {
        return;
    }

    CommPlayerLocation *playerLocation = &commPlayerMan->playerLocation[netID];

    if (!commPlayerMan->isResetting) {
        ov5_021F5634(commPlayerMan->fieldSystem, playerLocation->x, 0, playerLocation->z);
    }

    playerLocation->x = x;
    playerLocation->z = z;
    playerLocation->dir = dir;

    if (commPlayerMan->playerAvatar[netID]) {
        sub_0205ECE0(commPlayerMan->playerAvatar[netID], x, z, dir);
    }

    if (!commPlayerMan->isResetting) {
        ov5_021F5634(commPlayerMan->fieldSystem, playerLocation->x, 0, playerLocation->z);
    }

    if (!commPlayerMan->isResetting) {
        UndergroundPlayer_RemoveEmote(netID);
    }
}

BOOL UndergroundPlayer_DeleteHeldFlagDataClient(int netID)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();

    if (commPlayerMan->heldFlagOwnerInfo[netID] != NULL) {
        Heap_Free(commPlayerMan->heldFlagOwnerInfo[netID]);

        commPlayerMan->heldFlagOwnerInfo[netID] = NULL;
        commPlayerMan->emote[netID] = EMOTE_NONE;
        commPlayerMan->heldFlagInfo[netID].netID = NETID_NONE;

        return TRUE;
    }

    return FALSE;
}

BOOL UndergroundPlayer_IsHoldingFlag(int netID)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();

    return commPlayerMan->heldFlagOwnerInfo[netID] != NULL;
}

BOOL UndergroundPlayer_TryTakeFlagFromBase(int flagTakerNetID, int flagOwnerNetID)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();

    if (commPlayerMan->heldFlagOwnerInfo[flagTakerNetID] == NULL) {
        TrainerInfo *trainerInfo = CommInfo_TrainerInfo(flagOwnerNetID);

        if (trainerInfo) {
            commPlayerMan->heldFlagOwnerInfo[flagTakerNetID] = TrainerInfo_New(HEAP_ID_COMMUNICATION);
            TrainerInfo_Copy(trainerInfo, commPlayerMan->heldFlagOwnerInfo[flagTakerNetID]);

            commPlayerMan->emote[flagTakerNetID] = EMOTE_FLAG;
            commPlayerMan->heldFlagInfo[flagTakerNetID].netID = flagTakerNetID;

            TrainerInfo_Copy(trainerInfo, (TrainerInfo *)&commPlayerMan->heldFlagInfo[flagTakerNetID].ownerInfo);

            if (flagOwnerNetID == CommSys_CurNetId()) {
                UndergroundRecord *undergroundRecord = SaveData_GetUndergroundRecord(commPlayerMan->fieldSystem->saveData);
                UndergroundRecord_IncrementTimesFlagTaken(undergroundRecord);
            }

            return TRUE;
        }
    }

    return FALSE;
}

void UndergroundPlayer_StopDisplayingEmote(int netID)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();

    if (commPlayerMan->animManager[netID] != NULL) {
        if (OverworldAnimManager_IsActive(commPlayerMan->animManager[netID])) {
            OverworldAnimManager_Finish(commPlayerMan->animManager[netID]);
        } else {
            GF_ASSERT(FALSE);
        }

        commPlayerMan->animManager[netID] = NULL;
    }
}

void UndergroundPlayer_HandleEmoteDisplay(int netID)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();

    if (!commPlayerMan->isResetting) {
        if (commPlayerMan->playerAvatar[netID]) {
            switch (commPlayerMan->emote[netID]) {
            case EMOTE_OK:
                if (commPlayerMan->animManager[netID] == NULL) {
                    commPlayerMan->animManager[netID] = ov5_021F5488(Player_MapObject(commPlayerMan->playerAvatar[netID]));
                }

                commPlayerMan->emote[netID] = EMOTE_NONE;
                break;
            case EMOTE_EXCLAMATION:
                if (commPlayerMan->animManager[netID] == NULL) {
                    commPlayerMan->animManager[netID] = ov5_021F52E4(Player_MapObject(commPlayerMan->playerAvatar[netID]));
                }
                break;
            case EMOTE_FLAG:
                if (commPlayerMan->animManager[netID] == NULL) {
                    commPlayerMan->animManager[netID] = ov5_021F511C(Player_MapObject(commPlayerMan->playerAvatar[netID]));
                }
                break;
            case EMOTE_NONE:
                UndergroundPlayer_StopDisplayingEmote(netID);
                break;
            }
        }
    }
}

void UndergroundPlayer_AddExclamationEmote(int netID)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();

    if (commPlayerMan->emote[netID] != EMOTE_FLAG) {
        commPlayerMan->emote[netID] = EMOTE_EXCLAMATION;
    }
}

void UndergroundPlayer_AddOKEmote(int netID)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();

    if (commPlayerMan->emote[netID] != EMOTE_FLAG) {
        commPlayerMan->emote[netID] = EMOTE_OK;
    }

    UndergroundPlayer_StopDisplayingEmote(netID);
}

void UndergroundPlayer_RemoveEmote(int netID)
{
    CommPlayerManager *commPlayerMan = CommPlayerMan_Get();

    if (commPlayerMan->emote[netID] != EMOTE_FLAG) {
        commPlayerMan->emote[netID] = EMOTE_NONE;
    }

    UndergroundPlayer_StopDisplayingEmote(netID);
}
