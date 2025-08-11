#include "unk_0208A3F4.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/font_oam.h"
#include "struct_defs/struct_020127E8.h"
#include "struct_defs/struct_02089688.h"
#include "struct_defs/struct_0208AF44.h"

#include "bg_window.h"
#include "char_transfer.h"
#include "font.h"
#include "game_options.h"
#include "graphics.h"
#include "inlines.h"
#include "message.h"
#include "narc.h"
#include "palette.h"
#include "render_window.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "text.h"
#include "unk_02012744.h"

void sub_0208A3F4(UnkStruct_02089688 *param0)
{
    param0->unk_2EC.unk_04 = SpriteSystem_Alloc(101);
    {
        const RenderOamTemplate v0 = {
            0,
            128,
            0,
            32,
            0,
            128,
            0,
            32,
        };
        const CharTransferTemplateWithModes v1 = {
            48 + 48, 1024 * 0x40, 512 * 0x20, GX_OBJVRAMMODE_CHAR_1D_64K, GX_OBJVRAMMODE_CHAR_1D_32K
        };

        SpriteSystem_Init(param0->unk_2EC.unk_04, &v0, &v1, 16 + 16);
    }

    {
        BOOL v2;
        const SpriteResourceCapacities v3 = {
            48 + 48,
            16 + 16,
            64,
            64,
            16,
            16,
        };

        param0->unk_2EC.unk_08 = SpriteManager_New(param0->unk_2EC.unk_04);

        v2 = SpriteSystem_InitSprites(param0->unk_2EC.unk_04, param0->unk_2EC.unk_08, 64 + 64);
        GF_ASSERT(v2);

        v2 = SpriteSystem_InitManagerWithCapacities(param0->unk_2EC.unk_04, param0->unk_2EC.unk_08, &v3);
        GF_ASSERT(v2);
    }
}

void sub_0208A490(UnkStruct_02089688 *param0)
{
    NARC *v0;
    BgConfig *v1;
    SpriteSystem *v2 = param0->unk_2EC.unk_04;
    SpriteManager *v3 = param0->unk_2EC.unk_08;
    PaletteData *v4 = param0->unk_2EC.unk_10;
    v1 = param0->unk_2EC.unk_0C;
    v0 = param0->unk_2EC.unk_00;

    Graphics_LoadTilesToBgLayerFromOpenNARC(v0, 12, v1, 1, 0, 0, 0, HEAP_ID_101);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(v0, 14, v1, 1, 0, 0, 0, HEAP_ID_101);
    PaletteData_LoadBufferFromFileStart(v4, 159, 13, 101, 0, 0x20 * 1, 0);

    Graphics_LoadTilesToBgLayerFromOpenNARC(v0, 15, v1, 5, 0, 0, 0, HEAP_ID_101);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(v0, 17, v1, 5, 0, 0, 0, HEAP_ID_101);
    PaletteData_LoadBufferFromFileStart(v4, 159, 16, 101, 1, 0x20 * 1, 0);

    SpriteSystem_LoadPaletteBufferFromOpenNarc(v4, PLTTBUF_MAIN_OBJ, v2, v3, v0, 1, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 1000);
    SpriteSystem_LoadCharResObjFromOpenNarc(v2, v3, v0, 0, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 1000);
    SpriteSystem_LoadCellResObjFromOpenNarc(v2, v3, v0, 2, FALSE, 1000);
    SpriteSystem_LoadAnimResObjFromOpenNarc(v2, v3, v0, 3, FALSE, 1000);

    SpriteSystem_LoadPaletteBufferFromOpenNarc(v4, PLTTBUF_MAIN_OBJ, v2, v3, v0, 5, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 1001);
    SpriteSystem_LoadCharResObjFromOpenNarc(v2, v3, v0, 4, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 1001);
    SpriteSystem_LoadCellResObjFromOpenNarc(v2, v3, v0, 6, FALSE, 1001);
    SpriteSystem_LoadAnimResObjFromOpenNarc(v2, v3, v0, 7, FALSE, 1001);

    SpriteSystem_LoadPaletteBufferFromOpenNarc(v4, PLTTBUF_MAIN_OBJ, v2, v3, v0, 9, FALSE, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 1002);
    SpriteSystem_LoadCharResObjFromOpenNarc(v2, v3, v0, 8, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 1002);
    SpriteSystem_LoadCellResObjFromOpenNarc(v2, v3, v0, 10, FALSE, 1002);
    SpriteSystem_LoadAnimResObjFromOpenNarc(v2, v3, v0, 11, FALSE, 1002);

    {
        int v5 = Options_Frame(param0->unk_3B8.options);

        LoadMessageBoxGraphics(v1, BG_LAYER_SUB_0, 1, 10, v5, HEAP_ID_101);
        PaletteData_LoadBufferFromFileStart(v4, 38, GetMessageBoxPaletteNARCMember(v5), 101, 1, 0x20, 11 * 16);
        PaletteData_LoadBufferFromFileStart(v4, 14, 7, 101, 1, 0x20, 12 * 16);
    }
}

