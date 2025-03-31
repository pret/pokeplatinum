#include <nitro.h>
#include <string.h>

#include "constants/narc.h"

#include "struct_decls/struct_0202D750_decl.h"
#include "struct_defs/struct_0208C06C.h"

#include "overlay062/ov62_0222F2C0.h"
#include "overlay062/ov62_022300D8.h"
#include "overlay062/ov62_02231690.h"
#include "overlay062/ov62_const_funcptr_tables.h"
#include "overlay062/struct_ov62_022312B0.h"

#include "bg_window.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "math.h"
#include "narc.h"
#include "palette.h"
#include "sprite.h"
#include "sprite_system.h"
#include "system_vars.h"
#include "touch_screen.h"
#include "sound_playback.h"
#include "unk_02012744.h"
#include "unk_0202D05C.h"
#include "unk_02030A80.h"
#include "unk_0208B284.h"
#include "vars_flags.h"

typedef struct {
    int unk_00;
    f32 unk_04[5];
    int unk_18[5];
    int unk_2C[5];
    ManagedSprite *unk_40[5];
    ManagedSprite *unk_54[5];
    ManagedSprite *unk_68[5];
    ManagedSprite *unk_7C[5];
    int unk_90;
    ManagedSprite *unk_94[2];
    UnkStruct_ov62_022312B0 unk_9C[2];
    int unk_D4;
    int unk_D8;
} UnkStruct_ov62_02236CBC;

static void ov62_02236CBC(UnkStruct_0208C06C *param0, int param1);
static void ov62_02236CF8(UnkStruct_0208C06C *param0, int param1);
static void ov62_02236D48(UnkStruct_0208C06C *param0);
static void ov62_02236DE8(UnkStruct_0208C06C *param0);
static void ov62_02236E14(UnkStruct_0208C06C *param0);
static void ov62_022370D4(u16 *param0, u16 param1, u16 param2);
static void ov62_022371CC(UnkStruct_0208C06C *param0);
static void ov62_022374A8(UnkStruct_0208C06C *param0);
static BOOL ov62_022375A4(UnkStruct_0208C06C *param0);
static BOOL ov62_022376C4(UnkStruct_0208C06C *param0);
static void ov62_02237814(UnkStruct_0208C06C *param0);
static BOOL ov62_02237884(UnkStruct_0208C06C *param0);
static BOOL ov62_02237AC0(UnkStruct_0208C06C *param0);
static BOOL ov62_02237B00(UnkStruct_0208C06C *param0);

// clang-format off
BOOL(*const Unk_ov62_02248C50[])(UnkStruct_0208C06C *) = {
    ov62_02237884,
    ov62_02237AC0,
    ov62_02237B00,
};
// clang-format on

static void ov62_02236CBC(UnkStruct_0208C06C *param0, int param1)
{
    UnkStruct_ov62_02236CBC *v0 = param0->unk_860;

    if (param1 == 0) {
        ManagedSprite_SetPositionXY(v0->unk_9C[1].unk_08, 128, 232);
    } else {
        ManagedSprite_SetPositionXY(v0->unk_9C[1].unk_08, 80, 232);
    }

    sub_020128C4(v0->unk_9C[1].unk_0C, 36, -8);
}

static void ov62_02236CF8(UnkStruct_0208C06C *param0, int param1)
{
    NARC *v0 = param0->unk_14.unk_00;
    BgConfig *v1 = param0->unk_14.unk_10;
    SpriteSystem *v2 = param0->unk_14.unk_04;
    SpriteManager *v3 = param0->unk_14.unk_08;
    PaletteData *v4 = param0->unk_14.unk_14;

    SpriteSystem_LoadCharResObjFromOpenNarc(v2, v3, v0, 50, FALSE, param1, 11924);
    SpriteSystem_LoadCellResObjFromOpenNarc(v2, v3, v0, 28, FALSE, 11924);
    SpriteSystem_LoadAnimResObjFromOpenNarc(v2, v3, v0, 29, FALSE, 11924);
}

