    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _0066-.-4
    .short 0xFD13

_000A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    GoToIfSet 201, _0051
    ScrCmd_02C 0
    SetVar 0x8004, 0x177
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _005C
    ScrCmd_014 0x7FC
    SetFlag 201
    GoTo _0051
    End

_0051:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_005C:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    End

_0066:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
