    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _0088-.-4
    .long _009F-.-4
    .long _00B4-.-4
    .short 0xFD13

_0012:
    ScrCmd_049 0x5DC
    ScrCmd_060
    GoToIfSet 198, _0066
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_068
    ApplyMovement 0x800D, _0080
    WaitMovement
    ScrCmd_02C 1
    SetVar 0x8004, 0x194
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0073
    ScrCmd_014 0x7FC
    SetFlag 198
    GoTo _0066

_0066:
    ScrCmd_068
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0073:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_0080:
    MoveAction_04B
    EndMovement

_0088:
    ScrCmd_036 3, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_009F:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 4, 0x800C
    ScrCmd_014 0x7D0
    End

_00B4:
    ScrCmd_036 5, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

    .byte 0
