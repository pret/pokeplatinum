#include "macros/scrcmd.inc"
#include "res/text/bank/snowpoint_city_mart.h"


    ScriptEntry SnowpointCityMart_CommonVendor
    ScriptEntry SnowpointCityMart_SpecialityVendor
    ScriptEntry SnowpointCityMart_Youngster
    ScriptEntry _0051
    ScriptEntryEnd

SnowpointCityMart_CommonVendor:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    VendorGreeting
    CloseMessageWithoutErasing
    PokeMartCommon
    ReleaseAll
    End

SnowpointCityMart_SpecialityVendor:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    VendorGreeting
    CloseMessageWithoutErasing
    PokeMartSpecialties MART_SPECIALTIES_ID_SNOWPOINT
    ReleaseAll
    End

SnowpointCityMart_Youngster:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message SnowpointCityMart_Text_UsingTmsForEliteFour
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0051:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message SnowpointCityMart_Text_KeepSomeIceHeals
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
