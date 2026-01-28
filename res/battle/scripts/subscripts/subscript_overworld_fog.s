#include "macros/btlcmd.inc"


_000:
    PlayBattleAnimation BTLSCR_PLAYER, BATTLE_ANIMATION_WEATHER_FOG
    Wait 
    // The fog is deep...
    PrintMessage BattleStrings_Text_TheFogIsDeep, TAG_NONE
    Wait 
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_ON, BTLVAR_FIELD_CONDITIONS, FIELD_CONDITION_DEEP_FOG
    End 
