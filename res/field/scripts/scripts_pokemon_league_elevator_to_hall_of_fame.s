#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _000A
    .short 0xFD13

_000A:
    LockAll
    ApplyMovement 0xFF, _016C
    WaitMovement
    ScrCmd_186 0, 6, 14
    ClearFlag 0x23A
    ScrCmd_064 0
    ScrCmd_062 0
    ApplyMovement 0, _0138
    ApplyMovement 0xFF, _017C
    WaitMovement
    Message 0
    CloseMessage
    ScrCmd_186 1, 4, 14
    ClearFlag 0x23B
    ScrCmd_064 1
    ScrCmd_062 1
    ApplyMovement 1, _0114
    WaitMovement
    ApplyMovement 0xFF, _0190
    WaitMovement
    BufferPlayerName 0
    Message 1
    CloseMessage
    ApplyMovement 0, _0144
    WaitMovement
    Message 2
    BufferPlayerName 0
    Message 3
    ApplyMovement 0, _0150
    WaitMovement
    Message 4
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _00B1
    GoToIfEq 0x800C, 1, _00BD
    End

_00B1:
    BufferPlayerName 0
    Message 5
    GoTo _00C9

_00BD:
    BufferPlayerName 0
    Message 6
    GoTo _00C9

_00C9:
    Message 7
    CloseMessage
    ApplyMovement 0, _0158
    ApplyMovement 1, _0120
    ApplyMovement 0xFF, _0198
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_POKEMON_LEAGUE_HALL_OF_FAME, 0, 8, 15, 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

    .balign 4, 0
_0114:
    MoveAction_00C 8
    MoveAction_023
    EndMovement

    .balign 4, 0
_0120:
    MoveAction_03F 3
    MoveAction_00C 2
    MoveAction_00F
    MoveAction_00C 2
    MoveAction_045
    EndMovement

    .balign 4, 0
_0138:
    MoveAction_00C 8
    MoveAction_022
    EndMovement

    .balign 4, 0
_0144:
    MoveAction_022
    MoveAction_04B
    EndMovement

    .balign 4, 0
_0150:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0158:
    MoveAction_00C 2
    MoveAction_00E
    MoveAction_00C 2
    MoveAction_045
    EndMovement

    .balign 4, 0
_016C:
    MoveAction_00C 17
    MoveAction_03F
    MoveAction_021
    EndMovement

    .balign 4, 0
_017C:
    MoveAction_03F 6
    MoveAction_023
    EndMovement

    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0190:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0198:
    MoveAction_03F
    MoveAction_020
    MoveAction_03F 6
    MoveAction_00C 4
    EndMovement
