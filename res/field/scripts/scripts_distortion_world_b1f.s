#include "macros/scrcmd.inc"
#include "res/text/bank/distortion_world_b1f.h"

    .data

    ScriptEntry _000E
    ScriptEntry _0012
    ScriptEntry _004B
    ScriptEntryEnd

_000E:
    ScrCmd_2F2
    End

_0012:
    LockAll
    ApplyMovement LOCALID_PLAYER, _0078
    ApplyMovement 128, _00A8
    WaitMovement
    Message 0
    CloseMessage
    ApplyMovement 128, _00B4
    ApplyMovement LOCALID_PLAYER, _0080
    WaitMovement
    ScrCmd_312 128
    SetVar 0x4055, 3
    ReleaseAll
    End

_004B:
    LockAll
    PlayCry SPECIES_MESPRIT
    Message 1
    CloseMessage
    ScrCmd_04D
    ScrCmd_311 129
    ApplyMovement LOCALID_PLAYER, _0090
    ApplyMovement 129, _00D8
    WaitMovement
    ScrCmd_312 129
    ReleaseAll
    End

    .balign 4, 0
_0078:
    MoveAction_032
    EndMovement

    .balign 4, 0
_0080:
    MoveAction_065
    MoveAction_063
    MoveAction_034
    EndMovement

    .balign 4, 0
_0090:
    MoveAction_002
    MoveAction_060 8
    MoveAction_066
    MoveAction_065
    MoveAction_032
    EndMovement

    .balign 4, 0
_00A8:
    MoveAction_065 3
    MoveAction_033
    EndMovement

    .balign 4, 0
_00B4:
    MoveAction_014
    MoveAction_013 2
    MoveAction_034
    MoveAction_065
    MoveAction_119 2
    MoveAction_118
    MoveAction_119
    MoveAction_065
    EndMovement

    .balign 4, 0
_00D8:
    MoveAction_065 3
    MoveAction_008
    MoveAction_012
    MoveAction_016
    MoveAction_020 8
    EndMovement
