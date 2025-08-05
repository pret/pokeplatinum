#include "overlay012/ov12_0222E91C.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle/battle_anim.h"
#include "constants/graphics.h"

#include "overlay012/battle_anim_system.h"
#include "overlay012/ov12_02225864.h"
#include "overlay012/ov12_0222D6B0.h"
#include "overlay012/ov12_02235254.h"
#include "overlay012/ov12_022380BC.h"
#include "overlay012/struct_ov12_022267D4_decl.h"
#include "overlay012/struct_ov12_022380DC.h"

#include "bg_window.h"
#include "heap.h"
#include "math_util.h"
#include "palette.h"
#include "pltt_transfer.h"
#include "pokemon.h"
#include "pokemon_sprite.h"
#include "sprite.h"
#include "sprite_system.h"
#include "sys_task_manager.h"

// -------------------------------------------------------------------
// Shadow Punch
// -------------------------------------------------------------------
typedef struct ShadowPunchContext {
    BattleAnimScriptFuncCommon common;

    // spriteInfo.monSprite is the main sprite
    // spriteInfo.hwSprite is the first afterimage sprite
    // sprite is the second afterimage sprite
    BattleAnimSpriteInfo spriteInfo;
    ManagedSprite *sprite;
    XYTransformContext mainPos;
    XYTransformContext afterimage1Pos;
    XYTransformContext afterimage2Pos;
    u8 iteration;
    u8 unused;
    u8 spriteAlpha;
    u8 bgAlpha;
    s16 attackerHeight;
} ShadowPunchContext;

enum ShadowPunchState {
    SHADOW_PUNCH_STATE_INIT = 0,
    SHADOW_PUNCH_STATE_MOVE,
};

#define SHADOW_PUNCH_SPRITE_ALPHA                  8
#define SHADOW_PUNCH_BG_ALPHA                      8
#define SHADOW_PUNCH_OFFSET_X                      48
#define SHADOW_PUNCH_MOVE_RIGHT_MAIN_FRAMES        3
#define SHADOW_PUNCH_MOVE_RIGHT_AFTERIMAGE1_FRAMES 6
#define SHADOW_PUNCH_MOVE_RIGHT_AFTERIMAGE2_FRAMES 8
#define SHADOW_PUNCH_MOVE_LEFT_MAIN_FRAMES         3
#define SHADOW_PUNCH_MOVE_LEFT_AFTERIMAGE1_FRAMES  6
#define SHADOW_PUNCH_MOVE_LEFT_AFTERIMAGE2_FRAMES  9
#define SHADOW_PUNCH_AFTERIMAGE1_R                 196
#define SHADOW_PUNCH_AFTERIMAGE1_G                 196
#define SHADOW_PUNCH_AFTERIMAGE1_B                 196
#define SHADOW_PUNCH_AFTERIMAGE2_R                 196
#define SHADOW_PUNCH_AFTERIMAGE2_G                 196
#define SHADOW_PUNCH_AFTERIMAGE2_B                 196

typedef struct {
    BattleAnimScriptFuncCommon unk_00;
    s16 unk_1C;
    s16 unk_1E[8];
    ManagedSprite *unk_30[8];
    XYTransformContext unk_50;
} UnkStruct_ov12_0222EC18;

typedef struct {
    BattleAnimScriptFuncCommon unk_00;
    ManagedSprite *unk_1C[3];
    int unk_28;
    f32 unk_2C;
    f32 unk_30;
    u8 unk_34;
    u8 unk_35;
    s8 unk_36;
    UnkStruct_ov12_022267D4 *unk_38[2];
} UnkStruct_ov12_0222EE50;

typedef struct {
    BattleAnimScriptFuncCommon unk_00;
    BattleAnimSpriteInfo unk_1C;
    XYTransformContext unk_30;
    s16 unk_54;
    int unk_58;
    Point2D unk_5C[2];
    int unk_64;
    int unk_68;
    int unk_6C[3];
    int unk_78[3];
    int unk_84[3];
} UnkStruct_ov12_0222F208;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    PokemonSprite *unk_1C;
    BattleAnimScriptFuncCommon unk_20;
    BattleAnimSpriteInfo unk_3C;
} UnkStruct_ov12_0222F464;

