#include "macros/scrcmd.inc"
#include "res/text/bank/survival_area_south_house.h"


    ScriptEntry SurvivalAreaSouthHouse_BlackBelt
    ScriptEntryEnd

SurvivalAreaSouthHouse_BlackBelt:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_SURVIVAL_AREA_SOUTH_HOUSE_TM42, SurvivalAreaSouthHouse_ExplainFacade
    Message SurvivalAreaSouthHouse_Text_YouWantTM
    SetVar VAR_0x8004, ITEM_TM42
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, SurvivalAreaSouthHouse_BagIsFull
    Common_GiveItemQuantity
    SetFlag FLAG_RECEIVED_SURVIVAL_AREA_SOUTH_HOUSE_TM42
    GoTo SurvivalAreaSouthHouse_ExplainFacade

SurvivalAreaSouthHouse_ExplainFacade:
    Message SurvivalAreaSouthHouse_Text_ExplainFacade
    WaitButton
    CloseMessage
    ReleaseAll
    End

SurvivalAreaSouthHouse_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End
