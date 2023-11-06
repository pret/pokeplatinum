#ifndef POKEPLATINUM_CONSTANTS_BATTLE_SYSTEM_CONTROL_H
#define POKEPLATINUM_CONSTANTS_BATTLE_SYSTEM_CONTROL_H

#define SYSCTL_SKIP_ATTACK_MESSAGE      (1 << 0)
#define SYSCTL_CHECK_LOOP_ONLY_ONCE     (1 << 1)
#define SYSCTL_HIT_DURING_FLY           (1 << 2)
#define SYSCTL_HIT_DURING_DIG           (1 << 3)
#define SYSCTL_HIT_DURING_DIVE          (1 << 4)
#define SYSCTL_FIRST_OF_MULTI_TURN      (1 << 5) // this could be a charge-up move or Bide
#define SYSCTL_SKIP_SPRITE_BLINK        (1 << 6)
#define SYSCTL_TRY_SYNCHRONIZE_STATUS   (1 << 7)
#define SYSCTL_BATON_PASS               (1 << 8)
#define SYSCTL_LAST_OF_MULTI_TURN       (1 << 9)
#define SYSCTL_NONSTANDARD_ACC_CHECK    (1 << 10) // used by Future Sight and OHKO moves
#define SYSCTL_IGNORE_TYPE_CHECKS       (1 << 11)
#define SYSCTL_MOVE_HIT                 (1 << 13) // this indicates that the move hit its target(s)
#define SYSCTL_PLAYED_MOVE_ANIMATION    (1 << 14)
#define SYSCTL_IGNORE_IMMUNITIES        (1 << 15)
#define SYSCTL_FAIL_STAT_STAGE_CHANGE   (1 << 17)
#define SYSCTL_HIT_DURING_SHADOW_FORCE  (1 << 19)
#define SYSCTL_REUSE_LAST_MOVE          (1 << 20)
#define SYSCTL_APPLY_SECONDARY_EFFECT   (1 << 22)
#define SYSCTL_APPLY_MOLD_BREAKER       (1 << 23)
#define SYSCTL_MON_FAINTED              ((1 << 24) | (1 << 25) | (1 << 26) | (1 << 27))
#define SYSCTL_MON_SELFDESTRUCTED       ((1 << 28) | (1 << 29) | (1 << 30) | (1 << 31))

#define SYSCTL_MON_FAINTED_SHIFT        24
#define SYSCTL_MON_SELFDESTRUCTED_SHIFT 28

#define SYSCTL_ATTACK_MESSAGE_SHOWN     (1 << 2)
#define SYSCTL_MAGIC_COAT_REFLECTED     (1 << 3)
#define SYSCTL_UTURN_ACTIVE             (1 << 4)
#define SYSCTL_MOVE_SUCCEEDED           (1 << 6) // this only reflects that the move is executed, not whether it hit or missed
#define SYSCTL_FORM_CHANGE              (1 << 26)

#define SYSCTL_LINK_WAITING             ((1 << 24) | (1 << 25) | SYSCTL_FORM_CHANGE | (1 << 27))
#define SYSCTL_PAYOUT_EXP               ((1 << 28) | (1 << 29) | (1 << 30) | (1 << 31))

#define SYSCTL_LINK_WAITING_SHIFT       24
#define SYSCTL_PAYOUT_EXP_SHIFT         28

#define SYSCTL_SKIP_OBEDIENCE_CHECK     (1 << 0)
#define SYSCTL_SKIP_TYPE_CHART_CHECK    (1 << 1)
#define SYSCTL_SKIP_STATUS_CHECK        (1 << 2)
#define SYSCTL_SKIP_PP_DECREMENT        (1 << 3)
#define SYSCTL_SKIP_IMMUNITY_TRIGGERS   (1 << 4)
#define SYSCTL_SKIP_ACCURACY_CHECK      (1 << 5)
#define SYSCTL_SKIP_ACCURACY_OVERRIDES  (1 << 6)
#define SYSCTL_SKIP_STOLEN_CHECK        (1 << 7)

#define SYSCTL_HIT_MULTIPLE_TARGETS     (SYSCTL_SKIP_OBEDIENCE_CHECK | SYSCTL_SKIP_STATUS_CHECK | SYSCTL_SKIP_PP_DECREMENT)
#define SYSCTL_TWO_HITS                 (SYSCTL_SKIP_OBEDIENCE_CHECK | SYSCTL_SKIP_STATUS_CHECK | SYSCTL_SKIP_PP_DECREMENT)
#define SYSCTL_MULTI_HIT_MOVE           (SYSCTL_SKIP_OBEDIENCE_CHECK \
                                        | SYSCTL_SKIP_STATUS_CHECK \
                                        | SYSCTL_SKIP_PP_DECREMENT \
                                        | SYSCTL_SKIP_IMMUNITY_TRIGGERS \
                                        | SYSCTL_SKIP_ACCURACY_CHECK \
                                        | SYSCTL_SKIP_ACCURACY_OVERRIDES \
                                        | SYSCTL_SKIP_STOLEN_CHECK)

#define BATTLER_STATUS_SWITCHING        1

#endif // POKEPLATINUM_CONSTANTS_BATTLE_SYSTEM_CONTROL_H

