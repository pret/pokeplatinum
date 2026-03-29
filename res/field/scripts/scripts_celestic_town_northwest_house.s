#include "macros/scrcmd.inc"
#include "res/text/bank/celestic_town_northwest_house.h"


    ScriptEntry CelesticTownNorthwestHouse_Unused
    ScriptEntry CelesticTownNorthwestHouse_ExpertF
    ScriptEntry CelesticTownNorthwestHouse_ExpertM
    ScriptEntry CelesticTownNorthwestHouse_GymGuide
    ScriptEntryEnd

CelesticTownNorthwestHouse_Unused:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message CelesticTownNorthwestHouse_Text_AWhileSinceCustomer
    Common_VendorGreeting
    CloseMessageWithoutErasing
    PokeMartCommon
    ReleaseAll
    End

CelesticTownNorthwestHouse_ExpertF:
    PokeMartCommonWithGreeting
    End

CelesticTownNorthwestHouse_ExpertM:
    PokeMartSpecialtiesWithGreeting MART_SPECIALTIES_ID_CELESTIC
    End

CelesticTownNorthwestHouse_GymGuide:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message CelesticTownNorthwestHouse_Text_GlassesChangeTheWorld
    GetHour VAR_RESULT
    GoToIfLt VAR_RESULT, 4, CelesticTownNorthwestHouse_TryGiveWiseGlasses
    GoToIfLt VAR_RESULT, 10, CelesticTownNorthwestHouse_TryGiveChoiceSpecs
    GoToIfLt VAR_RESULT, 20, CelesticTownNorthwestHouse_TryGiveBlackGlasses
    GoTo CelesticTownNorthwestHouse_TryGiveWiseGlasses

CelesticTownNorthwestHouse_TryGiveChoiceSpecs:
    GoToIfSet FLAG_RECEIVED_CELESTIC_TOWN_NORTHWEST_HOUSE_CHOICE_SPECS, CelesticTownNorthwestHouse_ExplainChoiceSpecs
    Message CelesticTownNorthwestHouse_Text_ChangeHowWorldLooks
    SetVar VAR_0x8004, ITEM_CHOICE_SPECS
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, CelesticTownNorthwestHouse_BagIsFull
    Common_GiveItemQuantity
    SetFlag FLAG_RECEIVED_CELESTIC_TOWN_NORTHWEST_HOUSE_CHOICE_SPECS
    Message CelesticTownNorthwestHouse_Text_MorningChoiceSpecs
    GoTo CelesticTownNorthwestHouse_ExplainChoiceSpecs

CelesticTownNorthwestHouse_TryGiveBlackGlasses:
    GoToIfSet FLAG_RECEIVED_CELESTIC_TOWN_NORTHWEST_HOUSE_BLACKGLASSES, CelesticTownNorthwestHouse_ExplainBlackGlasses
    Message CelesticTownNorthwestHouse_Text_ChangeHowWorldLooks
    SetVar VAR_0x8004, ITEM_BLACKGLASSES
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, CelesticTownNorthwestHouse_BagIsFull
    Common_GiveItemQuantity
    SetFlag FLAG_RECEIVED_CELESTIC_TOWN_NORTHWEST_HOUSE_BLACKGLASSES
    Message CelesticTownNorthwestHouse_Text_DayBlackGlasses
    GoTo CelesticTownNorthwestHouse_ExplainBlackGlasses

CelesticTownNorthwestHouse_TryGiveWiseGlasses:
    GoToIfSet FLAG_RECEIVED_CELESTIC_TOWN_NORTHWEST_HOUSE_WISE_GLASSES, CelesticTownNorthwestHouse_ExplainWiseGlasses
    Message CelesticTownNorthwestHouse_Text_ChangeHowWorldLooks
    SetVar VAR_0x8004, ITEM_WISE_GLASSES
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, CelesticTownNorthwestHouse_BagIsFull
    Common_GiveItemQuantity
    SetFlag FLAG_RECEIVED_CELESTIC_TOWN_NORTHWEST_HOUSE_WISE_GLASSES
    Message CelesticTownNorthwestHouse_Text_NightWiseGlasses
    GoTo CelesticTownNorthwestHouse_ExplainWiseGlasses

CelesticTownNorthwestHouse_ExplainChoiceSpecs:
    Message CelesticTownNorthwestHouse_Text_ExplainChoiceSpecs
    WaitButton
    CloseMessage
    ReleaseAll
    End

CelesticTownNorthwestHouse_ExplainBlackGlasses:
    Message CelesticTownNorthwestHouse_Text_ExplainBlackGlasses
    WaitButton
    CloseMessage
    ReleaseAll
    End

CelesticTownNorthwestHouse_ExplainWiseGlasses:
    Message CelesticTownNorthwestHouse_Text_ExplainWiseGlasses
    WaitButton
    CloseMessage
    ReleaseAll
    End

CelesticTownNorthwestHouse_BagIsFull:
    Message CelesticTownNorthwestHouse_Text_BagIsFull
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
