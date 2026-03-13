#include "macros/scrcmd.inc"
#include "res/text/bank/eterna_city_pokecenter_1f.h"
#include "res/field/events/events_eterna_city_pokecenter_1f.h"


    ScriptEntry EternaCityPokecenter1F_Nurse
    ScriptEntry EternaCityPokecenter1F_BattleGirl
    ScriptEntry EternaCityPokecenter1F_SchoolKidM
    ScriptEntry EternaCityPokecenter1F_Buneary
    ScriptEntry EternaCityPokecenter1F_PokemonBreederF
    ScriptEntryEnd

EternaCityPokecenter1F_Nurse:
    Common_CallPokecenterNurse LOCALID_POKECENTER_NURSE
    End

EternaCityPokecenter1F_BattleGirl:
    NPCMessage EternaCityPokecenter1F_Text_WhenAPokemonFaintsItJustMeansItDoesntHaveThePowerToBattle
    End

EternaCityPokecenter1F_SchoolKidM:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_TEAM_GALACTIC_LEFT_ETERNA_BUILDING, EternaCityPokecenter1F_IGotMyPokemonBack
    Message EternaCityPokecenter1F_Text_TeamGalacticTookMyPokemonAway
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

EternaCityPokecenter1F_IGotMyPokemonBack:
    Message EternaCityPokecenter1F_Text_IGotMyPokemonBack
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

EternaCityPokecenter1F_Buneary:
    PokemonCryAndMessage SPECIES_BUNEARY, EternaCityPokecenter1F_Text_BunearyBunbun
    End

EternaCityPokecenter1F_PokemonBreederF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfEq VAR_MAP_LOCAL_2, 1, EternaCityPokecenter1F_IfYouSpendEnoughTimeWithThemAllPokemonWillOpenUpToYou
    CheckPoketchAppRegistered POKETCH_APPID_FRIENDSHIPCHECKER, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, EternaCityPokecenter1F_GivePoketchAppFriendshipChecker
    GetFirstNonEggInParty VAR_0x8000
    BufferPartyMonSpecies 0, VAR_0x8000
    Message EternaCityPokecenter1F_Text_WhatKindsOfPokemonAreWithYouOhYourPokemon
    GetPartyMonFriendship VAR_RESULT, VAR_0x8000
    GoToIfGe VAR_RESULT, 120, EternaCityPokecenter1F_ItSeemsToLikeYou
    GoToIfGe VAR_RESULT, 70, EternaCityPokecenter1F_ItsBecomingComfortableAroundYouIThink
    GoTo EternaCityPokecenter1F_HmmItNeedsToGetUsedToYouMore
    End

EternaCityPokecenter1F_GivePoketchAppFriendshipChecker:
    Message EternaCityPokecenter1F_Text_ThisPoketchAppWillShowHowCloseYourPokemonFeelToYou
    SetVar VAR_MAP_LOCAL_2, 1
    SetVar VAR_0x8004, POKETCH_APPID_FRIENDSHIPCHECKER
    Common_GivePoketchApp
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

EternaCityPokecenter1F_IfYouSpendEnoughTimeWithThemAllPokemonWillOpenUpToYou:
    Message EternaCityPokecenter1F_Text_IfYouSpendEnoughTimeWithThemAllPokemonWillOpenUpToYou
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

EternaCityPokecenter1F_ItSeemsToLikeYou:
    Message EternaCityPokecenter1F_Text_ItSeemsToLikeYou
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

EternaCityPokecenter1F_ItsBecomingComfortableAroundYouIThink:
    Message EternaCityPokecenter1F_Text_ItsBecomingComfortableAroundYouIThink
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

EternaCityPokecenter1F_HmmItNeedsToGetUsedToYouMore:
    Message EternaCityPokecenter1F_Text_HmmItNeedsToGetUsedToYouMore
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
