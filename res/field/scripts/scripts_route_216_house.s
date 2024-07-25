#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _0071
    ScriptEntry _0084
    .short 0xFD13

_000E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0039
    GoToIfEq 0x800C, 1, _0066
    End

_0039:
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

_0066:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0071:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0084:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 4
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _00AD
    GoToIfEq 0x800C, 1, _00E3
    End

_00AD:
    BufferPlayerName 0
    Message 5
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    PlaySound SEQ_ASA
    WaitSound
    ScrCmd_14E
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    BufferPlayerName 0
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00E3:
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
