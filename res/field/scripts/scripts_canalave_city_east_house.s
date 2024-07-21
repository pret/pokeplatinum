#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 1, _0026
    Message 0
    SetFlag 1
    GoTo _0026

_0026:
    Message 1
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0049
    GoToIfEq 0x800C, 1, _0130
    End

_0049:
    Message 2
    CloseMessage
    GoTo _0054

_0054:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_191
    ScrCmd_193 0x8002
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x8002, 0xFF, _0130
    ScrCmd_198 0x8002, 0x8001
    GoToIfEq 0x8001, 0, _011A
    ScrCmd_1C8 0x800C, 0x8002
    GoToIfEq 0x800C, 1, _0125
    Message 6
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_1C6 0x8002
    ScrCmd_1C7 0x8001
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x8001, 0xFF, _0049
    ScrCmd_1CB 0, 0x8002, 0x8001
    Message 7
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0105
    GoToIfEq 0x800C, 1, _0049
    End

_0105:
    ScrCmd_1C9 0x8002, 0x8001
    Message 8
    PlaySound SEQ_WASURE
    WaitSound
    WaitABXPadPress
    CloseMessage
    End

_011A:
    Message 5
    CloseMessage
    GoTo _0054

_0125:
    Message 4
    CloseMessage
    GoTo _0054

_0130:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
