#include "macros/btlcmd.inc"

    .data

_000:
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_BATTLE_TYPE, BATTLE_TYPE_FRONTIER, _068
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_BATTLE_TYPE, BATTLE_TYPE_LINK, _065
    // {0} is out of usable Pokémon!
    PrintMessage pl_msg_00000368_00036, TAG_TRNAME, BTLSCR_PLAYER
    Wait 
    WaitButtonABTime 30
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_BATTLE_TYPE, BATTLE_TYPE_FRONTIER, _050
    PayPrizeMoney 
    CompareVarToValue OPCODE_EQU, BTLVAR_MSG_TEMP, 0, _050
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_BATTLE_TYPE, BATTLE_TYPE_TRAINER, _042
    // {0} dropped ${1} in panic!
    PrintMessage pl_msg_00000368_00034, TAG_TRNAME_NUM, BTLSCR_PLAYER, BTLSCR_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    GoTo _050

_042:
    // {0} paid out ${1} to the winner.
    PrintMessage pl_msg_00000368_00035, TAG_TRNAME_NUM, BTLSCR_PLAYER, BTLSCR_MSG_TEMP
    Wait 
    WaitButtonABTime 30

_050:
    // ... ... ... ...
    PrintMessage pl_msg_00000368_00038, TAG_NONE
    Wait 
    WaitButtonABTime 30
    // {0} blacked out!
    PrintMessage pl_msg_00000368_00037, TAG_NONE
    Wait 
    WaitButtonABTime 30
    FadeOutBattle 
    Wait 
    End 

_065:
    Call BATTLE_SUBSCRIPT_LINK_WIN_LOSE
    End 

_068:
    CompareMonDataToValue OPCODE_EQU, BTLSCR_ENEMY_SLOT_1, BATTLEMON_CUR_HP, 0, _076
    RecallPokemon BTLSCR_ENEMY_SLOT_1

_076:
    CompareVarToValue OPCODE_FLAG_NOT, BTLVAR_BATTLE_TYPE, BATTLE_TYPE_DOUBLES, _089
    CompareMonDataToValue OPCODE_EQU, BTLSCR_ENEMY_SLOT_2, BATTLEMON_CUR_HP, 0, _089
    RecallPokemon BTLSCR_ENEMY_SLOT_2

_089:
    Wait 
    HealthbarSlideOut BTLSCR_ENEMY
    Wait 
    TrainerSlideIn BTLSCR_ENEMY_SLOT_1, BATTLER_TYPE_SOLO_ENEMY
    Wait 
    PrintTrainerMessage BTLSCR_ENEMY_SLOT_1, TRAINER_MESSAGE_WIN
    Wait 
    WaitButtonABTime 30
    CompareVarToValue OPCODE_FLAG_NOT, BTLVAR_BATTLE_TYPE, BATTLE_TYPE_2vs2, _123
    TrainerSlideOut BTLSCR_ENEMY_SLOT_1
    Wait 
    TrainerSlideIn BTLSCR_ENEMY_SLOT_2, BATTLER_TYPE_SOLO_ENEMY
    Wait 
    PrintTrainerMessage BTLSCR_ENEMY_SLOT_2, TRAINER_MESSAGE_WIN
    Wait 
    WaitButtonABTime 60
    GoTo _125

_123:
    WaitButtonABTime 30

_125:
    SetLinkBattleResult 
    FadeOutBattle 
    Wait 
    End 
