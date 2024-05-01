    .include "macros/scrcmd.inc"

    .data

    .long _0006-.-4
    .short 0xFD13

_0006:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 152
    ScrCmd_01C 1, _0113
    Call _0119
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _0106
    CheckFlag 153
    ScrCmd_01C 1, _00B3
    CheckFlag 0x119
    ScrCmd_01C 1, _008B
    ScrCmd_0CD 0
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_05E 0, _0158
    ScrCmd_05F
    ScrCmd_02C 1
    ScrCmd_028 0x8004, 252
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _0091
    ScrCmd_014 0x7FC
    SetFlag 0x119
    ScrCmd_02C 2
    GoTo _009B
    End

_008B:
    ScrCmd_014 0x26E0
    End

_0091:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    End

_009B:
    ScrCmd_21C 3
    ScrCmd_21C 4
    ScrCmd_21C 5
    SetFlag 153
    ScrCmd_02C 3
    GoTo _0150
    End

_00B3:
    CompareVarToValue 0x405E, 3
    ScrCmd_01D 1, _00E5
    CompareVarToValue 0x405F, 3
    ScrCmd_01D 1, _00F0
    CompareVarToValue 0x4060, 3
    ScrCmd_01D 1, _00FB
    ScrCmd_02C 4
    GoTo _0150
    End

_00E5:
    ScrCmd_028 0x405E, 0
    ScrCmd_21C 3
    Return

_00F0:
    ScrCmd_028 0x405F, 0
    ScrCmd_21C 4
    Return

_00FB:
    ScrCmd_028 0x4060, 0
    ScrCmd_21C 5
    Return

_0106:
    ScrCmd_02C 5
    SetFlag 152
    ScrCmd_014 0x26E1
    End

_0113:
    ScrCmd_014 0x26E0
    End

_0119:
    CompareVarToValue 0x405E, 1
    ScrCmd_01C 5, _0148
    CompareVarToValue 0x405F, 1
    ScrCmd_01C 5, _0148
    CompareVarToValue 0x4060, 1
    ScrCmd_01C 5, _0148
    ScrCmd_028 0x800C, 1
    Return

_0148:
    ScrCmd_028 0x800C, 0
    Return

_0150:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_0158:
    MoveAction_04B
    EndMovement
