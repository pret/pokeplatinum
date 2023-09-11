#ifndef POKEPLATINUM_CONSTANTS_BATTLE_CONDITION_H
#define POKEPLATINUM_CONSTANTS_BATTLE_CONDITION_H

#define MON_CONDITION_NONE              0
#define MON_CONDITION_SLEEP             ((1 << 0) | (1 << 1) | (1 << 2)) // counter for the number of sleep turns remaining
#define MON_CONDITION_POISON            (1 << 3)
#define MON_CONDITION_BURN              (1 << 4)
#define MON_CONDITION_FREEZE            (1 << 5)
#define MON_CONDITION_PARALYSIS         (1 << 6)
#define MON_CONDITION_TOXIC             (1 << 7)
#define MON_CONDITION_TOXIC_COUNTER     ((1 << 8) | (1 << 9) | (1 << 10) | (1 << 11)) // counter for increasing Toxic damage
#define MON_CONDITION_TOXIC_COUNT_INC   ((1 << 8)) // increment value for the Toxic counter

#define MON_CONDITION_ANY_POISON        (CONDITION_POISON | CONDITION_TOXIC | CONDITION_TOXIC_COUNTER)
#define MON_CONDITION_ANY               (CONDITION_SLEEP | CONDITION_POISON | CONDITION_BURN | CONDITION_FREEZE | CONDITION_PARALYSIS | CONDITION_TOXIC)

#define MON_CONDITION_CAN_SYNCHRONIZE   (CONDITION_POISON | CONDITION_BURN | CONDITION_PARALYSIS)
#define MON_CONDITION_FACADE_BOOST      (CONDITION_TOXIC | CONDITION_POISON | CONDITION_BURN | CONDITION_PARALYSIS)

#define VOLATILE_CONDITION_NONE         0
#define VOLATILE_CONDITION_CONFUSION    ((1 << 0) | (1 << 1) | (1 << 2)) // counter for the number of confusion turns remaining
#define VOLATILE_CONDITION_FLINCH       (1 << 3)
#define VOLATILE_CONDITION_UPROAR       ((1 << 4) | (1 << 5) | (1 << 6)) // counter for the number of Uproar turns remaining
// unused flag: 1 << 7
#define VOLATILE_CONDITION_BIDE         ((1 << 8) | (1 << 9)) // counter for the number of Bide turns remaining
#define VOLATILE_CONDITION_THRASH       ((1 << 10) | (1 << 11)) // counter for the number of Thrash turns remaining
#define VOLATILE_CONDITION_CHARGE_TURN  (1 << 12)
#define VOLATILE_CONDITION_BIND         ((1 << 13) | (1 << 14) | (1 << 15)) // counter for the number of Bind turns remaining
#define VOLATILE_CONDITION_ATTRACT      ((1 << 16) | (1 << 17) | (1 << 18) | (1 << 19)) // each bit here defines which battlers the mon is infatuated with
#define VOLATILE_CONDITION_FOCUS_ENERGY (1 << 20)
#define VOLATILE_CONDITION_TRANSFORM    (1 << 21)
#define VOLATILE_CONDITION_RECHARGING   (1 << 22)
#define VOLATILE_CONDITION_RAGE         (1 << 23)
#define VOLATILE_CONDITION_SUBSTITUTE   (1 << 24)
#define VOLATILE_CONDITION_DESTINY_BOND (1 << 25)
#define VOLATILE_CONDITION_MEAN_LOOK    (1 << 26)
#define VOLATILE_CONDITION_NIGHTMARE    (1 << 27)
#define VOLATILE_CONDITION_CURSE        (1 << 28)
#define VOLATILE_CONDITION_FORESIGHT    (1 << 29)
#define VOLATILE_CONDITION_DEFENSE_CURL (1 << 30)
#define VOLATILE_CONDITION_TORMENT      (1 << 31)

#define VOLATILE_CONDITION_BATON_PASSED (VOLATILE_CONDITION_FOCUS_ENERGY \
                                        | VOLATILE_CONDITION_MEAN_LOOK \
                                        | VOLATILE_CONDITION_CONFUSION \
                                        | VOLATILE_CONDITION_CURSE \
                                        | VOLATILE_CONDITION_SUBSTITUTE)

#define VOLATILE_CONDITION_UPROAR_SHIFT 4
#define VOLATILE_CONDITION_THRASH_SHIFT 10
#define VOLATILE_CONDITION_BIND_SHIFT   13

#define SIDE_CONDITION_REFLECT      (1 << 0)
#define SIDE_CONDITION_LIGHT_SCREEN (1 << 1)
#define SIDE_CONDITION_SPIKES       (1 << 2)
#define SIDE_CONDITION_SAFEGUARD    (1 << 3)
#define SIDE_CONDITION_FUTURE_SIGHT (1 << 4)
#define SIDE_CONDITION_WISH         (1 << 5)
#define SIDE_CONDITION_MIST         (1 << 6)
#define SIDE_CONDITION_STEALTH_ROCK (1 << 7)
#define SIDE_CONDITION_TAILWIND     ((1 << 8) | (1 << 9)) // counter for the number of Tailwind turns remaining
#define SIDE_CONDITION_TOXIC_SPIKES (1 << 10)
// unused flag: 1 << 11
#define SIDE_CONDITION_LUCKY_CHANT  ((1 << 12) | (1 << 13) | (1 << 14)) // counter for the number of Lucky Chant turns remaining

