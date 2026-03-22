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
    WaitButton
    CloseMessage
    ReleaseAll
    End

VeilstoneStore2F_AttendantProtein:
    Message VeilstoneStore2F_Text_CareForAProtein
    WaitButton
    CloseMessage
    ReleaseAll
    End

VeilstoneStore2F_AttendantCarbos:
    Message VeilstoneStore2F_Text_SuggestACarbos
    WaitButton
    CloseMessage
    ReleaseAll
    End

VeilstoneStore2F_AttendantDireHit:
    Message VeilstoneStore2F_Text_DireHitIsForYou
    WaitButton
    CloseMessage
    ReleaseAll
    End

VeilstoneStore2F_AttendantXAccuracy:
    Message VeilstoneStore2F_Text_TreatItToXAccuracy
    WaitButton
    CloseMessage
    ReleaseAll
    End

VeilstoneStore2F_Lady:
    NPCMessage VeilstoneStore2F_Text_MatchingDressesForMeAndMyPokemon
    End

VeilstoneStore2F_BugCatcher1:
    NPCMessage VeilstoneStore2F_Text_GivingHPUpToKricketot
    End

VeilstoneStore2F_BugCatcher2:
    NPCMessage VeilstoneStore2F_Text_GettingTheCarbos
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
    WaitButton
    CloseMessage
    ReleaseAll
    End

VeilstoneStore2F_PoketchVendorAfterAppGiven:
    Message VeilstoneStore2F_Text_IHopeCounterAppIsUseful
    WaitButton
    CloseMessage
    ReleaseAll
    End

VeilstoneStore2F_PoketchVendorDeclined:
    Message VeilstoneStore2F_Text_WaitingIfYouChangeYourMind
    WaitButton
    CloseMessage
    ReleaseAll
    End

VeilstoneStore2F_Unused:
    NPCMessage VeilstoneStore2F_Text_GivingCounterAppAsPromotion
    End

VeilstoneStore2F_TopVendor:
    PokeMartSpecialtiesWithGreeting MART_SPECIALTIES_ID_VEILSTONE_2F_UP
    End

VeilstoneStore2F_MiddleVendor:
    PokeMartSpecialtiesWithGreeting MART_SPECIALTIES_ID_VEILSTONE_2F_MID
    End

VeilstoneStore2F_Directory:
    EventMessage VeilstoneStore2F_Text_Directory
    End

    .balign 4, 0
