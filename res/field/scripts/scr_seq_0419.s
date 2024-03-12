    .include "macros/scrcmd.inc"

    .data

    .long _0006-.-4
    .short 0xFD13

_0006:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 1
    ScrCmd_01C 1, _00D3
    ScrCmd_1E8 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _004C
    ScrCmd_020 171
    ScrCmd_01C 0, _0057
    ScrCmd_1E9 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0057
    ScrCmd_016 _0095

_004C:
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0057:
    ScrCmd_020 171
    ScrCmd_01D 0, _00DE
    ScrCmd_01E 171
    ScrCmd_01E 1
    ScrCmd_02C 1
    ScrCmd_04E 0x486
    ScrCmd_04F
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_1EA
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    ScrCmd_002

_0095:
    ScrCmd_020 172
    ScrCmd_01D 0, _00E4
    ScrCmd_01E 172
    ScrCmd_01E 1
    ScrCmd_02C 2
    ScrCmd_04E 0x486
    ScrCmd_04F
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_1EB
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    ScrCmd_002

_00D3:
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00DE:
    ScrCmd_260 26
    ScrCmd_01B

_00E4:
    ScrCmd_260 27
    ScrCmd_01B

    .byte 0
    .byte 0
