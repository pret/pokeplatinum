#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_store_b1f.h"

#define LOCAL_VAR_SPICINESS  VAR_0x8007
#define LOCAL_VAR_DRYNESS    VAR_0x8000
#define LOCAL_VAR_SWEETNESS  VAR_0x8001
#define LOCAL_VAR_BITTERNESS VAR_0x8002
#define LOCAL_VAR_SOURNESS   VAR_0x8003
// All purchasable poffins have the same smoothness
#define LOCAL_VAR_SMOOTHNESS 20

    ScriptEntry VeilstoneStoreB1F_Gentleman
    ScriptEntry VeilstoneStoreB1F_Socialite1
    ScriptEntry VeilstoneStoreB1F_Socialite2
    ScriptEntry VeilstoneStoreB1F_Attendant1
    ScriptEntry VeilstoneStoreB1F_Attendant2
    ScriptEntry VeilstoneStoreB1F_RageCandyBarVendor
    ScriptEntry VeilstoneStoreB1F_ProfRowan
    ScriptEntry VeilstoneStoreB1F_LavaCookieVendor
    ScriptEntry VeilstoneStoreB1F_PoffinVendor
    ScriptEntry VeilstoneStoreB1F_Dummy10
    ScriptEntry VeilstoneStoreB1F_BerryVendor
    ScriptEntry VeilstoneStoreB1F_Directory
    ScriptEntryEnd

VeilstoneStoreB1F_Gentleman:
    NPCMessage VeilstoneStoreB1F_Text_BoughtAllRageCandyBars
    End

VeilstoneStoreB1F_Socialite1:
    NPCMessage VeilstoneStoreB1F_Text_HopelessAtCookingPoffins
    End

VeilstoneStoreB1F_Socialite2:
    NPCMessage VeilstoneStoreB1F_Text_FlavorsAffectCondition
    End

VeilstoneStoreB1F_Attendant1:
    NPCMessage VeilstoneStoreB1F_Text_Welcome
    End

VeilstoneStoreB1F_Attendant2:
    NPCMessage VeilstoneStoreB1F_Text_WeHaveBerriesOnSale
    End

VeilstoneStoreB1F_RageCandyBarVendor:
    NPCMessage VeilstoneStoreB1F_Text_AllSoldOut
    End

VeilstoneStoreB1F_ProfRowan:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    GoToIfSet FLAG_TALKED_TO_VEILSTONE_STORE_B1F_PROF_ROWAN, VeilstoneStoreB1F_ProfRowanAfterSpokenTo
    SetFlag FLAG_TALKED_TO_VEILSTONE_STORE_B1F_PROF_ROWAN
    SetFlag FLAG_HIDE_VEILSTONE_STORE_B1F_PROF_ROWAN
    Message VeilstoneStoreB1F_Text_RageCandyBarsAreTooPopular
    FacePlayer
    BufferPlayerName 0
    Message VeilstoneStoreB1F_Text_DoesLifeContinueToThrillYou
    GoTo VeilstoneStoreB1F_ProfRowanClose
    End

VeilstoneStoreB1F_ProfRowanAfterSpokenTo:
    FacePlayer
    BufferPlayerName 0
    Message VeilstoneStoreB1F_Text_DoesLifeContinueToThrillYou
    GoTo VeilstoneStoreB1F_ProfRowanClose
    End

VeilstoneStoreB1F_ProfRowanClose:
    WaitButton
    CloseMessage
    ReleaseAll
    End

VeilstoneStoreB1F_BerryVendor:
    PokeMartSpecialtiesWithGreeting MART_SPECIALTIES_ID_VEILSTONE_B1F
    End

VeilstoneStoreB1F_LavaCookieVendor:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ShowMoney 20, 2
    Message VeilstoneStoreB1F_Text_WouldYouLikeSomeLavaCookies
    InitLocalTextMenu 31, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm VeilstoneStoreB1F_Text_MenuEntry_One, 0
    AddMenuEntryImm VeilstoneStoreB1F_Text_MenuEntry_Ten, 1
    AddMenuEntryImm VeilstoneStoreB1F_Text_MenuEntry_LavaCookiesNoThanks, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, VeilstoneStoreB1F_LavaCookieVendorBuyOne
    GoToIfEq VAR_0x8008, 1, VeilstoneStoreB1F_LavaCookieVendorBuyTen
    GoTo VeilstoneStoreB1F_LavaCookieVendorComeAgain
    End

