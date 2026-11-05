#include "res/field/maps/scripts_common.h"
#include "macros/scrcmd.inc"
#include "res/text/bank/fight_area_pokecenter_1f.h"
#include "res/field/maps/locals/fight_area_pokecenter_1f.h"


    ScriptEntry FightAreaPokecenter1F_Nurse
    ScriptEntry FightAreaPokecenter1F_Guitarist
    ScriptEntry FightAreaPokecenter1F_Waitress
    ScriptEntry FightAreaPokecenter1F_BlackBelt
    ScriptEntryEnd

FightAreaPokecenter1F_Nurse:
    SetVar VAR_0x8007, LOCALID_FIGHT_AREA_NURSE
    CallCommonScript CommonScript_PokecenterNurse
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
