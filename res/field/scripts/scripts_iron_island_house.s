#include "macros/scrcmd.inc"
#include "res/text/bank/iron_island_house.h"


    ScriptEntry _000A
    ScriptEntry _0035
    ScriptEntryEnd

_000A:
    GoToIfSet FLAG_UNK_0x011D, _0029
    GetNationalDexEnabled VAR_MAP_LOCAL_0
    CallIfEq VAR_MAP_LOCAL_0, 1, _002F
    End

_0029:
    SetFlag FLAG_UNK_0x024D
    End

_002F:
    ClearFlag FLAG_UNK_0x024D
    Return

_0035:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    SetVar VAR_0x8004, ITEM_METAL_COAT
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _00A8
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x011D
    Message 1
    CloseMessage
    GetPlayerDir VAR_0x8004
    GoToIfEq VAR_0x8004, 2, _00B2
    GoToIfEq VAR_0x8004, 3, _00D0
    GoToIfEq VAR_0x8004, 0, _00B2
    GoToIfEq VAR_0x8004, 1, _00D0
    End

_00A8:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_00B2:
    ApplyMovement 0, _00F0
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject 0
    WaitFanfare SEQ_SE_DP_KAIDAN2
    StopFanfare SEQ_SE_DP_KAIDAN2
    ReleaseAll
    End

_00D0:
    ApplyMovement 0, _00FC
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject 0
    WaitFanfare SEQ_SE_DP_KAIDAN2
    StopFanfare SEQ_SE_DP_KAIDAN2
    ReleaseAll
    End

    .balign 4, 0
_00F0:
    WalkNormalWest
    WalkNormalSouth 3
    EndMovement

    .balign 4, 0
_00FC:
    WalkNormalSouth 2
    WalkNormalWest
    WalkNormalSouth
    EndMovement
