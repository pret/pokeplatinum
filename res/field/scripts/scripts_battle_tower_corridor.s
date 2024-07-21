#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _0010
    ScriptEntry _0025
    .short 0xFD13

_000E:
    End

_0010:
    CallIfNe 0x40DC, 0, _001F
    End

_001F:
    ScrCmd_1B2 0xFF
    Return

_0025:
    LockAll
    Call _008E
    ScrCmd_1B7 0x800C, 4
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 1, _00F0
    GoToIfEq 0x8008, 2, _010A
    GoToIfEq 0x8008, 3, _0124
    GoTo _00D6

_0066:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_TOWER_BATTLE_ROOM, 0, 7, 6, 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_008E:
    ScrCmd_168 0, 0, 2, 2, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ApplyMovement 0, _0140
    WaitMovement
    ScrCmd_1B1 0xFF
    ApplyMovement 0xFF, _014C
    WaitMovement
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    Return

    .byte 94
    .byte 0
    .byte 0
    .byte 0
    .byte 138
    .byte 0
    .byte 0
    .byte 0
    .byte 94
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 146
    .byte 0
    .byte 0
    .byte 0
    .byte 95
    .byte 0
    .byte 27
    .byte 0

_00D6:
    ApplyMovement 0, _0178
    ApplyMovement 0xFF, _0188
    WaitMovement
    GoTo _0066
    End

_00F0:
    ApplyMovement 0, _019C
    ApplyMovement 0xFF, _01AC
    WaitMovement
    GoTo _0066
    End

_010A:
    ApplyMovement 0, _01C0
    ApplyMovement 0xFF, _01D0
    WaitMovement
    GoTo _0066
    End

_0124:
    ApplyMovement 0, _01E4
    ApplyMovement 0xFF, _01F4
    WaitMovement
    GoTo _0066

    .byte 2
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0140:
    MoveAction_00D 3
    MoveAction_000
    EndMovement

    .balign 4, 0
_014C:
    MoveAction_00D 2
    EndMovement

    .byte 0
    .byte 0
    .byte 1
    .byte 0
    .byte 12
    .byte 0
    .byte 2
    .byte 0
    .byte 69
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 15
    .byte 0
    .byte 1
    .byte 0
    .byte 0
    .byte 0
    .byte 1
    .byte 0
    .byte 20
    .byte 0
    .byte 1
    .byte 0
    .byte 69
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0178:
    MoveAction_00F 4
    MoveAction_00C 2
    MoveAction_045
    EndMovement

    .balign 4, 0
_0188:
    MoveAction_00D
    MoveAction_00F 4
    MoveAction_00C 2
    MoveAction_045
    EndMovement

    .balign 4, 0
_019C:
    MoveAction_00F 8
    MoveAction_00C 2
    MoveAction_045
    EndMovement

    .balign 4, 0
_01AC:
    MoveAction_00D
    MoveAction_00F 8
    MoveAction_00C 2
    MoveAction_045
    EndMovement

    .balign 4, 0
_01C0:
    MoveAction_00F 12
    MoveAction_00C 2
    MoveAction_045
    EndMovement

    .balign 4, 0
_01D0:
    MoveAction_00D
    MoveAction_00F 12
    MoveAction_00C 2
    MoveAction_045
    EndMovement

    .balign 4, 0
_01E4:
    MoveAction_00F 16
    MoveAction_00C 2
    MoveAction_045
    EndMovement

    .balign 4, 0
_01F4:
    MoveAction_00D
    MoveAction_00F 16
    MoveAction_00C 2
    MoveAction_045
    EndMovement
