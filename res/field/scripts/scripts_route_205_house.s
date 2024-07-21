#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _006D
    .short 0xFD13

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0035
    GoToIfEq 0x800C, 1, _0062
    End

_0035:
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    PlaySound SEQ_ASA
    WaitSound
    ScrCmd_14E
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0062:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_006D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