void sub_0208A6CC(UnkStruct_02089688 *param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_2D0; v0++) {
        Sprite_DeleteAndFreeResources(param0->unk_00[v0].unk_0C);
    }

    for (v0 = 0; v0 < param0->unk_3EC; v0++) {
        Sprite_DeleteAndFreeResources(param0->unk_1C0[v0].unk_0C);
    }

    for (v0 = 0; v0 < 2; v0++) {
        Sprite_DeleteAndFreeResources(param0->unk_268[v0].unk_0C);
    }

    for (v0 = 0; v0 < 3; v0++) {
        Sprite_DeleteAndFreeResources(param0->unk_214[v0].unk_0C);
    }

    sub_0208AFE8(param0);
    Window_Remove(&param0->unk_2EC.unk_B0);
}

void sub_0208A758(UnkStruct_02089688 *param0)
{
    int i;
    int v0 = 0, v1 = 0;

    SpriteTemplate v2;
    SpriteSystem *v3 = param0->unk_2EC.unk_04;
    SpriteManager *v4 = param0->unk_2EC.unk_08;

    v2.x = 0;
    v2.y = 0;
    v2.z = 0;
    v2.animIdx = 0;
    v2.priority = 10;
    v2.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v2.bgPriority = 0;
    v2.vramTransfer = FALSE;
    v2.plttIdx = 0;
    v2.resources[0] = 1000;
    v2.resources[1] = 1000;
    v2.resources[2] = 1000;
    v2.resources[3] = 1000;
    v2.resources[4] = SPRITE_RESOURCE_NONE;
    v2.resources[5] = SPRITE_RESOURCE_NONE;

    u32 v5 = param0->unk_3B8.unk_28;
    for (i = param0->unk_3F0 - 1; i >= 0; i--) {
        param0->unk_00[i].unk_00 = (v5 % 10) + 1;
        v5 /= 10;
    }

    for (i = 0; i < param0->unk_2D0 + param0->unk_3EC; i++) {
        if (param0->unk_3EC != 0 && i == param0->unk_1C0[v0].unk_00 + v0 + 1) {
            param0->unk_1C0[v0].unk_0C = SpriteSystem_NewSprite(v3, v4, &v2);
            ManagedSprite_SetPositionXY(param0->unk_1C0[v0].unk_0C, 76 + i * 8, 24);
            ManagedSprite_SetAnim(param0->unk_1C0[v0].unk_0C, 22);
            ManagedSprite_TickFrame(param0->unk_1C0[v0].unk_0C);
            v0++;
        } else {
            param0->unk_00[v1].unk_0C = SpriteSystem_NewSprite(v3, v4, &v2);
            ManagedSprite_SetPositionXY(param0->unk_00[v1].unk_0C, 76 + i * 8, 24);
            ManagedSprite_SetAnim(param0->unk_00[v1].unk_0C, sub_0208AD98(param0->unk_00[v1].unk_00, param0->unk_00[v1].unk_08));
            ManagedSprite_SetAffineOverwriteMode(param0->unk_00[v1].unk_0C, AFFINE_OVERWRITE_MODE_DOUBLE);
            ManagedSprite_TickFrame(param0->unk_00[v1].unk_0C);
            v1++;
        }
    }
}

