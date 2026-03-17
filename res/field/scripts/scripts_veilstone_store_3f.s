#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_store_3f.h"
#include "res/text/bank/menu_entries.h"


    ScriptEntry VeilstoneStore3F_Attendant
    ScriptEntry VeilstoneStore3F_Twin
    ScriptEntry VeilstoneStore3F_Guitarist
    ScriptEntry VeilstoneStore3F_Breeder
    ScriptEntry VeilstoneStore3F_TopVendor
    ScriptEntry VeilstoneStore3F_BottomVendor
    ScriptEntry VeilstoneStore3F_Directory
    ScriptEntryEnd

VeilstoneStore3F_Attendant:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckIsDepartmentStoreRegular VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, VeilstoneStore3F_AttendantPersonalized
    Message VeilstoneStore3F_Text_MayIHelpYou
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm MenuEntries_Text_WhatIsRecommended, 1
    AddMenuEntryImm MenuEntries_Text_NothingThanks, 0
    ShowMenu
    GoToIfEq VAR_RESULT, 1, VeilstoneStore3F_AttendantFalseSwipe
    GoTo VeilstoneStore3F_AttendantPleaseEnjoyYourself

VeilstoneStore3F_AttendantPersonalized:
    BufferPlayerName 0
    Message VeilstoneStore3F_Text_MayIHelpYouPersonalized
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm MenuEntries_Text_WhatIsRecommended, 0
    AddMenuEntryImm MenuEntries_Text_NothingThanks, 1
    ShowMenu
    GoToIfNe VAR_RESULT, 0, VeilstoneStore3F_AttendantPleaseEnjoyYourself
    GetRandom2 VAR_RESULT, 4
    GoToIfEq VAR_RESULT, 0, VeilstoneStore3F_AttendantFalseSwipe
    GoToIfEq VAR_RESULT, 1, VeilstoneStore3F_AttendantFireBlast
    GoToIfEq VAR_RESULT, 2, VeilstoneStore3F_AttendantProtect
    GoTo VeilstoneStore3F_AttendantThunder

VeilstoneStore3F_AttendantPleaseEnjoyYourself:
    Message VeilstoneStore3F_Text_PleaseEnjoyYourself
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore3F_AttendantFalseSwipe:
    Message VeilstoneStore3F_Text_FalseSwipeMakesPokemonEasierToCatch
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore3F_AttendantFireBlast:
    Message VeilstoneStore3F_Text_ForFireTypesSuggestFireBlast
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore3F_AttendantProtect:
    Message VeilstoneStore3F_Text_ProtectIsForDodgingAttacks
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore3F_AttendantThunder:
    Message VeilstoneStore3F_Text_ThunderIsPreciseInRain
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore3F_Twin:
    NPCMessage VeilstoneStore3F_Text_FriendTradedMeMachoke
    End

VeilstoneStore3F_Guitarist:
    NPCMessage VeilstoneStore3F_Text_WroteSecretsInMyMail
    End

VeilstoneStore3F_Breeder:
    NPCMessage VeilstoneStore3F_Text_WouldLoveToBuyAllTheMerchandise
    End

VeilstoneStore3F_TopVendor:
    PokeMartSpecialtiesWithGreeting MART_SPECIALTIES_ID_VEILSTONE_3F_UP
    End

VeilstoneStore3F_BottomVendor:
    PokeMartSpecialtiesWithGreeting MART_SPECIALTIES_ID_VEILSTONE_3F_DOWN
    End

VeilstoneStore3F_Directory:
    EventMessage VeilstoneStore3F_Text_Directory
    End
