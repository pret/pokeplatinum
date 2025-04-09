#include "macros/scrcmd.inc"
#include "res/text/bank/great_marsh_6.h"

    .data

    ScriptEntry _000A
    ScriptEntry _00D1
    ScriptEntryEnd

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0AB4, _00BC
    Message 0
    GetRandom 0x8004, 4
    SetVar 0x8008, 0x8004
    GoToIfEq 0x8008, 0, _005B
    GoToIfEq 0x8008, 1, _0069
    GoToIfEq 0x8008, 2, _0077
    GoTo _0085
    End

_005B:
    SetVar 0x8004, ITEM_RED_SHARD
    GoTo _0093
    End

_0069:
    SetVar 0x8004, ITEM_BLUE_SHARD
    GoTo _0093
    End

_0077:
    SetVar 0x8004, ITEM_YELLOW_SHARD
    GoTo _0093
    End

_0085:
    SetVar 0x8004, ITEM_GREEN_SHARD
    GoTo _0093
    End

_0093:
    SetVar 0x8005, 1
    GoToIfCannotFitItem 0x8004, 0x8005, 0x800C, _00C7
    SetFlag FLAG_UNK_0x0AB4
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_00BC:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00C7:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_00D1:
    ShowLandmarkSign 2
    End
