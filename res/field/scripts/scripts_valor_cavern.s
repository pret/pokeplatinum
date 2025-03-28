#include "macros/scrcmd.inc"
#include "res/text/bank/valor_cavern.h"

#define LOCALID_AZELF  0
#define LOCALID_SATURN 1

    .data

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
    ClearFlag FLAG_UNK_0x008E,
    Return

ValorCavern_Azelf:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    PlayCry SPECIES_AZELF
    Message valor_cavern_azelf_battle_intro
    CloseMessage
    SetFlag FLAG_UNK_0x008E,
    StartLegendaryBattle SPECIES_AZELF, 50
    ClearFlag FLAG_UNK_0x008E,
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, ValorCavern_LostBattleAzelf
    CheckDidNotCapture 0x800C
    GoToIfEq 0x800C, TRUE, ValorCavern_AzelfDisappeared
    SetFlag FLAG_AZELF_CAUGHT
    ReleaseAll
    End

ValorCavern_AzelfDisappeared:
    Message valor_cavern_azelf_disappeared
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
    Message valor_cavern_saturn_mission_is_proceeding
    CloseMessage
    FacePlayer
    ApplyMovement LOCALID_SATURN, _013C
    WaitMovement
    WaitTime 30, 0x800C
    Message valor_cavern_saturn_battle_intro
    CloseMessage
    StartTrainerBattle TRAINER_COMMANDER_SATURN_VALOR_CAVERN
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, ValorCavern_LostBattleCommanderSaturn
    Message valor_cavern_saturn_post_battle
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    RemoveObject LOCALID_SATURN
    SetFlag FLAG_DEFEATED_COMMANDER_SATURN_VALOR_CAVERN
    SetFlag FLAG_UNK_0x0984
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

    .balign 4, 0
_013C:
    MoveAction_075
    EndMovement

ValorCavern_LostBattleCommanderSaturn:
    BlackOutFromBattle
    ReleaseAll
    End

    .byte 0
    .byte 0
