#include "macros/scrcmd.inc"
#include "res/text/bank/twinleaf_town_rival_house_2f.h"
#include "res/field/events/events_twinleaf_town_rival_house_2f.h"


    ScriptEntry TwinleafTownRivalHouse2F_RivalNoticesPlayerAndLeaves
    ScriptEntry TwinleafTownRivalHouse2F_Wii
    ScriptEntry TwinleafTownRivalHouse2F_PC
    ScriptEntryEnd

TwinleafTownRivalHouse2F_RivalNoticesPlayerAndLeaves:
    LockAll
    BufferRivalName 0
    Message TwinleafTownRivalHouse2F_Text_IdBetterTakeBagAndJournal
    CloseMessage
    ApplyMovement LOCALID_RIVAL, TwinleafTownRivalHouse2F_Movement_RivalNoticePlayer
    WaitMovement
    SetRivalBGM
    BufferPlayerName 0
    Message TwinleafTownRivalHouse2F_Text_IllBeWaitingOnTheRoad
    CloseMessage
    ApplyMovement LOCALID_RIVAL, TwinleafTownRivalHouse2F_Movement_RivalLeave
    ApplyMovement LOCALID_PLAYER, TwinleafTownRivalHouse2F_Movement_PlayerMoveAwayFromStairs
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject LOCALID_RIVAL
    FadeToDefaultMusic2
    SetFlag FLAG_RIVAL_LEFT_HOME
    SetVar VAR_RIVAL_HOUSE_STATE, 1
    SetVar VAR_TWINLEAF_TOWN_GUITARIST_TRIGGER_STATE, 2
    ReleaseAll
    End

    .balign 4, 0
TwinleafTownRivalHouse2F_Movement_RivalNoticePlayer:
    WalkOnSpotNormalWest
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
TwinleafTownRivalHouse2F_Movement_RivalLeave:
    WalkFastWest 4
    WalkFastNorth
    WalkFastWest 3
    SetInvisible
    EndMovement

    .balign 4, 0
TwinleafTownRivalHouse2F_Movement_PlayerMoveAwayFromStairs:
    Delay8 2
    WalkNormalSouth
    WalkOnSpotNormalNorth
    EndMovement

TwinleafTownRivalHouse2F_Wii:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message TwinleafTownRivalHouse2F_Text_ItsAWii
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

TwinleafTownRivalHouse2F_PC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    BufferPlayerName 0
    Message TwinleafTownRivalHouse2F_Text_PCAdventureRules
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