static void BattleAnimTask_ShadowPunch(SysTask *task, void *param)
{
    ShadowPunchContext *ctx = param;

    switch (ctx->common.state) {
    case SHADOW_PUNCH_STATE_INIT:
        if (ctx->iteration == 0) {
            PosLerpContext_Init(
                &ctx->mainPos,
                ctx->spriteInfo.pos.x,
                ctx->spriteInfo.pos.x + SHADOW_PUNCH_OFFSET_X,
                ctx->spriteInfo.pos.y,
                ctx->spriteInfo.pos.y,
                SHADOW_PUNCH_MOVE_RIGHT_MAIN_FRAMES);
            PosLerpContext_Init(
                &ctx->afterimage1Pos,
                ctx->spriteInfo.pos.x,
                ctx->spriteInfo.pos.x + SHADOW_PUNCH_OFFSET_X,
                ctx->spriteInfo.pos.y + ctx->attackerHeight,
                ctx->spriteInfo.pos.y + ctx->attackerHeight,
                SHADOW_PUNCH_MOVE_RIGHT_AFTERIMAGE1_FRAMES);
            PosLerpContext_Init(
                &ctx->afterimage2Pos,
                ctx->spriteInfo.pos.x,
                ctx->spriteInfo.pos.x + SHADOW_PUNCH_OFFSET_X,
                ctx->spriteInfo.pos.y + ctx->attackerHeight,
                ctx->spriteInfo.pos.y + ctx->attackerHeight,
                SHADOW_PUNCH_MOVE_RIGHT_AFTERIMAGE2_FRAMES);
        } else {
            PosLerpContext_Init(
                &ctx->mainPos,
                ctx->spriteInfo.pos.x + SHADOW_PUNCH_OFFSET_X,
                ctx->spriteInfo.pos.x,
                ctx->spriteInfo.pos.y,
                ctx->spriteInfo.pos.y,
                SHADOW_PUNCH_MOVE_LEFT_MAIN_FRAMES);
            PosLerpContext_Init(
                &ctx->afterimage1Pos,
                ctx->spriteInfo.pos.x + SHADOW_PUNCH_OFFSET_X,
                ctx->spriteInfo.pos.x,
                ctx->spriteInfo.pos.y + ctx->attackerHeight,
                ctx->spriteInfo.pos.y + ctx->attackerHeight,
                SHADOW_PUNCH_MOVE_LEFT_AFTERIMAGE1_FRAMES);
            PosLerpContext_Init(
                &ctx->afterimage2Pos,
                ctx->spriteInfo.pos.x + SHADOW_PUNCH_OFFSET_X,
                ctx->spriteInfo.pos.x,
                ctx->spriteInfo.pos.y + ctx->attackerHeight,
                ctx->spriteInfo.pos.y + ctx->attackerHeight,
                SHADOW_PUNCH_MOVE_LEFT_AFTERIMAGE2_FRAMES);
        }

        ctx->iteration++;
        ctx->common.state++;
        break;
    case SHADOW_PUNCH_STATE_MOVE: {
        int done = 0;

        if (PosLerpContext_UpdateAndApplyToSprite(&ctx->afterimage1Pos, ctx->spriteInfo.hwSprite) == FALSE) {
            done++;
        }

        if (PosLerpContext_UpdateAndApplyToMon(&ctx->mainPos, ctx->spriteInfo.monSprite) == FALSE) {
            done++;
        }

        if (PosLerpContext_UpdateAndApplyToSprite(&ctx->afterimage2Pos, ctx->sprite) == FALSE) {
            done++;
        }

        if (done >= 3) {
            if (ctx->iteration == 1) {
                ctx->common.state--;
            } else {
                ctx->common.state++;
            }
        }
    } break;
    default:
        BattleAnimSystem_EndAnimTask(ctx->common.battleAnimSystem, task);
        BattleAnimUtil_Free(ctx);
        ctx = NULL;
        return;
    }

    ManagedSprite_TickFrame(ctx->spriteInfo.hwSprite);
    SpriteSystem_DrawSprites(ctx->common.pokemonSpriteManager);
}

