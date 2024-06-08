    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_11C 0x40CE
    SetVar 0x8008, 0x40CE
    GoToIfEq 0x8008, 0, _0034
    GoToIfEq 0x8008, 1, _003E
    End

_0034:
    ScrCmd_347 0, 2
    GoTo _0048

_003E:
    ScrCmd_347 0, 1
    GoTo _0048

_0048:
    ScrCmd_11D 20, 1, 0x40CE, 0x40CE
    ScrCmd_02C 0
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 117, 0
    ScrCmd_042 116, 1
    ScrCmd_042 124, 2
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _008F
    GoToIfEq 0x8008, 1, _00CA
    GoTo _0152

_008F:
    ScrCmd_003 1, 0x800C
    ScrCmd_11C 0x40CE
    ScrCmd_11B 0x1CE, 0, 18, 2, 1
    GoToIfEq 0x40CE, 0, _0164
    SetVar 0x8004, 0
    Call _0105
    SetVar 0x40CE, 0
    GoTo _0147

_00CA:
    ScrCmd_003 1, 0x800C
    ScrCmd_11C 0x40CE
    ScrCmd_11B 0x1CD, 1, 18, 2, 1
    GoToIfEq 0x40CE, 1, _0164
    SetVar 0x8004, 1
    Call _0105
    SetVar 0x40CE, 1
    GoTo _0147

_0105:
    SetVar 0x40CE, -1
    CallIfEq 0x8004, 1, _013D
    CallIfEq 0x8004, 0, _0142
    ScrCmd_034
    ApplyMovement 0, _017C
    WaitMovement
    ScrCmd_04B 0x5DC
    ScrCmd_23C 0x8004, 4
    Return

_013D:
    ScrCmd_02C 2
    Return

_0142:
    ScrCmd_02C 1
    Return

_0147:
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0152:
    SetVar 0x40CE, -1
    ScrCmd_003 1, 0x800C
    ScrCmd_034
    ScrCmd_061
    End

_0164:
    SetVar 0x40CE, -1
    ScrCmd_003 1, 0x800C
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_017C:
    MoveAction_021
    EndMovement
