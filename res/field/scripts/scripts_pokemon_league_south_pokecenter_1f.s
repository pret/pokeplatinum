#include "macros/scrcmd.inc"
#include "res/text/bank/pokemon_league_south_pokecenter_1f.h"


    ScriptEntry PokemonLeagueSouthPokecenter1F_Nurse
    ScriptEntry PokemonLeagueSouthPokecenter1F_UnusedVendor2
    ScriptEntry PokemonLeagueSouthPokecenter1F_UnusedVendor3
    ScriptEntry PokemonLeagueSouthPokecenter1F_OnTransition
    ScriptEntry PokemonLeagueSouthPokecenter1F_Pokefan
    ScriptEntry PokemonLeagueSouthPokecenter1F_AceTrainer
    ScriptEntryEnd

PokemonLeagueSouthPokecenter1F_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_OUTSIDE_VICTORY_ROAD
    End

PokemonLeagueSouthPokecenter1F_Nurse:
    Common_CallPokecenterNurse 0
    End

PokemonLeagueSouthPokecenter1F_UnusedVendor2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Common_VendorGreeting
    CloseMessageWithoutErasing
    PokeMartCommon
    ReleaseAll
    End

PokemonLeagueSouthPokecenter1F_UnusedVendor3:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Common_VendorGreeting
    CloseMessageWithoutErasing
    PokeMartSpecialties MART_SPECIALTIES_ID_POKEMON_LEAGUE
    ReleaseAll
    End

PokemonLeagueSouthPokecenter1F_Pokefan:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message PokemonLeagueSouthPokecenter1F_Text_TheObjectiveIsToReachThePokemonLeague
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PokemonLeagueSouthPokecenter1F_AceTrainer:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message PokemonLeagueSouthPokecenter1F_Text_VictoryRoadConfusesMe
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
