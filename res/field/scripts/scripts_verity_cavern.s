#include "macros/scrcmd.inc"
#include "res/text/bank/verity_cavern.h"
#include "res/field/events/events_verity_cavern.h"


    ScriptEntry VerityCavern_OnTransition
    ScriptEntry VerityCavern_Mesprit
    ScriptEntryEnd

VerityCavern_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_VERITY_CAVERN
    End

VerityCavern_Mesprit:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    DrawPokemonPreview SPECIES_MESPRIT, GENDER_MALE
    WaitABPress
    RemovePokemonPreview
    PlayCry SPECIES_MESPRIT
    Message VerityCavern_Text_MespritCry
    CloseMessage
    SetFlag FLAG_HIDE_VERITY_CAVERN_MESPRIT
    RemoveObject LOCALID_MESPRIT
    WaitTime 8, VAR_RESULT
    ClearFlag FLAG_HIDE_VERITY_CAVERN_MESPRIT
    AddObject LOCALID_MESPRIT
    WaitTime 8, VAR_RESULT
    SetFlag FLAG_HIDE_VERITY_CAVERN_MESPRIT
    RemoveObject LOCALID_MESPRIT
    WaitTime 8, VAR_RESULT
    ClearFlag FLAG_HIDE_VERITY_CAVERN_MESPRIT
    AddObject LOCALID_MESPRIT
    WaitTime 8, VAR_RESULT
    SetFlag FLAG_HIDE_VERITY_CAVERN_MESPRIT
    RemoveObject LOCALID_MESPRIT
    WaitTime 8, VAR_RESULT
    ClearFlag FLAG_HIDE_VERITY_CAVERN_MESPRIT
    AddObject LOCALID_MESPRIT
    WaitTime 8, VAR_RESULT
    SetFlag FLAG_HIDE_VERITY_CAVERN_MESPRIT
    RemoveObject LOCALID_MESPRIT
    ActivateRoamingPokemon ROAMING_SLOT_MESPRIT
    Message VerityCavern_Text_MespritFlewOff
    CloseMessage
    GoToIfEq VAR_ROAMING_MESPRIT_STATE, ROAMER_STATE_RESET, VerityCavern_ResetRoamingMespritState
    WaitTime 30, VAR_RESULT
    GetPlayerDir VAR_RESULT
    GoToIfEq VAR_RESULT, DIR_NORTH, VerityCavern_EnterProfRowanNorth
    GoToIfEq VAR_RESULT, DIR_SOUTH, VerityCavern_EnterProfRowanSouth
    GoToIfEq VAR_RESULT, DIR_WEST, VerityCavern_EnterProfRowanWest
    GoToIfEq VAR_RESULT, DIR_EAST, VerityCavern_EnterProfRowanEast
    End

VerityCavern_EnterProfRowanNorth:
    SetObjectEventPos LOCALID_PROF_ROWAN, 12, 22
    GoTo VerityCavern_EnterProfRowan
    End

VerityCavern_EnterProfRowanSouth:
    SetObjectEventPos LOCALID_PROF_ROWAN, 12, 20
    GoTo VerityCavern_EnterProfRowan
    End

VerityCavern_EnterProfRowanWest:
    SetObjectEventPos LOCALID_PROF_ROWAN, 13, 21
    GoTo VerityCavern_EnterProfRowan
    End

VerityCavern_EnterProfRowanEast:
    SetObjectEventPos LOCALID_PROF_ROWAN, 11, 21
    GoTo VerityCavern_EnterProfRowan
    End

VerityCavern_EnterProfRowan:
    ClearFlag FLAG_HIDE_VERITY_CAVERN_PROF_OAK
    AddObject LOCALID_PROF_ROWAN
    ApplyMovement LOCALID_PROF_ROWAN, VerityCavern_Movement_ProfRowanEnter
    WaitMovement
    ApplyMovement LOCALID_PLAYER, VerityCavern_Movement_PlayerFaceSouth
    WaitMovement
    BufferPlayerName 0
    Message VerityCavern_Text_RowanThatWasMesprit
    CloseMessage
    ApplyMovement LOCALID_PROF_ROWAN, VerityCavern_Movement_ProfRowanWalkOnSpotSouthNorth
    WaitMovement
    BufferPlayerName 0
    Message VerityCavern_Text_RowanChaseAfterMesprit
    CheckPoketchAppRegistered POKETCH_APPID_MARKINGMAP, VAR_RESULT
    CallIfEq VAR_RESULT, FALSE, VerityCavern_ProfRowanNoMarkingMap
    BufferPlayerName 0
    Message VerityCavern_Text_RowanGoOn
    CloseMessage
    ApplyMovement LOCALID_PROF_ROWAN, VerityCavern_Movement_ProfRowanLeave
    WaitMovement
    RemoveObject LOCALID_PROF_ROWAN
    ReleaseAll
    End

VerityCavern_ProfRowanNoMarkingMap:
    Message VerityCavern_Text_RowanNoMarkingMap
    Return

VerityCavern_ResetRoamingMespritState:
    SetVar VAR_ROAMING_MESPRIT_STATE, ROAMER_STATE_ROAMING
    ReleaseAll
    End

    .balign 4, 0
VerityCavern_Movement_ProfRowanEnter:
    WalkNormalNorth 7
    EndMovement

    .balign 4, 0
VerityCavern_Movement_ProfRowanWalkOnSpotSouthNorth:
    WalkOnSpotNormalSouth
    Delay8 2
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
VerityCavern_Movement_ProfRowanLeave:
    WalkNormalSouth 9
    EndMovement

    .balign 4, 0
VerityCavern_Movement_PlayerFaceSouth:
    FaceSouth
    EndMovement
