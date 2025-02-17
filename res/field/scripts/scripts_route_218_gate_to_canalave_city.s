#include "macros/scrcmd.inc"
#include "res/text/bank/route_218_gate_to_canalave_city.h"

    .data

    ScriptEntry _0208
    ScriptEntry _000A
    ScriptEntryEnd

_000A:
    LockAll
    Call _006A
    BufferPlayerName 0
    BufferCounterpartName 1
    GetPlayerGender 0x800C
    GoToIfEq 0x800C, 0, _0031
    GoTo _003C
    End

_0031:
    Message 2
    GoTo _0047
    End

_003C:
    Message 3
    GoTo _0047
    End

_0047:
    Message 4
    CloseMessage
    ScrCmd_22C
    Call _00E8
    PlayFanfare SEQ_SE_DP_KAIDAN2
    SetFlag 0x21C
    RemoveObject 1
    SetVar 0x4105, 1
    ReleaseAll
    End

_006A:
    GetPlayerMapPos 0x8005, 0x8006
    GoToIfEq 0x8006, 5, _00AC
    GoToIfEq 0x8006, 6, _00B8
    GoToIfEq 0x8006, 7, _00C4
    GoToIfEq 0x8006, 8, _00D0
    GoTo _00DC
    End

_00AC:
    ApplyMovement 1, _0168
    WaitMovement
    Return

_00B8:
    ApplyMovement 1, _017C
    WaitMovement
    Return

_00C4:
    ApplyMovement 1, _0190
    WaitMovement
    Return

_00D0:
    ApplyMovement 1, _019C
    WaitMovement
    Return

_00DC:
    ApplyMovement 1, _01B0
    WaitMovement
    Return

_00E8:
    GetPlayerMapPos 0x8005, 0x8006
    GoToIfEq 0x8006, 5, _012A
    GoToIfEq 0x8006, 6, _0136
    GoToIfEq 0x8006, 7, _0142
    GoToIfEq 0x8006, 8, _014E
    GoTo _015A
    End

_012A:
    ApplyMovement 1, _01C4
    WaitMovement
    Return

_0136:
    ApplyMovement 1, _01D0
    WaitMovement
    Return

_0142:
    ApplyMovement 1, _01DC
    WaitMovement
    Return

_014E:
    ApplyMovement 1, _01F0
    WaitMovement
    Return

_015A:
    ApplyMovement 1, _01FC
    WaitMovement
    Return

    .balign 4, 0
_0168:
    MoveAction_075
    MoveAction_015
    MoveAction_012 2
    MoveAction_035
    EndMovement

    .balign 4, 0
_017C:
    MoveAction_075
    MoveAction_015
    MoveAction_012
    MoveAction_035
    EndMovement

    .balign 4, 0
_0190:
    MoveAction_075
    MoveAction_015
    EndMovement

    .balign 4, 0
_019C:
    MoveAction_075
    MoveAction_015
    MoveAction_013
    MoveAction_035
    EndMovement

    .balign 4, 0
_01B0:
    MoveAction_075
    MoveAction_015
    MoveAction_013 2
    MoveAction_035
    EndMovement

    .balign 4, 0
_01C4:
    MoveAction_013 2
    MoveAction_015 4
    EndMovement

    .balign 4, 0
_01D0:
    MoveAction_013
    MoveAction_015 4
    EndMovement

    .balign 4, 0
_01DC:
    MoveAction_012
    MoveAction_015 3
    MoveAction_013
    MoveAction_015
    EndMovement

    .balign 4, 0
_01F0:
    MoveAction_012
    MoveAction_015 4
    EndMovement

    .balign 4, 0
_01FC:
    MoveAction_012 2
    MoveAction_015 4
    EndMovement

_0208:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
