#include "macros/btlcmd.inc"


_000:
    // {0} is frozen solid!
    PrintMessage BattleStrings_Text_PokemonIsFrozenSolid_Ally, TAG_NICKNAME, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    PlayBattleAnimation BTLSCR_ATTACKER, BATTLE_ANIMATION_FROZEN
    Wait 
    End 
