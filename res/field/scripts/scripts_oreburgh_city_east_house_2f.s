#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_city_east_house_2f.h"


    ScriptEntry _0012
    ScriptEntry _0025
    ScriptEntry _0081
    ScriptEntry _0083
    ScriptEntryEnd

_0012:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0025:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x010A, _006C
    Message 1
    SetVar VAR_0x8004, ITEM_GREAT_BALL
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _0077
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x010A
    GoTo _006C
    End

_006C:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0077:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_0081:
    End

_0083:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
