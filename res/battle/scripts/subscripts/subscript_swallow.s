#include "macros/btlcmd.inc"


_000:
    PrintAttackMessage 
    Wait 
    Call BATTLE_SUBSCRIPT_RECOVER_HP
    // {0}’s stockpiled effect wore off!
    PrintMessage BattleStrings_Text_PokemonsStockpiledEffectWoreOff_Ally, TAG_NICKNAME, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    End 
