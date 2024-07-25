#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _0078
    ScriptEntry _00B6
    .short 0xFD13

_000E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_15B 4, 0x800C
    GoToIfEq 0x800C, 1, _006A
    Message 1
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _004C
    GoToIfEq 0x800C, 1, _0057
    End

_004C:
    Message 2
    GoTo _0062
    End

_0057:
    Message 3
    GoTo _0062
    End

_0062:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_006A:
    BufferPlayerName 0
    Message 4
    GoTo _0062
    End

_0078:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_15B 4, 0x800C
    GoToIfEq 0x800C, 1, _00A2
    BufferRivalName 0
    BufferRivalName 1
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A2:
    BufferRivalName 0
    BufferPlayerName 1
    BufferRivalName 2
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00B6:
    LockAll
    ApplyMovement 0, _00DC
    WaitMovement
    Message 0
    CloseMessage
    ApplyMovement 0, _00F0
    WaitMovement
    SetVar 0x40D1, 1
    ReleaseAll
    End

    .balign 4, 0
_00DC:
    MoveAction_04B
    MoveAction_03F
    MoveAction_00E
    MoveAction_00D
    EndMovement

    .balign 4, 0
_00F0:
    MoveAction_00C
    MoveAction_00F
    MoveAction_021
    EndMovement
