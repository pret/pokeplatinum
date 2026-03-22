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
    PlaySE SEQ_SE_CONFIRM
    LockAll
    StartRankingsMachine 3
    ReleaseAll
    End

JubilifeTV3FGroupRankingRoom_RecordMachineBattles:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    StartRankingsMachine 4
    ReleaseAll
    End

JubilifeTV3FGroupRankingRoom_RecordMachineContests:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    StartRankingsMachine 5
    ReleaseAll
    End

JubilifeTV3FGroupRankingRoom_Youngster:
    NPCMessage JubilifeTV3FGroupRankingRoom_Text_YouCanSeeTheRankingsOfPeopleInYourGroupHere
    End

JubilifeTV3FGroupRankingRoom_BattleGirl:
    NPCMessage JubilifeTV3FGroupRankingRoom_Text_TheseRankingsAreNifty
    End

JubilifeTV3FGroupRankingRoom_Worker:
    NPCMessage JubilifeTV3FGroupRankingRoom_Text_SorryImStillFineTuningThisThingyHere
    End

    .balign 4, 0
