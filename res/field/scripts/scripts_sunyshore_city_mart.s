#include "macros/scrcmd.inc"
#include "res/text/bank/sunyshore_city_mart.h"


    ScriptEntry SunyshoreCityMart_CommonVendor
    ScriptEntry SunyshoreCityMart_SpecialtyVendor
    ScriptEntry SunyshoreCityMart_RuinManiac
    ScriptEntry SunyshoreCityMart_Sailor
    ScriptEntryEnd

SunyshoreCityMart_CommonVendor:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Common_VendorGreeting
    CloseMessageWithoutErasing
    PokeMartCommon
    ReleaseAll
    End

SunyshoreCityMart_SpecialtyVendor:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Common_VendorGreeting
    CloseMessageWithoutErasing
    PokeMartSpecialties MART_SPECIALTIES_ID_SUNYSHORE
    ReleaseAll
    End

SunyshoreCityMart_RuinManiac:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message SunyshoreCityMart_Text_VictoryRoadIsHarrowing
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SunyshoreCityMart_Sailor:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message SunyshoreCityMart_Text_BuyBallSealsAtSunyshoreMarket
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
