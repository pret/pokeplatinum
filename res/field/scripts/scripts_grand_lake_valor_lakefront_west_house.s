#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 1, _00D3
    ScrCmd_1E8 0x800C
    GoToIfEq 0x800C, 0, _004C
    GoToIfUnset 171, _0057
    ScrCmd_1E9 0x800C
    GoToIfEq 0x800C, 0, _0057
    GoTo _0095

_004C:
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0057:
    CallIfUnset 171, _00DE
    SetFlag 171
    SetFlag 1
    Message 1
    PlaySound SEQ_FANFA4
    WaitSound
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_1EA
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_0095:
    CallIfUnset 172, _00E4
    SetFlag 172
    SetFlag 1
    Message 2
    PlaySound SEQ_FANFA4
    WaitSound
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_1EB
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_00D3:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00DE:
    ScrCmd_260 26
    Return

_00E4:
    ScrCmd_260 27
    Return

    .byte 0
    .byte 0