VeilstoneStoreB1F_LavaCookieVendorBuyOne:
    SetVar VAR_0x8004, 1
    SetVar VAR_0x8005, 200
    GoToIfCannotFitItem ITEM_LAVA_COOKIE, VAR_0x8004, VAR_RESULT, VeilstoneStoreB1F_LavaCookieVendorBagIsFull
    CheckMoney2 VAR_RESULT, 200
    GoToIfEq VAR_RESULT, 0, VeilstoneStoreB1F_LavaCookieVendorNotEnoughMoney
    Message VeilstoneStoreB1F_Text_OneLavaCookie
    GoTo VeilstoneStoreB1F_LavaCookieVendorReceiveCookies
    End

VeilstoneStoreB1F_LavaCookieVendorBuyTen:
    SetVar VAR_0x8004, 10
    SetVar VAR_0x8005, 2000
    GoToIfCannotFitItem ITEM_LAVA_COOKIE, VAR_0x8004, VAR_RESULT, VeilstoneStoreB1F_LavaCookieVendorBagIsFull
    CheckMoney2 VAR_RESULT, 2000
    GoToIfEq VAR_RESULT, 0, VeilstoneStoreB1F_LavaCookieVendorNotEnoughMoney
    Message VeilstoneStoreB1F_Text_TenLavaCookies
    GoTo VeilstoneStoreB1F_LavaCookieVendorReceiveCookies
    End

VeilstoneStoreB1F_LavaCookieVendorReceiveCookies:
    AddItem ITEM_LAVA_COOKIE, VAR_0x8004, VAR_RESULT
    PlaySE SEQ_SE_DP_REGI
    AddToGameRecord RECORD_MONEY_SPENT, VAR_0x8005
    RemoveMoney2 VAR_0x8005
    UpdateMoneyDisplay
    WaitSE SEQ_SE_DP_REGI
    CallIfLt VAR_DEPARTMENT_STORE_REGULAR_COUNTER, 10000, VeilstoneStoreB1F_IncrementDepartmentStoreRegularCounter
    GoTo VeilstoneStoreB1F_LavaCookieVendorClose
    End

VeilstoneStoreB1F_LavaCookieVendorBagIsFull:
    Message VeilstoneStoreB1F_Text_NoMoreRoom
    GoTo VeilstoneStoreB1F_LavaCookieVendorClose
    End

VeilstoneStoreB1F_LavaCookieVendorNotEnoughMoney:
    Message VeilstoneStoreB1F_Text_LavaCookiesNotEnoughMoney
    GoTo VeilstoneStoreB1F_LavaCookieVendorClose
    End

VeilstoneStoreB1F_LavaCookieVendorComeAgain:
    Message VeilstoneStoreB1F_Text_LavaCookiesPleaseComeAgain
    GoTo VeilstoneStoreB1F_LavaCookieVendorClose
    End

VeilstoneStoreB1F_LavaCookieVendorClose:
    WaitButton
    CloseMessage
    HideMoney
    ReleaseAll
    End

VeilstoneStoreB1F_PoffinVendor:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ShowMoney 20, 2
    Message VeilstoneStoreB1F_Text_ISellPoffins
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, VeilstoneStoreB1F_PoffinVendorBuyPoffins
    GoToIfEq VAR_RESULT, MENU_NO, VeilstoneStoreB1F_PoffinVendorPleaseComeAgain
    End

VeilstoneStoreB1F_PoffinVendorBuyPoffins:
    CheckItem ITEM_POFFIN_CASE, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, VeilstoneStoreB1F_PoffinVendorNoPoffinCase
    Call VeilstoneStoreB1F_PoffinVendorMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, VeilstoneStoreB1F_PoffinVendorChooseSpicyDry
    GoToIfEq VAR_0x8008, 1, VeilstoneStoreB1F_PoffinVendorChooseSpicySweet
    GoToIfEq VAR_0x8008, 2, VeilstoneStoreB1F_PoffinVendorChooseSpicyBitter
    GoToIfEq VAR_0x8008, 3, VeilstoneStoreB1F_PoffinVendorChooseSpicySour
    GoToIfEq VAR_0x8008, 4, VeilstoneStoreB1F_PoffinVendorChooseDrySweet
    GoToIfEq VAR_0x8008, 5, VeilstoneStoreB1F_PoffinVendorChooseDryBitter
    GoToIfEq VAR_0x8008, 6, VeilstoneStoreB1F_PoffinVendorChooseDrySour
    GoToIfEq VAR_0x8008, 7, VeilstoneStoreB1F_PoffinVendorChooseSweetBitter
    GoToIfEq VAR_0x8008, 8, VeilstoneStoreB1F_PoffinVendorChooseSweetSour
    GoToIfEq VAR_0x8008, 9, VeilstoneStoreB1F_PoffinVendorChooseBitterSour
    GoTo VeilstoneStoreB1F_PoffinVendorPleaseComeAgain
    End

