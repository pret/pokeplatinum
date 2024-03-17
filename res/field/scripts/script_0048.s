    .include "macros/scrcmd.inc"

    .data

    .long _000E-.-4
    .long _010B-.-4
    .long _00A5-.-4
    .short 0xFD13

_000E:
    ScrCmd_011 0x4106, 0
    ScrCmd_01C 1, _0037
    ScrCmd_011 0x4106, 3
    ScrCmd_01D 1, _0073
    ScrCmd_011 0x4106, 1
    ScrCmd_01D 4, _007B
_0035:
    ScrCmd_002

_0037:
    ScrCmd_020 0x12C
    ScrCmd_01C 1, _0035
    ScrCmd_166 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _0035
    ScrCmd_22D 2, 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _0035
    ScrCmd_028 0x4106, 1
    ScrCmd_01A _007B
    ScrCmd_002

_0073:
    ScrCmd_028 0x4106, 0
    ScrCmd_01B

_007B:
    ScrCmd_186 0, 8, 6
    ScrCmd_189 0, 1
    ScrCmd_188 0, 0
    ScrCmd_186 1, 9, 6
    ScrCmd_189 1, 2
    ScrCmd_01B

    .byte 30
    .byte 0
    .byte 91
    .byte 2
    .byte 27
    .byte 0

_00A5:
    ScrCmd_029 0x8008, 0x4106
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _00E5
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _00E5
    ScrCmd_011 0x8008, 3
    ScrCmd_01C 1, _00F8
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00E5:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00F8:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_010B:
    ScrCmd_011 0x4106, 1
    ScrCmd_01C 1, _0158
    ScrCmd_011 0x4106, 2
    ScrCmd_01C 1, _0158
    ScrCmd_011 0x4106, 3
    ScrCmd_01C 1, _0145
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0145:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0158:
    ScrCmd_020 0x133
    ScrCmd_01C 0, _01EA
    ScrCmd_020 0x11F
    ScrCmd_01C 0, _01D9
    ScrCmd_07E 0x1C5, 1, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _01D9
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_01E 0x12C
    ScrCmd_028 0x4106, 3
    ScrCmd_07C 0x1C5, 1, 0x800C
    ScrCmd_0CD 0
    ScrCmd_02C 2
    ScrCmd_02C 3
    ScrCmd_04E 0x48E
    ScrCmd_04F
    ScrCmd_034
    ScrCmd_003 15, 0x800C
    ScrCmd_01A _01FC
    ScrCmd_02C 5
    ScrCmd_01A _0256
    ScrCmd_02C 6
    ScrCmd_01A _0262
    ScrCmd_02C 7
    ScrCmd_034
    ScrCmd_01A _026E
    ScrCmd_061
    ScrCmd_002

_01D9:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_01EA:
    ScrCmd_01E 0x133
    ScrCmd_028 0x4106, 2
    ScrCmd_016 _01D9
    ScrCmd_002

_01FC:
    ScrCmd_049 0x603
    ScrCmd_04B 0x603
    ScrCmd_01F 0x25B
    ScrCmd_064 2
    ScrCmd_003 5, 0x800C
    ScrCmd_05E 1, _0294
    ScrCmd_05E 0, _0294
    ScrCmd_05E 0xFF, _0294
    ScrCmd_05F
    ScrCmd_05E 2, _02B4
    ScrCmd_05F
    ScrCmd_05E 0xFF, _02C0
    ScrCmd_05F
    ScrCmd_05E 2, _02D4
    ScrCmd_05F
    ScrCmd_05E 0xFF, _029C
    ScrCmd_05F
    ScrCmd_01B

_0256:
    ScrCmd_05E 2, _02A4
    ScrCmd_05F
    ScrCmd_01B

_0262:
    ScrCmd_05E 2, _02AC
    ScrCmd_05F
    ScrCmd_01B

_026E:
    ScrCmd_05E 0xFF, _0294
    ScrCmd_05E 2, _02DC
    ScrCmd_05F
    ScrCmd_01E 0x25B
    ScrCmd_065 2
    ScrCmd_049 0x603
    ScrCmd_04B 0x603
    ScrCmd_01B

    .balign 4, 0
_0294:
    MoveAction_002
    EndMovement

    .balign 4, 0
_029C:
    MoveAction_000
    EndMovement

    .balign 4, 0
_02A4:
    MoveAction_001
    EndMovement

    .balign 4, 0
_02AC:
    MoveAction_003
    EndMovement

    .balign 4, 0
_02B4:
    MoveAction_00C 2
    MoveAction_00F 2
    EndMovement

    .balign 4, 0
_02C0:
    MoveAction_000
    MoveAction_047
    MoveAction_00D
    MoveAction_048
    EndMovement

    .balign 4, 0
_02D4:
    MoveAction_00F
    EndMovement

    .balign 4, 0
_02DC:
    MoveAction_00E 3
    MoveAction_00D 2
    EndMovement
