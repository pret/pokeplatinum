#include "macros/btlcmd.inc"


_000:
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_BATTLE_TYPE, BATTLE_TYPE_PAL_PARK, _015
    // {0} used one {1}!
    PrintMessage BattleStrings_Text_TrainerUsedOneItem, TAG_TRNAME_ITEM, BTLSCR_ATTACKER, BTLSCR_MSG_TEMP
    Wait 
    ThrowPokeball BTLSCR_PLAYER, BTLSCR_THROW_SAFARI_BALL
    GoTo _023

_015:
    // {0}, come back!
    PrintGlobalMessage BattleStrings_Text_PokemonComeBackPalPark, TAG_NICKNAME, BTLSCR_ENEMY
    Wait 
    ThrowPokeball BTLSCR_PLAYER, BTLSCR_THROW_PARK_BALL

_023:
    StartCatchMonTask CAPTURE_SAFARI
    WaitCatchMonTask 
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_RESULT_MASK, BATTLE_RESULT_CAPTURED_MON, _051
    CompareVarToValue OPCODE_NEQ, BTLVAR_NUM_SAFARI_BALLS, 0, _051
    PlaySound BTLSCR_ATTACKER, SEQ_SE_DP_PINPON
    // Announcer: You’re out of Safari Balls! Game over!
    PrintMessage BattleStrings_Text_YoureOutOfSafariBallsGameOver, TAG_NONE
    Wait 
    WaitButtonABTime 30
    FadeOutBattle 
    Wait 
    UpdateVar OPCODE_FLAG_ON, BTLVAR_RESULT_MASK, BATTLE_RESULT_PLAYER_FLED

_051:
    End 