VeilstoneStoreB1F_PoffinVendorPleaseComeAgain:
    Message VeilstoneStoreB1F_Text_PoffinsPleaseComeAgain
    GoTo VeilstoneStoreB1F_PoffinVendorClose
    End

VeilstoneStoreB1F_PoffinVendorClose:
    WaitButton
    CloseMessage
    HideMoney
    ReleaseAll
    End

VeilstoneStoreB1F_PoffinVendorChooseSpicyDry:
    GoToIfNotEnoughMoney 6400, VeilstoneStoreB1F_PoffinVendorNotEnoughMoney
    SetVar VAR_0x8005, 1
    Call VeilstoneStoreB1F_PoffinVendorCreateSpicyDry
    GoTo VeilstoneStoreB1F_PoffinVendorCheckCaseIsFull
    End

VeilstoneStoreB1F_PoffinVendorChooseSpicySweet:
    GoToIfNotEnoughMoney 6400, VeilstoneStoreB1F_PoffinVendorNotEnoughMoney
    SetVar VAR_0x8005, 1
    Call VeilstoneStoreB1F_PoffinVendorCreateSpicySweet
    GoTo VeilstoneStoreB1F_PoffinVendorCheckCaseIsFull
    End

VeilstoneStoreB1F_PoffinVendorChooseSpicyBitter:
    GoToIfNotEnoughMoney 6400, VeilstoneStoreB1F_PoffinVendorNotEnoughMoney
    SetVar VAR_0x8005, 1
    Call VeilstoneStoreB1F_PoffinVendorCreateSpicyBitter
    GoTo VeilstoneStoreB1F_PoffinVendorCheckCaseIsFull
    End

VeilstoneStoreB1F_PoffinVendorChooseSpicySour:
    GoToIfNotEnoughMoney 6400, VeilstoneStoreB1F_PoffinVendorNotEnoughMoney
    SetVar VAR_0x8005, 1
    Call VeilstoneStoreB1F_PoffinVendorCreateSpicySour
    GoTo VeilstoneStoreB1F_PoffinVendorCheckCaseIsFull
    End

VeilstoneStoreB1F_PoffinVendorChooseDrySweet:
    GoToIfNotEnoughMoney 6400, VeilstoneStoreB1F_PoffinVendorNotEnoughMoney
    SetVar VAR_0x8005, 1
    Call VeilstoneStoreB1F_PoffinVendorCreateDrySweet
    GoTo VeilstoneStoreB1F_PoffinVendorCheckCaseIsFull
    End

VeilstoneStoreB1F_PoffinVendorChooseDryBitter:
    GoToIfNotEnoughMoney 6400, VeilstoneStoreB1F_PoffinVendorNotEnoughMoney
    SetVar VAR_0x8005, 1
    Call VeilstoneStoreB1F_PoffinVendorCreateDryBitter
    GoTo VeilstoneStoreB1F_PoffinVendorCheckCaseIsFull
    End

VeilstoneStoreB1F_PoffinVendorChooseDrySour:
    GoToIfNotEnoughMoney 6400, VeilstoneStoreB1F_PoffinVendorNotEnoughMoney
    SetVar VAR_0x8005, 1
    Call VeilstoneStoreB1F_PoffinVendorCreateDrySour
    GoTo VeilstoneStoreB1F_PoffinVendorCheckCaseIsFull
    End

VeilstoneStoreB1F_PoffinVendorChooseSweetBitter:
    GoToIfNotEnoughMoney 6400, VeilstoneStoreB1F_PoffinVendorNotEnoughMoney
    SetVar VAR_0x8005, 1
    Call VeilstoneStoreB1F_PoffinVendorCreateSweetBitter
    GoTo VeilstoneStoreB1F_PoffinVendorCheckCaseIsFull
    End

VeilstoneStoreB1F_PoffinVendorChooseSweetSour:
    GoToIfNotEnoughMoney 6400, VeilstoneStoreB1F_PoffinVendorNotEnoughMoney
    SetVar VAR_0x8005, 1
    Call VeilstoneStoreB1F_PoffinVendorCreateSweetSour
    GoTo VeilstoneStoreB1F_PoffinVendorCheckCaseIsFull
    End

