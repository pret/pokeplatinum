#include "battle/ov16_02264798.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/battle_system.h"

#include "battle/battle_system.h"
#include "battle/struct_ov16_0225BFFC_decl.h"
#include "battle/struct_ov16_0225BFFC_t.h"

#include "math_util.h"
#include "pokemon_sprite.h"
#include "sys_task.h"
#include "sys_task_manager.h"

static void ov16_02264800(SysTask *param0, void *param1);

void ov16_02264798(BattlerData *param0, BattleSystem *battleSys)
{
    if (param0->unk_194 != NULL) {
        return;
    }

    if (BattleSystem_GetBattleType(battleSys) & (BATTLE_TYPE_SAFARI | BATTLE_TYPE_PAL_PARK)) {
        return;
    }

    param0->unk_198 = 180;
    param0->unk_194 = SysTask_Start(ov16_02264800, param0, 1010);
}

void ov16_022647D8(BattlerData *param0)
{
    if (param0->unk_194 == NULL) {
        return;
    }

    SysTask_Done(param0->unk_194);

    param0->unk_194 = NULL;
    param0->unk_198 = 0;

    PokemonSprite_SetAttribute(param0->unk_20, MON_SPRITE_Y_OFFSET, 0);
}

static void ov16_02264800(SysTask *param0, void *param1)
{
    BattlerData *v0 = param1;
    int v1;

    v0->unk_198 += 20;

    if (v0->unk_198 >= 360) {
        v0->unk_198 -= 360;
    }

    v1 = FX_Mul(CalcSineDegrees(v0->unk_198), 0x1800) / FX32_ONE;
    PokemonSprite_SetAttribute(v0->unk_20, MON_SPRITE_Y_OFFSET, v1);
}