static void ov62_02236D48(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02236CBC *v0 = param0->unk_860;

    ov62_02236CF8(param0, NNS_G2D_VRAM_TYPE_2DSUB);

    v0->unk_9C[1].unk_08 = ov62_022313E0(param0, NNS_G2D_VRAM_TYPE_2DSUB);

    ov62_0223118C(&v0->unk_9C[1], &param0->unk_14, NNS_G2D_VRAM_TYPE_2DSUB);
    ov62_0223124C(&v0->unk_9C[1], &param0->unk_14, 3);

    ManagedSprite_SetPositionXY(v0->unk_9C[1].unk_08, 128, 232);
    sub_020128C4(v0->unk_9C[1].unk_0C, 36, -8);
    sub_020129D0(v0->unk_9C[1].unk_0C, 1);

    v0->unk_94[1] = ov62_022313E0(param0, NNS_G2D_VRAM_TYPE_2DSUB);

    ManagedSprite_SetPositionXY(v0->unk_94[1], 220, 160 + 64);
    ManagedSprite_SetAnim(v0->unk_94[1], 2);
    ManagedSprite_SetDrawFlag(v0->unk_94[1], 0);

    ov62_02236CBC(param0, 1);
}

static void ov62_02236DE8(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02236CBC *v0 = param0->unk_860;

    ov62_022312B0(&v0->unk_9C[1]);
    Sprite_DeleteAndFreeResources(v0->unk_9C[1].unk_08);
    Sprite_DeleteAndFreeResources(v0->unk_94[1]);
    ov62_022313BC(param0);
}

static void ov62_02236E14(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02236CBC *v0 = param0->unk_860;
    NARC *v1 = param0->unk_14.unk_00;
    BgConfig *v2 = param0->unk_14.unk_10;
    SpriteSystem *v3 = param0->unk_14.unk_04;
    SpriteManager *v4 = param0->unk_14.unk_08;
    PaletteData *v5 = param0->unk_14.unk_14;

    Graphics_LoadTilesToBgLayerFromOpenNARC(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 6, 0, 0, 0, HEAP_ID_102);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(v1, 68, v2, 6, 0, 0, 0, HEAP_ID_102);
    SpriteSystem_LoadPaletteBufferFromOpenNarc(v5, PLTTBUF_SUB_OBJ, v3, v4, v1, ov62_02231710(param0, 0), FALSE, 1, NNS_G2D_VRAM_TYPE_2DSUB, 29292);
    SpriteSystem_LoadCharResObjFromOpenNarc(v3, v4, v1, 66, FALSE, NNS_G2D_VRAM_TYPE_2DSUB, 29292);
    SpriteSystem_LoadCellResObjFromOpenNarc(v3, v4, v1, 71, FALSE, 29292);
    SpriteSystem_LoadAnimResObjFromOpenNarc(v3, v4, v1, 72, FALSE, 29292);
    SpriteSystem_LoadPaletteBufferFromOpenNarc(v5, PLTTBUF_MAIN_OBJ, v3, v4, v1, ov62_02231710(param0, 1), FALSE, 6, NNS_G2D_VRAM_TYPE_2DMAIN, 28282);
    SpriteSystem_LoadCharResObjFromOpenNarc(v3, v4, v1, 64, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 28282);
    SpriteSystem_LoadCellResObjFromOpenNarc(v3, v4, v1, 38, FALSE, 28282);
    SpriteSystem_LoadAnimResObjFromOpenNarc(v3, v4, v1, 39, FALSE, 28282);

    {
        int v6;
        int v7[5] = { 125, 291, 297, 295, 293 };
        int v8[5] = { 126, 292, 298, 296, 294 };
        int v9 = 9;
        int v10 = 10;

        for (v6 = 0; v6 < 5; v6++) {
            if (v6 == 3) {
                SpriteSystem_LoadPaletteBufferFromOpenNarc(v5, PLTTBUF_MAIN_OBJ, v3, v4, v1, 92, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 18181 + v6);
                SpriteSystem_LoadCharResObjFromOpenNarc(v3, v4, v1, 91, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 18181 + v6);
            } else {
                SpriteSystem_LoadPaletteBuffer(v5, PLTTBUF_MAIN_OBJ, v3, v4, NARC_INDEX_GRAPHIC__WIFI2DCHAR, v7[v6], FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 18181 + v6);
                SpriteSystem_LoadCharResObjAtEndWithHardwareMappingType(v3, v4, NARC_INDEX_GRAPHIC__WIFI2DCHAR, v8[v6], FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 18181 + v6);
            }
        }

        SpriteSystem_LoadCellResObj(v3, v4, NARC_INDEX_GRAPHIC__WIFI2DCHAR, v9, FALSE, 18181);
        SpriteSystem_LoadAnimResObj(v3, v4, NARC_INDEX_GRAPHIC__WIFI2DCHAR, v10, FALSE, 18181);
        SpriteSystem_LoadCellResObjFromOpenNarc(v3, v4, v1, 89, FALSE, 18181 + 1);
        SpriteSystem_LoadAnimResObjFromOpenNarc(v3, v4, v1, 90, FALSE, 18181 + 1);
    }

    {
        int v11 = 13;
        int v12 = 14;
        int v13 = 9;
        int v14 = 10;
        int v15 = sub_02030BAC(param0->unk_88C[0]);

        v3 = param0->unk_14.unk_04;
        v4 = param0->unk_14.unk_08;
        v5 = param0->unk_14.unk_14;

        if (v15 != 0) {
            v11 = 15;
            v12 = 16;
        }

        SpriteSystem_LoadPaletteBuffer(v5, 2, v3, v4, NARC_INDEX_GRAPHIC__WIFI2DCHAR, v11, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 165535);
        SpriteSystem_LoadCellResObj(v3, v4, NARC_INDEX_GRAPHIC__WIFI2DCHAR, v13, FALSE, 165535);
        SpriteSystem_LoadAnimResObj(v3, v4, NARC_INDEX_GRAPHIC__WIFI2DCHAR, v14, FALSE, 165535);
        SpriteSystem_LoadCharResObjAtEndWithHardwareMappingType(v3, v4, NARC_INDEX_GRAPHIC__WIFI2DCHAR, v12, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 165535);
    }
}

