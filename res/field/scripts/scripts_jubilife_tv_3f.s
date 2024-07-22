#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0012
    ScriptEntry _0054
    ScriptEntry _0067
    ScriptEntry _007A
    .short 0xFD13

_0012:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ApplyMovement 0, _0044
    WaitMovement
    Message 0
    CloseMessage
    WaitTime 8, 0x800C
    ApplyMovement 0, _004C
    WaitMovement
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0044:
    MoveAction_003
    EndMovement

    .balign 4, 0
_004C:
    MoveAction_002
    EndMovement

_0054:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0067:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_007A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 4
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _009C
    GoTo _015B

_009C:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    ScrCmd_244 0, 0x800C, 0x8000, 0x8001
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x800C, 0, _015B
    Message 5
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    ScrCmd_244 0, 0x800C, 0x8002, 0x8003
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x800C, 0, _015B
    ScrCmd_249 0x800C, 0x8000, 0x8001, 0x8002, 0x8003
    GoToIfEq 0x800C, 0xFF, _0131
    GoToIfEq 0x800C, 0, _0131
    GoTo _0166

_0131:
    ScrCmd_2AA 0x800C, 0x8000, 0x8001, 0x8002, 0x8003
    GoToIfEq 0x800C, 0, _0150
    GoTo _0171

_0150:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_015B:
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0166:
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0171:
    Message 9
    WaitABXPadPress
    ScrCmd_2AC
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
