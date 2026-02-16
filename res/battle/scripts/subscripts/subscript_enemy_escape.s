#include "macros/btlcmd.inc"


_000:
    PlaySound BTLSCR_ATTACKER, 1791
    // The wild {0} fled!
    PrintGlobalMessage BattleStrings_Text_TheWildPokemonFled, TAG_NICKNAME, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    FadeOutBattle 
    Wait 
    UpdateVar OPCODE_FLAG_ON, BTLVAR_RESULT_MASK, BATTLE_RESULT_PLAYER_FLED
    IncrementGameRecord BTLSCR_ATTACKER, BATTLER_TYPE_SOLO_ENEMY, RECORD_WILD_MON_FLED
    End 
