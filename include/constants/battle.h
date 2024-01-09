#ifndef POKEPLATINUM_CONSTANTS_BATTLE_H
#define POKEPLATINUM_CONSTANTS_BATTLE_H

#include "constants/battle/condition.h"
#include "constants/battle/message_tags.h"
#include "constants/battle/moves.h"
#include "constants/battle/scripts.h"
#include "constants/battle/side_effects.h"
#include "constants/battle/system_control.h"
#include "constants/battle/terrain.h"
#include "constants/battle/turn_flags.h"

#include "consts/generated/c/battle.h"

#define BATTLE_TYPE_SINGLES         (0 << 0)
#define BATTLE_TYPE_WILD_MON        (0 << 0)
#define BATTLE_TYPE_TRAINER         (1 << 0)
#define BATTLE_TYPE_DOUBLES         (1 << 1)
#define BATTLE_TYPE_LINK            (1 << 2)
#define BATTLE_TYPE_2vs2            (1 << 3) // This is, explicitly, two distinct battlers on each side
#define BATTLE_TYPE_TAG             (1 << 4) // This is, explicitly, a battle with a partner
#define BATTLE_TYPE_SAFARI          (1 << 5)
#define BATTLE_TYPE_AI              (1 << 6)
#define BATTLE_TYPE_FRONTIER        (1 << 7)
#define BATTLE_TYPE_ROAMER          (1 << 8)
#define BATTLE_TYPE_PAL_PARK        (1 << 9)
#define BATTLE_TYPE_CATCH_TUTORIAL  (1 << 10)
#define BATTLE_TYPE_DEBUG           (1 << 31)

#define BATTLE_TYPE_TRAINER_DOUBLES         (BATTLE_TYPE_DOUBLES | BATTLE_TYPE_TRAINER)
#define BATTLE_TYPE_LINK_DOUBLES            (BATTLE_TYPE_LINK | BATTLE_TYPE_TRAINER_DOUBLES)
#define BATTLE_TYPE_FRONTIER_DOUBLES        (BATTLE_TYPE_FRONTIER | BATTLE_TYPE_TRAINER_DOUBLES)
#define BATTLE_TYPE_TAG_DOUBLES             (BATTLE_TYPE_TAG | BATTLE_TYPE_TRAINER_DOUBLES)
#define BATTLE_TYPE_NO_ITEMS                (BATTLE_TYPE_LINK | BATTLE_TYPE_FRONTIER)
#define BATTLE_TYPE_AI_PARTNER              (BATTLE_TYPE_DOUBLES | BATTLE_TYPE_2vs2 | BATTLE_TYPE_AI)
#define BATTLE_TYPE_TRAINER_WITH_AI_PARTNER (BATTLE_TYPE_TRAINER | BATTLE_TYPE_AI_PARTNER)
#define BATTLE_TYPE_SPECIAL_WILD            (BATTLE_TYPE_SAFARI | BATTLE_TYPE_ROAMER | BATTLE_TYPE_PAL_PARK | BATTLE_TYPE_CATCH_TUTORIAL)
#define BATTLE_TYPE_NO_OBEDIENCE_CHECK      (BATTLE_TYPE_LINK | BATTLE_TYPE_FRONTIER)
#define BATTLE_TYPE_FORCED_SET_MODE         (BATTLE_TYPE_DOUBLES | BATTLE_TYPE_LINK | BATTLE_TYPE_FRONTIER)
#define BATTLE_TYPE_NO_AI_ITEMS             (BATTLE_TYPE_LINK | BATTLE_TYPE_FRONTIER | BATTLE_TYPE_SAFARI | BATTLE_TYPE_AI | BATTLE_TYPE_PAL_PARK)
#define BATTLE_TYPE_NO_MOVES                (BATTLE_TYPE_SAFARI | BATTLE_TYPE_PAL_PARK)
#define BATTLE_TYPE_NO_EXPERIENCE           (BATTLE_TYPE_LINK | BATTLE_TYPE_SAFARI | BATTLE_TYPE_FRONTIER | BATTLE_TYPE_PAL_PARK)
#define BATTLE_TYPE_NO_ABILITIES            (BATTLE_TYPE_SAFARI | BATTLE_TYPE_PAL_PARK)
#define BATTLE_TYPE_2vs2_TAG                (BATTLE_TYPE_2vs2 | BATTLE_TYPE_TAG)
#define BATTLE_TYPE_ALWAYS_CATCH            (BATTLE_TYPE_PAL_PARK | BATTLE_TYPE_CATCH_TUTORIAL)
#define BATTLE_TYPE_RESTORE_ITEMS_AFTER     (BATTLE_TYPE_LINK | BATTLE_TYPE_FRONTIER)
#define BATTLE_TYPE_NO_TRAINER_MESSAGES     (BATTLE_TYPE_LINK | BATTLE_TYPE_FRONTIER)

#define MAX_LINK_BATTLERS       4
#define MAX_BATTLERS            4
#define NUM_BATTLE_SIDES        2
#define MAX_BATTLERS_PER_SIDE   2

#define BATTLE_IO_QUEUE_SIZE    16
#define BATTLE_IO_BUFFER_SIZE   256
#define BATTLE_SCRIPT_SIZE_MAX  400
#define BATTLE_SCRIPT_STACK_MAX 4

#define MAX_OPPONENTS     2
#define MAX_TRAINER_ITEMS 4

#define BATTLE_IN_PROGRESS          0
#define BATTLE_RESULT_WIN           (1 << 0)
#define BATTLE_RESULT_LOSE          (1 << 1)
#define BATTLE_RESULT_CAPTURED_MON  (1 << 2)
#define BATTLE_RESULT_TRY_FLEE_WAIT (1 << 6)
#define BATTLE_RESULT_TRY_FLEE      (1 << 7)

#define BATTLE_RESULT_DRAW          (BATTLE_RESULT_WIN | BATTLE_RESULT_LOSE)
#define BATTLE_RESULT_PLAYER_FLED   (BATTLE_RESULT_CAPTURED_MON | BATTLE_RESULT_WIN)
#define BATTLE_RESULT_ENEMY_FLED    (BATTLE_RESULT_CAPTURED_MON | BATTLE_RESULT_LOSE)

/*
 * Slot 1 is always on the controller's left; slot 2 is always on their right.
 *
 * e.g., in a single-battle:
 *                  ENEMY_SLOT_1
 * 
 *      PLAYER_SLOT_1
 * 
 * or, in a double-battle:
 *              ENEMY_SLOT_2    ENEMY_SLOT_1
 *  
 *      PLAYER_SLOT_1   PLAYER_SLOT_2
 */
#define BATTLER_PLAYER_SLOT_1   0
#define BATTLER_ENEMY_SLOT_1    1
#define BATTLER_PLAYER_SLOT_2   2
#define BATTLER_ENEMY_SLOT_2    3
#define BATTLER_NONE            0xFF

#define BATTLER_TYPE_SOLO_PLAYER        0
#define BATTLER_TYPE_SOLO_ENEMY         1
#define BATTLER_TYPE_PLAYER_SIDE_SLOT_1 2
#define BATTLER_TYPE_ENEMY_SIDE_SLOT_1  3
#define BATTLER_TYPE_PLAYER_SIDE_SLOT_2 4
#define BATTLER_TYPE_ENEMY_SIDE_SLOT_2  5

#define BATTLE_SIDE_PLAYER      0
#define BATTLE_SIDE_ENEMY       1

#define BATTLE_STATUS_FIRST_BATTLE  (1 << 0)
#define BATTLE_STATUS_HONEY_TREE    (1 << 1)
#define BATTLE_STATUS_NO_RUNNING    (1 << 2)
#define BATTLE_STATUS_LEGENDARY     (1 << 3)
#define BATTLE_STATUS_RECORDING     (1 << 4)
#define BATTLE_STATUS_RECORDED      (1 << 5)
#define BATTLE_STATUS_GIRATINA      (1 << 6)
#define BATTLE_STATUS_DISTORTION    (1 << 7)

#define CHECK_INVALID_NO_MOVE       (1 << 0)
#define CHECK_INVALID_NO_PP         (1 << 1)
#define CHECK_INVALID_DISABLED      (1 << 2)
#define CHECK_INVALID_TORMENTED     (1 << 3)
#define CHECK_INVALID_TAUNTED       (1 << 4)
#define CHECK_INVALID_IMPRISONED    (1 << 5)
#define CHECK_INVALID_GRAVITY       (1 << 6)
#define CHECK_INVALID_HEAL_BLOCK    (1 << 7)
#define CHECK_INVALID_ENCORE        (1 << 8) // this one is only implicit
#define CHECK_INVALID_CHOICE_ITEM   (1 << 9)
#define CHECK_INVALID_ALL           ~0

#define STRUGGLING_MOVE_1           (1 << 0)
#define STRUGGLING_MOVE_2           (1 << 1)
#define STRUGGLING_MOVE_3           (1 << 2)
#define STRUGGLING_MOVE_4           (1 << 3)
#define STRUGGLING_ALL              (STRUGGLING_MOVE_1 | STRUGGLING_MOVE_2 | STRUGGLING_MOVE_3 | STRUGGLING_MOVE_4)

#define LINK_BATTLE_TIMEOUT         (60 * 30)
#define LINK_BATTLE_RESET_SAVEPOINT 1

#define PAYDAY_MAX          0xFFFF
#define NUM_SCREEN_TURNS    5

#define TYPE_MULTI_IMMUNE       0
#define TYPE_MULTI_NOT_VERY_EFF 5
#define TYPE_MULTI_SUPER_EFF    20

#define TYPE_MULTI_QUARTER_DAMAGE    10
#define TYPE_MULTI_HALF_DAMAGE       20
#define TYPE_MULTI_BASE_DAMAGE       40
#define TYPE_MULTI_DOUBLE_DAMAGE     80
#define TYPE_MULTI_QUADRUPLE_DAMAGE 160

#define SOUNDPROOF_SLOT_1   (1 << 0)
#define SOUNDPROOF_SLOT_2   (1 << 1)
#define NO_PARTNER_SLOT_1   (1 << 2)
#define NO_PARTNER_SLOT_2   (1 << 3)

enum BattleActions {
    BATTLE_ACTION_PICK_COMMAND = 0,
    BATTLE_ACTION_CHOOSE_TARGET,
    BATTLE_ACTION_TEMP_VALUE,
    BATTLE_ACTION_SELECTED_COMMAND,

    MAX_BATTLE_ACTIONS
};

enum BattlerBootState {
    BATTLER_BOOT_STATE_NORMAL = 0,
    BATTLER_BOOT_STATE_AI,
    BATTLER_BOOT_STATE_LINK,
};

#endif // POKEPLATINUM_CONSTANTS_BATTLE_H
