#include "macros/scrcmd.inc"
#include "res/text/bank/jubilife_tv_3f_group_ranking_room.h"


    ScriptEntry JubilifeTV3FGroupRankingRoom_RecordMachinePokemon
    ScriptEntry JubilifeTV3FGroupRankingRoom_RecordMachineBattles
    ScriptEntry JubilifeTV3FGroupRankingRoom_RecordMachineContests
    ScriptEntry JubilifeTV3FGroupRankingRoom_Youngster
    ScriptEntry JubilifeTV3FGroupRankingRoom_BattleGirl
    ScriptEntry JubilifeTV3FGroupRankingRoom_Worker
    ScriptEntryEnd

JubilifeTV3FGroupRankingRoom_RecordMachinePokemon:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ShowRecordList 3
    ReleaseAll
    End

JubilifeTV3FGroupRankingRoom_RecordMachineBattles:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ShowRecordList 4
    ReleaseAll
    End

JubilifeTV3FGroupRankingRoom_RecordMachineContests:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ShowRecordList 5
    ReleaseAll
    End

JubilifeTV3FGroupRankingRoom_Youngster:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeTV3FGroupRankingRoom_Text_YouCanSeeTheRankingsOfPeopleInYourGroupHere
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeTV3FGroupRankingRoom_BattleGirl:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeTV3FGroupRankingRoom_Text_TheseRankingsAreNifty
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeTV3FGroupRankingRoom_Worker:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeTV3FGroupRankingRoom_Text_SorryImStillFineTuningThisThingyHere
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
