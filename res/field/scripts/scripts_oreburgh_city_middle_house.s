#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_city_middle_house.h"


    ScriptEntry OreburghCityMiddleHouse_SchoolKidF
    ScriptEntry OreburghCityMiddleHouse_Hiker
    ScriptEntryEnd

OreburghCityMiddleHouse_SchoolKidF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghCityMiddleHouse_Text_RoarkIsAUserOfRockTypePokemon
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghCityMiddleHouse_Hiker:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghCityMiddleHouse_Text_RoarkIsOurTownsGymLeader
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
