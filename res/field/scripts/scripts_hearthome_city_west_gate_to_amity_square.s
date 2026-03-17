#include "macros/scrcmd.inc"
#include "res/text/bank/hearthome_city_west_gate_to_amity_square.h"


    ScriptEntry _0031
    ScriptEntry _0044
    ScriptEntry _0057
    ScriptEntry _0012
    ScriptEntryEnd

_0012:
    CheckTVInterviewEligible TV_PROGRAM_SEGMENT_AMITY_SQUARE_WATCH, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, _002B
    ClearFlag FLAG_UNK_0x0219
    End

_002B:
    SetFlag FLAG_UNK_0x0219
    End

_0031:
    NPCMessage 0
    End

_0044:
    NPCMessage 1
    End

_0057:
    PokemonCryAndMessage SPECIES_PIKACHU, 2
    End

    .balign 4, 0
