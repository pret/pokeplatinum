    .include "macros/btlcmd.inc"

    .data

_000:
    CompareVarToValue OPCODE_EQU, BTLVAR_BATTLE_TYPE, BATTLE_TYPE_DOUBLES|BATTLE_TYPE_2vs2|BATTLE_TYPE_AI, _026
    TryTeleport _026
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION
    // {0} fled from battle!
    PrintMessage pl_msg_00000368_00469, TAG_NICKNAME, BTLSCR_ATTACKER
    Wait 
    WaitButtonABTime 30
    FadeOutBattle 
    Wait 
    UpdateVar OPCODE_FLAG_ON, BTLVAR_RESULT_MASK, BATTLE_RESULT_PLAYER_FLED
    IncrementGameStat BTLSCR_ATTACKER, BATTLER_TYPE_SOLO_ENEMY, 99
    End 

_026:
    UpdateVar OPCODE_FLAG_ON, BTLVAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
