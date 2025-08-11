#include "macros/scrcmd.inc"
#include "generated/hidden_locations.h"
#include "res/text/bank/newmoon_island.h"


    ScriptEntry _000A
    ScriptEntry _0037
    ScriptEntryEnd

_000A:
    SetFlag FLAG_UNK_0x09E4
    EnableHiddenLocation HIDDEN_LOCATION_NEWMOON_ISLAND
    ClearFlag FLAG_UNK_0x0279
    CallIfUnset FLAG_UNK_0x0158, _0024
    End

_0024:
    GoToIfNe VAR_UNK_0x40F8, 2, _0035
    SetFlag FLAG_UNK_0x0279
_0035:
    Return

_0037:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetPlayerDir VAR_0x8004
    Message 0
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _005D
    GoTo _009D

_005D:
    Message 1
    CloseMessage
    Call _00A8
    CallIfEq VAR_0x8004, 1, _00C2
    CallIfEq VAR_0x8004, 2, _00DC
    CallIfEq VAR_0x8004, 0, _00F6
    ScrCmd_23D 0, 2, 33, 44, 0x2EE
    ReleaseAll
    End

_009D:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A8:
    ApplyMovement 0, _0110
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement 0, _011C
    WaitMovement
    Return

_00C2:
    ApplyMovement LOCALID_PLAYER, _0124
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_PLAYER, _011C
    WaitMovement
    Return

_00DC:
    ApplyMovement LOCALID_PLAYER, _0134
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_PLAYER, _011C
    WaitMovement
    Return

_00F6:
    ApplyMovement LOCALID_PLAYER, _0140
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_PLAYER, _011C
    WaitMovement
    Return

    .balign 4, 0
_0110:
    WalkNormalWest
    Delay15
    EndMovement

    .balign 4, 0
_011C:
    SetInvisible
    EndMovement

    .balign 4, 0
_0124:
    WalkNormalSouth
    WalkNormalWest 2
    Delay15
    EndMovement

    .balign 4, 0
_0134:
    WalkNormalWest 2
    Delay15
    EndMovement

    .balign 4, 0
_0140:
    WalkNormalNorth
    WalkNormalWest 2
    Delay15
    EndMovement
