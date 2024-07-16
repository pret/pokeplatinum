#include "macros/btlcmd.inc"

    .data

_000:
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_BATTLE_TYPE, BATTLE_TYPE_PAL_PARK, _015
    // {0} used one {1}!
    PrintMessage pl_msg_00000368_00857, TAG_TRNAME_ITEM, BTLSCR_ATTACKER, BTLSCR_MSG_TEMP
    Wait 
    ThrowPokeball BTLSCR_PLAYER, BTLSCR_THROW_SAFARI_BALL
    GoTo _023

_015:
    // {0}, come back!
    PrintGlobalMessage pl_msg_00000368_01225, TAG_NICKNAME, BTLSCR_ENEMY
    Wait 
    ThrowPokeball BTLSCR_PLAYER, BTLSCR_THROW_PARK_BALL

_023:
    StartCatchMonTask CAPTURE_SAFARI
    WaitCatchMonTask 
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_RESULT_MASK, BATTLE_RESULT_CAPTURED_MON, _051
    CompareVarToValue OPCODE_NEQ, BTLVAR_NUM_SAFARI_BALLS, 0, _051
    PlaySound BTLSCR_ATTACKER, 1521
    // Announcer: You’re out of Safari Balls! Game over!
    PrintMessage pl_msg_00000368_00850, TAG_NONE
    Wait 
    WaitButtonABTime 30
    FadeOutBattle 
    Wait 
    UpdateVar OPCODE_FLAG_ON, BTLVAR_RESULT_MASK, BATTLE_RESULT_PLAYER_FLED

_051:
    End 
