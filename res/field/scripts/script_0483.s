    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _0010-.-4
    .short 0xFD13

_000A:
    SetFlag 0x9F0
    End

_0010:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_1C0 0x800C, 223
    GoToIfEq 0x800C, 0, _00CF
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_191
    ScrCmd_193 0x8002
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    GoToIfEq 0x8002, 0xFF, _011E
    ScrCmd_198 0x8002, 0x8001
    GoToIfNe 0x8001, 223, _0108
    ScrCmd_1C1 0x800C, 0x8002
    GoToIfEq 0x800C, 0, _00ED
    GoToIfEq 0x800C, 1, _00DA
    ScrCmd_1C3 0, 1, 0x8002
    ScrCmd_02C 2
    SetVar 0x8004, 6
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0113
    ScrCmd_014 0x7FC
    ScrCmd_1C2 0x8002
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00CF:
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00DA:
    ScrCmd_1C4 0, 1, 223
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00ED:
    ScrCmd_1C3 0, 1, 0x8002
    ScrCmd_1C4 2, 3, 223
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0108:
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0113:
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_011E:
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
