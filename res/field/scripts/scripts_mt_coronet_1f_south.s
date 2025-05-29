#include "macros/scrcmd.inc"
#include "res/text/bank/mt_coronet_1f_south.h"

    .data

    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    LockAll
    ApplyMovement LOCALID_PLAYER, _008C
    ApplyMovement 6, _0064
    WaitMovement
    Message 0
    CloseMessage
    ApplyMovement 6, _0070
    ApplyMovement LOCALID_PLAYER, _009C
    WaitMovement
    Message 1
    ApplyMovement 6, _0078
    WaitMovement
    Message 2
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _00B0
    ApplyMovement 6, _0080
    WaitMovement
    RemoveObject 6
    SetVar VAR_UNK_0x4096, 1
    ReleaseAll
    End

    .balign 4, 0
_0064:
    MoveAction_WalkNormalSouth 6
    MoveAction_WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0070:
    MoveAction_WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0078:
    MoveAction_WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0080:
    MoveAction_Delay8 3
    MoveAction_WalkNormalWest 10
    EndMovement

    .balign 4, 0
_008C:
    MoveAction_WalkOnSpotNormalNorth
    MoveAction_Delay8 4
    MoveAction_WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_009C:
    MoveAction_Delay8 3
    MoveAction_WalkOnSpotNormalNorth
    MoveAction_Delay8
    MoveAction_WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_00B0:
    MoveAction_WalkNormalSouth
    MoveAction_WalkOnSpotNormalNorth
    MoveAction_Delay8 2
    MoveAction_WalkOnSpotNormalWest
    EndMovement
