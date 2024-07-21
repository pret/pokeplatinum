#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _0035
    .short 0xFD13

_000A:
    GoToIfSet 0x11D, _0029
    ScrCmd_22D 2, 0x4000
    CallIfEq 0x4000, 1, _002F
    End

_0029:
    SetFlag 0x24D
    End

_002F:
    ClearFlag 0x24D
    Return

_0035:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    SetVar 0x8004, 233
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _00A8
    CallCommonScript 0x7FC
    SetFlag 0x11D
    Message 1
    CloseMessage
    ScrCmd_1BD 0x8004
    GoToIfEq 0x8004, 2, _00B2
    GoToIfEq 0x8004, 3, _00D0
    GoToIfEq 0x8004, 0, _00B2
    GoToIfEq 0x8004, 1, _00D0
    End

_00A8:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_00B2:
    ApplyMovement 0, _00F0
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ScrCmd_065 0
    WaitFanfare SEQ_SE_DP_KAIDAN2
    ScrCmd_04A 0x603
    ReleaseAll
    End

_00D0:
    ApplyMovement 0, _00FC
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ScrCmd_065 0
    WaitFanfare SEQ_SE_DP_KAIDAN2
    ScrCmd_04A 0x603
    ReleaseAll
    End

    .balign 4, 0
_00F0:
    MoveAction_00E
    MoveAction_00D 3
    EndMovement

    .balign 4, 0
_00FC:
    MoveAction_00D 2
    MoveAction_00E
    MoveAction_00D
    EndMovement
