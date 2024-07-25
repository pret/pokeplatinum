#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0014
    ScriptEntry _012B
    ScriptEntry _0169
    ScriptEntry _0173
    ScriptEntry _01DC

_0014:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_1BD 0x800C
    GoToIfEq 0x800C, 0, _0056
    GoToIfEq 0x800C, 1, _0066
    GoToIfEq 0x800C, 2, _0076
    GoToIfEq 0x800C, 3, _0086
    End

_0056:
    ApplyMovement 0, _018C
    WaitMovement
    GoTo _0096

_0066:
    ApplyMovement 0, _01A0
    WaitMovement
    GoTo _0096

_0076:
    ApplyMovement 0, _01B4
    WaitMovement
    GoTo _0096

_0086:
    ApplyMovement 0, _01C8
    WaitMovement
    GoTo _0096

_0096:
    ScrCmd_15B 4, 0x800C
    GoToIfEq 0x800C, 1, _0173
    ScrCmd_1CD 9, 100, 0, 0, 0
    Message 0
    CloseMessage
    ScrCmd_0E5 0x13E, 0
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _01DC
    Message 1
    BufferPlayerName 0
    Message 2
    PlaySound SEQ_BADGE
    WaitSound
    ScrCmd_15C 4
    ScrCmd_260 23
    SetTrainerFlag 0x10A
    SetTrainerFlag 0x118
    SetTrainerFlag 0x11C
    SetTrainerFlag 0x145
    SetTrainerFlag 0x14A
    SetTrainerFlag 0x154
    SetTrainerFlag 0x157
    SetTrainerFlag 0x165
    ScrCmd_1CD 10, 100, 0x13E, 0, 0
    SetVar 0x407B, 1
    SetFlag 0x206
    ClearFlag 0x207
    Message 3
    GoTo _012B

_012B:
    SetVar 0x8004, 0x188
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0169
    CallCommonScript 0x7FC
    SetFlag 125
    BufferItemName 0, 0x8004
    ScrCmd_0D3 1, 0x8004
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0169:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_0173:
    GoToIfUnset 125, _012B
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_018C:
    MoveAction_002 4
    MoveAction_000 4
    MoveAction_003 4
    MoveAction_001 4
    EndMovement

    .balign 4, 0
_01A0:
    MoveAction_003 4
    MoveAction_001 4
    MoveAction_002 4
    MoveAction_000 4
    EndMovement

    .balign 4, 0
_01B4:
    MoveAction_000 4
    MoveAction_002 4
    MoveAction_001 4
    MoveAction_003 4
    EndMovement

    .balign 4, 0
_01C8:
    MoveAction_000 4
    MoveAction_003 4
    MoveAction_001 4
    MoveAction_002 4
    EndMovement

_01DC:
    ScrCmd_0EB
    ReleaseAll
    End

    .byte 0
    .byte 0
