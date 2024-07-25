#include "macros/scrcmd.inc"

    .data

    ScriptEntry _001A
    ScriptEntry _0020
    ScriptEntry _008D
    ScriptEntry _00B9
    ScriptEntry _00E9
    ScriptEntry _012C
    .short 0xFD13

_001A:
    SetFlag 0x9CB
    End

_0020:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    MessageInstant 9
    WaitTime 30, 0x800C
    MessageInstant 10
    PlayFanfare SEQ_SE_DP_DECIDE
    WaitTime 30, 0x800C
    MessageInstant 11
    PlayFanfare SEQ_SE_DP_DECIDE
    WaitTime 30, 0x800C
    MessageInstant 12
    PlayFanfare SEQ_SE_DP_DECIDE
    WaitTime 30, 0x800C
    MessageInstant 13
    PlayFanfare SEQ_SE_DP_CON_016
    WaitTime 30, 0x800C
    ScrCmd_253 0
    SetVar 0x40F3, 1
    SetFlag 0x995
    PlayMusic SEQ_D_SAFARI
    CloseMessage
    ReleaseAll
    End

    .byte 83
    .byte 2
    .byte 0
    .byte 0
    .byte 40
    .byte 0
    .byte 243
    .byte 64
    .byte 1
    .byte 0
    .byte 49
    .byte 0
    .byte 52
    .byte 0
    .byte 97
    .byte 0
    .byte 2
    .byte 0

_008D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    PlayFanfare SEQ_SE_DP_PINPON
    BufferPlayerName 0
    Message 5
    PlayMusic SEQ_SILENCE_DUNGEON
    PlaySound SEQ_FANFA4
    WaitSound
    CloseMessage
    ReleaseAll
    SetVar 0x40F3, 1
    Call _01C0
    End

_00B9:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 8
    ScrCmd_03E 0x800C
    CloseMessage
    GoToIfEq 0x800C, 0, _00D9
    ReleaseAll
    End

_00D9:
    SetVar 0x40F3, 2
    ReleaseAll
    Call _01C0
    End

_00E9:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Call _0170
    CloseMessage
    GoToIfEq 0x800C, 0, _0114
    SetVar 0x40F3, 2
    ReleaseAll
    Call _01C0
    End

_0114:
    ApplyMovement 0xFF, _0124
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
_0124:
    MoveAction_00C
    EndMovement

_012C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Call _0170
    CloseMessage
    GoToIfEq 0x800C, 0, _0159
    SetVar 0x40F3, 2
    ReleaseAll
    Call _01C0
    End

_0159:
    ApplyMovement 0, _0168
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
_0168:
    MoveAction_022
    EndMovement

_0170:
    Message 0
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _01B5
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 1, _01A5
    BufferPlayerName 0
    Message 2
    WaitABXPadPress
    SetVar 0x800C, 0
    Return

_01A5:
    BufferPlayerName 0
    Message 3
    WaitABXPadPress
    SetVar 0x800C, 0
    Return

_01B5:
    Message 1
    SetVar 0x800C, 1
    Return

_01C0:
    ScrCmd_253 1
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_PAL_PARK_LOBBY, 0, 7, 7, 1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    Return

    .byte 0
    .byte 0
