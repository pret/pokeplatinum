#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "sys_task_manager.h"

#include "struct_defs/struct_0208B284.h"
#include "struct_defs/struct_0208B878.h"
#include "struct_defs/sprite_template.h"

#include "narc.h"
#include "unk_0200C6E4.h"
#include "sys_task.h"
#include "heap.h"
#include "unk_0201D15C.h"
#include "unk_0208B284.h"

typedef struct {
    f32 unk_00;
    f32 unk_04;
} UnkStruct_0208B2DC;

static BOOL sub_0208B2DC(s16 param0, s16 param1, f32 param2, f32 param3, f32 * param4, f32 * param5, f32 param6, s16 param7);
static void sub_0208B3D4(SysTask * param0, void * param1);
UnkStruct_0208B878 * sub_0208B284(UnkStruct_0208B284 param0, SpriteRenderer * param1, SpriteGfxHandler * param2, PaletteData * param3);
void sub_0208B6B0(UnkStruct_0208B878 * param0, int param1);
void sub_0208B7B4(UnkStruct_0208B878 * param0);
void sub_0208B830(UnkStruct_0208B878 * param0);
BOOL sub_0208B878(UnkStruct_0208B878 * param0, int param1);
BOOL sub_0208B8B0(UnkStruct_0208B878 * param0, BOOL param1);
BOOL sub_0208B8B8(UnkStruct_0208B878 * param0, s16 param1, s16 param2);
BOOL sub_0208B948(UnkStruct_0208B878 * param0, s16 param1, s16 param2);
BOOL sub_0208B988(UnkStruct_0208B878 * param0);
BOOL sub_0208B9E0(UnkStruct_0208B878 * param0, BOOL param1);
static BOOL sub_0208B930(UnkStruct_0208B878 * param0, s16 param1, s16 param2);

static const int Unk_020F2FB0[] = {
    97, 98, 99, 100, 101, 128, 133,
};

UnkStruct_0208B878 * sub_0208B284 (UnkStruct_0208B284 param0, SpriteRenderer * param1, SpriteGfxHandler * param2, PaletteData * param3)
{
    UnkStruct_0208B878 * v0;

    v0 = Heap_AllocFromHeap(param0.unk_04, sizeof(UnkStruct_0208B878));
    v0->unk_10.unk_00 = param0.unk_00;
    v0->unk_10.unk_04 = param0.unk_04;
    v0->unk_10.unk_08 = param0.unk_08;
    v0->unk_10.unk_0C = param0.unk_0C;
    v0->unk_10.unk_10 = param0.unk_10;
    v0->unk_00.unk_04 = param1;
    v0->unk_00.unk_08 = param2;
    v0->unk_00.unk_0C = param3;
    v0->unk_E4 = 0;
    v0->unk_FC = (15 * 1);
    v0->unk_100 = (15 * 1);
    v0->unk_F4 = NULL;
    v0->unk_F0 = 0;

    return v0;
}

static BOOL sub_0208B2DC (s16 param0, s16 param1, f32 param2, f32 param3, f32 * param4, f32 * param5, f32 param6, s16 param7)
{
    f32 v0;
    f32 v1;
    UnkStruct_0208B2DC v2;
    UnkStruct_0208B2DC v3;
    UnkStruct_0208B2DC v4;

    v4.unk_00 = 0;
    v4.unk_04 = 0;

    v3.unk_00 = (param0 - param2);
    v3.unk_04 = (param1 - param3);

    v2.unk_00 = 0;
    v2.unk_04 = 0;

    v1 = (v3.unk_00 * v3.unk_00) + (v3.unk_04 * v3.unk_04);
    v0 = FX_Sqrt(FX_F32_TO_FX32(v1));
    v0 = FX_FX32_TO_F32(v0);

    if ((v0 < param6) || (param7 > v0) || (v0 == 0)) {
        return 0;
    }

    v2.unk_00 = (v3.unk_00 * param6) / v0;
    v2.unk_04 = (v3.unk_04 * param6) / v0;

    *param4 = (v2.unk_00 + v4.unk_00);
    *param5 = (v2.unk_04 + v4.unk_04);

    return 1;
}

