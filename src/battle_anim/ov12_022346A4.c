#include "battle_anim/ov12_022346A4.h"

#include <nitro.h>
#include <string.h>

#include "battle_anim/battle_anim_helpers.h"
#include "battle_anim/battle_anim_system.h"
#include "battle_anim/battle_anim_util.h"

#include "heap.h"
#include "pokemon_sprite.h"
#include "sprite.h"
#include "sprite_system.h"
#include "sys_task_manager.h"

typedef struct {
    BattleAnimSystem *battleAnimSys;
    int state;
    int unk_08;
    SpriteManager *spriteMan;
    int unk_10;
    ManagedSprite *managedSprite[2];
    XYTransformContext posCtx[2];
    XYTransformContext scaleCtx[2];
} UnkStruct_ov12_022346A4;

typedef struct {
    BattleAnimSystem *battleAnimSys;
    int state;
    int explicitOffset;
    SpriteManager *spriteMan;
    ManagedSprite *managedSprite;
    AlphaFadeContext alphaFadeCtx;
} UnkStruct_ov12_022348C8;

typedef struct {
    BattleAnimSystem *battleAnimSys;
    int state;
    SpriteManager *spriteMan;
    ManagedSprite *managedSprite[6];
    int unk_24[6];
    int unk_3C[6];
} UnkStruct_ov12_02234A10;

typedef struct {
    BattleAnimSystem *battleAnimSys;
    SpriteSystem *spriteSys;
    SpriteManager *spriteMan;
    int state;
    int unk_10;
    int unk_14;
    ManagedSprite *managedSprite[6];
    XYTransformContext transformCtx[6];
    AlphaFadeContext alphaFadeCtx;
    s16 posX;
    s16 posY;
} UnkStruct_ov12_02234BD8;

static void ov12_02234750(SysTask *task, void *param1);
static void ov12_0223483C(ManagedSprite *managedSprite, XYTransformContext *posCtx, XYTransformContext *scaleCtx, int param3);
static BOOL ov12_0223489C(ManagedSprite *managedSprite, XYTransformContext *posCtx, XYTransformContext *scaleCtx);
static void ov12_02234918(SysTask *task, void *param1);
static void ov12_02234B64(SysTask *task, void *param1);
static BOOL ov12_02234B34(ManagedSprite *managedSprite, int *param1, int *param2);
static void ov12_02234AE0(ManagedSprite *managedSprite, int *param1, int *param2, int param3, int param4);
static void ov12_02234CA8(SysTask *task, void *param1);

void ov12_022346A4(BattleAnimSystem *battleAnimSys, SpriteSystem *spriteSys, SpriteManager *spriteMan, ManagedSprite *managedSprite)
{
    SpriteTemplate spriteTemplate;

    UnkStruct_ov12_022346A4 *v1 = BattleAnimUtil_Alloc(battleAnimSys, sizeof(UnkStruct_ov12_022346A4));

    v1->battleAnimSys = battleAnimSys;
    v1->spriteMan = spriteMan;

    int attacker = BattleAnimSystem_GetAttacker(battleAnimSys);
    v1->unk_10 = BattleAnimUtil_GetTransformDirectionX(battleAnimSys, attacker);

    spriteTemplate = BattleAnimSystem_GetLastSpriteTemplate(v1->battleAnimSys);
    spriteTemplate.x = BattleAnimUtil_GetBattlerPos(battleAnimSys, attacker, BATTLE_ANIM_POSITION_MON_X);
    spriteTemplate.y = BattleAnimUtil_GetBattlerPos(battleAnimSys, attacker, BATTLE_ANIM_POSITION_MON_Y);

    for (int i = 0; i < (int)NELEMS(v1->managedSprite); i++) {
        if (i == 0) {
            v1->managedSprite[i] = managedSprite;
            ManagedSprite_SetPositionXY(v1->managedSprite[i], spriteTemplate.x, spriteTemplate.y);
        } else {
            v1->managedSprite[i] = SpriteSystem_NewSprite(spriteSys, spriteMan, &spriteTemplate);
        }

        ManagedSprite_SetDrawFlag(v1->managedSprite[i], FALSE);
        ManagedSprite_SetPriority(v1->managedSprite[i], 100);
        ManagedSprite_SetExplicitPriority(v1->managedSprite[i], 1);
    }

    BattleAnimSystem_StartAnimTask(v1->battleAnimSys, ov12_02234750, v1);
}

