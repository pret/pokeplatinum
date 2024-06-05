    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _0010-.-4
    .short 0xFD13

_000A:
    SetFlag 0x9DF
    End

_0010:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_208 0x1E1, 0
    ScrCmd_030
    ScrCmd_209
    ScrCmd_04C 0x1E1, 0
    ScrCmd_02C 0
    ScrCmd_034
    SetFlag 0x1DF
    ScrCmd_065 0
    ScrCmd_003 8, 0x800C
    ClearFlag 0x1DF
    ScrCmd_064 0
    ScrCmd_003 8, 0x800C
    SetFlag 0x1DF
    ScrCmd_065 0
    ScrCmd_003 8, 0x800C
    ClearFlag 0x1DF
    ScrCmd_064 0
    ScrCmd_003 8, 0x800C
    SetFlag 0x1DF
    ScrCmd_065 0
    ScrCmd_003 8, 0x800C
    ClearFlag 0x1DF
    ScrCmd_064 0
    ScrCmd_003 8, 0x800C
    SetFlag 0x1DF
    ScrCmd_065 0
    ScrCmd_21C 0
    ScrCmd_02C 1
    ScrCmd_034
    GoToIfEq 0x4059, 3, _0184
    ScrCmd_003 30, 0x800C
    ScrCmd_1BD 0x800C
    GoToIfEq 0x800C, 0, _00DE
    GoToIfEq 0x800C, 1, _00EE
    GoToIfEq 0x800C, 2, _00FE
    GoToIfEq 0x800C, 3, _010E
    End

_00DE:
    ScrCmd_186 1, 12, 22
    GoTo _011E
    End

_00EE:
    ScrCmd_186 1, 12, 20
    GoTo _011E
    End

_00FE:
    ScrCmd_186 1, 13, 21
    GoTo _011E
    End

_010E:
    ScrCmd_186 1, 11, 21
    GoTo _011E
    End

_011E:
    ClearFlag 0x296
    ScrCmd_064 1
    ApplyMovement 1, _0190
    WaitMovement
    ApplyMovement 0xFF, _01B0
    WaitMovement
    ScrCmd_0CD 0
    ScrCmd_02C 2
    ScrCmd_034
    ApplyMovement 1, _0198
    WaitMovement
    ScrCmd_0CD 0
    ScrCmd_02C 3
    ScrCmd_134 12, 0x800C
    CompareVar 0x800C, 0
    CallIf 1, _017F
    ScrCmd_0CD 0
    ScrCmd_02C 5
    ScrCmd_034
    ApplyMovement 1, _01A8
    WaitMovement
    ScrCmd_065 1
    ScrCmd_061
    End

_017F:
    ScrCmd_02C 4
    Return

_0184:
    SetVar 0x4059, 0
    ScrCmd_061
    End

    .balign 4, 0
_0190:
    MoveAction_00C 7
    EndMovement

    .balign 4, 0
_0198:
    MoveAction_021
    MoveAction_03F 2
    MoveAction_020
    EndMovement

    .balign 4, 0
_01A8:
    MoveAction_00D 9
    EndMovement

    .balign 4, 0
_01B0:
    MoveAction_001
    EndMovement
