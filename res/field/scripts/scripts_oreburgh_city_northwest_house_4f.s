#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_city_northwest_house_4f.h"


    ScriptEntry OreburghCityNorthwestHouse4F_SchoolKidM
    ScriptEntry OreburghCityNorthwestHouse4F_NinjaBoy
    ScriptEntry OreburghCityNorthwestHouse4F_PokefanF
    ScriptEntryEnd

OreburghCityNorthwestHouse4F_SchoolKidM:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghCityNorthwestHouse4F_Text_HahahaImGonnaSwipeYourFlag
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghCityNorthwestHouse4F_NinjaBoy:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghCityNorthwestHouse4F_Text_ISetSomeNastyTrapsCatchMeIfYouCan
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghCityNorthwestHouse4F_PokefanF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghCityNorthwestHouse4F_Text_ThanksToTheGymLeaderWeCanPlayUnderground
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
