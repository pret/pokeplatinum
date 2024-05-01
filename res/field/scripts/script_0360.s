    .include "macros/scrcmd.inc"

    .data

    .long _0006-.-4
    .short 0xFD13

_0006:
    ScrCmd_060
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_066 0x8004, 0x8005
    ScrCmd_05E 241, _0228
    ScrCmd_05F
    ScrCmd_003 15, 0x800C
    ScrCmd_05E 2, _01C4
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_05E 1, _01EC
    ScrCmd_05F
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 14
    ScrCmd_01D 1, _0136
    ScrCmd_011 0x8004, 15
    ScrCmd_01D 1, _0154
    ScrCmd_067
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 14
    ScrCmd_01D 1, _0168
    ScrCmd_011 0x8004, 15
    ScrCmd_01D 1, _0174
    ScrCmd_049 0x603
    ScrCmd_065 1
    ScrCmd_04B 0x603
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 14
    ScrCmd_01D 1, _0180
    ScrCmd_011 0x8004, 15
    ScrCmd_01D 1, _018C
    ScrCmd_05E 2, _01CC
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 3
    ScrCmd_034
    ScrCmd_05E 2, _01D4
    ScrCmd_05F
    ScrCmd_02C 4
    ScrCmd_034
    ScrCmd_003 30, 0x800C
    ScrCmd_05E 2, _01CC
    ScrCmd_05F
    ScrCmd_02C 5
    ScrCmd_034
    ScrCmd_05E 2, _01DC
    ScrCmd_05E 0xFF, _01B8
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_065 2
    ScrCmd_04B 0x603
    SetFlag 0x98F
    ClearFlag 0x223
    ScrCmd_028 0x40D3, 2
    ClearFlag 0x198
    SetFlag 0x194
    SetFlag 0x175
    SetFlag 0x28D
    SetFlag 0x28C
    ClearFlag 168
    ScrCmd_061
    End

_0136:
    ScrCmd_05E 1, _01F4
    ScrCmd_05E 241, _0230
    ScrCmd_05F
    ScrCmd_05E 0xFF, _01B0
    ScrCmd_05F
    Return

_0154:
    ScrCmd_05E 1, _0204
    ScrCmd_05E 241, _0230
    ScrCmd_05F
    Return

_0168:
    ScrCmd_05E 1, _0210
    ScrCmd_05F
    Return

_0174:
    ScrCmd_05E 1, _0218
    ScrCmd_05F
    Return

_0180:
    ScrCmd_05E 0xFF, _0198
    ScrCmd_05F
    Return

_018C:
    ScrCmd_05E 0xFF, _01A4
    ScrCmd_05F
    Return

    .balign 4, 0
_0198:
    MoveAction_00C 5
    MoveAction_00F 2
    EndMovement

    .balign 4, 0
_01A4:
    MoveAction_00C 5
    MoveAction_00F
    EndMovement

    .balign 4, 0
_01B0:
    MoveAction_023
    EndMovement

    .balign 4, 0
_01B8:
    MoveAction_03F
    MoveAction_021
    EndMovement

    .balign 4, 0
_01C4:
    MoveAction_020
    EndMovement

    .balign 4, 0
_01CC:
    MoveAction_022
    EndMovement

    .balign 4, 0
_01D4:
    MoveAction_020
    EndMovement

    .balign 4, 0
_01DC:
    MoveAction_00D 2
    MoveAction_00E 2
    MoveAction_00D 3
    EndMovement

    .balign 4, 0
_01EC:
    MoveAction_021
    EndMovement

    .balign 4, 0
_01F4:
    MoveAction_00E 2
    MoveAction_00D 6
    MoveAction_022
    EndMovement

    .balign 4, 0
_0204:
    MoveAction_00E 2
    MoveAction_00D 5
    EndMovement

    .balign 4, 0
_0210:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0218:
    MoveAction_00E
    MoveAction_00D
    MoveAction_021
    EndMovement

    .balign 4, 0
_0228:
    MoveAction_00C 5
    EndMovement

    .balign 4, 0
_0230:
    MoveAction_00D 5
    EndMovement
