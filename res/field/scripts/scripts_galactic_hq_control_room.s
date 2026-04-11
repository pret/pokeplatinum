#include "macros/scrcmd.inc"
#include "res/text/bank/galactic_hq_control_room.h"
#include "res/field/events/events_galactic_hq_control_room.h"


    ScriptEntry GalacticHQControlRoom_OnTransition
    ScriptEntry GalacticHQControlRoom_OnResume
    ScriptEntry GalacticHQControlRoom_Saturn
    ScriptEntry GalacticHQControlRoom_MachineUxie
    ScriptEntry GalacticHQControlRoom_MachineMesprit
    ScriptEntry GalacticHQControlRoom_MachineAzelf
    ScriptEntry GalacticHQControlRoom_Unused7
    ScriptEntry GalacticHQControlRoom_Unused8
    ScriptEntry GalacticHQControlRoom_Unused9
    ScriptEntry GalacticHQControlRoom_Button
    ScriptEntry GalacticHQControlRoom_Uxie
    ScriptEntry GalacticHQControlRoom_Mesprit
    ScriptEntry GalacticHQControlRoom_Azelf
    ScriptEntry GalacticHQControlRoom_TriggerSaturn
    ScriptEntry GalacticHQControlRoom_Charon
    ScriptEntryEnd

GalacticHQControlRoom_OnTransition:
    GoToIfSet FLAG_FREED_GALACTIC_HQ_POKEMON, GalacticHQControlRoom_SetSaturnPositionEastOfButton
    End

GalacticHQControlRoom_SetSaturnPositionEastOfButton:
    SetObjectEventPos LOCALID_SATURN, 9, 6
    End

GalacticHQControlRoom_OnResume:
    InitLakeGuardianContainmentUnits
    End

GalacticHQControlRoom_Saturn:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_FREED_GALACTIC_HQ_POKEMON, GalacticHQControlRoom_BossCraftedRedChain
    GoToIfSet FLAG_DEFEATED_GALACTIC_HQ_CONTROL_ROOM_SATURN, GalacticHQControlRoom_PressButtonAndFreePokemon
    Message GalacticHQControlRoom_Text_SaturnIntro
    CloseMessage
    StartTrainerBattle TRAINER_COMMANDER_SATURN_GALACTIC_HQ
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, GalacticHQControlRoom_BlackOut
    SetFlag FLAG_DEFEATED_GALACTIC_HQ_CONTROL_ROOM_SATURN
    SetVar FLAG_GALACTIC_HQ_CONTROL_ROOM_STATE, 1
    Message GalacticHQControlRoom_Text_WhatMakesYouSoTough
    CloseMessage
    GetPlayerDir VAR_0x8004
    SetVar VAR_MAP_LOCAL_2, VAR_0x8004
    GoToIfEq VAR_0x8004, DIR_NORTH, GalacticHQControlRoom_SaturnMoveAsideNorth
    GoToIfEq VAR_0x8004, DIR_WEST, GalacticHQControlRoom_SaturnMoveAsideWest
    GoToIfEq VAR_0x8004, DIR_EAST, GalacticHQControlRoom_SaturnMoveAsideEast
    End

GalacticHQControlRoom_SaturnMoveAsideNorth:
    ApplyMovement LOCALID_SATURN, GalacticHQControlRoom_Movement_SaturnWalkEastOnSpotSouth
    WaitMovement
    GoTo GalacticHQControlRoom_SaturnEnd

GalacticHQControlRoom_SaturnMoveAsideWest:
    ApplyMovement LOCALID_SATURN, GalacticHQControlRoom_Movement_SaturnWalkSouthOnSpotNorth
    WaitMovement
    GoTo GalacticHQControlRoom_SaturnEnd

GalacticHQControlRoom_SaturnMoveAsideEast:
    ApplyMovement LOCALID_SATURN, GalacticHQControlRoom_Movement_SaturnWalkEastOnSpotWest
    WaitMovement
    GoTo GalacticHQControlRoom_SaturnEnd

GalacticHQControlRoom_SaturnEnd:
    ReleaseAll
    End

GalacticHQControlRoom_BossCraftedRedChain:
    Message GalacticHQControlRoom_Text_BossCraftedRedChain
    WaitButton
    CloseMessage
    ReleaseAll
    End

GalacticHQControlRoom_PressButtonAndFreePokemon:
    Message GalacticHQControlRoom_Text_PressButtonAndFreePokemon
    WaitButton
    CloseMessage
    ReleaseAll
    End

GalacticHQControlRoom_BlackOut:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
GalacticHQControlRoom_Movement_SaturnWalkEastOnSpotSouth:
    WalkNormalEast
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
GalacticHQControlRoom_Movement_SaturnWalkSouthOnSpotNorth:
    WalkNormalSouth
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
GalacticHQControlRoom_Movement_SaturnWalkEastOnSpotWest:
    WalkNormalEast
    WalkOnSpotNormalWest
    EndMovement

