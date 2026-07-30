#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_city_northwest_house_2f.h"


    ScriptEntry OreburghCityNorthwestHouse2F_Worker
    ScriptEntry OreburghCityNorthwestHouse2F_SchoolKidF
    ScriptEntry OreburghCityNorthwestHouse2F_Lass
    ScriptEntry OreburghCityNorthwestHouse2F_Psyduck
    ScriptEntryEnd

OreburghCityNorthwestHouse2F_Worker:
    NPCMessage OreburghCityNorthwestHouse2F_Text_GivingNicknamesIsTheWayToGo
    End

OreburghCityNorthwestHouse2F_SchoolKidF:
    NPCMessage OreburghCityNorthwestHouse2F_Text_HeNamedPsyduckYellow
    End

OreburghCityNorthwestHouse2F_Lass:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_OREBURGH_CITY_NORTHWEST_HOUSE_2F_DUSK_BALL, OreburghCityNorthwestHouse2F_DuskBallIsDesignedForDarkness
    BufferItemName 0, ITEM_DUSK_BALL
    Message OreburghCityNorthwestHouse2F_Text_HereTakeThis
    SetVar VAR_0x8004, ITEM_DUSK_BALL
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, OreburghCityNorthwestHouse2F_BagIsFull
    SetFlag FLAG_RECEIVED_OREBURGH_CITY_NORTHWEST_HOUSE_2F_DUSK_BALL
    Common_GiveItemQuantityNoLineFeed
    CloseMessage
    ReleaseAll
    End

OreburghCityNorthwestHouse2F_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

OreburghCityNorthwestHouse2F_DuskBallIsDesignedForDarkness:
    Message OreburghCityNorthwestHouse2F_Text_DuskBallIsDesignedForDarkness
    WaitButton
    CloseMessage
    ReleaseAll
    End

OreburghCityNorthwestHouse2F_Psyduck:
    PokemonCryAndMessage SPECIES_PSYDUCK, OreburghCityNorthwestHouse2F_Text_YellowPsyduckCry
    End

    .balign 4, 0
