#include "macros/btlcmd.inc"


_000:
    CheckIgnorableAbility CHECK_HAVE, BTLSCR_DEFENDER, ABILITY_OBLIVIOUS, _048
    CompareMonDataToValue OPCODE_EQU, BTLSCR_ATTACKER, BATTLEMON_GENDER, GENDER_NONE, _032
    CompareMonDataToValue OPCODE_EQU, BTLSCR_DEFENDER, BATTLEMON_GENDER, GENDER_NONE, _032
    UpdateMonDataFromVar OPCODE_GET, BTLSCR_DEFENDER, BATTLEMON_GENDER, BTLVAR_CALC_TEMP
    CompareMonDataToVar OPCODE_EQU, BTLSCR_ATTACKER, BATTLEMON_GENDER, BTLVAR_CALC_TEMP, _032
    UpdateVar OPCODE_SET, BTLVAR_SIDE_EFFECT_FLAGS_DIRECT, MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SUBSCRIPT_PTR_SP_ATTACK_DOWN_2_STAGES
    End 

_032:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 15
    // It failed to affect {0}!
    PrintMessage pl_msg_00000368_01235, TAG_NICKNAME, BTLSCR_DEFENDER
    Wait 
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_ON, BTLVAR_MOVE_STATUS_FLAGS, MOVE_STATUS_NO_MORE_WORK
    End 

_048:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 15
    // {0}’s {1} made {2} ineffective!
    PrintMessage pl_msg_00000368_00714, TAG_NICKNAME_ABILITY_MOVE, BTLSCR_DEFENDER, BTLSCR_DEFENDER, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_ON, BTLVAR_MOVE_STATUS_FLAGS, MOVE_STATUS_NO_MORE_WORK
    End 
