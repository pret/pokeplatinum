#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_city_galactic_warehouse.h"
#include "res/field/events/events_veilstone_city_galactic_warehouse.h"


    ScriptEntry VeilstoneCityGalacticWarehouse_GalacticHQDoor
    ScriptEntry VeilstoneCityGalacticWarehouse_OnFrameEnterWithLooker
    ScriptEntry VeilstoneCityGalacticWarehouse_Looker
    ScriptEntry VeilstoneCityGalacticWarehouse_OnTransition
    ScriptEntry VeilstoneCityGalacticWarehouse_TriggerLookerOpenDoor
    ScriptEntryEnd

VeilstoneCityGalacticWarehouse_OnTransition:
    CallIfLt VAR_VEILSTONE_CITY_GALACTIC_WAREHOUSE_STATE, 2, VeilstoneCityGalacticWarehouse_SetLookerPosition
    End

VeilstoneCityGalacticWarehouse_SetLookerPosition:
    SetObjectEventPos LOCALID_LOOKER, 8, 10
    SetObjectEventMovementType LOCALID_LOOKER, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir LOCALID_LOOKER, DIR_NORTH
    Return

VeilstoneCityGalacticWarehouse_GalacticHQDoor:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckItem ITEM_STORAGE_KEY, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, VeilstoneCityGalacticWarehouse_AskUseTheStorageKey
    Message VeilstoneCityGalacticWarehouse_Text_ItNeedsASpecialKey
    WaitButton
    CloseMessage
    ReleaseAll
    End

VeilstoneCityGalacticWarehouse_AskUseTheStorageKey:
    Message VeilstoneCityGalacticWarehouse_Text_AskUseTheStorageKey
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, VeilstoneCityGalacticWarehouse_UseTheStorageKey
    GoToIfEq VAR_RESULT, MENU_NO, VeilstoneCityGalacticWarehouse_DontUseTheStorageKey
    End

VeilstoneCityGalacticWarehouse_UseTheStorageKey:
    SetFlag FLAG_USED_STORAGE_KEY
    RemoveItem ITEM_STORAGE_KEY, 1, VAR_RESULT
    BufferPlayerName 0
    Message VeilstoneCityGalacticWarehouse_Text_PlayerUsedTheStorageKey
    WaitButton
    WaitSE SEQ_SE_CONFIRM
    PlaySE SEQ_SE_DP_DOOR10
    ApplyMovement LOCALID_GALACTIC_HQ_DOOR_WEST, VeilstoneCityGalacticWarehouse_Movement_GalacticHQDoorWestOpen
    ApplyMovement LOCALID_GALACTIC_HQ_DOOR_EAST, VeilstoneCityGalacticWarehouse_Movement_GalacticHQDoorEastOpen
    WaitMovement
    RemoveObject LOCALID_GALACTIC_HQ_DOOR_WEST
    RemoveObject LOCALID_GALACTIC_HQ_DOOR_EAST
    CloseMessage
    ReleaseAll
    End

VeilstoneCityGalacticWarehouse_DontUseTheStorageKey:
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
VeilstoneCityGalacticWarehouse_Movement_GalacticHQDoorWestOpen:
    WalkFastWest
    EndMovement

    .balign 4, 0
VeilstoneCityGalacticWarehouse_Movement_GalacticHQDoorEastOpen:
    WalkFastEast
    EndMovement

