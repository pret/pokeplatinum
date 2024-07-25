#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _0125
    .short 0xFD13

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_33C 4, 93
    GoToIfUnset 233, _003D
    CheckItem ITEM_HEART_SCALE, 1, 0x800C
    GoToIfEq 0x800C, 0, _005F
    GoTo _006A

_003D:
    SetFlag 233
    Message 0
    CheckItem ITEM_HEART_SCALE, 1, 0x800C
    GoToIfEq 0x800C, 0, _005F
    GoTo _006A

_005F:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_006A:
    Message 1
    Message 3
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_191
    ScrCmd_193 0x8005
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x8005, 0xFF, _005F
    ScrCmd_198 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _011A
    ScrCmd_21F 0x800C, 0x8005
    GoToIfEq 0x800C, 0, _010F
    Message 4
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_221 0x8005
    ScrCmd_223 0x800C
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x800C, 0xFF, _005F
    RemoveItem ITEM_HEART_SCALE, 1, 0x800C
    BufferPlayerName 3
    Message 16
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_010F:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_011A:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0125:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 17
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
