#include "macros/scrcmd.inc"

    .data

    ScriptEntry _001E
    ScriptEntry _00C7
    ScriptEntry _00CB
    ScriptEntry _013B
    ScriptEntry _01D0
    ScriptEntry _0230
    ScriptEntry _030C
    .short 0xFD13

_001E:
    CallIfSet 186, _009D
    CallIfUnset 186, _0087
    CallIfEq 0x4097, 0, _0071
    ScrCmd_14D 0x4000
    GoToIfEq 0x4000, 0, _0061
    GoToIfEq 0x4000, 1, _0069
    End

_0061:
    SetVar 0x4020, 97
    End

_0069:
    SetVar 0x4020, 0
    End

_0071:
    ScrCmd_186 5, 46, 50
    ScrCmd_188 5, 14
    ScrCmd_189 5, 0
    Return

_0087:
    ScrCmd_186 5, 46, 51
    ScrCmd_188 5, 15
    ScrCmd_189 5, 1
    Return

_009D:
    ScrCmd_186 5, 50, 37
    ScrCmd_188 5, 16
    ScrCmd_189 5, 2
    ScrCmd_186 6, 50, 39
    ScrCmd_188 6, 16
    ScrCmd_189 6, 2
    Return

_00C7:
    End
    End

_00CB:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfSet 186, _0128
    ApplyMovement 5, _01C8
    WaitMovement
    Message 2
    FacePlayer
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _0104
    GoTo _0112
    End

_0104:
    BufferPlayerName 0
    Message 3
    GoTo _0120
    End

_0112:
    BufferPlayerName 0
    Message 5
    GoTo _0120
    End

_0120:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0128:
    FacePlayer
    BufferPlayerName 0
    BufferRivalName 1
    Message 14
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_013B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 186, _018B
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _0167
    GoTo _0175
    End

_0167:
    BufferPlayerName 0
    Message 7
    GoTo _0183
    End

_0175:
    BufferPlayerName 0
    Message 8
    GoTo _0183
    End

_0183:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_018B:
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _01A4
    GoTo _01B2
    End

_01A4:
    BufferPlayerName 0
    Message 15
    GoTo _01C0
    End

_01B2:
    BufferPlayerName 0
    Message 16
    GoTo _01C0
    End

_01C0:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_01C8:
    MoveAction_023
    EndMovement

_01D0:
    LockAll
    ApplyMovement 5, _0220
    WaitMovement
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _01F5
    GoTo _0203
    End

_01F5:
    BufferPlayerName 0
    Message 0
    GoTo _0211
    End

_0203:
    BufferPlayerName 0
    Message 1
    GoTo _0211
    End

_0211:
    SetVar 0x4097, 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0220:
    MoveAction_021
    MoveAction_04B
    MoveAction_00D
    EndMovement

_0230:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ApplyMovement 6, _02F4
    WaitMovement
    Message 9
    CloseMessage
    ScrCmd_0E5 0x195, 0
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _02DB
    Message 10
    Message 11
    Message 12
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_065 7
    ScrCmd_065 8
    ScrCmd_065 0
    ScrCmd_065 1
    ScrCmd_065 2
    ScrCmd_065 3
    SetFlag 0x98E
    ApplyMovement 6, _02FC
    ApplyMovement 0xFF, _0304
    WaitMovement
    ScrCmd_187 5, 53, 1, 39, 3
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    SetFlag 0x29A
    SetFlag 186
    ClearFlag 0x1BA
    SetVar 0x40D3, 1
    BufferRivalName 0
    Message 13
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02DB:
    ScrCmd_0EB
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 12
    .byte 0
    .byte 3
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_02F4:
    MoveAction_023
    EndMovement

    .balign 4, 0
_02FC:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0304:
    MoveAction_022
    EndMovement

_030C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