#define SIDE_CONDITION_TAILWIND_SHIFT       (1 << 8)
#define SIDE_CONDITION_LUCKY_CHANT_SHIFT    (1 << 12)

#define FIELD_CONDITION_RAINING_TEMP    (1 << 0)
#define FIELD_CONDITION_RAINING_PERM    (1 << 1)
#define FIELD_CONDITION_SANDSTORM_TEMP  (1 << 2)
#define FIELD_CONDITION_SANDSTORM_PERM  (1 << 3)
#define FIELD_CONDITION_SUNNY_TEMP      (1 << 4)
#define FIELD_CONDITION_SUNNY_PERM      (1 << 5)
#define FIELD_CONDITION_HAILING_TEMP    (1 << 6)
#define FIELD_CONDITION_HAILING_PERM    (1 << 7)
#define FIELD_CONDITION_UPROAR          ((1 << 8) | (1 << 9) | (1 << 10) | (1 << 11)) // mask for which clients are in an Uproar
#define FIELD_CONDITION_GRAVITY         ((1 << 12) | (1 << 13) | (1 << 14)) // counter for the number of Gravity turns remaining
#define FIELD_CONDITION_DEEP_FOG        (1 << 15)
#define FIELD_CONDITION_TRICK_ROOM      ((1 << 16) | (1 << 17) | (1 << 18)) // counter for the number of Trick Room turns remaining

#define FIELD_CONDITION_RAINING     (FIELD_CONDITION_RAINING_TEMP | FIELD_CONDITION_RAINING_PERM)
#define FIELD_CONDITION_SANDSTORM   (FIELD_CONDITION_SANDSTORM_TEMP | FIELD_CONDITION_SANDSTORM_PERM)
#define FIELD_CONDITION_SUNNY       (FIELD_CONDITION_SUNNY_TEMP | FIELD_CONDITION_SUNNY_PERM)
#define FIELD_CONDITION_HAILING     (FIELD_CONDITION_HAILING_TEMP | FIELD_CONDITION_HAILING_PERM)
#define FIELD_CONDITION_WEATHER     (FIELD_CONDITION_RAINING \
                                    | FIELD_CONDITION_SANDSTORM \
                                    | FIELD_CONDITION_SUNNY \
                                    | FIELD_CONDITION_HAILING \
                                    | FIELD_CONDITION_DEEP_FOG)

#define FIELD_CONDITION_UPROAR_SHIFT        8
#define FIELD_CONDITION_GRAVITY_SHIFT       12
#define FIELD_CONDITION_TRICK_ROOM_SHIFT    16

#define MOVE_EFFECT_LEECH_SEED_RECIPIENT    ((1 << 0) | (1 << 1)) // each bit defines which opponent receives the healing effect
#define MOVE_EFFECT_LEECH_SEED              (1 << 2)
#define MOVE_EFFECT_LOCK_ON                 ((1 << 3) | (1 << 4)) // counter for the number of Lock On turns remaining
#define MOVE_EFFECT_PERISH_SONG             (1 << 5)
#define MOVE_EFFECT_AIRBORNE                (1 << 6) // Fly, Bounce
#define MOVE_EFFECT_UNDERGROUND             (1 << 7) // Dig
#define MOVE_EFFECT_MINIMIZE                (1 << 8)
#define MOVE_EFFECT_CHARGE                  (1 << 9)
#define MOVE_EFFECT_INGRAIN                 (1 << 10)
#define MOVE_EFFECT_YAWN                    ((1 << 11) | (1 << 12))
#define MOVE_EFFECT_IMPRISON                (1 << 13) // applied to mons which use Imprison
#define MOVE_EFFECT_GRUDGE                  (1 << 14)
// unused flag: 1 << 15
#define MOVE_EFFECT_MUD_SPORT               (1 << 16)
#define MOVE_EFFECT_WATER_SPORT             (1 << 17)
#define MOVE_EFFECT_UNDERWATER              (1 << 18) // Dive
// unused flag: 1 << 19
// unused flag: 1 << 20
#define MOVE_EFFECT_ABILITY_SUPPRESSED      (1 << 21) // Gastro Acid
#define MOVE_EFFECT_MIRACLE_EYE             (1 << 22)
#define MOVE_EFFECT_POWER_TRICK             (1 << 23)
#define MOVE_EFFECT_AQUA_RING               (1 << 24)
#define MOVE_EFFECT_HEAL_BLOCK              (1 << 25)
#define MOVE_EFFECT_EMBARGO                 (1 << 26)
#define MOVE_EFFECT_MAGNET_RISE             (1 << 27)
#define MOVE_EFFECT_CAMOUFLAGE              (1 << 28)
#define MOVE_EFFECT_SHADOW_FORCE            (1 << 29)
#define MOVE_EFFECT_IMPRISONED              (1 << 30) // applied to mons which are affected by Imprison

#define MOVE_EFFECT_LOCK_ON_SHIFT   3
#define MOVE_EFFECT_YAWN_SHIFT      11

#endif // POKEPLATINUM_CONSTANTS_BATTLE_CONDITION_H