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
    ScrCmd_1B5 0
    ReleaseAll
    End

JubilifeTV3FGlobalRankingRoom_RecordMachineBattles:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_1B5 1
    ReleaseAll
    End

JubilifeTV3FGlobalRankingRoom_RecordMachineContests:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_1B5 2
    ReleaseAll
    End

JubilifeTV3FGlobalRankingRoom_AceTrainerF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeTV3FGlobalRankingRoom_Text_SomeoneBrokeMyPokemonCatchingRecord
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeTV3FGlobalRankingRoom_Collector:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeTV3FGlobalRankingRoom_Text_IBetItdFeelGreatIfICouldBeNumberOneHere
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeTV3FGlobalRankingRoom_Fisherman:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeTV3FGlobalRankingRoom_Text_ImTryingForTheWorldRecordAtPokemonFishing
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeTV3FGlobalRankingRoom_Worker:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeTV3FGlobalRankingRoom_Text_SorryImStillFineTuningThisThingyHere
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
