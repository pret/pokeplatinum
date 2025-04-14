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
    CheckBadgeAcquired BADGE_ID_ICICLE, VAR_0x4000
    CallIfEq VAR_0x4000, TRUE, _0079
    GoToIfUnset FLAG_TEAM_GALACTIC_LEFT_LAKE_VERITY, AcuityLakefront_SetWarpsLakeAcuityNormal
    GoToIfSet FLAG_TEAM_GALACTIC_LEFT_LAKE_VERITY, AcuityLakefront_SetWarpsLakeAcuityLowWater
    End

_0079:
    SetFlag FLAG_UNK_0x0234
    ClearFlag FLAG_UNK_0x0298
    Return

_0083:
    ShowArrowSign 5
    End

_009A:
    LockAll
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    ScrCmd_066 VAR_0x8004, VAR_0x8005
    ApplyMovement 241, _00E8
    WaitMovement
    WaitTime 15, VAR_0x800C
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
    SetVar VAR_UNK_0x4084, 1
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
