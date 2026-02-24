#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_city_west_house.h"


    ScriptEntry OreburghCityWestHouse_Youngster
    ScriptEntry OreburghCityWestHouse_PokefanF
    ScriptEntry OreburghCityWestHouse_Pikachu
    ScriptEntryEnd

OreburghCityWestHouse_Youngster:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghCityWestHouse_Text_HaveYouEverSeenOrHeardAboutDifferentlyColoredPokemon
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghCityWestHouse_PokefanF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghCityWestHouse_Text_YouKnowHowPokemonHaveDifferentNaturesLikeWeHavePersonalities
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghCityWestHouse_Pikachu:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_PIKACHU
    Message OreburghCityWestHouse_Text_PikachuPikaaah
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
