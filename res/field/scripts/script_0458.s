    .include "macros/scrcmd.inc"

    .data

    .long _0016-.-4
    .long _001C-.-4
    .long _002F-.-4
    .long _0042-.-4
    .long _0053-.-4
    .short 0xFD13

_0016:
    ScrCmd_01E 0x9EC
    End

_001C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 17
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_002F:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 18
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0042:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 19
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0053:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _007E
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0264
    End

_007E:
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_191
    ScrCmd_193 0x8000
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_011 0x8000, 0xFF
    ScrCmd_01C 1, _0264
    ScrCmd_198 0x8000, 0x8001
    ScrCmd_011 0x8001, 0
    ScrCmd_01C 1, _0259
    ScrCmd_2E5 0x8000, 0, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _026F
    ScrCmd_0D6 0, 0x8000
    ScrCmd_02C 5
    ScrCmd_2E6 0x8000, 0, 0x800C
    ScrCmd_029 0x8003, 0x800C
    ScrCmd_011 0x8003, 0xFFFE
    ScrCmd_01C 1, _0264
    ScrCmd_2EA 0x8003, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _027A
    ScrCmd_1C8 0x800C, 0x8000
    ScrCmd_029 0x8002, 0x800C
    ScrCmd_011 0x800C, 4
    ScrCmd_01C 1, _012F
    ScrCmd_016 _0224
    End

_012F:
    ScrCmd_0D6 0, 0x8000
    ScrCmd_0D4 1, 0x8003
    ScrCmd_02C 9
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _01E9
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_034
    ScrCmd_2E7 0x8000, 0x8003
    ScrCmd_2E8 0x8002
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_011 0x8002, 4
    ScrCmd_01C 1, _01E9
    ScrCmd_1CA 0x800C, 0x8000, 0x8002
    ScrCmd_0D4 1, 0x800C
    ScrCmd_02C 12
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _01E9
    ScrCmd_0D6 0, 0x8000
    ScrCmd_1CA 0x800C, 0x8000, 0x8002
    ScrCmd_0D4 1, 0x800C
    ScrCmd_02C 13
    ScrCmd_049 0x5E6
    ScrCmd_04B 0x5E6
    ScrCmd_003 30, 0x800C
    ScrCmd_02C 14
    ScrCmd_003 32, 0x800C
    ScrCmd_04E 0x483
    ScrCmd_0D4 1, 0x8003
    ScrCmd_02C 15
    ScrCmd_04F
    ScrCmd_003 16, 0x800C
    ScrCmd_016 _0245
    End

_01E9:
    ScrCmd_0D6 0, 0x8000
    ScrCmd_0D4 1, 0x8003
    ScrCmd_02C 10
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _020F
    ScrCmd_016 _012F
    End

_020F:
    ScrCmd_0D6 0, 0x8000
    ScrCmd_0D4 1, 0x8003
    ScrCmd_02C 11
    ScrCmd_016 _0264
    End

_0224:
    ScrCmd_0D6 0, 0x8000
    ScrCmd_0D4 1, 0x8003
    ScrCmd_02C 8
    ScrCmd_04E 0x483
    ScrCmd_04F
    ScrCmd_003 16, 0x800C
    ScrCmd_016 _0245
    End

_0245:
    ScrCmd_2EB 0x8003
    ScrCmd_2E9 0x8000, 0x8002, 0x8003
    ScrCmd_016 _0264
    End

_0259:
    ScrCmd_02C 16
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0264:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_026F:
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_027A:
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
