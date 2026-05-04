#ifndef POKEPLATINUM_HEALTHBOX_H
#define POKEPLATINUM_HEALTHBOX_H

#include "struct_decls/battle_system.h"

#include "bg_window.h"
#include "narc.h"
#include "palette.h"
#include "sprite.h"
#include "sprite_system.h"
#include "sys_task_manager.h"

#define HEALTHBOX_INFO_NONE                   0
#define HEALTHBOX_INFO_HP_GAUGE               (1 << 0)
#define HEALTHBOX_INFO_CURRENT_HP             (1 << 1)
#define HEALTHBOX_INFO_MAX_HP                 (1 << 2)
#define HEALTHBOX_INFO_LEVEL                  (1 << 3)
#define HEALTHBOX_INFO_NAME                   (1 << 4)
#define HEALTHBOX_INFO_EXP_GAUGE              (1 << 5)
#define HEALTHBOX_INFO_GENDER                 (1 << 6)
#define HEALTHBOX_INFO_LEVEL_TEXT             (1 << 7)
#define HEALTHBOX_INFO_STATUS                 (1 << 8)
#define HEALTHBOX_INFO_CAUGHT_SPECIES         (1 << 9)
#define HEALTHBOX_INFO_COUNT_SAFARI_BALLS     (1 << 10)
#define HEALTHBOX_INFO_REMAINING_SAFARI_BALLS (1 << 11)
#define HEALTHBOX_INFO_COUNT_PARK_BALLS       (1 << 12)
#define HEALTHBOX_INFO_REMAINING_PARK_BALLS   (1 << 13)

#define HEALTHBOX_INFO_ALL ~0

#define HEALTHBOX_INFO_ALL_SAFARI   (HEALTHBOX_INFO_COUNT_SAFARI_BALLS | HEALTHBOX_INFO_REMAINING_SAFARI_BALLS)
#define HEALTHBOX_INFO_ALL_PARK     (HEALTHBOX_INFO_COUNT_PARK_BALLS | HEALTHBOX_INFO_REMAINING_PARK_BALLS)
#define HEALTHBOX_INFO_NOT_ON_ENEMY (HEALTHBOX_INFO_CURRENT_HP | HEALTHBOX_INFO_MAX_HP | HEALTHBOX_INFO_EXP_GAUGE)

enum HealthBoxType {
    HEALTHBOX_TYPE_PLAYER_SOLO = 0,
    HEALTHBOX_TYPE_ENEMY_SOLO,
    HEALTHBOX_TYPE_PLAYER_SLOT_1,
    HEALTHBOX_TYPE_ENEMY_SLOT_1,
    HEALTHBOX_TYPE_PLAYER_SLOT_2,
    HEALTHBOX_TYPE_ENEMY_SLOT_2,
    HEALTHBOX_TYPE_SAFARI_ZONE,
    HEALTHBOX_TYPE_PAL_PARK,
};

enum HealthBoxScrollDirection {
    HEALTHBOX_SCROLL_IN = 0,
    HEALTHBOX_SCROLL_OUT,
};

enum HealthBoxGaugeType {
    HEALTHBOX_GAUGE_HP = 0,
    HEALTHBOX_GAUGE_EXP,
};

typedef struct HealthBox {
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
    SysTask *bobbingAnimTask;
    u16 degrees;
} HealthBox;

/**
 * @brief Load the resources required to display a healthbox.
 *
 * Though a NARC handle is required as a parameter, it is assumed to always be
 * an open handle to pl_batt_obj.narc.
 *
 * @param renderer
 * @param gfxHandler
 * @param narc
 * @param palette
 * @param healthbox
 */
void HealthBox_LoadResources(SpriteSystem *spriteSys, SpriteManager *spriteMan, NARC *narc, PaletteData *palette, enum HealthBoxType healthbox);
ManagedSprite *HealthBox_DrawSprite(SpriteSystem *spriteSys, SpriteManager *spriteMan, int type);

/**
 * @brief Draw the informational parts of the healthbox, according to a set
 * of input flags which control exactly what components to draw.
 *
 * @param healthbox
 * @param hp        The battler's current HP
 * @param flags     The components to be drawn, as a bitmask.
 */
void HealthBox_DrawInfo(HealthBox *healthbox, u32 hp, u32 flags);
void Healthbox_DeleteMainSprite(HealthBox *healthbox);
void Healthbox_UnloadMainSpriteObjects(HealthBox *healthbox);
void Healthbox_CreateMainSprite(HealthBox *healthbox);
void Healthbox_DestroySprites(HealthBox *healthbox);
void Healthbox_ToggleHPDisplayMode(HealthBox *healthbox);

/**
 * @brief Compute the battler's new HP after taking a given amount of
 * damage or restoring a certain amount of health. Additionally, cache
 * this difference, flooring it to the bounds of the battler's current
 * and maximum HP.
 *
 * @param healthbox
 * @param damage    The amount of damage dealt to a battler. Negative
 *                  values are damage, positive values are recovery.
 */
void HealthBox_CalcHP(HealthBox *healthbox, int damage);
s32 Healthbox_DrawHPBar(HealthBox *healthbox);
void HealthBox_CalcExp(HealthBox *healthbox, int expReward);
s32 Healthbox_DrawExpBar(HealthBox *healthbox);
void Healthbox_Activate(HealthBox *healthbox);
void Healthbox_Deactivate(HealthBox *healthbox);
void Healthbox_SetExplicitPriority(HealthBox *healthbox, int priority);

/**
 * @brief Enable (or disable) the healthbox.
 *
 * @param healthbox
 * @param enable    If TRUE, enable the healthbox; otherwise, disable it.
 */
void HealthBox_Enable(HealthBox *healthbox, BOOL enable);

/**
 * @brief Offset the healthbox's position by a given value along the X and Y axes.
 *
 * @param healthbox
 * @param x         X-axis offset for the healthbox from its current position.
 * @param y         Y-axis offset for the healthbox from its current position.
 */
void HealthBox_OffsetPositionXY(HealthBox *healthbox, int x, int y);

/**
 * @brief Scroll the healthbox in or out.
 *
 * @param healthbox
 * @param direction The direction to scroll the healthbox.
 */
void HealthBox_Scroll(HealthBox *healthbox, enum HealthBoxScrollDirection direction);

/**
 * @brief Determine the type of healthbox to be displayed for a given battler type
 * (solo player, solo enemy, or any slot in doubles) and battle type.
 *
 * Pal Park and Safari Zone use a different healthbox type than normal battles.
 *
 * @param battlerType   The type of battler which the healthbox represents.
 * @param battleType    The type of battle in which the healthbox will be used.
 * @return              The resulting healthbox type; see enum HealthBoxType.
 */
u8 HealthBox_Type(int battlerType, u32 battleType);
void Healthbox_StartLevelUpFlash(HealthBox *healthbox, u8 *param1);
void ov16_02268468(HealthBox *healthbox);
void ov16_0226846C(HealthBox *healthbox);
void Healthbox_StartBobAnimation(HealthBox *healthbox);
void Healthbox_StopBobAnimation(HealthBox *healthbox);

#endif // POKEPLATINUM_HEALTHBOX_H
