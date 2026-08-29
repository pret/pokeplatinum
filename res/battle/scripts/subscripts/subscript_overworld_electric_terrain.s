#include "macros/btlcmd.inc"


_000:
    PlayBattleAnimation BTLSCR_PLAYER, BATTLE_ANIMATION_WEATHER_ELECTRIC_TERRAIN
    Wait
    // The terrain is electric!
    PrintMessage BattleStrings_Text_TheTerrainIsElectric, TAG_NONE
    Wait
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_ON, BTLVAR_FIELD_CONDITIONS, FIELD_CONDITION_ELECTRIC_TERRAIN
    End
