    .include "macros/scrcmd.inc"

    .data

    .long _002E-.-4
    .long _0030-.-4
    .long _006C-.-4
    .long _00B0-.-4
    .long _00C3-.-4
    .long _00D6-.-4
    .long _00E9-.-4
    .long _00FC-.-4
    .long _0113-.-4
    .long _012A-.-4
    .long _0141-.-4
    .short 0xFD13

_002E:
    End

_0030:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_05E 7, _005C
    ScrCmd_05F
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_05E 8, _0064
    ScrCmd_05F
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_005C:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0064:
    MoveAction_022
    EndMovement

_006C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_011 0x40CF, 2
    ScrCmd_01C 4, _0099
    ScrCmd_02C 2
    ScrCmd_05E 2, _00A4
    ScrCmd_05F
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0099:
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_00A4:
    MoveAction_000
    MoveAction_03F 3
    EndMovement

_00B0:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00C3:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00D6:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00E9:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00FC:
    ScrCmd_036 12, 0, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_0113:
    ScrCmd_036 13, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_012A:
    ScrCmd_036 14, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_0141:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_31C 0x800C, 0x1EC
    ScrCmd_011 0x800C, 0xFF
    ScrCmd_01C 1, _019D
    ScrCmd_1C0 0x800C, 0x1EC
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _019D
    ScrCmd_07E 0x1D2, 1, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 5, _01A8
    ScrCmd_02C 9
    ScrCmd_028 0x8004, 0x1D2
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7E0
    ScrCmd_034
    ScrCmd_061
    End

_019D:
    ScrCmd_02C 11
    GoTo _01B3
    End

_01A8:
    ScrCmd_02C 10
    GoTo _01B3
    End

_01B3:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
