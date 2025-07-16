#include "macros/scrcmd.inc"
#include "res/text/bank/sunyshore_city_pokecenter_1f.h"


    ScriptEntry _0012
    ScriptEntry _001E
    ScriptEntry _0031
    ScriptEntry _0062
    ScriptEntryEnd

_0012:
    SetVar VAR_0x8007, 0
    CallCommonScript 0x7D2
    End

_001E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0031:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckBadgeAcquired BADGE_ID_BEACON, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0057
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0057:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0062:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
