    .include "macros/scrcmd.inc"

    .data

    .long _001A-.-4
    .long _003D-.-4
    .long _0050-.-4
    .long _00A0-.-4
    .long _00B0-.-4
    .long _001C-.-4
    .short 0xFD13

_001A:
    End

_001C:
    ScrCmd_069 0x4004, 0x4005
    CallIfLe 0x4005, 3, _0037
    SetVar 0x4003, 1
    End

_0037:
    SetFlag 0x996
    Return

_003D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0050:
    ScrCmd_060
    ScrCmd_0C7 0x800C
    GoToIfEq 0x800C, 1, _0080
    ApplyMovement 0, _0090
    WaitMovement
    ScrCmd_02C 1
    ScrCmd_034
    ApplyMovement 0xFF, _0098
    WaitMovement
    ScrCmd_061
    End

_0080:
    SetFlag 0x996
    SetVar 0x4002, 1
    ScrCmd_061
    End

    .balign 4, 0
_0090:
    MoveAction_04B
    EndMovement

    .balign 4, 0
_0098:
    MoveAction_00D
    EndMovement

_00A0:
    ScrCmd_060
    ClearFlag 0x996
    SetVar 0x4002, 0
    ScrCmd_061
    End

_00B0:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    GoToIfSet 0x12B, _00E5
    SetVar 0x8004, 96
    ScrCmd_261 0, 0x8004
    ScrCmd_02C 3
    SetVar 0x8005, 1
    ScrCmd_014 0x7DF
    SetFlag 0x12B
    ScrCmd_034
    ScrCmd_061
    End

_00E5:
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End
