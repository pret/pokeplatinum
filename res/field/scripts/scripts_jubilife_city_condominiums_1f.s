#include "macros/scrcmd.inc"
#include "res/text/bank/jubilife_city_condominiums_1f.h"


    ScriptEntry JubilifeCityCondominiums1F_ExpertF
    ScriptEntry JubilifeCityCondominiums1F_Pikachu
    ScriptEntry JubilifeCityCondominiums1F_Pachirisu
    ScriptEntry JubilifeCityCondominiums1F_Beauty
    ScriptEntryEnd

JubilifeCityCondominiums1F_ExpertF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeCityCondominiums1F_Text_IsntMyPoketchQuiteFetching
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCityCondominiums1F_Pikachu:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_PIKACHU
    Message JubilifeCityCondominiums1F_Text_PiikaPi
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCityCondominiums1F_Pachirisu:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_PACHIRISU
    Message JubilifeCityCondominiums1F_Text_Pachipachii
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCityCondominiums1F_Beauty:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_OBTAINED_QUICK_CLAW, JubilifeCityCondominiums1F_ObtainedQuickClaw
    BufferItemName 0, ITEM_QUICK_CLAW
    Message JubilifeCityCondominiums1F_Text_YourPokemonIsQuiteAdorableTryMakingItHoldThis
    SetVar VAR_0x8004, ITEM_QUICK_CLAW
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, JubilifeCityCondominiums1F_BagIsFull
    SetFlag FLAG_OBTAINED_QUICK_CLAW
    Common_GiveItemQuantityNoLineFeed
    CloseMessage
    ReleaseAll
    End

JubilifeCityCondominiums1F_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

JubilifeCityCondominiums1F_ObtainedQuickClaw:
    Message JubilifeCityCondominiums1F_Text_APokemonHoldingThatQuickClawCanSometimesAttackFirst
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
