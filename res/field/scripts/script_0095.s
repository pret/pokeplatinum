    .include "macros/scrcmd.inc"

    .data

    .long _000E-.-4
    .long _0078-.-4
    .long _00B6-.-4
    .short 0xFD13

_000E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_15B 4, 0x800C
    GoToIfEq 0x800C, 1, _006A
    ScrCmd_02C 1
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _004C
    GoToIfEq 0x800C, 1, _0057
    End

_004C:
    ScrCmd_02C 2
    GoTo _0062
    End

_0057:
    ScrCmd_02C 3
    GoTo _0062
    End

_0062:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_006A:
    ScrCmd_0CD 0
    ScrCmd_02C 4
    GoTo _0062
    End

_0078:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_15B 4, 0x800C
    GoToIfEq 0x800C, 1, _00A2
    ScrCmd_0CE 0
    ScrCmd_0CE 1
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00A2:
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_0CE 2
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00B6:
    ScrCmd_060
    ApplyMovement 0, _00DC
    WaitMovement
    ScrCmd_02C 0
    ScrCmd_034
    ApplyMovement 0, _00F0
    WaitMovement
    SetVar 0x40D1, 1
    ScrCmd_061
    End

    .balign 4, 0
_00DC:
    MoveAction_04B
    MoveAction_03F
    MoveAction_00E
    MoveAction_00D
    EndMovement

    .balign 4, 0
_00F0:
    MoveAction_00C
    MoveAction_00F
    MoveAction_021
    EndMovement