static void sub_0208B3D4 (SysTask * param0, void * param1)
{
    UnkStruct_0208B878 * v0 = param1;

    if (v0->unk_F0 == 0) {
        return;
    }

    {
        int v1;
        int v2 = 0;
        f32 v3;
        f32 v4;
        fx32 v5;
        fx32 v6;
        f32 v7;
        f32 v8;
        BOOL v9;

        for (v1 = 0; v1 < v0->unk_10.unk_00; v1++) {
            if (v1 != 0) {
                v0->unk_24[v1].unk_04 = v0->unk_24[v1 - 1].unk_04;
                v0->unk_24[v1].unk_06 = v0->unk_24[v1 - 1].unk_06;
            }

            sub_0200D67C(v0->unk_24[v1].unk_00, &v5, &v6, v0->unk_10.unk_10);

            v3 = FX_FX32_TO_F32(v5);
            v4 = FX_FX32_TO_F32(v6);

            v9 = sub_0208B2DC(v0->unk_24[v1].unk_04, v0->unk_24[v1].unk_06, v3, v4, &v7, &v8, (8.0f - ((v1 - v2) * 0.5f)) / 2, 16);

            if (v9 && (v0->unk_24[v1].unk_08 == 0)) {
                sub_0200D5E8(v0->unk_24[v1].unk_00, FX_F32_TO_FX32(v7), FX_F32_TO_FX32(v8));
            } else {
                {
                    int v10;
                    int v11;
                    s16 v12, v13;
                    fx32 v14, v15;

                    switch (v0->unk_24[v1].unk_08) {
                    case 0:
                        sub_0200D5A0(v0->unk_24[v1].unk_00, &v12, &v13, v0->unk_10.unk_10);

                        if (v0->unk_E8 == 0xFF) {
                            v0->unk_E8 = v1;
                            v11 = FX_Atan2Idx(FX_F32_TO_FX32(v0->unk_24[0].unk_06 - v13), FX_F32_TO_FX32(v0->unk_24[0].unk_04 - v12));
                            v0->unk_24[v1].unk_0C = v11;
                        } else {
                            v0->unk_24[v1].unk_0C = v0->unk_24[v0->unk_E8].unk_0C - ((720 / v0->unk_10.unk_00) * v0->unk_EC);
                        }

                        v0->unk_24[v1].unk_0C %= 720;
                        v0->unk_EC++;
                        v0->unk_24[v1].unk_08++;
                        break;
                    case 1:
                        v0->unk_24[v1].unk_0C += (8 / 2);
                        v0->unk_24[v1].unk_0C %= 720;
                        v14 = (v0->unk_24[0].unk_04 << FX32_SHIFT) + (sub_0201D250(v0->unk_24[v1].unk_0C) * v0->unk_FC);
                        v15 = (v0->unk_24[0].unk_06 << FX32_SHIFT) + (sub_0201D264(v0->unk_24[v1].unk_0C) * v0->unk_100);
                        sub_0200D650(v0->unk_24[v1].unk_00, v14, v15, v0->unk_10.unk_10);
                        break;
                    default:
                        break;
                    }
                }
                v2++;
            }
        }
    }
}

void sub_0208B63C (UnkStruct_0208B878 * param0, int param1)
{
    NARC * v0;
    SpriteRenderer * v1;
    SpriteGfxHandler * v2;
    PaletteData * v3;

    v1 = param0->unk_00.unk_04;
    v2 = param0->unk_00.unk_08;
    v3 = param0->unk_00.unk_0C;
    v0 = param0->unk_00.unk_00;

    SpriteGfxHandler_UnloadPlttObjById(v2, 22222 + 1);
    SpriteGfxHandler_UnloadPlttObjById(v2, 22222 + 2);
    SpriteRenderer_LoadPalette(v3, 2, v1, v2, v0, Unk_020F2FB0[param1], 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 22222 + 1);
    SpriteRenderer_LoadPalette(v3, 3, v1, v2, v0, Unk_020F2FB0[param1], 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, 22222 + 2);
}

