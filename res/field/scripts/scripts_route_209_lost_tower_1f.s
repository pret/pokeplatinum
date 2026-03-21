#include "macros/scrcmd.inc"
#include "res/text/bank/route_209_lost_tower_1f.h"


    ScriptEntry Route209LostTower1F_OnTransition
    ScriptEntry Route209LostTower1F_PokemonBreederF1
    ScriptEntry Route209LostTower1F_PokemonBreederF2
    ScriptEntryEnd

Route209LostTower1F_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_LOST_TOWER
    End

Route209LostTower1F_PokemonBreederF1:
    NPCMessage Route209LostTower1F_Text_ThisIsWhereSpiritsRest
    End

Route209LostTower1F_PokemonBreederF2:
    NPCMessage Route209LostTower1F_Text_ThisIsTheLostTower
    End

    .balign 4, 0
