    .include "macros/scrcmd.inc"

    .data

    .long _0006-.-4
    .short 0xFD13

_0006:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_11C 0x40CE
    SetVar 0x8008, 0x40CE
    GoToIfEq 0x8008, 0, _0068
    GoToIfEq 0x8008, 1, _0072
    GoToIfEq 0x8008, 2, _007C
    GoToIfEq 0x8008, 3, _0086
    GoToIfEq 0x8008, 4, _0090
    GoToIfEq 0x8008, 5, _009A
    End

_0068:
    ScrCmd_347 0, 5
    GoTo _00A6

_0072:
    ScrCmd_347 0, 4
    GoTo _00A6

_007C:
    ScrCmd_347 0, 3
    GoTo _00A6

_0086:
    ScrCmd_347 0, 2
    GoTo _00A6

_0090:
    ScrCmd_347 0, 1
    GoTo _00A6

_009A:
    ScrCmd_347 0, 0
    GoTo _00A6
    End

_00A6:
    ScrCmd_11D 20, 1, 0x40CE, 0x40CE
    ScrCmd_02C 0
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 120, 0
    ScrCmd_042 119, 1
    ScrCmd_042 118, 2
    ScrCmd_042 117, 3
    ScrCmd_042 116, 4
    ScrCmd_042 121, 5
    ScrCmd_042 124, 6
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _02BC
    GoToIfEq 0x8008, 1, _026D
    GoToIfEq 0x8008, 2, _021E
    GoToIfEq 0x8008, 3, _01CF
    GoToIfEq 0x8008, 4, _0180
    GoToIfEq 0x8008, 5, _0131
    GoTo _03F6

_0131:
    ScrCmd_003 1, 0x800C
    ScrCmd_11C 0x40CE
    ScrCmd_11B 0x236, 1, 18, 2, 1
    GoToIfEq 0x40CE, 5, _03DF
    CallIfGt 0x40CE, 5, _030B
    CallIfLt 0x40CE, 5, _0316
    Call _0321
    SetVar 0x40CE, 5
    GoTo _033F

_0180:
    ScrCmd_003 1, 0x800C
    ScrCmd_11C 0x40CE
    ScrCmd_11B 137, 2, 18, 2, 1
    GoToIfEq 0x40CE, 4, _03DF
    CallIfGt 0x40CE, 4, _030B
    CallIfLt 0x40CE, 4, _0316
    Call _0321
    SetVar 0x40CE, 4
    GoTo _033F

_01CF:
    ScrCmd_003 1, 0x800C
    ScrCmd_11C 0x40CE
    ScrCmd_11B 138, 2, 18, 2, 1
    GoToIfEq 0x40CE, 3, _03DF
    CallIfGt 0x40CE, 3, _030B
    CallIfLt 0x40CE, 3, _0316
    Call _0321
    SetVar 0x40CE, 3
    GoTo _033F

_021E:
    ScrCmd_003 1, 0x800C
    ScrCmd_11C 0x40CE
    ScrCmd_11B 139, 2, 18, 2, 1
    GoToIfEq 0x40CE, 2, _03DF
    CallIfGt 0x40CE, 2, _030B
    CallIfLt 0x40CE, 2, _0316
    Call _0321
    SetVar 0x40CE, 2
    GoTo _033F

_026D:
    ScrCmd_003 1, 0x800C
    ScrCmd_11C 0x40CE
    ScrCmd_11B 140, 2, 18, 2, 1
    GoToIfEq 0x40CE, 1, _03DF
    CallIfGt 0x40CE, 1, _030B
    CallIfLt 0x40CE, 1, _0316
    Call _0321
    SetVar 0x40CE, 1
    GoTo _033F

_02BC:
    ScrCmd_003 1, 0x800C
    ScrCmd_11C 0x40CE
    ScrCmd_11B 141, 1, 18, 2, 1
    GoToIfEq 0x40CE, 0, _03DF
    CallIfGt 0x40CE, 0, _030B
    CallIfLt 0x40CE, 0, _0316
    Call _0321
    SetVar 0x40CE, 0
    GoTo _033F

_030B:
    ScrCmd_02C 2
    SetVar 0x8004, 0
    Return

_0316:
    ScrCmd_02C 3
    SetVar 0x8004, 1
    Return

_0321:
    SetVar 0x40CE, -1
    ScrCmd_034
    ApplyMovement 0, _0410
    WaitMovement
    ScrCmd_04B 0x5DC
    ScrCmd_23C 0x8004, 4
    Return

_033F:
    SetVar 0x8008, 0x40CE
    GoToIfEq 0x8008, 0, _0395
    GoToIfEq 0x8008, 1, _03A0
    GoToIfEq 0x8008, 2, _03AB
    GoToIfEq 0x8008, 3, _03B6
    GoToIfEq 0x8008, 4, _03C1
    GoToIfEq 0x8008, 5, _03CC
    End

_0395:
    ScrCmd_02C 9
    GoTo _03D7
    End

_03A0:
    ScrCmd_02C 8
    GoTo _03D7
    End

_03AB:
    ScrCmd_02C 7
    GoTo _03D7
    End

_03B6:
    ScrCmd_02C 6
    GoTo _03D7
    End

_03C1:
    ScrCmd_02C 5
    GoTo _03D7
    End

_03CC:
    ScrCmd_02C 10
    GoTo _03D7
    End

_03D7:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03DF:
    SetVar 0x40CE, -1
    ScrCmd_003 1, 0x800C
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03F6:
    SetVar 0x40CE, -1
    ScrCmd_003 1, 0x800C
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_0410:
    MoveAction_021
    EndMovement
