#include "macros/scrcmd.inc"
#include "res/text/bank/iron_island_house.h"
#include "res/field/events/events_iron_island_house.h"


    ScriptEntry IronIslandHouse_OnTransition
    ScriptEntry IronIslandHouse_Byron
    ScriptEntryEnd

IronIslandHouse_OnTransition:
    GoToIfSet FLAG_RECEIVED_IRON_ISLAND_HOUSE_METAL_COAT, IronIslandHouse_HideByron
    GetNationalDexEnabled VAR_MAP_LOCAL_0
    CallIfEq VAR_MAP_LOCAL_0, TRUE, IronIslandHouse_ShowByron
    End

IronIslandHouse_HideByron:
    SetFlag FLAG_HIDE_IRON_ISLAND_HOUSE_BYRON
    End

IronIslandHouse_ShowByron:
    ClearFlag FLAG_HIDE_IRON_ISLAND_HOUSE_BYRON
    Return

IronIslandHouse_Byron:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message IronIslandHouse_Text_TakeApology
    SetVar VAR_0x8004, ITEM_METAL_COAT
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, IronIslandHouse_BagIsFull
    Common_GiveItemQuantity
    SetFlag FLAG_RECEIVED_IRON_ISLAND_HOUSE_METAL_COAT
    Message IronIslandHouse_Text_EvolveUsingMetalCoat
    CloseMessage
    GetPlayerDir VAR_0x8004
    GoToIfEq VAR_0x8004, DIR_WEST, IronIslandHouse_ByronLeaveNorthWest
    GoToIfEq VAR_0x8004, DIR_EAST, IronIslandHouse_ByronLeaveSouthEast
    GoToIfEq VAR_0x8004, DIR_NORTH, IronIslandHouse_ByronLeaveNorthWest
    GoToIfEq VAR_0x8004, DIR_SOUTH, IronIslandHouse_ByronLeaveSouthEast
    End

IronIslandHouse_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

IronIslandHouse_ByronLeaveNorthWest:
    ApplyMovement LOCALID_BYRON, IronIslandHouse_Movement_ByronLeaveNorthWest
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    RemoveObject LOCALID_BYRON
    WaitSE SEQ_SE_DP_KAIDAN2
    StopSE SEQ_SE_DP_KAIDAN2
    ReleaseAll
    End

IronIslandHouse_ByronLeaveSouthEast:
    ApplyMovement LOCALID_BYRON, IronIslandHouse_Movement_ByronLeaveSouthEast
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    RemoveObject LOCALID_BYRON
    WaitSE SEQ_SE_DP_KAIDAN2
    StopSE SEQ_SE_DP_KAIDAN2
    ReleaseAll
    End

    .balign 4, 0
IronIslandHouse_Movement_ByronLeaveNorthWest:
    WalkNormalWest
    WalkNormalSouth 3
    EndMovement

    .balign 4, 0
IronIslandHouse_Movement_ByronLeaveSouthEast:
    WalkNormalSouth 2
    WalkNormalWest
    WalkNormalSouth
    EndMovement