VeilstoneCityGalacticWarehouse_OnFrameEnterWithLooker:
    LockAll
    ApplyMovement LOCALID_LOOKER, VeilstoneCityGalacticWarehouse_Movement_LookerWalkToDoor
    WaitMovement
    Message VeilstoneCityGalacticWarehouse_Text_AKeyIsNecessary
    CloseMessage
    ApplyMovement LOCALID_PLAYER, VeilstoneCityGalacticWarehouse_Movement_PlayerWatchLookerWalkToHMs
    ApplyMovement LOCALID_LOOKER, VeilstoneCityGalacticWarehouse_Movement_LookerWalkToHM
    WaitMovement
    BufferPlayerName 0
    Message VeilstoneCityGalacticWarehouse_Text_ThisHMIsFly
    CloseMessage
    ApplyMovement LOCALID_PLAYER, VeilstoneCityGalacticWarehouse_Movement_PlayerFaceLookerNorth
    ApplyMovement LOCALID_LOOKER, VeilstoneCityGalacticWarehouse_Movement_LookerWalkToPlayer
    WaitMovement
    SetVar VAR_PASTORIA_STATE, 1
    SetVar VAR_VEILSTONE_CITY_GALACTIC_WAREHOUSE_STATE, 2
    Message VeilstoneCityGalacticWarehouse_Text_WeDidntLearnMuch
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
VeilstoneCityGalacticWarehouse_Movement_LookerWalkToDoor:
    WalkNormalNorth 2
    EndMovement

    .balign 4, 0
VeilstoneCityGalacticWarehouse_Movement_LookerWalkToHM:
    WalkNormalSouth 2
    WalkOnSpotNormalWest
    Delay8 2
    WalkOnSpotNormalEast
    Delay8 2
    WalkNormalEast 5
    WalkOnSpotNormalNorth
    EmoteExclamationMark
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
VeilstoneCityGalacticWarehouse_Movement_LookerWalkToPlayer:
    WalkNormalWest 5
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
VeilstoneCityGalacticWarehouse_Movement_PlayerWatchLookerWalkToHMs:
    Delay8 9
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
VeilstoneCityGalacticWarehouse_Movement_PlayerFaceLookerNorth:
    Delay8 4
    Delay2
    WalkOnSpotNormalNorth
    EndMovement

VeilstoneCityGalacticWarehouse_Looker:
    NPCMessage VeilstoneCityGalacticWarehouse_Text_GalacticTransportedToPastoria
    End

VeilstoneCityGalacticWarehouse_TriggerLookerOpenDoor:
    LockAll
    SetObjectEventPos LOCALID_LOOKER, 8, 11
    SetObjectEventMovementType LOCALID_LOOKER, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir LOCALID_LOOKER, DIR_NORTH
    ClearFlag FLAG_HIDE_VEILSTONE_CITY_GALACTIC_WAREHOUSE_LOOKER
    AddObject LOCALID_LOOKER
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 8, VeilstoneCityGalacticWarehouse_LookerWalkToPlayerX8
    CallIfEq VAR_0x8004, 9, VeilstoneCityGalacticWarehouse_LookerWalkToPlayerX9
    Message VeilstoneCityGalacticWarehouse_Text_IHaveKeptYouWaiting
    CloseMessage
    ApplyMovement LOCALID_LOOKER, VeilstoneCityGalacticWarehouse_Movement_LookerWalkOnSpotNorth
    WaitMovement
    Message VeilstoneCityGalacticWarehouse_Text_IWillUseTheStorageKey
    CloseMessage
    SetFlag FLAG_USED_STORAGE_KEY
    WaitSE SEQ_SE_CONFIRM
    PlaySE SEQ_SE_DP_DOOR10
    ApplyMovement LOCALID_GALACTIC_HQ_DOOR_WEST, VeilstoneCityGalacticWarehouse_Movement_GalacticHQDoorWestOpen
    ApplyMovement LOCALID_GALACTIC_HQ_DOOR_EAST, VeilstoneCityGalacticWarehouse_Movement_GalacticHQDoorEastOpen
    WaitMovement
    RemoveObject LOCALID_GALACTIC_HQ_DOOR_WEST
    RemoveObject LOCALID_GALACTIC_HQ_DOOR_EAST
    CallIfEq VAR_0x8004, 8, VeilstoneCityGalacticWarehouse_LookerFacePlayerWest
    CallIfEq VAR_0x8004, 9, VeilstoneCityGalacticWarehouse_LookerFacePlayerEast
    Message VeilstoneCityGalacticWarehouse_Text_IWillGoOnAhead
    CloseMessage
    CallIfEq VAR_0x8004, 8, VeilstoneCityGalacticWarehouse_LookerEnterGalacticHQX8
    CallIfEq VAR_0x8004, 9, VeilstoneCityGalacticWarehouse_LookerEnterGalacticHQX9
    RemoveObject LOCALID_LOOKER
    SetFlag FLAG_HIDE_VEILSTONE_CITY_LOOKER
    SetVar VAR_VEILSTONE_CITY_GALACTIC_WAREHOUSE_STATE, 4
    ReleaseAll
    End

