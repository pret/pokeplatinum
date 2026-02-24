#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_city_east_house_1f.h"


    ScriptEntry OreburghCityEastHouse1F_PokefanM
    ScriptEntry OreburghCityEastHouse1F_Hiker
    ScriptEntry OreburghCityEastHouse1F_AceTrainerM
    ScriptEntryEnd

OreburghCityEastHouse1F_PokefanM:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghCityEastHouse1F_Text_WhyNotTryTrainingInTheOreburghMine
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghCityEastHouse1F_Hiker:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghCityEastHouse1F_Text_IAlwaysHaveARottenTimeTryingToDecideWhichMovesMyPokemonShouldLearn
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghCityEastHouse1F_AceTrainerM:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghCityEastHouse1F_Text_YouRemindMeSoMuchOfTheTimeIGotMyFirstPokemon
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
