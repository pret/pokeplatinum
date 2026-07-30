#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_city_east_house_2f.h"


    ScriptEntry OreburghCityEastHouse2F_Gentleman
    ScriptEntry OreburghCityEastHouse2F_Youngster
    ScriptEntry OreburghCityEastHouse2F_Dummy3
    ScriptEntry OreburghCityEastHouse2F_ScientistM
    ScriptEntryEnd

OreburghCityEastHouse2F_Gentleman:
    NPCMessage OreburghCityEastHouse2F_Text_OperatedWithUtmostCare
    End

OreburghCityEastHouse2F_Youngster:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_OREBURGH_CITY_EAST_HOUSE_2F_GREAT_BALL, OreburghCityEastHouse2F_IThinkAboutBestPokeBalls
    Message OreburghCityEastHouse2F_Text_HereHaveThis
    SetVar VAR_0x8004, ITEM_GREAT_BALL
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, OreburghCityEastHouse2F_BagIsFull
    Common_GiveItemQuantity
    SetFlag FLAG_RECEIVED_OREBURGH_CITY_EAST_HOUSE_2F_GREAT_BALL
    GoTo OreburghCityEastHouse2F_IThinkAboutBestPokeBalls
    End

OreburghCityEastHouse2F_IThinkAboutBestPokeBalls:
    Message OreburghCityEastHouse2F_Text_IThinkAboutBestPokeBalls
    WaitButton
    CloseMessage
    ReleaseAll
    End

OreburghCityEastHouse2F_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

OreburghCityEastHouse2F_Dummy3:
    End

OreburghCityEastHouse2F_ScientistM:
    NPCMessage OreburghCityEastHouse2F_Text_FullyAutomatedSystem
    End

    .balign 4, 0
