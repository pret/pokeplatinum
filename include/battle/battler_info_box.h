#ifndef POKEPLATINUM_BATTLERINFOBOX_H
#define POKEPLATINUM_BATTLERINFOBOX_H

#include "struct_decls/battle_system.h"

#include "bg_window.h"
#include "narc.h"
#include "palette.h"
#include "sprite.h"
#include "sprite_system.h"
#include "sys_task_manager.h"

#define BATTLERINFOBOX_INFO_NONE                   0
#define BATTLERINFOBOX_INFO_HP_GAUGE               (1 << 0)
#define BATTLERINFOBOX_INFO_CURRENT_HP             (1 << 1)
#define BATTLERINFOBOX_INFO_MAX_HP                 (1 << 2)
#define BATTLERINFOBOX_INFO_LEVEL                  (1 << 3)
#define BATTLERINFOBOX_INFO_NAME                   (1 << 4)
#define BATTLERINFOBOX_INFO_EXP_GAUGE              (1 << 5)
#define BATTLERINFOBOX_INFO_GENDER                 (1 << 6)
#define BATTLERINFOBOX_INFO_LEVEL_TEXT             (1 << 7)
#define BATTLERINFOBOX_INFO_STATUS                 (1 << 8)
#define BATTLERINFOBOX_INFO_CAUGHT_SPECIES         (1 << 9)
#define BATTLERINFOBOX_INFO_COUNT_SAFARI_BALLS     (1 << 10)
#define BATTLERINFOBOX_INFO_REMAINING_SAFARI_BALLS (1 << 11)
#define BATTLERINFOBOX_INFO_COUNT_PARK_BALLS       (1 << 12)
#define BATTLERINFOBOX_INFO_REMAINING_PARK_BALLS   (1 << 13)

#define BATTLERINFOBOX_INFO_ALL ~0

#define BATTLERINFOBOX_INFO_ALL_SAFARI   (BATTLERINFOBOX_INFO_COUNT_SAFARI_BALLS | BATTLERINFOBOX_INFO_REMAINING_SAFARI_BALLS)
#define BATTLERINFOBOX_INFO_ALL_PARK     (BATTLERINFOBOX_INFO_COUNT_PARK_BALLS | BATTLERINFOBOX_INFO_REMAINING_PARK_BALLS)
#define BATTLERINFOBOX_INFO_NOT_ON_ENEMY (BATTLERINFOBOX_INFO_CURRENT_HP | BATTLERINFOBOX_INFO_MAX_HP | BATTLERINFOBOX_INFO_EXP_GAUGE)

enum BattlerInfoBoxType {
    BATTLERINFOBOX_TYPE_PLAYER_SOLO = 0,
    BATTLERINFOBOX_TYPE_ENEMY_SOLO,
    BATTLERINFOBOX_TYPE_PLAYER_SLOT_1,
    BATTLERINFOBOX_TYPE_ENEMY_SLOT_1,
    BATTLERINFOBOX_TYPE_PLAYER_SLOT_2,
    BATTLERINFOBOX_TYPE_ENEMY_SLOT_2,
    BATTLERINFOBOX_TYPE_SAFARI_ZONE,
    BATTLERINFOBOX_TYPE_PAL_PARK,
};

enum BattlerInfoBoxScrollDirection {
    BATTLERINFOBOX_SCROLL_IN = 0,
    BATTLERINFOBOX_SCROLL_OUT,
};

enum BattlerInfoBoxGaugeType {
    BATTLERINFOBOX_GAUGE_HP = 0,
    BATTLERINFOBOX_GAUGE_EXP,
};

typedef struct BattlerInfoBox {
    u8 state;
    ManagedSprite *mainSprite;
    ManagedSprite *arrowSprite;
    BattleSystem *battleSys;
    SysTask *task_10;
    Window unused_14;
    u8 battler;
    u8 type;
    u8 selectedPartySlot;
    u8 numSafariBalls;
    s32 curHP;
    s32 maxHP;
    s32 damage;
    s32 hpTemp;
    s32 curExp;
    s32 maxExp;
    s32 expReward;
    s32 expTemp;
    u8 level;
    u8 gender;
    u8 status;
    u8 caughtSpecies;
    u8 command;
    u8 delay;
    u8 unk_4E;
    u8 scrollDirection : 1;
    u8 doneScrolling : 1;
    u8 unused_4F_2 : 1;
    u8 numberMode : 1;
    u8 padding : 4;
    SysTask *task_50;
    u16 degrees;
} BattlerInfoBox;

/**
 * @brief Load the resources required to display a battlerInfoBox.
 *
 * Though a NARC handle is required as a parameter, it is assumed to always be
 * an open handle to pl_batt_obj.narc.
 *
 * @param renderer
 * @param gfxHandler
 * @param narc
 * @param palette
 * @param battlerInfoBox
 */
void BattlerInfoBox_LoadResources(SpriteSystem *spriteSys, SpriteManager *spriteMan, NARC *narc, PaletteData *palette, enum BattlerInfoBoxType battlerInfoBox);
ManagedSprite *BattlerInfoBox_DrawSprite(SpriteSystem *spriteSys, SpriteManager *spriteMan, int type);

/**
 * @brief Draw the informational parts of the battlerInfoBox, according to a set
 * of input flags which control exactly what components to draw.
 *
 * @param battlerInfoBox
 * @param hp        The battler's current HP
 * @param flags     The components to be drawn, as a bitmask.
 */
void BattlerInfoBox_DrawInfo(BattlerInfoBox *battlerInfoBox, u32 hp, u32 flags);
void ov16_02267220(BattlerInfoBox *battlerInfoBox);
void ov16_02267258(BattlerInfoBox *battlerInfoBox);
void ov16_022672C4(BattlerInfoBox *battlerInfoBox);
void ov16_02267360(BattlerInfoBox *battlerInfoBox);
void ov16_0226737C(BattlerInfoBox *battlerInfoBox);

/**
 * @brief Compute the battler's new HP after taking a given amount of
 * damage or restoring a certain amount of health. Additionally, cache
 * this difference, flooring it to the bounds of the battler's current
 * and maximum HP.
 *
 * @param battlerInfoBox
 * @param damage    The amount of damage dealt to a battler. Negative
 *                  values are damage, positive values are recovery.
 */
void BattlerInfoBox_CalcHP(BattlerInfoBox *battlerInfoBox, int damage);
s32 ov16_022674F8(BattlerInfoBox *battlerInfoBox);
void BattlerInfoBox_CalcExp(BattlerInfoBox *battlerInfoBox, int expReward);
s32 ov16_02267560(BattlerInfoBox *battlerInfoBox);
void ov16_0226757C(BattlerInfoBox *battlerInfoBox);
void ov16_022675AC(BattlerInfoBox *battlerInfoBox);
void ov16_022675D8(BattlerInfoBox *battlerInfoBox, int priority);

/**
 * @brief Enable (or disable) the battlerInfoBox.
 *
 * @param battlerInfoBox
 * @param enable    If TRUE, enable the battlerInfoBox; otherwise, disable it.
 */
void BattlerInfoBox_Enable(BattlerInfoBox *battlerInfoBox, BOOL enable);

/**
 * @brief Offset the battlerInfoBox's position by a given value along the X and Y axes.
 *
 * @param battlerInfoBox
 * @param x         X-axis offset for the battlerInfoBox from its current position.
 * @param y         Y-axis offset for the battlerInfoBox from its current position.
 */
void BattlerInfoBox_OffsetPositionXY(BattlerInfoBox *battlerInfoBox, int x, int y);

/**
 * @brief Scroll the battlerInfoBox in or out.
 *
 * @param battlerInfoBox
 * @param direction The direction to scroll the battlerInfoBox.
 */
void BattlerInfoBox_Scroll(BattlerInfoBox *battlerInfoBox, enum BattlerInfoBoxScrollDirection direction);

/**
 * @brief Determine the type of battlerInfoBox to be displayed for a given battler type
 * (solo player, solo enemy, or any slot in doubles) and battle type.
 *
 * Pal Park and Safari Zone use a different battlerInfoBox type than normal battles.
 *
 * @param battlerType   The type of battler which the battlerInfoBox represents.
 * @param battleType    The type of battle in which the battlerInfoBox will be used.
 * @return              The resulting battlerInfoBox type; see enum BattlerInfoBoxType.
 */
u8 BattlerInfoBox_Type(int battlerType, u32 battleType);
void ov16_0226834C(BattlerInfoBox *battlerInfoBox, u8 *param1);
void ov16_02268468(BattlerInfoBox *battlerInfoBox);
void ov16_0226846C(BattlerInfoBox *battlerInfoBox);
void ov16_02268470(BattlerInfoBox *battlerInfoBox);
void ov16_02268498(BattlerInfoBox *battlerInfoBox);

#endif // POKEPLATINUM_BATTLERINFOBOX_H
