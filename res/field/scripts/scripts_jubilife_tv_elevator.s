#include "macros/scrcmd.inc"
#include "res/text/bank/jubilife_tv_elevator.h"

    .data

    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetFloorsAbove VAR_UNK_0x40CE
    SetVar VAR_0x8008, VAR_UNK_0x40CE
    GoToIfEq VAR_0x8008, 0, _004E
    GoToIfEq VAR_0x8008, 1, _005A
    GoToIfEq VAR_0x8008, 2, _0066
    GoToIfEq VAR_0x8008, 3, _0072
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
    ShowCurrentFloor 20, 1, VAR_UNK_0x40CE
    Message 0
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm 119, 0
    AddMenuEntryImm 118, 1
    AddMenuEntryImm 117, 2
    AddMenuEntryImm 116, 3
    AddMenuEntryImm 124, 4
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _01DC
    GoToIfEq VAR_0x8008, 1, _018B
    GoToIfEq VAR_0x8008, 2, _013A
    GoToIfEq VAR_0x8008, 3, _00E9
    GoTo _0283
    End

_00E9:
    WaitTime 1, VAR_RESULT
    GetFloorsAbove VAR_UNK_0x40CE
    ScrCmd_11B 11, 2, 18, 2, 1
    GoToIfEq VAR_UNK_0x40CE, 3, _026C
    CallIfGt VAR_UNK_0x40CE, 3, _022D
    CallIfLt VAR_UNK_0x40CE, 3, _0238
    Call _0243
    SetVar VAR_UNK_0x40CE, 3
    GoTo _0261
    End

_013A:
    WaitTime 1, VAR_RESULT
    GetFloorsAbove VAR_UNK_0x40CE
    ScrCmd_11B 12, 3, 18, 2, 1
    GoToIfEq VAR_UNK_0x40CE, 2, _026C
    CallIfGt VAR_UNK_0x40CE, 2, _022D
    CallIfLt VAR_UNK_0x40CE, 2, _0238
    Call _0243
    SetVar VAR_UNK_0x40CE, 2
    GoTo _0261
    End

_018B:
    WaitTime 1, VAR_RESULT
    GetFloorsAbove VAR_UNK_0x40CE
    ScrCmd_11B 13, 4, 18, 2, 1
    GoToIfEq VAR_UNK_0x40CE, 1, _026C
    CallIfGt VAR_UNK_0x40CE, 1, _022D
    CallIfLt VAR_UNK_0x40CE, 1, _0238
    Call _0243
    SetVar VAR_UNK_0x40CE, 1
    GoTo _0261
    End

_01DC:
    WaitTime 1, VAR_RESULT
    GetFloorsAbove VAR_UNK_0x40CE
    ScrCmd_11B 14, 1, 18, 2, 1
    GoToIfEq VAR_UNK_0x40CE, 0, _026C
    CallIfGt VAR_UNK_0x40CE, 0, _022D
    CallIfLt VAR_UNK_0x40CE, 0, _0238
    Call _0243
    SetVar VAR_UNK_0x40CE, 0
    GoTo _0261
    End

_022D:
    Message 2
    SetVar VAR_0x8004, 0
    Return

_0238:
    Message 3
    SetVar VAR_0x8004, 1
    Return

_0243:
    SetVar VAR_UNK_0x40CE, -1
    CloseMessage
    ApplyMovement 0, _029C
    WaitMovement
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_23C VAR_0x8004, 4
    Return

_0261:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_026C:
    SetVar VAR_UNK_0x40CE, -1
    WaitTime 1, VAR_RESULT
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0283:
    SetVar VAR_UNK_0x40CE, -1
    WaitTime 1, VAR_RESULT
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_029C:
    WalkOnSpotNormalSouth
    EndMovement