void BattleAnimScriptFunc_ShadowPunch(BattleAnimSystem *system)
{
    ShadowPunchContext *ctx = BattleAnimUtil_Alloc(system, sizeof(ShadowPunchContext));
    BattleAnimSystem_GetCommonData(system, &ctx->common);

    ctx->unused = 0;
    ctx->spriteAlpha = SHADOW_PUNCH_SPRITE_ALPHA;
    ctx->bgAlpha = SHADOW_PUNCH_BG_ALPHA;

    BattleAnimUtil_SetSpriteBgBlending(ctx->common.battleAnimSystem, BATTLE_ANIM_DEFAULT_ALPHA, BATTLE_ANIM_DEFAULT_ALPHA);
    G2_ChangeBlendAlpha(ctx->spriteAlpha, ctx->bgAlpha);

    ctx->spriteInfo.monSprite = BattleAnimSystem_GetBattlerSprite(ctx->common.battleAnimSystem, BattleAnimSystem_GetAttacker(ctx->common.battleAnimSystem));
    ctx->spriteInfo.pos.x = PokemonSprite_GetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_X_CENTER);
    ctx->spriteInfo.pos.y = PokemonSprite_GetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_Y_CENTER);
    ctx->spriteInfo.hwSprite = BattleAnimSystem_GetPokemonSprite(ctx->common.battleAnimSystem, BATTLE_ANIM_MON_SPRITE_0);
    ctx->sprite = BattleAnimSystem_GetPokemonSprite(ctx->common.battleAnimSystem, BATTLE_ANIM_MON_SPRITE_1);
    ctx->attackerHeight = -PokemonSprite_GetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_SHADOW_HEIGHT);

    int memberIndex = BattleAnimSystem_GetBattlerSpritePaletteIndex(ctx->common.battleAnimSystem, BattleAnimSystem_GetAttacker(ctx->common.battleAnimSystem));
    int narcID = BattleAnimSystem_GetBattlerSpriteNarcID(ctx->common.battleAnimSystem, BattleAnimSystem_GetAttacker(ctx->common.battleAnimSystem));

    ManagedSprite *sprite = ctx->spriteInfo.hwSprite;
    ManagedSprite_SetExplicitPriority(sprite, BattleAnimSystem_GetPokemonSpritePriority(ctx->common.battleAnimSystem) + 1);
    int dst = PlttTransfer_GetPlttOffset(Sprite_GetPaletteProxy(sprite->sprite), NNS_G2D_VRAM_TYPE_2DMAIN);

    PaletteData_LoadBufferFromFileStartWithTint(
        BattleAnimSystem_GetPaletteData(ctx->common.battleAnimSystem),
        narcID,
        memberIndex,
        BattleAnimSystem_GetHeapID(ctx->common.battleAnimSystem),
        PLTTBUF_MAIN_OBJ,
        PALETTE_SIZE_BYTES,
        PLTT_DEST(dst),
        SHADOW_PUNCH_AFTERIMAGE1_R,
        SHADOW_PUNCH_AFTERIMAGE1_G,
        SHADOW_PUNCH_AFTERIMAGE1_B);
    ManagedSprite_SetExplicitOamMode(sprite, GX_OAM_MODE_XLU);

    sprite = ctx->sprite;
    ManagedSprite_SetExplicitPriority(sprite, BattleAnimSystem_GetPokemonSpritePriority(ctx->common.battleAnimSystem) + 1);
    dst = PlttTransfer_GetPlttOffset(Sprite_GetPaletteProxy(sprite->sprite), NNS_G2D_VRAM_TYPE_2DMAIN);

    PaletteData_LoadBufferFromFileStartWithTint(
        BattleAnimSystem_GetPaletteData(ctx->common.battleAnimSystem),
        narcID,
        memberIndex,
        BattleAnimSystem_GetHeapID(ctx->common.battleAnimSystem),
        PLTTBUF_MAIN_OBJ,
        PALETTE_SIZE_BYTES,
        PLTT_DEST(dst),
        SHADOW_PUNCH_AFTERIMAGE2_R,
        SHADOW_PUNCH_AFTERIMAGE2_G,
        SHADOW_PUNCH_AFTERIMAGE2_B);
    ManagedSprite_SetExplicitOamMode(sprite, GX_OAM_MODE_XLU);

    BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSystem, BattleAnimTask_ShadowPunch, ctx);
}

