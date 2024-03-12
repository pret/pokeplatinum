    .include "macros/scrcmd.inc"

    .data

    .long _0006-.-4
    .short 0xFD13

_0006:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 144
    ScrCmd_01C 1, _00B0
    ScrCmd_011 0x4095, 1
    ScrCmd_01C 4, _0082
    ScrCmd_020 110
    ScrCmd_01C 1, _0090
    ScrCmd_020 234
    ScrCmd_01C 1, _009E
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _005C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _006B
    ScrCmd_002

_005C:
    ScrCmd_0CD 0
    ScrCmd_0CE 1
    ScrCmd_02C 0
    ScrCmd_016 _007A

_006B:
    ScrCmd_0CD 0
    ScrCmd_0CE 1
    ScrCmd_02C 1
    ScrCmd_016 _007A

_007A:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0082:
    ScrCmd_0CE 1
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0090:
    ScrCmd_0CE 1
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_009E:
    ScrCmd_01E 110
    ScrCmd_0CE 1
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00B0:
    ScrCmd_0CE 1
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .byte 0
    .byte 0
