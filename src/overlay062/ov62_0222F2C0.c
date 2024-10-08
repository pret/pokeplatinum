#include "overlay062/ov62_0222F2C0.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_02029C68_decl.h"
#include "struct_defs/struct_0208B284.h"
#include "struct_defs/struct_0208C06C.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay062/ov62_022300D8.h"
#include "overlay062/ov62_02231690.h"
#include "overlay062/ov62_0224112C.h"
#include "overlay062/ov62_const_funcptr_tables.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay104/struct_ov104_022412F4.h"
#include "overlay104/struct_ov104_02241308.h"
#include "overlay104/struct_ov104_0224133C.h"

#include "core_sys.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "render_text.h"
#include "savedata_misc.h"
#include "sys_task.h"
#include "unk_02002F38.h"
#include "unk_02005474.h"
#include "unk_0200762C.h"
#include "unk_020093B4.h"
#include "unk_0200C6E4.h"
#include "unk_02012744.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201DBEC.h"
#include "unk_0201E3D8.h"
#include "unk_02023FCC.h"
#include "unk_0202419C.h"
#include "unk_02024220.h"
#include "unk_020298BC.h"
#include "unk_020393C8.h"
#include "unk_0208B284.h"
#include "unk_0208BA78.h"
#include "unk_0208C010.h"

static void ov62_0222F670(BGL *param0);
static void ov62_0222F848(UnkStruct_0208C06C *param0);

void ov62_0222F2C0(UnkStruct_0208C06C *param0)
{
    SetMainCallback(NULL, NULL);
    DisableHBlank();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();
    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
    sub_0201DBEC(4, 102);

    param0->unk_14.unk_00 = NARC_ctor(NARC_INDEX_RESOURCE__ENG__BATT_REC__BATT_REC_GRA, 102);
    param0->unk_14.unk_10 = sub_02018340(102);
    param0->unk_14.unk_14 = sub_02002F38(102);
    param0->unk_14.unk_4C = sub_02024220(102, 0, 1, 0, 4, NULL);
    param0->unk_14.unk_50 = sub_0200762C(102);

    NNS_G2dSetupSoftwareSpriteCamera();

    sub_02003858(param0->unk_14.unk_14, 1);
    sub_02002F70(param0->unk_14.unk_14, 0, 0x200, 102);
    sub_02002F70(param0->unk_14.unk_14, 1, 0x200, 102);
    sub_02002F70(param0->unk_14.unk_14, 2, 0x200, 102);
    sub_02002F70(param0->unk_14.unk_14, 3, 0x200, 102);
    ov62_0222F670(param0->unk_14.unk_10);
    ov62_0222F848(param0);

    {
        sub_0201E3D8();
        sub_0201E450(4);

        param0->unk_14.unk_30 = 1;

        ov62_0222FF40(param0);
        RenderControlFlags_SetSpeedUpOnTouch(1);
    }

    SetMainCallback(ov62_0222F8E4, param0);

    if (param0->unk_00 != 0) {
        ov62_02241130(param0);
        sub_0200966C(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_128K);
        sub_02009704(NNS_G2D_VRAM_TYPE_2DMAIN);
        sub_0200966C(NNS_G2D_VRAM_TYPE_2DSUB, GX_OBJVRAMMODE_CHAR_1D_128K);
        sub_02009704(NNS_G2D_VRAM_TYPE_2DSUB);
        sub_02039734();
        sub_020397C8(1, 102);

        {
            NNSG2dPaletteData *v0;
            void *v1 = sub_020394A8(102);

            NNS_G2dGetUnpackedPaletteData(v1, &v0);
            sub_02002FBC(param0->unk_14.unk_14, v0->pRawData, 2, 14 * 16, 32);
            sub_02002FBC(param0->unk_14.unk_14, v0->pRawData, 3, 14 * 16, 32);
            Heap_FreeToHeap(v1);
        }
    }

    {
        UnkStruct_0208B284 v2;

        v2.unk_00 = 12;
        v2.unk_04 = 102;
        v2.unk_08 = 1;
        v2.unk_0C = param0->unk_00;
        v2.unk_10 = (256 * FX32_ONE);

        param0->unk_6F0 = sub_0208B284(v2, param0->unk_14.unk_04, param0->unk_14.unk_08, param0->unk_14.unk_14);
        sub_0208B878(param0->unk_6F0, param0->unk_14.unk_48);
        sub_0208B8B0(param0->unk_6F0, 0);
        sub_0208B9E0(param0->unk_6F0, 0);

        v2.unk_08 = 2;
        v2.unk_10 = (256 * FX32_ONE);

        param0->unk_6F4 = sub_0208B284(v2, param0->unk_14.unk_04, param0->unk_14.unk_08, param0->unk_14.unk_14);
        sub_0208B878(param0->unk_6F4, param0->unk_14.unk_48);
        sub_0208B8B0(param0->unk_6F4, 0);
        sub_0208B9E0(param0->unk_6F4, 0);
    }

    {
        param0->unk_14.unk_3C = sub_02012744((5 * 2) + 10, 102);
        param0->unk_14.unk_34 = MessageLoader_Init(0, 26, 10, 102);
        param0->unk_14.unk_38 = MessageLoader_Init(0, 26, 20, 102);
    }

    ov62_022338A8(param0);
    sub_0208C06C(param0);
    ov62_022300D8(param0);
    ov62_022337D4(param0);
}

