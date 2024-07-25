#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _017C
    ScriptEntry _027E
    .short 0xFD13

_000E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar 0x4001, 19
    Message 0
    ScrCmd_075 21, 1
    SetVar 0x8005, 0
    SetVar 0x8006, 0
    GoTo _0039
    End

_0039:
    Message 1
    Call _0119
    GoToIfEq 0x800C, -2, _00D8
    GoToIfEq 0x800C, 0x4001, _00D8
    ScrCmd_2A6 0x800C, 0x8000, 0x8001
    CallIfLt 0x8000, 0x148, _0100
    CallIfGe 0x8000, 0x148, _010A
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0039
    ScrCmd_2A9 0x800C, 0x8001
    GoToIfEq 0x800C, 0, _00F5
    ScrCmd_07D 0x8000, 1, 0x800C
    GoToIfEq 0x800C, 0, _00E5
    Message 4
    AddItem 0x8000, 1, 0x800C
    ScrCmd_2A8 0x8001
    ScrCmd_077
    PlayFanfare SEQ_SE_DP_REGI
    WaitFanfare SEQ_SE_DP_REGI
    GoTo _0039
    End

_00D8:
    Message 7
    WaitABXPadPress
    CloseMessage
    ScrCmd_076
    ReleaseAll
    End

_00E5:
    BufferItemName 0, 0x8000
    Message 6
    GoTo _0039
    End

_00F5:
    Message 5
    GoTo _0039
    End

_0100:
    BufferItemName 0, 0x8000
    Message 2
    Return

_010A:
    BufferItemName 0, 0x8000
    ScrCmd_0D3 1, 0x8000
    Message 3
    Return

_0119:
    SetVar 0x8008, 0
    SetVar 0x8009, 0
    ScrCmd_044 1, 1, 0, 1, 0x800C
    GoTo _0135
    End

_0135:
    ScrCmd_2A6 0x8008, 0x8000, 0x8001
    BufferItemName 0, 0x8000
    ScrCmd_280 1, 0x8001, 1, 5
    ScrCmd_046 168, 0xFF, 0x8008
    AddVar 0x8008, 1
    GoToIfLt 0x8008, 0x4001, _0135
    GoTo _016C
    End

_016C:
    ScrCmd_046 169, 0xFF, 0x8008
    ScrCmd_306 0x8005, 0x8006
    Return

_017C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 196, _01AF
    SetFlag 196
    Message 8
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0250
    GoTo _01CB
    End

_01AF:
    Message 9
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0250
    GoTo _01CB
    End

_01CB:
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_191
    ScrCmd_193 0x8000
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x8000, 0xFF, _0250
    ScrCmd_198 0x8000, 0x8001
    GoToIfEq 0x8001, 0, _025B
    ScrCmd_2FF 0x8000, 0x8004
    GoToIfEq 0x8004, -1, _0245
    ScrCmd_099 0x800C, 237, 0x8000
    GoToIfEq 0x800C, 0, _0266
    ScrCmd_2FD 0, 0x8004
    Message 11
    GoTo _0276
    End

_0245:
    Message 14
    GoTo _0276
    End

_0250:
    Message 12
    GoTo _0276
    End

_025B:
    Message 13
    GoTo _0276
    End

_0266:
    ScrCmd_2FD 0, 0x8004
    Message 10
    GoTo _0276
    End

_0276:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_027E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
