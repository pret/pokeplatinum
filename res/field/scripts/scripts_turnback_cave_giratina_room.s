#include "macros/scrcmd.inc"

    .data

    ScriptEntry _001C
    ScriptEntry _0037
    ScriptEntry _00A5
    ScriptEntry _0116
    ScriptEntry _001A
    ScriptEntry _0127
    .short 0xFD13

_001A:
    End

_001C:
    GoToIfSet 142, _0029
    End

_0029:
    SetFlag 0x250
    ScrCmd_065 0
    ClearFlag 142
    End

_0037:
    LockAll
    PlayFanfare SEQ_SE_CONFIRM
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_04C 0x1E7, 0
    Message 0
    CloseMessage
    SetFlag 142
    ScrCmd_2BD 0x1E7, 47
    ClearFlag 142
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _009B
    ScrCmd_2BC 0x800C
    GoToIfEq 0x800C, 1, _0090
    GoTo _0084
    End

_0084:
    SetFlag 0x121
    SetFlag 0x250
    ReleaseAll
    End

_0090:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_009B:
    ClearFlag 0x250
    ScrCmd_0EB
    ReleaseAll
    End

_00A5:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfEq 0x410C, 3, _00F4
    GoToIfLt 0x410C, 15, _0100
    SetVar 0x8004, 90
_00CB:
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _010C
    CallCommonScript 0x7E0
    CloseMessage
    ScrCmd_065 1
    ReleaseAll
    End

_00F4:
    SetVar 0x8004, 0x145
    GoTo _00CB

_0100:
    SetVar 0x8004, 106
    GoTo _00CB

_010C:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_0116:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0127:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 2
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0149
    GoTo _017F
    End

_0149:
    BufferPlayerName 0
    Message 3
    CloseMessage
    PlayFanfare SEQ_SE_PL_SYUWA
    ScrCmd_328 1
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_DISTORTION_WORLD_TURNBACK_CAVE_ROOM, 0, 116, 75, 1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

_017F:
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
