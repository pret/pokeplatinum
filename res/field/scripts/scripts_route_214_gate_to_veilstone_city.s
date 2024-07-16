#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0068
    ScriptEntry _000A
    .short 0xFD13

_000A:
    ScrCmd_1B7 0x4032, 4
    ScrCmd_238 15, 0x4000
    GoToIfEq 0x4000, 0, _0062
    ScrCmd_238 16, 0x4000
    GoToIfEq 0x4000, 0, _0062
    ScrCmd_238 17, 0x4000
    GoToIfEq 0x4000, 0, _0062
    ScrCmd_238 18, 0x4000
    GoToIfEq 0x4000, 0, _0062
    ClearFlag 0x2C2
    End

_0062:
    SetFlag 0x2C2
    End

_0068:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_284 0x4000
    GoToIfGe 0x4000, 26, _008C
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_008C:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
