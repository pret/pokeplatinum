#include "macros/scrcmd.inc"
#include "res/text/bank/acuity_lakefront.h"


    ScriptEntry _004E
    ScriptEntry _0012
    ScriptEntry _0083
    ScriptEntry _009A
    ScriptEntryEnd

_0012:
    GoToIfUnset FLAG_TEAM_GALACTIC_LEFT_LAKE_VERITY, AcuityLakefront_RemoveWarpsLakeAcuityNormal
    GoToIfSet FLAG_TEAM_GALACTIC_LEFT_LAKE_VERITY, AcuityLakefront_RemoveWarpsLakeAcuityLowWater
    End

AcuityLakefront_RemoveWarpsLakeAcuityNormal:
    SetWarpEventPos 2, 305, 229
    SetWarpEventPos 3, 306, 229
    End

AcuityLakefront_RemoveWarpsLakeAcuityLowWater:
    SetWarpEventPos 0, 305, 229
    SetWarpEventPos 1, 306, 229
    End

_004E:
    CheckBadgeAcquired BADGE_ID_ICICLE, VAR_MAP_LOCAL_0
    CallIfEq VAR_MAP_LOCAL_0, TRUE, _0079
    GoToIfUnset FLAG_TEAM_GALACTIC_LEFT_LAKE_VERITY, AcuityLakefront_RemoveWarpsLakeAcuityNormal
    GoToIfSet FLAG_TEAM_GALACTIC_LEFT_LAKE_VERITY, AcuityLakefront_RemoveWarpsLakeAcuityLowWater
    End

_0079:
    SetFlag FLAG_UNK_0x0234
    ClearFlag FLAG_HIDE_VEILSTONE_CITY_GYM_MAYLENE
    Return

_0083:
    ShowArrowSign 5
    End

_009A:
    LockAll
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    AddFreeCamera VAR_0x8004, VAR_0x8005
    ApplyFreeCameraMovement _00E8
    WaitMovement
    WaitTime 15, VAR_RESULT
    BufferRivalName 0
    BufferPlayerName 1
    Message 0
    CloseMessage
    ApplyMovement 2, _00F8
    WaitMovement
    RemoveObject 2
    ApplyFreeCameraMovement _00F0
    WaitMovement
    RestoreCamera
    SetVar VAR_UNK_0x4084, 1
    ReleaseAll
    End

    .balign 4, 0
_00E8:
    WalkNormalNorth 6
    EndMovement

    .balign 4, 0
_00F0:
    WalkNormalSouth 6
    EndMovement

    .balign 4, 0
_00F8:
    WalkNormalNorth 3
    WalkNormalWest
    WalkNormalNorth 4
    EndMovement
