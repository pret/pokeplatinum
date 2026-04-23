#include "macros/scrcmd.inc"
#include "res/text/bank/fight_area_pokecenter_1f.h"
#include "res/field/events/events_fight_area_pokecenter_1f.h"


    ScriptEntry FightAreaPokecenter1F_Nurse
    ScriptEntry FightAreaPokecenter1F_Guitarist
    ScriptEntry FightAreaPokecenter1F_Waitress
    ScriptEntry FightAreaPokecenter1F_BlackBelt
    ScriptEntryEnd

FightAreaPokecenter1F_Nurse:
    Common_CallPokecenterNurse LOCALID_POKECENTER_NURSE
    End

FightAreaPokecenter1F_Guitarist:
    NPCMessage FightAreaPokecenter1F_Text_BattleFrontiersTough
    End

FightAreaPokecenter1F_Waitress:
    NPCMessage FightAreaPokecenter1F_Text_BestTrainersAtBattleZone
    End

FightAreaPokecenter1F_BlackBelt:
    NPCMessage FightAreaPokecenter1F_Text_ToToughenMyself
    End

    .balign 4, 0
