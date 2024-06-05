    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _0036-.-4
    .long _01A0-.-4
    .long _0023-.-4
    .short 0xFD13

_0012:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0023:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0036:
    ScrCmd_060
    ScrCmd_069 0x8004, 0x8005
    SetVar 0x40A9, 2
    ScrCmd_186 5, 20, 25
    ScrCmd_188 5, 16
    ScrCmd_189 5, 2
    ClearFlag 0x29F
    ScrCmd_064 5
    ApplyMovement 5, _0148
    WaitMovement
    ScrCmd_014 0x807
    CallIfEq 0x8005, 24, _0109
    CallIfEq 0x8005, 25, _011D
    CallIfEq 0x8005, 26, _0131
    ScrCmd_02C 0
    ApplyMovement 5, _0184
    WaitMovement
    ScrCmd_02C 1
    ApplyMovement 5, _018C
    WaitMovement
    ScrCmd_02C 2
    SetVar 0x8004, 68
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _00F2
    ScrCmd_014 0x7FC
    Call _00E5
    ScrCmd_014 0x808
    ScrCmd_061
    End

_00E5:
    SetFlag 0x160
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    Return

_00F2:
    Call _0100
    ScrCmd_014 0x808
    ScrCmd_061
    End

_0100:
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    Return

_0109:
    ApplyMovement 5, _015C
    ApplyMovement 0xFF, _0194
    WaitMovement
    Return

_011D:
    ApplyMovement 5, _016C
    ApplyMovement 0xFF, _0194
    WaitMovement
    Return

_0131:
    ApplyMovement 5, _0174
    ApplyMovement 0xFF, _0194
    WaitMovement
    Return

    .balign 4, 0
_0148:
    MoveAction_012 4
    MoveAction_03F
    MoveAction_04B
    MoveAction_03F
    EndMovement

    .balign 4, 0
_015C:
    MoveAction_012 4
    MoveAction_010
    MoveAction_026
    EndMovement

    .balign 4, 0
_016C:
    MoveAction_012 4
    EndMovement

    .balign 4, 0
_0174:
    MoveAction_012 4
    MoveAction_011
    MoveAction_026
    EndMovement

    .balign 4, 0
_0184:
    MoveAction_021
    EndMovement

    .balign 4, 0
_018C:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0194:
    MoveAction_03F 4
    MoveAction_023
    EndMovement

_01A0:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    GoToIfUnset 0x160, _01BE
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01BE:
    ScrCmd_02C 5
    SetVar 0x8004, 68
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _01F0
    ScrCmd_014 0x7FC
    Call _00E5
    ScrCmd_061
    End

_01F0:
    Call _0100
    ScrCmd_061
    End

    .byte 0
    .byte 0
