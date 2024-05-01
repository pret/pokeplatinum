    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _0035-.-4
    .short 0xFD13

_000A:
    ScrCmd_23E 0
    ScrCmd_23E 1, 0x40ED
    ScrCmd_011 0x40ED, 0
    ScrCmd_01C 1, _002B
    ScrCmd_01F 0x20A
    ScrCmd_23E 7
    End

_002B:
    ScrCmd_01E 0x20A
    ScrCmd_23E 7
    End

_0035:
    ScrCmd_23E 0
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_23E 1, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00EE
    ScrCmd_1B6 0x800C
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _007E
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _008A
    GoTo _0096

_007E:
    ScrCmd_0CD 0
    ScrCmd_02C 0
    GoTo _00A2

_008A:
    ScrCmd_0CD 0
    ScrCmd_02C 1
    GoTo _00A2

_0096:
    ScrCmd_0CD 0
    ScrCmd_02C 2
    GoTo _00A2

_00A2:
    ScrCmd_23E 3, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00D8
    ScrCmd_04E 0x486
    ScrCmd_23E 5, 0x8005, 0x8006
    ScrCmd_1FB 0x8005, 0x8006
    ScrCmd_04F
    ScrCmd_02C 18
    ScrCmd_031
    ScrCmd_23E 4
    GoTo _0103

_00D8:
    ScrCmd_23E 6, 0x8005, 0x8006
    ScrCmd_1FB 0x8005, 0x8006
    ScrCmd_031
    GoTo _00F9

_00EE:
    ScrCmd_02C 3
    ScrCmd_031
    GoTo _00F9

_00F9:
    ScrCmd_034
    ScrCmd_061
    ScrCmd_23E 7
    End

_0103:
    ScrCmd_034
    ScrCmd_061
    ScrCmd_23E 8
    End

    .byte 0
    .byte 0
    .byte 0
