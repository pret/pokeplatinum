#ifndef POKEPLATINUM_CONSTANTS_ITEMS_H
#define POKEPLATINUM_CONSTANTS_ITEMS_H

#include "generated/item_ai_categories.h"
#include "generated/item_battle_categories.h"
#include "generated/item_hold_effects.h"
#include "generated/items.h"

#define POCKET_ITEMS        0
#define POCKET_MEDICINE     1
#define POCKET_BALLS        2
#define POCKET_TMHMS        3
#define POCKET_BERRIES      4
#define POCKET_MAIL         5
#define POCKET_BATTLE_ITEMS 6
#define POCKET_KEY_ITEMS    7
#define POCKET_MAX          8

#define ITEM_RECOVER_CONFUSION (1 << 0)
#define ITEM_RECOVER_PARALYSIS (1 << 1)
#define ITEM_RECOVER_FREEZE    (1 << 2)
#define ITEM_RECOVER_BURN      (1 << 3)
#define ITEM_RECOVER_POISON    (1 << 4)
#define ITEM_RECOVER_SLEEP     (1 << 5)
#define ITEM_RECOVER_FULL      (ITEM_RECOVER_SLEEP \
    | ITEM_RECOVER_POISON                          \
    | ITEM_RECOVER_BURN                            \
    | ITEM_RECOVER_FREEZE                          \
    | ITEM_RECOVER_PARALYSIS)

#define FIRST_MAIL_IDX  ITEM_GRASS_MAIL
#define LAST_MAIL_IDX   ITEM_BRICK_MAIL
#define NUM_MAILS       (LAST_MAIL_IDX - FIRST_MAIL_IDX + 1)
#define MAIL_ID(__name) (ITEM_##__name##_MAIL - FIRST_MAIL_IDX)

#define FIRST_BERRY_IDX  ITEM_CHERI_BERRY
#define LAST_BERRY_IDX   ITEM_ROWAP_BERRY
#define NUM_BERRIES      (LAST_BERRY_IDX - FIRST_BERRY_IDX + 1)
#define BERRY_ID(__name) (ITEM_##__name##_BERRY - FIRST_BERRY_IDX)
#define BERRY_ID_NONE    0xFF

#define FIRST_TMHM_IDX  ITEM_TM01
#define LAST_TMHM_IDX   ITEM_HM08
#define TMHM_ID(__tmhm) (ITEM_##__tmhm - FIRST_TMHM_IDX)

#define FIRST_TM_IDX FIRST_TMHM_IDX
#define FIRST_HM_IDX ITEM_HM01
#define LAST_TM_IDX  ITEM_TM92
#define LAST_HM_IDX  LAST_TMHM_IDX

#define NUM_TMS   (LAST_TM_IDX - FIRST_TM_IDX + 1)
#define NUM_HMS   (LAST_HM_IDX - FIRST_HM_IDX + 1)
#define NUM_TMHMS (NUM_TMS + NUM_HMS)

#define NUM_ITEMS MAX_ITEMS - 1

#define FLING_EFFECT_NONE              0
#define FLING_EFFECT_PRZ_RESTORE       1
#define FLING_EFFECT_SLP_RESTORE       2
#define FLING_EFFECT_PSN_RESTORE       3
#define FLING_EFFECT_BRN_RESTORE       4
#define FLING_EFFECT_FRZ_RESTORE       5
#define FLING_EFFECT_PP_RESTORE        6
#define FLING_EFFECT_HP_RESTORE        7
#define FLING_EFFECT_CNF_RESTORE       8
#define FLING_EFFECT_ALL_RESTORE       9
#define FLING_EFFECT_HP_PCT_RESTORE    10
#define FLING_EFFECT_HP_RESTORE_SPICY  11
#define FLING_EFFECT_HP_RESTORE_DRY    12
#define FLING_EFFECT_HP_RESTORE_SWEET  13
#define FLING_EFFECT_HP_RESTORE_BITTER 14
#define FLING_EFFECT_HP_RESTORE_SOUR   15
#define FLING_EFFECT_ATK_UP            16
#define FLING_EFFECT_DEF_UP            17
#define FLING_EFFECT_SPEED_UP          18
#define FLING_EFFECT_SPATK_UP          19
#define FLING_EFFECT_SPDEF_UP          20
#define FLING_EFFECT_CRIT_UP           21
#define FLING_EFFECT_RANDOM_UP2        22
#define FLING_EFFECT_TEMP_ACC_UP       23
#define FLING_EFFECT_STATDOWN_RESTORE  24
#define FLING_EFFECT_HEAL_INFATUATION  25
#define FLING_EFFECT_FLINCH            26
#define FLING_EFFECT_PARALYZE          27
#define FLING_EFFECT_POISON            28
#define FLING_EFFECT_BADLY_POISON      29
#define FLING_EFFECT_BURN              30

#define PLUCK_EFFECT_NONE              0
#define PLUCK_EFFECT_PRZ_RESTORE       1
#define PLUCK_EFFECT_SLP_RESTORE       2
#define PLUCK_EFFECT_PSN_RESTORE       3
#define PLUCK_EFFECT_BRN_RESTORE       4
#define PLUCK_EFFECT_FRZ_RESTORE       5
#define PLUCK_EFFECT_PP_RESTORE        6
#define PLUCK_EFFECT_HP_RESTORE        7
#define PLUCK_EFFECT_CNF_RESTORE       8
#define PLUCK_EFFECT_ALL_RESTORE       9
#define PLUCK_EFFECT_HP_PCT_RESTORE    10
#define PLUCK_EFFECT_HP_RESTORE_SPICY  11
#define PLUCK_EFFECT_HP_RESTORE_DRY    12
#define PLUCK_EFFECT_HP_RESTORE_SWEET  13
#define PLUCK_EFFECT_HP_RESTORE_BITTER 14
#define PLUCK_EFFECT_HP_RESTORE_SOUR   15
#define PLUCK_EFFECT_ATK_UP            16
#define PLUCK_EFFECT_DEF_UP            17
#define PLUCK_EFFECT_SPEED_UP          18
#define PLUCK_EFFECT_SPATK_UP          19
#define PLUCK_EFFECT_SPDEF_UP          20
#define PLUCK_EFFECT_CRIT_UP           21
#define PLUCK_EFFECT_RANDOM_UP2        22
#define PLUCK_EFFECT_TEMP_ACC_UP       23

#define ITEM_RETURN_ID 0xFFFF
#define SHOP_ITEM_END  (ITEM_RETURN_ID)

#endif // POKEPLATINUM_CONSTANTS_ITEMS_H
