#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_city_north_house_2f.h"


    ScriptEntry OreburghCityNorthHouse2F_Guitarist
    ScriptEntry OreburghCityNorthHouse2F_PokemonBreederF
    ScriptEntry OreburghCityNorthHouse2F_Collector
    ScriptEntryEnd

OreburghCityNorthHouse2F_Guitarist:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghCityNorthHouse2F_Text_AllPokemonHaveASpecialPowerCalledAnAbility
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghCityNorthHouse2F_PokemonBreederF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghCityNorthHouse2F_Text_MyFavoritePokemonAbilityIsMyPachirisusPickup
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghCityNorthHouse2F_Collector:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_OREBURGH_CITY_NORTH_HOUSE_2F_HEAL_BALL, OreburghCityNorthHouse2F_YeahThereAreSoManyKindsOfPokemonOutInTheWorld
    CheckPartyHasSpecies VAR_RESULT, SPECIES_GEODUDE
    GoToIfEq VAR_RESULT, FALSE, OreburghCityNorthHouse2F_HowAboutShowingMeAPokemonCalledGeodude
    Message OreburghCityNorthHouse2F_Text_ThatsAGeodudeThisIsATokenOfMyThanks
    SetVar VAR_0x8004, ITEM_HEAL_BALL
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, OreburghCityNorthHouse2F_BagIsFull
    SetFlag FLAG_RECEIVED_OREBURGH_CITY_NORTH_HOUSE_2F_HEAL_BALL
    Common_GiveItemQuantityNoLineFeed
    CloseMessage
    ReleaseAll
    End

OreburghCityNorthHouse2F_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

OreburghCityNorthHouse2F_HowAboutShowingMeAPokemonCalledGeodude:
    Message OreburghCityNorthHouse2F_Text_HowAboutShowingMeAPokemonCalledGeodude
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghCityNorthHouse2F_YeahThereAreSoManyKindsOfPokemonOutInTheWorld:
    Message OreburghCityNorthHouse2F_Text_YeahThereAreSoManyKindsOfPokemonOutInTheWorld
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
