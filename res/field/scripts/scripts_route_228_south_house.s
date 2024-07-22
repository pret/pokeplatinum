#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0016
    ScriptEntry _005F
    ScriptEntry _0070
    ScriptEntry _0081
    ScriptEntry _0092
    .short 0xFD13

_0016:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0041
    GoToIfEq 0x800C, 1, _004C
    End

_0041:
    Message 1
    GoTo _0057
    End

_004C:
    Message 2
    GoTo _0057
    End

_0057:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_005F:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0070:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0081:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0092:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
