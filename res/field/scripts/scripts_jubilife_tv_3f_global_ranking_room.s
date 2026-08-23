#include "macros/scrcmd.inc"
#include "res/text/bank/jubilife_tv_3f_global_ranking_room.h"


    ScriptEntry JubilifeTV3FGlobalRankingRoom_RecordMachinePokemon
    ScriptEntry JubilifeTV3FGlobalRankingRoom_RecordMachineBattles
    ScriptEntry JubilifeTV3FGlobalRankingRoom_RecordMachineContests
    ScriptEntry JubilifeTV3FGlobalRankingRoom_AceTrainerF
    ScriptEntry JubilifeTV3FGlobalRankingRoom_Collector
    ScriptEntry JubilifeTV3FGlobalRankingRoom_Fisherman
    ScriptEntry JubilifeTV3FGlobalRankingRoom_Worker
    ScriptEntryEnd

JubilifeTV3FGlobalRankingRoom_RecordMachinePokemon:
    PlaySE SE_CONFIRM_sseq_3
    LockAll
    StartRankingsMachine 0
    ReleaseAll
    End

JubilifeTV3FGlobalRankingRoom_RecordMachineBattles:
    PlaySE SE_CONFIRM_sseq_3
    LockAll
    StartRankingsMachine 1
    ReleaseAll
    End

JubilifeTV3FGlobalRankingRoom_RecordMachineContests:
    PlaySE SE_CONFIRM_sseq_3
    LockAll
    StartRankingsMachine 2
    ReleaseAll
    End

JubilifeTV3FGlobalRankingRoom_AceTrainerF:
    NPCMessage JubilifeTV3FGlobalRankingRoom_Text_SomeoneBrokeMyCatchingRecord
    End

JubilifeTV3FGlobalRankingRoom_Collector:
    NPCMessage JubilifeTV3FGlobalRankingRoom_Text_NumberOneWouldFeelGreat
    End

JubilifeTV3FGlobalRankingRoom_Fisherman:
    NPCMessage JubilifeTV3FGlobalRankingRoom_Text_ImTryingForRecordAtFishing
    End

JubilifeTV3FGlobalRankingRoom_Worker:
    NPCMessage JubilifeTV3FGlobalRankingRoom_Text_ImStillFineTuningThisThingy
    End
