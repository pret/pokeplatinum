#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0012
    ScriptEntry _0146
    ScriptEntry _015C
    ScriptEntry _0172
    .short 0xFD13

_0012:
    CallIfNe 0x40DB, 0, _008A
    ScrCmd_1DD 43, 0, 0x400A
    Call _008E
    CallIfEq 0x400A, 2, _009E
    CallIfEq 0x400A, 3, _009E
    CallIfEq 0x400A, 0, _008E
    CallIfEq 0x400A, 1, _008E
    CallIfEq 0x400A, 4, _0096
    CallIfEq 0x400A, 5, _0096
    CallIfEq 0x400A, 6, _0096
    End

_008A:
    ScrCmd_265
    Return

_008E:
    SetVar 0x402A, 231
    Return

_0096:
    SetVar 0x402A, 235
    Return

_009E:
    SetVar 0x402A, 232
    Return

_00A6:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_1DD 43, 0, 0x800C
    GoToIfEq 0x800C, 4, _01F8
    GoToIfEq 0x800C, 5, _01F8
    ScrCmd_1F8
    ScrCmd_2C4 5
    ScrCmd_0A1
    Warp MAP_HEADER_BATTLE_TOWER, 0, 15, 6, 0
    End

_00E9:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_1F8
    ScrCmd_2C4 6
    ScrCmd_0A1
    Warp MAP_HEADER_BATTLE_TOWER, 0, 11, 6, 0
    End

_010A:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_TOWER_BATTLE_SALON, 0, 8, 2, 1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_0132:
    Call _0188
    ScrCmd_23C 0x4000, 3
    Call _0194
    Return

_0146:
    LockAll
    SetVar 0x4000, 0
    Call _0132
    GoTo _00A6
    End

_015C:
    LockAll
    SetVar 0x4000, 0
    Call _0132
    GoTo _00E9
    End

_0172:
    LockAll
    SetVar 0x4000, 1
    Call _0132
    GoTo _010A
    End

_0188:
    ApplyMovement 0xFF, _01BC
    WaitMovement
    Return

_0194:
    ApplyMovement 0, _01C8
    ApplyMovement 0xFF, _01E4
    WaitMovement
    Return

    .byte 12
    .byte 0
    .byte 2
    .byte 0
    .byte 3
    .byte 0
    .byte 1
    .byte 0
    .byte 15
    .byte 0
    .byte 1
    .byte 0
    .byte 1
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_01BC:
    MoveAction_00C 2
    MoveAction_001
    EndMovement

    .balign 4, 0
_01C8:
    MoveAction_00D
    MoveAction_002
    MoveAction_00E
    MoveAction_001
    MoveAction_00D
    MoveAction_045
    EndMovement

    .balign 4, 0
_01E4:
    MoveAction_03F 2
    MoveAction_03D
    MoveAction_00D 2
    MoveAction_045
    EndMovement

_01F8:
    ScrCmd_1F8
    ScrCmd_2C4 5
    ScrCmd_0A1
    Warp MAP_HEADER_BATTLE_TOWER, 0, 19, 6, 0
    End

    .byte 0
    .byte 0
    .byte 0
