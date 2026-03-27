#include "macros/scrcmd.inc"
#include "res/text/bank/grand_lake_valor_lakefront_east_house.h"


    ScriptEntry GrandLakeValorLakefrontEastHouse_Beauty
    ScriptEntryEnd

GrandLakeValorLakefrontEastHouse_Beauty:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_GRAND_LAKE_VALOR_LAKEFRONT_EAST_HOUSE_WHITE_FLUTE, GrandLakeValorLakefrontEastHouse_BlowToAttractPokemon
    Message GrandLakeValorLakefrontEastHouse_Text_ThanksForHelping
    SetVar VAR_0x8004, ITEM_WHITE_FLUTE
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, GrandLakeValorLakefrontEastHouse_BagIsFull
    SetFlag FLAG_RECEIVED_GRAND_LAKE_VALOR_LAKEFRONT_EAST_HOUSE_WHITE_FLUTE
    Common_GiveItemQuantityNoLineFeed
    CloseMessage
    ReleaseAll
    End

GrandLakeValorLakefrontEastHouse_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

GrandLakeValorLakefrontEastHouse_BlowToAttractPokemon:
    Message GrandLakeValorLakefrontEastHouse_Text_BlowToAttractPokemon
    WaitButton
    CloseMessage
    ReleaseAll
    End
