#include "macros/scrcmd.inc"
#include "res/text/bank/sandgem_town_pokecenter_1f.h"
#include "res/field/events/events_sandgem_town_pokecenter_1f.h"


    ScriptEntry SandgemTownPokecenter1F_PokecenterNurse
    ScriptEntry SandgemTownPokecenter1F_BreederM
    ScriptEntry SandgemTownPokecenter1F_ExpertM
    ScriptEntry SandgemTownPokecenter1F_Lass
    ScriptEntryEnd

SandgemTownPokecenter1F_PokecenterNurse:
    Common_CallPokecenterNurse LOCALID_POKECENTER_NURSE
    End

SandgemTownPokecenter1F_BreederM:
    NPCMessage SandgemTownPokecenter1F_Text_ThatLadyAtTheCounterWillHealYourPokemon
    End

SandgemTownPokecenter1F_ExpertM:
    NPCMessage SandgemTownPokecenter1F_Text_DoYouSeeThatPCOverThere
    End

SandgemTownPokecenter1F_Lass:
    NPCMessage SandgemTownPokecenter1F_Text_TheTopFloorIsTheCommunicationClub
    End

    .balign 4, 0
