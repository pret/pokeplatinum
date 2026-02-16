#include "macros/scrcmd.inc"
#include "res/text/bank/bg_events.h"


    ScriptEntry _0026
    ScriptEntry _0037
    ScriptEntry _0048
    ScriptEntry _0059
    ScriptEntry _006A
    ScriptEntry _007B
    ScriptEntry _008C
    ScriptEntry _009D
    ScriptEntry _00AE
    ScriptEntryEnd

_0026:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0037:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0048:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0059:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_006A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_007B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_008C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_009D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00AE:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FadeScreenOut
    WaitFadeScreen
    OpenRegionMap
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End
