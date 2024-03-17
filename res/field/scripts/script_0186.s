    .include "macros/scrcmd.inc"

    .data

    .long _006D-.-4
    .long _0128-.-4
    .long _013E-.-4
    .long _0154-.-4
    .long _0022-.-4
    .long _0310-.-4
    .long _0323-.-4
    .long _0336-.-4
    .short 0xFD13

_0022:
    ScrCmd_01E 0x9F4
    ScrCmd_01E 0x282
    ScrCmd_01E 0x283
    ScrCmd_01E 0x284
    ScrCmd_01E 0x285
    ScrCmd_01F 0x286
    ScrCmd_01F 0x287
    ScrCmd_01F 0x288
    ScrCmd_01F 0x289
    ScrCmd_01F 176
    ScrCmd_01F 177
    ScrCmd_01F 178
    ScrCmd_01F 179
    ScrCmd_020 175
    ScrCmd_01C 1, _0063
    ScrCmd_002

_0063:
    ScrCmd_186 0, 12, 3
    ScrCmd_002

_006D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 175
    ScrCmd_01C 1, _00F7
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_04E 0x489
    ScrCmd_04F
    ScrCmd_1BD 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00B8
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 1, _00C8
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _00D8
    ScrCmd_002

_00B8:
    ScrCmd_05E 0, _0104
    ScrCmd_05F
    ScrCmd_016 _00E8

_00C8:
    ScrCmd_05E 0, _0110
    ScrCmd_05F
    ScrCmd_016 _00E8

_00D8:
    ScrCmd_05E 0, _011C
    ScrCmd_05F
    ScrCmd_016 _00E8

_00E8:
    ScrCmd_01E 175
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00F7:
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0104:
    MoveAction_00F
    MoveAction_021
    EndMovement

    .balign 4, 0
_0110:
    MoveAction_00E
    MoveAction_023
    EndMovement

    .balign 4, 0
_011C:
    MoveAction_00F
    MoveAction_022
    EndMovement

_0128:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_014 0x7E3
    ScrCmd_035
    ScrCmd_147 1
    ScrCmd_061
    ScrCmd_002

_013E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_014 0x7E3
    ScrCmd_035
    ScrCmd_148 18
    ScrCmd_061
    ScrCmd_002

_0154:
    ScrCmd_060
    ScrCmd_01F 0x21D
    ScrCmd_064 5
    ScrCmd_014 0x7FA
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 10
    ScrCmd_01C 1, _0191
    ScrCmd_011 0x8004, 11
    ScrCmd_01C 1, _01A1
    ScrCmd_011 0x8004, 12
    ScrCmd_01C 1, _01B1
    ScrCmd_002

_0191:
    ScrCmd_05E 5, _02C0
    ScrCmd_05F
    ScrCmd_016 _01C1

_01A1:
    ScrCmd_05E 5, _02D0
    ScrCmd_05F
    ScrCmd_016 _01C1

_01B1:
    ScrCmd_05E 5, _02D8
    ScrCmd_05F
    ScrCmd_016 _01C1

_01C1:
    ScrCmd_05E 0xFF, _02B8
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_0DE 0x800C
    ScrCmd_011 0x800C, 0x183
    ScrCmd_01C 1, _0203
    ScrCmd_011 0x800C, 0x186
    ScrCmd_01C 1, _020F
    ScrCmd_016 _01F7

_01F7:
    ScrCmd_0E5 0x1DF, 0
    ScrCmd_016 _021B

_0203:
    ScrCmd_0E5 0x1E0, 0
    ScrCmd_016 _021B

_020F:
    ScrCmd_0E5 0x1E1, 0
    ScrCmd_016 _021B

_021B:
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _02AC
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 10
    ScrCmd_01C 1, _0266
    ScrCmd_011 0x8004, 11
    ScrCmd_01C 1, _0276
    ScrCmd_011 0x8004, 12
    ScrCmd_01C 1, _0286
    ScrCmd_002

_0266:
    ScrCmd_05E 5, _02E8
    ScrCmd_05F
    ScrCmd_016 _0296

_0276:
    ScrCmd_05E 5, _02F8
    ScrCmd_05F
    ScrCmd_016 _0296

_0286:
    ScrCmd_05E 5, _0300
    ScrCmd_05F
    ScrCmd_016 _0296

_0296:
    ScrCmd_049 0x603
    ScrCmd_065 5
    ScrCmd_04B 0x603
    ScrCmd_028 0x40EF, 1
    ScrCmd_061
    ScrCmd_002

_02AC:
    ScrCmd_01E 0x21D
    ScrCmd_0EB
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_02B8:
    MoveAction_025
    EndMovement

    .balign 4, 0
_02C0:
    MoveAction_010 3
    MoveAction_012
    MoveAction_010 3
    EndMovement

    .balign 4, 0
_02D0:
    MoveAction_010 6
    EndMovement

    .balign 4, 0
_02D8:
    MoveAction_010 3
    MoveAction_013
    MoveAction_010 3
    EndMovement

    .balign 4, 0
_02E8:
    MoveAction_011 3
    MoveAction_013
    MoveAction_011 3
    EndMovement

    .balign 4, 0
_02F8:
    MoveAction_011 6
    EndMovement

    .balign 4, 0
_0300:
    MoveAction_011 3
    MoveAction_012
    MoveAction_011 3
    EndMovement

_0310:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0323:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0336:
    ScrCmd_028 0x8007, 3
    ScrCmd_014 0x7D2
    ScrCmd_002

    .byte 0
    .byte 0
