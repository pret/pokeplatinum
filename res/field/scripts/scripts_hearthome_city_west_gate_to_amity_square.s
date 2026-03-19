#include "macros/scrcmd.inc"
#include "res/text/bank/hearthome_city_west_gate_to_amity_square.h"


    ScriptEntry HearthomeCityEastGateToAmitySquare_Receptionist
    ScriptEntry HearthomeCityEastGateToAmitySquare_Beauty
    ScriptEntry HearthomeCityEastGateToAmitySquare_Pikachu
    ScriptEntry HearthomeCityEastGateToAmitySquare_OnTransition
    ScriptEntryEnd

HearthomeCityEastGateToAmitySquare_OnTransition:
    CheckTVInterviewEligible TV_PROGRAM_SEGMENT_AMITY_SQUARE_WATCH, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, HearthomeCityEastGateToAmitySquare_HideReporter
    ClearFlag FLAG_HIDE_HEARTHOME_CITY_GATE_TO_AMITY_SQUARE_REPORTER
    End

HearthomeCityEastGateToAmitySquare_HideReporter:
    SetFlag FLAG_HIDE_HEARTHOME_CITY_GATE_TO_AMITY_SQUARE_REPORTER
    End

HearthomeCityEastGateToAmitySquare_Receptionist:
    NPCMessage HearthomeCityWestGateToAmitySquare_Text_GoForAStrollWithCutePokemon
    End

HearthomeCityEastGateToAmitySquare_Beauty:
    NPCMessage HearthomeCityWestGateToAmitySquare_Text_MyPikachuSeemsDelighted
    End

HearthomeCityEastGateToAmitySquare_Pikachu:
    PokemonCryAndMessage SPECIES_PIKACHU, HearthomeCityWestGateToAmitySquare_Text_PikachuCryPikappi
    End

    .balign 4, 0