VeilstoneStoreB1F_PoffinVendorChooseBitterSour:
    GoToIfNotEnoughMoney 6400, VeilstoneStoreB1F_PoffinVendorNotEnoughMoney
    SetVar VAR_0x8005, 1
    Call VeilstoneStoreB1F_PoffinVendorCreateBitterSour
    GoTo VeilstoneStoreB1F_PoffinVendorCheckCaseIsFull
    End

VeilstoneStoreB1F_PoffinVendorCheckCaseIsFull:
    GetEmptyPoffinCaseSlotCount VAR_RESULT
    GoToIfLt VAR_RESULT, VAR_0x8005, VeilstoneStoreB1F_PoffinVendorCaseIsFull
    GoTo VeilstoneStoreB1F_PoffinVendorGivePoffin
    End

VeilstoneStoreB1F_PoffinVendorGivePoffin:
    GoToIfEq VAR_0x8005, 0, VeilstoneStoreB1F_PoffinVendorThankYou
    GivePoffin VAR_RESULT, LOCAL_VAR_SPICINESS, LOCAL_VAR_DRYNESS, LOCAL_VAR_SWEETNESS, LOCAL_VAR_BITTERNESS, LOCAL_VAR_SOURNESS, LOCAL_VAR_SMOOTHNESS
    AddToGameRecord RECORD_MONEY_SPENT, 6400
    RemoveMoney2 6400
    SubVar VAR_0x8005, 1
    GoTo VeilstoneStoreB1F_PoffinVendorGivePoffin
    End

VeilstoneStoreB1F_PoffinVendorThankYou:
    PlaySE SEQ_SE_DP_REGI
    UpdateMoneyDisplay
    CallIfLt VAR_DEPARTMENT_STORE_REGULAR_COUNTER, 10000, VeilstoneStoreB1F_IncrementDepartmentStoreRegularCounter
    Message VeilstoneStoreB1F_Text_ThankYouVeryMuch
    GoTo VeilstoneStoreB1F_PoffinVendorClose2
    End

VeilstoneStoreB1F_PoffinVendorCaseIsFull:
    Message VeilstoneStoreB1F_Text_PoffinCaseIsFull
    GoTo VeilstoneStoreB1F_PoffinVendorClose2
    End

VeilstoneStoreB1F_PoffinVendorNotEnoughMoney:
    Message VeilstoneStoreB1F_Text_PoffinsNotEnoughMoney
    GoTo VeilstoneStoreB1F_PoffinVendorClose2
    End

VeilstoneStoreB1F_PoffinVendorNoPoffinCase:
    Message VeilstoneStoreB1F_Text_YouNeedAPoffinCase
    GoTo VeilstoneStoreB1F_PoffinVendorClose2
    End

VeilstoneStoreB1F_Unused:
    Message VeilstoneStoreB1F_Text_PoffinsPleaseComeAgain
    GoTo VeilstoneStoreB1F_PoffinVendorClose2
    End

VeilstoneStoreB1F_PoffinVendorClose2:
    WaitButton
    CloseMessage
    HideMoney
    ReleaseAll
    End

VeilstoneStoreB1F_PoffinVendorCreateSpicyDry:
    SetVar LOCAL_VAR_SPICINESS, 32
    SetVar LOCAL_VAR_DRYNESS, 32
    SetVar LOCAL_VAR_SWEETNESS, 0
    SetVar LOCAL_VAR_BITTERNESS, 0
    SetVar LOCAL_VAR_SOURNESS, 0
    Return

VeilstoneStoreB1F_PoffinVendorCreateSpicySweet:
    SetVar LOCAL_VAR_SPICINESS, 32
    SetVar LOCAL_VAR_DRYNESS, 0
    SetVar LOCAL_VAR_SWEETNESS, 32
    SetVar LOCAL_VAR_BITTERNESS, 0
    SetVar LOCAL_VAR_SOURNESS, 0
    Return

VeilstoneStoreB1F_PoffinVendorCreateSpicyBitter:
    SetVar LOCAL_VAR_SPICINESS, 32
    SetVar LOCAL_VAR_DRYNESS, 0
    SetVar LOCAL_VAR_SWEETNESS, 0
    SetVar LOCAL_VAR_BITTERNESS, 32
    SetVar LOCAL_VAR_SOURNESS, 0
    Return

