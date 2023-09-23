#ifndef POKEPLATINUM_CONSTANTS_BATTLE_MOVES_H
#define POKEPLATINUM_CONSTANTS_BATTLE_MOVES_H

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

#define MOVE_EFFECT_SEMI_INVULNERABLE       (MOVE_EFFECT_AIRBORNE \
                                            | MOVE_EFFECT_UNDERGROUND \
                                            | MOVE_EFFECT_UNDERWATER \
                                            | MOVE_EFFECT_SHADOW_FORCE)

#define MOVE_EFFECT_LOCK_ON_SHIFT   3
#define MOVE_EFFECT_YAWN_SHIFT      11

#define MOVE_STATUS_MISSED              (1 << 0)
#define MOVE_STATUS_SUPER_EFFECTIVE     (1 << 1)
#define MOVE_STATUS_NOT_VERY_EFFECTIVE  (1 << 2)
#define MOVE_STATUS_INEFFECTIVE         (1 << 3)
#define MOVE_STATUS_CRITICAL_HIT        (1 << 4)
#define MOVE_STATUS_ONE_HIT_KO          (1 << 5)
#define MOVE_STATUS_FAILED              (1 << 6)
#define MOVE_STATUS_ENDURED             (1 << 7)
#define MOVE_STATUS_ENDURED_ITEM        (1 << 8)
#define MOVE_STATUS_NO_PP               (1 << 9)
#define MOVE_STATUS_BYPASSED_ACCURACY   (1 << 10)
#define MOVE_STATUS_LEVITATED           (1 << 11)
#define MOVE_STATUS_ONE_HIT_KO_FAILED   (1 << 12)
#define MOVE_STATUS_SPLASH              (1 << 13)
#define MOVE_STATUS_THRASH_DISRUPTED    (1 << 14)
#define MOVE_STATUS_PROTECTED           (1 << 15)
#define MOVE_STATUS_SEMI_INVULNERABLE   (1 << 16)
#define MOVE_STATUS_LOST_FOCUS          (1 << 17)
#define MOVE_STATUS_WONDER_GUARD        (1 << 18)
#define MOVE_STATUS_STURDY              (1 << 19)
#define MOVE_STATUS_MAGNET_RISE         (1 << 20)

#define MOVE_STATUS_NO_MORE_WORK        (1 << 31)

#define MOVE_STATUS_DID_NOT_HIT         (MOVE_STATUS_MISSED \
                                        | MOVE_STATUS_INEFFECTIVE \
                                        | MOVE_STATUS_FAILED \
                                        | MOVE_STATUS_LEVITATED \
                                        | MOVE_STATUS_ONE_HIT_KO_FAILED \
                                        | MOVE_STATUS_THRASH_DISRUPTED \
                                        | MOVE_STATUS_PROTECTED \
                                        | MOVE_STATUS_SEMI_INVULNERABLE \
                                        | MOVE_STATUS_LOST_FOCUS \
                                        | MOVE_STATUS_WONDER_GUARD \
                                        | MOVE_STATUS_STURDY \
                                        | MOVE_STATUS_MAGNET_RISE)

#define MOVE_STATUS_NO_EFFECTS          (MOVE_STATUS_DID_NOT_HIT \
                                        | MOVE_STATUS_NO_PP \
                                        | MOVE_STATUS_NO_MORE_WORK)

#define MOVE_STATUS_DID_NOT_AFFECT      (MOVE_STATUS_INEFFECTIVE | MOVE_STATUS_WONDER_GUARD)
#define MOVE_STATUS_GENERAL_MISS        (MOVE_STATUS_MISSED | MOVE_STATUS_SEMI_INVULNERABLE)

#define RANGE_SINGLE_TARGET             0
#define RANGE_SINGLE_TARGET_SPECIAL     (1 << 0)
#define RANGE_RANDOM_OPPONENT           (1 << 1)
#define RANGE_ADJACENT_OPPONENTS        (1 << 2)
#define RANGE_ALL_ADJACENT              (1 << 3)
#define RANGE_USER                      (1 << 4)
#define RANGE_USER_SIDE                 (1 << 5)
#define RANGE_FIELD                     (1 << 6)
#define RANGE_OPPONENT_SIDE             (1 << 7)
#define RANGE_ALLY                      (1 << 8)
#define RANGE_USER_OR_ALLY              (1 << 9)
#define RANGE_SINGLE_TARGET_ME_FIRST    (1 << 10)

#define MOVE_FLAG_MAKES_CONTACT         (1 << 0)
#define MOVE_FLAG_CAN_PROTECT           (1 << 1)
#define MOVE_FLAG_CAN_MAGIC_COAT        (1 << 2)
#define MOVE_FLAG_CAN_SNATCH            (1 << 3)
#define MOVE_FLAG_CAN_MIRROR_MOVE       (1 << 4)
#define MOVE_FLAG_TRIGGERS_KINGS_ROCK   (1 << 5)
#define MOVE_FLAG_HIDES_HP_GAUGES       (1 << 6)
#define MOVE_FLAG_HIDES_SHADOWS         (1 << 7)

#endif // POKEPLATINUM_CONSTANTS_BATTLE_MOVES_H