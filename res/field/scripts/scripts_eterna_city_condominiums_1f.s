#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _0139
    ScriptEntry _01EF
    .short 0xFD13

_000E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0032
    GoTo _00B3
    End

_0032:
    Message 1
    WaitABPress
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_191
    ScrCmd_193 0x800C
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x800C, 0xFF, _00B3
    SetVar 0x8005, 0x800C
    ScrCmd_198 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _00BE
    ScrCmd_199 0x8005, 0x800C
    GoToIfEq 0x800C, 1, _00C9
    BufferPartyMonNickname 0, 0x8005
    Message 2
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _00D9
    GoTo _00B3
    End

_00B3:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00BE:
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00C9:
    BufferPartyMonNickname 0, 0x8005
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00D9:
    Message 3
    WaitABPress
    CloseMessage
    SetVar 0x800C, 0
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0BB 0x8005, 0x800C
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x800C, 1, _0129
    ScrCmd_2B8 0x8005
    ScrCmd_1E5 49
    BufferPartyMonNickname 0, 0x8005
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0129:
    BufferPartyMonNickname 0, 0x8005
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0139:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 134, _01E4
    Message 9
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0168
    GoTo _01D9
    End

_0168:
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_2A5
    ScrCmd_193 0x800C
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x800C, 0xFF, _01D9
    ScrCmd_226 1
    SetVar 0x8004, 0x800C
    ScrCmd_198 0x8004, 0x8005
    ScrCmd_228 0x800C
    GoToIfNe 0x8005, 0x800C, _01CC
    ScrCmd_229 0x8004
    ScrCmd_22A
    SetFlag 134
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01CC:
    ScrCmd_22A
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01D9:
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01E4:
    Message 13
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01EF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetTimeOfDay 0x800C
    GoToIfEq 0x800C, 4, _021B
    GoTo _0210
    End

_0210:
    Message 14
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_021B:
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
