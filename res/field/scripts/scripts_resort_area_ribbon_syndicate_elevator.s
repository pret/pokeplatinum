#include "macros/scrcmd.inc"
#include "res/text/bank/resort_area_ribbon_syndicate_elevator.h"

    .data

    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetFloorsAbove 0x40CE
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
    ShowCurrentFloor 20, 1, 0x40CE
    Message 0
    InitGlobalTextMenu 1, 1, 0, 0x800C
    AddMenuEntryImm 117, 0
    AddMenuEntryImm 116, 1
    AddMenuEntryImm 124, 2
    ShowMenu
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _008F
    GoToIfEq 0x8008, 1, _00CA
    GoTo _0152

_008F:
    WaitTime 1, 0x800C
    GetFloorsAbove 0x40CE
    ScrCmd_11B 0x1CE, 0, 18, 2, 1
    GoToIfEq 0x40CE, 0, _0164
    SetVar 0x8004, 0
    Call _0105
    SetVar 0x40CE, 0
    GoTo _0147

_00CA:
    WaitTime 1, 0x800C
    GetFloorsAbove 0x40CE
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
    CloseMessage
    ApplyMovement 0, _017C
    WaitMovement
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_23C 0x8004, 4
    Return

_013D:
    Message 2
    Return

_0142:
    Message 1
    Return

_0147:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0152:
    SetVar 0x40CE, -1
    WaitTime 1, 0x800C
    CloseMessage
    ReleaseAll
    End

_0164:
    SetVar 0x40CE, -1
    WaitTime 1, 0x800C
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_017C:
    MoveAction_033
    EndMovement
