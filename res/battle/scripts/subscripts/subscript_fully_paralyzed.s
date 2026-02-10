#include "macros/btlcmd.inc"


_000:
    // {0} is paralyzed! It can’t move!
    PrintMessage BattleStrings_Text_PokemonIsParalyzedItCantMove_Ally, TAG_NICKNAME, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    PlayBattleAnimation BTLSCR_ATTACKER, BATTLE_ANIMATION_PARALYZED
    Wait 
    UnlockMoveChoice BTLSCR_ATTACKER
    End 
