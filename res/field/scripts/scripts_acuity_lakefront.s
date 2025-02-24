#include "macros/scrcmd.inc"
#include "res/text/bank/acuity_lakefront.h"

    .data

    ScriptEntry _004E
    ScriptEntry _0012
    ScriptEntry _0083
    ScriptEntry _009A
    ScriptEntryEnd

_0012:
    GoToIfUnset FLAG_TEAM_GALACTIC_LEFT_LAKE_VERITY, AcuityLakefront_SetWarpsLakeAcuityNormal
    GoToIfSet FLAG_TEAM_GALACTIC_LEFT_LAKE_VERITY, AcuityLakefront_SetWarpsLakeAcuityLowWater
    End

AcuityLakefront_SetWarpsLakeAcuityNormal:
    SetWarpEventPos 2, 0x131, 229
    SetWarpEventPos 3, 0x132, 229
    End

AcuityLakefront_SetWarpsLakeAcuityLowWater:
    SetWarpEventPos 0, 0x131, 229
    SetWarpEventPos 1, 0x132, 229
    End

_004E:
    CheckBadgeAcquired BADGE_ID_ICICLE, 0x4000
    CallIfEq 0x4000, TRUE, _0079
    GoToIfUnset FLAG_TEAM_GALACTIC_LEFT_LAKE_VERITY, AcuityLakefront_SetWarpsLakeAcuityNormal
    GoToIfSet FLAG_TEAM_GALACTIC_LEFT_LAKE_VERITY, AcuityLakefront_SetWarpsLakeAcuityLowWater
    End

_0079:
    SetFlag 0x234
    ClearFlag 0x298
    Return

_0083:
    ShowSignpostMessage 5, SIGNPOST_ROUTE_MAP
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_009A:
    LockAll
    GetPlayerMapPos 0x8004, 0x8005
    ScrCmd_066 0x8004, 0x8005
    ApplyMovement 241, _00E8
    WaitMovement
    WaitTime 15, 0x800C
    BufferRivalName 0
    BufferPlayerName 1
    Message 0
    CloseMessage
    ApplyMovement 2, _00F8
    WaitMovement
    RemoveObject 2
    ApplyMovement 241, _00F0
    WaitMovement
    ScrCmd_067
    SetVar 0x4084, 1
    ReleaseAll
    End

    .balign 4, 0
_00E8:
    MoveAction_012 6
    EndMovement

    .balign 4, 0
_00F0:
    MoveAction_013 6
    EndMovement

    .balign 4, 0
_00F8:
    MoveAction_012 3
    MoveAction_014
    MoveAction_012 4
    EndMovement