void ov62_0222F514(UnkStruct_0208C06C *param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 0);
    sub_02019044(param0->unk_14.unk_10, 0);
    sub_02019044(param0->unk_14.unk_10, 1);
    sub_02019044(param0->unk_14.unk_10, 2);
    sub_02019044(param0->unk_14.unk_10, 3);
    sub_02019044(param0->unk_14.unk_10, 4);
    sub_02019044(param0->unk_14.unk_10, 5);
    sub_02019044(param0->unk_14.unk_10, 6);
    sub_02019044(param0->unk_14.unk_10, 7);
    Heap_FreeToHeap(param0->unk_14.unk_10);
    sub_02002FA0(param0->unk_14.unk_14, 0);
    sub_02002FA0(param0->unk_14.unk_14, 1);
    sub_02002FA0(param0->unk_14.unk_14, 2);
    sub_02002FA0(param0->unk_14.unk_14, 3);
    sub_02002F54(param0->unk_14.unk_14);

    if (param0->unk_00 == 0) {
        MiscSaveBlock *v0 = SaveData_MiscSaveBlock(param0->unk_830);
        MiscSaveBlock_SetVsRecorderColor(v0, param0->unk_14.unk_48);
    }

    NARC_dtor(param0->unk_14.unk_00);
    SysTask_Done(param0->unk_41E8);
    sub_0200D0B0(param0->unk_14.unk_04, param0->unk_14.unk_08);
    sub_0200C8D4(param0->unk_14.unk_04);
    sub_02039794();

    {
        u32 v1;
        v1 = sub_0201E530();

        sub_02024034(param0->unk_14.unk_18);
        RenderControlFlags_SetSpeedUpOnTouch(0);
    }

    {
        int v2;

        for (v2 = 0; v2 < 4; v2++) {
            if (param0->unk_87C[v2] != NULL) {
                Heap_FreeToHeap(param0->unk_87C[v2]);
            }

            if (param0->unk_88C[v2] != NULL) {
                Heap_FreeToHeap(param0->unk_88C[v2]);
            }
        }
    }

    {
        sub_020127BC(param0->unk_14.unk_3C);
        MessageLoader_Free(param0->unk_14.unk_34);
        MessageLoader_Free(param0->unk_14.unk_38);
    }

    sub_020242C4(param0->unk_14.unk_4C);
    sub_02007B6C(param0->unk_14.unk_50);

    ov62_022411EC(param0);

    SetMainCallback(NULL, NULL);
    sub_0201DC3C();
}

