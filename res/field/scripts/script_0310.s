    .include "macros/scrcmd.inc"

    .data

    .long _000E-.-4
    .long _0062-.-4
    .long _007D-.-4
    .short 0xFD13

_000E:
    ScrCmd_01E 0x9D5
    ScrCmd_22D 2, 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _005C
    ScrCmd_07E 0x1C4, 1, 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _005C
    ScrCmd_28B 1, 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _005C
    ScrCmd_020 0x123
    ScrCmd_01C 1, _005C
    ScrCmd_01F 0x251
    ScrCmd_002

_005C:
    ScrCmd_01E 0x251
    ScrCmd_002

_0062:
    ScrCmd_020 142
    ScrCmd_01C 1, _006F
    ScrCmd_002

_006F:
    ScrCmd_01E 0x251
    ScrCmd_065 0
    ScrCmd_01F 142
    ScrCmd_002

_007D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_04C 0x1EC, 0
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_01E 142
    ScrCmd_318 0x1EC, 30
    ScrCmd_01F 142
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00D7
    ScrCmd_2BC 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _00C8
    ScrCmd_01E 0x123
    ScrCmd_061
    ScrCmd_002

_00C8:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_01F 0x251
    ScrCmd_061
    ScrCmd_002

_00D7:
    ScrCmd_0EB
    ScrCmd_01F 0x251
    ScrCmd_061
    ScrCmd_002

    .byte 0
    .byte 0
    .byte 0
