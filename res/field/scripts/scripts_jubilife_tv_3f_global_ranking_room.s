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
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    StartRankingsMachine 0
    ReleaseAll
    End

JubilifeTV3FGlobalRankingRoom_RecordMachineBattles:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    StartRankingsMachine 1
    ReleaseAll
    End

JubilifeTV3FGlobalRankingRoom_RecordMachineContests:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    StartRankingsMachine 2
    ReleaseAll
    End

JubilifeTV3FGlobalRankingRoom_AceTrainerF:
    NPCMessage JubilifeTV3FGlobalRankingRoom_Text_SomeoneBrokeMyPokemonCatchingRecord
    End

JubilifeTV3FGlobalRankingRoom_Collector:
    NPCMessage JubilifeTV3FGlobalRankingRoom_Text_IBetItdFeelGreatIfICouldBeNumberOneHere
    End

JubilifeTV3FGlobalRankingRoom_Fisherman:
    NPCMessage JubilifeTV3FGlobalRankingRoom_Text_ImTryingForTheWorldRecordAtPokemonFishing
    End

JubilifeTV3FGlobalRankingRoom_Worker:
    NPCMessage JubilifeTV3FGlobalRankingRoom_Text_SorryImStillFineTuningThisThingyHere
    End
