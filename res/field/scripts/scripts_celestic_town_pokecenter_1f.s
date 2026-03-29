#include "macros/scrcmd.inc"
#include "res/text/bank/celestic_town_pokecenter_1f.h"
#include "res/field/events/events_celestic_town_pokecenter_1f.h"


    ScriptEntry CelesticTownPokecenter1F_Nurse
    ScriptEntry CelesticTownPokecenter1F_ExpertF
    ScriptEntry CelesticTownPokecenter1F_Twin
    ScriptEntry CelesticTownPokecenter1F_PokefanM
    ScriptEntryEnd

CelesticTownPokecenter1F_Nurse:
    Common_CallPokecenterNurse LOCALID_POKECENTER_NURSE
    End

CelesticTownPokecenter1F_ExpertF:
    NPCMessage CelesticTownPokecenter1F_Text_SeeCavePainting
    End

CelesticTownPokecenter1F_Twin:
    NPCMessage CelesticTownPokecenter1F_Text_TownSinceSinnoh
    End

CelesticTownPokecenter1F_PokefanM:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_CELESTIC_TOWN_POKECENTER_1F_GREAT_BALL, CelesticTownPokecenter1F_ItsAboutTrust
    Message CelesticTownPokecenter1F_Text_InterestingPokemon
    GetFirstNonEggInParty VAR_0x8000
    GetPartyMonFriendship VAR_RESULT, VAR_0x8000
    GoToIfGe VAR_RESULT, 150, CelesticTownPokecenter1F_GiveGreatBall
    GoToIfGe VAR_RESULT, 50, CelesticTownPokecenter1F_ItsWarmingUp
    GoTo CelesticTownPokecenter1F_ItsNotUsedToYou

CelesticTownPokecenter1F_GiveGreatBall:
    Message CelesticTownPokecenter1F_Text_YouCanHaveThis
    SetVar VAR_0x8004, ITEM_GREAT_BALL
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, CelesticTownPokecenter1F_BagIsFull
    Common_GiveItemQuantity
    SetFlag FLAG_RECEIVED_CELESTIC_TOWN_POKECENTER_1F_GREAT_BALL
    GoTo CelesticTownPokecenter1F_ItsAboutTrust

CelesticTownPokecenter1F_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

CelesticTownPokecenter1F_ItsAboutTrust:
    Message CelesticTownPokecenter1F_Text_ItsAboutTrust
    WaitButton
    CloseMessage
    ReleaseAll
    End

CelesticTownPokecenter1F_ItsWarmingUp:
    Message CelesticTownPokecenter1F_Text_ItsWarmingUp
    WaitButton
    CloseMessage
    ReleaseAll
    End

CelesticTownPokecenter1F_ItsNotUsedToYou:
    Message CelesticTownPokecenter1F_Text_ItsNotUsedToYou
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