static const UnkStruct_ov97_0222DB78 Unk_ov62_022487B0[] = {
    { 0x0, 0x0, 0x800, 0x0, 0x1, GX_BG_COLORMODE_16, GX_BG_SCRBASE_0x2000, GX_BG_CHARBASE_0x10000, GX_BG_EXTPLTT_01, 0x1, 0x0, 0x0, 0x0 },
    { 0x0, 0x0, 0x800, 0x0, 0x1, GX_BG_COLORMODE_16, GX_BG_SCRBASE_0x2800, GX_BG_CHARBASE_0x14000, GX_BG_EXTPLTT_01, 0x3, 0x0, 0x0, 0x0 },
    { 0x0, 0x0, 0x800, 0x0, 0x1, GX_BG_COLORMODE_16, GX_BG_SCRBASE_0x3000, GX_BG_CHARBASE_0x18000, GX_BG_EXTPLTT_01, 0x2, 0x0, 0x0, 0x0 },
    { 0x0, 0x0, 0x800, 0x0, 0x1, GX_BG_COLORMODE_16, GX_BG_SCRBASE_0x3800, GX_BG_CHARBASE_0x1c000, GX_BG_EXTPLTT_01, 0x1, 0x0, 0x0, 0x0 }
};

static const UnkStruct_ov97_0222DB78 Unk_ov62_02248820[] = {
    { 0x0, 0x0, 0x800, 0x0, 0x1, GX_BG_COLORMODE_16, GX_BG_SCRBASE_0xc000, GX_BG_CHARBASE_0x00000, GX_BG_EXTPLTT_01, 0x1, 0x0, 0x0, 0x0 },
    { 0x0, 0x0, 0x800, 0x0, 0x1, GX_BG_COLORMODE_16, GX_BG_SCRBASE_0xc800, GX_BG_CHARBASE_0x04000, GX_BG_EXTPLTT_01, 0x3, 0x0, 0x0, 0x0 },
    { 0x0, 0x0, 0x800, 0x0, 0x1, GX_BG_COLORMODE_16, GX_BG_SCRBASE_0xd000, GX_BG_CHARBASE_0x08000, GX_BG_EXTPLTT_01, 0x2, 0x0, 0x0, 0x0 },
    { 0x0, 0x0, 0x800, 0x0, 0x1, GX_BG_COLORMODE_16, GX_BG_SCRBASE_0xd800, GX_BG_CHARBASE_0x00000, GX_BG_EXTPLTT_01, 0x1, 0x0, 0x0, 0x0 }
};

static void ov62_0222F670(BGL *param0)
{
    GXLayers_DisableEngineALayers();

    {
        UnkStruct_ov84_0223BA5C v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_3D,
        };

        sub_02018368(&v0);
    }

    {
        UnkStruct_02099F80 v1 = {
            GX_VRAM_BG_128_A,
            GX_VRAM_BGEXTPLTT_NONE,
            GX_VRAM_SUB_BG_128_C,
            GX_VRAM_SUB_BGEXTPLTT_NONE,
            GX_VRAM_OBJ_64_E,
            GX_VRAM_OBJEXTPLTT_NONE,
            GX_VRAM_SUB_OBJ_16_I,
            GX_VRAM_SUB_OBJEXTPLTT_NONE,
            GX_VRAM_TEX_0_B,
            GX_VRAM_TEXPLTT_01_FG
        };

        GXLayers_SetBanks(&v1);

        MI_CpuClear32((void *)HW_BG_VRAM, HW_BG_VRAM_SIZE);
        MI_CpuClear32((void *)HW_DB_BG_VRAM, HW_DB_BG_VRAM_SIZE);
        MI_CpuClear32((void *)HW_OBJ_VRAM, HW_OBJ_VRAM_SIZE);
        MI_CpuClear32((void *)HW_DB_OBJ_VRAM, HW_DB_OBJ_VRAM_SIZE);
    }

    {
        sub_020183C4(param0, 0, &Unk_ov62_022487B0[0], 0);
        sub_020183C4(param0, 1, &Unk_ov62_022487B0[1], 0);
        sub_020183C4(param0, 2, &Unk_ov62_022487B0[2], 0);
        sub_020183C4(param0, 3, &Unk_ov62_022487B0[3], 0);
        sub_02019EBC(param0, 0);
        sub_02019EBC(param0, 1);
        sub_02019EBC(param0, 2);
        sub_02019EBC(param0, 3);
    }

    {
        sub_020183C4(param0, 4, &Unk_ov62_02248820[0], 0);
        sub_020183C4(param0, 5, &Unk_ov62_02248820[1], 0);
        sub_020183C4(param0, 6, &Unk_ov62_02248820[2], 0);
        sub_020183C4(param0, 7, &Unk_ov62_02248820[3], 0);
        sub_02019EBC(param0, 4);
        sub_02019EBC(param0, 5);
        sub_02019EBC(param0, 6);
        sub_02019EBC(param0, 7);
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);

    ov62_0222F824(1);

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ, 7, 8);
    G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ, 7, 8);
}

