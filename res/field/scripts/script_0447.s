    .include "macros/scrcmd.inc"

    .data

    .long _0079-.-4
    .long _030C-.-4
    .long _031F-.-4
    .long _0379-.-4
    .long _0390-.-4
    .long _03A7-.-4
    .long _001E-.-4
    .short 0xFD13

_001E:
    ScrCmd_1B6 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _0065
    ScrCmd_011 0x4000, 1
    ScrCmd_01C 1, _006F
    ScrCmd_011 0x4000, 2
    ScrCmd_01C 1, _006F
    ScrCmd_011 0x4000, 3
    ScrCmd_01C 1, _006F
    ScrCmd_011 0x4000, 4
    ScrCmd_01C 1, _006F
    ScrCmd_002

_0065:
    ScrCmd_01F 0x271
    ScrCmd_01E 0x270
    ScrCmd_002

_006F:
    ScrCmd_01F 0x270
    ScrCmd_01E 0x271
    ScrCmd_002

_0079:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_07E 0x1D0, 1, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _00A1
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00A1:
    ScrCmd_02C 1
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00CA
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _00C4
    ScrCmd_002

_00C4:
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00CA:
    ScrCmd_0CD 0
    ScrCmd_0D1 1, 0x1D0
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_04C 54, 0
    ScrCmd_04D
    ScrCmd_05E 27, _024C
    ScrCmd_05E 28, _024C
    ScrCmd_05E 26, _024C
    ScrCmd_05E 19, _024C
    ScrCmd_05F
    ScrCmd_05E 27, _0258
    ScrCmd_05E 28, _026C
    ScrCmd_05E 26, _0280
    ScrCmd_05E 19, _02B4
    ScrCmd_05F
    ScrCmd_065 27
    ScrCmd_065 28
    ScrCmd_065 26
    ScrCmd_065 19
    ScrCmd_003 45, 0x800C
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 0x230
    ScrCmd_01C 1, _015B
    ScrCmd_011 0x8004, 0x231
    ScrCmd_01C 1, _016F
    ScrCmd_002

_015B:
    ScrCmd_186 20, 0x230, 0x254
    ScrCmd_188 20, 14
    ScrCmd_016 _0183

_016F:
    ScrCmd_186 20, 0x231, 0x254
    ScrCmd_188 20, 14
    ScrCmd_016 _0183

_0183:
    ScrCmd_01F 0x1B1
    ScrCmd_064 20
    ScrCmd_062 20
    ScrCmd_05E 20, _02C4
    ScrCmd_05F
    ScrCmd_05E 0xFF, _02DC
    ScrCmd_05F
    ScrCmd_02C 3
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _01E9
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _01C6
    ScrCmd_002

_01C6:
    ScrCmd_02C 5
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _01E9
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _01C6
    ScrCmd_002

_01E9:
    ScrCmd_028 0x8004, 0x1B7
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FC
    ScrCmd_02C 4
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 0x230
    ScrCmd_01C 1, _0220
    ScrCmd_011 0x8004, 0x231
    ScrCmd_01C 1, _0230
    ScrCmd_002

_0220:
    ScrCmd_05E 20, _02CC
    ScrCmd_05F
    ScrCmd_016 _0240

_0230:
    ScrCmd_05E 20, _02D4
    ScrCmd_05F
    ScrCmd_016 _0240

_0240:
    ScrCmd_065 20
    ScrCmd_01E 0x107
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_024C:
    MoveAction_04B
    MoveAction_03F 4
    EndMovement

    .balign 4, 0
_0258:
    MoveAction_00C
    MoveAction_021
    MoveAction_03F 8
    MoveAction_00C 8
    EndMovement

    .balign 4, 0
_026C:
    MoveAction_00C 2
    MoveAction_021 2
    MoveAction_03F 6
    MoveAction_00C 8
    EndMovement

    .balign 4, 0
_0280:
    MoveAction_023
    MoveAction_022
    MoveAction_023
    MoveAction_03F 2
    MoveAction_020
    MoveAction_010 2
    MoveAction_03F 2
    MoveAction_00E 3
    MoveAction_023
    MoveAction_04B
    MoveAction_013 3
    MoveAction_010 8
    EndMovement

    .balign 4, 0
_02B4:
    MoveAction_00C 2
    MoveAction_03F 8
    MoveAction_00C 8
    EndMovement

    .balign 4, 0
_02C4:
    MoveAction_00C 7
    EndMovement

    .balign 4, 0
_02CC:
    MoveAction_00D 9
    EndMovement

    .balign 4, 0
_02D4:
    MoveAction_00D 9
    EndMovement

    .balign 4, 0
_02DC:
    MoveAction_021
    EndMovement

    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_030C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_031F:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 199
    ScrCmd_01C 1, _0364
    ScrCmd_02C 7
    ScrCmd_028 0x8004, 0x17A
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _036F
    ScrCmd_014 0x7FC
    ScrCmd_01E 199
    ScrCmd_016 _0364

_0364:
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_036F:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0379:
    ScrCmd_036 10, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_0390:
    ScrCmd_036 11, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_03A7:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .byte 0
    .byte 0
