#include "macros/btlcmd.inc"


_000:
    // {0} is fast asleep.
    PrintMessage BattleStrings_Text_PokemonIsFastAsleep_Ally, TAG_NICKNAME, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    PlayBattleAnimation BTLSCR_ATTACKER, BATTLE_ANIMATION_ASLEEP
    Wait 
    End 
