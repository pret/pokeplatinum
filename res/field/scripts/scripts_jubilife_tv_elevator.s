#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_11C 0x40CE
    SetVar 0x8008, 0x40CE
    GoToIfEq 0x8008, 0, _004E
    GoToIfEq 0x8008, 1, _005A
    GoToIfEq 0x8008, 2, _0066
    GoToIfEq 0x8008, 3, _0072
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
    Message 0
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 119, 0
    ScrCmd_042 118, 1
    ScrCmd_042 117, 2
    ScrCmd_042 116, 3
    ScrCmd_042 124, 4
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _01DC
    GoToIfEq 0x8008, 1, _018B
    GoToIfEq 0x8008, 2, _013A
    GoToIfEq 0x8008, 3, _00E9
    GoTo _0283
    End

_00E9:
    WaitTime 1, 0x800C
    ScrCmd_11C 0x40CE
    ScrCmd_11B 11, 2, 18, 2, 1
    GoToIfEq 0x40CE, 3, _026C
    CallIfGt 0x40CE, 3, _022D
    CallIfLt 0x40CE, 3, _0238
    Call _0243
    SetVar 0x40CE, 3
    GoTo _0261
    End

_013A:
    WaitTime 1, 0x800C
    ScrCmd_11C 0x40CE
    ScrCmd_11B 12, 3, 18, 2, 1
    GoToIfEq 0x40CE, 2, _026C
    CallIfGt 0x40CE, 2, _022D
    CallIfLt 0x40CE, 2, _0238
    Call _0243
    SetVar 0x40CE, 2
    GoTo _0261
    End

_018B:
    WaitTime 1, 0x800C
    ScrCmd_11C 0x40CE
    ScrCmd_11B 13, 4, 18, 2, 1
    GoToIfEq 0x40CE, 1, _026C
    CallIfGt 0x40CE, 1, _022D
    CallIfLt 0x40CE, 1, _0238
    Call _0243
    SetVar 0x40CE, 1
    GoTo _0261
    End

_01DC:
    WaitTime 1, 0x800C
    ScrCmd_11C 0x40CE
    ScrCmd_11B 14, 1, 18, 2, 1
    GoToIfEq 0x40CE, 0, _026C
    CallIfGt 0x40CE, 0, _022D
    CallIfLt 0x40CE, 0, _0238
    Call _0243
    SetVar 0x40CE, 0
    GoTo _0261
    End

_022D:
    Message 2
    SetVar 0x8004, 0
    Return

_0238:
    Message 3
    SetVar 0x8004, 1
    Return

_0243:
    SetVar 0x40CE, -1
    CloseMessage
    ApplyMovement 0, _029C
    WaitMovement
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_23C 0x8004, 4
    Return

_0261:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_026C:
    SetVar 0x40CE, -1
    WaitTime 1, 0x800C
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0283:
    SetVar 0x40CE, -1
    WaitTime 1, 0x800C
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_029C:
    MoveAction_021
    EndMovement
