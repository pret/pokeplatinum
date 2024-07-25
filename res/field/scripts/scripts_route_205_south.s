#include "macros/scrcmd.inc"

    .data

    ScriptEntry _002A
    ScriptEntry _00F8
    ScriptEntry _010B
    ScriptEntry _002C
    ScriptEntry _011E
    ScriptEntry _015D
    ScriptEntry _0070
    ScriptEntry _0280
    ScriptEntry _0297
    ScriptEntry _02AE
    .short 0xFD13

_002A:
    End

_002C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ApplyMovement 13, _0060
    WaitMovement
    Message 2
    CloseMessage
    ApplyMovement 12, _0068
    WaitMovement
    Call _00B6
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0060:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0068:
    MoveAction_021
    EndMovement

_0070:
    LockAll
    ApplyMovement 13, _00BC
    WaitMovement
    Message 2
    CloseMessage
    ApplyMovement 12, _00C4
    WaitMovement
    Message 3
    CloseMessage
    ApplyMovement 13, _00CC
    ApplyMovement 0xFF, _00EC
    WaitMovement
    ApplyMovement 12, _00E4
    WaitMovement
    Call _00B6
    ReleaseAll
    End

_00B6:
    SetFlag 127
    Return

    .balign 4, 0
_00BC:
    MoveAction_023
    EndMovement

    .balign 4, 0
_00C4:
    MoveAction_022
    EndMovement

    .balign 4, 0
_00CC:
    MoveAction_013
    MoveAction_025
    MoveAction_03F 2
    MoveAction_00E
    MoveAction_021
    EndMovement

    .balign 4, 0
_00E4:
    MoveAction_021
    EndMovement

    .balign 4, 0
_00EC:
    MoveAction_00D
    MoveAction_024
    EndMovement

_00F8:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_010B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_011E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 145, _0142
    Call _014D
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0142:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_014D:
    SetFlag 0x1A1
    SetFlag 145
    SetVar 0x4089, 1
    Return

_015D:
    LockAll
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8005, 0x293, _01A8
    GoToIfEq 0x8005, 0x294, _01C2
    GoToIfEq 0x8005, 0x295, _01DC
    GoToIfEq 0x8005, 0x296, _01E2
    GoToIfEq 0x8005, 0x297, _01FC
    End

_01A8:
    ApplyMovement 18, _0238
    WaitMovement
    ApplyMovement 0xFF, _0228
    WaitMovement
    GoTo _0216

_01C2:
    ApplyMovement 18, _024C
    WaitMovement
    ApplyMovement 0xFF, _0228
    WaitMovement
    GoTo _0216

_01DC:
    GoTo _0216

_01E2:
    ApplyMovement 18, _025C
    WaitMovement
    ApplyMovement 0xFF, _0230
    WaitMovement
    GoTo _0216

_01FC:
    ApplyMovement 18, _026C
    WaitMovement
    ApplyMovement 0xFF, _0230
    WaitMovement
    GoTo _0216

_0216:
    Call _014D
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0228:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0230:
    MoveAction_020
    EndMovement

    .balign 4, 0
_0238:
    MoveAction_020
    MoveAction_04B
    MoveAction_03F
    MoveAction_00C
    EndMovement

    .balign 4, 0
_024C:
    MoveAction_020
    MoveAction_04B
    MoveAction_03F
    EndMovement

    .balign 4, 0
_025C:
    MoveAction_021
    MoveAction_04B
    MoveAction_03F
    EndMovement

    .balign 4, 0
_026C:
    MoveAction_021
    MoveAction_04B
    MoveAction_03F
    MoveAction_00D
    EndMovement

_0280:
    ScrCmd_036 7, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_0297:
    ScrCmd_036 8, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_02AE:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 9, 0x800C
    CallCommonScript 0x7D0
    End

    .byte 0
