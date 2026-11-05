#include "res/field/maps/scripts_common.h"
#include "macros/scrcmd.inc"
#include "res/text/bank/canalave_city_pokecenter_1f.h"
#include "res/field/maps/locals/canalave_city_pokecenter_1f.h"


    ScriptEntry CanalaveCityPokecenter1F_Nurse
    ScriptEntry CanalaveCityPokecenter1F_PokemonBreederF
    ScriptEntry CanalaveCityPokecenter1F_Lass
    ScriptEntry CanalaveCityPokecenter1F_ScientistM
    ScriptEntry CanalaveCityPokecenter1F_BugCatcher
    ScriptEntryEnd

CanalaveCityPokecenter1F_Nurse:
    SetVar VAR_0x8007, LOCALID_CANALAVE_NURSE
    CallCommonScript CommonScript_PokecenterNurse
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
