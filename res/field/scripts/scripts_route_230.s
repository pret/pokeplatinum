#include "macros/scrcmd.inc"
#include "res/text/bank/route_230.h"


    ScriptEntry _000E
    ScriptEntry _0025
    ScriptEntry _0038
    ScriptEntryEnd

_000E:
    ShowArrowSign 0
    End

_0025:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0038:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
