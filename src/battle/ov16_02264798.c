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

static void SysTask_IdleBounceAnim(SysTask *sysTask, void *battlerDataPtr);

void BattlerData_StartIdleBounceAnim(BattlerData *battlerData, BattleSystem *battleSys)
{
    if (battlerData->sysTask != NULL) {
        return;
    }

    if (BattleSystem_GetBattleType(battleSys) & (BATTLE_TYPE_SAFARI | BATTLE_TYPE_PAL_PARK)) {
        return;
    }

    battlerData->degrees = 180;
    battlerData->sysTask = SysTask_Start(SysTask_IdleBounceAnim, battlerData, 1010);
}

void BattlerData_StopIdleBounceAnim(BattlerData *battlerData)
{
    if (battlerData->sysTask == NULL) {
        return;
    }

    SysTask_Done(battlerData->sysTask);

    battlerData->sysTask = NULL;
    battlerData->degrees = 0;

    PokemonSprite_SetAttribute(battlerData->monSprite, MON_SPRITE_Y_OFFSET, 0);
}

static void SysTask_IdleBounceAnim(SysTask *sysTask, void *battlerDataPtr)
{
    BattlerData *battlerData = battlerDataPtr;
    int offsetValue;

    battlerData->degrees += 20;

    if (battlerData->degrees >= 360) {
        battlerData->degrees -= 360;
    }

    offsetValue = FX_Mul(CalcSineDegrees(battlerData->degrees), 0x1800) / FX32_ONE;
    PokemonSprite_SetAttribute(battlerData->monSprite, MON_SPRITE_Y_OFFSET, offsetValue);
}
