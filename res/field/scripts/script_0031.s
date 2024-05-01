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
    GoTo _00D8
    End

_00A4:
    ScrCmd_05E 1, _0114
    ScrCmd_05E 0xFF, _0138
    ScrCmd_05F
    GoTo _00F2
    End

_00BE:
    ScrCmd_05E 1, _0124
    ScrCmd_05E 0xFF, _0148
    ScrCmd_05F
    GoTo _00F2
    End

_00D8:
    ScrCmd_05E 1, _0124
    ScrCmd_05E 0xFF, _0148
    ScrCmd_05F
    GoTo _00F2
    End

_00F2:
    ScrCmd_049 0x603
    ScrCmd_065 1
    ScrCmd_04B 0x603
    ScrCmd_028 0x40E7, 1
    SetFlag 241
    ClearFlag 0x1F6
    ClearFlag 0x1F5
    ScrCmd_061
    End

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
    End

_0167:
    End

_0169:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_017C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_018F:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01A2:
    End

_01A4:
    End

_01A6:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 0x112
    ScrCmd_01C 1, _02A8
    CheckFlag 0x10C
    ScrCmd_01C 1, _02BD
    ScrCmd_02C 9
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _01E7
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _02D3
    End

_01E7:
    ScrCmd_02C 10
    ScrCmd_034
    ScrCmd_0DE 0x800C
    ScrCmd_011 0x800C, 0x183
    ScrCmd_01C 1, _0220
    ScrCmd_011 0x800C, 0x186
    ScrCmd_01C 1, _022E
    GoTo _0212
    End

_0212:
    ScrCmd_0E5 0x156, 0
    GoTo _023C
    End

_0220:
    ScrCmd_0E5 0x156, 0
    GoTo _023C
    End

_022E:
    ScrCmd_0E5 0x156, 0
    GoTo _023C
    End

_023C:
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _02DE
    SetFlag 0x10C
    CheckFlag 0x10D
    ScrCmd_01C 1, _0274
    CheckFlag 0x10D
    ScrCmd_01C 0, _0269
    End

_0269:
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0274:
    ScrCmd_02C 13
    ScrCmd_028 0x8004, 17
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _02B3
    ScrCmd_014 0x7FC
    SetFlag 0x112
    GoTo _02A8
    End

_02A8:
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_02B3:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    End

_02BD:
    CheckFlag 0x10D
    ScrCmd_01C 1, _0274
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_02D3:
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_02DE:
    ScrCmd_0EB
    ScrCmd_061
    End

_02E4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 0x10D
    ScrCmd_01C 1, _039C
    ScrCmd_02C 15
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _031A
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _03A7
    End

_031A:
    ScrCmd_02C 16
    ScrCmd_034
    ScrCmd_0DE 0x800C
    ScrCmd_011 0x800C, 0x183
    ScrCmd_01C 1, _0353
    ScrCmd_011 0x800C, 0x186
    ScrCmd_01C 1, _0361
    GoTo _0345
    End

_0345:
    ScrCmd_0E5 0x159, 0
    GoTo _036F
    End

_0353:
    ScrCmd_0E5 0x159, 0
    GoTo _036F
    End

_0361:
    ScrCmd_0E5 0x159, 0
    GoTo _036F
    End

_036F:
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _03D3
    SetFlag 0x10D
    CheckFlag 0x10C
    ScrCmd_01C 1, _03BD
    CheckFlag 0x10C
    ScrCmd_01C 0, _03B2
    End

_039C:
    ScrCmd_02C 18
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03A7:
    ScrCmd_02C 17
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03B2:
    ScrCmd_02C 18
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03BD:
    CheckFlag 0x112
    ScrCmd_01C 1, _03B2
    ScrCmd_02C 19
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03D3:
    ScrCmd_0EB
    ScrCmd_061
    End

_03D9:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 20
    GoTo _03EA
    End

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
    GoTo _0496
    End

_045F:
    ScrCmd_02C 22
    GoTo _03EA
    End

_046A:
    ScrCmd_02C 23
    GoTo _03EA
    End

_0475:
    ScrCmd_02C 24
    GoTo _03EA
    End

_0480:
    ScrCmd_02C 25
    GoTo _03EA
    End

_048B:
    ScrCmd_02C 26
    GoTo _03EA
    End

_0496:
    ScrCmd_034
    ScrCmd_061
    End

_049C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 27
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
