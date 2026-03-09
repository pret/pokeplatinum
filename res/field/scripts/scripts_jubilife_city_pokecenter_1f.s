#include "macros/scrcmd.inc"
#include "res/text/bank/jubilife_city_pokecenter_1f.h"
#include "res/field/events/events_jubilife_city_pokecenter_1f.h"


    ScriptEntry JubilifeCityPokecenter1F_Nurse
    ScriptEntry JubilifeCityPokecenter1F_Twin
    ScriptEntry JubilifeCityPokecenter1F_SchoolKidM
    ScriptEntry JubilifeCityPokecenter1F_TrainerF
    ScriptEntryEnd

JubilifeCityPokecenter1F_Nurse:
    Common_CallPokecenterNurse LOCALID_POKECENTER_NURSE
    End

JubilifeCityPokecenter1F_Twin:
    NPCMessage JubilifeCityPokecenter1F_Text_AllTypesHaveStrengthsAndWeaknesses
    End

JubilifeCityPokecenter1F_SchoolKidM:
    NPCMessage JubilifeCityPokecenter1F_Text_InTheUnionRoomUpstairsYouCanChatAndTradeWithOtherPeople
    End

JubilifeCityPokecenter1F_TrainerF:
    NPCMessage JubilifeCityPokecenter1F_Text_YouCanStillCatchAPokemonIfYouAlreadyHaveSixTravelingWithYou
    End

    .balign 4, 0
