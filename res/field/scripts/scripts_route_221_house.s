#include "macros/scrcmd.inc"
#include "res/text/bank/route_221_house.h"

    .data

    ScriptEntry _000A
    ScriptEntry _017A
    ScriptEntryEnd

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0137, _0114
    GoToIfSet FLAG_UNK_0x0AAE, _016F
    GetDailyRandomLevel VAR_0x8000
    BufferNumber 0, VAR_0x8000
    GetPartyCount VAR_0x8002
    SetVar VAR_0x8003, 0
_003B:
    ScrCmd_278 VAR_0x8001, VAR_0x8003
    GoToIfEq VAR_0x8000, VAR_0x8001, _006D
    AddVar VAR_0x8003, 1
    SubVar VAR_0x8002, 1
    GoToIfNe VAR_0x8002, 0, _003B
    GoTo _0164

_006D:
    CallIfEq VAR_UNK_0x4108, 0, _00ED
    CallIfEq VAR_UNK_0x4108, 1, _00F5
    CallIfEq VAR_UNK_0x4108, 2, _00FD
    BufferPartyMonSpecies 1, VAR_0x8003
    BufferItemName 2, VAR_0x8004
    Message 1
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_0x800C, _0105
    GoTo _00C2

_00C2:
    CallCommonScript 0x7E0
    ClearFlag FLAG_UNK_0x0137
    SetFlag FLAG_UNK_0x0AAE
    AddVar VAR_UNK_0x4108, 1
    GoToIfLt VAR_UNK_0x4108, 3, _00E7
    SetVar VAR_UNK_0x4108, 0
_00E7:
    CloseMessage
    ReleaseAll
    End

_00ED:
    SetVar VAR_0x8004, ITEM_BLACK_BELT
    Return

_00F5:
    SetVar VAR_0x8004, ITEM_EXPERT_BELT
    Return

_00FD:
    SetVar VAR_0x8004, ITEM_FOCUS_SASH
    Return

_0105:
    SetFlag FLAG_UNK_0x0137
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0114:
    CallIfEq VAR_UNK_0x4108, 0, _00ED
    CallIfEq VAR_UNK_0x4108, 1, _00F5
    CallIfEq VAR_UNK_0x4108, 2, _00FD
    BufferItemName 2, VAR_0x8004
    Message 3
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_0x800C, _0105
    GoTo _00C2

_0164:
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_016F:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_017A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
