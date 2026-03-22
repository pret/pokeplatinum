#include "macros/scrcmd.inc"
#include "res/text/bank/jubilife_city_condominiums_1f.h"


    ScriptEntry JubilifeCityCondominiums1F_ExpertF
    ScriptEntry JubilifeCityCondominiums1F_Pikachu
    ScriptEntry JubilifeCityCondominiums1F_Pachirisu
    ScriptEntry JubilifeCityCondominiums1F_Beauty
    ScriptEntryEnd

JubilifeCityCondominiums1F_ExpertF:
    NPCMessage JubilifeCityCondominiums1F_Text_IsntMyPoketchQuiteFetching
    End

JubilifeCityCondominiums1F_Pikachu:
    PokemonCryAndMessage SPECIES_PIKACHU, JubilifeCityCondominiums1F_Text_PiikaPi
    End

JubilifeCityCondominiums1F_Pachirisu:
    PokemonCryAndMessage SPECIES_PACHIRISU, JubilifeCityCondominiums1F_Text_Pachipachii
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
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
