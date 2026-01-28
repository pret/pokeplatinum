#include "macros/scrcmd.inc"
#include "res/text/bank/hearthome_city_mart.h"


    ScriptEntry HearthomeCityMart_CommonVendor
    ScriptEntry HearthomeCityMart_SpecialtyVendor
    ScriptEntry HearthomeCityMart_Hiker
    ScriptEntry HearthomeCityMart_Beauty
    ScriptEntryEnd

HearthomeCityMart_CommonVendor:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Common_VendorGreeting
    CloseMessageWithoutErasing
    PokeMartCommon
    ReleaseAll
    End

HearthomeCityMart_SpecialtyVendor:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Common_VendorGreeting
    CloseMessageWithoutErasing
    PokeMartSpecialties MART_SPECIALTIES_ID_HEARTHOME
    ReleaseAll
    End

HearthomeCityMart_Hiker:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message HearthomeCityMart_Text_CantBuyRevivesWithTwoBadges
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

HearthomeCityMart_Beauty:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message HearthomeCityMart_Text_FindAccessoriesInAmitySquare
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
