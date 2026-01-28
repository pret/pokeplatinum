#include "macros/scrcmd.inc"
#include "generated/items.h"
#include "res/text/bank/eterna_city_mart.h"


    ScriptEntry EternaCityMart_CommonVendor
    ScriptEntry EternaCityMart_SpecialtyVendor
    ScriptEntry EternaCityMart_Guitarist
    ScriptEntry EternaCityMart_Hiker
    ScriptEntryEnd

EternaCityMart_CommonVendor:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Common_VendorGreeting
    CloseMessageWithoutErasing
    PokeMartCommon
    ReleaseAll
    End

EternaCityMart_SpecialtyVendor:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Common_VendorGreeting
    CloseMessageWithoutErasing
    PokeMartSpecialties MART_SPECIALTIES_ID_ETERNA_MART
    ReleaseAll
    End

EternaCityMart_Guitarist:
    BufferItemName 0, ITEM_SUPER_POTION //Unused?
    BufferItemName 1, ITEM_TM03         //Unused?
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message EternaCityMart_Text_GardeniaIsTooMuch
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

EternaCityMart_Hiker:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message EternaCityMart_Text_EscapeRopeIsIndispensable
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
