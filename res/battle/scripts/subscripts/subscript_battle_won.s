#include "macros/btlcmd.inc"
#include "generated/trainer_message_types.h"


_000:
    TryRestoreStatusOnSwitch BTLSCR_PLAYER_SLOT_1, _007
    UpdateMonData OPCODE_SET, BTLSCR_PLAYER_SLOT_1, BATTLEMON_STATUS, MON_CONDITION_NONE

_007:
    TryRestoreStatusOnSwitch BTLSCR_PLAYER_SLOT_2, _015
    UpdateMonData OPCODE_SET, BTLSCR_PLAYER_SLOT_2, BATTLEMON_STATUS, MON_CONDITION_NONE

_015:
    CompareVarToValue OPCODE_FLAG_NOT, BTLVAR_BATTLE_TYPE, BATTLE_TYPE_TRAINER, _135
    CompareVarToValue OPCODE_EQU, BTLVAR_BATTLE_TYPE, BATTLE_TYPE_TRAINER|BATTLE_TYPE_DOUBLES|BATTLE_TYPE_LINK|BATTLE_TYPE_2vs2|BATTLE_TYPE_FRONTIER, _084
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_BATTLE_TYPE, BATTLE_TYPE_LINK, _153
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_BATTLE_TYPE, BATTLE_TYPE_2vs2, _087
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_BATTLE_TYPE, BATTLE_TYPE_TAG, _087
    // Player defeated {0} {1}!
    PrintMessage pl_msg_00000368_00839, TAG_TRCLASS_TRNAME, BTLSCR_ENEMY_SLOT_1, BTLSCR_ENEMY_SLOT_1
    Wait 
    WaitButtonABTime 15
    TrainerSlideIn BTLSCR_ENEMY_SLOT_1, BATTLER_TYPE_SOLO_ENEMY
    Wait 
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_BATTLE_TYPE, BATTLE_TYPE_DOUBLES, _065
    PrintTrainerMessage BTLSCR_ENEMY_SLOT_1, TRMSG_DEFEAT
    Wait 
    WaitButtonABTime 60
    GoTo _121

_065:
    PrintTrainerMessage BTLSCR_ENEMY_SLOT_1, TRMSG_DOUBLE_BATTLE_DEFEAT_1
    Wait 
    WaitButtonABTime 60
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_BATTLE_TYPE, BATTLE_TYPE_FRONTIER, _121
    PrintTrainerMessage BTLSCR_ENEMY_SLOT_1, TRMSG_DOUBLE_BATTLE_DEFEAT_2
    Wait 
    WaitButtonABTime 60
    GoTo _121

_084:
    PlayBGM BTLSCR_PLAYER_SLOT_1, 1128

_087:
    // Player beat {0} {1} and {2} {3}!
    PrintMessage pl_msg_00000368_00953, TAG_TRCLASS_TRNAME_TRCLASS_TRNAME, BTLSCR_ENEMY_SLOT_1, BTLSCR_ENEMY_SLOT_1, BTLSCR_ENEMY_SLOT_2, BTLSCR_ENEMY_SLOT_2
    Wait 
    WaitButtonABTime 15
    TrainerSlideIn BTLSCR_ENEMY_SLOT_1, BATTLER_TYPE_SOLO_ENEMY
    Wait 
    PrintTrainerMessage BTLSCR_ENEMY_SLOT_1, TRMSG_DEFEAT
    Wait 
    WaitButtonABTime 30
    TrainerSlideOut BTLSCR_ENEMY_SLOT_1
    Wait 
    TrainerSlideIn BTLSCR_ENEMY_SLOT_2, BATTLER_TYPE_SOLO_ENEMY
    Wait 
    PrintTrainerMessage BTLSCR_ENEMY_SLOT_2, TRMSG_DEFEAT
    Wait 
    WaitButtonABTime 60
    SetLinkBattleResult 

_121:
    CompareVarToValue OPCODE_FLAG_SET, BTLVAR_BATTLE_TYPE, BATTLE_TYPE_FRONTIER, _150
    PayPrizeMoney 
    // {0} got ${1} for winning!
    PrintMessage pl_msg_00000368_00033, TAG_TRNAME_NUM, BTLSCR_PLAYER, BTLSCR_MSG_TEMP
    Wait 
    WaitButtonABTime 60

_135:
    GenerateEndOfBattleItem 
    AddPayDayMoney 
    CompareVarToValue OPCODE_EQU, BTLVAR_MSG_TEMP, 0, _150
    // {0} picked up ${1}!
    PrintMessage pl_msg_00000368_00341, TAG_TRNAME_NUM, BTLSCR_PLAYER, BTLSCR_MSG_TEMP
    Wait 
    WaitButtonABTime 60

_150:
    FadeOutBattle 
    Wait 
    End 

_153:
    Call BATTLE_SUBSCRIPT_LINK_WIN_LOSE
    End 
