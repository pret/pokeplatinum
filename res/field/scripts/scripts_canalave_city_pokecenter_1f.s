#include "macros/scrcmd.inc"
#include "res/text/bank/canalave_city_pokecenter_1f.h"

    .data

    ScriptEntry _0016
    ScriptEntry _0022
    ScriptEntry _0035
    ScriptEntry _0048
    ScriptEntry _005B
    ScriptEntryEnd

_0016:
    SetVar VAR_0x8007, 1
    CallCommonScript 0x7D2
    End

_0022:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0035:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0048:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_005B:
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
