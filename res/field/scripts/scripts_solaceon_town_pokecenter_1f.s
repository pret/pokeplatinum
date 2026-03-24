#include "macros/scrcmd.inc"
#include "res/text/bank/solaceon_town_pokecenter_1f.h"
#include "res/field/events/events_solaceon_town_pokecenter_1f.h"


    ScriptEntry SolaceonTownPokecenter1F_Nurse
    ScriptEntry SolaceonTownPokecenter1F_OldMan
    ScriptEntry SolaceonTownPokecenter1F_Lass
    ScriptEntry SolaceonTownPokecenter1F_RuinManiac
    ScriptEntryEnd

SolaceonTownPokecenter1F_Nurse:
    Common_CallPokecenterNurse LOCALID_POKECENTER_NURSE
    End

SolaceonTownPokecenter1F_OldMan:
    NPCMessage SolaceonTownPokecenter1F_Text_PokemonGrowAtDifferentRates
    End

SolaceonTownPokecenter1F_Lass:
    NPCMessage SolaceonTownPokecenter1F_Text_ItsQuiteFarToVeilstoneCity
    End

SolaceonTownPokecenter1F_RuinManiac:
    NPCMessage SolaceonTownPokecenter1F_Text_HMDefogIsInTheRuins
    End

    .balign 4, 0
