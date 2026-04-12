#include "macros/scrcmd.inc"
#include "res/text/bank/iron_island.h"
#include "res/field/events/events_iron_island.h"


    ScriptEntry IronIsland_OnTransition
    ScriptEntry IronIsland_Sailor
    ScriptEntry IronIsland_Riley
    ScriptEntryEnd

IronIsland_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_IRON_ISLAND_EXTERIOR
    End

IronIsland_Sailor:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetPlayerDir VAR_0x8004
    FacePlayer
    Message IronIsland_Text_WantToSailSomewhere
    ShowYesNoMenu VAR_RESULT
    CloseMessage
    GoToIfEq VAR_RESULT, MENU_YES, IronIsland_TakeShipToCanalave
    GoTo IronIsland_TellWheneverSetSail

IronIsland_TakeShipToCanalave:
    Message IronIsland_Text_AnchorsAweigh
    CloseMessage
    Call IronIsland_SailorEnterShip
    CallIfEq VAR_0x8004, DIR_SOUTH, IronIsland_PlayerEnterShipSouth
    CallIfEq VAR_0x8004, DIR_WEST, IronIsland_PlayerEnterShipWest
    TakeShipToCanalave
    ReleaseAll
    End

IronIsland_TellWheneverSetSail:
    Message IronIsland_Text_TellWheneverSetSail
    WaitButton
    CloseMessage
    ReleaseAll
    End

IronIsland_SailorEnterShip:
    ApplyMovement LOCALID_SAILOR, IronIsland_Movement_SailorFaceWest
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_SAILOR, IronIsland_Movement_SetInvisible
    WaitMovement
    Return

IronIsland_PlayerEnterShipSouth:
    ApplyMovement LOCALID_PLAYER, IronIsland_Movement_PlayerWalkToShipSouth
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_PLAYER, IronIsland_Movement_SetInvisible
    WaitMovement
    Return

IronIsland_PlayerEnterShipWest:
    ApplyMovement LOCALID_PLAYER, IronIsland_Movement_PlayerWalkToShipWest
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_PLAYER, IronIsland_Movement_SetInvisible
    WaitMovement
    Return

    .balign 4, 0
IronIsland_Movement_SailorFaceWest:
    FaceWest
    Delay15
    EndMovement

    .balign 4, 0
IronIsland_Movement_SetInvisible:
    SetInvisible
    EndMovement

    .balign 4, 0
IronIsland_Movement_PlayerWalkToShipSouth:
    WalkNormalSouth
    FaceWest
    Delay15
    EndMovement

    .balign 4, 0
IronIsland_Movement_PlayerWalkToShipWest:
    WalkNormalWest
    Delay15
    EndMovement

IronIsland_Riley:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 0
    Message IronIsland_Text_ImRileyHeresAGift
    SetVar VAR_0x8004, ITEM_HM04
    SetVar VAR_0x8005, 1
    Common_GiveItemQuantity
    CheckBadgeAcquired BADGE_ID_MINE, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, IronIsland_YouNeedMineBadge
    GoTo IronIsland_YouCanJoinMeInside
    End

IronIsland_YouCanJoinMeInside:
    Message IronIsland_Text_YouCanJoinMeInside
    GoTo IronIsland_RileyEnterIronIsland
    End

IronIsland_YouNeedMineBadge:
    Message IronIsland_Text_YouNeedMineBadge
    GoTo IronIsland_RileyEnterIronIsland
    End

IronIsland_RileyEnterIronIsland:
    CloseMessage
    ApplyMovement LOCALID_RILEY, IronIsland_Movement_RileyWalkOnSpotNorth
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    RemoveObject LOCALID_RILEY
    WaitSE SEQ_SE_DP_KAIDAN2
    ReleaseAll
    End

    .balign 4, 0
IronIsland_Movement_RileyWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement
