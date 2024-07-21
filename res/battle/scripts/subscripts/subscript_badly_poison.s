#include "macros/btlcmd.inc"

    .data

_000:
    CompareVarToValue OPCODE_NEQ, BTLVAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_TOXIC_SPIKES, _023
    CheckAbility CHECK_HAVE, BTLSCR_SIDE_EFFECT_MON, ABILITY_IMMUNITY, _249
    CheckIgnoreWeather _121
    CompareVarToValue OPCODE_FLAG_NOT, BTLVAR_FIELD_CONDITIONS, FIELD_CONDITION_SUNNY, _121
    CheckAbility CHECK_HAVE, BTLSCR_SIDE_EFFECT_MON, ABILITY_LEAF_GUARD, _249
    GoTo _121

_023:
    CompareVarToValue OPCODE_NEQ, BTLVAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_HELD_ITEM, _094
    CheckAbility CHECK_HAVE, BTLSCR_SIDE_EFFECT_MON, ABILITY_IMMUNITY, _248
    CheckIgnoreWeather _045
    CompareVarToValue OPCODE_FLAG_NOT, BTLVAR_FIELD_CONDITIONS, FIELD_CONDITION_SUNNY, _045
    CheckAbility CHECK_HAVE, BTLSCR_SIDE_EFFECT_MON, ABILITY_LEAF_GUARD, _248

_045:
    CompareMonDataToValue OPCODE_FLAG_SET, BTLSCR_SIDE_EFFECT_MON, BATTLEMON_STATUS, MON_CONDITION_POISON, _248
    CompareMonDataToValue OPCODE_FLAG_SET, BTLSCR_SIDE_EFFECT_MON, BATTLEMON_STATUS, MON_CONDITION_TOXIC, _248
    CompareMonDataToValue OPCODE_EQU, BTLSCR_SIDE_EFFECT_MON, BATTLEMON_TYPE_1, TYPE_POISON, _248
    CompareMonDataToValue OPCODE_EQU, BTLSCR_SIDE_EFFECT_MON, BATTLEMON_TYPE_2, TYPE_POISON, _248
    CompareMonDataToValue OPCODE_EQU, BTLSCR_SIDE_EFFECT_MON, BATTLEMON_TYPE_1, TYPE_STEEL, _248
    CompareMonDataToValue OPCODE_EQU, BTLSCR_SIDE_EFFECT_MON, BATTLEMON_TYPE_2, TYPE_STEEL, _248
    CompareMonDataToValue OPCODE_NEQ, BTLSCR_SIDE_EFFECT_MON, BATTLEMON_STATUS, MON_CONDITION_NONE, _248
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_SIDE_CONDITIONS_EFFECT_MON, SIDE_CONDITION_SAFEGUARD, _248
    GoTo _191

_094:
    CheckIgnorableAbility CHECK_HAVE, BTLSCR_SIDE_EFFECT_MON, ABILITY_IMMUNITY, _249
    CheckIgnoreWeather _111
    CompareVarToValue OPCODE_FLAG_NOT, BTLVAR_FIELD_CONDITIONS, FIELD_CONDITION_SUNNY, _111
    CheckIgnorableAbility CHECK_HAVE, BTLSCR_SIDE_EFFECT_MON, ABILITY_LEAF_GUARD, _249

_111:
    CompareVarToValue OPCODE_NEQ, BTLVAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_INDIRECT, _121
    CheckIgnorableAbility CHECK_HAVE, BTLSCR_SIDE_EFFECT_MON, ABILITY_SHIELD_DUST, _275

_121:
    CompareVarToValue OPCODE_NEQ, BTLVAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_DIRECT, _128
    PrintAttackMessage 
    Wait 

_128:
    CheckSubstitute BTLSCR_SIDE_EFFECT_MON, _275
    CompareMonDataToValue OPCODE_FLAG_SET, BTLSCR_SIDE_EFFECT_MON, BATTLEMON_STATUS, MON_CONDITION_POISON, _296
    CompareMonDataToValue OPCODE_FLAG_SET, BTLSCR_SIDE_EFFECT_MON, BATTLEMON_STATUS, MON_CONDITION_TOXIC, _296
    CompareMonDataToValue OPCODE_EQU, BTLSCR_SIDE_EFFECT_MON, BATTLEMON_TYPE_1, TYPE_POISON, _314
    CompareMonDataToValue OPCODE_EQU, BTLSCR_SIDE_EFFECT_MON, BATTLEMON_TYPE_2, TYPE_POISON, _314
    CompareMonDataToValue OPCODE_EQU, BTLSCR_SIDE_EFFECT_MON, BATTLEMON_TYPE_1, TYPE_STEEL, _314
    CompareMonDataToValue OPCODE_EQU, BTLSCR_SIDE_EFFECT_MON, BATTLEMON_TYPE_2, TYPE_STEEL, _314
    CompareMonDataToValue OPCODE_NEQ, BTLSCR_SIDE_EFFECT_MON, BATTLEMON_STATUS, MON_CONDITION_NONE, _275
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_MOVE_STATUS_FLAGS, MOVE_STATUS_MISSED|MOVE_STATUS_SEMI_INVULNERABLE, _275
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_SIDE_CONDITIONS_EFFECT_MON, SIDE_CONDITION_SAFEGUARD, _332
    CompareVarToValue OPCODE_NEQ, BTLVAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_DIRECT, _191
    PlayMoveAnimation BTLSCR_ATTACKER
    Wait 

