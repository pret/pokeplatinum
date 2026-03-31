#include "macros/scrcmd.inc"
#include "res/text/bank/route_217_northeast_house.h"


    ScriptEntry Route217NortheastHouse_PokemonBreederF
    ScriptEntryEnd

Route217NortheastHouse_PokemonBreederF:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_ROUTE_217_NORTHEAST_HOUSE_SPELL_TAG, Route217NortheastHouse_ExplainSpellTag
    Message Route217NortheastHouse_Text_PersonRareSight
    SetVar VAR_0x8004, ITEM_SPELL_TAG
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, Route217NortheastHouse_BagIsFull
    SetFlag FLAG_RECEIVED_ROUTE_217_NORTHEAST_HOUSE_SPELL_TAG
    SetFlag FLAG_HIDE_ROUTE_217_NORTHEAST_HOUSE_POKEMON_BREEDER_F
    Common_GiveItemQuantityNoLineFeed
    CloseMessage
    ReleaseAll
    End

Route217NortheastHouse_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

Route217NortheastHouse_ExplainSpellTag:
    Message Route217NortheastHouse_Text_ExplainSpellTag
    WaitButton
    CloseMessage
    ReleaseAll
    End
