#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_store_3f.h"
#include "res/text/bank/menu_entries.h"


    ScriptEntry VeilstoneStore3F_Receptionist
    ScriptEntry VeilstoneStore3F_Twin
    ScriptEntry VeilstoneStore3F_Guitarist
    ScriptEntry VeilstoneStore3F_Breeder
    ScriptEntry VeilstoneStore3F_TopVendor
    ScriptEntry VeilstoneStore3F_BottomVendor
    ScriptEntry VeilstoneStore3F_Directory
    ScriptEntryEnd

VeilstoneStore3F_Receptionist:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckIsDepartmentStoreRegular VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, VeilstoneStore3F_ReceptionistPersonalized
    Message VeilstoneStore3F_Text_MayIHelpYou
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm MenuEntries_Text_WhatIsRecommended, 1
    AddMenuEntryImm MenuEntries_Text_NothingThanks, 0
    ShowMenu
    GoToIfEq VAR_RESULT, 1, VeilstoneStore3F_ReceptionistFalseSwipe
    GoTo VeilstoneStore3F_ReceptionistPleaseEnjoyYourself

VeilstoneStore3F_ReceptionistPersonalized:
    BufferPlayerName 0
    Message VeilstoneStore3F_Text_MayIHelpYouPersonalized
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm MenuEntries_Text_WhatIsRecommended, 0
    AddMenuEntryImm MenuEntries_Text_NothingThanks, 1
    ShowMenu
    GoToIfNe VAR_RESULT, 0, VeilstoneStore3F_ReceptionistPleaseEnjoyYourself
    GetRandom2 VAR_RESULT, 4
    GoToIfEq VAR_RESULT, 0, VeilstoneStore3F_ReceptionistFalseSwipe
    GoToIfEq VAR_RESULT, 1, VeilstoneStore3F_ReceptionistFireBlast
    GoToIfEq VAR_RESULT, 2, VeilstoneStore3F_ReceptionistProtect
    GoTo VeilstoneStore3F_ReceptionistThunder

VeilstoneStore3F_ReceptionistPleaseEnjoyYourself:
    Message VeilstoneStore3F_Text_PleaseEnjoyYourself
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore3F_ReceptionistFalseSwipe:
    Message VeilstoneStore3F_Text_FalseSwipeMakesPokemonEasierToCatch
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore3F_ReceptionistFireBlast:
    Message VeilstoneStore3F_Text_ForFireTypesSuggestFireBlast
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore3F_ReceptionistProtect:
    Message VeilstoneStore3F_Text_ProtectIsForDodgingAttacks
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore3F_ReceptionistThunder:
    Message VeilstoneStore3F_Text_ThunderIsPreciseInRain
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore3F_Twin:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message VeilstoneStore3F_Text_FriendTradedMeMachoke
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore3F_Guitarist:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message VeilstoneStore3F_Text_WroteSecretsInMyMail
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore3F_Breeder:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message VeilstoneStore3F_Text_WouldLoveToBuyAllTheMerchandise
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore3F_TopVendor:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    VendorGreeting
    CloseMessageWithoutErasing
    PokeMartSpecialties MART_SPECIALTIES_ID_VEILSTONE_3F_UP
    ReleaseAll
    End

VeilstoneStore3F_BottomVendor:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    VendorGreeting
    CloseMessageWithoutErasing
    PokeMartSpecialties MART_SPECIALTIES_ID_VEILSTONE_3F_DOWN
    ReleaseAll
    End

VeilstoneStore3F_Directory:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message VeilstoneStore3F_Text_Directory
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