GalacticHQControlRoom_MachineUxie:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    GoToIfSet FLAG_FREED_GALACTIC_HQ_POKEMON, GalacticHQControlRoom_UxieWasSealedInside
    Message GalacticHQControlRoom_Text_UxieIsSealedInside
    WaitButton
    CloseMessage
    ReleaseAll
    End

GalacticHQControlRoom_UxieWasSealedInside:
    Message GalacticHQControlRoom_Text_UxieWasSealedInside
    WaitButton
    CloseMessage
    ReleaseAll
    End

GalacticHQControlRoom_MachineMesprit:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    GoToIfSet FLAG_FREED_GALACTIC_HQ_POKEMON, GalacticHQControlRoom_MespritWasSealedInside
    Message GalacticHQControlRoom_Text_MespritIsSealedInside
    WaitButton
    CloseMessage
    ReleaseAll
    End

GalacticHQControlRoom_MespritWasSealedInside:
    Message GalacticHQControlRoom_Text_MespritWasSealedInside
    WaitButton
    CloseMessage
    ReleaseAll
    End

GalacticHQControlRoom_MachineAzelf:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    GoToIfSet FLAG_FREED_GALACTIC_HQ_POKEMON, GalacticHQControlRoom_AzelfWasSealedInside
    Message GalacticHQControlRoom_Text_AzelfIsSealedInside
    WaitButton
    CloseMessage
    ReleaseAll
    End

GalacticHQControlRoom_AzelfWasSealedInside:
    Message GalacticHQControlRoom_Text_AzelfWasSealedInside
    WaitButton
    CloseMessage
    ReleaseAll
    End

GalacticHQControlRoom_Unused7:
    End

GalacticHQControlRoom_Unused8:
    End

GalacticHQControlRoom_Unused9:
    End

GalacticHQControlRoom_Button:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    GoToIfSet FLAG_FREED_GALACTIC_HQ_POKEMON, GalacticHQControlRoom_AlreadyPressedButton
    Message GalacticHQControlRoom_Text_AskPressButton
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, GalacticHQControlRoom_FreePokemon
    GoToIfEq VAR_RESULT, MENU_NO, GalacticHQControlRoom_DontPressButton
    End

GalacticHQControlRoom_FreePokemon:
    SetVar FLAG_GALACTIC_HQ_CONTROL_ROOM_STATE, 0
    PlaySE SEQ_SE_DP_BUTTON3
    BufferPlayerName 0
    Message GalacticHQControlRoom_Text_PlayerPressedButton
    CloseMessage
    ClearFlag FLAG_HIDE_MT_CORONET_1F_NORTH_ROOM_1_GRUNT_F
    SetFlag FLAG_FREED_GALACTIC_HQ_POKEMON
    DeactivateLakeGuardianContainmentUnits
    WaitTime 30, VAR_RESULT
    ApplyMovement LOCALID_MESPRIT, GalacticHQControlRoom_Movement_MespritMoveSouth
    ApplyMovement LOCALID_AZELF, GalacticHQControlRoom_Movement_AzelfMoveSouth
    ApplyMovement LOCALID_UXIE, GalacticHQControlRoom_Movement_UxieMoveSouth
    WaitMovement
    SetObjectEventPos LOCALID_MESPRIT, 2, 6
    SetObjectEventPos LOCALID_AZELF, 14, 6
    SetObjectEventPos LOCALID_UXIE, 8, 12
    Call GalacticHQControlRoom_FlickerLakeGuardians
    Call GalacticHQControlRoom_FlickerLakeGuardians
    Call GalacticHQControlRoom_FlickerLakeGuardians
    RemoveObject LOCALID_MESPRIT
    RemoveObject LOCALID_AZELF
    RemoveObject LOCALID_UXIE
    GoToIfEq VAR_MAP_LOCAL_2, DIR_NORTH, GalacticHQControlRoom_SaturnPlayerFaceEachOtherNorth
    GoToIfEq VAR_MAP_LOCAL_2, DIR_WEST, GalacticHQControlRoom_SaturnPlayerFaceEachOtherWest
    GoToIfEq VAR_MAP_LOCAL_2, DIR_EAST, GalacticHQControlRoom_SaturnPlayerFaceEachOtherEast
    End

GalacticHQControlRoom_FlickerLakeGuardians:
    RemoveObject LOCALID_MESPRIT
    RemoveObject LOCALID_AZELF
    RemoveObject LOCALID_UXIE
    WaitTime 2, VAR_RESULT
    ClearFlag FLAG_HIDE_GALACTIC_HQ_CONTROL_ROOM_LAKE_GUARDIANS
    AddObject LOCALID_MESPRIT
    AddObject LOCALID_AZELF
    AddObject LOCALID_UXIE
    WaitTime 2, VAR_RESULT
    Return

