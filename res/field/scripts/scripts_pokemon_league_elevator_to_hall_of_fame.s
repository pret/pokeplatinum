#include "macros/scrcmd.inc"
#include "res/text/bank/pokemon_league_elevator_to_hall_of_fame.h"

    .data

    ScriptEntry _000A
    ScriptEntry _000A
    ScriptEntryEnd

_000A:
    LockAll
    ApplyMovement LOCALID_PLAYER, _016C
    WaitMovement
    SetObjectEventPos 0, 6, 14
    ClearFlag FLAG_UNK_0x023A
    AddObject 0
    ScrCmd_062 0
    ApplyMovement 0, _0138
    ApplyMovement LOCALID_PLAYER, _017C
    WaitMovement
    Message 0
    CloseMessage
    SetObjectEventPos 1, 4, 14
    ClearFlag FLAG_UNK_0x023B
    AddObject 1
    ScrCmd_062 1
    ApplyMovement 1, _0114
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _0190
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
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _00B1
    GoToIfEq VAR_RESULT, 1, _00BD
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
    ApplyMovement LOCALID_PLAYER, _0198
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
    MoveAction_WalkNormalNorth 8
    MoveAction_WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0120:
    MoveAction_Delay8 3
    MoveAction_WalkNormalNorth 2
    MoveAction_WalkNormalEast
    MoveAction_WalkNormalNorth 2
    MoveAction_SetInvisible
    EndMovement

    .balign 4, 0
_0138:
    MoveAction_WalkNormalNorth 8
    MoveAction_WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0144:
    MoveAction_WalkOnSpotNormalWest
    MoveAction_ExclamationPoint
    EndMovement

    .balign 4, 0
_0150:
    MoveAction_WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0158:
    MoveAction_WalkNormalNorth 2
    MoveAction_WalkNormalWest
    MoveAction_WalkNormalNorth 2
    MoveAction_SetInvisible
    EndMovement

    .balign 4, 0
_016C:
    MoveAction_WalkNormalNorth 17
    MoveAction_Delay8
    MoveAction_WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_017C:
    MoveAction_Delay8 6
    MoveAction_WalkOnSpotNormalEast
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
    MoveAction_WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0198:
    MoveAction_Delay8
    MoveAction_WalkOnSpotNormalNorth
    MoveAction_Delay8 6
    MoveAction_WalkNormalNorth 4
    EndMovement
