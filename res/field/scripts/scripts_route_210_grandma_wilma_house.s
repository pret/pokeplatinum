#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _0010
    .short 0xFD13

_000A:
    SetFlag 0x9EA
    End

_0010:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0x100, _0041
    SetFlag 0x100
    Message 0
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _005B
    GoTo _00A2

_0041:
    Message 1
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _005B
    GoTo _00A2

_005B:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0066:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0071:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_007C:
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0087:
    ScrCmd_0D4 0, 0x1B2
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0097:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A2:
    ScrCmd_177 0x4000
_00A6:
    SubVar 0x4000, 1
    ScrCmd_198 0x4000, 0x800C
    GoToIfEq 0x800C, 0, _00FC
    ScrCmd_248 0x8004, 0x8005, 0x4000
    GoToIfEq 0x8004, 16, _00E7
    GoToIfEq 0x8005, 16, _00E7
    GoTo _00FC

_00E7:
    ScrCmd_099 0x800C, 0x1B2, 0x4000
    GoToIfEq 0x800C, 0, _010F
_00FC:
    GoToIfNe 0x4000, 0, _00A6
    GoTo _0066

_010F:
    Message 4
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_191
    ScrCmd_193 0x8000
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x8000, 0xFF, _005B
    ScrCmd_198 0x8000, 0x8001
    GoToIfEq 0x8001, 0, _007C
    Call _01D7
    GoToIfEq 0x800C, 0, _0071
    ScrCmd_099 0x800C, 0x1B2, 0x8000
    GoToIfEq 0x800C, 1, _0087
    ScrCmd_1B9 0x800C, 0x8000
    GoToIfLt 0x800C, 0xFF, _0097
    SetVar 0x8003, 0x1B2
    GoTo _019B

_019B:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_224 0x8000, 0x1B2
    ScrCmd_225 0x800C
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x800C, 0xFF, _005B
    Message 16
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01D7:
    ScrCmd_248 0x8004, 0x8005, 0x8000
    GoToIfEq 0x8004, 16, _0201
    GoToIfEq 0x8005, 16, _0201
    SetVar 0x800C, 0
    Return

_0201:
    SetVar 0x800C, 1
    Return

    .byte 0
    .byte 0
    .byte 0
