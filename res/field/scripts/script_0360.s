    .include "macros/scrcmd.inc"

    .data

    .long _0006-.-4
    .short 0xFD13

_0006:
    ScrCmd_060
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_066 0x8004, 0x8005
    ApplyMovement 241, _0228
    WaitMovement
    ScrCmd_003 15, 0x800C
    ApplyMovement 2, _01C4
    WaitMovement
    ScrCmd_0CE 0
    ScrCmd_02C 0
    ScrCmd_034
    ApplyMovement 1, _01EC
    WaitMovement
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    CallIfEq 0x8004, 14, _0136
    CallIfEq 0x8004, 15, _0154
    ScrCmd_067
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    CallIfEq 0x8004, 14, _0168
    CallIfEq 0x8004, 15, _0174
    ScrCmd_049 0x603
    ScrCmd_065 1
    ScrCmd_04B 0x603
    ScrCmd_069 0x8004, 0x8005
    CallIfEq 0x8004, 14, _0180
    CallIfEq 0x8004, 15, _018C
    ApplyMovement 2, _01CC
    WaitMovement
    ScrCmd_0CE 0
    ScrCmd_02C 3
    ScrCmd_034
    ApplyMovement 2, _01D4
    WaitMovement
    ScrCmd_02C 4
    ScrCmd_034
    ScrCmd_003 30, 0x800C
    ApplyMovement 2, _01CC
    WaitMovement
    ScrCmd_02C 5
    ScrCmd_034
    ApplyMovement 2, _01DC
    ApplyMovement 0xFF, _01B8
    WaitMovement
    ScrCmd_049 0x603
    ScrCmd_065 2
    ScrCmd_04B 0x603
    SetFlag 0x98F
    ClearFlag 0x223
    SetVar 0x40D3, 2
    ClearFlag 0x198
    SetFlag 0x194
    SetFlag 0x175
    SetFlag 0x28D
    SetFlag 0x28C
    ClearFlag 168
    ScrCmd_061
    End

_0136:
    ApplyMovement 1, _01F4
    ApplyMovement 241, _0230
    WaitMovement
    ApplyMovement 0xFF, _01B0
    WaitMovement
    Return

_0154:
    ApplyMovement 1, _0204
    ApplyMovement 241, _0230
    WaitMovement
    Return

_0168:
    ApplyMovement 1, _0210
    WaitMovement
    Return

_0174:
    ApplyMovement 1, _0218
    WaitMovement
    Return

_0180:
    ApplyMovement 0xFF, _0198
    WaitMovement
    Return

_018C:
    ApplyMovement 0xFF, _01A4
    WaitMovement
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