static void ov62_022370D4(u16 *param0, u16 param1, u16 param2)
{
    int v0, v1, v2, v3;
    u32 v4;

    for (v0 = 0; v0 < param1; v0++) {
        param0++;
    }

    for (; v0 < param1 + param2; v0++) {
        v1 = ((*param0) & 0x1f);
        v2 = (((*param0) >> 5) & 0x1f);
        v3 = (((*param0) >> 10) & 0x1f);

        v4 = (((v1) * 76 + (v2) * 151 + (v3) * 29) >> 8);

        *param0 = (u16)((v4 << 10) | (v4 << 5) | v4);
        param0++;
    }
}

static void ov62_0223712C(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02236CBC *v0 = param0->unk_860;
    BgConfig *v1 = param0->unk_14.unk_10;
    SpriteSystem *v2 = param0->unk_14.unk_04;
    SpriteManager *v3 = param0->unk_14.unk_08;
    PaletteData *v4 = param0->unk_14.unk_14;
    int v5;
    int v6[5];

    {
        VarsFlags *v7 = SaveData_GetVarsFlags(param0->unk_830);

        v6[0] = SystemVars_GetBattleTowerPrintState(v7);
        v6[1] = SystemVars_GetBattleFactoryPrintState(v7);
        v6[2] = SystemVars_GetBattleArcadePrintState(v7);
        v6[3] = SystemVars_GetBattleCastlePrintState(v7);
        v6[4] = SystemVars_GetBattleHallPrintState(v7);
    }

    for (v5 = 0; v5 < 5; v5++) {
        if (v6[v5] != 0) {
            int v8[] = { 0, 1, 4, 3, 2 };

            if (v6[v5] == 2) {
                PaletteData *v9 = param0->unk_14.unk_14;
                u16 *v10;

                v10 = PaletteData_GetFadedBuffer(v9, 2);
                ov62_022370D4(v10, (4 + v8[v5]) * 16, 16);
            }
        }
    }

    PaletteData_SetAutoTransparent(v4, 1);
}

static void ov62_022371CC(UnkStruct_0208C06C *param0)
{
    int v0;
    int v1 = 0;
    int v2[4 + 1];
    int v3[5];
    UnkStruct_ov62_02236CBC *v4 = param0->unk_860;
    BgConfig *v5 = param0->unk_14.unk_10;
    SpriteSystem *v6 = param0->unk_14.unk_04;
    SpriteManager *v7 = param0->unk_14.unk_08;
    PaletteData *v8 = param0->unk_14.unk_14;
    SpriteTemplate v9;

    v9.x = 0;
    v9.y = 256;
    v9.z = 0;
    v9.animIdx = 0;
    v9.priority = 10;
    v9.plttIdx = 0;
    v9.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v9.bgPriority = 0;
    v9.vramTransfer = FALSE;
    v9.resources[4] = SPRITE_RESOURCE_NONE;
    v9.resources[5] = SPRITE_RESOURCE_NONE;
    v9.resources[0] = 165535;
    v9.resources[1] = 165535;
    v9.resources[2] = 165535;
    v9.resources[3] = 165535;

    for (v0 = 0; v0 < 5; v0++) {
        v4->unk_40[v0] = SpriteSystem_NewSprite(param0->unk_14.unk_04, param0->unk_14.unk_08, &v9);
        ManagedSprite_SetAnim(v4->unk_40[v0], 1);
        ManagedSprite_TickFrame(v4->unk_40[v0]);
        ManagedSprite_SetAffineScale(v4->unk_40[v0], v4->unk_04[v0], v4->unk_04[v0]);
    }

    for (v0 = 0; v0 < 5; v0++) {
        v9.resources[0] = 18181 + v0;
        v9.resources[1] = 18181 + v0;

        if (v0 == 3) {
            v9.resources[2] = 18181 + 1;
            v9.resources[3] = 18181 + 1;
        } else {
            v9.resources[2] = 18181;
            v9.resources[3] = 18181;
        }

        v4->unk_54[v0] = SpriteSystem_NewSprite(param0->unk_14.unk_04, param0->unk_14.unk_08, &v9);

        if (v0 == 3) {
            ManagedSprite_SetAnim(v4->unk_54[v0], 0);
        } else {
            ManagedSprite_SetAnim(v4->unk_54[v0], 1);
        }

        ManagedSprite_TickFrame(v4->unk_54[v0]);
        ManagedSprite_SetAffineScale(v4->unk_54[v0], v4->unk_04[v0], v4->unk_04[v0]);
        ManagedSprite_SetExplicitPalette(v4->unk_54[v0], 10 + v0);
    }

    v9.resources[0] = 28282;
    v9.resources[1] = 28282;
    v9.resources[2] = 28282;
    v9.resources[3] = 28282;
    v9.resources[4] = SPRITE_RESOURCE_NONE;
    v9.resources[5] = SPRITE_RESOURCE_NONE;
    v9.priority = 20;

    {
        VarsFlags *v10 = SaveData_GetVarsFlags(param0->unk_830);

        v3[0] = SystemVars_GetBattleTowerPrintState(v10);
        v3[1] = SystemVars_GetBattleFactoryPrintState(v10);
        v3[2] = SystemVars_GetBattleArcadePrintState(v10);
        v3[3] = SystemVars_GetBattleCastlePrintState(v10);
        v3[4] = SystemVars_GetBattleHallPrintState(v10);
    }

    for (v0 = 0; v0 < 5; v0++) {
        v4->unk_68[v0] = SpriteSystem_NewSprite(param0->unk_14.unk_04, param0->unk_14.unk_08, &v9);

        if (v3[v0] == 0) {
            ManagedSprite_SetAnim(v4->unk_68[v0], 5);
            ManagedSprite_SetExplicitPalette(v4->unk_68[v0], 4 + 5);
            ManagedSprite_SetDrawFlag(v4->unk_54[v0], 0);
            ManagedSprite_SetDrawFlag(v4->unk_40[v0], 0);
        } else {
            int v11[] = { 0, 1, 4, 3, 2 };

            ManagedSprite_SetAnim(v4->unk_68[v0], v11[v0]);
            ManagedSprite_SetExplicitPalette(v4->unk_68[v0], 4 + v11[v0]);
        }

        ManagedSprite_TickFrame(v4->unk_68[v0]);
        ManagedSprite_SetAffineScale(v4->unk_68[v0], v4->unk_04[v0], v4->unk_04[v0]);
    }

    v9.resources[0] = 29292;
    v9.resources[1] = 29292;
    v9.resources[2] = 29292;
    v9.resources[3] = 29292;
    v9.resources[4] = SPRITE_RESOURCE_NONE;
    v9.resources[5] = SPRITE_RESOURCE_NONE;
    v9.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    v9.priority = 0;

    {
        int v12 = 1000;
        int v13 = v4->unk_90;
        BOOL v14 = 0;

        for (v0 = 0; v0 < 4; v0++) {
            v2[v0] = v13 / v12;
            v13 %= v12;
            v12 /= 10;

            if ((v2[v0] == 0) && (v14 == 0)) {
                v1++;
            } else {
                v14 = 1;
            }
        }

        v2[4] = 10;
    }

    for (v0 = 0; v0 < 4 + 1; v0++) {
        v4->unk_7C[v0] = SpriteSystem_NewSprite(param0->unk_14.unk_04, param0->unk_14.unk_08, &v9);

        if (v2[v0] == 0) {
            if (v0 < v1) {
                ManagedSprite_SetDrawFlag(v4->unk_7C[v0], 0);
            }
        }

        ManagedSprite_SetAnim(v4->unk_7C[v0], v2[v0]);
        ov62_02230E68(v4->unk_7C[v0], 88 + (16 * v0), 72);
        ManagedSprite_TickFrame(v4->unk_7C[v0]);
    }

    ManagedSprite_SetDrawFlag(v4->unk_7C[4 - 1], TRUE);
    ManagedSprite_SetDrawFlag(v4->unk_7C[4 - 0], TRUE);

    for (v0 = 0; v0 < 5; v0++) {
        ManagedSprite_SetAffineOverwriteMode(v4->unk_40[v0], AFFINE_OVERWRITE_MODE_DOUBLE);
        ManagedSprite_SetAffineOverwriteMode(v4->unk_54[v0], AFFINE_OVERWRITE_MODE_DOUBLE);
        ManagedSprite_SetAffineOverwriteMode(v4->unk_68[v0], AFFINE_OVERWRITE_MODE_DOUBLE);
    }
}

