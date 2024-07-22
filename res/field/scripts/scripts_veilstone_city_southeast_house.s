#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _018C
    .short 0xFD13

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 188, _00EF
    Message 0
    Message 1
    CloseMessage
    ScrCmd_1BD 0x800C
    GoToIfEq 0x800C, 2, _005F
    GoToIfEq 0x800C, 0, _006F
    GoToIfEq 0x800C, 3, _007F
    GoToIfEq 0x800C, 1, _008F
    End

_005F:
    ApplyMovement 0, _0144
    WaitMovement
    GoTo _009F

_006F:
    ApplyMovement 0, _0168
    WaitMovement
    GoTo _009F

_007F:
    ApplyMovement 0, _00FC
    WaitMovement
    GoTo _009F

_008F:
    ApplyMovement 0, _0120
    WaitMovement
    GoTo _009F

_009F:
    Message 2
    ScrCmd_040 1, 1, 0, 0, 0x8000
    ScrCmd_042 174, 0
    ScrCmd_042 175, 1
    ScrCmd_043
    ScrCmd_1B7 0x800C, 2
    GoToIfEq 0x800C, 0, _00E4
    Message 4
    SetVar 0x8004, 0x1BC
    SetVar 0x8005, 1
    SetFlag 188
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_00E4:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00EF:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_00FC:
    MoveAction_000
    MoveAction_03D
    MoveAction_003
    MoveAction_03D
    MoveAction_001
    MoveAction_03D
    MoveAction_002
    MoveAction_03D
    EndMovement

    .balign 4, 0
_0120:
    MoveAction_003
    MoveAction_03D
    MoveAction_001
    MoveAction_03D
    MoveAction_002
    MoveAction_03D
    MoveAction_000
    MoveAction_03D
    EndMovement

    .balign 4, 0
_0144:
    MoveAction_001
    MoveAction_03D
    MoveAction_002
    MoveAction_03D
    MoveAction_000
    MoveAction_03D
    MoveAction_003
    MoveAction_03D
    EndMovement

    .balign 4, 0
_0168:
    MoveAction_002
    MoveAction_03D
    MoveAction_000
    MoveAction_03D
    MoveAction_003
    MoveAction_03D
    MoveAction_001
    MoveAction_03D
    EndMovement

_018C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
