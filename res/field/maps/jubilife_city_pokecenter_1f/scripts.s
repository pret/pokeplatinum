#include "res/field/maps/scripts_common.h"
#include "macros/scrcmd.inc"
#include "res/text/bank/jubilife_city_pokecenter_1f.h"
#include "res/field/maps/locals/jubilife_city_pokecenter_1f.h"


    ScriptEntry JubilifeCityPokecenter1F_Nurse
    ScriptEntry JubilifeCityPokecenter1F_Twin
    ScriptEntry JubilifeCityPokecenter1F_SchoolKidM
    ScriptEntry JubilifeCityPokecenter1F_TrainerF
    ScriptEntryEnd

JubilifeCityPokecenter1F_Nurse:
    SetVar VAR_0x8007, LOCALID_JUBILIFE_NURSE
    CallCommonScript CommonScript_PokecenterNurse
    End

JubilifeCityPokecenter1F_Twin:
    NPCMessage JubilifeCityPokecenter1F_Text_StrengthsAndWeaknesses
    End

JubilifeCityPokecenter1F_SchoolKidM:
    NPCMessage JubilifeCityPokecenter1F_Text_ChatAndTradeInUnionRoom
    End

JubilifeCityPokecenter1F_TrainerF:
    NPCMessage JubilifeCityPokecenter1F_Text_CanStillCatchWithSixPokemon
    End

    .balign 4, 0
