#include "macros/scrcmd.inc"
#include "generated/distribution_events.h"
#include "res/text/bank/hall_of_origin.h"

    .data

    ScriptEntry _003B
    ScriptEntry _0056
    ScriptEntry _0012
    ScriptEntry _0056
    ScriptEntryEnd

_0012:
    CheckDistributionEvent DISTRIBUTION_EVENT_ARCEUS, 0x4000
    GoToIfEq 0x4000, FALSE, _0035
    GoToIfSet FLAG_UNK_0x011E, _0035
    ClearFlag FLAG_UNK_0x024E
    End

_0035:
    SetFlag FLAG_UNK_0x024E
    End

_003B:
    GoToIfSet FLAG_UNK_0x008E, _0048
    End

_0048:
    SetFlag FLAG_UNK_0x024E
    RemoveObject 0
    ClearFlag FLAG_UNK_0x008E
    End

_0056:
    LockAll
    SetVar 0x4118, 0
    Call _00E9
    Call _0104
    PlayCry SPECIES_ARCEUS
    ScrCmd_04D
    Call _016F
    PlayCry SPECIES_ARCEUS
    Message 0
    CloseMessage
    SetFlag FLAG_UNK_0x008E
    StartLegendaryBattle SPECIES_ARCEUS, 80
    ClearFlag FLAG_UNK_0x008E
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _00DF
    CheckDidNotCapture 0x800C
    GoToIfEq 0x800C, TRUE, _00D0
    CallIfEq 0x4056, 0, _00C8
    SetFlag FLAG_UNK_0x011E
    ReleaseAll
    End

_00C8:
    SetVar 0x4056, 1
    Return

_00D0:
    Message 1
    WaitABXPadPress
    CloseMessage
    ClearFlag FLAG_UNK_0x024E
    ReleaseAll
    End

_00DF:
    ClearFlag FLAG_UNK_0x024E
    BlackOutFromBattle
    ReleaseAll
    End

_00E9:
    ApplyMovement LOCALID_PLAYER, _00F8
    WaitMovement
    Return

    .balign 4, 0
_00F8:
    MoveAction_075
    MoveAction_065
    EndMovement

_0104:
    GetPlayerMapPos 0x8004, 0x8005
    SetVar 0x8008, 0x8004
    GoToIfEq 0x8008, 30, _0139
    GoToIfEq 0x8008, 31, _014B
    GoToIfEq 0x8008, 32, _015D
_0137:
    Return

_0139:
    ApplyMovement LOCALID_PLAYER, _017C
    WaitMovement
    GoTo _0137
    End

_014B:
    ApplyMovement LOCALID_PLAYER, _018C
    WaitMovement
    GoTo _0137
    End

_015D:
    ApplyMovement LOCALID_PLAYER, _0194
    WaitMovement
    GoTo _0137
    End

_016F:
    ApplyMovement LOCALID_PLAYER, _01A4
    WaitMovement
    Return

    .balign 4, 0
_017C:
    MoveAction_012 4
    MoveAction_015
    MoveAction_000
    EndMovement

    .balign 4, 0
_018C:
    MoveAction_012 4
    EndMovement

    .balign 4, 0
_0194:
    MoveAction_012 4
    MoveAction_014
    MoveAction_000
    EndMovement

    .balign 4, 0
_01A4:
    MoveAction_012 2
    EndMovement
