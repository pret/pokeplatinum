#include "battle/ov16_02264798.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/battle_system.h"
#include "struct_defs/battler_data.h"

#include "battle/battle_system.h"

#include "math_util.h"
#include "pokemon_sprite.h"
#include "sys_task.h"
#include "sys_task_manager.h"

static void ov16_02264800(SysTask *param0, void *param1);

void ov16_02264798(BattlerData *battlerData, BattleSystem *battleSys)
{
    if (battlerData->sysTask != NULL) {
        return;
    }

    if (BattleSystem_GetBattleType(battleSys) & (BATTLE_TYPE_SAFARI | BATTLE_TYPE_PAL_PARK)) {
        return;
    }

    battlerData->degrees = 180;
    battlerData->sysTask = SysTask_Start(ov16_02264800, battlerData, 1010);
}

void ov16_022647D8(BattlerData *battlerData)
{
    if (battlerData->sysTask == NULL) {
        return;
    }

    SysTask_Done(battlerData->sysTask);

    battlerData->sysTask = NULL;
    battlerData->degrees = 0;

    PokemonSprite_SetAttribute(battlerData->monSprite, MON_SPRITE_Y_OFFSET, 0);
}

static void ov16_02264800(SysTask *param0, void *param1)
{
    BattlerData *battlerData = param1;
    int v1;

    battlerData->degrees += 20;

    if (battlerData->degrees >= 360) {
        battlerData->degrees -= 360;
    }

    v1 = FX_Mul(CalcSineDegrees(battlerData->degrees), 0x1800) / FX32_ONE;
    PokemonSprite_SetAttribute(battlerData->monSprite, MON_SPRITE_Y_OFFSET, v1);
}
