    .include "macros/scrcmd.inc"

    .data

    .long _0008-.-4
    .short 0xFD13
    ScrCmd_002

_0008:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_016 _001B
    ScrCmd_002

_001B:
    ScrCmd_02C 1
    ScrCmd_041 1, 1, 0, 1, 0x800C
    ScrCmd_042 9, 0
    ScrCmd_042 10, 1
    ScrCmd_042 11, 2
    ScrCmd_042 12, 3
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _00D0
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _0121
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _0078
    ScrCmd_016 _006D
    ScrCmd_002

_006D:
    ScrCmd_02C 33
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0078:
    ScrCmd_02C 32
    ScrCmd_031
    ScrCmd_016 _001B
    ScrCmd_002

_0085:
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_034
    ScrCmd_061
    ScrCmd_01B

_0097:
    ScrCmd_0A1
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_01B

_00AF:
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00BA:
    ScrCmd_02C 6
    ScrCmd_016 _006D
    ScrCmd_002

_00C5:
    ScrCmd_02C 7
    ScrCmd_016 _006D
    ScrCmd_002

_00D0:
    ScrCmd_07E 0x1C1, 1, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00AF
    ScrCmd_1D8 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _00BA
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 1, _00C5
    ScrCmd_003 30, 0x800C
    ScrCmd_01A _0085
    ScrCmd_1D7 0
    ScrCmd_01A _0097
    ScrCmd_016 _006D
    ScrCmd_002

_0121:
    ScrCmd_07E 0x1C1, 1, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00AF
    ScrCmd_1D8 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _00BA
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 1, _00C5
    ScrCmd_014 0x7D6
    ScrCmd_029 0x800C, 0x4000
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0173
    ScrCmd_016 _006D
    ScrCmd_002

_0173:
    ScrCmd_02C 13
    ScrCmd_040 30, 1, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 13, 0
    ScrCmd_042 14, 1
    ScrCmd_042 5, 2
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _01B7
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _020D
    ScrCmd_016 _006D
    ScrCmd_002

_01B7:
    ScrCmd_02C 2
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0173
    ScrCmd_034
    ScrCmd_0F2 6, 0, 0, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _01F9
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _0203
    ScrCmd_016 _0263
    ScrCmd_002

_01F9:
    ScrCmd_150
    ScrCmd_016 _0173
    ScrCmd_002

_0203:
    ScrCmd_150
    ScrCmd_016 _0173
    ScrCmd_002

_020D:
    ScrCmd_02C 2
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0173
    ScrCmd_034
    ScrCmd_0F3 6, 0, 0, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _024F
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _0259
    ScrCmd_016 _0263
    ScrCmd_002

_024F:
    ScrCmd_150
    ScrCmd_016 _0173
    ScrCmd_002

_0259:
    ScrCmd_150
    ScrCmd_016 _0173
    ScrCmd_002

_0263:
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_061
    ScrCmd_1D7 1
    ScrCmd_150
    ScrCmd_01A _0097
    ScrCmd_016 _006D

    .byte 2
    .byte 0
    .byte 0
    .byte 0
    .byte 0
