#include "macros/scrcmd.inc"
#include "res/text/bank/pastoria_city_pokecenter_1f.h"
#include "res/field/maps/locals/pastoria_city_pokecenter_1f.h"


    ScriptEntry PastoriaCityPokecenter1F_Nurse
    ScriptEntry PastoriaCityPokecenter1F_BlackBelt
    ScriptEntry PastoriaCityPokecenter1F_SchoolKidF
    ScriptEntryEnd

PastoriaCityPokecenter1F_Nurse:
    SetVar VAR_0x8007, LOCALID_PASTORIA_NURSE
    CallCommonScript CommonScript_PokecenterNurse
    End

PastoriaCityPokecenter1F_BlackBelt:
    NPCMessage PastoriaCityPokecenter1F_Text_GreatMarshIsVast
    End

PastoriaCityPokecenter1F_SchoolKidF:
    NPCMessage PastoriaCityPokecenter1F_Text_GreatMarshWasSea
    End
