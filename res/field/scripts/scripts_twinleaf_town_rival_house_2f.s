#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _0090
    ScriptEntry _00A1
    .short 0xFD13

_000E:
    LockAll
    BufferRivalName 0
    Message 0
    CloseMessage
    ApplyMovement 0, _0060
    WaitMovement
    CallCommonScript 0x7FA
    BufferPlayerName 0
    Message 1
    CloseMessage
    ApplyMovement 0, _006C
    ApplyMovement 0xFF, _0080
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ScrCmd_065 0
    CallCommonScript 0x7FB
    SetFlag 234
    SetVar 0x40A3, 1
    SetVar 0x4070, 2
    ReleaseAll
    End

    .balign 4, 0
_0060:
    MoveAction_034
    MoveAction_075
    EndMovement

    .balign 4, 0
_006C:
    MoveAction_018 4
    MoveAction_016
    MoveAction_018 3
    MoveAction_069
    EndMovement

    .balign 4, 0
_0080:
    MoveAction_063 2
    MoveAction_013
    MoveAction_032
    EndMovement

_0090:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    BufferPlayerName 0
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
