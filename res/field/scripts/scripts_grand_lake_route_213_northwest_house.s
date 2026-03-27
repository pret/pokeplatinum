#include "macros/scrcmd.inc"
#include "res/text/bank/grand_lake_route_213_northwest_house.h"


    ScriptEntry GrandLakeRoute213NorthwestHouse_Clown
    ScriptEntry GrandLakeRoute213NorthwestHouse_Psychic
    ScriptEntry GrandLakeRoute213NorthwestHouse_Guitarist
    ScriptEntryEnd

GrandLakeRoute213NorthwestHouse_Clown:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_GRAND_LAKE_ROUTE_213_NORTHWEST_HOUSE_TM92, GrandLakeRoute213NorthwestHouse_ExplainTrickRoom
    Message GrandLakeRoute213NorthwestHouse_Text_TravelingTroupe
    SetVar VAR_0x8004, ITEM_TM92
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, GrandLakeRoute213NorthwestHouse_BagIsFull
    Common_GiveItemQuantity
    SetFlag FLAG_RECEIVED_GRAND_LAKE_ROUTE_213_NORTHWEST_HOUSE_TM92
    GoTo GrandLakeRoute213NorthwestHouse_ExplainTrickRoom

GrandLakeRoute213NorthwestHouse_ExplainTrickRoom:
    Message GrandLakeRoute213NorthwestHouse_Text_ExplainTrickRoom
    WaitButton
    CloseMessage
    ReleaseAll
    End

GrandLakeRoute213NorthwestHouse_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

GrandLakeRoute213NorthwestHouse_Psychic:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_TALKED_TO_GRAND_LAKE_ROUTE_213_NORTHWEST_HOUSE_PSYCHIC, GrandLakeRoute213NorthwestHouse_GazedIntoManyEyes
    SetFlag FLAG_TALKED_TO_GRAND_LAKE_ROUTE_213_NORTHWEST_HOUSE_PSYCHIC
    Message GrandLakeRoute213NorthwestHouse_Text_ReadYourFortune
    GetRandom VAR_RESULT, 10
    GoToIfInRange VAR_RESULT, 0, 3, GrandLakeRoute213NorthwestHouse_MagicalEncounter
    GoToIfInRange VAR_RESULT, 4, 6, GrandLakeRoute213NorthwestHouse_BriefJoy
    GoToIfInRange VAR_RESULT, 7, 8, GrandLakeRoute213NorthwestHouse_UnseeableAccident
    GoTo GrandLakeRoute213NorthwestHouse_DestinyShallShift

GrandLakeRoute213NorthwestHouse_MagicalEncounter:
    Message GrandLakeRoute213NorthwestHouse_Text_MagicalEncounter
    WaitButton
    CloseMessage
    ReleaseAll
    End

GrandLakeRoute213NorthwestHouse_BriefJoy:
    Message GrandLakeRoute213NorthwestHouse_Text_BriefJoy
    WaitButton
    CloseMessage
    ReleaseAll
    End

GrandLakeRoute213NorthwestHouse_UnseeableAccident:
    Message GrandLakeRoute213NorthwestHouse_Text_UnseeableAccident
    WaitButton
    CloseMessage
    ReleaseAll
    End

GrandLakeRoute213NorthwestHouse_DestinyShallShift:
    Message GrandLakeRoute213NorthwestHouse_Text_DestinyShallShift
    WaitButton
    CloseMessage
    ReleaseAll
    End

GrandLakeRoute213NorthwestHouse_GazedIntoManyEyes:
    Message GrandLakeRoute213NorthwestHouse_Text_GazedIntoManyEyes
    WaitButton
    CloseMessage
    ReleaseAll
    End

GrandLakeRoute213NorthwestHouse_Guitarist:
    NPCMessage GrandLakeRoute213NorthwestHouse_Text_ImASimpleGuy
    End

    .balign 4, 0