void sub_0208B6B0 (UnkStruct_0208B878 * param0, int param1)
{
    NARC * v0;
    SpriteRenderer * v1;
    SpriteGfxHandler * v2;
    PaletteData * v3;
    int v4 = 22222 + param0->unk_10.unk_08;

    v1 = param0->unk_00.unk_04;
    v2 = param0->unk_00.unk_08;
    v3 = param0->unk_00.unk_0C;
    v0 = param0->unk_00.unk_00;

    if (param0->unk_10.unk_08 == 1) {
        if (param0->unk_10.unk_0C == 0) {
            SpriteRenderer_LoadPalette(v3, 2, v1, v2, v0, Unk_020F2FB0[param1], 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, v4);
        } else {
            SpriteRenderer_LoadPalette(v3, 2, v1, v2, v0, 96, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, v4);
        }

        SpriteRenderer_LoadCharResObjFromOpenNarc(v1, v2, v0, 95, 0, NNS_G2D_VRAM_TYPE_2DMAIN, v4);
    } else {
        if (param0->unk_10.unk_0C == 0) {
            SpriteRenderer_LoadPalette(v3, 3, v1, v2, v0, Unk_020F2FB0[param1], 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, v4);
        } else {
            SpriteRenderer_LoadPalette(v3, 3, v1, v2, v0, 96, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, v4);
        }

        SpriteRenderer_LoadCharResObjFromOpenNarc(v1, v2, v0, 95, 0, NNS_G2D_VRAM_TYPE_2DSUB, v4);
    }

    SpriteRenderer_LoadCellResObjFromOpenNarc(v1, v2, v0, 93, 0, v4);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(v1, v2, v0, 94, 0, v4);
}

void sub_0208B7B4 (UnkStruct_0208B878 * param0)
{
    int v0;
    SpriteTemplate v1;
    SpriteRenderer * v2;
    SpriteGfxHandler * v3;
    PaletteData * v4;

    v2 = param0->unk_00.unk_04;
    v3 = param0->unk_00.unk_08;
    v4 = param0->unk_00.unk_0C;

    v1.x = 128;
    v1.y = 96;
    v1.z = 0;
    v1.animIdx = 0;
    v1.priority = 0;
    v1.vramType = param0->unk_10.unk_08;
    v1.bgPriority = 0;
    v1.transferToVRAM = FALSE;
    v1.plttIdx = 0;
    v1.resources[0] = 22222 + param0->unk_10.unk_08;
    v1.resources[1] = 22222 + param0->unk_10.unk_08;
    v1.resources[2] = 22222 + param0->unk_10.unk_08;
    v1.resources[3] = 22222 + param0->unk_10.unk_08;
    v1.resources[4] = SPRITE_RESOURCE_NONE;
    v1.resources[5] = SPRITE_RESOURCE_NONE;

    for (v0 = 0; v0 < param0->unk_10.unk_00; v0++) {
        param0->unk_24[v0].unk_00 = SpriteActor_LoadResources(v2, v3, &v1);

        sub_0200D330(param0->unk_24[v0].unk_00);
        SpriteActor_SetSpritePositionXY(param0->unk_24[v0].unk_00, 256 / 2, 192 / 2);
    }
}

void sub_0208B830 (UnkStruct_0208B878 * param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_10.unk_00; v0++) {
        SpriteGfxHandler_UnloadCharObjById(param0->unk_00.unk_08, 22222 + param0->unk_10.unk_08);
        SpriteGfxHandler_UnloadCellObjById(param0->unk_00.unk_08, 22222 + param0->unk_10.unk_08);
        SpriteGfxHandler_UnloadAnimObjById(param0->unk_00.unk_08, 22222 + param0->unk_10.unk_08);
        sub_0200D0F4(param0->unk_24[v0].unk_00);
    }
}

