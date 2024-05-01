    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _0010-.-4
    .short 0xFD13

_000A:
    ScrCmd_01E 0x9C5
    End

_0010:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 219
    ScrCmd_01C 1, _00A9
    ScrCmd_020 0x138
    ScrCmd_01C 1, _0062
    ScrCmd_02C 0
    ScrCmd_028 0x8004, 91
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _01F3
    ScrCmd_01E 0x138
    ScrCmd_014 0x7FC
    GoTo _0062
    End

_0062:
    ScrCmd_07E 91, 1, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0082
    ScrCmd_02C 1
    GoTo _00EC
    End

_0082:
    ScrCmd_01E 219
    ScrCmd_02C 2
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00FF
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _00F4
    End

_00A9:
    ScrCmd_07E 91, 1, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00E1
    ScrCmd_02C 4
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00FF
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _00F4
    End

_00E1:
    ScrCmd_02C 3
    GoTo _00EC
    End

_00EC:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00F4:
    ScrCmd_02C 7
    GoTo _00EC
    End

_00FF:
    ScrCmd_2FE 91, 0x8000
    ScrCmd_011 0x8000, 10
    ScrCmd_01C 4, _014E
    GoTo _011A
    End

_011A:
    ScrCmd_1E5 70
    ScrCmd_07C 91, 1, 0x800C
    ScrCmd_07B 72, 1, 0x800C
    ScrCmd_07B 73, 1, 0x800C
    ScrCmd_07B 74, 1, 0x800C
    ScrCmd_07B 75, 1, 0x800C
    GoTo _01E5
    End

_014E:
    ScrCmd_02C 5
    ScrCmd_040 31, 11, 0, 1, 0x8001
    ScrCmd_33A 1
    ScrCmd_29D 0x116, 0
    ScrCmd_29D 0x117, 1
    ScrCmd_29D 11, 2
    ScrCmd_043
    ScrCmd_028 0x8007, 10
    ScrCmd_029 0x8008, 0x8001
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _011A
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _019E
    GoTo _00F4
    End

_019E:
    ScrCmd_027 0x8007, 1
    ScrCmd_1E5 70
    ScrCmd_07B 72, 1, 0x800C
    ScrCmd_07B 73, 1, 0x800C
    ScrCmd_07B 74, 1, 0x800C
    ScrCmd_07B 75, 1, 0x800C
    ScrCmd_07C 91, 1, 0x800C
    ScrCmd_011 0x8007, 0
    ScrCmd_01C 1, _01E5
    GoTo _019E
    End

_01E5:
    ScrCmd_02C 6
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01F3:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
