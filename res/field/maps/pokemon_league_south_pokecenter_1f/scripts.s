#include "macros/scrcmd.inc"
#include "res/text/bank/pokemon_league_south_pokecenter_1f.h"
#include "res/field/events/events_pokemon_league_south_pokecenter_1f.h"


    ScriptEntry PokemonLeagueSouthPokecenter1F_Nurse
    ScriptEntry PokemonLeagueSouthPokecenter1F_VendorCommon_Unused
    ScriptEntry PokemonLeagueSouthPokecenter1F_VendorSpecial_Unused
    ScriptEntry PokemonLeagueSouthPokecenter1F_OnTransition
    ScriptEntry PokemonLeagueSouthPokecenter1F_Pokefan
    ScriptEntry PokemonLeagueSouthPokecenter1F_AceTrainer
    ScriptEntryEnd

PokemonLeagueSouthPokecenter1F_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_OUTSIDE_VICTORY_ROAD
    End

PokemonLeagueSouthPokecenter1F_Nurse:
    Common_CallPokecenterNurse LOCALID_LEAGUE_SOUTH_NURSE
    End

PokemonLeagueSouthPokecenter1F_VendorCommon_Unused:
    PokeMartCommonWithGreeting
    End

PokemonLeagueSouthPokecenter1F_VendorSpecial_Unused:
    PokeMartSpecialtiesWithGreeting MART_SPECIALTIES_ID_POKEMON_LEAGUE
    End

PokemonLeagueSouthPokecenter1F_Pokefan:
    NPCMessage PokemonLeagueSouthPokecenter1F_Text_ReachThePokemonLeague
    End

PokemonLeagueSouthPokecenter1F_AceTrainer:
    NPCMessage PokemonLeagueSouthPokecenter1F_Text_VictoryRoadConfusesMe
    End

    .balign 4, 0