void sub_0208A8A0(UnkStruct_02089688 *param0)
{
    SpriteTemplate v0;
    SpriteSystem *v1 = param0->unk_2EC.unk_04;
    SpriteManager *v2 = param0->unk_2EC.unk_08;
    PaletteData *v3 = param0->unk_2EC.unk_10;

    v0.x = 0;
    v0.y = 0;
    v0.z = 0;
    v0.animIdx = 0;
    v0.priority = 0;
    v0.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v0.bgPriority = 0;
    v0.vramTransfer = FALSE;
    v0.plttIdx = 0;
    v0.resources[0] = 1001;
    v0.resources[1] = 1001;
    v0.resources[2] = 1001;
    v0.resources[3] = 1001;
    v0.resources[4] = SPRITE_RESOURCE_NONE;
    v0.resources[5] = SPRITE_RESOURCE_NONE;

    param0->unk_214[0].unk_0C = SpriteSystem_NewSprite(v1, v2, &v0);
    param0->unk_214[1].unk_0C = SpriteSystem_NewSprite(v1, v2, &v0);
    param0->unk_214[2].unk_0C = SpriteSystem_NewSprite(v1, v2, &v0);

    sub_0208AAE4(param0, param0->unk_3F0);
    ManagedSprite_SetAnim(param0->unk_214[0].unk_0C, 0);
    ManagedSprite_TickFrame(param0->unk_214[0].unk_0C);

    param0->unk_214[1].unk_14.unk_00 = 0;
    param0->unk_214[1].unk_14.unk_02 = 0;
    param0->unk_214[1].unk_00 = 1;

    sub_0208AB2C(param0, 0);
    ManagedSprite_SetAnim(param0->unk_214[1].unk_0C, param0->unk_214[1].unk_00);
    ManagedSprite_TickFrame(param0->unk_214[1].unk_0C);
    ManagedSprite_SetExplicitOamMode(param0->unk_214[1].unk_0C, GX_OAM_MODE_XLU);

    param0->unk_214[2].unk_14.unk_00 = 0;
    param0->unk_214[2].unk_14.unk_02 = 0;
    param0->unk_214[2].unk_00 = 1;

    sub_0208AB2C(param0, 0);
    ManagedSprite_SetAnim(param0->unk_214[2].unk_0C, param0->unk_214[2].unk_00);
    ManagedSprite_TickFrame(param0->unk_214[2].unk_0C);
    ManagedSprite_SetExplicitOamMode(param0->unk_214[2].unk_0C, GX_OAM_MODE_XLU);
    sub_0208AAB4(param0, 1, 0);
    sub_0208AAB4(param0, 2, 0);
}

void sub_0208A9BC(UnkStruct_02089688 *param0)
{
    SpriteTemplate v0;
    SpriteSystem *v1 = param0->unk_2EC.unk_04;
    SpriteManager *v2 = param0->unk_2EC.unk_08;
    PaletteData *v3 = param0->unk_2EC.unk_10;

    v0.x = 0;
    v0.y = 0;
    v0.z = 0;
    v0.animIdx = 0;
    v0.priority = 10;
    v0.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v0.bgPriority = 0;
    v0.vramTransfer = FALSE;
    v0.plttIdx = 0;
    v0.resources[0] = 1002;
    v0.resources[1] = 1002;
    v0.resources[2] = 1002;
    v0.resources[3] = 1002;
    v0.resources[4] = SPRITE_RESOURCE_NONE;
    v0.resources[5] = SPRITE_RESOURCE_NONE;
    v0.plttIdx = 0;
    param0->unk_268[0].unk_0C = SpriteSystem_NewSprite(v1, v2, &v0);
    v0.plttIdx = 1;
    param0->unk_268[1].unk_0C = SpriteSystem_NewSprite(v1, v2, &v0);

    {
        s16 v4, v5;

        v4 = (param0->unk_2EC.unk_18[26].rect.left + param0->unk_2EC.unk_18[26].rect.right) / 2;
        v5 = (param0->unk_2EC.unk_18[26].rect.top + param0->unk_2EC.unk_18[26].rect.bottom) / 2;

        ManagedSprite_SetPositionXY(param0->unk_268[0].unk_0C, v4, v5);
        ManagedSprite_SetAnim(param0->unk_268[0].unk_0C, 0);
        ManagedSprite_TickFrame(param0->unk_268[0].unk_0C);

        v4 = (param0->unk_2EC.unk_18[27].rect.left + param0->unk_2EC.unk_18[27].rect.right) / 2;
        v5 = (param0->unk_2EC.unk_18[27].rect.top + param0->unk_2EC.unk_18[27].rect.bottom) / 2;

        ManagedSprite_SetPositionXY(param0->unk_268[1].unk_0C, v4, v5);
        ManagedSprite_SetAnim(param0->unk_268[1].unk_0C, 0);
        ManagedSprite_TickFrame(param0->unk_268[1].unk_0C);
    }
}

void sub_0208AAB4(UnkStruct_02089688 *param0, int param1, BOOL param2)
{
    if (param2 == 1) {
        ManagedSprite_SetDrawFlag(param0->unk_214[param1].unk_0C, 1);
    } else {
        ManagedSprite_SetDrawFlag(param0->unk_214[param1].unk_0C, 0);
    }
}

void sub_0208AAE4(UnkStruct_02089688 *param0, int param1)
{
    s16 v0, v1;
    ManagedSprite *v2;

    if (param1 < param0->unk_3F0) {
        return;
    }

    v2 = param0->unk_00[param1].unk_0C;
    param0->unk_214[0].unk_00 = param1;

    ManagedSprite_GetPositionXY(v2, &v0, &v1);
    ManagedSprite_SetPositionXY(param0->unk_214[0].unk_0C, v0, v1 + 16);
}

void sub_0208AB2C(UnkStruct_02089688 *param0, int param1)
{
    s16 v0 = (param0->unk_2EC.unk_18[param1 + 16].rect.left + param0->unk_2EC.unk_18[param1 + 16].rect.right) / 2;
    s16 v1 = (param0->unk_2EC.unk_18[param1 + 16].rect.top + param0->unk_2EC.unk_18[param1 + 16].rect.bottom) / 2;

    ManagedSprite_SetPositionXY(param0->unk_214[1].unk_0C, v0, v1);
}

void sub_0208AB6C(UnkStruct_02089688 *param0, int param1, int param2)
{
    s16 v0 = (param0->unk_2EC.unk_18[param1 + 16].rect.left + param0->unk_2EC.unk_18[param1 + 16].rect.right) / 2;
    s16 v1 = (param0->unk_2EC.unk_18[param1 + 16].rect.top + param0->unk_2EC.unk_18[param1 + 16].rect.bottom) / 2;

    ManagedSprite_SetPositionXY(param0->unk_214[param2].unk_0C, v0, v1);
}

