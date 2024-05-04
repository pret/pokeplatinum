    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _002F-.-4
    .long _0042-.-4
    .long _0055-.-4
    .short 0xFD13

_0012:
    SetFlag 0x9C2
    SetFlag 0x2C8
    CompareVarToValue 0x4056, 1
    CallIf 1, _0029
    End

_0029:
    ClearFlag 0x2C8
    Return

_002F:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0042:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0055:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 165
    GoToIf 1, _012B
    ScrCmd_02C 2
    GoTo _0073
    End

_0073:
    SetVar 0x8004, 0x12A
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0114
    ScrCmd_014 0x7FC
    ScrCmd_02C 5
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    CompareVarToValue 0x8005, 3
    GoToIf 1, _00CC
    CompareVarToValue 0x8005, 4
    GoToIf 1, _00DE
    CompareVarToValue 0x8005, 5
    GoToIf 1, _00F0
    End

_00CC:
    ApplyMovement 3, _0138
    WaitMovement
    GoTo _0102
    End

_00DE:
    ApplyMovement 3, _0144
    WaitMovement
    GoTo _0102
    End

_00F0:
    ApplyMovement 3, _0144
    WaitMovement
    GoTo _0102
    End

_0102:
    ScrCmd_049 0x603
    ScrCmd_065 3
    SetVar 0x4056, 2
    ScrCmd_061
    End

_0114:
    SetFlag 165
    ScrCmd_02C 3
    GoTo _0123
    End

_0123:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_012B:
    ScrCmd_02C 4
    GoTo _0073

    .byte 2
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0138:
    MoveAction_00E
    MoveAction_00C 3
    EndMovement

    .balign 4, 0
_0144:
    MoveAction_00C 3
    EndMovement
