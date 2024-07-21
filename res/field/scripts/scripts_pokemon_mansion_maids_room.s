#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _0068
    ScriptEntry _007B
    .short 0xFD13

_000E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0x139, _005D
    Message 0
    SetVar 0x8004, 218
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0053
    SetFlag 0x139
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_0053:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_005D:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0068:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_007B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 3
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _009D
    GoTo _00D3
    End

_009D:
    BufferPlayerName 0
    Message 4
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    PlaySound SEQ_ASA
    WaitSound
    ScrCmd_14E
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    BufferPlayerName 0
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00D3:
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
