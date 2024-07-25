#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _0014
    ScriptEntry _00FC
    .short 0xFD13

_000E:
    SetFlag 0x9DA
    End

_0014:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_1BD 0x8004
    FacePlayer
    Message 3
    ScrCmd_03E 0x800C
    CloseMessage
    GoToIfEq 0x800C, 0, _003E
    GoTo _0071

_003E:
    Message 4
    CloseMessage
    Call _007C
    CallIfEq 0x8004, 1, _0096
    CallIfEq 0x8004, 2, _00B0
    ScrCmd_23D 0, 2, 33, 44, 0x2EE
    ReleaseAll
    End

_0071:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_007C:
    ApplyMovement 0, _00CC
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement 0, _00D8
    WaitMovement
    Return

_0096:
    ApplyMovement 0xFF, _00E0
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement 0xFF, _00D8
    WaitMovement
    Return

_00B0:
    ApplyMovement 0xFF, _00F0
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement 0xFF, _00D8
    WaitMovement
    Return

    .balign 4, 0
_00CC:
    MoveAction_002
    MoveAction_040
    EndMovement

    .balign 4, 0
_00D8:
    MoveAction_045
    EndMovement

    .balign 4, 0
_00E0:
    MoveAction_00D
    MoveAction_002
    MoveAction_040
    EndMovement

    .balign 4, 0
_00F0:
    MoveAction_00E
    MoveAction_040
    EndMovement

_00FC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 0
    Message 0
    SetVar 0x8004, 0x1A7
    SetVar 0x8005, 1
    CallCommonScript 0x7FC
    ScrCmd_15B 5, 0x800C
    GoToIfEq 0x800C, 0, _0140
    GoTo _0135
    End

_0135:
    Message 1
    GoTo _014B
    End

_0140:
    Message 2
    GoTo _014B
    End

_014B:
    CloseMessage
    ApplyMovement 1, _0168
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ScrCmd_065 1
    WaitFanfare SEQ_SE_DP_KAIDAN2
    ReleaseAll
    End

    .balign 4, 0
_0168:
    MoveAction_020
    EndMovement
