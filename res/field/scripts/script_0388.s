    .include "macros/scrcmd.inc"

    .data

    .long _001A-.-4
    .long _001E-.-4
    .long _0044-.-4
    .long _006F-.-4
    .long _0096-.-4
    .long _01DA-.-4
    .short 0xFD13

_001A:
    ScrCmd_2F2
    ScrCmd_002

_001E:
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x246, 0, 15, 25, 0
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_002

_0044:
    ScrCmd_060
    ScrCmd_05E 128, _028C
    ScrCmd_05E 0xFF, _0204
    ScrCmd_05F
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_05E 128, _029C
    ScrCmd_05F
    ScrCmd_028 0x4055, 8
    ScrCmd_002

_006F:
    ScrCmd_060
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_05E 129, _0308
    ScrCmd_05E 128, _02AC
    ScrCmd_05F
    ScrCmd_02C 2
    ScrCmd_02C 4
    ScrCmd_032
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0096:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 5
    ScrCmd_034
    ScrCmd_0E5 0x194, 0
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _01CE
    ScrCmd_028 0x4055, 10
    ScrCmd_02C 6
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 86
    ScrCmd_01C 1, _00E6
    ScrCmd_05E 0xFF, _0210
    ScrCmd_016 _00EE

_00E6:
    ScrCmd_05E 0xFF, _0248
_00EE:
    ScrCmd_05E 129, _0314
    ScrCmd_05E 128, _02DC
    ScrCmd_05F
    ScrCmd_312 129
    ScrCmd_05E 128, _02BC
    ScrCmd_05F
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8005, 74
    ScrCmd_01C 1, _012F
    ScrCmd_05E 0xFF, _0254
    ScrCmd_016 _013F

_012F:
    ScrCmd_05E 128, _02E8
    ScrCmd_05E 0xFF, _0264
_013F:
    ScrCmd_02C 7
    ScrCmd_05F
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8005, 74
    ScrCmd_01C 1, _016D
    ScrCmd_05E 128, _02F8
    ScrCmd_05E 0xFF, _0274
    ScrCmd_016 _017D

_016D:
    ScrCmd_05E 128, _0300
    ScrCmd_05E 0xFF, _0280
_017D:
    ScrCmd_0CD 0
    ScrCmd_02C 8
    ScrCmd_04E 0x48E
    ScrCmd_04F
    ScrCmd_14E
    ScrCmd_05F
    ScrCmd_02C 9
    ScrCmd_034
    ScrCmd_05E 128, _02C8
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8005, 74
    ScrCmd_01C 1, _01BB
    ScrCmd_05E 0xFF, _0220
    ScrCmd_016 _01C3

_01BB:
    ScrCmd_05E 0xFF, _0234
_01C3:
    ScrCmd_05F
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_002

_01CE:
    ScrCmd_028 0x4055, 9
    ScrCmd_0EB
    ScrCmd_061
    ScrCmd_002

_01DA:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_011 0x4055, 10
    ScrCmd_01C 4, _01F8
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_01F8:
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0204:
    MoveAction_041 2
    MoveAction_020
    EndMovement

    .balign 4, 0
_0210:
    MoveAction_00F
    MoveAction_022
    MoveAction_021
    EndMovement

    .balign 4, 0
_0220:
    MoveAction_00E
    MoveAction_00C 7
    MoveAction_00F 4
    MoveAction_021
    EndMovement

    .balign 4, 0
_0234:
    MoveAction_00E
    MoveAction_00C 6
    MoveAction_00F 4
    MoveAction_021
    EndMovement

    .balign 4, 0
_0248:
    MoveAction_03F
    MoveAction_021
    EndMovement

    .balign 4, 0
_0254:
    MoveAction_042 2
    MoveAction_041
    MoveAction_020
    EndMovement

    .balign 4, 0
_0264:
    MoveAction_042 2
    MoveAction_041
    MoveAction_022
    EndMovement

    .balign 4, 0
_0274:
    MoveAction_03E
    MoveAction_020
    EndMovement

    .balign 4, 0
_0280:
    MoveAction_03E
    MoveAction_022
    EndMovement

    .balign 4, 0
_028C:
    MoveAction_041 2
    MoveAction_020
    MoveAction_041 2
    EndMovement

    .balign 4, 0
_029C:
    MoveAction_00F
    MoveAction_075
    MoveAction_00C 7
    EndMovement

    .balign 4, 0
_02AC:
    MoveAction_03F 3
    MoveAction_00E
    MoveAction_023
    EndMovement

    .balign 4, 0
_02BC:
    MoveAction_00F
    MoveAction_021
    EndMovement

    .balign 4, 0
_02C8:
    MoveAction_00C 6
    MoveAction_00F 4
    MoveAction_00D
    MoveAction_020
    EndMovement

    .balign 4, 0
_02DC:
    MoveAction_041
    MoveAction_021
    EndMovement

    .balign 4, 0
_02E8:
    MoveAction_042 2
    MoveAction_03F
    MoveAction_023
    EndMovement

    .balign 4, 0
_02F8:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0300:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0308:
    MoveAction_00D 4
    MoveAction_022
    EndMovement

    .balign 4, 0
_0314:
    MoveAction_00D 7
    MoveAction_076
    MoveAction_041
    EndMovement
