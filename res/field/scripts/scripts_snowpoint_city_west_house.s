#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _0033
    .short 0xFD13

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 244, _0028
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0028:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0033:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 244, _00DC
    Message 2
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0060
    GoTo _00D1

_0060:
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_2A5
    ScrCmd_193 0x800C
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x800C, 0xFF, _00D1
    ScrCmd_226 2
    SetVar 0x8004, 0x800C
    ScrCmd_198 0x8004, 0x8005
    ScrCmd_228 0x800C
    GoToIfNe 0x8005, 0x800C, _00C4
    ScrCmd_229 0x8004
    ScrCmd_22A
    SetFlag 244
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00C4:
    ScrCmd_22A
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00D1:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00DC:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
