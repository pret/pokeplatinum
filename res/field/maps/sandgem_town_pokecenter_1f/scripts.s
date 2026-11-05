#include "res/field/maps/scripts_common.h"
#include "macros/scrcmd.inc"
#include "res/text/bank/sandgem_town_pokecenter_1f.h"
#include "res/field/maps/locals/sandgem_town_pokecenter_1f.h"


    ScriptEntry SandgemTownPokecenter1F_Nurse
    ScriptEntry SandgemTownPokecenter1F_BreederM
    ScriptEntry SandgemTownPokecenter1F_ExpertM
    ScriptEntry SandgemTownPokecenter1F_Lass
    ScriptEntryEnd

SandgemTownPokecenter1F_Nurse:
    SetVar VAR_0x8007, LOCALID_SANDGEM_NURSE
    CallCommonScript CommonScript_PokecenterNurse
    End

SandgemTownPokecenter1F_BreederM:
    NPCMessage SandgemTownPokecenter1F_Text_LadyAtCounterHealsPokemon
    End

SandgemTownPokecenter1F_ExpertM:
    NPCMessage SandgemTownPokecenter1F_Text_PCOverThere
    End

SandgemTownPokecenter1F_Lass:
    NPCMessage SandgemTownPokecenter1F_Text_TopFloorIsCommunicationClub
    End

    .balign 4, 0
