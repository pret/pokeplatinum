    .include "macros/scrcmd.inc"

    .data

    .long _001E-.-4
    .long _004E-.-4
    .long _006F-.-4
    .long _0418-.-4
    .long _044B-.-4
    .long _048A-.-4
    .long _048C-.-4
    .short 0xFD13

_001E:
    ScrCmd_14D 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _003E
    ScrCmd_011 0x4000, 1
    ScrCmd_01C 1, _0046
    ScrCmd_002

_003E:
    ScrCmd_028 0x4020, 97
    ScrCmd_002

_0046:
    ScrCmd_028 0x4020, 0
    ScrCmd_002

_004E:
    ScrCmd_020 142
    ScrCmd_01C 1, _005B
    ScrCmd_002

_005B:
    ScrCmd_01E 0x18F
    ScrCmd_065 3
    ScrCmd_065 2
    ScrCmd_01F 142
    ScrCmd_002
    ScrCmd_002

_006F:
    ScrCmd_060
    ScrCmd_162
    ScrCmd_05E 5, _0298
    ScrCmd_05E 0xFF, _0368
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_066 46, 53
    ScrCmd_05E 241, _01B4
    ScrCmd_05F
    ScrCmd_003 15, 0x800C
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_003 30, 0x800C
    ScrCmd_05E 4, _01E0
    ScrCmd_05E 241, _01C0
    ScrCmd_05F
    ScrCmd_067
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_05E 5, _02A0
    ScrCmd_05E 0xFF, _0370
    ScrCmd_05F
    ScrCmd_05E 4, _01F0
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_065 4
    ScrCmd_003 50, 0x800C
    ScrCmd_05E 0xFF, _0378
    ScrCmd_05E 5, _02AC
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 3
    ScrCmd_034
    ScrCmd_05E 5, _02B8
    ScrCmd_05E 0xFF, _0380
    ScrCmd_05F
    ScrCmd_003 30, 0x800C
    ScrCmd_0CD 1
    ScrCmd_02C 4
    ScrCmd_04C 0x1E1, 0
    ScrCmd_02C 5
    ScrCmd_04D
    ScrCmd_034
    ScrCmd_05E 5, _02C0
    ScrCmd_05E 0xFF, _0388
    ScrCmd_05F
    ScrCmd_003 15, 0x800C
    ScrCmd_05E 5, _02F0
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 6
    ScrCmd_034
    ScrCmd_05E 5, _02E8
    ScrCmd_05F
    ScrCmd_003 15, 0x800C
    ScrCmd_0CD 1
    ScrCmd_02C 7
    ScrCmd_034
    ScrCmd_05E 5, _02F8
    ScrCmd_05E 0xFF, _039C
    ScrCmd_05F
    ScrCmd_01E 0x196
    ScrCmd_065 5
    ScrCmd_049 0x603
    ScrCmd_016 _01A1
    ScrCmd_002

_01A1:
    ScrCmd_028 0x4086, 4
    ScrCmd_028 0x4095, 1
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_01B4:
    MoveAction_03F
    MoveAction_00C 9
    EndMovement

    .balign 4, 0
_01C0:
    MoveAction_00D 9
    EndMovement

    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 2
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_01E0:
    MoveAction_00D 5
    MoveAction_00E
    MoveAction_00D 4
    EndMovement

    .balign 4, 0
_01F0:
    MoveAction_00D 3
    MoveAction_045
    EndMovement

    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 13
    .byte 0
    .byte 4
    .byte 0
    .byte 14
    .byte 0
    .byte 2
    .byte 0
    .byte 13
    .byte 0
    .byte 5
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 13
    .byte 0
    .byte 5
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 13
    .byte 0
    .byte 3
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 13
    .byte 0
    .byte 1
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 62
    .byte 0
    .byte 1
    .byte 0
    .byte 39
    .byte 0
    .byte 1
    .byte 0
    .byte 62
    .byte 0
    .byte 1
    .byte 0
    .byte 38
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 13
    .byte 0
    .byte 3
    .byte 0
    .byte 69
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 12
    .byte 0
    .byte 4
    .byte 0
    .byte 15
    .byte 0
    .byte 2
    .byte 0
    .byte 12
    .byte 0
    .byte 4
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 39
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 62
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0298:
    MoveAction_010
    EndMovement

    .balign 4, 0
_02A0:
    MoveAction_00F
    MoveAction_022
    EndMovement

    .balign 4, 0
_02AC:
    MoveAction_00E
    MoveAction_021
    EndMovement

    .balign 4, 0
_02B8:
    MoveAction_026
    EndMovement

    .balign 4, 0
_02C0:
    MoveAction_04B
    MoveAction_010 3
    MoveAction_03F 3
    MoveAction_026
    MoveAction_03F
    MoveAction_024
    MoveAction_03F 2
    MoveAction_011 3
    MoveAction_026
    EndMovement

    .balign 4, 0
_02E8:
    MoveAction_04B
    EndMovement

    .balign 4, 0
_02F0:
    MoveAction_026 4
    EndMovement

    .balign 4, 0
_02F8:
    MoveAction_011 2
    EndMovement

    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 39
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 63
    .byte 0
    .byte 7
    .byte 0
    .byte 15
    .byte 0
    .byte 1
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 62
    .byte 0
    .byte 1
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 13
    .byte 0
    .byte 1
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 37
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 13
    .byte 0
    .byte 1
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 13
    .byte 0
    .byte 3
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 13
    .byte 0
    .byte 6
    .byte 0
    .byte 69
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0368:
    MoveAction_00C
    EndMovement

    .balign 4, 0
_0370:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0378:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0380:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0388:
    MoveAction_03F 4
    MoveAction_020
    MoveAction_03F 9
    MoveAction_023
    EndMovement

    .balign 4, 0
_039C:
    MoveAction_021
    EndMovement

    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 63
    .byte 0
    .byte 5
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 2
    .byte 0
    .byte 35
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
    .byte 33
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
    .byte 33
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
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
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
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 13
    .byte 0
    .byte 4
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 13
    .byte 0
    .byte 6
    .byte 0
    .byte 69
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 16
    .byte 0
    .byte 6
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 18
    .byte 0
    .byte 7
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_0418:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 184
    ScrCmd_01C 1, _043D
    ScrCmd_01E 184
    ScrCmd_0CD 0
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_043D:
    ScrCmd_0CD 0
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_044B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _046A
    ScrCmd_016 _0476

_046A:
    ScrCmd_0CD 0
    ScrCmd_02C 10
    ScrCmd_016 _0482

_0476:
    ScrCmd_0CD 0
    ScrCmd_02C 11
    ScrCmd_016 _0482

_0482:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_048A:
    ScrCmd_002

_048C:
    ScrCmd_002

    .byte 0
    .byte 0