static void ov62_022374A8(UnkStruct_0208C06C *param0)
{
    int v0;
    UnkStruct_ov62_02236CBC *v1 = param0->unk_860;

    for (v0 = 0; v0 < 5; v0++) {
        SpriteManager_UnloadCharObjById(param0->unk_14.unk_08, 18181 + v0);
        SpriteManager_UnloadPlttObjById(param0->unk_14.unk_08, 18181 + v0);
        Sprite_DeleteAndFreeResources(v1->unk_54[v0]);
    }

    SpriteManager_UnloadCellObjById(param0->unk_14.unk_08, 18181);
    SpriteManager_UnloadAnimObjById(param0->unk_14.unk_08, 18181);
    SpriteManager_UnloadCellObjById(param0->unk_14.unk_08, 18181 + 1);
    SpriteManager_UnloadAnimObjById(param0->unk_14.unk_08, 18181 + 1);

    for (v0 = 0; v0 < 5; v0++) {
        Sprite_DeleteAndFreeResources(v1->unk_40[v0]);
    }

    SpriteManager_UnloadCharObjById(param0->unk_14.unk_08, 165535);
    SpriteManager_UnloadPlttObjById(param0->unk_14.unk_08, 165535);
    SpriteManager_UnloadCellObjById(param0->unk_14.unk_08, 165535);
    SpriteManager_UnloadAnimObjById(param0->unk_14.unk_08, 165535);

    for (v0 = 0; v0 < 5; v0++) {
        Sprite_DeleteAndFreeResources(v1->unk_68[v0]);
    }

    SpriteManager_UnloadCharObjById(param0->unk_14.unk_08, 28282);
    SpriteManager_UnloadPlttObjById(param0->unk_14.unk_08, 28282);
    SpriteManager_UnloadCellObjById(param0->unk_14.unk_08, 28282);
    SpriteManager_UnloadAnimObjById(param0->unk_14.unk_08, 28282);

    for (v0 = 0; v0 < 4 + 1; v0++) {
        Sprite_DeleteAndFreeResources(v1->unk_7C[v0]);
    }

    SpriteManager_UnloadCharObjById(param0->unk_14.unk_08, 29292);
    SpriteManager_UnloadPlttObjById(param0->unk_14.unk_08, 29292);
    SpriteManager_UnloadCellObjById(param0->unk_14.unk_08, 29292);
    SpriteManager_UnloadAnimObjById(param0->unk_14.unk_08, 29292);
}

static BOOL ov62_022375A4(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02236CBC *v0 = param0->unk_860;
    int v1;
    s16 v2, v3;
    fx32 v4, v5;

    for (v1 = 0; v1 < 5; v1++) {
        v0->unk_2C[v1] += 20;
        v0->unk_2C[v1] %= 360;
    }

    ov62_022315E0(&v0->unk_D4, &v0->unk_D8, 0, 0);

    for (v1 = 0; v1 < 5; v1++) {
        if (v0->unk_2C[0] != 0) {
            v0->unk_04[v1] += 0.05f;
        } else {
            ManagedSprite_SetAffineOverwriteMode(v0->unk_40[v1], AFFINE_OVERWRITE_MODE_NONE);
            ManagedSprite_SetAffineOverwriteMode(v0->unk_54[v1], AFFINE_OVERWRITE_MODE_NONE);
            ManagedSprite_SetAffineOverwriteMode(v0->unk_68[v1], AFFINE_OVERWRITE_MODE_NONE);
            v0->unk_04[v1] = 1.0f;
        }

        v4 = (128 << FX32_SHIFT) + CalcSineDegrees_Wraparound(v0->unk_2C[v1]) * v0->unk_18[v1];
        v5 = (106 << FX32_SHIFT) - CalcCosineDegrees_Wraparound(v0->unk_2C[v1]) * v0->unk_18[v1];

        ManagedSprite_SetPositionFxXY(v0->unk_68[v1], v4, v5);
        ManagedSprite_GetPositionXY(v0->unk_68[v1], &v2, &v3);
        ManagedSprite_SetPositionXY(v0->unk_40[v1], v2 - 32, v3 - 2);
        ManagedSprite_SetPositionXY(v0->unk_54[v1], v2 + 16, v3 - 2);
        ManagedSprite_SetAffineScale(v0->unk_68[v1], v0->unk_04[v1], v0->unk_04[v1]);
        ManagedSprite_SetAffineScale(v0->unk_40[v1], v0->unk_04[v1], v0->unk_04[v1]);
        ManagedSprite_SetAffineScale(v0->unk_54[v1], v0->unk_04[v1], v0->unk_04[v1]);
    }

    if (v0->unk_2C[0] == 0) {
        return 0;
    }

    return 1;
}

static BOOL ov62_022376C4(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02236CBC *v0 = param0->unk_860;
    int v1;
    s16 v2, v3;
    fx32 v4, v5;

    for (v1 = 0; v1 < 5; v1++) {
        v0->unk_2C[v1] += 20;
        v0->unk_2C[v1] %= 360;
    }

    if (v0->unk_2C[0] == 20) {
        for (v1 = 0; v1 < 5; v1++) {
            ManagedSprite_SetAffineOverwriteMode(v0->unk_40[v1], AFFINE_OVERWRITE_MODE_DOUBLE);
            ManagedSprite_SetAffineOverwriteMode(v0->unk_54[v1], AFFINE_OVERWRITE_MODE_DOUBLE);
            ManagedSprite_SetAffineOverwriteMode(v0->unk_68[v1], AFFINE_OVERWRITE_MODE_DOUBLE);
        }
    }

    ov62_022315E0(&v0->unk_D4, &v0->unk_D8, 1, 0);

    for (v1 = 0; v1 < 5; v1++) {
        if (v0->unk_2C[0] != 0) {
            v0->unk_04[v1] -= 0.05f;
        } else {
            ManagedSprite_SetDrawFlag(v0->unk_68[v1], 0);
            ManagedSprite_SetDrawFlag(v0->unk_40[v1], 0);
            ManagedSprite_SetDrawFlag(v0->unk_54[v1], 0);
        }

        v4 = (128 << FX32_SHIFT) - CalcSineDegrees_Wraparound(v0->unk_2C[v1]) * v0->unk_18[v1];
        v5 = (106 << FX32_SHIFT) - CalcCosineDegrees_Wraparound(v0->unk_2C[v1]) * v0->unk_18[v1];

        ManagedSprite_SetPositionFxXY(v0->unk_68[v1], v4, v5);
        ManagedSprite_GetPositionXY(v0->unk_68[v1], &v2, &v3);
        ManagedSprite_SetPositionXY(v0->unk_40[v1], v2 - 32, v3 - 2);
        ManagedSprite_SetPositionXY(v0->unk_54[v1], v2 + 16, v3 - 2);
        ManagedSprite_SetAffineScale(v0->unk_68[v1], v0->unk_04[v1], v0->unk_04[v1]);
        ManagedSprite_SetAffineScale(v0->unk_40[v1], v0->unk_04[v1], v0->unk_04[v1]);
        ManagedSprite_SetAffineScale(v0->unk_54[v1], v0->unk_04[v1], v0->unk_04[v1]);
    }

    if (v0->unk_2C[0] == 0) {
        return 0;
    }

    return 1;
}

