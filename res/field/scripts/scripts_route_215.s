#include "macros/scrcmd.inc"
#include "res/text/bank/route_215.h"

    .data

    ScriptEntry _008D
    ScriptEntry _00A0
    ScriptEntry _00FA
    ScriptEntry _0111
    ScriptEntry _013D
    ScriptEntry _0150
    ScriptEntry _0022
    ScriptEntry _0128
    ScriptEntryEnd

_0022:
    GetTimeOfDay 0x4000
    GoToIfEq VAR_0x4000, 0, _0069
    GoToIfEq VAR_0x4000, 1, _007B
    GoToIfEq VAR_0x4000, 2, _007B
    GoToIfEq VAR_0x4000, 3, _007B
    GoToIfEq VAR_0x4000, 4, _007B
    End

_0069:
    ClearFlag FLAG_UNK_0x0273
    ClearFlag FLAG_UNK_0x0275
    SetFlag FLAG_UNK_0x0272
    SetFlag FLAG_UNK_0x0274
    End

_007B:
    ClearFlag FLAG_UNK_0x0272
    ClearFlag FLAG_UNK_0x0274
    SetFlag FLAG_UNK_0x0273
    SetFlag FLAG_UNK_0x0275
    End

_008D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00CD, _00E5
    Message 1
    SetVar 0x8004, ITEM_TM66
    SetVar 0x8005, 1
    GoToIfCannotFitItem 0x8004, 0x8005, 0x800C, _00F0
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x00CD
    GoTo _00E5

_00E5:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00F0:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_00FA:
    ShowArrowSign 5
    End

_0111:
    ShowArrowSign 6
    End

_0128:
    ShowScrollingSign 7
    End

_013D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0150:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
