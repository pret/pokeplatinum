#include "macros/scrcmd.inc"
#include "res/text/bank/valor_cavern.h"

#define LOCALID_AZELF  0
#define LOCALID_SATURN 1


    ScriptEntry _0012
    ScriptEntry _0042
    ScriptEntry ValorCavern_Azelf
    ScriptEntry ValorCavern_CommanderSaturn
    ScriptEntryEnd

_0012:
    SetFlag FLAG_UNK_0x09E1
    GoToIfUnset FLAG_GALACTIC_LEFT_LAKE_VALOR, ValorCavern_SetWarpEventPosLakeWithGalactic
    GoToIfSet FLAG_GALACTIC_LEFT_LAKE_VALOR, ValorCavern_SetWarpEventPosLakeWithWater
    End

ValorCavern_SetWarpEventPosLakeWithGalactic:
    SetWarpEventPos 1, 10, 29
    End

ValorCavern_SetWarpEventPosLakeWithWater:
    SetWarpEventPos 0, 10, 29
    End

_0042:
    SetFlag FLAG_UNK_0x09E1
    CallIfSet FLAG_UNK_0x008E, ValorCavern_RemoveAzelf
    GoToIfUnset FLAG_GALACTIC_LEFT_LAKE_VALOR, ValorCavern_SetWarpEventPosLakeWithGalactic
    GoToIfSet FLAG_GALACTIC_LEFT_LAKE_VALOR, ValorCavern_SetWarpEventPosLakeWithWater
    End

ValorCavern_RemoveAzelf:
    SetFlag FLAG_AZELF_DISAPPEARED
    RemoveObject LOCALID_AZELF
    ClearFlag FLAG_UNK_0x008E
    Return

ValorCavern_Azelf:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    PlayCry SPECIES_AZELF
    Message ValorCavern_Text_AzelfCry
    CloseMessage
    SetFlag FLAG_UNK_0x008E
    StartLegendaryBattle SPECIES_AZELF, 50
    ClearFlag FLAG_UNK_0x008E
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, ValorCavern_LostBattleAzelf
    CheckDidNotCapture VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, ValorCavern_AzelfDisappeared
    SetFlag FLAG_AZELF_CAUGHT
    ReleaseAll
    End

ValorCavern_AzelfDisappeared:
    Message ValorCavern_Text_AzelfDisappeared
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

ValorCavern_LostBattleAzelf:
    BlackOutFromBattle
    ReleaseAll
    End

ValorCavern_CommanderSaturn:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message ValorCavern_Text_SaturnMissionIsProceeding
    CloseMessage
    FacePlayer
    ApplyMovement LOCALID_SATURN, _013C
    WaitMovement
    WaitTime 30, VAR_RESULT
    Message ValorCavern_Text_SaturnBattleIntro
    CloseMessage
    StartTrainerBattle TRAINER_COMMANDER_SATURN_VALOR_CAVERN
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, ValorCavern_LostBattleCommanderSaturn
    Message ValorCavern_Text_SaturnPostBattle
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    RemoveObject LOCALID_SATURN
    SetFlag FLAG_DEFEATED_COMMANDER_SATURN_VALOR_CAVERN
    SetFlag FLAG_ALT_MUSIC_LAKE_VALOR
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

    .balign 4, 0
_013C:
    EmoteExclamationMark
    EndMovement

ValorCavern_LostBattleCommanderSaturn:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
