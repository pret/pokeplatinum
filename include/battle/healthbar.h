#ifndef POKEPLATINUM_OV16_02266F1C_H
#define POKEPLATINUM_OV16_02266F1C_H

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/cell_actor_data.h"
#include "overlay016/struct_ov16_022674C4.h"

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

void ov16_02266F1C(SpriteRenderer * param0, SpriteGfxHandler * param1, NARC * param2, PaletteData * param3, int param4);
CellActorData * ov16_02267060(SpriteRenderer * param0, SpriteGfxHandler * param1, int param2);
void Healthbar_Draw(Healthbar * param0, u32 param1, u32 param2);
void ov16_02267220(Healthbar * param0);
void ov16_02267258(Healthbar * param0);
void ov16_022672C4(Healthbar * param0);
void ov16_02267360(Healthbar * param0);
void ov16_0226737C(Healthbar * param0);
void ov16_022674C4(Healthbar * param0, int param1);
s32 ov16_022674F8(Healthbar * param0);
void ov16_0226752C(Healthbar * param0, int param1);
s32 ov16_02267560(Healthbar * param0);
void ov16_0226757C(Healthbar * param0);
void ov16_022675AC(Healthbar * param0);
void ov16_022675D8(Healthbar * param0, int param1);
void Healthbar_Enable(Healthbar * param0, int param1);
void ov16_0226763C(Healthbar * param0, int param1, int param2);
void Healthbar_SetScrollEffect(Healthbar * param0, int param1);

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
