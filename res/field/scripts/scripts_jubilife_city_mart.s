#include "macros/scrcmd.inc"
#include "res/text/bank/jubilife_city_mart.h"


    ScriptEntry JubilifeCityMart_CommonVendor
    ScriptEntry JubilifeCityMart_SpecialtyVendor
    ScriptEntry JubilifeCityMart_Guitarist
    ScriptEntry JubilifeCityMart_Pokefan
    ScriptEntry JubilifeCityMart_Beauty
    ScriptEntryEnd

JubilifeCityMart_CommonVendor:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    VendorGreeting
    CloseMessageWithoutErasing
    PokeMartCommon
    ReleaseAll
    End

JubilifeCityMart_SpecialtyVendor:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    VendorGreeting
    CloseMessageWithoutErasing
    PokeMartSpecialties MART_SPECIALTIES_ID_JUBILIFE
    ReleaseAll
    End

JubilifeCityMart_Guitarist:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeCityMart_Text_WastedMoneyOnPokeBalls
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCityMart_Pokefan:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeCityMart_Text_PackSomePotions
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCityMart_Beauty:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeCityMart_Text_JustUseARepel
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
