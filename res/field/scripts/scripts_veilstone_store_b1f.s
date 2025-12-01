#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_store_b1f.h"

#define LOCALID_SPICINESS  VAR_0x8007
#define LOCALID_DRYNESS    VAR_0x8000
#define LOCALID_SWEETNESS  VAR_0x8001
#define LOCALID_BITTERNESS VAR_0x8002
#define LOCALID_SOURNESS   VAR_0x8003
// All purchasable poffins have the same smoothness
#define LOCALID_SMOOTHNESS 20

    ScriptEntry VeilstoneStoreB1F_Gentleman
    ScriptEntry VeilstoneStoreB1F_Socialite1
    ScriptEntry VeilstoneStoreB1F_Socialite2
    ScriptEntry VeilstoneStoreB1F_Attendant1
    ScriptEntry VeilstoneStoreB1F_Attendant2
    ScriptEntry VeilstoneStoreB1F_RageCandyBarVendor
    ScriptEntry VeilstoneStoreB1F_ProfRowan
    ScriptEntry VeilstoneStoreB1F_LavaCookieVendor
    ScriptEntry VeilstoneStoreB1F_PoffinVendor
    ScriptEntry VeilstoneStoreB1F_Dummy
    ScriptEntry VeilstoneStoreB1F_BerryVendor
    ScriptEntry VeilstoneStoreB1F_Directory
    ScriptEntryEnd

VeilstoneStoreB1F_Gentleman:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message VeilstoneStoreB1F_Text_IBoughtAllTheRageCandyBars
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStoreB1F_Socialite1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message VeilstoneStoreB1F_Text_HopelessAtCookingPoffins
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStoreB1F_Socialite2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message VeilstoneStoreB1F_Text_FlavorsOfPoffinsAffectConditionOfPokemon
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStoreB1F_Attendant1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message VeilstoneStoreB1F_Text_Welcome
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStoreB1F_Attendant2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message VeilstoneStoreB1F_Text_WeHaveBerriesOnSale
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStoreB1F_RageCandyBarVendor:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message VeilstoneStoreB1F_Text_AllSoldOut
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStoreB1F_ProfRowan:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfSet FLAG_VEILSTONE_STORE_B1F_SPOKEN_TO_PROF_ROWAN, VeilstoneStoreB1F_ProfRowanAfterSpokenTo
    SetFlag FLAG_VEILSTONE_STORE_B1F_SPOKEN_TO_PROF_ROWAN
    SetFlag FLAG_VEILSTONE_STORE_B1F_HIDE_PROF_ROWAN
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
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStoreB1F_BerryVendor:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    VendorGreeting
    CloseMessageWithoutErasing
    PokeMartSpecialties MART_SPECIALTIES_ID_VEILSTONE_B1F
    ReleaseAll
    End

VeilstoneStoreB1F_LavaCookieVendor:
    PlayFanfare SEQ_SE_CONFIRM
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
    PlayFanfare SEQ_SE_DP_REGI
    AddToGameRecord RECORD_MONEY_SPENT, VAR_0x8005
    RemoveMoney2 VAR_0x8005
    UpdateMoneyDisplay
    WaitFanfare SEQ_SE_DP_REGI
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
    WaitABXPadPress
    CloseMessage
    HideMoney
    ReleaseAll
    End

VeilstoneStoreB1F_PoffinVendor:
    PlayFanfare SEQ_SE_CONFIRM
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
    WaitABXPadPress
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
    GivePoffin VAR_RESULT, LOCALID_SPICINESS, LOCALID_DRYNESS, LOCALID_SWEETNESS, LOCALID_BITTERNESS, LOCALID_SOURNESS, LOCALID_SMOOTHNESS
    AddToGameRecord RECORD_MONEY_SPENT, 6400
    RemoveMoney2 6400
    SubVar VAR_0x8005, 1
    GoTo VeilstoneStoreB1F_PoffinVendorGivePoffin
    End

