    .include "macros/scrcmd.inc"

    .data

    .long _0022-.-4
    .long _0184-.-4
    .long _01BA-.-4
    .long _01CD-.-4
    .long _01E0-.-4
    .long _01F3-.-4
    .long _0206-.-4
    .long _0217-.-4
    .short 0xFD13

_0022:
    ScrCmd_060
    ScrCmd_01F 0x2BA
    ScrCmd_064 1
    ScrCmd_1B2 1
    ScrCmd_186 0, 32, 34
    ScrCmd_189 0, 0
    ScrCmd_188 0, 14
    ScrCmd_01F 0x1CD
    ScrCmd_064 0
    ScrCmd_066 30, 30
    ScrCmd_05E 241, _016C
    ScrCmd_05F
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_028 0x40C3, 2
    ScrCmd_05E 0, _0144
    ScrCmd_05F
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_20D 4, 0x800C
    ScrCmd_003 30, 0x800C
_0088:
    ScrCmd_20D 6, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0088
    ScrCmd_065 1
    ScrCmd_05E 241, _0178
    ScrCmd_05F
    ScrCmd_067
    ScrCmd_05E 0xFF, _013C
    ScrCmd_05E 0, _014C
    ScrCmd_05F
    ScrCmd_02C 4
    ScrCmd_034
    ScrCmd_05E 0, _0154
    ScrCmd_05F
    ScrCmd_02C 5
    ScrCmd_01E 0x29E
    ScrCmd_016 _00DA
    ScrCmd_002

_00DA:
    ScrCmd_02C 6
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00FD
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0130
    ScrCmd_002

_00FD:
    ScrCmd_02C 7
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_320
    ScrCmd_0A1
    ScrCmd_328 1
    ScrCmd_0BE 0x23D, 0, 55, 40, 1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_002

_0130:
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_013C:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0144:
    MoveAction_00C 4
    EndMovement

    .balign 4, 0
_014C:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0154:
    MoveAction_023
    MoveAction_03F 2
    MoveAction_021
    MoveAction_03F
    MoveAction_020
    EndMovement

    .balign 4, 0
_016C:
    MoveAction_00F
    MoveAction_00C 5
    EndMovement

    .balign 4, 0
_0178:
    MoveAction_00D 5
    MoveAction_00E
    EndMovement

_0184:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 6
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00FD
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _01AF
    ScrCmd_002

_01AF:
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_01BA:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_01CD:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_01E0:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_01F3:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0206:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 18
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0217:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 19
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002
