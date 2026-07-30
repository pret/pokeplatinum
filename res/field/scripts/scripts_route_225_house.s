#include "macros/scrcmd.inc"
#include "res/text/bank/route_225_house.h"


    ScriptEntry Route225House_Worker
    ScriptEntryEnd

Route225House_Worker:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_ROUTE_225_HOUSE_FRESH_WATER, Route225House_WellspringOfLife
    Message Route225House_Text_LetPokemonDrinkThis
    SetVar VAR_0x8004, ITEM_FRESH_WATER
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, Route225House_BagIsFull
    Common_GiveItemQuantity
    SetFlag FLAG_RECEIVED_ROUTE_225_HOUSE_FRESH_WATER
    GoTo Route225House_WellspringOfLife

Route225House_WellspringOfLife:
    Message Route225House_Text_WellspringOfLife
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route225House_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End
