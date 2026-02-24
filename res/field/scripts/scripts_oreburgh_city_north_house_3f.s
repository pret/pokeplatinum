#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_city_north_house_3f.h"


    ScriptEntry OreburghCityNorthHouse3F_PokefanF
    ScriptEntry OreburghCityNorthHouse3F_Worker
    ScriptEntry OreburghCityNorthHouse3F_Twin
    ScriptEntryEnd

OreburghCityNorthHouse3F_PokefanF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghCityNorthHouse3F_Text_DuringTheDaytimeEveryoneGoesOffToTheMine
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghCityNorthHouse3F_Worker:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghCityNorthHouse3F_Text_WellKeepDiggingCoal
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghCityNorthHouse3F_Twin:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghCityNorthHouse3F_Text_EveryoneIncludingLotsOfPokemonDugTheBigUndergroundMaze
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
