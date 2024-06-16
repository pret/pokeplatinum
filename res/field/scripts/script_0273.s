    .include "macros/scrcmd.inc"

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
    PlayFanfare 0x5DC
    LockAll
    ScrCmd_02B 9
    WaitTime 30, 0x800C
    ScrCmd_02B 10
    PlayFanfare 0x5DD
    WaitTime 30, 0x800C
    ScrCmd_02B 11
    PlayFanfare 0x5DD
    WaitTime 30, 0x800C
    ScrCmd_02B 12
    PlayFanfare 0x5DD
    WaitTime 30, 0x800C
    ScrCmd_02B 13
    PlayFanfare 0x643
    WaitTime 30, 0x800C
    ScrCmd_253 0
    SetVar 0x40F3, 1
    SetFlag 0x995
    ScrCmd_050 0x42D
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
    PlayFanfare 0x5DC
    LockAll
    PlayFanfare 0x5F1
    ScrCmd_0CD 0
    Message 5
    ScrCmd_050 0x3EA
    ScrCmd_04E 0x486
    ScrCmd_04F
    CloseMessage
    ReleaseAll
    SetVar 0x40F3, 1
    Call _01C0
    End

_00B9:
    PlayFanfare 0x5DC
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
    PlayFanfare 0x5DC
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
    PlayFanfare 0x5DC
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
    ScrCmd_0CD 0
    Message 2
    WaitABXPadPress
    SetVar 0x800C, 0
    Return

_01A5:
    ScrCmd_0CD 0
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
    ScrCmd_0BE 0x189, 0, 7, 7, 1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    Return

    .byte 0
    .byte 0
