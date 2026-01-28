#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_store_2f.h"
#include "res/text/bank/menu_entries.h"


    ScriptEntry VeilstoneStore2F_Attendant
    ScriptEntry VeilstoneStore2F_Lady
    ScriptEntry VeilstoneStore2F_BugCatcher1
    ScriptEntry VeilstoneStore2F_BugCatcher2
    ScriptEntry VeilstoneStore2F_PoketchVendor
    ScriptEntry VeilstoneStore2F_TopVendor
    ScriptEntry VeilstoneStore2F_MiddleVendor
    ScriptEntry VeilstoneStore2F_Directory
    ScriptEntryEnd

VeilstoneStore2F_Attendant:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckIsDepartmentStoreRegular VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, VeilstoneStore2F_AttendantPersonalized
    Message VeilstoneStore2F_Text_MayIHelpYou
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm MenuEntries_Text_WhatIsRecommended, 1
    AddMenuEntryImm MenuEntries_Text_NothingThanks, 0
    ShowMenu
    GoToIfEq VAR_RESULT, 1, VeilstoneStore2F_AttendantProtein
    GoTo VeilstoneStore2F_AttendantPleaseEnjoyYourself

VeilstoneStore2F_AttendantPersonalized:
    BufferPlayerName 0
    Message VeilstoneStore2F_Text_MayIHelpYouPersonalized
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm MenuEntries_Text_WhatIsRecommended, 0
    AddMenuEntryImm MenuEntries_Text_NothingThanks, 1
    ShowMenu
    GoToIfNe VAR_RESULT, 0, VeilstoneStore2F_AttendantPleaseEnjoyYourself
    GetRandom VAR_RESULT, 4
    GoToIfEq VAR_RESULT, 0, VeilstoneStore2F_AttendantProtein
    GoToIfEq VAR_RESULT, 1, VeilstoneStore2F_AttendantCarbos
    GoToIfEq VAR_RESULT, 2, VeilstoneStore2F_AttendantDireHit
    GoTo VeilstoneStore2F_AttendantXAccuracy

VeilstoneStore2F_AttendantPleaseEnjoyYourself:
    Message VeilstoneStore2F_Text_PleaseEnjoyYourself
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore2F_AttendantProtein:
    Message VeilstoneStore2F_Text_CareForAProtein
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore2F_AttendantCarbos:
    Message VeilstoneStore2F_Text_SuggestACarbos
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore2F_AttendantDireHit:
    Message VeilstoneStore2F_Text_DireHitIsForYou
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore2F_AttendantXAccuracy:
    Message VeilstoneStore2F_Text_TreatItToXAccuracy
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore2F_Lady:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message VeilstoneStore2F_Text_MatchingDressesForMeAndMyPokemon
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore2F_BugCatcher1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message VeilstoneStore2F_Text_GivingHPUpToKricketot
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore2F_BugCatcher2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message VeilstoneStore2F_Text_GettingTheCarbos
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore2F_PoketchVendor:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckPoketchAppRegistered POKETCH_APPID_COUNTER, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, VeilstoneStore2F_PoketchVendorAfterAppGiven
    Message VeilstoneStore2F_Text_GivingCounterAppAsPromotion
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, VeilstoneStore2F_PoketchVendorDeclined
    Message VeilstoneStore2F_Text_HereYouGo
    SetVar VAR_0x8004, POKETCH_APPID_COUNTER
    Common_GivePoketchApp
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore2F_PoketchVendorAfterAppGiven:
    Message VeilstoneStore2F_Text_IHopeCounterAppIsUseful
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore2F_PoketchVendorDeclined:
    Message VeilstoneStore2F_Text_WaitingIfYouChangeYourMind
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore2F_Unused:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message VeilstoneStore2F_Text_GivingCounterAppAsPromotion
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore2F_TopVendor:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Common_VendorGreeting
    CloseMessageWithoutErasing
    PokeMartSpecialties MART_SPECIALTIES_ID_VEILSTONE_2F_UP
    ReleaseAll
    End

VeilstoneStore2F_MiddleVendor:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Common_VendorGreeting
    CloseMessageWithoutErasing
    PokeMartSpecialties MART_SPECIALTIES_ID_VEILSTONE_2F_MID
    ReleaseAll
    End

VeilstoneStore2F_Directory:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message VeilstoneStore2F_Text_Directory
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
