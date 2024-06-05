    .include "macros/scrcmd.inc"

    .data

    .long _000E-.-4
    .long _0021-.-4
    .long _0034-.-4
    .short 0xFD13

_000E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0021:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0034:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_07E 0x1B8, 1, 0x800C
    GoToIfEq 0x800C, 1, _005C
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_005C:
    ScrCmd_02C 3
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _007F
    GoToIfEq 0x800C, 1, _00B3
    End

_007F:
    ScrCmd_0CD 0
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_04B 0x5DC
    ScrCmd_049 0x608
    ApplyMovement 6, _00BC
    ApplyMovement 7, _00C4
    WaitMovement
    SetFlag 0x227
    ScrCmd_065 6
    ScrCmd_065 7
    ScrCmd_034
    ScrCmd_061
    End

_00B3:
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_00BC:
    MoveAction_012
    EndMovement

    .balign 4, 0
_00C4:
    MoveAction_013
    EndMovement
