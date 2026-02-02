#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_city_mart.h"


    ScriptEntry OreburghCityMart_CommonVendor
    ScriptEntry OreburghCityMart_SpecialtyVendor
    ScriptEntry OreburghCityMart_Hiker
    ScriptEntry OreburghCityMart_Collector
    ScriptEntryEnd

OreburghCityMart_CommonVendor:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Common_VendorGreeting
    CloseMessageWithoutErasing
    PokeMartCommon
    ReleaseAll
    End

OreburghCityMart_SpecialtyVendor:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Common_VendorGreeting
    CloseMessageWithoutErasing
    PokeMartSpecialties MART_SPECIALTIES_ID_OREBURGH
    ReleaseAll
    End

OreburghCityMart_Hiker:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghCityMart_Text_MoreBadgesMoreItems
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghCityMart_Collector:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghCityMart_Text_TwoStaffOfferDifferentMerchandise
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