static void ov12_02234750(SysTask *task, void *param1)
{
    UnkStruct_ov12_022346A4 *v0 = param1;

    switch (v0->state) {
    case 0:
        ov12_0223483C(v0->managedSprite[0], &v0->posCtx[0], &v0->scaleCtx[0], v0->unk_10);
        ov12_0223489C(v0->managedSprite[0], &v0->posCtx[0], &v0->scaleCtx[0]);
        v0->state++;
        v0->unk_08 = 8;
        break;
    case 1:
        v0->unk_08--;
        ov12_0223489C(v0->managedSprite[0], &v0->posCtx[0], &v0->scaleCtx[0]);

        if (v0->unk_08 < 0) {
            v0->state++;
        }
        break;
    case 2:
        ov12_0223483C(v0->managedSprite[1], &v0->posCtx[1], &v0->scaleCtx[1], v0->unk_10);
        ov12_0223489C(v0->managedSprite[1], &v0->posCtx[1], &v0->scaleCtx[1]);
        ov12_0223489C(v0->managedSprite[0], &v0->posCtx[0], &v0->scaleCtx[0]);
        v0->state++;
        break;
    case 3:
        ov12_0223489C(v0->managedSprite[0], &v0->posCtx[0], &v0->scaleCtx[0]);

        if (ov12_0223489C(v0->managedSprite[1], &v0->posCtx[1], &v0->scaleCtx[1])) {
            v0->state++;
        }
        break;
    case 4:
        for (int i = 0; i < (int)NELEMS(v0->managedSprite); i++) {
            Sprite_DeleteAndFreeResources(v0->managedSprite[i]);
        }

        BattleAnimSystem_EndAnimTask(v0->battleAnimSys, task);
        Heap_Free(v0);
        return;
    }

    SpriteSystem_DrawSprites(v0->spriteMan);
}

static void ov12_0223483C(ManagedSprite *managedSprite, XYTransformContext *posCtx, XYTransformContext *scaleCtx, int param3)
{
    s16 outX, outY;

    ManagedSprite_SetAffineOverwriteMode(managedSprite, AFFINE_OVERWRITE_MODE_DOUBLE);
    ManagedSprite_SetDrawFlag(managedSprite, TRUE);
    ManagedSprite_GetPositionXY(managedSprite, &outX, &outY);

    PosLerpContext_Init(posCtx, outX, outX + 16 * param3, outY, outY + -32, 32);
    ScaleLerpContext_Init(scaleCtx, 2, 10, 10, 32);
}

static BOOL ov12_0223489C(ManagedSprite *managedSprite, XYTransformContext *posCtx, XYTransformContext *scaleCtx)
{
    PosLerpContext_UpdateAndApplyToSprite(posCtx, managedSprite);
    BOOL isUpdated = ScaleLerpContext_UpdateAndApplyToSprite(scaleCtx, managedSprite);

    if (isUpdated) {
        return 0;
    }

    ManagedSprite_SetDrawFlag(managedSprite, FALSE);
    return 1;
}

