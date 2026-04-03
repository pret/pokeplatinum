#include "macros/scrcmd.inc"
#include "res/text/bank/valor_cavern.h"
#include "res/field/events/events_valor_cavern.h"


    ScriptEntry ValorCavern_OnTransition
    ScriptEntry ValorCavern_OnLoad
    ScriptEntry ValorCavern_Azelf
    ScriptEntry ValorCavern_Saturn
    ScriptEntryEnd

ValorCavern_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_VALOR_CAVERN
    GoToIfUnset FLAG_GALACTIC_LEFT_LAKE_VALOR, ValorCavern_RemoveWarpLakeValorNormal
    GoToIfSet FLAG_GALACTIC_LEFT_LAKE_VALOR, ValorCavern_RemoveWarpLakeValorDrained
    End

ValorCavern_RemoveWarpLakeValorNormal:
    SetWarpEventPos 1, 10, 29
    End

ValorCavern_RemoveWarpLakeValorDrained:
    SetWarpEventPos 0, 10, 29
    End

ValorCavern_OnLoad:
    SetFlag FLAG_FIRST_ARRIVAL_VALOR_CAVERN
    CallIfSet FLAG_MAP_LOCAL, ValorCavern_RemoveAzelf
    GoToIfUnset FLAG_GALACTIC_LEFT_LAKE_VALOR, ValorCavern_RemoveWarpLakeValorNormal
    GoToIfSet FLAG_GALACTIC_LEFT_LAKE_VALOR, ValorCavern_RemoveWarpLakeValorDrained
    End

ValorCavern_RemoveAzelf:
    SetFlag FLAG_AZELF_DISAPPEARED
    RemoveObject LOCALID_AZELF
    ClearFlag FLAG_MAP_LOCAL
    Return

ValorCavern_Azelf:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    PlayCry SPECIES_AZELF
    Message ValorCavern_Text_AzelfCry
    CloseMessage
    SetFlag FLAG_MAP_LOCAL
    StartLegendaryBattle SPECIES_AZELF, 50
    ClearFlag FLAG_MAP_LOCAL
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, ValorCavern_LostBattleAzelf
    CheckDidNotCapture VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, ValorCavern_AzelfDisappeared
    SetFlag FLAG_CAUGHT_AZELF
    ReleaseAll
    End

ValorCavern_AzelfDisappeared:
    Message ValorCavern_Text_AzelfDisappeared
    WaitButton
    CloseMessage
    ReleaseAll
    End

ValorCavern_LostBattleAzelf:
    BlackOutFromBattle
    ReleaseAll
    End

ValorCavern_Saturn:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message ValorCavern_Text_SaturnMissionIsProceeding
    CloseMessage
    FacePlayer
    ApplyMovement LOCALID_SATURN, ValorCavern_Movement_SaturnExclamationMark
    WaitMovement
    WaitTime 30, VAR_RESULT
    Message ValorCavern_Text_SaturnBattleIntro
    CloseMessage
    StartTrainerBattle TRAINER_COMMANDER_SATURN_VALOR_CAVERN
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, ValorCavern_LostBattleCommanderSaturn
    Message ValorCavern_Text_SaturnPostBattle
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    RemoveObject LOCALID_SATURN
    SetFlag FLAG_DEFEATED_COMMANDER_SATURN_VALOR_CAVERN
    SetFlag FLAG_ALT_MUSIC_LAKE_VALOR
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

    .balign 4, 0
ValorCavern_Movement_SaturnExclamationMark:
    EmoteExclamationMark
    EndMovement

ValorCavern_LostBattleCommanderSaturn:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
