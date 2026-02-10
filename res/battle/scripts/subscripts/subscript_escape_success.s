#include "macros/btlcmd.inc"


_000:
    PlaySound BTLSCR_ATTACKER, 1791
    // Got away safely!
    PrintMessage BattleStrings_Text_GotAwaySafely, TAG_NONE
    Wait 
    WaitButtonABTime 30
    FadeOutBattle 
    Wait 
    UpdateVar OPCODE_FLAG_ON, BTLVAR_RESULT_MASK, BATTLE_RESULT_WIN|BATTLE_RESULT_TRY_FLEE
    SetLinkBattleResult 
    End 
