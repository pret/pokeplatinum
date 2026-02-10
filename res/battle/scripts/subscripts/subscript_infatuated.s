#include "macros/btlcmd.inc"


_000:
    // {0} is in love with {1}!
    PrintMessage BattleStrings_Text_PokemonIsInLoveWithPokemon_AllyAlly, TAG_NICKNAME_NICKNAME, BTLSCR_ATTACKER, BTLSCR_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    PlayBattleAnimation BTLSCR_ATTACKER, BATTLE_ANIMATION_INFATUATED
    Wait 
    End 
