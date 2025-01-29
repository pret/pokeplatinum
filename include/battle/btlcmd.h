#ifndef POKEPLATINUM_BATTLE_BTLCMD_H
#define POKEPLATINUM_BATTLE_BTLCMD_H

#include "generated/battle_script_battlers.h"
#include "generated/battle_script_check_side_condition_ops.h"
#include "generated/battle_script_opcodes.h"
#include "generated/battle_script_side_conditions.h"
#include "generated/battle_script_turn_flags.h"
#include "generated/battle_script_vars.h"

#define CHECK_HAVE     0
#define CHECK_NOT_HAVE 1

#define MSGCOND_SLEEP       0
#define MSGCOND_POISON      1
#define MSGCOND_BURN        2
#define MSGCOND_PARALYSIS   3
#define MSGCOND_FREEZE      4
#define MSGCOND_CONFUSION   5
#define MSGCOND_INFATUATION 6

#define BTLSCR_THROW_POKE_BALL   0
#define BTLSCR_THROW_SAFARI_BALL 1
#define BTLSCR_THROW_SAFARI_ROCK 2
#define BTLSCR_THROW_SAFARI_BAIT 3
#define BTLSCR_THROW_PARK_BALL   4

#define CAPTURE_NORMAL 0
#define CAPTURE_SAFARI 1

#define YES_NO_BASIC           0
#define YES_NO_FORGET_MOVE     1
#define YES_NO_GIVE_UP_ON_MOVE 2
#define YES_NO_NEXT_MON        3
#define YES_NO_CHANGE_MON      4
#define YES_NO_GIVE_NICKNAME   5

#define TRAINER_MESSAGE_LOSE   1
#define TRAINER_MESSAGE_LOSE_1 4
#define TRAINER_MESSAGE_LOSE_2 8
#define TRAINER_MESSAGE_WIN    100

#define BTLSCR_MSG_TEMP (0xFF)

#define WEATHER_EFFECT_HYDRATION   1
#define WEATHER_EFFECT_SOLAR_POWER 2

#endif // POKEPLATINUM_BATTLE_BTLCMD_H
