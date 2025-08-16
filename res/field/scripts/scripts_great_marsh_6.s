#include "macros/scrcmd.inc"
#include "res/text/bank/great_marsh_6.h"


    ScriptEntry _000A
    ScriptEntry _00D1
    ScriptEntryEnd

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0AB4, _00BC
    Message 0
    GetRandom VAR_0x8004, 4
    SetVar VAR_0x8008, VAR_0x8004
    GoToIfEq VAR_0x8008, 0, _005B
    GoToIfEq VAR_0x8008, 1, _0069
    GoToIfEq VAR_0x8008, 2, _0077
    GoTo _0085
    End

_005B:
    SetVar VAR_0x8004, ITEM_RED_SHARD
    GoTo _0093
    End

_0069:
    SetVar VAR_0x8004, ITEM_BLUE_SHARD
    GoTo _0093
    End

_0077:
    SetVar VAR_0x8004, ITEM_YELLOW_SHARD
    GoTo _0093
    End

_0085:
    SetVar VAR_0x8004, ITEM_GREEN_SHARD
    GoTo _0093
    End

_0093:
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _00C7
    SetFlag FLAG_UNK_0x0AB4
    CallCommonScript CommonScript_Unk10
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
    CallCommonScript CommonScript_Unk11
    CloseMessage
    ReleaseAll
    End

_00D1:
    ShowLandmarkSign 2
    End
