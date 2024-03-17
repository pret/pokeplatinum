    .include "macros/scrcmd.inc"

    .data

    .long _00C0-.-4
    .long _00D6-.-4
    .long _0269-.-4
    .long _027C-.-4
    .long _02BA-.-4
    .long _02D9-.-4
    .long _003F-.-4
    .long _0022-.-4
    .short 0xFD13

_0022:
    ScrCmd_020 250
    ScrCmd_01C 1, _002F
    ScrCmd_002

_002F:
    ScrCmd_186 0, 16, 14
    ScrCmd_189 0, 1
    ScrCmd_002

_003F:
    ScrCmd_060
    ScrCmd_003 20, 0x800C
    ScrCmd_22F 0x8004
    ScrCmd_011 0x8004, 10
    ScrCmd_01C 0, _0078
    ScrCmd_028 0x40A7, 1
    ScrCmd_01E 250
    ScrCmd_0CD 0
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_05E 0, _00AC
    ScrCmd_05F
    ScrCmd_061
    ScrCmd_002

_0078:
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_003 20, 0x800C
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x1C9, 0, 0x338, 0x1C6, 1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_00AC:
    MoveAction_002
    MoveAction_047
    MoveAction_00F
    MoveAction_048
    EndMovement

_00C0:
    ScrCmd_0CD 0
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00D6:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_247 0x8000
    ScrCmd_0CD 0
    ScrCmd_0D0 2, 0x8000
    ScrCmd_230 0x800C, 0x8000, 68
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0244
    ScrCmd_230 0x800C, 0x8000, 67
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _01E7
    ScrCmd_230 0x800C, 0x8000, 66
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _018A
    ScrCmd_016 _012F

_012F:
    ScrCmd_072 20, 2
    ScrCmd_02C 3
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _025C
    ScrCmd_071 0x800C, 0x2710
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _024F
    ScrCmd_334 35, 0x2710
    ScrCmd_070 0x2710
    ScrCmd_074
    ScrCmd_049 0x644
    ScrCmd_04B 0x644
    ScrCmd_02C 7
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_231 0x8000, 66
    ScrCmd_034
    ScrCmd_073
    ScrCmd_061
    ScrCmd_002

_018A:
    ScrCmd_072 20, 2
    ScrCmd_02C 4
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _025C
    ScrCmd_071 0x800C, 0x186A0
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _024F
    ScrCmd_335 35, 0x186A0
    ScrCmd_070 0x186A0
    ScrCmd_074
    ScrCmd_049 0x644
    ScrCmd_04B 0x644
    ScrCmd_02C 9
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_231 0x8000, 67
    ScrCmd_034
    ScrCmd_073
    ScrCmd_061
    ScrCmd_002

_01E7:
    ScrCmd_072 20, 2
    ScrCmd_02C 5
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _025C
    ScrCmd_071 0x800C, 0xF423F
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _024F
    ScrCmd_335 35, 0xF423F
    ScrCmd_070 0xF423F
    ScrCmd_074
    ScrCmd_049 0x644
    ScrCmd_04B 0x644
    ScrCmd_02C 11
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_231 0x8000, 68
    ScrCmd_034
    ScrCmd_073
    ScrCmd_061
    ScrCmd_002

_0244:
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_024F:
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_034
    ScrCmd_073
    ScrCmd_061
    ScrCmd_002

_025C:
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_034
    ScrCmd_073
    ScrCmd_061
    ScrCmd_002

_0269:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_027C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _02A4
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _02AF
    ScrCmd_002

_02A4:
    ScrCmd_02C 16
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_02AF:
    ScrCmd_02C 17
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_02BA:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_04B 0x5DC
    ScrCmd_04C 0x12C, 0
    ScrCmd_02C 18
    ScrCmd_04D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_02D9:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_04B 0x5DC
    ScrCmd_04C 54, 0
    ScrCmd_02C 19
    ScrCmd_04D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002
