#include "macros/scrcmd.inc"
#include "res/text/bank/snowpoint_city_mart.h"


    ScriptEntry SnowpointCityMart_CommonVendor
    ScriptEntry SnowpointCityMart_SpecialtyVendor
    ScriptEntry SnowpointCityMart_Youngster
    ScriptEntry SnowpointCityMart_SnowpointLady
    ScriptEntryEnd

SnowpointCityMart_CommonVendor:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Common_VendorGreeting
    CloseMessageWithoutErasing
    PokeMartCommon
    ReleaseAll
    End

SnowpointCityMart_SpecialtyVendor:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Common_VendorGreeting
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

SnowpointCityMart_SnowpointLady:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message SnowpointCityMart_Text_KeepSomeIceHeals
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
