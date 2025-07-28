#include "macros/scrcmd.inc"
#include "res/text/bank/lake_acuity.h"


    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    LockAll
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    AddFreeCamera VAR_0x8004, VAR_0x8005
    ApplyFreeCameraMovement _0228
    WaitMovement
    WaitTime 15, VAR_RESULT
    ApplyMovement 2, _01C4
    WaitMovement
    BufferRivalName 0
    Message 0
    CloseMessage
    ApplyMovement 1, _01EC
    WaitMovement
    Message 1
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 14, _0136
    CallIfEq VAR_0x8004, 15, _0154
    RestoreCamera
    Message 2
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 14, _0168
    CallIfEq VAR_0x8004, 15, _0174
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject 1
    WaitFanfare SEQ_SE_DP_KAIDAN2
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 14, _0180
    CallIfEq VAR_0x8004, 15, _018C
    ApplyMovement 2, _01CC
    WaitMovement
    BufferRivalName 0
    Message 3
    CloseMessage
    ApplyMovement 2, _01D4
    WaitMovement
    Message 4
    CloseMessage
    WaitTime 30, VAR_RESULT
    ApplyMovement 2, _01CC
    WaitMovement
    Message 5
    CloseMessage
    ApplyMovement 2, _01DC
    ApplyMovement LOCALID_PLAYER, _01B8
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject 2
    WaitFanfare SEQ_SE_DP_KAIDAN2
    SetFlag FLAG_ALT_MUSIC_LAKE_ACUITY
    ClearFlag FLAG_UNK_0x0223
    SetVar VAR_UNK_0x40D3, 2
    ClearFlag FLAG_UNK_0x0198
    SetFlag FLAG_UNK_0x0194
    SetFlag FLAG_UNK_0x0175
    SetFlag FLAG_UNK_0x028D
    SetFlag FLAG_UNK_0x028C
    ClearFlag FLAG_UNK_0x00A8
    ReleaseAll
    End

_0136:
    ApplyMovement 1, _01F4
    ApplyFreeCameraMovement _0230
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _01B0
    WaitMovement
    Return

_0154:
    ApplyMovement 1, _0204
    ApplyFreeCameraMovement _0230
    WaitMovement
    Return

_0168:
    ApplyMovement 1, _0210
    WaitMovement
    Return

_0174:
    ApplyMovement 1, _0218
    WaitMovement
    Return

_0180:
    ApplyMovement LOCALID_PLAYER, _0198
    WaitMovement
    Return

_018C:
    ApplyMovement LOCALID_PLAYER, _01A4
    WaitMovement
    Return

    .balign 4, 0
_0198:
    WalkNormalNorth 5
    WalkNormalEast 2
    EndMovement

    .balign 4, 0
_01A4:
    WalkNormalNorth 5
    WalkNormalEast
    EndMovement

    .balign 4, 0
_01B0:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_01B8:
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_01C4:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_01CC:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_01D4:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_01DC:
    WalkNormalSouth 2
    WalkNormalWest 2
    WalkNormalSouth 3
    EndMovement

    .balign 4, 0
_01EC:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_01F4:
    WalkNormalWest 2
    WalkNormalSouth 6
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0204:
    WalkNormalWest 2
    WalkNormalSouth 5
    EndMovement

    .balign 4, 0
_0210:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0218:
    WalkNormalWest
    WalkNormalSouth
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0228:
    WalkNormalNorth 5
    EndMovement

    .balign 4, 0
_0230:
    WalkNormalSouth 5
    EndMovement
