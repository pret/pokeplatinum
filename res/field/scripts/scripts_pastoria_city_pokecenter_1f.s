#include "macros/scrcmd.inc"
#include "res/text/bank/pastoria_city_pokecenter_1f.h"

    .data

    ScriptEntry _000E
    ScriptEntry _001A
    ScriptEntry _002D
    ScriptEntryEnd

_000E:
    SetVar 0x8007, 0
    CallCommonScript 0x7D2
    End

_001A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_002D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
