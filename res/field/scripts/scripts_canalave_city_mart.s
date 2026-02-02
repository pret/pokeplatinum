#include "macros/scrcmd.inc"
#include "generated/items.h"
#include "res/text/bank/canalave_city_mart.h"


    ScriptEntry CanalaveCityMart_CommonVendor
    ScriptEntry CanalaveCityMart_SpecialtyVendor
    ScriptEntry CanalaveCityMart_Lady
    ScriptEntry CanalaveCityMart_Pokefan
    ScriptEntryEnd

CanalaveCityMart_CommonVendor:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Common_VendorGreeting
    CloseMessageWithoutErasing
    PokeMartCommon
    ReleaseAll
    End

CanalaveCityMart_SpecialtyVendor:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Common_VendorGreeting
    CloseMessageWithoutErasing
    PokeMartSpecialties MART_SPECIALTIES_ID_CANALAVE
    ReleaseAll
    End

CanalaveCityMart_Lady:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferItemName 0, ITEM_MAX_POTION //Unused?
    Message CanalaveCityMart_Text_ThatsTheRepeatBall
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

CanalaveCityMart_Pokefan:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferItemName 0, ITEM_X_ATTACK //Unused?
    Message CanalaveCityMart_Text_ShouldTakeReviveToIronIsland
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
