#include "macros/scrcmd.inc"
#include "generated/hidden_locations.h"
#include "res/text/bank/newmoon_island.h"
#include "res/field/events/events_newmoon_island.h"


    ScriptEntry NewmoonIsland_OnTransition
    ScriptEntry NewmoonIsland_Sailor
    ScriptEntryEnd

NewmoonIsland_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_NEWMOON_ISLAND
    EnableHiddenLocation HIDDEN_LOCATION_NEWMOON_ISLAND
    ClearFlag FLAG_HIDE_NEWMOON_ISLAND_SAILOR
    CallIfUnset FLAG_CAUGHT_DARKRAI, NewmoonIsland_TryHideSailor
    End

NewmoonIsland_TryHideSailor:
    GoToIfNe VAR_DARKRAI_EVENT_STATE, 2, NewmoonIsland_OnTransitionReturn
    SetFlag FLAG_HIDE_NEWMOON_ISLAND_SAILOR
NewmoonIsland_OnTransitionReturn:
    Return

NewmoonIsland_Sailor:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetPlayerDir VAR_0x8004
    Message NewmoonIsland_Text_SailBackToCanalave
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, NewmoonIsland_TakeShipToCanalave
    GoTo NewmoonIsland_AllRightThen

NewmoonIsland_TakeShipToCanalave:
    Message NewmoonIsland_Text_AnchorsAweigh
    CloseMessage
    Call NewmoonIsland_SailorEnterShip
    CallIfEq VAR_0x8004, DIR_SOUTH, NewmoonIsland_PlayerEnterShipSouth
    CallIfEq VAR_0x8004, DIR_WEST, NewmoonIsland_PlayerEnterShipWest
    CallIfEq VAR_0x8004, DIR_NORTH, NewmoonIsland_PlayerEnterShipNorth
    TakeShipToCanalave
    ReleaseAll
    End

NewmoonIsland_AllRightThen:
    Message NewmoonIsland_Text_AllRightThen
    WaitButton
    CloseMessage
    ReleaseAll
    End

NewmoonIsland_SailorEnterShip:
    ApplyMovement LOCALID_SAILOR, NewmoonIslandForest_Movement_SailorWalkToShip
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_SAILOR, NewmoonIslandForest_Movement_SetInvisible
    WaitMovement
    Return

NewmoonIsland_PlayerEnterShipSouth:
    ApplyMovement LOCALID_PLAYER, NewmoonIslandForest_Movement_PlayerWalkToShipSouth
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_PLAYER, NewmoonIslandForest_Movement_SetInvisible
    WaitMovement
    Return

NewmoonIsland_PlayerEnterShipWest:
    ApplyMovement LOCALID_PLAYER, NewmoonIslandForest_Movement_PlayerWalkToShipWest
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_PLAYER, NewmoonIslandForest_Movement_SetInvisible
    WaitMovement
    Return

NewmoonIsland_PlayerEnterShipNorth:
    ApplyMovement LOCALID_PLAYER, NewmoonIslandForest_Movement_PlayerWalkToShipNorth
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_PLAYER, NewmoonIslandForest_Movement_SetInvisible
    WaitMovement
    Return

    .balign 4, 0
NewmoonIslandForest_Movement_SailorWalkToShip:
    WalkNormalWest
    Delay15
    EndMovement

    .balign 4, 0
NewmoonIslandForest_Movement_SetInvisible:
    SetInvisible
    EndMovement

    .balign 4, 0
NewmoonIslandForest_Movement_PlayerWalkToShipSouth:
    WalkNormalSouth
    WalkNormalWest 2
    Delay15
    EndMovement

    .balign 4, 0
NewmoonIslandForest_Movement_PlayerWalkToShipWest:
    WalkNormalWest 2
    Delay15
    EndMovement

    .balign 4, 0
NewmoonIslandForest_Movement_PlayerWalkToShipNorth:
    WalkNormalNorth
    WalkNormalWest 2
    Delay15
    EndMovement