BOOL sub_0208B878 (UnkStruct_0208B878 * param0, int param1)
{
    param0->unk_00.unk_00 = NARC_ctor(NARC_INDEX_RESOURCE__ENG__BATT_REC__BATT_REC_GRA, param0->unk_10.unk_04);

    sub_0208B6B0(param0, param1);
    sub_0208B7B4(param0);

    param0->unk_F4 = SysTask_ExecuteOnVBlank(sub_0208B3D4, param0, 0x1000);

    return 1;
}

BOOL sub_0208B8B0 (UnkStruct_0208B878 * param0, BOOL param1)
{
    param0->unk_F0 = param1;
    return 1;
}

BOOL sub_0208B8B8 (UnkStruct_0208B878 * param0, s16 param1, s16 param2)
{
    param0->unk_24[0].unk_04 = param1;
    param0->unk_24[0].unk_06 = param2;
    param0->unk_E8 = 0xFF;
    param0->unk_EC = 0;

    {
        int v0;

        for (v0 = 0; v0 < param0->unk_10.unk_00; v0++) {
            param0->unk_24[v0].unk_08 = 0;
        }
    }

    return 1;
}

BOOL sub_0208B8EC (UnkStruct_0208B878 * param0, s16 param1, s16 param2)
{
    if (sub_0208B930(param0, param1, param2) == 0) {
        return 0;
    }

    param0->unk_24[0].unk_04 = param1;
    param0->unk_24[0].unk_06 = param2;
    param0->unk_E8 = 0xFF;
    param0->unk_EC = 0;

    {
        int v0;

        for (v0 = 0; v0 < param0->unk_10.unk_00; v0++) {
            param0->unk_24[v0].unk_08 = 0;
        }
    }

    return 1;
}

static BOOL sub_0208B930 (UnkStruct_0208B878 * param0, s16 param1, s16 param2)
{
    if ((param0->unk_24[0].unk_04 == param1) && (param0->unk_24[0].unk_06 == param2)) {
        return 0;
    }

    return 1;
}

BOOL sub_0208B948 (UnkStruct_0208B878 * param0, s16 param1, s16 param2)
{
    {
        int v0;

        param0->unk_E8 = 0xFF;
        param0->unk_EC = 0;

        for (v0 = 0; v0 < param0->unk_10.unk_00; v0++) {
            param0->unk_24[v0].unk_04 = param1;
            param0->unk_24[v0].unk_06 = param2;
            sub_0200D500(param0->unk_24[v0].unk_00, param1, param2, param0->unk_10.unk_10);
        }
    }

    return 1;
}

BOOL sub_0208B988 (UnkStruct_0208B878 * param0)
{
    switch (param0->unk_E4) {
    case 0:
        sub_0208B8B0(param0, 0);
        param0->unk_E4++;
        break;
    case 1:
        SysTask_Done(param0->unk_F4);
        param0->unk_E4++;
        break;
    default:
        sub_0208B830(param0);
        NARC_dtor(param0->unk_00.unk_00);
        Heap_FreeToHeap(param0);

        return 0;
    }

    return 1;
}

BOOL sub_0208B9E0 (UnkStruct_0208B878 * param0, BOOL param1)
{
    {
        int v0;

        for (v0 = 0; v0 < param0->unk_10.unk_00; v0++) {
            SpriteActor_EnableObject(param0->unk_24[v0].unk_00, param1);
        }
    }

    return 1;
}

void sub_0208BA08 (UnkStruct_0208B878 * param0, int param1, int param2)
{
    if ((param1 != 0) && (param2 != 0)) {
        param0->unk_FC = param1;
        param0->unk_100 = param2;
    } else {
        param0->unk_FC = (15 * 1);
        param0->unk_100 = (15 * 1);
    }
}

void sub_0208BA30 (UnkStruct_0208B878 * param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_10.unk_00; v0++) {
        sub_0200D364(param0->unk_24[v0].unk_00, 1);
    }
}

void sub_0208BA54 (UnkStruct_0208B878 * param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_10.unk_00; v0++) {
        sub_0200D364(param0->unk_24[v0].unk_00, 0);
    }
}
