    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _02E8-.-4
    .long _02FB-.-4
    .long _030E-.-4
    .short 0xFD13

_0012:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    GoToIfSet 0xAA5, _00E2
    GoToIfEq 0x400A, 1, _00E2
    ScrCmd_247 0x4000
    ScrCmd_0CD 0
    ScrCmd_0D6 1, 0x4000
    ScrCmd_02C 0
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0058
    GoTo _0063

_0058:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0063:
    ScrCmd_02C 2
    ScrCmd_034
    Call _0160
    GoTo _0074

_0074:
    ScrCmd_02C 3
    ScrCmd_1B7 0x800C, 4
    GoToIfEq 0x800C, 0, _00AA
    GoToIfEq 0x800C, 1, _00B3
    GoToIfEq 0x800C, 2, _00BC
    GoTo _00C5

_00AA:
    ScrCmd_02C 4
    GoTo _00CE

_00B3:
    ScrCmd_02C 5
    GoTo _00CE

_00BC:
    ScrCmd_02C 6
    GoTo _00CE

_00C5:
    ScrCmd_02C 7
    GoTo _00CE

_00CE:
    ScrCmd_034
    ScrCmd_049 0x662
    Call _00ED
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00E2:
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00ED:
    ScrCmd_1B7 0x800C, 100
    GoToIfLt 0x800C, 5, _0113
    GoToIfLt 0x800C, 30, _0124
    GoTo _0135

_0113:
    ScrCmd_1BA 30, 0x4000
    Call _0146
    ScrCmd_02C 8
    Return

_0124:
    ScrCmd_1BA 10, 0x4000
    Call _0146
    ScrCmd_02C 10
    Return

_0135:
    ScrCmd_1BA 5, 0x4000
    Call _0146
    ScrCmd_02C 11
    Return

_0146:
    ScrCmd_04B 0x662
    SetFlag 0xAA5
    SetVar 0x400A, 1
    ApplyMovement 1, _02DC
    WaitMovement
    Return

_0160:
    ScrCmd_069 0x8005, 0x8006
    GoToIfEq 0x8005, 11, _0193
    GoToIfEq 0x8005, 13, _01AB
    GoToIfEq 0x8006, 4, _01C3
    GoTo _01DB

_0193:
    ApplyMovement 0xFF, _026C
    ApplyMovement 2, _0210
    WaitMovement
    GoTo _01F3

_01AB:
    ApplyMovement 0xFF, _0280
    ApplyMovement 2, _0224
    WaitMovement
    GoTo _01F3

_01C3:
    ApplyMovement 0xFF, _0294
    ApplyMovement 2, _023C
    WaitMovement
    GoTo _01F3

_01DB:
    ApplyMovement 0xFF, _02AC
    ApplyMovement 2, _0250
    WaitMovement
    GoTo _01F3

_01F3:
    ApplyMovement 0, _02C4
    ApplyMovement 1, _02CC
    ApplyMovement 3, _02D4
    WaitMovement
    Return

    .balign 4, 0
_0210:
    MoveAction_00F 2
    MoveAction_00D 2
    MoveAction_00F 3
    MoveAction_022
    EndMovement

    .balign 4, 0
_0224:
    MoveAction_00D
    MoveAction_00F
    MoveAction_00D
    MoveAction_00F 4
    MoveAction_022
    EndMovement

    .balign 4, 0
_023C:
    MoveAction_00F 2
    MoveAction_00D 2
    MoveAction_00F 3
    MoveAction_022
    EndMovement

    .balign 4, 0
_0250:
    MoveAction_00F
    MoveAction_00D
    MoveAction_00F 2
    MoveAction_00D
    MoveAction_00F 2
    MoveAction_022
    EndMovement

    .balign 4, 0
_026C:
    MoveAction_00F 3
    MoveAction_00D 2
    MoveAction_00F 2
    MoveAction_021
    EndMovement

    .balign 4, 0
_0280:
    MoveAction_03F 2
    MoveAction_00D 2
    MoveAction_00F 3
    MoveAction_021
    EndMovement

    .balign 4, 0
_0294:
    MoveAction_00D
    MoveAction_00F 3
    MoveAction_00D 2
    MoveAction_00F
    MoveAction_021
    EndMovement

    .balign 4, 0
_02AC:
    MoveAction_03F 2
    MoveAction_00F 3
    MoveAction_00D
    MoveAction_00F
    MoveAction_021
    EndMovement

    .balign 4, 0
_02C4:
    MoveAction_00D
    EndMovement

    .balign 4, 0
_02CC:
    MoveAction_00F 3
    EndMovement

    .balign 4, 0
_02D4:
    MoveAction_00C 4
    EndMovement

    .balign 4, 0
_02DC:
    MoveAction_00C
    MoveAction_021
    EndMovement

_02E8:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_02FB:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_030E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
