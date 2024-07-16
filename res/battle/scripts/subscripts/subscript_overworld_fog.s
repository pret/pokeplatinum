#include "macros/btlcmd.inc"

    .data

_000:
    PlayBattleAnimation BTLSCR_PLAYER, BATTLE_ANIMATION_WEATHER_FOG
    Wait 
    // The fog is deep...
    PrintMessage pl_msg_00000368_00813, TAG_NONE
    Wait 
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_ON, BTLVAR_FIELD_CONDITIONS, FIELD_CONDITION_DEEP_FOG
    End 
