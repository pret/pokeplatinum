#include "macros/scrcmd.inc"
#include "res/text/bank/pastoria_city_mart.h"


    ScriptEntry PastoriaCityMart_CommonVendor
    ScriptEntry PastoriaCityMart_SpecialtyVendor
    ScriptEntry PastoriaCityMart_BugCatcher
    ScriptEntry PastoriaCityMart_SchoolGirl
    ScriptEntry PastoriaCityMart_CroagunkCarving
    ScriptEntryEnd

PastoriaCityMart_CommonVendor:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    VendorGreeting
    CloseMessageWithoutErasing
    PokeMartCommon
    ReleaseAll
    End

PastoriaCityMart_SpecialtyVendor:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    VendorGreeting
    CloseMessageWithoutErasing
    PokeMartSpecialties MART_SPECIALTIES_ID_PASTORIA
    ReleaseAll
    End

PastoriaCityMart_BugCatcher:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message PastoriaCityMart_Text_CroagunkIsOfficialCityMascot
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PastoriaCityMart_SchoolGirl:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message PastoriaCityMart_Text_AreYouUsingBallCapsules
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PastoriaCityMart_CroagunkCarving:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message PastoriaCityMart_Text_LooksLikeItsSeepingPoison
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0