static void ov62_02237814(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02236CBC *v0 = param0->unk_860;
    int v1;
    int v2 = 0;
    s16 v3, v4;
    fx32 v5, v6;
    static s16 v7[][2] = {
        { 128, 32 + 10 },
        { 189, 77 + 10 },
        { 172, 124 + 10 },
        { 83, 124 + 10 },
        { 66, 77 + 10 },
    };

    for (v1 = 0; v1 < 5; v1++) {
        v5 = v7[v1][0] << FX32_SHIFT;
        v6 = v7[v1][1] << FX32_SHIFT;

        ManagedSprite_SetPositionFxXY(v0->unk_68[v1], v5, v6);
        ManagedSprite_GetPositionXY(v0->unk_68[v1], &v3, &v4);
        ManagedSprite_SetPositionXY(v0->unk_40[v1], v3 - 32, v4 - 2);
        ManagedSprite_SetPositionXY(v0->unk_54[v1], v3 + 16, v4 - 2);
    }
}

static BOOL ov62_02237884(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02236CBC *v0;

    if (param0->unk_08 == 0) {
        v0 = Heap_AllocFromHeap(HEAP_ID_102, sizeof(UnkStruct_ov62_02236CBC));
        MI_CpuFill8(v0, 0, sizeof(UnkStruct_ov62_02236CBC));
        param0->unk_860 = v0;
        v0->unk_00 = 0;

        {
            int v1;

            for (v1 = 0; v1 < 5; v1++) {
                if ((v1 == 2) || (v1 == 3)) {
                    v0->unk_18[v1] = 52;
                } else {
                    v0->unk_18[v1] = 64;
                }

                v0->unk_2C[v1] = v1 * (360 / 5);
                v0->unk_04[v1] = 0.2f;
            }
        }
        Bg_ClearTilemap(param0->unk_14.unk_10, 3);
        Bg_ClearTilemap(param0->unk_14.unk_10, 2);
        Bg_ClearTilemap(param0->unk_14.unk_10, 7);
        Bg_ClearTilemap(param0->unk_14.unk_10, 6);
        ov62_022315C8(&v0->unk_D4, &v0->unk_D8, 0);
        ov62_02231560(&v0->unk_D4, &v0->unk_D8, 0, 0, GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG1, 0);
        Sound_PlayEffect(SEQ_SE_PL_BREC20);
        param0->unk_08++;
    } else {
        v0 = param0->unk_860;
    }

    switch (param0->unk_08) {
    case 1:
        if (ov62_02231664(&v0->unk_00, 1)) {
            UnkStruct_0202D750 *v2 = sub_0202D750(param0->unk_830);

            v0->unk_90 = sub_0202D230(v2, 0, 0);
            param0->unk_08++;
        }

        PaletteData_BlendMulti(param0->unk_14.unk_14, 2, 0xC, v0->unk_00, param0->unk_14.unk_44);
        PaletteData_BlendMulti(param0->unk_14.unk_14, 3, 0xC, v0->unk_00, param0->unk_14.unk_44);
        PaletteData_BlendMulti(param0->unk_14.unk_14, 1, 0x2, v0->unk_00, param0->unk_14.unk_44);
        break;

    case 2:
        ov62_02234540(param0, 1);
        ov62_02231454(param0);
        ov62_02234540(param0, 0);
        ov62_0223376C(param0, 0);
        sub_0208B9E0(param0->unk_6F0, 0);
        ov62_02234314();
        Bg_SetPriority(6, 2);
        ov62_02236E14(param0);
        PaletteData_BlendMulti(param0->unk_14.unk_14, 3, 0xC | 0x10, v0->unk_00, param0->unk_14.unk_44);
        param0->unk_08++;
        break;
    case 3:
        if (ov62_02233790(param0) == 0) {
            break;
        }

        ov62_02234540(param0, 1);
        ov62_02236D48(param0);
        ov62_022371CC(param0);
        ov62_0223712C(param0);
        ov62_02234540(param0, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
        param0->unk_08++;
        break;
    case 4: {
        BOOL v3 = ov62_022375A4(param0);

        ov62_022315E0(&v0->unk_D4, &v0->unk_D8, 0, 0);
        ov62_02231664(&v0->unk_00, 0);

        if (v3 == 0) {
            param0->unk_08++;
            ov62_02237814(param0);
        }

        PaletteData_BlendMulti(param0->unk_14.unk_14, 3, 0xC | 0x10, v0->unk_00, param0->unk_14.unk_44);
    } break;
    default:
        ov62_0222FB60(param0, 1);
        break;
    }

    return 0;
}

static BOOL ov62_02237AC0(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02236CBC *v0 = param0->unk_860;

    {
        u32 v1, v2;
        BOOL v3 = 0;

        v3 = TouchScreen_GetTapState(&v1, &v2);

        if (v3) {
            if ((v1 > 10 * 8) && (v1 < 22 * 8) && (v2 > 19 * 8) && (v2 < 22 * 8)) {
                Sound_PlayEffect(SEQ_SE_PL_BREC57);
                ov62_0222FB60(param0, 2);
            }
        }
    }

    return 0;
}

static BOOL ov62_02237B00(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02236CBC *v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        if (v0->unk_00 == 0) {
            Sound_PlayEffect(SEQ_SE_PL_BREC21);
        }
        if (v0->unk_00 != 16) {
            v0->unk_00 += 2;
        }

        PaletteData_BlendMulti(param0->unk_14.unk_14, 3, 0xC | 0x10, v0->unk_00, param0->unk_14.unk_44);
        PaletteData_BlendMulti(param0->unk_14.unk_14, 1, 0x4018, v0->unk_00, param0->unk_14.unk_44);

        if (ov62_022376C4(param0) == 0) {
            v0->unk_00 = 0;
            param0->unk_08++;
        }
        break;
    case 1:
        param0->unk_08++;
    case 2:
        ov62_02234540(param0, 1);
        ov62_022374A8(param0);
        ov62_02236DE8(param0);
        ov62_02234540(param0, 0);

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);

        v0->unk_00 = 16;
        v0->unk_00 = 0;
        param0->unk_08++;
        break;
    case 3:
        ov62_0222F824(1);
        ov62_02234540(param0, 1);
        ov62_0223146C(param0);
        ov62_02234540(param0, 0);
        Bg_ClearTilemap(param0->unk_14.unk_10, 2);
        Bg_ClearTilemap(param0->unk_14.unk_10, 6);
        Bg_ClearTilemap(param0->unk_14.unk_10, 3);
        Bg_ClearTilemap(param0->unk_14.unk_10, 7);
        param0->unk_08++;
        break;
    case 4:
        if (v0->unk_00 != 0) {
            v0->unk_00 -= 2;
        } else {
            param0->unk_08++;
            ov62_02231688(&v0->unk_00);
            PaletteData_BlendMulti(param0->unk_14.unk_14, 2, 0xC, v0->unk_00, param0->unk_14.unk_44);
            PaletteData_BlendMulti(param0->unk_14.unk_14, 3, 0xC | 0x10, v0->unk_00, param0->unk_14.unk_44);
            PaletteData_BlendMulti(param0->unk_14.unk_14, 1, 0x2, v0->unk_00, param0->unk_14.unk_44);
        }

        break;
    default:
        if (ov62_02231664(&v0->unk_00, 0)) {
            G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ, 7, 8);
            G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ, 7, 8);
            Heap_FreeToHeap(v0);
            ov62_022318E8(param0);
            ov62_02231688(&v0->unk_00);
            PaletteData_BlendMulti(param0->unk_14.unk_14, 2, 0xC, 16, param0->unk_14.unk_44);
            ov62_0222FB44(param0, 1, 1, param0->unk_10);
            ov62_0222FB60(param0, 5);
        } else {
            PaletteData_BlendMulti(param0->unk_14.unk_14, 3, 0xC, v0->unk_00, param0->unk_14.unk_44);
            PaletteData_BlendMulti(param0->unk_14.unk_14, 1, 0x2, v0->unk_00, param0->unk_14.unk_44);
        }

        break;
    }

    return 0;
}
