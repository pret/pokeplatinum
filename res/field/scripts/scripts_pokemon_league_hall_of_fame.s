#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    LockAll
    ApplyMovement 0xFF, _0124
    WaitMovement
    ApplyMovement 1, _0134
    WaitMovement
    ScrCmd_28F 0x800C
    CallIfEq 0x800C, 0, _0111
    CallIfNe 0x800C, 0, _0119
    CloseMessage
    ApplyMovement 1, _0144
    ApplyMovement 0, _015C
    WaitMovement
    WaitTime 15, 0x800C
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _0074
    GoToIfEq 0x800C, 1, _0080
    End

_0074:
    BufferPlayerName 0
    Message 4
    GoTo _008C

_0080:
    BufferPlayerName 0
    Message 5
    GoTo _008C

_008C:
    CloseMessage
    ApplyMovement 0xFF, _012C
    ApplyMovement 1, _014C
    ApplyMovement 0, _0164
    WaitMovement
    Message 6
    CloseMessage
    SetFlag 0x982
    ScrCmd_22D 2, 0x800C
    CallIfEq 0x800C, 1, _010A
    CallIfEq 0x40F4, 0, _0102
    ScrCmd_177 0x800C
    ScrCmd_25A 0x800C
    FadeScreen 6, 3, 0, 0
    WaitFadeScreen
    ScrCmd_260 24
    Call _0174
    ScrCmd_0B0
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_0102:
    SetVar 0x40F4, 1
    Return

_010A:
    ScrCmd_270 2, 1
    Return

_0111:
    Message 0
    Message 2
    Return

_0119:
    Message 1
    Message 3
    Return

    .balign 4, 0
_0124:
    MoveAction_00C 8
    EndMovement

    .balign 4, 0
_012C:
    MoveAction_00C 2
    EndMovement

    .balign 4, 0
_0134:
    MoveAction_020
    MoveAction_03F 2
    MoveAction_023
    EndMovement

    .balign 4, 0
_0144:
    MoveAction_021
    EndMovement

    .balign 4, 0
_014C:
    MoveAction_03F
    MoveAction_023
    MoveAction_020
    EndMovement

    .balign 4, 0
_015C:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0164:
    MoveAction_03F
    MoveAction_022
    MoveAction_020
    EndMovement

_0174:
    ClearFlag 0x1D1
    ClearFlag 0x98B
    CallIfUnset 208, _023C
    CallIfUnset 209, _0244
    CallIfUnset 0x120, _024C
    CallIfUnset 0x11B, _0263
    CallIfUnset 0x126, _027B
    CallIfUnset 0x127, _0281
    CallIfUnset 0x121, _0287
    CallIfEq 0x4059, 2, _028D
    CallIfEq 0x4058, 2, _0299
    CallIfEq 0x405E, 2, _02A5
    CallIfEq 0x405F, 2, _02AD
    CallIfEq 0x4060, 2, _02B5
    CallIfEq 0x410F, 0, _0234
    ClearFlag 0x177
    CallIfUnset 185, _02BD
    ClearFlag 0x186
    ClearFlag 0x124
    SetFlag 0x2A0
    Return

_0234:
    SetVar 0x410F, 1
    Return

_023C:
    SetVar 0x40C4, 0
    Return

_0244:
    SetVar 0x40C5, 0
    Return

_024C:
    GoToIfUnset 0x125, _0261
    ClearFlag 0x1DD
    SetVar 0x409E, 1
_0261:
    Return

_0263:
    ScrCmd_22D 2, 0x800C
    GoToIfEq 0x800C, 0, _0279
    ClearFlag 0x243
_0279:
    Return

_027B:
    ClearFlag 0x1E0
    Return

_0281:
    ClearFlag 0x1E1
    Return

_0287:
    ClearFlag 0x250
    Return

_028D:
    ClearFlag 0x1DF
    SetVar 0x4059, 3
    Return

_0299:
    ClearFlag 0x24F
    SetVar 0x4058, 3
    Return

_02A5:
    SetVar 0x405E, 3
    Return

_02AD:
    SetVar 0x405F, 3
    Return

_02B5:
    SetVar 0x4060, 3
    Return

_02BD:
    ClearFlag 0x185
    Return

    .byte 0