void ov12_022348C8(BattleAnimSystem *battleAnimSys, SpriteSystem *unused, SpriteManager *spriteMan, ManagedSprite *managedSprite)
{
    UnkStruct_ov12_022348C8 *battleAnimUtil = BattleAnimUtil_Alloc(battleAnimSys, sizeof(UnkStruct_ov12_022348C8));

    battleAnimUtil->battleAnimSys = battleAnimSys;
    battleAnimUtil->spriteMan = spriteMan;
    battleAnimUtil->managedSprite = managedSprite;

    ManagedSprite_SetDrawFlag(battleAnimUtil->managedSprite, FALSE);
    ManagedSprite_SetExplicitOamMode(battleAnimUtil->managedSprite, GX_OAM_MODE_XLU);
    ManagedSprite_SetPriority(battleAnimUtil->managedSprite, 100);
    ManagedSprite_SetExplicitPriority(battleAnimUtil->managedSprite, 1);

    battleAnimUtil->explicitOffset = ManagedSprite_GetExplicitPaletteOffset(battleAnimUtil->managedSprite);

    BattleAnimSystem_StartAnimTask(battleAnimUtil->battleAnimSys, ov12_02234918, battleAnimUtil);
}

static void ov12_02234918(SysTask *task, void *param1)
{
    UnkStruct_ov12_022348C8 *v0 = param1;
    int v1;

    switch (v0->state) {
    case 0:
        AlphaFadeContext_Init(&v0->alphaFadeCtx, 0, 16, 20 - 0, 20 - 16, 10);
        ManagedSprite_SetDrawFlag(v0->managedSprite, TRUE);
        BattleAnimUtil_SetSpriteBgBlending(v0->battleAnimSys, 0, 20 - 0);
        v0->state++;
        break;
    case 1:
        if (AlphaFadeContext_IsDone(&v0->alphaFadeCtx)) {
            v0->state++;

            ManagedSprite_SetAnimateFlag(v0->managedSprite, TRUE);
            ManagedSprite_SetAnimationSpeed(v0->managedSprite, FX32_ONE);
        }
        break;
    case 2:
        v1 = ManagedSprite_GetAnimationFrame(v0->managedSprite);
        v1 %= 3;

        ManagedSprite_SetExplicitPaletteOffset(v0->managedSprite, v0->explicitOffset + v1);

        if (!ManagedSprite_IsAnimated(v0->managedSprite)) {
            v0->state++;
            AlphaFadeContext_Init(&v0->alphaFadeCtx, 16, 0, 20 - 16, 20 - 0, 8);
        }
        break;
    case 3:
        if (AlphaFadeContext_IsDone(&v0->alphaFadeCtx)) {
            v0->state++;
            ManagedSprite_SetDrawFlag(v0->managedSprite, FALSE);
        }
        break;
    case 4:
        Sprite_DeleteAndFreeResources(v0->managedSprite);
        BattleAnimSystem_EndAnimTask(v0->battleAnimSys, task);
        Heap_Free(v0);
        return;
    }

    SpriteSystem_DrawSprites(v0->spriteMan);
}

void ov12_02234A10(BattleAnimSystem *battleAnimSys, SpriteSystem *spriteSys, SpriteManager *spriteMan, ManagedSprite *managedSprite)
{
    SpriteTemplate spriteTemplate;
    UnkStruct_ov12_02234A10 *battleAnimUtil = BattleAnimUtil_Alloc(battleAnimSys, sizeof(UnkStruct_ov12_02234A10));

    battleAnimUtil->battleAnimSys = battleAnimSys;
    battleAnimUtil->spriteMan = spriteMan;

    int attacker = BattleAnimSystem_GetAttacker(battleAnimUtil->battleAnimSys);
    int direction = BattleAnimUtil_GetTransformDirectionX(battleAnimSys, attacker);
    spriteTemplate = BattleAnimSystem_GetLastSpriteTemplate(battleAnimUtil->battleAnimSys);

    spriteTemplate.x = BattleAnimUtil_GetBattlerPos(battleAnimSys, attacker, 0);
    spriteTemplate.y = BattleAnimUtil_GetBattlerPos(battleAnimSys, attacker, 1);

    for (int i = NELEMS(battleAnimUtil->managedSprite) - 1; i >= 0; i--) {
        if (i == NELEMS(battleAnimUtil->managedSprite) - 1) {
            battleAnimUtil->managedSprite[i] = managedSprite;
            ManagedSprite_SetPositionXY(managedSprite, spriteTemplate.x, spriteTemplate.y);
        } else {
            battleAnimUtil->managedSprite[i] = SpriteSystem_NewSprite(spriteSys, spriteMan, &spriteTemplate);
        }

        ManagedSprite_SetPriority(battleAnimUtil->managedSprite[i], 100);
        ManagedSprite_SetExplicitPriority(battleAnimUtil->managedSprite[i], 1);
        ManagedSprite_SetDrawFlag(battleAnimUtil->managedSprite[i], FALSE);

        ov12_02234AE0(battleAnimUtil->managedSprite[i], &battleAnimUtil->unk_24[i], &battleAnimUtil->unk_3C[i], i, direction);
    }

    BattleAnimSystem_StartAnimTask(battleAnimUtil->battleAnimSys, ov12_02234B64, battleAnimUtil);
}

