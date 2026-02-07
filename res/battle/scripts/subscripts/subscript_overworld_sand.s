#include "macros/btlcmd.inc"


_000:
    PlayBattleAnimation BTLSCR_PLAYER, BATTLE_ANIMATION_WEATHER_SAND
    Wait 
    // A sandstorm brewed!
    PrintMessage BattleStrings_Text_ASandstormBrewed, TAG_NONE
    Wait 
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_ON, BTLVAR_FIELD_CONDITIONS, FIELD_CONDITION_SANDSTORM_PERM
    End 
