#include "macros/btlcmd.inc"


_000:
    UpdateMonDataFromVar OPCODE_GET, BTLSCR_ATTACKER, BATTLEMON_LEVEL, BTLVAR_CALC_TEMP
    UpdateVar OPCODE_MUL, BTLVAR_CALC_TEMP, 0x00000005
    IfSameSide BTLSCR_ATTACKER, BTLSCR_ENEMY, _016
    UpdateVarFromVar OPCODE_ADD, BTLVAR_PAY_DAY_COUNT, BTLVAR_CALC_TEMP

_016:
    // Coins scattered everywhere!
    PrintMessage BattleStrings_Text_CoinsScatteredEverywhere, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End 
