#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0012
    ScriptEntry _002B
    ScriptEntry _00E0
    ScriptEntry _00E2
    .short 0xFD13

_0012:
    SetFlag 0x9D7
    GoToIfUnset 228, _0023
    End

_0023:
    SetVar 0x4091, 0
    End

_002B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetPlayerBike 0
    GoToIfGe 0x4091, 1, _0095
    BufferPlayerName 0
    CallIfUnset 224, _008B
    CallIfSet 224, _0090
    BufferPlayerName 0
    PlaySound SEQ_GONIN
    Message 1
    WaitSound
    SetFlag 224
    SetVar 0x4091, 1
    Message 2
    WaitABXPadPress
    CloseMessage
    SetVar 0x403F, 0x264
    ScrCmd_161
    ScrCmd_06D 4, 48
    ReleaseAll
    End

_008B:
    Message 0
    Return

_0090:
    Message 3
    Return

_0095:
    GoToIfGe 0x40E2, 2, _00C4
    GoToIfEq 0x40E2, 1, _00BB
    BufferPlayerName 0
    Message 9
    GoTo _00D2

_00BB:
    Message 10
    GoTo _00D2

_00C4:
    BufferPlayerName 0
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00D2:
    AddVar 0x40E2, 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00E0:
    End

_00E2:
    LockAll
    ScrCmd_162
    ScrCmd_06D 4, 16
    ScrCmd_1BD 0x800C
    GoToIfEq 0x800C, 2, _0103
    GoTo _011B

_0103:
    ApplyMovement 0xFF, _0194
    ApplyMovement 4, _01D8
    WaitMovement
    GoTo _0133

_011B:
    ApplyMovement 0xFF, _019C
    ApplyMovement 4, _01E4
    WaitMovement
    GoTo _0133

_0133:
    BufferPlayerName 0
    Message 5
    CloseMessage
    ScrCmd_1BD 0x800C
    GoToIfEq 0x800C, 3, _0152
    GoTo _016A

_0152:
    ApplyMovement 0xFF, _01A4
    ApplyMovement 4, _01F0
    WaitMovement
    GoTo _0182

_016A:
    ApplyMovement 0xFF, _01B0
    ApplyMovement 4, _0200
    WaitMovement
    GoTo _0182

_0182:
    ScrCmd_065 4
    SetFlag 228
    SetVar 0x4091, 2
    ReleaseAll
    End

    .balign 4, 0
_0194:
    MoveAction_023
    EndMovement

    .balign 4, 0
_019C:
    MoveAction_020
    EndMovement

    .balign 4, 0
_01A4:
    MoveAction_00C
    MoveAction_021
    EndMovement

    .balign 4, 0
_01B0:
    MoveAction_00F
    MoveAction_022
    EndMovement

    .byte 63
    .byte 0
    .byte 5
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 63
    .byte 0
    .byte 5
    .byte 0
    .byte 12
    .byte 0
    .byte 1
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_01D8:
    MoveAction_022
    MoveAction_04B
    EndMovement

    .balign 4, 0
_01E4:
    MoveAction_021
    MoveAction_04B
    EndMovement

    .balign 4, 0
_01F0:
    MoveAction_03F 3
    MoveAction_00E
    MoveAction_021
    EndMovement

    .balign 4, 0
_0200:
    MoveAction_03F 3
    MoveAction_00D
    MoveAction_021
    EndMovement
