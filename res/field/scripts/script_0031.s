    .include "macros/scrcmd.inc"

    .data

    .long _0032-.-4
    .long _0154-.-4
    .long _0167-.-4
    .long _0169-.-4
    .long _017C-.-4
    .long _018F-.-4
    .long _01A2-.-4
    .long _01A4-.-4
    .long _01A6-.-4
    .long _02E4-.-4
    .long _03D9-.-4
    .long _049C-.-4
    .short 0xFD13

_0032:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_0CD 0
    ScrCmd_0CE 1
    ScrCmd_02C 0
    ScrCmd_04E 0x486
    ScrCmd_0CD 0
    ScrCmd_02C 1
    ScrCmd_04F
    ScrCmd_07C 0x1CB, 1, 0x800C
    ScrCmd_0CD 0
    ScrCmd_0CE 1
    ScrCmd_02C 2
    ScrCmd_028 0x8004, 0x1BA
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FC
    ScrCmd_0CE 1
    ScrCmd_02C 3
    ScrCmd_034
    ScrCmd_1BD 0x800C
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _00A4
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _00BE
    ScrCmd_016 _00D8
    ScrCmd_002

_00A4:
    ScrCmd_05E 1, _0114
    ScrCmd_05E 0xFF, _0138
    ScrCmd_05F
    ScrCmd_016 _00F2
    ScrCmd_002

_00BE:
    ScrCmd_05E 1, _0124
    ScrCmd_05E 0xFF, _0148
    ScrCmd_05F
    ScrCmd_016 _00F2
    ScrCmd_002

_00D8:
    ScrCmd_05E 1, _0124
    ScrCmd_05E 0xFF, _0148
    ScrCmd_05F
    ScrCmd_016 _00F2
    ScrCmd_002

_00F2:
    ScrCmd_049 0x603
    ScrCmd_065 1
    ScrCmd_04B 0x603
    ScrCmd_028 0x40E7, 1
    ScrCmd_01E 241
    ScrCmd_01F 0x1F6
    ScrCmd_01F 0x1F5
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0114:
    MoveAction_013
    MoveAction_011 8
    MoveAction_025
    EndMovement

    .balign 4, 0
_0124:
    MoveAction_011 4
    MoveAction_013
    MoveAction_011 4
    MoveAction_025
    EndMovement

    .balign 4, 0
_0138:
    MoveAction_03F
    MoveAction_023
    MoveAction_021
    EndMovement

    .balign 4, 0
_0148:
    MoveAction_03F
    MoveAction_021
    EndMovement

_0154:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0167:
    ScrCmd_002

_0169:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_017C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_018F:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_01A2:
    ScrCmd_002

_01A4:
    ScrCmd_002

_01A6:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 0x112
    ScrCmd_01C 1, _02A8
    ScrCmd_020 0x10C
    ScrCmd_01C 1, _02BD
    ScrCmd_02C 9
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _01E7
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _02D3
    ScrCmd_002

_01E7:
    ScrCmd_02C 10
    ScrCmd_034
    ScrCmd_0DE 0x800C
    ScrCmd_011 0x800C, 0x183
    ScrCmd_01C 1, _0220
    ScrCmd_011 0x800C, 0x186
    ScrCmd_01C 1, _022E
    ScrCmd_016 _0212
    ScrCmd_002

_0212:
    ScrCmd_0E5 0x156, 0
    ScrCmd_016 _023C
    ScrCmd_002

_0220:
    ScrCmd_0E5 0x156, 0
    ScrCmd_016 _023C
    ScrCmd_002

_022E:
    ScrCmd_0E5 0x156, 0
    ScrCmd_016 _023C
    ScrCmd_002

_023C:
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _02DE
    ScrCmd_01E 0x10C
    ScrCmd_020 0x10D
    ScrCmd_01C 1, _0274
    ScrCmd_020 0x10D
    ScrCmd_01C 0, _0269
    ScrCmd_002

_0269:
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0274:
    ScrCmd_02C 13
    ScrCmd_028 0x8004, 17
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _02B3
    ScrCmd_014 0x7FC
    ScrCmd_01E 0x112
    ScrCmd_016 _02A8
    ScrCmd_002

_02A8:
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_02B3:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_02BD:
    ScrCmd_020 0x10D
    ScrCmd_01C 1, _0274
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_02D3:
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_02DE:
    ScrCmd_0EB
    ScrCmd_061
    ScrCmd_002

_02E4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 0x10D
    ScrCmd_01C 1, _039C
    ScrCmd_02C 15
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _031A
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _03A7
    ScrCmd_002

_031A:
    ScrCmd_02C 16
    ScrCmd_034
    ScrCmd_0DE 0x800C
    ScrCmd_011 0x800C, 0x183
    ScrCmd_01C 1, _0353
    ScrCmd_011 0x800C, 0x186
    ScrCmd_01C 1, _0361
    ScrCmd_016 _0345
    ScrCmd_002

_0345:
    ScrCmd_0E5 0x159, 0
    ScrCmd_016 _036F
    ScrCmd_002

_0353:
    ScrCmd_0E5 0x159, 0
    ScrCmd_016 _036F
    ScrCmd_002

_0361:
    ScrCmd_0E5 0x159, 0
    ScrCmd_016 _036F
    ScrCmd_002

_036F:
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _03D3
    ScrCmd_01E 0x10D
    ScrCmd_020 0x10C
    ScrCmd_01C 1, _03BD
    ScrCmd_020 0x10C
    ScrCmd_01C 0, _03B2
    ScrCmd_002

_039C:
    ScrCmd_02C 18
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_03A7:
    ScrCmd_02C 17
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_03B2:
    ScrCmd_02C 18
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_03BD:
    ScrCmd_020 0x112
    ScrCmd_01C 1, _03B2
    ScrCmd_02C 19
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_03D3:
    ScrCmd_0EB
    ScrCmd_061
    ScrCmd_002

_03D9:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 20
    ScrCmd_016 _03EA
    ScrCmd_002

_03EA:
    ScrCmd_02C 21
    ScrCmd_040 7, 2, 0, 1, 0x800C
    ScrCmd_042 0, 0
    ScrCmd_042 1, 1
    ScrCmd_042 2, 2
    ScrCmd_042 3, 3
    ScrCmd_042 4, 4
    ScrCmd_042 5, 5
    ScrCmd_048 2
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _045F
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _046A
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _0475
    ScrCmd_011 0x8008, 3
    ScrCmd_01C 1, _0480
    ScrCmd_011 0x8008, 4
    ScrCmd_01C 1, _048B
    ScrCmd_016 _0496
    ScrCmd_002

_045F:
    ScrCmd_02C 22
    ScrCmd_016 _03EA
    ScrCmd_002

_046A:
    ScrCmd_02C 23
    ScrCmd_016 _03EA
    ScrCmd_002

_0475:
    ScrCmd_02C 24
    ScrCmd_016 _03EA
    ScrCmd_002

_0480:
    ScrCmd_02C 25
    ScrCmd_016 _03EA
    ScrCmd_002

_048B:
    ScrCmd_02C 26
    ScrCmd_016 _03EA
    ScrCmd_002

_0496:
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_049C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 27
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .byte 0
    .byte 0
    .byte 0
