#include "macros/scrcmd.inc"
#include "res/text/bank/verity_cavern.h"

#define LOCALID_MESPRIT 0
#define LOCALID_ROWAN   1

    .data

    ScriptEntry _000A
    ScriptEntry VerityCavern_Mesprit
    ScriptEntryEnd

_000A:
    SetFlag FLAG_UNK_0x09DF
    End

VerityCavern_Mesprit:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    DrawPokemonPreview SPECIES_MESPRIT, GENDER_MALE
    WaitABPress
    ScrCmd_209
    PlayCry SPECIES_MESPRIT
    Message VerityCavern_Text_MespritCry
    CloseMessage
    SetFlag FLAG_MESPRIT_DISAPPEARED
    RemoveObject LOCALID_MESPRIT
    WaitTime 8, VAR_0x800C
    ClearFlag FLAG_MESPRIT_DISAPPEARED
    AddObject LOCALID_MESPRIT
    WaitTime 8, VAR_0x800C
    SetFlag FLAG_MESPRIT_DISAPPEARED
    RemoveObject LOCALID_MESPRIT
    WaitTime 8, VAR_0x800C
    ClearFlag FLAG_MESPRIT_DISAPPEARED
    AddObject LOCALID_MESPRIT
    WaitTime 8, VAR_0x800C
    SetFlag FLAG_MESPRIT_DISAPPEARED
    RemoveObject LOCALID_MESPRIT
    WaitTime 8, VAR_0x800C
    ClearFlag FLAG_MESPRIT_DISAPPEARED
    AddObject LOCALID_MESPRIT
    WaitTime 8, VAR_0x800C
    SetFlag FLAG_MESPRIT_DISAPPEARED
    RemoveObject LOCALID_MESPRIT
    ActivateRoamingPokemon ROAMING_SLOT_MESPRIT
    Message VerityCavern_Text_MespritFlewOff
    CloseMessage
    GoToIfEq VAR_ROAMING_MESPRIT_STATE, 3, VerityCavern_ResetRoamingMespritState
    WaitTime 30, VAR_0x800C
    GetPlayerDir VAR_0x800C
    GoToIfEq VAR_0x800C, DIR_NORTH, VerityCavern_EnterProfessorRowanNorth
    GoToIfEq VAR_0x800C, DIR_SOUTH, VerityCavern_EnterProfessorRowanSouth
    GoToIfEq VAR_0x800C, DIR_WEST, VerityCavern_EnterProfessorRowanWest
    GoToIfEq VAR_0x800C, DIR_EAST, VerityCavern_EnterProfessorRowanEast
    End

VerityCavern_EnterProfessorRowanNorth:
    SetObjectEventPos LOCALID_ROWAN, 12, 22
    GoTo VerityCavern_EnterProfessorRowan
    End

VerityCavern_EnterProfessorRowanSouth:
    SetObjectEventPos LOCALID_ROWAN, 12, 20
    GoTo VerityCavern_EnterProfessorRowan
    End

VerityCavern_EnterProfessorRowanWest:
    SetObjectEventPos LOCALID_ROWAN, 13, 21
    GoTo VerityCavern_EnterProfessorRowan
    End

VerityCavern_EnterProfessorRowanEast:
    SetObjectEventPos LOCALID_ROWAN, 11, 21
    GoTo VerityCavern_EnterProfessorRowan
    End

VerityCavern_EnterProfessorRowan:
    ClearFlag FLAG_UNK_0x0296
    AddObject LOCALID_ROWAN
    ApplyMovement LOCALID_ROWAN, _0190
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _01B0
    WaitMovement
    BufferPlayerName 0
    Message VerityCavern_Text_RowanThatWasMesprit
    CloseMessage
    ApplyMovement LOCALID_ROWAN, _0198
    WaitMovement
    BufferPlayerName 0
    Message VerityCavern_Text_RowanChaseAfterMesprit
    CheckPoketchAppRegistered POKETCH_APPID_MARKINGMAP, VAR_0x800C
    CallIfEq VAR_0x800C, 0, VerityCavern_ProfessorRowanNoMarkingMap
    BufferPlayerName 0
    Message VerityCavern_Text_RowanGoOn
    CloseMessage
    ApplyMovement LOCALID_ROWAN, _01A8
    WaitMovement
    RemoveObject LOCALID_ROWAN
    ReleaseAll
    End

VerityCavern_ProfessorRowanNoMarkingMap:
    Message VerityCavern_Text_RowanNoMarkingMap
    Return

VerityCavern_ResetRoamingMespritState:
    SetVar VAR_ROAMING_MESPRIT_STATE, 0
    ReleaseAll
    End

    .balign 4, 0
_0190:
    MoveAction_012 7
    EndMovement

    .balign 4, 0
_0198:
    MoveAction_033
    MoveAction_063 2
    MoveAction_032
    EndMovement

    .balign 4, 0
_01A8:
    MoveAction_013 9
    EndMovement

    .balign 4, 0
_01B0:
    MoveAction_001
    EndMovement
