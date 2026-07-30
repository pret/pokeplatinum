#include "macros/scrcmd.inc"
#include "generated/hidden_locations.h"
#include "res/text/bank/fullmoon_island.h"
#include "res/field/events/events_fullmoon_island.h"


    ScriptEntry FullmoonIsland_OnTransition
    ScriptEntry FullmoonIsland_Sailor
    ScriptEntryEnd

FullmoonIsland_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_FULLMOON_ISLAND
    EnableHiddenLocation HIDDEN_LOCATION_FULLMOON_ISLAND
    End

FullmoonIsland_Sailor:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetPlayerDir VAR_0x8004
    CheckItem ITEM_LUNAR_WING, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, FullmoonIsland_ThatsTheLunarWing
    Message FullmoonIsland_Text_SailBackToCanalave
    ShowYesNoMenu VAR_RESULT
    CloseMessage
    GoToIfEq VAR_RESULT, MENU_YES, FullmoonIsland_TakeShipToCanalave
    GoTo FullmoonIsland_AllRightThen

FullmoonIsland_ThatsTheLunarWing:
    Message FullmoonIsland_Text_ThatsTheLunarWing
    CloseMessage
    GoTo FullmoonIsland_TakeShipToCanalave

FullmoonIsland_TakeShipToCanalave:
    Call FullmoonIsland_SailorEnterShip
    CallIfEq VAR_0x8004, DIR_SOUTH, FullmoonIsland_PlayerWalkToShipSouth
    CallIfEq VAR_0x8004, DIR_EAST, FullmoonIsland_PlayerWalkToShipEast
    CallIfEq VAR_0x8004, DIR_NORTH, FullmoonIsland_PlayerWalkToShipNorth
    TakeShipToCanalave
    ReleaseAll
    End

FullmoonIsland_AllRightThen:
    Message FullmoonIsland_Text_AllRightThen
    WaitButton
    CloseMessage
    ReleaseAll
    End

FullmoonIsland_SailorEnterShip:
    ApplyMovement LOCALID_SAILOR, FullmoonIsland_Movement_SailorWalkToShip
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_SAILOR, FullmoonIsland_Movement_SetInvisible
    WaitMovement
    Return

FullmoonIsland_PlayerWalkToShipSouth:
    ApplyMovement LOCALID_PLAYER, FullmoonIsland_Movement_PlayerWalkToShipSouth
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_PLAYER, FullmoonIsland_Movement_SetInvisible
    WaitMovement
    Return

FullmoonIsland_PlayerWalkToShipEast:
    ApplyMovement LOCALID_PLAYER, FullmoonIsland_Movement_PlayerWalkToShipEast
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_PLAYER, FullmoonIsland_Movement_SetInvisible
    WaitMovement
    Return

FullmoonIsland_PlayerWalkToShipNorth:
    ApplyMovement LOCALID_PLAYER, FullmoonIsland_Movement_PlayerWalkToShipNorth
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_PLAYER, FullmoonIsland_Movement_SetInvisible
    WaitMovement
    Return

    .balign 4, 0
FullmoonIsland_Movement_SailorWalkToShip:
    WalkNormalEast
    Delay15
    EndMovement

    .balign 4, 0
FullmoonIsland_Movement_SetInvisible:
    SetInvisible
    EndMovement

    .balign 4, 0
FullmoonIsland_Movement_PlayerWalkToShipSouth:
    WalkNormalSouth
    WalkNormalEast 2
    Delay15
    EndMovement

    .balign 4, 0
FullmoonIsland_Movement_PlayerWalkToShipEast:
    WalkNormalEast 2
    Delay15
    EndMovement

    .balign 4, 0
FullmoonIsland_Movement_PlayerWalkToShipNorth:
    WalkNormalNorth
    WalkNormalEast 2
    Delay15
    EndMovement