void ov62_0222F824(int param0)
{
    gCoreSys.unk_65 = param0;
    GXLayers_SwapDisplay();
}

void ov62_0222F834(UnkStruct_0208C06C *param0)
{
    sub_020183C4(param0->unk_14.unk_10, 2, &Unk_ov62_022487B0[2], 0);
}

static void ov62_0222F848(UnkStruct_0208C06C *param0)
{
    param0->unk_14.unk_04 = sub_0200C6E4(102);
    {
        const UnkStruct_ov104_0224133C v0 = {
            0,
            128,
            0,
            32,
            4,
            124,
            0,
            32,
        };

        const UnkStruct_ov104_022412F4 v1 = {
            128, 0x10000, 0x4000, GX_OBJVRAMMODE_CHAR_1D_128K, GX_OBJVRAMMODE_CHAR_1D_128K
        };

        sub_0200C73C(param0->unk_14.unk_04, &v0, &v1, 16 + 16);
    }

    {
        BOOL v2;
        const UnkStruct_ov104_02241308 v3 = {
            128,
            32,
            128,
            128,
            16,
            16,
        };

        param0->unk_14.unk_08 = sub_0200C704(param0->unk_14.unk_04);

        v2 = sub_0200C7C0(param0->unk_14.unk_04, param0->unk_14.unk_08, 64 + 64 + 64);
        GF_ASSERT(v2);

        v2 = sub_0200CB30(param0->unk_14.unk_04, param0->unk_14.unk_08, &v3);
        GF_ASSERT(v2);
    }

    sub_0200964C(sub_0200C738(param0->unk_14.unk_04), 0, (256 * FX32_ONE));
}