static void ov12_0222EC18(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222EC18 *v0 = (UnkStruct_ov12_0222EC18 *)param1;

    {
        int v1;
        int v2 = 0;

        for (v1 = 0; v1 < 8; v1++) {
            v0->unk_1E[v1]++;

            if (v0->unk_1E[v1] < 32) {
                continue;
            }

            ov12_0222E248(v0->unk_30[v1]);

            if (v0->unk_1E[v1] >= 160) {
                ManagedSprite_SetDrawFlag(v0->unk_30[v1], 0);
                v2++;
            }
        }

        if (v2 == 8) {
            for (v1 = 0; v1 < 8; v1++) {
                Sprite_DeleteAndFreeResources(v0->unk_30[v1]);
            }

            BattleAnimSystem_EndAnimTask(v0->unk_00.battleAnimSystem, param0);
            Heap_Free(v0);
            return;
        }
    }

    SpriteSystem_DrawSprites(v0->unk_00.primarySpriteManager);
}

void ov12_0222EC90(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_0222EC18 *v0 = NULL;

    v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_0222EC18));
    v0->unk_1C = 10;

    BattleAnimSystem_GetCommonData(param0, &v0->unk_00);

    {
        int v1;

        {
            s16 v2, v3;
            SpriteTemplate v4;

            v4 = BattleAnimSystem_GetLastSpriteTemplate(v0->unk_00.battleAnimSystem);
            v0->unk_30[0] = param3;

            for (v1 = 1; v1 < 8; v1++) {
                v0->unk_30[v1] = SpriteSystem_NewSprite(v0->unk_00.spriteSystem, v0->unk_00.primarySpriteManager, &v4);

                if (v1 % 2) {
                    ManagedSprite_SetFlipMode(v0->unk_30[v1], 1);
                }
            }
        }

        {
            PokemonSprite *v5;
            s16 v6, v7, v8, v9;

            v5 = BattleAnimSystem_GetBattlerSprite(v0->unk_00.battleAnimSystem, BattleAnimSystem_GetAttacker(v0->unk_00.battleAnimSystem));
            v6 = PokemonSprite_GetAttribute(v5, MON_SPRITE_X_CENTER);
            v8 = PokemonSprite_GetAttribute(v5, MON_SPRITE_Y_CENTER);
            v5 = BattleAnimSystem_GetBattlerSprite(v0->unk_00.battleAnimSystem, BattleAnimSystem_GetDefender(v0->unk_00.battleAnimSystem));
            v7 = PokemonSprite_GetAttribute(v5, MON_SPRITE_X_CENTER);
            v9 = PokemonSprite_GetAttribute(v5, MON_SPRITE_Y_CENTER);

            PosLerpContext_Init(&v0->unk_50, v6, v7, v8, v9, (8 + 2) * 2);
        }

        {
            BOOL v10;
            int v11 = 0;
            int v12 = 0;
            int v13 = 0;

            if (BattleAnimUtil_GetBattlerSide(v0->unk_00.battleAnimSystem, BattleAnimSystem_GetAttacker(v0->unk_00.battleAnimSystem)) == 0x4) {
                v13 = 1;
            }

            do {
                v10 = PosLerpContext_Update(&v0->unk_50);

                if (v11 % 2) {
                    if (v13 == 0) {
                        if (v12 < 8) {
                            ManagedSprite_SetPositionXY(v0->unk_30[v12], v0->unk_50.x, v0->unk_50.y);
                            v12++;
                        }
                    } else {
                        v13 = 0;
                    }
                }

                v11++;
            } while (v10 == 1);
        }

        {
            int v14 = BattleAnimSystem_GetBgPriority(v0->unk_00.battleAnimSystem, 1);
            int v15 = BattleAnimSystem_GetBgPriority(v0->unk_00.battleAnimSystem, 2);

            for (v1 = 0; v1 < 8; v1++) {
                v0->unk_1E[v1] = (8 - v1) * 4;

                if (BattleAnimSystem_IsContest(v0->unk_00.battleAnimSystem) == 0) {
                    if (BattleAnimUtil_GetBattlerSide(v0->unk_00.battleAnimSystem, BattleAnimSystem_GetAttacker(v0->unk_00.battleAnimSystem)) == 0x3) {
                        if (v1 < 4) {
                            ManagedSprite_SetExplicitPriority(v0->unk_30[v1], v15);
                        } else {
                            ManagedSprite_SetExplicitPriority(v0->unk_30[v1], v14);
                        }
                    } else {
                        if (v1 >= 4) {
                            ManagedSprite_SetExplicitPriority(v0->unk_30[v1], v15);
                        } else {
                            ManagedSprite_SetExplicitPriority(v0->unk_30[v1], v14);
                        }
                    }

                    ManagedSprite_SetPriority(v0->unk_30[v1], 8 - v1);
                } else {
                    ManagedSprite_SetPriority(v0->unk_30[v1], v1);
                    ManagedSprite_SetExplicitPriority(v0->unk_30[v1], v15);
                }
            }
        }
    }

    BattleAnimSystem_StartAnimTask(v0->unk_00.battleAnimSystem, ov12_0222EC18, v0);
}

static void ov12_0222EE50(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222EE50 *v0 = param1;

    switch (v0->unk_00.state) {
    case 0:
        if (v0->unk_28 > 14) {
            v0->unk_30 -= 0.2f;
            v0->unk_2C += 0.2f;

            if (v0->unk_30 <= 0.2) {
                v0->unk_00.state++;
                ManagedSprite_SetDrawFlag(v0->unk_1C[0], 0);
            } else {
                ManagedSprite_SetAffineScale(v0->unk_1C[0], v0->unk_2C * v0->unk_36, v0->unk_30);
            }
        } else {
            v0->unk_34++;
            v0->unk_35--;
            G2_ChangeBlendAlpha(v0->unk_34, v0->unk_35);
            v0->unk_28++;
        }
        break;
    case 1:
        if (ov12_02226848(v0->unk_38[1]) == 0) {
            int v1;

            ov12_02226858(v0->unk_38[0]);
            ov12_02226858(v0->unk_38[1]);

            v1 = PlttTransfer_GetPlttOffset(Sprite_GetPaletteProxy(v0->unk_1C[2]->sprite), NNS_G2D_VRAM_TYPE_2DMAIN);

            v0->unk_38[1] = ov12_02226870(v0->unk_00.paletteData, BattleAnimSystem_GetHeapID(v0->unk_00.battleAnimSystem), 2, v1 * 16, 16, 0, 1, 15, 0, 0xFFFFFF, 1100);
            v0->unk_00.state++;
        }
        break;
    case 2:
    default:
        if (ov12_02226848(v0->unk_38[1]) == 0) {
            ManagedSprite_TickFrame(v0->unk_1C[1]);
            ov12_02226858(v0->unk_38[1]);
            BattleAnimSystem_EndAnimTask(v0->unk_00.battleAnimSystem, param0);
            Heap_Free(v0);
            return;
        }
        break;
    }

    ManagedSprite_TickFrame(v0->unk_1C[0]);
    ManagedSprite_TickFrame(v0->unk_1C[1]);
    ManagedSprite_TickFrame(v0->unk_1C[2]);
    SpriteSystem_DrawSprites(v0->unk_00.pokemonSpriteManager);
}

void ov12_0222EFB0(BattleAnimSystem *param0)
{
    UnkStruct_ov12_0222EE50 *v0;
    int v1;
    s16 v2, v3;
    s16 v4;
    s16 v5;

    v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_0222EE50));
    BattleAnimSystem_GetCommonData(param0, &v0->unk_00);

    v0->unk_1C[0] = BattleAnimSystem_GetPokemonSprite(v0->unk_00.battleAnimSystem, 0);
    v0->unk_1C[1] = BattleAnimSystem_GetPokemonSprite(v0->unk_00.battleAnimSystem, 1);
    v0->unk_1C[2] = BattleAnimSystem_GetPokemonSprite(v0->unk_00.battleAnimSystem, 2);
    v0->unk_28 = 0;

    {
        v4 = -32;
        v5 = BattleAnimUtil_GetTransformDirectionX(param0, BattleAnimSystem_GetAttacker(param0));
        v4 *= v5;

        v0->unk_2C = 1.0f;
        v0->unk_30 = 1.0f;

        if (BattleAnimSystem_ShouldBattlerSpriteBeFlipped(param0, 1) == 1) {
            v0->unk_36 = -1;
        } else {
            v0->unk_36 = +1;
        }

        ManagedSprite_GetPositionXY(v0->unk_1C[1], &v2, &v3);
        ManagedSprite_SetPositionXY(v0->unk_1C[0], v2 + v4, v3);
        ManagedSprite_SetAffineOverwriteMode(v0->unk_1C[0], AFFINE_OVERWRITE_MODE_DOUBLE);
        ManagedSprite_SetAffineScale(v0->unk_1C[0], v0->unk_2C * v0->unk_36, v0->unk_30);
    }

    {
        int v6;

        v6 = PlttTransfer_GetPlttOffset(Sprite_GetPaletteProxy(v0->unk_1C[0]->sprite), NNS_G2D_VRAM_TYPE_2DMAIN);
        v0->unk_38[0] = ov12_02226870(v0->unk_00.paletteData, BattleAnimSystem_GetHeapID(param0), 2, v6 * 16, 16, 0, 1, 0, 15, 0xFFFFFF, 1100);

        v6 = PlttTransfer_GetPlttOffset(Sprite_GetPaletteProxy(v0->unk_1C[2]->sprite), NNS_G2D_VRAM_TYPE_2DMAIN);
        v0->unk_38[1] = ov12_02226870(v0->unk_00.paletteData, BattleAnimSystem_GetHeapID(param0), 2, v6 * 16, 16, 0, 1, 0, 15, 0xFFFFFF, 1100);
    }

    {
        u8 v7;
        u8 v8;
        u8 v9;
        PokemonSprite *v10;
        Point2D v11;
        Point2D v12;

        v8 = BattleAnimSystem_GetAttacker(v0->unk_00.battleAnimSystem);
        v9 = BattleAnimUtil_GetBattlerType(v0->unk_00.battleAnimSystem, v8);

        BattleAnimUtil_GetBattlerTypeDefaultPos(v9, BattleAnimSystem_IsContest(v0->unk_00.battleAnimSystem), &v11);
        ManagedSprite_GetPositionXY(v0->unk_1C[0], &v12.x, &v12.y);

        {
            int v13;

            if (BattleAnimUtil_GetBattlerSide(v0->unk_00.battleAnimSystem, v8) == 0x3) {
                v13 = 0;
                ManagedSprite_SetExplicitPriority(v0->unk_1C[0], 1);
                ManagedSprite_SetPriority(v0->unk_1C[0], 0);
            } else {
                ManagedSprite_SetExplicitPriority(v0->unk_1C[0], 2);
                ManagedSprite_SetPriority(v0->unk_1C[0], 0);
                v13 = 2;
            }

            v8 = BattleAnimSystem_GetDefender(v0->unk_00.battleAnimSystem);
            v7 = LoadPokemonSpriteYOffset(BattleAnimSystem_GetBattlerSpecies(v0->unk_00.battleAnimSystem, v8), BattleAnimSystem_GetBattlerGender(v0->unk_00.battleAnimSystem, v8), v13, BattleAnimSystem_GetBattlerForm(v0->unk_00.battleAnimSystem, v8), BattleAnimSystem_GetBattlerPersonality(v0->unk_00.battleAnimSystem, v8));
        }

        ManagedSprite_SetPositionXY(v0->unk_1C[0], v12.x, v11.y + v7);
    }

    ManagedSprite_SetDrawFlag(v0->unk_1C[0], 1);

    v0->unk_34 = 0;
    v0->unk_35 = 15;

    BattleAnimUtil_SetSpriteBgBlending(v0->unk_00.battleAnimSystem, 0xffffffff, 0xffffffff);
    G2_ChangeBlendAlpha(v0->unk_34, v0->unk_35);

    {
        SysTask *v14;

        v14 = BattleAnimSystem_StartAnimTask(v0->unk_00.battleAnimSystem, ov12_0222EE50, v0);
        ov12_0222EE50(v14, v0);
    }
}

static void ov12_0222F208(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222F208 *v0 = (UnkStruct_ov12_0222F208 *)param1;

    switch (v0->unk_00.state) {
    case 0:
        PosLerpContext_Init(&v0->unk_30, v0->unk_1C.pos.x, v0->unk_6C[v0->unk_68], v0->unk_78[v0->unk_68], v0->unk_78[v0->unk_68], 15);
        PokemonSprite_SetAttribute(v0->unk_1C.monSprite, MON_SPRITE_Z_CENTER, v0->unk_84[v0->unk_68]);
        PokemonSprite_SetAttribute(v0->unk_1C.monSprite, MON_SPRITE_SHADOW_SHOULD_FOLLOW_Y, 1);
        v0->unk_00.state++;
    case 1:
        if (PosLerpContext_Update(&v0->unk_30) == 0) {
            v0->unk_68++;

            if (v0->unk_68 > 2) {
                v0->unk_00.state++;
            } else {
                {
                    UnkStruct_ov12_022380DC v1;

                    if (v0->unk_58 == 0) {
                        ov12_02220590(v0->unk_00.battleAnimSystem, &v1, 3);

                        if (v0->unk_68 == 2) {
                            ov12_022382BC(&v1, BattleAnimSystem_GetHeapID(v0->unk_00.battleAnimSystem));
                        } else {
                            ov12_022380CC(&v1, BattleAnimSystem_GetHeapID(v0->unk_00.battleAnimSystem));
                        }
                    }
                }

                v0->unk_00.state = 0;
            }

            v0->unk_1C.pos.x = PokemonSprite_GetAttribute(v0->unk_1C.monSprite, MON_SPRITE_X_CENTER);
        }

        PokemonSprite_SetAttribute(v0->unk_1C.monSprite, MON_SPRITE_X_CENTER, v0->unk_30.x);
        PokemonSprite_SetAttribute(v0->unk_1C.monSprite, MON_SPRITE_Y_CENTER, v0->unk_30.y);
        break;
    default:
        PokemonSprite_SetAttribute(v0->unk_1C.monSprite, MON_SPRITE_SHADOW_SHOULD_FOLLOW_Y, 0);
        BattleAnimSystem_EndAnimTask(v0->unk_00.battleAnimSystem, param0);
        Heap_Free(v0);
        break;
    }
}

void ov12_0222F2F8(BattleAnimSystem *param0)
{
    int v0;
    UnkStruct_ov12_0222F208 *v1 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_0222F208));
    BattleAnimSystem_GetCommonData(param0, &v1->unk_00);

    {
        int v2 = BattleAnimSystem_GetAttacker(v1->unk_00.battleAnimSystem);

        BattleAnimUtil_GetBattlerDefaultPos(v1->unk_00.battleAnimSystem, BattleAnimSystem_GetAttacker(v1->unk_00.battleAnimSystem), &v1->unk_5C[0]);
        BattleAnimUtil_GetBattlerDefaultPos(v1->unk_00.battleAnimSystem, BattleAnimSystem_GetDefender(v1->unk_00.battleAnimSystem), &v1->unk_5C[1]);

        if (BattleAnimUtil_GetBattlerSide(v1->unk_00.battleAnimSystem, v2) == 0x3) {
            v1->unk_54 = +1;
        } else {
            v1->unk_54 = -1;
        }
    }

    {
        int v3 = BattleAnimUtil_GetBattlerSide(v1->unk_00.battleAnimSystem, BattleAnimSystem_GetAttacker(v1->unk_00.battleAnimSystem));
        int v4 = BattleAnimUtil_GetBattlerSide(v1->unk_00.battleAnimSystem, BattleAnimSystem_GetDefender(v1->unk_00.battleAnimSystem));

        if (v3 == v4) {
            v1->unk_58 = 1;
        } else {
            v1->unk_58 = 0;
        }
    }

    v1->unk_68 = 0;

    {
        int v5;
        BattleAnimUtil_GetBattlerSprites(param0, BattleAnimSystem_GetScriptVar(param0, 0), &(v1->unk_1C), &v5);
    }

    v0 = PokemonSprite_GetAttribute(v1->unk_1C.monSprite, MON_SPRITE_Y_CENTER) - v1->unk_5C[0].y;

    if (v1->unk_54 > 0) {
        v1->unk_6C[0] = 255 + 80;
        v1->unk_6C[1] = 0 - 80;
        v1->unk_6C[2] = v1->unk_5C[0].x;
        v1->unk_78[0] = v1->unk_5C[0].y + v0;
        v1->unk_78[1] = v1->unk_5C[1].y + v0;
        v1->unk_78[2] = v1->unk_5C[0].y + v0;
        v1->unk_84[0] = 0 + 10;
        v1->unk_84[1] = -0x280 - 10;
        v1->unk_84[2] = PokemonSprite_GetAttribute(v1->unk_1C.monSprite, MON_SPRITE_Z_CENTER);
    } else {
        v1->unk_6C[0] = 0 - 80;
        v1->unk_6C[1] = 255 + 80;
        v1->unk_6C[2] = v1->unk_5C[0].x;
        v1->unk_78[0] = v1->unk_5C[0].y + v0;
        v1->unk_78[1] = v1->unk_5C[1].y + v0;
        v1->unk_78[2] = v1->unk_5C[0].y + v0;
        v1->unk_84[0] = -0x280 - 10;
        v1->unk_84[1] = 0 + 10;
        v1->unk_84[2] = PokemonSprite_GetAttribute(v1->unk_1C.monSprite, MON_SPRITE_Z_CENTER);
    }

    BattleAnimSystem_StartAnimTask(v1->unk_00.battleAnimSystem, ov12_0222F208, v1);
}