VeilstoneCityGalacticWarehouse_LookerWalkToPlayerX8:
    ApplyMovement LOCALID_LOOKER, VeilstoneCityGalacticWarehouse_Movement_LookerWalkToPlayerX8
    ApplyMovement LOCALID_PLAYER, VeilstoneCityGalacticWarehouse_Movement_PlayerFaceLookerEast
    WaitMovement
    Return

VeilstoneCityGalacticWarehouse_LookerWalkToPlayerX9:
    ApplyMovement LOCALID_LOOKER, VeilstoneCityGalacticWarehouse_Movement_LookerWalkToPlayerX9
    ApplyMovement LOCALID_PLAYER, VeilstoneCityGalacticWarehouse_Movement_PlayerFaceLookerWest
    WaitMovement
    Return

VeilstoneCityGalacticWarehouse_LookerFacePlayerWest:
    ApplyMovement LOCALID_LOOKER, VeilstoneCityGalacticWarehouse_Movement_LookerFacePlayerWest
    WaitMovement
    Return

VeilstoneCityGalacticWarehouse_LookerFacePlayerEast:
    ApplyMovement LOCALID_LOOKER, VeilstoneCityGalacticWarehouse_Movement_LookerFacePlayerEast
    WaitMovement
    Return

VeilstoneCityGalacticWarehouse_LookerEnterGalacticHQX8:
    ApplyMovement LOCALID_LOOKER, VeilstoneCityGalacticWarehouse_Movement_LookerEnterGalacticHQX8
    ApplyMovement LOCALID_PLAYER, VeilstoneCityGalacticWarehouse_Movement_PlayerWatchLookerEnterGalacticHQ
    WaitMovement
    Return

VeilstoneCityGalacticWarehouse_LookerEnterGalacticHQX9:
    ApplyMovement LOCALID_LOOKER, VeilstoneCityGalacticWarehouse_Movement_LookerEnterGalacticHQX9
    ApplyMovement LOCALID_PLAYER, VeilstoneCityGalacticWarehouse_Movement_PlayerWatchLookerEnterGalacticHQ
    WaitMovement
    Return

    .balign 4, 0
VeilstoneCityGalacticWarehouse_Movement_PlayerFaceLookerEast:
    Delay8 4
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
VeilstoneCityGalacticWarehouse_Movement_PlayerFaceLookerWest:
    Delay8 3
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
VeilstoneCityGalacticWarehouse_Movement_PlayerWatchLookerEnterGalacticHQ:
    Delay8
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
VeilstoneCityGalacticWarehouse_Movement_LookerWalkToPlayerX8:
    WalkNormalNorth 2
    WalkNormalEast
    WalkNormalNorth
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
VeilstoneCityGalacticWarehouse_Movement_LookerWalkToPlayerX9:
    WalkNormalNorth 3
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
VeilstoneCityGalacticWarehouse_Movement_LookerWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
VeilstoneCityGalacticWarehouse_Movement_LookerFacePlayerEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
VeilstoneCityGalacticWarehouse_Movement_LookerFacePlayerWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
VeilstoneCityGalacticWarehouse_Movement_LookerEnterGalacticHQX8:
    WalkNormalNorth 5
    WalkOnSpotFastWest
    WalkOnSpotFastEast
    Delay8 2
    WalkFastEast 6
    EndMovement

    .balign 4, 0
VeilstoneCityGalacticWarehouse_Movement_LookerEnterGalacticHQX9:
    WalkNormalNorth 5
    WalkOnSpotFastWest
    WalkOnSpotFastEast
    Delay8 2
    WalkFastEast 7
    EndMovement
