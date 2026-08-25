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
    PlaySE SE_CONFIRM_sseq_3
    LockAll
    StartRankingsMachine 3
    ReleaseAll
    End

JubilifeTV3FGroupRankingRoom_RecordMachineBattles:
    PlaySE SE_CONFIRM_sseq_3
    LockAll
    StartRankingsMachine 4
    ReleaseAll
    End

JubilifeTV3FGroupRankingRoom_RecordMachineContests:
    PlaySE SE_CONFIRM_sseq_3
    LockAll
    StartRankingsMachine 5
    ReleaseAll
    End

JubilifeTV3FGroupRankingRoom_Youngster:
    NPCMessage JubilifeTV3FGroupRankingRoom_Text_SeeRankingsInGroupHere
    End

JubilifeTV3FGroupRankingRoom_BattleGirl:
    NPCMessage JubilifeTV3FGroupRankingRoom_Text_TheseRankingsAreNifty
    End

JubilifeTV3FGroupRankingRoom_Worker:
    NPCMessage JubilifeTV3FGroupRankingRoom_Text_ImStillFineTuningThisThingy
    End

    .balign 4, 0