VeilstoneStoreB1F_PoffinVendorThankYou:
    PlayFanfare SEQ_SE_DP_REGI
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
    WaitABXPadPress
    CloseMessage
    HideMoney
    ReleaseAll
    End

VeilstoneStoreB1F_PoffinVendorCreateSpicyDry:
    SetVar LOCALID_SPICINESS, 32
    SetVar LOCALID_DRYNESS, 32
    SetVar LOCALID_SWEETNESS, 0
    SetVar LOCALID_BITTERNESS, 0
    SetVar LOCALID_SOURNESS, 0
    Return

VeilstoneStoreB1F_PoffinVendorCreateSpicySweet:
    SetVar LOCALID_SPICINESS, 32
    SetVar LOCALID_DRYNESS, 0
    SetVar LOCALID_SWEETNESS, 32
    SetVar LOCALID_BITTERNESS, 0
    SetVar LOCALID_SOURNESS, 0
    Return

VeilstoneStoreB1F_PoffinVendorCreateSpicyBitter:
    SetVar LOCALID_SPICINESS, 32
    SetVar LOCALID_DRYNESS, 0
    SetVar LOCALID_SWEETNESS, 0
    SetVar LOCALID_BITTERNESS, 32
    SetVar LOCALID_SOURNESS, 0
    Return

VeilstoneStoreB1F_PoffinVendorCreateSpicySour:
    SetVar LOCALID_SPICINESS, 32
    SetVar LOCALID_DRYNESS, 0
    SetVar LOCALID_SWEETNESS, 0
    SetVar LOCALID_BITTERNESS, 0
    SetVar LOCALID_SOURNESS, 32
    Return

VeilstoneStoreB1F_PoffinVendorCreateDrySweet:
    SetVar LOCALID_SPICINESS, 0
    SetVar LOCALID_DRYNESS, 32
    SetVar LOCALID_SWEETNESS, 32
    SetVar LOCALID_BITTERNESS, 0
    SetVar LOCALID_SOURNESS, 0
    Return

VeilstoneStoreB1F_PoffinVendorCreateDryBitter:
    SetVar LOCALID_SPICINESS, 0
    SetVar LOCALID_DRYNESS, 32
    SetVar LOCALID_SWEETNESS, 0
    SetVar LOCALID_BITTERNESS, 32
    SetVar LOCALID_SOURNESS, 0
    Return

VeilstoneStoreB1F_PoffinVendorCreateDrySour:
    SetVar LOCALID_SPICINESS, 0
    SetVar LOCALID_DRYNESS, 32
    SetVar LOCALID_SWEETNESS, 0
    SetVar LOCALID_BITTERNESS, 0
    SetVar LOCALID_SOURNESS, 32
    Return

VeilstoneStoreB1F_PoffinVendorCreateSweetBitter:
    SetVar LOCALID_SPICINESS, 0
    SetVar LOCALID_DRYNESS, 0
    SetVar LOCALID_SWEETNESS, 32
    SetVar LOCALID_BITTERNESS, 32
    SetVar LOCALID_SOURNESS, 0
    Return

VeilstoneStoreB1F_PoffinVendorCreateSweetSour:
    SetVar LOCALID_SPICINESS, 0
    SetVar LOCALID_DRYNESS, 0
    SetVar LOCALID_SWEETNESS, 32
    SetVar LOCALID_BITTERNESS, 0
    SetVar LOCALID_SOURNESS, 32
    Return

VeilstoneStoreB1F_PoffinVendorCreateBitterSour:
    SetVar LOCALID_SPICINESS, 0
    SetVar LOCALID_DRYNESS, 0
    SetVar LOCALID_SWEETNESS, 0
    SetVar LOCALID_BITTERNESS, 32
    SetVar LOCALID_SOURNESS, 32
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

VeilstoneStoreB1F_Dummy:
    End

VeilstoneStoreB1F_IncrementDepartmentStoreRegularCounter:
    AddVar VAR_DEPARTMENT_STORE_REGULAR_COUNTER, 1
    Return

VeilstoneStoreB1F_Directory:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message VeilstoneStoreB1F_Text_Directory
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
