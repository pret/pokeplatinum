#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_store_1f.h"

#define LOCALID_ACCESSORY_ID VAR_0x8004
#define LOCALID_COUNT     VAR_0x8005

    ScriptEntry VeilstoneStore1F_Attendant
    ScriptEntry VeilstoneStore1F_MiddleAgedMan
    ScriptEntry VeilstoneStore1F_Lady
    ScriptEntry VeilstoneStore1F_RightVendor
    ScriptEntry VeilstoneStore1F_LeftVendor
    ScriptEntry VeilstoneStore1F_Sign
    ScriptEntry VeilstoneStore1F_Directory
    ScriptEntry VeilstoneStore1F_Socialite
    ScriptEntryEnd

VeilstoneStore1F_Attendant:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message VeilstoneStore1F_Text_Welcome
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore1F_MiddleAgedMan:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message VeilstoneStore1F_Text_EnsureCustomerSatisfaction
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore1F_Lady:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message VeilstoneStore1F_Text_FormalAirOfLuxury
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore1F_RightVendor:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    VendorGreeting
    CloseMessageWithoutErasing
    PokeMartSpecialties MART_SPECIALTIES_ID_VEILSTONE_1F_RIGHT
    ReleaseAll
    End

VeilstoneStore1F_LeftVendor:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    VendorGreeting
    CloseMessageWithoutErasing
    PokeMartSpecialties MART_SPECIALTIES_ID_VEILSTONE_1F_LEFT
    ReleaseAll
    End

VeilstoneStore1F_Sign:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message VeilstoneStore1F_Text_DiscoverANewYou
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore1F_Directory:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message VeilstoneStore1F_Text_Directory
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore1F_Socialite:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_VEILSTONE_STORE_1F_RECEIVED_MASK, VeilstoneStore1F_Socialite_AfterMaskGiven
    GetPlayerStarterSpecies VAR_RESULT
    CallIfEq VAR_RESULT, SPECIES_TURTWIG, VeilstoneStore1F_Socialite_Turtwig
    CallIfEq VAR_RESULT, SPECIES_CHIMCHAR, VeilstoneStore1F_Socialite_Chimchar
    CallIfEq VAR_RESULT, SPECIES_PIPLUP, VeilstoneStore1F_Socialite_Piplup
    SetVar VAR_VEILSTONE_STORE_MASK, LOCALID_ACCESSORY_ID
    BufferAccessoryNameWithArticle 0, LOCALID_ACCESSORY_ID
    Message VeilstoneStore1F_Text_IMadeAnAccessory
    SetVar LOCALID_COUNT, 1
    GiveAccessoryWaitForConfirm
    SetFlag FLAG_VEILSTONE_STORE_1F_RECEIVED_MASK
    CloseMessage
    ReleaseAll
    End

VeilstoneStore1F_Socialite_AfterMaskGiven:
    BufferAccessoryName 0, VAR_VEILSTONE_STORE_MASK
    Message VeilstoneStore1F_Text_GiveADifferentLookForContests
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStore1F_Socialite_Turtwig:
    SetVar LOCALID_ACCESSORY_ID, ACCESSORY_PIPLUP_MASK
    Return

VeilstoneStore1F_Socialite_Chimchar:
    SetVar LOCALID_ACCESSORY_ID, ACCESSORY_TURTWIG_MASK
    Return

VeilstoneStore1F_Socialite_Piplup:
    SetVar LOCALID_ACCESSORY_ID, ACCESSORY_CHIMCHAR_MASK
    Return

    .balign 4, 0
