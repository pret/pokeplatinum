#include "macros/scrcmd.inc"
#include "res/text/bank/mt_coronet_1f_south.h"


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
    WalkNormalSouth 6
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0070:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0078:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0080:
    Delay8 3
    WalkNormalWest 10
    EndMovement

    .balign 4, 0
_008C:
    WalkOnSpotNormalNorth
    Delay8 4
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_009C:
    Delay8 3
    WalkOnSpotNormalNorth
    Delay8
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_00B0:
    WalkNormalSouth
    WalkOnSpotNormalNorth
    Delay8 2
    WalkOnSpotNormalWest
    EndMovement