_191:
    CompareVarToValue OPCODE_NEQ, BTLVAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_HELD_ITEM, _202
    PlayBattleAnimation BTLSCR_SIDE_EFFECT_MON, BATTLE_ANIMATION_HELD_ITEM
    Wait 
    WaitButtonABTime 15

_202:
    PlayBattleAnimation BTLSCR_SIDE_EFFECT_MON, BATTLE_ANIMATION_POISONED
    Wait 
    UpdateMonData OPCODE_FLAG_ON, BTLSCR_SIDE_EFFECT_MON, BATTLEMON_STATUS, MON_CONDITION_TOXIC
    CompareVarToValue OPCODE_EQU, BTLVAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_HELD_ITEM, _222
    // {0} was badly poisoned!
    PrintMessage pl_msg_00000368_00079, TAG_NICKNAME, BTLSCR_SIDE_EFFECT_MON
    GoTo _227

_222:
    // {0} was badly poisoned by the {1}!
    PrintMessage pl_msg_00000368_01168, TAG_NICKNAME_ITEM, BTLSCR_SIDE_EFFECT_MON, BTLSCR_MSG_TEMP

_227:
    Wait 
    SetHealthbarStatus BTLSCR_SIDE_EFFECT_MON, BATTLE_ANIMATION_POISONED
    WaitButtonABTime 30
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_BATTLE_CTX_STATUS, SYSCTL_TRY_SYNCHRONIZE_STATUS, _244
    UpdateVar OPCODE_FLAG_ON, BTLVAR_BATTLE_CTX_STATUS, SYSCTL_TRY_SYNCHRONIZE_STATUS
    GoTo _248

_244:
    UpdateVar OPCODE_FLAG_OFF, BTLVAR_BATTLE_CTX_STATUS, SYSCTL_TRY_SYNCHRONIZE_STATUS

_248:
    End 

_249:
    CompareVarToValue OPCODE_EQU, BTLVAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_INDIRECT, _355
    CompareVarToValue OPCODE_EQU, BTLVAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_MOVE_EFFECT, _266
    CompareVarToValue OPCODE_EQU, BTLVAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_TOXIC_SPIKES, _266
    PrintAttackMessage 
    Wait 

_266:
    WaitButtonABTime 30
    // {0}’s {1} prevents poisoning!
    PrintMessage pl_msg_00000368_00650, TAG_NICKNAME_ABILITY, BTLSCR_SIDE_EFFECT_MON, BTLSCR_SIDE_EFFECT_MON
    GoTo _348

_275:
    CompareVarToValue OPCODE_EQU, BTLVAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_INDIRECT, _355
    CompareVarToValue OPCODE_EQU, BTLVAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_MOVE_EFFECT, _355
    CompareVarToValue OPCODE_EQU, BTLVAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_TOXIC_SPIKES, _355
    WaitButtonABTime 30
    Call BATTLE_SUBSCRIPT_BUT_IT_FAILED
    GoTo _355

_296:
    CompareVarToValue OPCODE_EQU, BTLVAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_INDIRECT, _355
    CompareVarToValue OPCODE_EQU, BTLVAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_TOXIC_SPIKES, _355
    WaitButtonABTime 30
    // {0} is already poisoned.
    PrintMessage pl_msg_00000368_00076, TAG_NICKNAME, BTLSCR_SIDE_EFFECT_MON
    GoTo _348

_314:
    CompareVarToValue OPCODE_EQU, BTLVAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_INDIRECT, _355
    CompareVarToValue OPCODE_EQU, BTLVAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_TOXIC_SPIKES, _355
    WaitButtonABTime 30
    // It doesn’t affect {0}...
    PrintMessage pl_msg_00000368_00027, TAG_NICKNAME, BTLSCR_SIDE_EFFECT_MON
    GoTo _348

_332:
    CompareVarToValue OPCODE_EQU, BTLVAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_INDIRECT, _355
    CompareVarToValue OPCODE_EQU, BTLVAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_TOXIC_SPIKES, _355
    WaitButtonABTime 30
    // {0} is protected by Safeguard!
    PrintMessage pl_msg_00000368_00200, TAG_NICKNAME, BTLSCR_SIDE_EFFECT_MON

_348:
    Wait 
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_ON, BTLVAR_MOVE_STATUS_FLAGS, MOVE_STATUS_NO_MORE_WORK

_355:
    End 