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
    Common_CallPokecenterNurse LOCALID_ETERNA_NURSE
    End

EternaCityPokecenter1F_BattleGirl:
    NPCMessage EternaCityPokecenter1F_Text_FaintMeansNoPowerToBattle
    End

EternaCityPokecenter1F_SchoolKidM:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_TEAM_GALACTIC_LEFT_ETERNA_BUILDING, EternaCityPokecenter1F_IGotMyPokemonBack
    Message EternaCityPokecenter1F_Text_TeamGalacticTookMyPokemon
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityPokecenter1F_IGotMyPokemonBack:
    Message EternaCityPokecenter1F_Text_IGotMyPokemonBack
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityPokecenter1F_Buneary:
    PokemonCryAndMessage SPECIES_BUNEARY, EternaCityPokecenter1F_Text_BunearyBunbun
    End

EternaCityPokecenter1F_PokemonBreederF:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfEq VAR_MAP_LOCAL_2, 1, EternaCityPokecenter1F_PokemonWillOpenUp
    CheckPoketchAppRegistered POKETCH_APPID_FRIENDSHIPCHECKER, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, EternaCityPokecenter1F_GivePoketchAppFriendshipChecker
    GetFirstNonEggInParty VAR_0x8000
    BufferPartyMonSpecies 0, VAR_0x8000
    Message EternaCityPokecenter1F_Text_OhYourPokemon
    GetPartyMonFriendship VAR_RESULT, VAR_0x8000
    GoToIfGe VAR_RESULT, 120, EternaCityPokecenter1F_ItSeemsToLikeYou
    GoToIfGe VAR_RESULT, 70, EternaCityPokecenter1F_ItsBecomingComfortable
    GoTo EternaCityPokecenter1F_NeedsToGetUsedToYou
    End

EternaCityPokecenter1F_GivePoketchAppFriendshipChecker:
    Message EternaCityPokecenter1F_Text_ShowHowClosePokemonFeel
    SetVar VAR_MAP_LOCAL_2, 1
    SetVar VAR_0x8004, POKETCH_APPID_FRIENDSHIPCHECKER
    Common_GivePoketchApp
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityPokecenter1F_PokemonWillOpenUp:
    Message EternaCityPokecenter1F_Text_PokemonWillOpenUp
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityPokecenter1F_ItSeemsToLikeYou:
    Message EternaCityPokecenter1F_Text_ItSeemsToLikeYou
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityPokecenter1F_ItsBecomingComfortable:
    Message EternaCityPokecenter1F_Text_ItsBecomingComfortable
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityPokecenter1F_NeedsToGetUsedToYou:
    Message EternaCityPokecenter1F_Text_NeedsToGetUsedToYou
    WaitButton
    CloseMessage
    ReleaseAll
    End
