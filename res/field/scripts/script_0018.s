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
    CompareVarToValue 0x8008, 0
    GoToIf 1, _004E
    CompareVarToValue 0x8008, 1
    GoToIf 1, _005A
    CompareVarToValue 0x8008, 2
    GoToIf 1, _0066
    CompareVarToValue 0x8008, 3
    GoToIf 1, _0072
    End

_004E:
    ScrCmd_347 0, 4
    GoTo _007E
    End

_005A:
    ScrCmd_347 0, 3
    GoTo _007E
    End

_0066:
    ScrCmd_347 0, 2
    GoTo _007E
    End

_0072:
    ScrCmd_347 0, 1
    GoTo _007E
    End

_007E:
    ScrCmd_11D 20, 1, 0x40CE, 0x40CE
    ScrCmd_02C 0
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 119, 0
    ScrCmd_042 118, 1
    ScrCmd_042 117, 2
    ScrCmd_042 116, 3
    ScrCmd_042 124, 4
    ScrCmd_043
    SetVar 0x8008, 0x800C
    CompareVarToValue 0x8008, 0
    GoToIf 1, _01DC
    CompareVarToValue 0x8008, 1
    GoToIf 1, _018B
    CompareVarToValue 0x8008, 2
    GoToIf 1, _013A
    CompareVarToValue 0x8008, 3
    GoToIf 1, _00E9
    GoTo _0283
    End

_00E9:
    ScrCmd_003 1, 0x800C
    ScrCmd_11C 0x40CE
    ScrCmd_11B 11, 2, 18, 2, 1
    CompareVarToValue 0x40CE, 3
    GoToIf 1, _026C
    CompareVarToValue 0x40CE, 3
    CallIf 2, _022D
    CompareVarToValue 0x40CE, 3
    CallIf 0, _0238
    Call _0243
    SetVar 0x40CE, 3
    GoTo _0261
    End

_013A:
    ScrCmd_003 1, 0x800C
    ScrCmd_11C 0x40CE
    ScrCmd_11B 12, 3, 18, 2, 1
    CompareVarToValue 0x40CE, 2
    GoToIf 1, _026C
    CompareVarToValue 0x40CE, 2
    CallIf 2, _022D
    CompareVarToValue 0x40CE, 2
    CallIf 0, _0238
    Call _0243
    SetVar 0x40CE, 2
    GoTo _0261
    End

_018B:
    ScrCmd_003 1, 0x800C
    ScrCmd_11C 0x40CE
    ScrCmd_11B 13, 4, 18, 2, 1
    CompareVarToValue 0x40CE, 1
    GoToIf 1, _026C
    CompareVarToValue 0x40CE, 1
    CallIf 2, _022D
    CompareVarToValue 0x40CE, 1
    CallIf 0, _0238
    Call _0243
    SetVar 0x40CE, 1
    GoTo _0261
    End

_01DC:
    ScrCmd_003 1, 0x800C
    ScrCmd_11C 0x40CE
    ScrCmd_11B 14, 1, 18, 2, 1
    CompareVarToValue 0x40CE, 0
    GoToIf 1, _026C
    CompareVarToValue 0x40CE, 0
    CallIf 2, _022D
    CompareVarToValue 0x40CE, 0
    CallIf 0, _0238
    Call _0243
    SetVar 0x40CE, 0
    GoTo _0261
    End

_022D:
    ScrCmd_02C 2
    SetVar 0x8004, 0
    Return

_0238:
    ScrCmd_02C 3
    SetVar 0x8004, 1
    Return

_0243:
    SetVar 0x40CE, -1
    ScrCmd_034
    ScrCmd_05E 0, _029C
    ScrCmd_05F
    ScrCmd_04B 0x5DC
    ScrCmd_23C 0x8004, 4
    Return

_0261:
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_026C:
    SetVar 0x40CE, -1
    ScrCmd_003 1, 0x800C
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0283:
    SetVar 0x40CE, -1
    ScrCmd_003 1, 0x800C
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_029C:
    MoveAction_021
    EndMovement