void ov62_0222F8E4(void *param0)
{
    UnkStruct_0208C06C *v0 = param0;

    sub_0201DCAC();
    sub_02003694(v0->unk_14.unk_14);
    sub_0201C2B8(v0->unk_14.unk_10);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

BOOL ov62_0222F910(UnkStruct_0208C06C *param0, int *param1)
{
    BOOL v0 = 0;

    switch (*param1) {
    case 0:
        v0 = Unk_ov62_02248BD8[param0->unk_04](param0);
        ov62_0222FB44(param0, 1, v0, param1);

        if (v0) {
            if (param0->unk_14.unk_30 == 1) {
                ov62_0222FB60(param0, 0);
            } else {
                ov62_0222FB60(param0, 1);
            }
        }
        break;
    case 1:
        v0 = Unk_ov62_02248BF0[param0->unk_04](param0);
        ov62_0222FB44(param0, 16, v0, param1);
        break;
    case 2:
        v0 = Unk_ov62_02248C28[param0->unk_04](param0);
        ov62_0222FB44(param0, 16, v0, param1);
        break;
    case 3:
        v0 = Unk_ov62_02248C50[param0->unk_04](param0);
        ov62_0222FB44(param0, 16, v0, param1);
        break;
    case 4:
        v0 = Unk_ov62_02248D08[param0->unk_04](param0);
        ov62_0222FB44(param0, 16, v0, param1);
        break;
    case 5:
        v0 = Unk_ov62_02248D20[param0->unk_04](param0);
        ov62_0222FB44(param0, 16, v0, param1);
        break;
    case 6:
        v0 = Unk_ov62_02248E24[param0->unk_04](param0);
        ov62_0222FB44(param0, 16, v0, param1);
        break;
    case 7:
        v0 = Unk_ov62_02248E50[param0->unk_04](param0);
        ov62_0222FB44(param0, 16, v0, param1);
        break;
    case 8:
    case 9:
        v0 = Unk_ov62_02248F58[param0->unk_04](param0);
        ov62_0222FB44(param0, 16, v0, param1);
        break;
    case 10:
    case 11:
        v0 = Unk_ov62_022490DC[param0->unk_04](param0);
        ov62_0222FB44(param0, 16, v0, param1);
        break;
    case 12:
        v0 = Unk_ov62_022490DC[param0->unk_04](param0);
        ov62_0222FB44(param0, 16, v0, param1);
        break;
    case 13:
        v0 = Unk_ov62_02249680[param0->unk_04](param0);
        ov62_0222FB44(param0, 16, v0, param1);
        break;
    case 14:
        v0 = Unk_ov62_0224962C[param0->unk_04](param0);
        ov62_0222FB44(param0, 16, v0, param1);
        break;
    case 15:
        v0 = Unk_ov62_02249618[param0->unk_04](param0);
        ov62_0222FB44(param0, 16, v0, param1);
        break;
    case 16:
        ov62_0222FB44(param0, 255, 1, param1);
        break;
    case 17:
        v0 = Unk_ov62_02249790[param0->unk_04](param0);
        ov62_0222FB44(param0, 16, v0, param1);
        break;
    case 18:
        ov62_022348FC(param0);
        break;
    default:
        return 1;
    }

    sub_020241B4();
    sub_02007768(param0->unk_14.unk_50);
    G3_RequestSwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);

    ov62_022411D4(param0);

    return 0;
}

void ov62_0222FB44(UnkStruct_0208C06C *param0, int param1, BOOL param2, int *param3)
{
    if (param2) {
        (*param3) = param1;
        ov62_0222FB60(param0, 0);
        ov62_0222FB6C(param0, 0);
    }
}

void ov62_0222FB60(UnkStruct_0208C06C *param0, int param1)
{
    param0->unk_04 = param1;
    param0->unk_08 = 0;
    param0->unk_0C = 0;
}

void ov62_0222FB6C(UnkStruct_0208C06C *param0, int param1)
{
    param0->unk_08 = param1;
    param0->unk_0C = 0;
}

void ov62_0222FB74(UnkStruct_0208C06C *param0)
{
    sub_0208C06C(param0);
    ov62_02230A5C(param0);

    param0->unk_534.unk_1B0 = 0;
}

BOOL ov62_0222FB90(UnkStruct_0208C06C *param0)
{
    param0->unk_81C[param0->unk_534.unk_1A4] = param0->unk_818;
    param0->unk_534.unk_190[param0->unk_534.unk_1A4] = &param0->unk_818[param0->unk_534.unk_1B0];
    param0->unk_818 = param0->unk_818[param0->unk_534.unk_1B0].unk_20;
    param0->unk_534.unk_1A4++;
    param0->unk_534.unk_1B0 = 0;

    if (param0->unk_818 == NULL) {
        return 0;
    }

    ov62_0222FB74(param0);

    return 1;
}

BOOL ov62_0222FBF8(UnkStruct_0208C06C *param0)
{
    param0->unk_818 = param0->unk_81C[param0->unk_534.unk_1A4];

    ov62_0222FB74(param0);

    return 1;
}

