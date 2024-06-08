    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    GoToIfSet 210, _00C7
    GoToIfSet 232, _004F
    ScrCmd_07E 0x1A8, 1, 0x800C
    GoToIfEq 0x800C, 1, _0044
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0044:
    ScrCmd_02C 1
    GoTo _004F
    End

_004F:
    ApplyMovement 0, _00D4
    WaitMovement
    ScrCmd_02C 2
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _007C
    GoToIfEq 0x800C, 1, _00B8
    End

_007C:
    ScrCmd_02C 3
    SetVar 0x8004, 75
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _00AE
    SetFlag 210
    ScrCmd_014 0x7E0
    ScrCmd_034
    ScrCmd_061
    End

_00AE:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    End

_00B8:
    SetFlag 232
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00C7:
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_00D4:
    MoveAction_04B
    EndMovement
