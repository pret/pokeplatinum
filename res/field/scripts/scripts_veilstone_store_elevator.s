#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_store_elevator.h"

    .data

    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetFloorsAbove VAR_UNK_0x40CE
    SetVar VAR_0x8008, VAR_UNK_0x40CE
    GoToIfEq VAR_0x8008, 0, _0068
    GoToIfEq VAR_0x8008, 1, _0072
    GoToIfEq VAR_0x8008, 2, _007C
    GoToIfEq VAR_0x8008, 3, _0086
    GoToIfEq VAR_0x8008, 4, _0090
    GoToIfEq VAR_0x8008, 5, _009A
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
    ShowCurrentFloor 20, 1, VAR_UNK_0x40CE
    Message 0
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm 120, 0
    AddMenuEntryImm 119, 1
    AddMenuEntryImm 118, 2
    AddMenuEntryImm 117, 3
    AddMenuEntryImm 116, 4
    AddMenuEntryImm 121, 5
    AddMenuEntryImm 124, 6
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _02BC
    GoToIfEq VAR_0x8008, 1, _026D
    GoToIfEq VAR_0x8008, 2, _021E
    GoToIfEq VAR_0x8008, 3, _01CF
    GoToIfEq VAR_0x8008, 4, _0180
    GoToIfEq VAR_0x8008, 5, _0131
    GoTo _03F6

_0131:
    WaitTime 1, VAR_RESULT
    GetFloorsAbove VAR_UNK_0x40CE
    ScrCmd_11B 0x236, 1, 18, 2, 1
    GoToIfEq VAR_UNK_0x40CE, 5, _03DF
    CallIfGt VAR_UNK_0x40CE, 5, _030B
    CallIfLt VAR_UNK_0x40CE, 5, _0316
    Call _0321
    SetVar VAR_UNK_0x40CE, 5
    GoTo _033F

_0180:
    WaitTime 1, VAR_RESULT
    GetFloorsAbove VAR_UNK_0x40CE
    ScrCmd_11B 137, 2, 18, 2, 1
    GoToIfEq VAR_UNK_0x40CE, 4, _03DF
    CallIfGt VAR_UNK_0x40CE, 4, _030B
    CallIfLt VAR_UNK_0x40CE, 4, _0316
    Call _0321
    SetVar VAR_UNK_0x40CE, 4
    GoTo _033F

_01CF:
    WaitTime 1, VAR_RESULT
    GetFloorsAbove VAR_UNK_0x40CE
    ScrCmd_11B 138, 2, 18, 2, 1
    GoToIfEq VAR_UNK_0x40CE, 3, _03DF
    CallIfGt VAR_UNK_0x40CE, 3, _030B
    CallIfLt VAR_UNK_0x40CE, 3, _0316
    Call _0321
    SetVar VAR_UNK_0x40CE, 3
    GoTo _033F

_021E:
    WaitTime 1, VAR_RESULT
    GetFloorsAbove VAR_UNK_0x40CE
    ScrCmd_11B 139, 2, 18, 2, 1
    GoToIfEq VAR_UNK_0x40CE, 2, _03DF
    CallIfGt VAR_UNK_0x40CE, 2, _030B
    CallIfLt VAR_UNK_0x40CE, 2, _0316
    Call _0321
    SetVar VAR_UNK_0x40CE, 2
    GoTo _033F

_026D:
    WaitTime 1, VAR_RESULT
    GetFloorsAbove VAR_UNK_0x40CE
    ScrCmd_11B 140, 2, 18, 2, 1
    GoToIfEq VAR_UNK_0x40CE, 1, _03DF
    CallIfGt VAR_UNK_0x40CE, 1, _030B
    CallIfLt VAR_UNK_0x40CE, 1, _0316
    Call _0321
    SetVar VAR_UNK_0x40CE, 1
    GoTo _033F

_02BC:
    WaitTime 1, VAR_RESULT
    GetFloorsAbove VAR_UNK_0x40CE
    ScrCmd_11B 141, 1, 18, 2, 1
    GoToIfEq VAR_UNK_0x40CE, 0, _03DF
    CallIfGt VAR_UNK_0x40CE, 0, _030B
    CallIfLt VAR_UNK_0x40CE, 0, _0316
    Call _0321
    SetVar VAR_UNK_0x40CE, 0
    GoTo _033F

_030B:
    Message 2
    SetVar VAR_0x8004, 0
    Return

_0316:
    Message 3
    SetVar VAR_0x8004, 1
    Return

_0321:
    SetVar VAR_UNK_0x40CE, -1
    CloseMessage
    ApplyMovement 0, _0410
    WaitMovement
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_23C VAR_0x8004, 4
    Return

_033F:
    SetVar VAR_0x8008, VAR_UNK_0x40CE
    GoToIfEq VAR_0x8008, 0, _0395
    GoToIfEq VAR_0x8008, 1, _03A0
    GoToIfEq VAR_0x8008, 2, _03AB
    GoToIfEq VAR_0x8008, 3, _03B6
    GoToIfEq VAR_0x8008, 4, _03C1
    GoToIfEq VAR_0x8008, 5, _03CC
    End

_0395:
    Message 9
    GoTo _03D7
    End

_03A0:
    Message 8
    GoTo _03D7
    End

_03AB:
    Message 7
    GoTo _03D7
    End

_03B6:
    Message 6
    GoTo _03D7
    End

_03C1:
    Message 5
    GoTo _03D7
    End

_03CC:
    Message 10
    GoTo _03D7
    End

_03D7:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03DF:
    SetVar VAR_UNK_0x40CE, -1
    WaitTime 1, VAR_RESULT
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03F6:
    SetVar VAR_UNK_0x40CE, -1
    WaitTime 1, VAR_RESULT
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0410:
    MoveAction_033
    EndMovement