void ov62_0222FC1C(UnkStruct_0208C06C *param0)
{
    int v0 = param0->unk_818[param0->unk_534.unk_1B0].unk_10;

    switch (v0) {
    case 0:
    case 1:
    case 3:
    case 6:
        break;
    case 2:
        sub_0208BA84(param0->unk_868, 0, 0);
        ov62_0222FB60(param0, 2);
        break;
    case 4:
        ov62_0222FB44(param0, 2, 1, param0->unk_10);
        break;
    case 5:
        ov62_0222FB44(param0, 3, 1, param0->unk_10);
        break;
    case 8:
        ov62_0222FB44(param0, 4, 1, param0->unk_10);
        break;
    case 9:
        ov62_0222FB44(param0, 5, 1, param0->unk_10);
        break;
    case 10:
        ov62_0222FB44(param0, 6, 1, param0->unk_10);
        break;
    case 11:
        ov62_0222FB44(param0, 7, 1, param0->unk_10);
        break;
    case 12:
        ov62_0222FB44(param0, 8, 1, param0->unk_10);
        break;
    case 13:
        ov62_0222FB44(param0, 9, 1, param0->unk_10);
        break;
    case 14:
        ov62_0222FB44(param0, 10, 1, param0->unk_10);
        break;
    case 15:
        ov62_0222FB44(param0, 11, 1, param0->unk_10);
        break;
    case 16:
        ov62_0222FB44(param0, 12, 1, param0->unk_10);
        break;
    case 17:
        ov62_0222FB44(param0, 13, 1, param0->unk_10);
        break;
    case 18:
        ov62_0222FB44(param0, 14, 1, param0->unk_10);
        break;
    case 19:
        ov62_0222FB44(param0, 15, 1, param0->unk_10);
        break;
    case 7:
        ov62_0222FB44(param0, 17, 1, param0->unk_10);
        break;
    }
}

BOOL ov62_0222FD3C(UnkStruct_0208C06C *param0)
{
    int v0 = param0->unk_818[param0->unk_534.unk_1B0].unk_18;
    BOOL v1 = 1;

    switch (param0->unk_00) {
    default:
        if ((v0 == 0) || (v0 == 1) || (v0 == 2) || (v0 == 3)) {
            if (param0->unk_87C[v0] == NULL) {
                ov62_0223197C(param0, 269);
                v1 = 0;
            }
        }
        break;
    case 5:
        if (v0 == 0) {
            UnkStruct_02029C68 *v2 = sub_02029CA8(sub_0202A750(param0->unk_830), v0);
            v1 = sub_02029F34(v2);

            if (v1 == 0) {
                ov62_0223197C(param0, 290);
            }
        }
        break;
    case 6:
        if (v0 == 100) {
            if (ov62_02231974(param0)) {
                ov62_0223197C(param0, 273);
                v1 = 0;
            }
        }
        break;
    case 2:
        if (v0 == 9999) {
            if (param0->unk_87C[0] == NULL) {
                ov62_0223197C(param0, 129);
                v1 = 0;
            }
        }
        break;
    case 4:
    case 3:
        break;
    }

    if (v1 == 0) {
        Sound_PlayEffect(1380);
    } else {
        Sound_PlayEffect(1379);
    }

    return v1;
}

static void ov62_0222FE1C(u32 param0, u32 param1, void *param2)
{
    UnkStruct_0208C06C *v0 = param2;

    if (param1 != 0) {
        return;
    }

    v0->unk_534.unk_1B0 = param0;

    {
        BOOL v1 = ov62_0222FD3C(v0);

        if (v1 == 0) {
            return;
        }
    }

    if ((param0 >= 0) && (param0 <= 4)) {
        s16 v2, v3;

        ov62_02230E74(v0->unk_534.unk_C8[param0].unk_00, &v2, &v3);
        sub_0208B948(v0->unk_6F0, v2 + (15 + 1), v3);
        sub_0208B8B8(v0->unk_6F0, v2 + (15 + 1), v3);

        v0->unk_86C = v0->unk_818[v0->unk_534.unk_1B0].unk_18;
        ov62_0222FB60(v0, v0->unk_818[v0->unk_534.unk_1B0].unk_14);

        if (v0->unk_818[v0->unk_534.unk_1B0].unk_14 == 2) {
            sub_0208BA84(v0->unk_868, 0, 0);
        } else {
            ov62_02230014(v0);
            sub_0208B9E0(v0->unk_6F0, 1);
        }

        if (v0->unk_86C == 999) {
            ov62_02231BC4(v0, 193);
        } else if (v0->unk_86C == 9999) {
            ov62_02231BC4(v0, 301);
        } else {
            if (v0->unk_89C) {
                ov62_02231A1C(v0);
                v0->unk_89C = 0;
            }
        }
    }
}

