    .include "macros/scrcmd.inc"

    .data

    .long _000E-.-4
    .long _0014-.-4
    .long _007B-.-4
    .short 0xFD13

_000E:
    SetFlag 0x9CF
    End

_0014:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_15B 0, 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _003A
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_003A:
    CheckFlag 147
    ScrCmd_01C 1, _0064
    ScrCmd_02C 0
    ScrCmd_028 0x8004, 0x1A9
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FC
    Call _006F
    GoTo _0064

_0064:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_006F:
    SetFlag 147
    ScrCmd_028 0x4093, 2
    Return

_007B:
    ScrCmd_060
    ScrCmd_05E 10, _00C0
    ScrCmd_05E 0xFF, _00B4
    ScrCmd_05F
    ScrCmd_02C 0
    ScrCmd_028 0x8004, 0x1A9
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FC
    Call _006F
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_00B4:
    MoveAction_03F
    MoveAction_020
    EndMovement

    .balign 4, 0
_00C0:
    MoveAction_021
    MoveAction_04B
    MoveAction_00D
    EndMovement
