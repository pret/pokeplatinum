#include "macros/btlcmd.inc"


_000:
    PlayBattleAnimation BTLSCR_PLAYER, BATTLE_ANIMATION_WEATHER_SUN
    Wait 
    // The sunlight turned harsh!
    PrintMessage BattleStrings_Text_TheSunlightTurnedHarsh, TAG_NONE
    Wait 
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_ON, BTLVAR_FIELD_CONDITIONS, FIELD_CONDITION_SUNNY_PERM
    End 