void sub_0208ABB4(UnkStruct_02089688 *param0)
{
    ManagedSprite_TickFrame(param0->unk_214[0].unk_0C);
    ManagedSprite_TickFrame(param0->unk_214[1].unk_0C);
    ManagedSprite_TickFrame(param0->unk_214[2].unk_0C);

    {
        int v0 = 2;
        int v1;
        BOOL v2;

        for (v0 = 1; v0 < 3; v0++) {
            v1 = ManagedSprite_GetActiveAnim(param0->unk_214[v0].unk_0C);

            if (v1 == 3) {
                v2 = ManagedSprite_IsAnimated(param0->unk_214[v0].unk_0C);

                if (v2 == 0) {
                    ManagedSprite_SetAnim(param0->unk_214[v0].unk_0C, param0->unk_214[v0].unk_00);

                    if (param0->unk_2EC.unk_88 == 1) {
                        sub_0208AAB4(param0, 1, 0);
                    } else {
                        sub_0208AAB4(param0, 1, 1);
                    }

                    sub_0208AAB4(param0, 2, 0);
                }
            } else {
                if (v1 != param0->unk_214[v0].unk_00) {
                    ManagedSprite_SetAnim(param0->unk_214[v0].unk_0C, param0->unk_214[v0].unk_00);
                }

                {
                    v1 = ManagedSprite_GetActiveAnim(param0->unk_214[2].unk_0C);

                    if (v1 != 3) {
                        if (param0->unk_2EC.unk_88 == 1) {
                            sub_0208AAB4(param0, 1, 0);
                        } else {
                            sub_0208AAB4(param0, 1, 1);
                        }
                    }
                }
            }
        }
    }
}

static void sub_0208AC80(FontOAM *param0, int param1, int param2)
{
    int v0;
    int v1;

    if (param0 != NULL) {
        sub_020128C4(param0, param1, param2);
    }
}

void sub_0208AC8C(UnkStruct_02089688 *param0)
{
    int v0;
    s16 v1, v2;

    for (v0 = 0; v0 < 2; v0++) {
        v1 = (param0->unk_2EC.unk_18[v0 + 26].rect.left + param0->unk_2EC.unk_18[v0 + 26].rect.right) / 2;
        v1 -= 40;
        v2 = (param0->unk_2EC.unk_18[v0 + 26].rect.top + param0->unk_2EC.unk_18[v0 + 26].rect.bottom) / 2;
        v2 -= 7;

        switch (param0->unk_268[v0].unk_00) {
        case 0:
            param0->unk_268[v0].unk_14.unk_04 = 0;
            break;
        case 1:
            param0->unk_268[v0].unk_14.unk_04++;

            if (param0->unk_268[v0].unk_14.unk_04 == 1) {
                ManagedSprite_SetAnim(param0->unk_268[v0].unk_0C, 1);
                sub_0208AC80(param0->unk_2EC.unk_90[v0], v1, v2 - 0);
            } else if (param0->unk_268[v0].unk_14.unk_04 == 2) {
                ManagedSprite_SetAnim(param0->unk_268[v0].unk_0C, 2);
                sub_0208AC80(param0->unk_2EC.unk_90[v0], v1, v2 - 1);
            } else if (param0->unk_268[v0].unk_14.unk_04 == 10) {
                ManagedSprite_SetAnim(param0->unk_268[v0].unk_0C, 0);
                sub_0208AC80(param0->unk_2EC.unk_90[v0], v1, v2 + 0);
                param0->unk_268[v0].unk_00++;
            }
            break;
        default:
            ManagedSprite_SetAnim(param0->unk_268[v0].unk_0C, 0);
            sub_0208AC80(param0->unk_2EC.unk_90[v0], v1, v2);
            param0->unk_268[v0].unk_00 = 0;
            break;
        }
    }
}

int sub_0208AD98(int param0, BOOL param1)
{
    int v0 = 0;

    if (param1 == 0) {
        v0 = 11;
    }

    v0 += param0;

    return v0;
}

void sub_0208ADA4(UnkStruct_02089688 *param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_2D0; v0++) {
        if ((v0 >= param0->unk_2DC) && (v0 < param0->unk_2E0)) {
            param0->unk_00[v0].unk_08 = 1;
        } else {
            param0->unk_00[v0].unk_08 = 0;
        }
    }
}

void sub_0208ADE4(UnkStruct_02089688 *param0, int param1)
{
    int v0;
    int v1;
    s16 v2;
    s16 v3, v4;

    v2 = param0->unk_2A0[param0->unk_2D4];
    v1 = 0;

    for (v0 = 0; v0 < param0->unk_2D0; v0++) {
        if ((v0 >= param0->unk_2DC) && (v0 < param0->unk_2E0)) {
            if (v0 == param0->unk_2DC) {
                v2 += ((32 + 8) / 2);
            } else {
                v2 += 32;
            }
        } else {
            if (v0 == 0) {
                v2 += ((32 + 8) / 2);
            } else {
                v2 += 8;
            }
        }

        ManagedSprite_GetPositionXY(param0->unk_00[v0].unk_0C, &v3, &v4);

        if (param1 == 0) {
            ManagedSprite_SetPositionXY(param0->unk_00[v0].unk_0C, v2, v4);
        } else {
            param0->unk_00[v0].unk_14.unk_00 = (v2 - v3) / 2;
            param0->unk_00[v0].unk_14.unk_02 = 0;
            param0->unk_00[v0].unk_14.unk_04 = 2;
            param0->unk_00[v0].unk_14.unk_05 = 0;
        }

        if ((v0 == param0->unk_1C0[v1].unk_00) && (v1 != param0->unk_3EC)) {
            ManagedSprite_GetPositionXY(param0->unk_1C0[v1].unk_0C, &v3, &v4);

            if (param0->unk_2DC == param0->unk_2E0) {
                v2 += 8;
            } else {
                if ((v0 > param0->unk_2DC) && (v0 < param0->unk_2E0)) {
                    v2 += ((32 + 8) / 2);
                } else {
                    v2 += 8;
                }
            }

            if (param1 == 0) {
                ManagedSprite_SetPositionXY(param0->unk_1C0[v1].unk_0C, v2, v4);
            } else {
                param0->unk_1C0[v1].unk_14.unk_00 = (v2 - v3) / 2;
                param0->unk_1C0[v1].unk_14.unk_02 = 0;
                param0->unk_1C0[v1].unk_14.unk_04 = 2;
            }

            v1++;
        }
    }
}

static inline void inline_0208AF44(UnkStruct_02089688 *param0, int param1, s16 param2, s16 param3)
{
    s16 v0, v1;
    UnkStruct_0208AF44 *v2 = &param0->unk_00[param1];

    ManagedSprite_GetPositionXY(v2->unk_0C, &v0, &v1);

    v2->unk_10->rect.top = v1 - param3;
    v2->unk_10->rect.left = v0 - param2;
    v2->unk_10->rect.bottom = v1 + param3;
    v2->unk_10->rect.right = v0 + param2;
}

void sub_0208AF44(UnkStruct_02089688 *param0)
{
    int v0;
    s16 v1;
    s16 v2;

    for (v0 = 0; v0 < param0->unk_2D0; v0++) {
        if ((v0 >= param0->unk_2DC) && (v0 < param0->unk_2E0)) {
            v1 = 32 / 2;
            v2 = 32 / 2;
        } else {
            v1 = 8 / 2;
            v2 = 8;
        }

        inline_0208AF44(param0, v0, v1, v2);
    }
}

void sub_0208AFCC(UnkStruct_02089688 *param0)
{
    param0->unk_2EC.unk_8C = sub_02012744(2, HEAP_ID_101);
    Font_InitManager(FONT_SUBSCREEN, HEAP_ID_101);
}

void sub_0208AFE8(UnkStruct_02089688 *param0)
{
    Font_Free(FONT_SUBSCREEN);
    sub_02012870(param0->unk_2EC.unk_90[0]);
    CharTransfer_ClearRange(&param0->unk_2EC.unk_98[0]);
    sub_02012870(param0->unk_2EC.unk_90[1]);
    CharTransfer_ClearRange(&param0->unk_2EC.unk_98[1]);
    sub_020127BC(param0->unk_2EC.unk_8C);
}

