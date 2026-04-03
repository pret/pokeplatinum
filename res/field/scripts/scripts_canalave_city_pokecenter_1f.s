#include "macros/scrcmd.inc"
#include "res/text/bank/canalave_city_pokecenter_1f.h"
#include "res/field/events/events_canalave_city_pokecenter_1f.h"


    ScriptEntry CanalaveCityPokecenter1F_Nurse
    ScriptEntry CanalaveCityPokecenter1F_PokemonBreederF
    ScriptEntry CanalaveCityPokecenter1F_Lass
    ScriptEntry CanalaveCityPokecenter1F_ScientistM
    ScriptEntry CanalaveCityPokecenter1F_BugCatcher
    ScriptEntryEnd

CanalaveCityPokecenter1F_Nurse:
    Common_CallPokecenterNurse LOCALID_POKECENTER_NURSE
    End

CanalaveCityPokecenter1F_PokemonBreederF:
    NPCMessage CanalaveCityPokecenter1F_Text_BoatToIronIsland
    End

CanalaveCityPokecenter1F_Lass:
    NPCMessage CanalaveCityPokecenter1F_Text_StrengthHMIronIsland
    End

CanalaveCityPokecenter1F_ScientistM:
    NPCMessage CanalaveCityPokecenter1F_Text_DifferentAbilities
    End

CanalaveCityPokecenter1F_BugCatcher:
    NPCMessage CanalaveCityPokecenter1F_Text_CoolRumor
    End

    .balign 4, 0
