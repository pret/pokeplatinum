    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _01CC-.-4
    .long _01F6-.-4
    .long _01E3-.-4
    .short 0xFD13

_0012:
    ScrCmd_060
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 0x2E3
    ScrCmd_01D 1, _00E7
    ScrCmd_05E 4, _0188
    ScrCmd_05E 3, _0154
    ScrCmd_05E 0xFF, _0100
    ScrCmd_05F
    ScrCmd_0CD 0
    ScrCmd_02C 5
    ScrCmd_034
    ScrCmd_05E 3, _0160
    ScrCmd_05F
    ScrCmd_003 15, 0x800C
    ScrCmd_0CE 1
    ScrCmd_02C 6
    ScrCmd_034
    ScrCmd_05E 4, _0194
    ScrCmd_05F
    ScrCmd_02C 7
    ScrCmd_0CE 1
    ScrCmd_02C 8
    ScrCmd_05E 4, _019C
    ScrCmd_05F
    ScrCmd_0CD 0
    ScrCmd_02C 9
    ScrCmd_034
    ScrCmd_05E 4, _01B8
    ScrCmd_05E 0xFF, _012C
    ScrCmd_05E 3, _0168
    ScrCmd_05F
    ScrCmd_065 4
    ScrCmd_05E 3, _0170
    ScrCmd_05E 0xFF, _0108
    ScrCmd_05F
    ScrCmd_003 5, 0x800C
    ScrCmd_0CE 1
    ScrCmd_02C 10
    ScrCmd_02C 11
    ScrCmd_034
    ScrCmd_05E 3, _0178
    ScrCmd_05E 0xFF, _0118
    ScrCmd_05F
    ScrCmd_065 3
    ScrCmd_028 0x408B, 1
    ScrCmd_061
    End

_00E7:
    ScrCmd_05E 0xFF, _00F4
    ScrCmd_05F
    ScrCmd_01B

    .balign 4, 0
_00F4:
    MoveAction_00E
    MoveAction_020
    EndMovement

    .balign 4, 0
_0100:
    MoveAction_000
    EndMovement

    .balign 4, 0
_0108:
    MoveAction_00F
    MoveAction_00C
    MoveAction_023
    EndMovement

    .balign 4, 0
_0118:
    MoveAction_03F
    MoveAction_021
    EndMovement

    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_012C:
    MoveAction_00E
    MoveAction_023
    MoveAction_03E
    MoveAction_021
    EndMovement

    .byte 63
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
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0154:
    MoveAction_021
    MoveAction_04B
    EndMovement

    .balign 4, 0
_0160:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0168:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0170:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0178:
    MoveAction_011 9
    EndMovement

    .byte 17
    .byte 0
    .byte 9
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0188:
    MoveAction_021
    MoveAction_04B
    EndMovement

    .balign 4, 0
_0194:
    MoveAction_023
    EndMovement

    .balign 4, 0
_019C:
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

    .balign 4, 0
_01B8:
    MoveAction_03F 2
    MoveAction_00D 9
    EndMovement

    .byte 13
    .byte 0
    .byte 9
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_01CC:
    ScrCmd_036 12, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_01E3:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01F6:
    ScrCmd_060
    ScrCmd_05E 11, _0280
    ScrCmd_05E 0xFF, _026C
    ScrCmd_05F
    ScrCmd_016 _0212
    End

_0212:
    ScrCmd_0CD 0
    ScrCmd_02C 0
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0243
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0238
    End

_0238:
    ScrCmd_02C 3
    ScrCmd_016 _0212
    End

_0243:
    ScrCmd_05E 11, _0290
    ScrCmd_05F
    ScrCmd_02C 1
    ScrCmd_05E 11, _0298
    ScrCmd_05F
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_028 0x4119, 1
    ScrCmd_061
    End

    .balign 4, 0
_026C:
    MoveAction_000
    EndMovement

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

    .balign 4, 0
_0280:
    MoveAction_021
    MoveAction_04B
    MoveAction_00D
    EndMovement

    .balign 4, 0
_0290:
    MoveAction_020
    EndMovement

    .balign 4, 0
_0298:
    MoveAction_021
    EndMovement
