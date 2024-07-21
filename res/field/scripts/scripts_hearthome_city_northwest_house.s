#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0x131, _0105
    GoToIfSet 0x97E, _0033
    SetFlag 0x97E
    Message 0
    GoTo _003E
    End

_0033:
    Message 1
    GoTo _003E
    End

_003E:
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0057
    GoTo _00FA
    End

_0057:
    ScrCmd_177 0x800C
    GoToIfEq 0x800C, 6, _00EF
    Message 2
    PlaySound SEQ_FANFA4
    BufferPlayerName 0
    Message 3
    WaitSound
    ScrCmd_096 133, 20, 0, 0x800C
    SetFlag 0x131
    Message 4
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _00A8
    GoToIfEq 0x800C, 1, _00E9
    End

_00A8:
    CloseMessage
    ScrCmd_177 0x4000
    SubVar 0x4000, 1
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0BB 0x4000, 0x800C
    CallIfNe 0x800C, 1, _00E3
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_00E3:
    ScrCmd_1E5 49
    Return

_00E9:
    CloseMessage
    ReleaseAll
    End

_00EF:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00FA:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0105:
    ScrCmd_22D 2, 0x800C
    GoToIfEq 0x800C, 1, _0122
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0122:
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