static void ov12_0222F44C(PokemonSprite *param0, int param1, int param2, int param3, int param4)
{
    PokemonSprite_SetPartialDraw(param0, param1, 80 - param3, param2, param4);
}

static void ov12_0222F464(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222F464 *v0 = param1;

    switch (v0->unk_20.state) {
    case 0:
        v0->unk_10 += 79;

        if (v0->unk_10 >= 80) {
            v0->unk_20.state++;
            v0->unk_14 ^= 1;
            v0->unk_10 = 0;
        } else {
            if (v0->unk_14 == 0) {
                ov12_0222F44C(v0->unk_1C, 0, v0->unk_10, (v0->unk_00 + 2) * 2, 2);
            } else {
                ov12_0222F44C(v0->unk_1C, 80 - v0->unk_10, v0->unk_10, (v0->unk_00 + 2) * 2, 2);
            }
        }
        break;
    case 1:
        v0->unk_04 -= (2 / 2);
        v0->unk_0C += (2 / 2);
        G2_SetWnd0Position(v0->unk_08, v0->unk_04, v0->unk_08 + 80, v0->unk_0C);
        v0->unk_20.state++;
        break;
    case 2:
        v0->unk_04 -= (2 / 2);
        v0->unk_0C += (2 / 2);
        G2_SetWnd0Position(v0->unk_08, v0->unk_04, v0->unk_08 + 80, v0->unk_0C);
        v0->unk_00++;

        if (v0->unk_00 > ((80 / 2) - 2)) {
            v0->unk_20.state++;
        } else {
            v0->unk_20.state = 0;
        }
        break;
    case 3:
        PokemonSprite_SetAttribute(v0->unk_1C, MON_SPRITE_PARTIAL_DRAW, 0);
        v0->unk_20.state++;
        break;
    default:
        GX_SetVisibleWnd(GX_WNDMASK_NONE);
        G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_NONE, 0);
        G2_SetWndOutsidePlane(GX_WND_PLANEMASK_NONE, 0);
        G2_SetWnd0Position(0, 0, 0, 0);
        BattleAnimSystem_EndAnimTask(v0->unk_20.battleAnimSystem, param0);
        PokemonSprite_SetAttribute(v0->unk_1C, MON_SPRITE_ALPHA, v0->unk_18);
        Heap_Free(v0);
        break;
    }
}

void ov12_0222F5EC(BattleAnimSystem *param0)
{
    UnkStruct_ov12_0222F464 *v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_0222F464));
    BattleAnimSystem_GetCommonData(param0, &v0->unk_20);

    v0->unk_1C = BattleAnimSystem_GetBattlerSprite(param0, BattleAnimSystem_GetDefender(param0));
    v0->unk_00 = 0;

    {
        int v1;

        v1 = BattleAnimUtil_GetBattlerType(param0, BattleAnimSystem_GetDefender(param0));

        switch (v1) {
        case 3:
        case 4:
            Bg_SetPriority(BG_LAYER_MAIN_2, BattleAnimSystem_GetPokemonSpritePriority(param0) - 1);
            break;
        }
    }

    {
        s16 v2, v3;

        v2 = PokemonSprite_GetAttribute(v0->unk_1C, MON_SPRITE_X_CENTER);
        v3 = PokemonSprite_GetAttribute(v0->unk_1C, MON_SPRITE_Y_CENTER);
        v3 -= PokemonSprite_GetAttribute(v0->unk_1C, MON_SPRITE_SHADOW_HEIGHT);

        v0->unk_18 = PokemonSprite_GetAttribute(v0->unk_1C, MON_SPRITE_ALPHA);
        PokemonSprite_SetAttribute(v0->unk_1C, MON_SPRITE_ALPHA, 8);

        v0->unk_08 = v2 - 40;
        v0->unk_04 = v3 + 40;
        v0->unk_10 = 0;
        v0->unk_0C = v0->unk_04;
        v0->unk_14 = 0;

        GX_SetVisibleWnd(GX_WNDMASK_W0);
        G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
        G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
        G2_SetWnd0Position(v0->unk_08, v0->unk_04, v0->unk_08 + 80, v0->unk_0C);
    }

    BattleAnimSystem_StartAnimTask(v0->unk_20.battleAnimSystem, ov12_0222F464, v0);
}
