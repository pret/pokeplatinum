#include "macros/scrcmd.inc"

    .data

    ScriptEntry _001A
    ScriptEntry _0022
    ScriptEntry _0198
    ScriptEntry _01B7
    ScriptEntry _01D6
    ScriptEntry _01FF
    .short 0xFD13

_001A:
    ScrCmd_2CD
    End

    .byte 205
    .byte 2
    .byte 2
    .byte 0

_0022:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ApplyMovement 2, _013C
    WaitMovement
    Message 0
    CloseMessage
    ScrCmd_0E5 0x196, 0
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _0135
    Message 1
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_065 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    WaitTime 15, 0x800C
    ScrCmd_1BD 0x8004
    GoToIfEq 0x8004, 0, _00A4
    GoToIfEq 0x8004, 2, _00BE
    GoToIfEq 0x8004, 3, _00D0
    End

_00A4:
    ApplyMovement 2, _0144
    ApplyMovement 0xFF, _0174
    WaitMovement
    GoTo _00E2
    End

_00BE:
    ApplyMovement 2, _015C
    WaitMovement
    GoTo _00E2
    End

_00D0:
    ApplyMovement 2, _0168
    WaitMovement
    GoTo _00E2
    End

_00E2:
    Message 4
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    SetFlag 0x1FD
    SetFlag 0x1BB
    SetFlag 0x1C2
    SetFlag 129
    ClearFlag 0x192
    ClearFlag 0x200
    ClearFlag 0x1FE
    ScrCmd_065 2
    ScrCmd_065 1
    ScrCmd_065 3
    SetVar 0x407A, 3
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    SetFlag 0x987
    ReleaseAll
    End

_0135:
    ScrCmd_0EB
    ReleaseAll
    End

    .balign 4, 0
_013C:
    MoveAction_020
    EndMovement

    .balign 4, 0
_0144:
    MoveAction_00C
    EndMovement

    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 15
    .byte 0
    .byte 2
    .byte 0
    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_015C:
    MoveAction_00C 3
    MoveAction_023
    EndMovement

    .balign 4, 0
_0168:
    MoveAction_00C 3
    MoveAction_022
    EndMovement

    .balign 4, 0
_0174:
    MoveAction_03F
    MoveAction_021
    EndMovement

    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 62
    .byte 0
    .byte 1
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_0198:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_04C 35, 0
    Message 2
    ScrCmd_04D
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01B7:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_04C 0x1AB, 0
    Message 5
    ScrCmd_04D
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01D6:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 129, _01F4
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01F4:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01FF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