void sub_0208B028(UnkStruct_02089688 *param0)
{
    SpriteSystem_LoadPaletteBuffer(param0->unk_2EC.unk_10, 2, param0->unk_2EC.unk_04, param0->unk_2EC.unk_08, 14, 7, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 1003);
}

void sub_0208B064(UnkStruct_02089688 *param0)
{
    sub_0208B028(param0);
    sub_0208B090(param0, 0, 78, 165, 0);
    sub_0208B090(param0, 1, 172, 165, 0);
}

void sub_0208B090(UnkStruct_02089688 *param0, int param1, int param2, int param3, int param4)
{
    s16 v0, v1;
    UnkStruct_020127E8 v2;
    Strbuf *v3;
    int v4;
    int v5;
    MessageLoader *v6;
    Window v7;

    v6 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0212, HEAP_ID_101);
    v3 = MessageLoader_GetNewStrbuf(v6, 2 + param1);

    {
        Window_Init(&v7);
        Window_AddToTopLeftCorner(param0->unk_2EC.unk_0C, &v7, 10, 2, 0, 0);
        Text_AddPrinterWithParamsAndColor(&v7, FONT_SUBSCREEN, v3, Font_CalcCenterAlignment(FONT_SUBSCREEN, v3, 0, 80), 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 2), NULL);
    }

    v4 = 1003;
    v5 = sub_02012898(&v7, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_101);

    CharTransfer_AllocRange(v5, 1, NNS_G2D_VRAM_TYPE_2DMAIN, &param0->unk_2EC.unk_98[param1]);

    v0 = (param0->unk_2EC.unk_18[param1 + 26].rect.left + param0->unk_2EC.unk_18[param1 + 26].rect.right) / 2;
    v0 -= 40;
    v1 = (param0->unk_2EC.unk_18[param1 + 26].rect.top + param0->unk_2EC.unk_18[param1 + 26].rect.bottom) / 2;
    v1 -= 7;

    v2.unk_00 = param0->unk_2EC.unk_8C;
    v2.unk_04 = &v7;
    v2.unk_08 = SpriteManager_GetSpriteList(param0->unk_2EC.unk_08);
    v2.unk_0C = SpriteManager_FindPlttResourceProxy(param0->unk_2EC.unk_08, v4);
    v2.unk_10 = NULL;
    v2.unk_14 = param0->unk_2EC.unk_98[param1].offset;
    v2.unk_18 = v0;
    v2.unk_1C = v1;
    v2.unk_20 = 0;
    v2.unk_24 = 0;
    v2.unk_28 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v2.heapID = HEAP_ID_101;

    param0->unk_2EC.unk_90[param1] = sub_020127E8(&v2);

    sub_02012AC0(param0->unk_2EC.unk_90[param1], param4);
    Strbuf_Free(v3);
    MessageLoader_Free(v6);
    Window_Remove(&v7);
}

void sub_0208B1C4(BgConfig *param0, Window *param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8)
{
    Window_Init(param1);
    Window_Add(param0, param1, param2, param3, param4, param5, param6, 12, param7);
    Window_DrawMessageBoxWithScrollCursor(param1, 1, 1, 11);
    Window_FillTilemap(param1, 15);
    Window_CopyToVRAM(param1);
    sub_0208B230(param1, param8);
}

void sub_0208B230(Window *param0, int param1)
{
    MessageLoader *v0;
    Strbuf *v1;

    Window_FillTilemap(param0, 15);

    v0 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0212, HEAP_ID_101);
    v1 = MessageLoader_GetNewStrbuf(v0, param1);

    Window_FillTilemap(param0, 15);
    Text_AddPrinterWithParams(param0, FONT_MESSAGE, v1, 0, 0, TEXT_SPEED_INSTANT, NULL);
    Window_CopyToVRAM(param0);

    Strbuf_Free(v1);
    MessageLoader_Free(v0);
}
