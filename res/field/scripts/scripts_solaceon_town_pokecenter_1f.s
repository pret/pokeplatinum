#include "macros/scrcmd.inc"
#include "res/text/bank/solaceon_town_pokecenter_1f.h"

    .data

    ScriptEntry _0012
    ScriptEntry _001E
    ScriptEntry _0031
    ScriptEntry _0044
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
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0044:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
