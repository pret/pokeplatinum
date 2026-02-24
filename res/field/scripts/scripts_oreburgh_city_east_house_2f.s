#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_city_east_house_2f.h"


    ScriptEntry OreburghCityEastHouse2F_Gentleman
    ScriptEntry OreburghCityEastHouse2F_Youngster
    ScriptEntry OreburghCityEastHouse2F_Unused
    ScriptEntry OreburghCityEastHouse2F_ScientistM
    ScriptEntryEnd

OreburghCityEastHouse2F_Gentleman:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghCityEastHouse2F_Text_TheOreburghMineIsOperatedWithTheUtmostCare
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghCityEastHouse2F_Youngster:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_OREBURGH_CITY_EAST_HOUSE_2F_GREAT_BALL, OreburghCityEastHouse2F_YouKnowHowPokemonStayInsideTheirPokeBalls
    Message OreburghCityEastHouse2F_Text_HereIWantYouToHaveThis
    SetVar VAR_0x8004, ITEM_GREAT_BALL
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, OreburghCityEastHouse2F_BagIsFull
    Common_GiveItemQuantity
    SetFlag FLAG_RECEIVED_OREBURGH_CITY_EAST_HOUSE_2F_GREAT_BALL
    GoTo OreburghCityEastHouse2F_YouKnowHowPokemonStayInsideTheirPokeBalls
    End

OreburghCityEastHouse2F_YouKnowHowPokemonStayInsideTheirPokeBalls:
    Message OreburghCityEastHouse2F_Text_YouKnowHowPokemonStayInsideTheirPokeBalls
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghCityEastHouse2F_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

OreburghCityEastHouse2F_Unused:
    End

OreburghCityEastHouse2F_ScientistM:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghCityEastHouse2F_Text_CoalIsCarriedOutOfTheOreburghMineOnAFullyAutomatedSystem
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
