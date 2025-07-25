#include "overlay012/ov12_0222E784.h"

#include <nitro.h>
#include <string.h>

#include "overlay012/battle_anim_system.h"
#include "overlay012/ov12_02225864.h"
#include "overlay012/ov12_02235254.h"

#include "pokemon_sprite.h"
#include "sprite_system.h"
#include "sys_task_manager.h"

typedef struct {
    BattleAnimScriptFuncCommon unk_00;
    BattleAnimSpriteInfo unk_1C;
    BattleAnimSpriteInfo unk_30[2];
    s16 unk_58;
    s16 unk_5A;
    s16 unk_5C;
    XYTransformContext unk_60;
} UnkStruct_ov12_0222E784;

static void ov12_0222E784(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222E784 *v0 = (UnkStruct_ov12_0222E784 *)param1;

    switch (v0->unk_00.state) {
    case 0:
        if (ScaleLerpContext_UpdateXY(&v0->unk_60) == 0) {
            ManagedSprite_SetDrawFlag(v0->unk_1C.hwSprite, 0);
            ManagedSprite_SetDrawFlag(v0->unk_30[0].hwSprite, 0);
            ManagedSprite_SetDrawFlag(v0->unk_30[0].hwSprite, 0);

            BattleAnimSystem_EndAnimTask(v0->unk_00.battleAnimSystem, param0);
            ov12_02235E80(v0);
            (v0) = NULL;

            return;
        }

        {
            f32 v1, v2;

            BattleAnimUtil_ConvertRelativeToAffineScale(&v0->unk_60, &v1, &v2);
            ManagedSprite_SetAffineScale(v0->unk_1C.hwSprite, v1, v2);
            BattleAnimUtil_SetSpriteAnchoredPosition(v0->unk_1C.hwSprite, v0->unk_58, v0->unk_5A, v0->unk_60.data[4], 0);
        }
        break;
    default:
        return;
    }

    ManagedSprite_TickFrame(v0->unk_1C.hwSprite);
    ManagedSprite_TickFrame(v0->unk_30[0].hwSprite);
    ManagedSprite_TickFrame(v0->unk_30[1].hwSprite);
    SpriteSystem_DrawSprites(v0->unk_00.pokemonSpriteManager);
}

void ov12_0222E810(BattleAnimSystem *param0)
{
    UnkStruct_ov12_0222E784 *v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_0222E784));

    BattleAnimSystem_GetCommonData(param0, &v0->unk_00);

    v0->unk_1C.monSprite = BattleAnimSystem_GetBattlerSprite(v0->unk_00.battleAnimSystem, BattleAnimSystem_GetDefender(v0->unk_00.battleAnimSystem));
    v0->unk_58 = PokemonSprite_GetAttribute(v0->unk_1C.monSprite, MON_SPRITE_Y_CENTER);
    v0->unk_5C = v0->unk_58;
    v0->unk_5A = BattleAnimSystem_GetBattlerSpriteHeight(v0->unk_00.battleAnimSystem, BattleAnimSystem_GetDefender(v0->unk_00.battleAnimSystem));
    v0->unk_1C.hwSprite = BattleAnimSystem_GetPokemonSprite(param0, 0);
    v0->unk_30[0].hwSprite = BattleAnimSystem_GetPokemonSprite(param0, 1);
    v0->unk_30[1].hwSprite = BattleAnimSystem_GetPokemonSprite(param0, 2);

    ManagedSprite_SetAffineOverwriteMode(v0->unk_1C.hwSprite, AFFINE_OVERWRITE_MODE_DOUBLE);
    ManagedSprite_SetExplicitPriority(v0->unk_1C.hwSprite, BattleAnimSystem_GetPokemonSpritePriority(param0));
    ManagedSprite_SetExplicitPriority(v0->unk_30[0].hwSprite, BattleAnimSystem_GetPokemonSpritePriority(param0));
    ManagedSprite_SetExplicitPriority(v0->unk_30[1].hwSprite, BattleAnimSystem_GetPokemonSpritePriority(param0));

    {
        int v1;

        v1 = BattleAnimSystem_GetBattlerType(v0->unk_00.battleAnimSystem, BattleAnimSystem_GetDefender(v0->unk_00.battleAnimSystem));

        if ((v1 == 3) || (v1 == 4)) {
            ManagedSprite_SetPriority(v0->unk_1C.hwSprite, 30);
            ManagedSprite_SetPriority(v0->unk_30[0].hwSprite, 50);
            ManagedSprite_SetPriority(v0->unk_30[1].hwSprite, 70);
        } else {
            ManagedSprite_SetPriority(v0->unk_1C.hwSprite, 60);
            ManagedSprite_SetPriority(v0->unk_30[0].hwSprite, 70);
            ManagedSprite_SetPriority(v0->unk_30[1].hwSprite, 50);
        }
    }

    ScaleLerpContext_InitXY(&v0->unk_60, 100, 20, 100, 20, 100, 10);
    BattleAnimSystem_StartAnimTask(v0->unk_00.battleAnimSystem, ov12_0222E784, v0);
}