void ov62_0222FF40(UnkStruct_0208C06C *param0)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        param0->unk_534.unk_C8[v0].unk_10 = &param0->unk_14.unk_1C[v0];
    }

    param0->unk_14.unk_18 = sub_02023FCC(param0->unk_14.unk_1C, 5, ov62_0222FE1C, param0, 102);
}

void ov62_0222FF7C(UnkStruct_0208C06C *param0)
{
    int v0;
    s16 v1, v2;

    if (param0->unk_818 == NULL) {
        return;
    }

    for (v0 = 0; v0 < 5; v0++) {
        if (param0->unk_818[v0].unk_00 == 0) {
            param0->unk_534.unk_C8[v0].unk_10->rect.top = 0;
            param0->unk_534.unk_C8[v0].unk_10->rect.bottom = 0;
            param0->unk_534.unk_C8[v0].unk_10->rect.left = 0;
            param0->unk_534.unk_C8[v0].unk_10->rect.right = 0;
            continue;
        }

        SpriteActor_GetSpritePositionXY(param0->unk_534.unk_C8[v0].unk_00, &v1, &v2);

        param0->unk_534.unk_C8[v0].unk_10->rect.top = v2 - 16;
        param0->unk_534.unk_C8[v0].unk_10->rect.bottom = v2 + 16;
        param0->unk_534.unk_C8[v0].unk_10->rect.left = v1 - 0;
        param0->unk_534.unk_C8[v0].unk_10->rect.right = v1 + 160;
    }
}

void ov62_02230014(UnkStruct_0208C06C *param0)
{
    int v0;
    s16 v1, v2;

    for (v0 = 0; v0 < 5; v0++) {
        SpriteActor_GetSpritePositionXY(param0->unk_534.unk_C8[v0].unk_00, &v1, &v2);
        param0->unk_534.unk_C8[v0].unk_10->rect.top = 0;
        param0->unk_534.unk_C8[v0].unk_10->rect.bottom = 0;
        param0->unk_534.unk_C8[v0].unk_10->rect.left = 0;
        param0->unk_534.unk_C8[v0].unk_10->rect.right = 0;
    }
}

void ov62_02230054(UnkStruct_0208C06C *param0)
{
    sub_0202404C(param0->unk_14.unk_18);
}

void ov62_02230060(UnkStruct_0208C06C *param0)
{
    if (param0->unk_534.unk_1A4 > 0) {
        param0->unk_534.unk_1A4--;
    } else {
        if (param0->unk_534.unk_1A4 != 0) {
            param0->unk_534.unk_1A4 = 0;
            GF_ASSERT(0);
        }
    }

    param0->unk_818 = param0->unk_81C[param0->unk_534.unk_1A4];
}

void ov62_02230098(UnkStruct_0208C06C *param0)
{
    param0->unk_838.unk_00 = 0;
    param0->unk_838.unk_04 = 0xFF;

    {
        int v0;

        for (v0 = 0; v0 < 8; v0++) {
            param0->unk_838.unk_08[v0] = 0;
        }
    }
}

BOOL ov62_022300BC(UnkStruct_0208C06C *param0)
{
    return param0->unk_838.unk_00;
}

void ov62_022300C8(UnkStruct_0208C06C *param0, int param1)
{
    param0->unk_838.unk_00 = 1;
    param0->unk_838.unk_04 = param1;
}
