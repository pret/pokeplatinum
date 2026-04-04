#include "macros/scrcmd.inc"
#include "res/text/bank/route_217_west_house.h"


    ScriptEntry Route217WestHouse_Hiker
    ScriptEntryEnd

Route217WestHouse_Hiker:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_ROUTE_217_WEST_HOUSE_ICICLE_PLATE, Route217WestHouse_IFoundIciclePlate
    CheckItem ITEM_HM08, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, Route217WestHouse_TryGiveIciclePlate
    Message Route217WestHouse_Text_IDroppedHM
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route217WestHouse_IFoundIciclePlate:
    Message Route217WestHouse_Text_IFoundIciclePlate
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route217WestHouse_TryGiveIciclePlate:
    Message Route217WestHouse_Text_YouFoundHM
    SetVar VAR_0x8004, ITEM_ICICLE_PLATE
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, Route217WestHouse_BagIsFull
    Common_GiveItemQuantity
    SetFlag FLAG_RECEIVED_ROUTE_217_WEST_HOUSE_ICICLE_PLATE
    GoTo Route217WestHouse_IFoundIciclePlate

Route217WestHouse_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End
