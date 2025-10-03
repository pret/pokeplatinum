#include "macros/scrcmd.inc"
#include "res/text/bank/floaroma_town_mart.h"


    ScriptEntry FloaromaTownMart_CommonVendor
    ScriptEntry FloaromaTownMart_SpecialtyVendor
    ScriptEntry FloaromaTownMart_Beauty
    ScriptEntry FloaromaTownMart_SchoolGirl
    ScriptEntryEnd

FloaromaTownMart_CommonVendor:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    VendorGreeting
    CloseMessageWithoutErasing
    PokeMartCommon
    ReleaseAll
    End

FloaromaTownMart_SpecialtyVendor:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    VendorGreeting
    CloseMessageWithoutErasing
    PokeMartSpecialties MART_SPECIALTIES_ID_FLOAROMA
    ReleaseAll
    End

FloaromaTownMart_Beauty:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message FloaromaTownMart_Text_DressUpPokemonWithAccessories
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

FloaromaTownMart_SchoolGirl:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message FloaromaTownMart_Text_CantBuyBerriesAtMarts
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
