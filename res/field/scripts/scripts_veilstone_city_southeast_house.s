#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_city_southeast_house.h"
#include "res/text/bank/menu_entries.h"
#include "res/field/events/events_veilstone_city_southeast_house.h"


    ScriptEntry VeilstoneCitySoutheastHouse_Clown
    ScriptEntry VeilstoneCitySoutheastHouse_BlackBelt
    ScriptEntryEnd

VeilstoneCitySoutheastHouse_Clown:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_VEILSTONE_CITY_SOUTHEAST_HOUSE_COIN_CASE, VeilstoneCitySoutheastHouse_IAmATearfulClown
    Message VeilstoneCitySoutheastHouse_Text_WatchThisCoin
    Message VeilstoneCitySoutheastHouse_Text_Spin
    CloseMessage
    GetPlayerDir VAR_RESULT
    GoToIfEq VAR_RESULT, DIR_WEST, VeilstoneCitySoutheastHouse_ClownSpinWest
    GoToIfEq VAR_RESULT, DIR_NORTH, VeilstoneCitySoutheastHouse_ClownSpinNorth
    GoToIfEq VAR_RESULT, DIR_EAST, VeilstoneCitySoutheastHouse_ClownSpinEast
    GoToIfEq VAR_RESULT, DIR_SOUTH, VeilstoneCitySoutheastHouse_ClownSpinSouth
    End

VeilstoneCitySoutheastHouse_ClownSpinWest:
    ApplyMovement LOCALID_CLOWN, VeilstoneCitySoutheastHouse_Movement_ClownSpinWest
    WaitMovement
    GoTo VeilstoneCitySoutheastHouse_ChooseHand

VeilstoneCitySoutheastHouse_ClownSpinNorth:
    ApplyMovement LOCALID_CLOWN, VeilstoneCitySoutheastHouse_Movement_ClownSpinNorth
    WaitMovement
    GoTo VeilstoneCitySoutheastHouse_ChooseHand

VeilstoneCitySoutheastHouse_ClownSpinEast:
    ApplyMovement LOCALID_CLOWN, VeilstoneCitySoutheastHouse_Movement_ClownSpinEast
    WaitMovement
    GoTo VeilstoneCitySoutheastHouse_ChooseHand

VeilstoneCitySoutheastHouse_ClownSpinSouth:
    ApplyMovement LOCALID_CLOWN, VeilstoneCitySoutheastHouse_Movement_ClownSpinSouth
    WaitMovement
    GoTo VeilstoneCitySoutheastHouse_ChooseHand

VeilstoneCitySoutheastHouse_ChooseHand:
    Message VeilstoneCitySoutheastHouse_Text_LeftOrRightHand
    InitGlobalTextMenu 1, 1, 0, VAR_0x8000, NO_EXIT_ON_B
    AddMenuEntryImm MenuEntries_Text_CoinCaseClown_Right, 0
    AddMenuEntryImm MenuEntries_Text_CoinCaseClown_Left, 1
    ShowMenu
    GetRandom VAR_RESULT, 2
    GoToIfEq VAR_RESULT, FALSE, VeilstoneCitySoutheastHouse_PoorShow
    Message VeilstoneCitySoutheastHouse_Text_ForOurWinnerACoinCase
    SetVar VAR_0x8004, ITEM_COIN_CASE
    SetVar VAR_0x8005, 1
    SetFlag FLAG_RECEIVED_VEILSTONE_CITY_SOUTHEAST_HOUSE_COIN_CASE
    Common_GiveItemQuantityNoLineFeed
    CloseMessage
    ReleaseAll
    End

VeilstoneCitySoutheastHouse_PoorShow:
    Message VeilstoneCitySoutheastHouse_Text_PoorShow
    WaitButton
    CloseMessage
    ReleaseAll
    End

VeilstoneCitySoutheastHouse_IAmATearfulClown:
    Message VeilstoneCitySoutheastHouse_Text_IAmATearfulClown
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
VeilstoneCitySoutheastHouse_Movement_ClownSpinEast:
    FaceNorth
    Delay2
    FaceEast
    Delay2
    FaceSouth
    Delay2
    FaceWest
    Delay2
    EndMovement

    .balign 4, 0
VeilstoneCitySoutheastHouse_Movement_ClownSpinSouth:
    FaceEast
    Delay2
    FaceSouth
    Delay2
    FaceWest
    Delay2
    FaceNorth
    Delay2
    EndMovement

    .balign 4, 0
VeilstoneCitySoutheastHouse_Movement_ClownSpinWest:
    FaceSouth
    Delay2
    FaceWest
    Delay2
    FaceNorth
    Delay2
    FaceEast
    Delay2
    EndMovement

    .balign 4, 0
VeilstoneCitySoutheastHouse_Movement_ClownSpinNorth:
    FaceWest
    Delay2
    FaceNorth
    Delay2
    FaceEast
    Delay2
    FaceSouth
    Delay2
    EndMovement

VeilstoneCitySoutheastHouse_BlackBelt:
    NPCMessage VeilstoneCitySoutheastHouse_Text_ThereAreManyMagicians
    End

    .balign 4, 0
