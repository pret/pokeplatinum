#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_store_b1f.h"


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
    GoToIfEq VAR_RESULT, MENU_YES, _025B
    GoToIfEq VAR_RESULT, MENU_NO, _0306
    End

_025B:
    CheckItem ITEM_POFFIN_CASE, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0537
    Call _0697
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _031B
    GoToIfEq VAR_0x8008, 1, _0344
    GoToIfEq VAR_0x8008, 2, _036D
    GoToIfEq VAR_0x8008, 3, _0396
    GoToIfEq VAR_0x8008, 4, _03BF
    GoToIfEq VAR_0x8008, 5, _03E8
    GoToIfEq VAR_0x8008, 6, _0411
    GoToIfEq VAR_0x8008, 7, _043A
    GoToIfEq VAR_0x8008, 8, _0463
    GoToIfEq VAR_0x8008, 9, _048C
    GoTo _0306
    End

_0306:
    Message 23
    GoTo _0311
    End

_0311:
    WaitABXPadPress
    CloseMessage
    HideMoney
    ReleaseAll
    End

_031B:
    GoToIfNotEnoughMoney 6400, _052C
    SetVar VAR_0x8005, 1
    Call _0557
    GoTo _04B5
    End

_0344:
    GoToIfNotEnoughMoney 6400, _052C
    SetVar VAR_0x8005, 1
    Call _0577
    GoTo _04B5
    End

_036D:
    GoToIfNotEnoughMoney 6400, _052C
    SetVar VAR_0x8005, 1
    Call _0597
    GoTo _04B5
    End

_0396:
    GoToIfNotEnoughMoney 6400, _052C
    SetVar VAR_0x8005, 1
    Call _05B7
    GoTo _04B5
    End

_03BF:
    GoToIfNotEnoughMoney 6400, _052C
    SetVar VAR_0x8005, 1
    Call _05D7
    GoTo _04B5
    End

_03E8:
    GoToIfNotEnoughMoney 6400, _052C
    SetVar VAR_0x8005, 1
    Call _05F7
    GoTo _04B5
    End

_0411:
    GoToIfNotEnoughMoney 6400, _052C
    SetVar VAR_0x8005, 1
    Call _0617
    GoTo _04B5
    End

_043A:
    GoToIfNotEnoughMoney 6400, _052C
    SetVar VAR_0x8005, 1
    Call _0637
    GoTo _04B5
    End

_0463:
    GoToIfNotEnoughMoney 6400, _052C
    SetVar VAR_0x8005, 1
    Call _0657
    GoTo _04B5
    End

_048C:
    GoToIfNotEnoughMoney 6400, _052C
    SetVar VAR_0x8005, 1
    Call _0677
    GoTo _04B5
    End

_04B5:
    GetEmptyPoffinCaseSlotCount VAR_RESULT
    GoToIfLt VAR_RESULT, VAR_0x8005, _0521
    GoTo _04CE
    End

_04CE:
    GoToIfEq VAR_0x8005, 0, _0503
    GivePoffin VAR_RESULT, VAR_0x8007, VAR_0x8000, VAR_0x8001, VAR_0x8002, VAR_0x8003, 20
    AddToGameRecord RECORD_MONEY_SPENT, 6400
    RemoveMoney2 6400
    SubVar VAR_0x8005, 1
    GoTo _04CE
    End

_0503:
    PlayFanfare SEQ_SE_DP_REGI
    UpdateMoneyDisplay
    CallIfLt VAR_DEPARTMENT_STORE_REGULAR_COUNTER, 10000, VeilstoneStoreB1F_IncrementDepartmentStoreRegularCounter
    Message VeilstoneStoreB1F_Text_ThankYouVeryMuch
    GoTo _054D
    End

_0521:
    Message VeilstoneStoreB1F_Text_PoffinCaseIsFull
    GoTo _054D
    End

_052C:
    Message VeilstoneStoreB1F_Text_PoffinsNotEnoughMoney
    GoTo _054D
    End

_0537:
    Message VeilstoneStoreB1F_Text_YouNeedAPoffinCase
    GoTo _054D
    End

VeilstoneStoreB1F_Unused:
    Message VeilstoneStoreB1F_Text_PoffinsPleaseComeAgain
    GoTo _054D
    End

_054D:
    WaitABXPadPress
    CloseMessage
    HideMoney
    ReleaseAll
    End

_0557:
    SetVar VAR_0x8007, 32
    SetVar VAR_0x8000, 32
    SetVar VAR_0x8001, 0
    SetVar VAR_0x8002, 0
    SetVar VAR_0x8003, 0
    Return

_0577:
    SetVar VAR_0x8007, 32
    SetVar VAR_0x8000, 0
    SetVar VAR_0x8001, 32
    SetVar VAR_0x8002, 0
    SetVar VAR_0x8003, 0
    Return

_0597:
    SetVar VAR_0x8007, 32
    SetVar VAR_0x8000, 0
    SetVar VAR_0x8001, 0
    SetVar VAR_0x8002, 32
    SetVar VAR_0x8003, 0
    Return

_05B7:
    SetVar VAR_0x8007, 32
    SetVar VAR_0x8000, 0
    SetVar VAR_0x8001, 0
    SetVar VAR_0x8002, 0
    SetVar VAR_0x8003, 32
    Return

_05D7:
    SetVar VAR_0x8007, 0
    SetVar VAR_0x8000, 32
    SetVar VAR_0x8001, 32
    SetVar VAR_0x8002, 0
    SetVar VAR_0x8003, 0
    Return

_05F7:
    SetVar VAR_0x8007, 0
    SetVar VAR_0x8000, 32
    SetVar VAR_0x8001, 0
    SetVar VAR_0x8002, 32
    SetVar VAR_0x8003, 0
    Return

_0617:
    SetVar VAR_0x8007, 0
    SetVar VAR_0x8000, 32
    SetVar VAR_0x8001, 0
    SetVar VAR_0x8002, 0
    SetVar VAR_0x8003, 32
    Return

_0637:
    SetVar VAR_0x8007, 0
    SetVar VAR_0x8000, 0
    SetVar VAR_0x8001, 32
    SetVar VAR_0x8002, 32
    SetVar VAR_0x8003, 0
    Return

_0657:
    SetVar VAR_0x8007, 0
    SetVar VAR_0x8000, 0
    SetVar VAR_0x8001, 32
    SetVar VAR_0x8002, 0
    SetVar VAR_0x8003, 32
    Return

_0677:
    SetVar VAR_0x8007, 0
    SetVar VAR_0x8000, 0
    SetVar VAR_0x8001, 0
    SetVar VAR_0x8002, 32
    SetVar VAR_0x8003, 32
    Return

_0697:
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
