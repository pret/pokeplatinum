#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0031
    GoToIfEq 0x800C, 1, _0079
    End

_0031:
    Message 1
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    PlaySound SEQ_ASA
    WaitSound
    ScrCmd_14E
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    Message 2
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0031
    GoToIfEq 0x800C, 1, _0079
    End

_0079:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