VeilstoneStoreB1F_PoffinVendorCreateSpicySour:
    SetVar LOCAL_VAR_SPICINESS, 32
    SetVar LOCAL_VAR_DRYNESS, 0
    SetVar LOCAL_VAR_SWEETNESS, 0
    SetVar LOCAL_VAR_BITTERNESS, 0
    SetVar LOCAL_VAR_SOURNESS, 32
    Return

VeilstoneStoreB1F_PoffinVendorCreateDrySweet:
    SetVar LOCAL_VAR_SPICINESS, 0
    SetVar LOCAL_VAR_DRYNESS, 32
    SetVar LOCAL_VAR_SWEETNESS, 32
    SetVar LOCAL_VAR_BITTERNESS, 0
    SetVar LOCAL_VAR_SOURNESS, 0
    Return

VeilstoneStoreB1F_PoffinVendorCreateDryBitter:
    SetVar LOCAL_VAR_SPICINESS, 0
    SetVar LOCAL_VAR_DRYNESS, 32
    SetVar LOCAL_VAR_SWEETNESS, 0
    SetVar LOCAL_VAR_BITTERNESS, 32
    SetVar LOCAL_VAR_SOURNESS, 0
    Return

VeilstoneStoreB1F_PoffinVendorCreateDrySour:
    SetVar LOCAL_VAR_SPICINESS, 0
    SetVar LOCAL_VAR_DRYNESS, 32
    SetVar LOCAL_VAR_SWEETNESS, 0
    SetVar LOCAL_VAR_BITTERNESS, 0
    SetVar LOCAL_VAR_SOURNESS, 32
    Return

VeilstoneStoreB1F_PoffinVendorCreateSweetBitter:
    SetVar LOCAL_VAR_SPICINESS, 0
    SetVar LOCAL_VAR_DRYNESS, 0
    SetVar LOCAL_VAR_SWEETNESS, 32
    SetVar LOCAL_VAR_BITTERNESS, 32
    SetVar LOCAL_VAR_SOURNESS, 0
    Return

VeilstoneStoreB1F_PoffinVendorCreateSweetSour:
    SetVar LOCAL_VAR_SPICINESS, 0
    SetVar LOCAL_VAR_DRYNESS, 0
    SetVar LOCAL_VAR_SWEETNESS, 32
    SetVar LOCAL_VAR_BITTERNESS, 0
    SetVar LOCAL_VAR_SOURNESS, 32
    Return

VeilstoneStoreB1F_PoffinVendorCreateBitterSour:
    SetVar LOCAL_VAR_SPICINESS, 0
    SetVar LOCAL_VAR_DRYNESS, 0
    SetVar LOCAL_VAR_SWEETNESS, 0
    SetVar LOCAL_VAR_BITTERNESS, 32
    SetVar LOCAL_VAR_SOURNESS, 32
    Return

VeilstoneStoreB1F_PoffinVendorMenu:
    Message VeilstoneStoreB1F_Text_WhichPoffinWouldYouLike
    InitLocalTextListMenu 1, 1, 0, VAR_RESULT
    AddListMenuEntry VeilstoneStoreB1F_Text_MenuEntry_SpicyDry, 0
    AddListMenuEntry VeilstoneStoreB1F_Text_MenuEntry_SpicySweet, 1
    AddListMenuEntry VeilstoneStoreB1F_Text_MenuEntry_SpicyBitter, 2
    AddListMenuEntry VeilstoneStoreB1F_Text_MenuEntry_SpicySour, 3
    AddListMenuEntry VeilstoneStoreB1F_Text_MenuEntry_DrySweet, 4
    AddListMenuEntry VeilstoneStoreB1F_Text_MenuEntry_DryBitter, 5
    AddListMenuEntry VeilstoneStoreB1F_Text_MenuEntry_DrySour, 6
    AddListMenuEntry VeilstoneStoreB1F_Text_MenuEntry_SweetBitter, 7
    AddListMenuEntry VeilstoneStoreB1F_Text_MenuEntry_SweetSour, 8
    AddListMenuEntry VeilstoneStoreB1F_Text_MenuEntry_BitterSour, 9
    AddListMenuEntry VeilstoneStoreB1F_Text_MenuEntry_PoffinsNoThanks, 10
    ShowListMenu
    Return

VeilstoneStoreB1F_Dummy10:
    End

VeilstoneStoreB1F_IncrementDepartmentStoreRegularCounter:
    AddVar VAR_DEPARTMENT_STORE_REGULAR_COUNTER, 1
    Return

VeilstoneStoreB1F_Directory:
    EventMessage VeilstoneStoreB1F_Text_Directory
    End

    .balign 4, 0
