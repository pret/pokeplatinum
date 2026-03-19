#include "macros/scrcmd.inc"
#include "res/text/bank/hearthome_city_pokecenter_1f.h"
#include "res/field/events/events_hearthome_city_pokecenter_1f.h"


    ScriptEntry HearthomeCityPokecenter1F_Nurse
    ScriptEntry HearthomeCityPokecenter1F_Youngster
    ScriptEntry HearthomeCityPokecenter1F_Socialite
    ScriptEntry HearthomeCityPokecenter1F_Guitarist
    ScriptEntryEnd

HearthomeCityPokecenter1F_Nurse:
    Common_CallPokecenterNurse LOCALID_POKECENTER_NURSE
    End

HearthomeCityPokecenter1F_Youngster:
    NPCMessage HearthomeCityPokecenter1F_Text_HaveYouCheckedTheGlobalTerminal
    End

HearthomeCityPokecenter1F_Socialite:
    NPCMessage HearthomeCityPokecenter1F_Text_DoYouHaveAPoffinCase
    End

HearthomeCityPokecenter1F_Guitarist:
    NPCMessage HearthomeCityPokecenter1F_Text_FantinaLikesContestsToo
    End

    .balign 4, 0
