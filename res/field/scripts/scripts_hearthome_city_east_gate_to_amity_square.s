#include "macros/scrcmd.inc"
#include "res/text/bank/hearthome_city_east_gate_to_amity_square.h"


    ScriptEntry HearthomeCityEastGateToAmitySquare_Receptionist
    ScriptEntry HearthomeCityEastGateToAmitySquare_BlackBelt
    ScriptEntry HearthomeCityEastGateToAmitySquare_OnTransition
    ScriptEntryEnd

HearthomeCityEastGateToAmitySquare_OnTransition:
    CheckTVInterviewEligible TV_PROGRAM_SEGMENT_AMITY_SQUARE_WATCH, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, HearthomeCityEastGateToAmitySquare_HideReporter
    ClearFlag FLAG_HIDE_HEARTHOME_CITY_GATE_TO_AMITY_SQUARE_REPORTER
    End

HearthomeCityEastGateToAmitySquare_HideReporter:
    SetFlag FLAG_HIDE_HEARTHOME_CITY_GATE_TO_AMITY_SQUARE_REPORTER
    End

HearthomeCityEastGateToAmitySquare_Receptionist:
    NPCMessage HearthomeCityEastGateToAmitySquare_Text_TakeCutePokemonForAStroll
    End

HearthomeCityEastGateToAmitySquare_BlackBelt:
    NPCMessage HearthomeCityEastGateToAmitySquare_Text_TheyRefusedEntryToMyPokemon
    End

    .balign 4, 0
