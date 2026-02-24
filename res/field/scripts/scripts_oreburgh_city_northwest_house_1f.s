#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_city_northwest_house_1f.h"


    ScriptEntry OreburghCityNorthwestHouse1F_BreederM
    ScriptEntry OreburghCityNorthwestHouse1F_Youngster
    ScriptEntry OreburghCityNorthwestHouse1F_PokefanF
    ScriptEntryEnd

OreburghCityNorthwestHouse1F_BreederM:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghCityNorthwestHouse1F_Text_ThereAreEightGymLeadersInTheSinnohRegion
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghCityNorthwestHouse1F_Youngster:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghCityNorthwestHouse1F_Text_AGymLeaderIsntLikeJustAnyTrainerYouMeet
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghCityNorthwestHouse1F_PokefanF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghCityNorthwestHouse1F_Text_RoarkLetsUsTrainOurPokemonInTheMine
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
