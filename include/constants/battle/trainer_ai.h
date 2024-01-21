#ifndef POKEPLATINUM_CONSTANTS_BATTLE_TRAINER_AI_H
#define POKEPLATINUM_CONSTANTS_BATTLE_TRAINER_AI_H

#define AI_FLAG_BASIC               (1 << 0)
#define AI_FLAG_EVAL_ATTACK         (1 << 1)
#define AI_FLAG_EXPERT              (1 << 2)
#define AI_FLAG_SETUP_FIRST_TURN    (1 << 3)
#define AI_FLAG_RISKY               (1 << 4)
#define AI_FLAG_DAMAGE_PRIORITY     (1 << 5)
#define AI_FLAG_BATON_PASS          (1 << 6)
#define AI_FLAG_TAG_STRATEGY        (1 << 7)
#define AI_FLAG_CHECK_HP            (1 << 8)
#define AI_FLAG_WEATHER             (1 << 9)
#define AI_FLAG_HARRASSMENT         (1 << 10)
#define AI_FLAG_ROAMING_POKEMON     (1 << 29)

#define AI_INIT_SCORE_MOVE_1        (1 << 0)
#define AI_INIT_SCORE_MOVE_2        (1 << 1)
#define AI_INIT_SCORE_MOVE_3        (1 << 2)
#define AI_INIT_SCORE_MOVE_4        (1 << 3)

#define AI_INIT_SCORE_ALL_MOVES     (AI_INIT_SCORE_MOVE_1 | AI_INIT_SCORE_MOVE_2 | AI_INIT_SCORE_MOVE_3 | AI_INIT_SCORE_MOVE_4)

#define AI_STATUS_FLAG_DONE         (1 << 0)
#define AI_STATUS_FLAG_ESCAPE       (1 << 1)
#define AI_STATUS_FLAG_SAFARI       (1 << 2)
#define AI_STATUS_FLAG_BREAK        (1 << 3)
#define AI_STATUS_FLAG_CONTINUE     (1 << 4)

#endif
