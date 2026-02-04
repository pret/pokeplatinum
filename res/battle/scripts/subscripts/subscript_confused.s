#include "macros/btlcmd.inc"


_000:
    // {0} is confused!
    PrintMessage BattleStrings_Text_PokemonIsConfused_Ally, TAG_NICKNAME, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    PlayBattleAnimation BTLSCR_ATTACKER, BATTLE_ANIMATION_CONFUSED
    Wait 
    End 
