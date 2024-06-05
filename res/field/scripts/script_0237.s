    .include "macros/scrcmd.inc"

    .data

    .long _0022-.-4
    .long _0184-.-4
    .long _01BA-.-4
    .long _01CD-.-4
    .long _01E0-.-4
    .long _01F3-.-4
    .long _0206-.-4
    .long _0217-.-4
    .short 0xFD13

_0022:
    ScrCmd_060
    ClearFlag 0x2BA
    ScrCmd_064 1
    ScrCmd_1B2 1
    ScrCmd_186 0, 32, 34
    ScrCmd_189 0, 0
    ScrCmd_188 0, 14
    ClearFlag 0x1CD
    ScrCmd_064 0
    ScrCmd_066 30, 30
    ApplyMovement 241, _016C
    WaitMovement
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    SetVar 0x40C3, 2
    ApplyMovement 0, _0144
    WaitMovement
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_20D 4, 0x800C
    ScrCmd_003 30, 0x800C
_0088:
    ScrCmd_20D 6, 0x800C
    GoToIfEq 0x800C, 0, _0088
    ScrCmd_065 1
    ApplyMovement 241, _0178
    WaitMovement
    ScrCmd_067
    ApplyMovement 0xFF, _013C
    ApplyMovement 0, _014C
    WaitMovement
    ScrCmd_02C 4
    ScrCmd_034
    ApplyMovement 0, _0154
    WaitMovement
    ScrCmd_02C 5
    SetFlag 0x29E
    GoTo _00DA
    End

_00DA:
    ScrCmd_02C 6
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _00FD
    GoToIfEq 0x800C, 1, _0130
    End

_00FD:
    ScrCmd_02C 7
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_320
    ScrCmd_0A1
    ScrCmd_328 1
    ScrCmd_0BE 0x23D, 0, 55, 40, 1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    End

_0130:
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_013C:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0144:
    MoveAction_00C 4
    EndMovement

    .balign 4, 0
_014C:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0154:
    MoveAction_023
    MoveAction_03F 2
    MoveAction_021
    MoveAction_03F
    MoveAction_020
    EndMovement

    .balign 4, 0
_016C:
    MoveAction_00F
    MoveAction_00C 5
    EndMovement

    .balign 4, 0
_0178:
    MoveAction_00D 5
    MoveAction_00E
    EndMovement

_0184:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 6
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _00FD
    GoToIfEq 0x800C, 1, _01AF
    End

_01AF:
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01BA:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01CD:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01E0:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01F3:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0206:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 18
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0217:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 19
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End