static void ov12_02234AE0(ManagedSprite *managedSprite, int *param1, int *param2, int param3, int param4)
{
    s16 outX, outY;

    ManagedSprite_SetAnim(managedSprite, param3 / 2);

    *param2 = param3 * 2;
    *param1 = 16;

    ManagedSprite_GetPositionXY(managedSprite, &outX, &outY);

    outX += (40 + -12 * param3) * param4;
    outY += 40;

    ManagedSprite_SetPositionXY(managedSprite, outX, outY);
}

static BOOL ov12_02234B34(ManagedSprite *managedSprite, int *param1, int *param2)
{
    if (*param2 > 0) {
        (*param2)--;

        if (*param2 == 0) {
            ManagedSprite_SetDrawFlag(managedSprite, TRUE);
        }
    } else {
        if (*param1 > 0) {
            (*param1)--;
        } else {
            ManagedSprite_SetDrawFlag(managedSprite, FALSE);
            return TRUE;
        }
    }

    return FALSE;
}

static void ov12_02234B64(SysTask *task, void *param1)
{
    UnkStruct_ov12_02234A10 *v0 = param1;
    int i;

    switch (v0->state) {
    case 0:
        BOOL isUpdated;

        for (i = 0; i < (int)NELEMS(v0->managedSprite); i++) {
            isUpdated = ov12_02234B34(v0->managedSprite[i], &v0->unk_24[i], &v0->unk_3C[i]);
        }

        if (isUpdated) {
            v0->state++;
        }
        break;
    case 1:
        for (i = 0; i < (int)NELEMS(v0->managedSprite); i++) {
            Sprite_DeleteAndFreeResources(v0->managedSprite[i]);
        }

        BattleAnimSystem_EndAnimTask(v0->battleAnimSys, task);
        Heap_Free(v0);
        return;
    }

    SpriteSystem_DrawSprites(v0->spriteMan);
}

static void ov12_02234BD8(UnkStruct_ov12_02234BD8 *param0, int param1)
{
    int v1 = 360 * 0xffff / 360 / 6;

    for (int i = 0; i < (int)NELEMS(param0->managedSprite); i++) {
        RevolutionContext_Init(&param0->transformCtx[i], DEG_TO_IDX(0), DEG_TO_IDX(180), 0, 0, FX32_ONE * 50, 0, 48);
        param0->transformCtx[i].data[1] += v1 * i;
        param0->transformCtx[i].data[5] *= param1;
    }
}

static void ov12_02234C30(UnkStruct_ov12_02234BD8 *param0)
{
    for (int i = 0; i < (int)NELEMS(param0->managedSprite); i++) {
        RevolutionContext_Update(&param0->transformCtx[i]);

        ManagedSprite_SetPositionXY(param0->managedSprite[i], param0->posX + param0->transformCtx[i].x, param0->posY);

        if (param0->transformCtx[i].data[1] >= DEG_TO_IDX(90) && param0->transformCtx[i].data[1] <= DEG_TO_IDX(269)) {
            ManagedSprite_SetExplicitPriority(param0->managedSprite[i], 1);
        } else {
            ManagedSprite_SetExplicitPriority(param0->managedSprite[i], BattleAnimSystem_GetPokemonSpritePriority(param0->battleAnimSys) + 1);
        }
    }
}

