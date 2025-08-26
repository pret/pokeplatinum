#include "macros/scrcmd.inc"
#include "res/text/bank/grand_lake_route_213_northwest_house.h"


    ScriptEntry _000E
    ScriptEntry _0068
    ScriptEntry _013A
    ScriptEntryEnd

_000E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00CA, _0053
    Message 0
    SetVar VAR_0x8004, ITEM_TM92
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _005E
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x00CA
    GoTo _0053

_0053:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_005E:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_0068:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0161, _012F
    SetFlag FLAG_UNK_0x0161
    Message 2
    GetRandom VAR_RESULT, 10
    GoToIfEq VAR_RESULT, 0, _0103
    GoToIfEq VAR_RESULT, 1, _0103
    GoToIfEq VAR_RESULT, 2, _0103
    GoToIfEq VAR_RESULT, 3, _0103
    GoToIfEq VAR_RESULT, 4, _010E
    GoToIfEq VAR_RESULT, 5, _010E
    GoToIfEq VAR_RESULT, 6, _010E
    GoToIfEq VAR_RESULT, 7, _0119
    GoToIfEq VAR_RESULT, 8, _0119
    GoTo _0124

_0103:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_010E:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0119:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0124:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_012F:
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_013A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
