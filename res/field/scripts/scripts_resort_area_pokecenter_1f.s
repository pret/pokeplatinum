#include "macros/scrcmd.inc"
#include "res/text/bank/resort_area_pokecenter_1f.h"
#include "res/field/events/events_resort_area_pokecenter_1f.h"


    ScriptEntry ResortAreaPokecenter1F_Nurse
    ScriptEntry ResortAreaPokecenter1F_RichBoy
    ScriptEntry ResortAreaPokecenter1F_Idol
    ScriptEntryEnd

ResortAreaPokecenter1F_Nurse:
    Common_CallPokecenterNurse LOCALID_POKECENTER_NURSE
    End

ResortAreaPokecenter1F_RichBoy:
    NPCMessage ResortAreaPokecenter1F_Text_DoAHeadstand
    End

ResortAreaPokecenter1F_Idol:
    NPCMessage ResortAreaPokecenter1F_Text_EveryoneKnowsPokemon
    End