static void ov12_02234CA8(SysTask *task, void *param1)
{
    UnkStruct_ov12_02234BD8 *v0 = param1;

    switch (v0->state) {
    case 0:
        BattleAnimUtil_SetSpriteBgBlending(v0->battleAnimSys, 1, 16 - 1);
        AlphaFadeContext_Init(&v0->alphaFadeCtx, 1, 16, 16 - 1, 16 - 16, 10);
        ov12_02234BD8(v0, v0->unk_14);
        ov12_02234C30(v0);
        v0->state++;
        break;
    case 1:
        ov12_02234C30(v0);

        if (AlphaFadeContext_IsDone(&v0->alphaFadeCtx)) {
            v0->state++;
            v0->unk_10 = 48 - 10 * 2;
        }
        break;
    case 2:
        ov12_02234C30(v0);
        v0->unk_10--;

        if (v0->unk_10 < 0) {
            v0->state++;
            AlphaFadeContext_Init(&v0->alphaFadeCtx, 16, 1, 16 - 16, 16 - 1, 10);
        }
        break;
    case 3:
        ov12_02234C30(v0);

        if (AlphaFadeContext_IsDone(&v0->alphaFadeCtx)) {
            v0->state++;
        }
        break;
    case 4:
        for (int i = 0; i < (int)NELEMS(v0->managedSprite); i++) {
            Sprite_DeleteAndFreeResources(v0->managedSprite[i]);
        }

        Heap_Free(v0);
        BattleAnimSystem_EndAnimTask(v0->battleAnimSys, task);
        return;
    }

    SpriteSystem_DrawSprites(v0->spriteMan);
}

void ov12_02234D98(BattleAnimSystem *battleAnimSystem, SpriteSystem *spriteSystem, SpriteManager *spriteMan, ManagedSprite *managedSprite)
{
    SpriteTemplate spriteTemplate;

    UnkStruct_ov12_02234BD8 *battleAnimUtil = BattleAnimUtil_Alloc(battleAnimSystem, sizeof(UnkStruct_ov12_02234BD8));

    battleAnimUtil->battleAnimSys = battleAnimSystem;
    battleAnimUtil->spriteSys = spriteSystem;
    battleAnimUtil->spriteMan = spriteMan;

    PokemonSprite *monSprite = BattleAnimSystem_GetBattlerSprite(battleAnimUtil->battleAnimSys, BattleAnimSystem_GetAttacker(battleAnimSystem));

    battleAnimUtil->posX = PokemonSprite_GetAttribute(monSprite, MON_SPRITE_X_CENTER);
    battleAnimUtil->posY = PokemonSprite_GetAttribute(monSprite, MON_SPRITE_Y_CENTER);

    spriteTemplate = BattleAnimSystem_GetLastSpriteTemplate(battleAnimSystem);

    for (int i = 0; i < (int)NELEMS(battleAnimUtil->managedSprite); i++) {
        if (i == 0) {
            battleAnimUtil->managedSprite[i] = managedSprite;
        } else {
            battleAnimUtil->managedSprite[i] = SpriteSystem_NewSprite(battleAnimUtil->spriteSys, battleAnimUtil->spriteMan, &spriteTemplate);
        }

        ManagedSprite_SetPriority(battleAnimUtil->managedSprite[i], 100);
        ManagedSprite_SetExplicitOamMode(battleAnimUtil->managedSprite[i], GX_OAM_MODE_XLU);
        ManagedSprite_SetAnimateFlag(battleAnimUtil->managedSprite[i], TRUE);
    }

    battleAnimUtil->unk_14 = BattleAnimUtil_GetTransformDirectionX(battleAnimUtil->battleAnimSys, BattleAnimSystem_GetAttacker(battleAnimUtil->battleAnimSys));
    BattleAnimSystem_StartAnimTask(battleAnimUtil->battleAnimSys, ov12_02234CA8, battleAnimUtil);
}
