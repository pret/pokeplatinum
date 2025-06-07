#include "macros/scrcmd.inc"
#include "res/text/bank/canalave_library_1f.h"

    .data

    ScriptEntry _0016
    ScriptEntry _003F
    ScriptEntry _0080
    ScriptEntry _0091
    ScriptEntry _00A2
    ScriptEntryEnd

_0016:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00A8, _0034
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0034:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_003F:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfSet FLAG_UNK_0x00A8, _0068
    Message 2
    FacePlayer
    Message 3
    CloseMessage
    ApplyMovement 1, _0078
    WaitMovement
    ReleaseAll
    End

_0068:
    FacePlayer
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0078:
    FaceNorth
    EndMovement

_0080:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0091:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 7
    GetRandom VAR_0x8000, 5
    CallIfEq VAR_0x8000, 0, _00FC
    CallIfEq VAR_0x8000, 1, _0101
    CallIfEq VAR_0x8000, 2, _0106
    CallIfEq VAR_0x8000, 3, _010B
    CallIfEq VAR_0x8000, 4, _0110
    GoTo _0115
    End

_00FC:
    Message 9
    Return

_0101:
    Message 10
    Return

_0106:
    Message 11
    Return

_010B:
    Message 12
    Return

_0110:
    Message 13
    Return

_0115:
    Message 8
    CloseMessage
    GetPlayerDir VAR_0x8000
    CallIfEq VAR_0x8000, 0, _0155
    CallIfEq VAR_0x8000, 2, _0169
    CallIfEq VAR_0x8000, 3, _0175
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject 2
    WaitFanfare SEQ_SE_DP_KAIDAN2
    ReleaseAll
    End

_0155:
    ApplyMovement 2, _018C
    ApplyMovement LOCALID_PLAYER, _01B0
    WaitMovement
    Return

_0169:
    ApplyMovement 2, _018C
    WaitMovement
    Return

_0175:
    ApplyMovement 2, _019C
    ApplyMovement LOCALID_PLAYER, _01BC
    WaitMovement
    Return

    .balign 4, 0
_018C:
    WalkNormalWest 5
    WalkNormalSouth 6
    Delay4
    EndMovement

    .balign 4, 0
_019C:
    WalkNormalSouth
    WalkNormalWest 5
    WalkNormalSouth 5
    Delay4
    EndMovement

    .balign 4, 0
_01B0:
    Delay8
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_01BC:
    Delay8 2
    Delay4
    WalkOnSpotNormalWest
    EndMovement
