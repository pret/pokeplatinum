#include "overlay012/ov12_0222E784.h"

#include "constants/battle.h"
#include "constants/battle/battle_anim.h"

#include "overlay012/battle_anim_system.h"
#include "overlay012/ov12_02225864.h"
#include "overlay012/ov12_02235254.h"

#include "pokemon_sprite.h"
#include "sprite_system.h"
#include "sys_task_manager.h"

enum {
    DEFENDER = 0,
    DEFENDER_PARTNER,
    DEFENDER_COUNT,
};

typedef struct MimicContext {
    BattleAnimScriptFuncCommon common;
    BattleAnimSpriteInfo defenderSprite;
    BattleAnimSpriteInfo opponentSprites[DEFENDER_COUNT];
    s16 defenderY;
    s16 defenderHeight;
    s16 unused;
    XYTransformContext scale;
} MimicContext;

#define MIMIC_SCALE_X      20
#define MIMIC_SCALE_Y      20
#define MIMIC_SCALE_FRAMES 10

static void BattleAnimTask_Mimic(SysTask *task, void *param)
{
    MimicContext *ctx = param;

    switch (ctx->common.state) {
    case 0: {
        if (ScaleLerpContext_UpdateXY(&ctx->scale) == FALSE) {
            ManagedSprite_SetDrawFlag(ctx->defenderSprite.hwSprite, FALSE);
            ManagedSprite_SetDrawFlag(ctx->opponentSprites[DEFENDER].hwSprite, FALSE);
            ManagedSprite_SetDrawFlag(ctx->opponentSprites[DEFENDER].hwSprite, FALSE);

            BattleAnimSystem_EndAnimTask(ctx->common.battleAnimSystem, task);
            BattleAnimUtil_Free(ctx);
            ctx = NULL;

            return;
        }

        f32 scaleX, scaleY;
        ScaleLerpContext_GetAffineScale(&ctx->scale, &scaleX, &scaleY);
        ManagedSprite_SetAffineScale(ctx->defenderSprite.hwSprite, scaleX, scaleY);
        BattleAnimUtil_SetSpriteAnchoredPosition(
            ctx->defenderSprite.hwSprite,
            ctx->defenderY,
            ctx->defenderHeight,
            ctx->scale.data[XY_PARAM_CUR_Y],
            BATTLE_ANIM_ANCHOR_BOTTOM);
    } break;
    default:
        return;
    }

    ManagedSprite_TickFrame(ctx->defenderSprite.hwSprite);
    ManagedSprite_TickFrame(ctx->opponentSprites[DEFENDER].hwSprite);
    ManagedSprite_TickFrame(ctx->opponentSprites[DEFENDER_PARTNER].hwSprite);
    SpriteSystem_DrawSprites(ctx->common.pokemonSpriteManager);
}

void BattleAnimScriptFunc_Mimic(BattleAnimSystem *system)
{
    MimicContext *ctx = BattleAnimUtil_Alloc(system, sizeof(MimicContext));

    BattleAnimSystem_GetCommonData(system, &ctx->common);

    ctx->defenderSprite.monSprite = BattleAnimSystem_GetBattlerSprite(ctx->common.battleAnimSystem, BattleAnimSystem_GetDefender(ctx->common.battleAnimSystem));
    ctx->defenderY = PokemonSprite_GetAttribute(ctx->defenderSprite.monSprite, MON_SPRITE_Y_CENTER);
    ctx->unused = ctx->defenderY;
    ctx->defenderHeight = BattleAnimSystem_GetBattlerSpriteHeight(ctx->common.battleAnimSystem, BattleAnimSystem_GetDefender(ctx->common.battleAnimSystem));
    ctx->defenderSprite.hwSprite = BattleAnimSystem_GetPokemonSprite(system, BATTLE_ANIM_MON_SPRITE_0);
    ctx->opponentSprites[DEFENDER].hwSprite = BattleAnimSystem_GetPokemonSprite(system, BATTLE_ANIM_MON_SPRITE_1);
    ctx->opponentSprites[DEFENDER_PARTNER].hwSprite = BattleAnimSystem_GetPokemonSprite(system, BATTLE_ANIM_MON_SPRITE_2);

    ManagedSprite_SetAffineOverwriteMode(ctx->defenderSprite.hwSprite, AFFINE_OVERWRITE_MODE_DOUBLE);
    ManagedSprite_SetExplicitPriority(ctx->defenderSprite.hwSprite, BattleAnimSystem_GetPokemonSpritePriority(system));
    ManagedSprite_SetExplicitPriority(ctx->opponentSprites[DEFENDER].hwSprite, BattleAnimSystem_GetPokemonSpritePriority(system));
    ManagedSprite_SetExplicitPriority(ctx->opponentSprites[DEFENDER_PARTNER].hwSprite, BattleAnimSystem_GetPokemonSpritePriority(system));

    int defenderType = BattleAnimSystem_GetBattlerType(ctx->common.battleAnimSystem, BattleAnimSystem_GetDefender(ctx->common.battleAnimSystem));
    if (defenderType == BATTLER_TYPE_ENEMY_SIDE_SLOT_1 || defenderType == BATTLER_TYPE_PLAYER_SIDE_SLOT_2) {
        ManagedSprite_SetPriority(ctx->defenderSprite.hwSprite, 30);
        ManagedSprite_SetPriority(ctx->opponentSprites[DEFENDER].hwSprite, 50);
        ManagedSprite_SetPriority(ctx->opponentSprites[DEFENDER_PARTNER].hwSprite, 70);
    } else {
        ManagedSprite_SetPriority(ctx->defenderSprite.hwSprite, 60);
        ManagedSprite_SetPriority(ctx->opponentSprites[DEFENDER].hwSprite, 70);
        ManagedSprite_SetPriority(ctx->opponentSprites[DEFENDER_PARTNER].hwSprite, 50);
    }

    ScaleLerpContext_InitXY(
        &ctx->scale,
        BASE_SCALE_XY,
        MIMIC_SCALE_X,
        BASE_SCALE_XY,
        MIMIC_SCALE_Y,
        BASE_SCALE_XY,
        MIMIC_SCALE_FRAMES);

    BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSystem, BattleAnimTask_Mimic, ctx);
}
