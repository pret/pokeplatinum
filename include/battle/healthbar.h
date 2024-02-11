#ifndef POKEPLATINUM_OV16_02266F1C_H
#define POKEPLATINUM_OV16_02266F1C_H

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/cell_actor_data.h"
#include "overlay016/struct_ov16_022674C4.h"

#define HEALTHBAR_INFO_NONE                     0
#define HEALTHBAR_INFO_HP_GAUGE                 (1 << 0)
#define HEALTHBAR_INFO_CURRENT_HP               (1 << 1)
#define HEALTHBAR_INFO_MAX_HP                   (1 << 2)
#define HEALTHBAR_INFO_LEVEL                    (1 << 3)
#define HEALTHBAR_INFO_NAME                     (1 << 4)
#define HEALTHBAR_INFO_EXP_GAUGE                (1 << 5)
#define HEALTHBAR_INFO_GENDER                   (1 << 6)
#define HEALTHBAR_INFO_LEVEL_TEXT               (1 << 7)
#define HEALTHBAR_INFO_STATUS                   (1 << 8)
#define HEALTHBAR_INFO_CAUGHT_SPECIES           (1 << 9)
#define HEALTHBAR_INFO_COUNT_SAFARI_BALLS       (1 << 10)
#define HEALTHBAR_INFO_REMAINING_SAFARI_BALLS   (1 << 11)
#define HEALTHBAR_INFO_COUNT_PARK_BALLS         (1 << 12)
#define HEALTHBAR_INFO_REMAINING_PARK_BALLS     (1 << 13)

#define HEALTHBAR_INFO_ALL ~0

#define HEALTHBAR_INFO_ALL_SAFARI       (HEALTHBAR_INFO_COUNT_SAFARI_BALLS | HEALTHBAR_INFO_REMAINING_SAFARI_BALLS)
#define HEALTHBAR_INFO_ALL_PARK         (HEALTHBAR_INFO_COUNT_PARK_BALLS | HEALTHBAR_INFO_REMAINING_PARK_BALLS)
#define HEALTHBAR_INFO_NOT_ON_ENEMY     (HEALTHBAR_INFO_CURRENT_HP | HEALTHBAR_INFO_MAX_HP | HEALTHBAR_INFO_EXP_GAUGE)

enum HealthbarType {
    HEALTHBAR_TYPE_PLAYER_SOLO = 0,
    HEALTHBAR_TYPE_ENEMY_SOLO,
    HEALTHBAR_TYPE_PLAYER_SLOT_1,
    HEALTHBAR_TYPE_ENEMY_SLOT_1,
    HEALTHBAR_TYPE_PLAYER_SLOT_2,
    HEALTHBAR_TYPE_ENEMY_SLOT_2,
    HEALTHBAR_TYPE_SAFARI_ZONE,
    HEALTHBAR_TYPE_PAL_PARK,
};

enum HealthbarScrollDirection {
    HEALTHBAR_SCROLL_IN = 0,
    HEALTHBAR_SCROLL_OUT,
};

enum HealthbarGaugeType {
    HEALTHBAR_GAUGE_HP = 0,
    HEALTHBAR_GAUGE_EXP,
};

void ov16_02266F1C(SpriteRenderer * param0, SpriteGfxHandler * param1, NARC * param2, PaletteData * param3, int param4);
CellActorData * ov16_02267060(SpriteRenderer * param0, SpriteGfxHandler * param1, int param2);

/**
 * @brief Draw the informational parts of the healthbar, according to a set
 * of input flags which control exactly what components to draw.
 * 
 * @param healthbar 
 * @param hp        The battler's current HP
 * @param flags     The components to be drawn, as a bitmask.
 */
void Healthbar_DrawInfo(Healthbar *healthbar, u32 hp, u32 flags);
void ov16_02267220(Healthbar * param0);
void ov16_02267258(Healthbar * param0);
void ov16_022672C4(Healthbar * param0);
void ov16_02267360(Healthbar * param0);
void ov16_0226737C(Healthbar * param0);

/**
 * @brief Compute the battler's new HP after taking a given amount of
 * damage or restoring a certain amount of health. Additionally, cache
 * this difference, flooring it to the bounds of the battler's current
 * and maximum HP.
 * 
 * @param healthbar 
 * @param damage    The amount of damage dealt to a battler. Negative
 *                  values are damage, positive values are recovery.
 */
void Healthbar_CalcHP(Healthbar *healthbar, int damage);
s32 ov16_022674F8(Healthbar * param0);
void Healthbar_CalcExp(Healthbar * param0, int param1);
s32 ov16_02267560(Healthbar * param0);
void ov16_0226757C(Healthbar * param0);
void ov16_022675AC(Healthbar * param0);
void ov16_022675D8(Healthbar * param0, int param1);

/**
 * @brief Enable (or disable) the healthbar.
 * 
 * @param battleSys 
 * @param enable    If TRUE, enable the healthbar; otherwise, disable it.
 */
void Healthbar_Enable(Healthbar *battleSys, BOOL enable);

/**
 * @brief Offset the healthbar's position by a given value along the X and Y axes.
 * 
 * @param healthbar 
 * @param x         X-axis offset for the healthbar from its current position.
 * @param y         Y-axis offset for the healthbar from its current position.
 */
void Healthbar_OffsetPositionXY(Healthbar *healthbar, int x, int y);

/**
 * @brief Scroll the healthbar in or out.
 * 
 * @param healthbar 
 * @param direction The direction to scroll the healthbar.
 */
void Healthbar_Scroll(Healthbar *healthbar, enum HealthbarScrollDirection direction);

/**
 * @brief Determine the type of healthbar to be displayed for a given battler type
 * (solo player, solo enemy, or any slot in doubles) and battle type.
 * 
 * Pal Park and Safari Zone use a different healthbar type than normal battles.
 * 
 * @param battlerType   The type of battler which the healthbar represents.
 * @param battleType    The type of battle in which the healthbar will be used.
 * @return              The resulting healthbar type; see enum HealthbarType.
 */
u8 Healthbar_Type(int battlerType, u32 battleType);
void ov16_0226834C(Healthbar * param0, u8 * param1);
void ov16_02268468(Healthbar * param0);
void ov16_0226846C(Healthbar * param0);
void ov16_02268470(Healthbar * param0);
void ov16_02268498(Healthbar * param0);

#endif // POKEPLATINUM_OV16_02266F1C_H