GalacticHQControlRoom_SaturnPlayerFaceEachOtherNorth:
    ApplyMovement LOCALID_SATURN, GalacticHQControlRoom_Movement_SaturnFacePlayerWest
    ApplyMovement LOCALID_PLAYER, GalacticHQControlRoom_Movement_PlayerWalkOnSpotEast
    WaitMovement
    GoTo GalacticHQControlRoom_RemoveSaturn
    End

GalacticHQControlRoom_SaturnPlayerFaceEachOtherWest:
    ApplyMovement LOCALID_SATURN, GalacticHQControlRoom_Movement_SaturnFacePlayerNorth
    ApplyMovement LOCALID_PLAYER, GalacticHQControlRoom_Movement_PlayerWalkOnSpotSouth
    WaitMovement
    GoTo GalacticHQControlRoom_RemoveSaturn
    End

GalacticHQControlRoom_SaturnPlayerFaceEachOtherEast:
    ApplyMovement LOCALID_SATURN, GalacticHQControlRoom_Movement_SaturnFacePlayerWest
    ApplyMovement LOCALID_PLAYER, GalacticHQControlRoom_Movement_PlayerWalkOnSpotEast
    WaitMovement
    GoTo GalacticHQControlRoom_RemoveSaturn
    End

GalacticHQControlRoom_RemoveSaturn:
    Message GalacticHQControlRoom_Text_BossCraftedRedChain
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    RemoveObject LOCALID_SATURN
    FadeScreenIn
    WaitFadeScreen
    SetFlag FLAG_HIDE_MT_CORONET_2F_CAVE_PAINTING
    ClearFlag FLAG_HIDE_MT_CORONET_2F_CAVE_PAINTING_SHARDS
    SetVar VAR_MT_CORONET_2F_STATE, 1
    ReleaseAll
    End

GalacticHQControlRoom_DontPressButton:
    CloseMessage
    ReleaseAll
    End

GalacticHQControlRoom_AlreadyPressedButton:
    Message GalacticHQControlRoom_Text_AlreadyPressedButton
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
GalacticHQControlRoom_Movement_SaturnFacePlayerWest:
    Delay8
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
GalacticHQControlRoom_Movement_SaturnFacePlayerNorth:
    Delay8
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
GalacticHQControlRoom_Movement_MespritMoveSouth:
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
GalacticHQControlRoom_Movement_AzelfMoveSouth:
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
GalacticHQControlRoom_Movement_UxieMoveSouth:
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
GalacticHQControlRoom_Movement_PlayerWalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
GalacticHQControlRoom_Movement_PlayerWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

GalacticHQControlRoom_TriggerSaturn:
    LockAll
    ApplyMovement LOCALID_SATURN, GalacticHQControlRoom_Movement_SaturnWalkOnSpotSouth
    WaitMovement
    Message GalacticHQControlRoom_Text_PressButtonAndFreePokemon2
    CloseMessage
    ApplyMovement LOCALID_PLAYER, GalacticHQControlRoom_Movement_PlayerWalkNorth
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
GalacticHQControlRoom_Movement_PlayerWalkNorth:
    WalkNormalNorth
    EndMovement

    .balign 4, 0
GalacticHQControlRoom_Movement_SaturnWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

GalacticHQControlRoom_Uxie:
    NPCMessage GalacticHQControlRoom_Text_UxieIsSealedInside
    End

GalacticHQControlRoom_Mesprit:
    NPCMessage GalacticHQControlRoom_Text_MespritIsSealedInside
    End

GalacticHQControlRoom_Azelf:
    NPCMessage GalacticHQControlRoom_Text_AzelfIsSealedInside
    End

GalacticHQControlRoom_Charon:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    GoToIfSet FLAG_DEFEATED_GALACTIC_HQ_CONTROL_ROOM_SATURN, GalacticHQControlRoom_PerhapsAnotherOption
    ApplyMovement LOCALID_CHARON, GalacticHQControlRoom_Movement_CharonWalkOnSpotNorth
    WaitMovement
    Message GalacticHQControlRoom_Text_WhereWouldTheyGo
    CloseMessage
    ApplyMovement LOCALID_SATURN, GalacticHQControlRoom_Movement_SaturnWalkOnSpotWest
    WaitMovement
    WaitTime 20, VAR_RESULT
    Message GalacticHQControlRoom_Text_WhatAreYouSaying
    Message GalacticHQControlRoom_Text_ILookForwardToPlan
    CloseMessage
    WaitTime 20, VAR_RESULT
    ApplyMovement LOCALID_SATURN, GalacticHQControlRoom_Movement_SaturnWalkOnSpotNorth
    WaitMovement
    Message GalacticHQControlRoom_Text_BossCanDoWithoutSupport
    WaitButton
    CloseMessage
    ReleaseAll
    End

GalacticHQControlRoom_PerhapsAnotherOption:
    FacePlayer
    Message GalacticHQControlRoom_Text_PerhapsAnotherOption
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
GalacticHQControlRoom_Movement_SaturnWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
GalacticHQControlRoom_Movement_SaturnWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
GalacticHQControlRoom_Movement_CharonWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement
