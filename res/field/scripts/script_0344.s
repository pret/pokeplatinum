    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0012
    ScriptEntry _012C
    ScriptEntry _01C4
    ScriptEntry _01D5
    .short 0xFD13

_0012:
    ScrCmd_060
    ApplyMovement 0, _00E8
    WaitMovement
    ScrCmd_02C 0
    ScrCmd_034
    ApplyMovement 0, _00F0
    WaitMovement
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    GoToIfEq 0x8004, 8, _0054
    GoToIfEq 0x8004, 9, _0064
    End

_0054:
    ApplyMovement 0, _00F8
    WaitMovement
    GoTo _0074

_0064:
    ApplyMovement 0, _0100
    WaitMovement
    GoTo _0074

_0074:
    ScrCmd_0E5 0x193, 0
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _00E1
    ScrCmd_02C 2
    SetVar 0x8004, 1
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    CallIfEq 0x800C, 1, _00DB
    ScrCmd_02C 3
    ScrCmd_034
    ApplyMovement 0, _0110
    WaitMovement
    ScrCmd_02C 4
    ScrCmd_034
    ApplyMovement 0, _0124
    WaitMovement
    ScrCmd_065 0
    SetVar 0x40D6, 1
    ScrCmd_061
    End

_00DB:
    ScrCmd_014 0x7FC
    Return

_00E1:
    ScrCmd_0EB
    ScrCmd_061
    End

    .balign 4, 0
_00E8:
    MoveAction_021
    EndMovement

    .balign 4, 0
_00F0:
    MoveAction_00D
    EndMovement

    .balign 4, 0
_00F8:
    MoveAction_00D
    EndMovement

    .balign 4, 0
_0100:
    MoveAction_00D
    MoveAction_00F
    MoveAction_021
    EndMovement

    .balign 4, 0
_0110:
    MoveAction_00C
    MoveAction_00F 4
    MoveAction_00C 3
    MoveAction_021
    EndMovement

    .balign 4, 0
_0124:
    MoveAction_00F 7
    EndMovement

_012C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_07E 0x1B8, 1, 0x800C
    GoToIfEq 0x800C, 1, _0154
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0154:
    ScrCmd_02C 6
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0177
    GoToIfEq 0x800C, 1, _01AB
    End

_0177:
    ScrCmd_0CD 0
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_04B 0x5DC
    ScrCmd_049 0x608
    ApplyMovement 1, _01B4
    ApplyMovement 2, _01BC
    WaitMovement
    SetFlag 0x226
    ScrCmd_065 1
    ScrCmd_065 2
    ScrCmd_034
    ScrCmd_061
    End

_01AB:
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_01B4:
    MoveAction_012
    EndMovement

    .balign 4, 0
_01BC:
    MoveAction_013
    EndMovement

_01C4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01D5:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 9
    GoTo _01E6
    End

_01E6:
    ScrCmd_02C 10
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_29D 0x10C, 0
    ScrCmd_29D 0x10D, 1
    ScrCmd_29D 0x10E, 2
    ScrCmd_29D 0x10F, 3
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0240
    GoToIfEq 0x8008, 1, _024B
    GoToIfEq 0x8008, 2, _0256
    GoTo _0261
    End

_0240:
    ScrCmd_02C 11
    GoTo _01E6
    End

_024B:
    ScrCmd_02C 12
    GoTo _01E6
    End

_0256:
    ScrCmd_02C 13
    GoTo _01E6
    End

_0261:
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
