#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_decls/struct_02015920_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/archived_sprite.h"
#include "struct_defs/struct_02013A04_t.h"
#include "struct_defs/struct_02015958.h"
#include "struct_defs/struct_0203CC84.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0208737C.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay057/const_ov57_021D0F80.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay084/struct_ov84_02240FA8.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "core_sys.h"
#include "font.h"
#include "game_options.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "overlay_manager.h"
#include "pokemon.h"
#include "render_text.h"
#include "save_player.h"
#include "savedata.h"
#include "savedata_misc.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task_manager.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_02000C88.h"
#include "unk_0200112C.h"
#include "unk_02002F38.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_0200A9DC.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_020131EC.h"
#include "unk_02013A04.h"
#include "unk_0201567C.h"
#include "unk_02015920.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0208694C.h"

#include "constdata/const_020F2DAC.h"

FS_EXTERN_OVERLAY(overlay57);

typedef struct {
    int unk_00;
    SaveData *unk_04;
    Options *unk_08;
    int unk_0C;
    int unk_10;
    OverlayManager *unk_14;
    BGL *unk_18;
    Window unk_1C;
    int unk_2C;
    Window unk_30;
    BmpList *unk_40;
    ResourceMetadata *unk_44;
    int unk_48;
    MessageLoader *unk_4C;
    int unk_50;
    int unk_54;
    int unk_58;
    Strbuf *unk_5C;
    void *unk_60;
    StringTemplate *unk_64;
    UnkStruct_02015920 *unk_68;
    SysTask *unk_6C;
    UnkStruct_0208737C *unk_70;
    UnkStruct_0208737C *unk_74;
    int unk_78;
    int unk_7C;
    int unk_80;
    u32 unk_84;
    u8 unk_88;
    u8 unk_89;
    u8 unk_8A;
    u8 unk_8B;
    u8 unk_8C;
    u8 unk_8D;
    u8 unk_8E;
    u8 unk_8F;
    int unk_90;
    int unk_94[9];
    u16 *unk_B8;
    u16 *unk_BC;
} UnkStruct_ov73_021D1058;

void sub_02000EC4(FSOverlayID param0, const OverlayManagerTemplate *param1);
int ov73_021D0D80(OverlayManager *param0, int *param1);
int ov73_021D0E20(OverlayManager *param0, int *param1);
int ov73_021D0F7C(OverlayManager *param0, int *param1);
static void ov73_021D0FF0(void *param0);
static void ov73_021D1058(UnkStruct_ov73_021D1058 *param0);
static void ov73_021D1238(UnkStruct_ov73_021D1058 *param0);
static void ov73_021D12C4(UnkStruct_ov73_021D1058 *param0);
static void ov73_021D1300(UnkStruct_ov73_021D1058 *param0);
static void ov73_021D1318(UnkStruct_ov73_021D1058 *param0);
static void ov73_021D1328(UnkStruct_ov73_021D1058 *param0);
static void ov73_021D1930(UnkStruct_ov73_021D1058 *param0);
static void ov73_021D19DC(UnkStruct_ov73_021D1058 *param0);
static void ov73_021D1A20(UnkStruct_ov73_021D1058 *param0);
static void ov73_021D1B14(UnkStruct_ov73_021D1058 *param0);
static void ov73_021D1CE0(UnkStruct_ov73_021D1058 *param0);
static BOOL ov73_021D2318(UnkStruct_ov73_021D1058 *param0);
int ov73_021D3250(OverlayManager *param0, int *param1);
int ov73_021D3280(OverlayManager *param0, int *param1);
int ov73_021D3404(OverlayManager *param0, int *param1);

const OverlayManagerTemplate dummy_OverlayManagerTemplate = {
    ov73_021D0D80,
    ov73_021D0E20,
    ov73_021D0F7C,
    0xffffffff
};

static const OverlayManagerTemplate Unk_ov72_021D3820 = {
    ov73_021D3250,
    ov73_021D3280,
    ov73_021D3404,
    0xffffffff
};

int ov73_021D0D80(OverlayManager *param0, int *param1)
{
    UnkStruct_ov73_021D1058 *v0;
    int v1 = 82;

    Heap_Create(3, v1, 0x40000);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov73_021D1058), v1);
    memset(v0, 0, sizeof(UnkStruct_ov73_021D1058));

    v0->unk_00 = v1;
    v0->unk_04 = ((UnkStruct_0203CC84 *)OverlayManager_Args(param0))->unk_08;
    v0->unk_08 = SaveData_Options(v0->unk_04);
    v0->unk_0C = 0;
    v0->unk_10 = 0;
    v0->unk_14 = NULL;
    v0->unk_70 = sub_0208712C(v1, 0, 0, 7, v0->unk_08);
    v0->unk_74 = sub_0208712C(v1, 3, 0, 7, v0->unk_08);
    v0->unk_88 = 0;
    v0->unk_89 = 0;
    v0->unk_8A = 0;
    v0->unk_8B = 0;
    v0->unk_90 = 0;
    v0->unk_B8 = Heap_AllocFromHeap(v1, 0x20);
    v0->unk_BC = Heap_AllocFromHeap(v1, 0x20);

    return 1;
}

int ov73_021D0E20(OverlayManager *param0, int *param1)
{
    UnkStruct_ov73_021D1058 *v0 = OverlayManager_Data(param0);
    int v1 = 0;

    switch (*param1) {
    case 0:
        sub_0200F344(0, 0x0);
        sub_0200F344(1, 0x0);

        SetMainCallback(NULL, NULL);
        SetHBlankCallback(NULL, NULL);

        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);
        SetAutorepeat(4, 8);

        ov73_021D1058(v0);
        ov73_021D12C4(v0);
        ov73_021D1318(v0);

        SetMainCallback(ov73_021D0FF0, (void *)v0);
        GXLayers_TurnBothDispOn();

        *param1 = 1;
        break;
    case 1:
        if (ov73_021D2318(v0) == 1) {
            sub_0200F174(0, 0, 0, 0x0, 6, 1, v0->unk_00);
            *param1 = 2;
        }

        if (v0->unk_14 != NULL) {
            sub_0200F174(0, 0, 0, 0x0, 6, 1, v0->unk_00);
            *param1 = 3;
        }
        break;
    case 2:
        if (ScreenWipe_Done() == 1) {
            ov73_021D1300(v0);
            ov73_021D1238(v0);
            ov73_021D1328(v0);
            SetMainCallback(NULL, NULL);

            v1 = 1;
        }
        break;
    case 3:
        if (ScreenWipe_Done() == 1) {
            ov73_021D1300(v0);
            ov73_021D1238(v0);
            ov73_021D1328(v0);
            SetMainCallback(NULL, NULL);
            *param1 = 4;
        }
        break;
    case 4:
        if (OverlayManager_Exec(v0->unk_14) == 1) {
            OverlayManager_Free(v0->unk_14);
            v0->unk_14 = NULL;
            *param1 = 5;
        }
        break;
    case 5:
        *param1 = 0;
        break;
    }

    return v1;
}

int ov73_021D0F7C(OverlayManager *param0, int *param1)
{
    UnkStruct_ov73_021D1058 *v0 = OverlayManager_Data(param0);
    int v1 = v0->unk_00;

    Heap_FreeToHeap(v0->unk_B8);
    Heap_FreeToHeap(v0->unk_BC);

    TrainerInfo_SetNameFromStrbuf(SaveData_GetTrainerInfo(v0->unk_04), v0->unk_70->unk_18);
    TrainerInfo_SetGender(SaveData_GetTrainerInfo(v0->unk_04), v0->unk_70->unk_04);

    {
        MiscSaveBlock *v2 = SaveData_MiscSaveBlock(v0->unk_04);

        MiscSaveBlock_SetRivalName(v2, v0->unk_74->unk_18);
    }

    sub_0208716C(v0->unk_70);
    sub_0208716C(v0->unk_74);
    OverlayManager_FreeData(param0);
    Heap_Destroy(v1);
    sub_02000EC4(FS_OVERLAY_ID(overlay57), &Unk_ov57_021D0F80);

    return 1;
}

static void ov73_021D0FF0(void *param0)
{
    UnkStruct_ov73_021D1058 *v0 = param0;
    sub_0201C2B8(v0->unk_18);
}

static BOOL ov73_021D0FFC(void)
{
    BOOL v0 = 0;
    u16 v1, v2;

    if (gCoreSys.touchPressed) {
        if ((gCoreSys.touchX < 256) && (gCoreSys.touchY < 192)) {
            if (gCoreSys.touchX < 128) {
                v1 = 128 - gCoreSys.touchX;
            } else {
                v1 = gCoreSys.touchX - 128;
            }

            if (gCoreSys.touchY < 100) {
                v2 = 100 - gCoreSys.touchY;
            } else {
                v2 = gCoreSys.touchY - 100;
            }

            if ((v1 * v1 + v2 * v2) <= 16 * 16) {
                v0 = 1;
            }
        }
    }

    return v0;
}

static void ov73_021D1058(UnkStruct_ov73_021D1058 *param0)
{
    {
        UnkStruct_02099F80 v0 = {
            GX_VRAM_BG_128_B,
            GX_VRAM_BGEXTPLTT_NONE,
            GX_VRAM_SUB_BG_128_C,
            GX_VRAM_SUB_BGEXTPLTT_NONE,
            GX_VRAM_OBJ_NONE,
            GX_VRAM_OBJEXTPLTT_NONE,
            GX_VRAM_SUB_OBJ_NONE,
            GX_VRAM_SUB_OBJEXTPLTT_NONE,
            GX_VRAM_TEX_NONE,
            GX_VRAM_TEXPLTT_NONE
        };

        GXLayers_SetBanks(&v0);
    }

    {
        param0->unk_18 = sub_02018340(param0->unk_00);
    }

    {
        UnkStruct_ov84_0223BA5C v1 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D
        };

        sub_02018368(&v1);
    }
    {
        UnkStruct_ov97_0222DB78 v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            0,
            0,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        v2.unk_12 = GX_BG_SCRBASE_0x7800;
        v2.unk_13 = GX_BG_CHARBASE_0x18000;
        sub_020183C4(param0->unk_18, 0, &v2, 0);
        sub_02019EBC(param0->unk_18, 0);

        v2.unk_12 = GX_BG_SCRBASE_0x7000;
        v2.unk_13 = GX_BG_CHARBASE_0x14000;
        sub_020183C4(param0->unk_18, 1, &v2, 0);
        sub_02019EBC(param0->unk_18, 1);

        v2.unk_12 = GX_BG_SCRBASE_0x6800;
        v2.unk_13 = GX_BG_CHARBASE_0x10000;
        sub_020183C4(param0->unk_18, 2, &v2, 0);
        sub_02019EBC(param0->unk_18, 2);

        v2.unk_12 = GX_BG_SCRBASE_0x6000;
        v2.unk_13 = GX_BG_CHARBASE_0x0c000;
        sub_020183C4(param0->unk_18, 3, &v2, 0);
        sub_02019EBC(param0->unk_18, 3);

        sub_0200DD0C(param0->unk_18, 0, (0x400 - (18 + 12)), 4, 0, param0->unk_00);
        sub_0200DAA4(param0->unk_18, 0, ((0x400 - (18 + 12)) - 9), 3, 0, param0->unk_00);
        Font_LoadTextPalette(0, 5 * (2 * 16), param0->unk_00);
        Font_LoadScreenIndicatorsPalette(0, 6 * (2 * 16), param0->unk_00);
    }
    {
        UnkStruct_ov97_0222DB78 v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            0,
            0,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        v2.unk_12 = GX_BG_SCRBASE_0x7800;
        v2.unk_13 = GX_BG_CHARBASE_0x18000;
        sub_020183C4(param0->unk_18, 4, &v2, 0);
        sub_02019EBC(param0->unk_18, 4);

        v2.unk_12 = GX_BG_SCRBASE_0x7000;
        v2.unk_13 = GX_BG_CHARBASE_0x14000;
        sub_020183C4(param0->unk_18, 5, &v2, 0);
        sub_02019EBC(param0->unk_18, 5);

        v2.unk_12 = GX_BG_SCRBASE_0x6800;
        v2.unk_13 = GX_BG_CHARBASE_0x10000;
        sub_020183C4(param0->unk_18, 6, &v2, 0);
        sub_02019EBC(param0->unk_18, 6);

        v2.unk_12 = GX_BG_SCRBASE_0x6000;
        v2.unk_13 = GX_BG_CHARBASE_0x0c000;
        sub_020183C4(param0->unk_18, 7, &v2, 0);
        sub_02019EBC(param0->unk_18, 7);
    }

    sub_02019120(0, 0);
    sub_02019120(1, 0);
    sub_02019120(2, 0);
    sub_02019120(3, 0);
    sub_02019120(4, 0);
    sub_02019120(5, 0);
    sub_02019120(6, 0);
    sub_02019120(7, 0);

    ov73_021D1930(param0);

    param0->unk_78 = 0;
}

static void ov73_021D1238(UnkStruct_ov73_021D1058 *param0)
{
    sub_02019120(0, 0);
    sub_02019120(1, 0);
    sub_02019120(2, 0);
    sub_02019120(3, 0);
    sub_02019120(4, 0);
    sub_02019120(5, 0);
    sub_02019120(6, 0);
    sub_02019120(7, 0);

    sub_02019044(param0->unk_18, 0);

    sub_02019044(param0->unk_18, 1);
    sub_02019044(param0->unk_18, 2);
    sub_02019044(param0->unk_18, 3);

    sub_02019044(param0->unk_18, 4);
    sub_02019044(param0->unk_18, 5);
    sub_02019044(param0->unk_18, 6);
    sub_02019044(param0->unk_18, 7);

    Heap_FreeToHeap(param0->unk_18);
}

static void ov73_021D12C4(UnkStruct_ov73_021D1058 *param0)
{
    param0->unk_4C = MessageLoader_Init(1, 26, 389, param0->unk_00);

    Text_ResetAllPrinters();

    param0->unk_60 = sub_0201567C(NULL, 0, 6, param0->unk_00);
    param0->unk_64 = StringTemplate_Default(param0->unk_00);
    param0->unk_50 = 0;
    param0->unk_54 = 0;
    param0->unk_2C = 0;
}

static void ov73_021D1300(UnkStruct_ov73_021D1058 *param0)
{
    StringTemplate_Free(param0->unk_64);
    sub_02015760(param0->unk_60);
    MessageLoader_Free(param0->unk_4C);
}

static void ov73_021D1318(UnkStruct_ov73_021D1058 *param0)
{
    param0->unk_68 = sub_02015920(param0->unk_00);
}

static void ov73_021D1328(UnkStruct_ov73_021D1058 *param0)
{
    sub_02015938(param0->unk_68);
}

static BOOL ov73_021D1334(UnkStruct_ov73_021D1058 *param0, int param1, int param2)
{
    BOOL v0 = 0;
    GXBlendPlaneMask v1;
    int v2;

    switch (param1) {
    default:
    case 0:
        v1 = GX_BLEND_PLANEMASK_BG0;
        v2 = 0;
        break;
    case 1:
        v1 = GX_BLEND_PLANEMASK_BG1;
        v2 = 0;
        break;
    case 2:
        v1 = GX_BLEND_PLANEMASK_BG2;
        v2 = 0;
        break;
    case 4:
        v1 = GX_BLEND_PLANEMASK_BG0;
        v2 = 1;
        break;
    case 5:
        v1 = GX_BLEND_PLANEMASK_BG1;
        v2 = 1;
        break;
    case 6:
        v1 = GX_BLEND_PLANEMASK_BG2;
        v2 = 1;
        break;
    }

    switch (param0->unk_78) {
    case 0:
        if (param2 == 0) {
            param0->unk_7C = 0;
            param0->unk_80 = 16;
            param0->unk_78 = 1;

            if (v2 == 0) {
                G2_SetBlendAlpha(v1, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, param0->unk_7C, param0->unk_80);
            } else {
                G2S_SetBlendAlpha(v1, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, param0->unk_7C, param0->unk_80);
            }

            sub_02019120(param1, 1);
        } else {
            param0->unk_7C = 16;
            param0->unk_80 = 0;
            param0->unk_78 = 2;
        }
        break;
    case 1:
        if (param0->unk_80) {
            param0->unk_7C++;
            param0->unk_80--;

            if (v2 == 0) {
                G2_SetBlendAlpha(v1, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, param0->unk_7C, param0->unk_80);
            } else {
                G2S_SetBlendAlpha(v1, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, param0->unk_7C, param0->unk_80);
            }
        } else {
            param0->unk_78 = 3;
        }
        break;
    case 2:
        if (param0->unk_7C) {
            param0->unk_7C--;
            param0->unk_80++;

            if (v2 == 0) {
                G2_SetBlendAlpha(v1, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, param0->unk_7C, param0->unk_80);
            } else {
                G2S_SetBlendAlpha(v1, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, param0->unk_7C, param0->unk_80);
            }
        } else {
            param0->unk_78 = 3;
            sub_02019120(param1, 0);
        }
        break;
    case 3:
        G2_BlendNone();
        G2S_BlendNone();
        param0->unk_78 = 0;
        v0 = 1;
        break;
    }

    return v0;
}

static BOOL ov73_021D14B8(UnkStruct_ov73_021D1058 *param0, int param1)
{
    if (param0->unk_90 < param1) {
        param0->unk_90++;
        return 0;
    } else {
        param0->unk_90 = 0;
        return 1;
    }
}

static void ov73_021D14DC(UnkStruct_ov73_021D1058 *param0, int param1, int param2)
{
    sub_02019E2C(param0->unk_18, param1, 0, 0, 32, 24, param2);
    sub_02019448(param0->unk_18, param1);
}

typedef struct UnkStruct_ov72_021D3840_t {
    u32 unk_00;
    u32 unk_04;
} UnkStruct_ov72_021D3840;

static const UnkStruct_ov61_0222C884 Unk_ov72_021D37EC = {
    0x0,
    0x2,
    0x13,
    0x1B,
    0x4,
    0x6,
    0x36D
};
static const UnkStruct_ov61_0222C884 Unk_ov72_021D37C4 = {
    0x0,
    0x2,
    0x3,
    0x6,
    0x4,
    0x5,
    0x355
};
static const UnkStruct_ov61_0222C884 Unk_ov72_021D37DC = {
    0x0,
    0x1,
    0x3,
    0x10,
    0x6,
    0x5,
    0x30D
};
static const UnkStruct_ov61_0222C884 Unk_ov72_021D37CC = {
    0x0,
    0x2,
    0x3,
    0xE,
    0xA,
    0x5,
    0x2E1
};
const UnkStruct_ov61_0222C884 Unk_ov72_021D37E4 = {
    0x0,
    0x8,
    0x0,
    0x18,
    0x18,
    0x5,
    0x12D
};
const UnkStruct_ov61_0222C884 Unk_ov72_021D37D4 = {
    0x0,
    0x4,
    0x0,
    0x18,
    0x18,
    0x5,
    0x12D
};

static const UnkStruct_ov84_02240FA8 Unk_ov72_021D390C = {
    NULL,
    NULL,
    NULL,
    NULL,
    0x0,
    0x0,
    0x0,
    0xC,
    0x0,
    0x0,
    0x1,
    0xF,
    0x2,
    0x0,
    0x10,
    0x0,
    0x0,
    0x0
};

static const UnkStruct_ov72_021D3840 Unk_ov72_021D3840[] = {
    { 0x22, 0x1 },
    { 0x23, 0x2 }
};

static const UnkStruct_ov72_021D3840 Unk_ov72_021D38A4[] = {
    { 0x1F, 0x1 },
    { 0x20, 0x2 },
    { 0x21, 0x3 }
};

static const UnkStruct_ov72_021D3840 Unk_ov72_021D3954[] = {
    { 0x24, 0x1 },
    { 0x25, 0x2 },
    { 0x26, 0x3 },
    { 0x27, 0x4 },
    { 0x28, 0x5 }
};

static const UnkStruct_ov72_021D3840 Unk_ov73_021D1648[] = {
    { 0x24, 0x1 },
    { 0x29, 0x2 },
    { 0x2A, 0x3 },
    { 0x2B, 0x4 },
    { 0x2C, 0x5 }
};

static BOOL ov73_021D1510(UnkStruct_ov73_021D1058 *param0, u32 param1, int param2)
{
    BOOL v0 = 0;

    switch (param0->unk_50) {
    case 0:
        sub_0201A8D4(param0->unk_18, &param0->unk_1C, &Unk_ov72_021D37EC);
        BGL_WindowColor(&param0->unk_1C, 15, 0, 0, 27 * 8, 4 * 8);
        sub_0200E060(&param0->unk_1C, 0, (0x400 - (18 + 12)), 4);
        RenderControlFlags_SetCanABSpeedUpPrint(1);
        RenderControlFlags_SetAutoScrollFlags(0);

        {
            Strbuf *v1 = Strbuf_Init(0x400, param0->unk_00);

            param0->unk_5C = Strbuf_Init(0x400, param0->unk_00);

            MessageLoader_GetStrbuf(param0->unk_4C, param1, v1);
            StringTemplate_SetStrbuf(param0->unk_64, 0, param0->unk_70->unk_18, param0->unk_84, 1, GAME_LANGUAGE);
            StringTemplate_SetStrbuf(param0->unk_64, 1, param0->unk_74->unk_18, 0, 1, GAME_LANGUAGE);
            StringTemplate_Format(param0->unk_64, param0->unk_5C, v1);
            Strbuf_Free(v1);
        }

        param0->unk_58 = Text_AddPrinterWithParams(&param0->unk_1C, FONT_MESSAGE, param0->unk_5C, 0, 0, (Options_TextFrameDelay(param0->unk_08)), NULL);
        param0->unk_50 = 1;
        break;
    case 1:
        if (!(Text_IsPrinterActive(param0->unk_58))) {
            Strbuf_Free(param0->unk_5C);
            param0->unk_50 = 2;
        }
        break;
    case 2:
        if ((param2 != 0) || ((gCoreSys.pressedKeys & PAD_BUTTON_A) == PAD_BUTTON_A)) {
            BGL_DeleteWindow(&param0->unk_1C);
            param0->unk_50 = 0;
            v0 = 1;
        }
    }

    return v0;
}

static void ov73_021D1634(BmpList *param0, u32 param1, u8 param2)
{
    if (param2 == 0) {
        Sound_PlayEffect(1500);
    }
}

static BOOL ov73_021D1648(UnkStruct_ov73_021D1058 *param0, int param1, int param2)
{
    BOOL v0 = 0;
    UnkStruct_ov84_02240FA8 v1;
    const UnkStruct_ov61_0222C884 *v2;
    const UnkStruct_ov72_021D3840 *v3;
    int v4, v5;

    switch (param0->unk_2C) {
    case 0:
        switch (param1) {
        default:
        case 0:
            v2 = &Unk_ov72_021D37C4;
            v3 = Unk_ov72_021D3840;
            v5 = NELEMS(Unk_ov72_021D3840);
            break;
        case 1:
            v2 = &Unk_ov72_021D37DC;
            v3 = Unk_ov72_021D38A4;
            v5 = NELEMS(Unk_ov72_021D38A4);
            break;
        case 2:
            v2 = &Unk_ov72_021D37CC;

            if ((Unk_020E4C40 == 10) || (GAME_VERSION == 12)) {
                v3 = Unk_ov72_021D3954;
                v5 = NELEMS(Unk_ov72_021D3954);
            } else {
                v3 = Unk_ov73_021D1648;
                v5 = NELEMS(Unk_ov73_021D1648);
            }
            break;
        }

        sub_0201A8D4(param0->unk_18, &param0->unk_30, v2);

        param0->unk_44 = sub_02013A04(v5, param0->unk_00);

        for (v4 = 0; v4 < v5; v4++) {
            sub_02013A4C(param0->unk_44, param0->unk_4C, v3[v4].unk_00, v3[v4].unk_04);
        }

        v1 = Unk_ov72_021D390C;
        v1.unk_00 = param0->unk_44;
        v1.unk_10 = v5;
        v1.unk_12 = v5;
        v1.unk_04 = ov73_021D1634;
        v1.unk_0C = &param0->unk_30;

        param0->unk_40 = sub_0200112C(&v1, 0, 0, param0->unk_00);

        Window_Show(v1.unk_0C, 1, ((0x400 - (18 + 12)) - 9), 3);
        sub_0201A954(&param0->unk_30);

        param0->unk_2C = 1;
        break;
    case 1:
        param0->unk_48 = sub_02001288(param0->unk_40);

        if (param0->unk_48 == 0xffffffff) {
            break;
        }

        if ((param0->unk_48 == 0xfffffffe) && (param2 == 1)) {
            break;
        }

        Window_Clear(&param0->unk_30, 0);
        BGL_DeleteWindow(&param0->unk_30);
        sub_02001384(param0->unk_40, NULL, NULL);
        sub_02013A3C(param0->unk_44);
        Sound_PlayEffect(1500);

        param0->unk_2C = 0;
        v0 = 1;
        break;
    }

    return v0;
}

static BOOL ov73_021D1784(UnkStruct_ov73_021D1058 *param0, u32 param1, int param2, int param3, int param4)
{
    BOOL v0 = 0;
    UnkStruct_ov61_0222C884 v1;

    switch (param0->unk_54) {
    case 0:
        sub_02019120(0, 0);
        param0->unk_5C = Strbuf_Init(0x400, param0->unk_00);
        MessageLoader_GetStrbuf(param0->unk_4C, param1, param0->unk_5C);

        if (param2 == 1) {
            v1 = Unk_ov72_021D37D4;

            {
                u32 v2 = Strbuf_NumLines(param0->unk_5C);

                v1.unk_02 = 12 - v2;
                v1.unk_04 = v2 * 2;
            }

            sub_0201A8D4(param0->unk_18, &param0->unk_1C, &v1);
            BGL_WindowColor(&param0->unk_1C, 0, 0, 0, 24 * 8, 24 * 8);
            Text_AddPrinterWithParamsAndColor(&param0->unk_1C, FONT_SYSTEM, param0->unk_5C, 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
        } else {
            v1 = Unk_ov72_021D37E4;

            if (param2 == 2) {
                u32 v3 = Strbuf_NumLines(param0->unk_5C);

                v1.unk_02 = param3 + param4 / 2 - v3;
                v1.unk_04 = v3 * 2;
            } else {
                v1.unk_02 = param3;
                v1.unk_04 = param4;
            }

            sub_0201A8D4(param0->unk_18, &param0->unk_1C, &v1);
            BGL_WindowColor(&param0->unk_1C, 0, 0, 0, 24 * 8, 24 * 8);
            Text_AddPrinterWithParamsAndColor(&param0->unk_1C, FONT_SYSTEM, param0->unk_5C, 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(15, 2, 0), NULL);
        }

        Strbuf_Free(param0->unk_5C);
        param0->unk_54 = 1;
        break;
    case 1:
        sub_0201A954(&param0->unk_1C);
        param0->unk_54 = 2;
        break;
    case 2:
        if (ov73_021D1334(param0, 0, 0) == 1) {
            param0->unk_54 = 3;
        }
        break;
    case 3:
        if (((gCoreSys.pressedKeys & PAD_BUTTON_A) == PAD_BUTTON_A) || ((gCoreSys.pressedKeys & PAD_BUTTON_B) == PAD_BUTTON_B)) {
            Sound_PlayEffect(1500);
            param0->unk_54 = 4;
        }
        break;
    case 4:
        if (ov73_021D1334(param0, 0, 1) == 1) {
            param0->unk_54 = 5;
        }
        break;
    case 5:
        BGL_DeleteWindow(&param0->unk_1C);
        sub_02019EBC(param0->unk_18, 0);
        param0->unk_54 = 0;
        v0 = 1;
        break;
    }

    return v0;
}

static void ov73_021D1930(UnkStruct_ov73_021D1058 *param0)
{
    sub_02006E3C(125, 0, param0->unk_18, 3, 0, 0, 0, param0->unk_00);
    sub_02019690(0, 32, 0, param0->unk_00);
    sub_02006E3C(125, 24, param0->unk_18, 7, 0, 0, 0, param0->unk_00);

    {
        int v0, v1;

        if (Unk_020E4C40 == 12) {
            v0 = 3;
            v1 = 27;
        } else if (Unk_020E4C40 == 10) {
            v0 = 1;
            v1 = 25;
        } else {
            v0 = 2;
            v1 = 26;
        }

        sub_02006E84(125, v0, 0, 0 * (2 * 16), (2 * 16) * 3, param0->unk_00);
        sub_02006E84(125, v1, 4, 0 * (2 * 16), (2 * 16) * 5, param0->unk_00);
    }

    ov73_021D19DC(param0);
    ov73_021D1A20(param0);
    ov73_021D1B14(param0);

    sub_0201975C(0, 0x0);
    sub_0201975C(4, 0x0);
}

static void ov73_021D19DC(UnkStruct_ov73_021D1058 *param0)
{
    int v0[] = { 4, 5, 6, 7, 8 };

    if (param0->unk_88 >= 5) {
        return;
    }

    sub_02006E60(125, v0[param0->unk_88], param0->unk_18, 3, 0, 0, 0, param0->unk_00);
}

static void ov73_021D1A20(UnkStruct_ov73_021D1058 *param0)
{
    int v0[][2] = {
        { 0, 0 },
        { 19, 20 },
        { 9, 13 },
        { 10, 13 },
        { 11, 13 },
        { 12, 13 },
        { 14, 18 },
        { 15, 18 },
        { 16, 18 },
        { 17, 18 },
        { 21, 22 }
    };

    if ((param0->unk_89 != 0) && (param0->unk_89 < 12)) {
        sub_02006E3C(125, v0[param0->unk_89][0], param0->unk_18, 1, 0, 0, 0, param0->unk_00);
        sub_02006E84(125, v0[param0->unk_89][1], 0, 7 * (2 * 16), (2 * 16), param0->unk_00);
        sub_02006E60(125, 23, param0->unk_18, 1, 0, 0, 0, param0->unk_00);
        ov73_021D14DC(param0, 1, 7);
    }

    if ((param0->unk_8A != 0) && (param0->unk_8A < 12)) {
        sub_02006E3C(125, v0[param0->unk_8A][0], param0->unk_18, 2, 0, 0, 0, param0->unk_00);
        sub_02006E84(125, v0[param0->unk_8A][1], 0, 8 * (2 * 16), (2 * 16), param0->unk_00);
        sub_02006E60(125, 23, param0->unk_18, 2, 0, 0, 0, param0->unk_00);
        ov73_021D14DC(param0, 2, 8);
    }
}

static void ov73_021D1B14(UnkStruct_ov73_021D1058 *param0)
{
    int v0[] = { 28, 29, 29, 30, 31 };

    if (param0->unk_8B >= 5) {
        return;
    }

    sub_02006E60(125, v0[param0->unk_8B], param0->unk_18, 7, 0, 0, 0, param0->unk_00);

    if (param0->unk_8B == 1) {
        ov73_021D14DC(param0, 7, 3);
    } else if (param0->unk_8B == 2) {
        ov73_021D14DC(param0, 7, 2);
    }
}

static const u8 Unk_ov72_021D39D4[] = {
    0x0,
    0x1,
    0x2,
    0x3,
    0x4,
    0x5,
    0x6,
    0x7,
    0x40,
    0x41,
    0x8,
    0x9,
    0xA,
    0xB,
    0xC,
    0xD,
    0xE,
    0xF,
    0x42,
    0x43,
    0x10,
    0x11,
    0x12,
    0x13,
    0x14,
    0x15,
    0x16,
    0x17,
    0x44,
    0x45,
    0x18,
    0x19,
    0x1A,
    0x1B,
    0x1C,
    0x1D,
    0x1E,
    0x1F,
    0x46,
    0x47,
    0x20,
    0x21,
    0x22,
    0x23,
    0x24,
    0x25,
    0x26,
    0x27,
    0x48,
    0x49,
    0x28,
    0x29,
    0x2A,
    0x2B,
    0x2C,
    0x2D,
    0x2E,
    0x2F,
    0x4A,
    0x4B,
    0x30,
    0x31,
    0x32,
    0x33,
    0x34,
    0x35,
    0x36,
    0x37,
    0x4C,
    0x4D,
    0x38,
    0x39,
    0x3A,
    0x3B,
    0x3C,
    0x3D,
    0x3E,
    0x3F,
    0x4E,
    0x4F,
    0x50,
    0x51,
    0x52,
    0x53,
    0x58,
    0x59,
    0x5A,
    0x5B,
    0x60,
    0x61,
    0x54,
    0x55,
    0x56,
    0x57,
    0x5C,
    0x5D,
    0x5E,
    0x5F,
    0x62,
    0x63
};

static void ov73_021D1B80(UnkStruct_ov73_021D1058 *param0)
{
    ArchivedSprite v0;
    void *v1;
    void *v2;
    void *v3;
    int v4 = 2;
    int v5 = 5;
    int v6 = 8;
    int v7 = 10;

    BuildArchivedPokemonSprite(&v0, 427, 0, 2, 0, 0, 0);

    v1 = Heap_AllocFromHeap(param0->unk_00, (10 * 10) * 2);

    {
        int v8;

        for (v8 = 0; v8 < (10 * 10); v8++) {
            ((u16 *)v1)[v8] = Unk_ov72_021D39D4[v8] + 1;
        }
    }

    v2 = sub_0201363C(v0.archive, v0.character, param0->unk_00);
    v3 = sub_02013660(v0.archive, v0.palette, param0->unk_00);

    MI_CpuCopy32(v3, param0->unk_B8, 0x20);

    sub_020039F8(param0->unk_B8, v3, 1, 16, 0x6a3c);
    sub_02019CB8(param0->unk_18, v4, 0, 0, 0, 32, 24, v6);
    sub_020198C0(param0->unk_18, v4, v1, 11, 9, 10, 10);

    ov73_021D14DC(param0, v4, v6);

    sub_02019690(v4, 32, 0, param0->unk_00);
    sub_0201958C(param0->unk_18, v4, v2, (10 * 10) * 0x20, 1);
    sub_0201972C(v4, v3, (2 * 16), (2 * 16) * v6);
    sub_02019CB8(param0->unk_18, v5, 0, 0, 0, 32, 24, v7);
    sub_020198C0(param0->unk_18, v5, v1, 11, 7, 10, 10);

    ov73_021D14DC(param0, v5, v7);

    sub_02019690(v5, 32, 0, param0->unk_00);
    sub_0201958C(param0->unk_18, v5, v2, (10 * 10) * 0x20, 1);
    sub_0201972C(v5, v3, (2 * 16), (2 * 16) * v7);
    Heap_FreeToHeap(v3);
    Heap_FreeToHeap(v2);
    Heap_FreeToHeap(v1);
}

static void ov73_021D1CE0(UnkStruct_ov73_021D1058 *param0)
{
    sub_02006E60(125, 40, param0->unk_18, 6, 0, 0, 0, param0->unk_00);
    ov73_021D14DC(param0, 6, 9);

    sub_02006E84(125, 41, 4, 7 * (2 * 16), (2 * 16) * 3, param0->unk_00);
    sub_02019690(6, 32, 0, param0->unk_00);
    sub_02006E3C(125, 32, param0->unk_18, 6, 0x20, 0, 0, param0->unk_00);
}

static BOOL ov73_021D1D44(UnkStruct_ov73_021D1058 *param0, int param1, int param2)
{
    BOOL v0 = 0;
    GXBlendPlaneMask v1;

    if (param2 == 0) {
        {
            int v2 = sub_020192EC(param0->unk_18, param1);

            if (v2 != 0) {
                if (v2 > 0) {
                    sub_02019184(param0->unk_18, param1, 2, 4);
                } else {
                    sub_02019184(param0->unk_18, param1, 1, 4);
                }
            } else {
                v0 = 1;
            }
        }
    } else if (param2 == 1) {
        if (sub_020192EC(param0->unk_18, param1) != -8 * 6) {
            sub_02019184(param0->unk_18, param1, 2, 4);
        } else {
            v0 = 1;
        }
    } else if (param2 == 2) {
        if (sub_020192EC(param0->unk_18, param1) != 0) {
            sub_02019184(param0->unk_18, param1, 1, 4);
        } else {
            v0 = 1;
        }
    }

    return v0;
}

static void ov73_021D1DCC(UnkStruct_ov73_021D1058 *param0)
{
    param0->unk_8C = 0;
    param0->unk_8D = 0;
    param0->unk_8E = 0;
    param0->unk_8F = 0;
}

static void ov73_021D1DE8(UnkStruct_ov73_021D1058 *param0)
{
    if (param0->unk_84 == 0) {
        if (param0->unk_8D) {
            param0->unk_8D--;
        } else {
            param0->unk_8C++;
            param0->unk_8C &= 3;
            param0->unk_8D = 4;
        }

        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG3, 6, 10);

        {
            int v0[] = { 9, 10, 11, 12 };
            sub_02006E3C(125, v0[param0->unk_8C], param0->unk_18, 1, 0, 0, 0, param0->unk_00);
        }
    } else {
        if (param0->unk_8F) {
            param0->unk_8F--;
        } else {
            param0->unk_8E++;
            param0->unk_8E &= 3;
            param0->unk_8F = 4;
        }

        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG1, GX_BLEND_PLANEMASK_BG3, 6, 10);

        {
            int v1[] = { 14, 15, 16, 17 };
            sub_02006E3C(125, v1[param0->unk_8E], param0->unk_18, 2, 0, 0, 0, param0->unk_00);
        }
    }
}

static void ov73_021D1EFC(UnkStruct_ov73_021D1058 *param0)
{
    G2_BlendNone();
}

static void ov73_021D1F08(UnkStruct_ov73_021D1058 *param0)
{
    param0->unk_94[0] = 0;
    param0->unk_94[1] = 0;
}

static BOOL ov73_021D1F18(UnkStruct_ov73_021D1058 *param0)
{
    BOOL v0 = 0;
    int v1;

    if (param0->unk_94[1]) {
        param0->unk_94[1]--;
    } else {
        param0->unk_94[0]++;
        param0->unk_94[1] = 8;
    }

    if (param0->unk_84 == 0) {
        {
            int v2[] = { 9, 42, 43, 44, 45, 0xff };
            v1 = v2[param0->unk_94[0]];
        }
    } else {
        {
            int v3[] = { 14, 46, 47, 48, 49, 0xff };
            v1 = v3[param0->unk_94[0]];
        }
    }

    if (v1 == 0xff) {
        v0 = 1;
    } else {
        sub_02006E3C(125, v1, param0->unk_18, 1, 0, 0, 0, param0->unk_00);
    }

    return v0;
}

static void ov73_021D1FA0(UnkStruct_ov73_021D1058 *param0)
{
    if (param0->unk_94[8] > 0) {
        param0->unk_94[8]--;

        sub_020039F8(param0->unk_B8, param0->unk_BC, 1, param0->unk_94[8] / 3, 0x6a3c);
        sub_0201972C(2, param0->unk_BC, (2 * 16), (2 * 16) * 8);
        sub_0201972C(5, param0->unk_BC, (2 * 16), (2 * 16) * 10);
    }
}

static BOOL ov73_021D200C(UnkStruct_ov73_021D1058 *param0, int *param1)
{
    BOOL v0 = 0;

    switch (*param1) {
    case 0:
        sub_02019184(param0->unk_18, 2, 0, 0);
        sub_02019184(param0->unk_18, 2, 3, (-8 * 13));
        BGL_SetPriority(2, 0);
        sub_02019120(5, 1);

        param0->unk_94[5] = 0;
        param0->unk_94[6] = 8;
        param0->unk_94[7] = 0;
        param0->unk_94[8] = (16 * 3);
        *param1 = 1;
        break;
    case 1: {
        int v1 = sub_020192EC(param0->unk_18, 2);
        int v2 = sub_020192F8(param0->unk_18, 5);
        int v3 = param0->unk_94[6] * 9 * param0->unk_94[7];
        int v4 = 9 * param0->unk_94[7] * param0->unk_94[7] / 2;
        int v5 = v3 - v4;

        if (v2 < 8 * 11) {
            param0->unk_94[7]++;
            sub_02019184(param0->unk_18, 2, 1, 2);
            sub_02019184(param0->unk_18, 5, 1, 2);
            sub_02019184(param0->unk_18, 5, 3, v5);
        } else {
            sub_02019120(5, 0);
            param0->unk_94[7] = 0;
            *param1 = 2;
        }
    } break;
    case 2:
        if (param0->unk_94[7]) {
            param0->unk_94[7]--;
        } else {
            sub_02019120(2, 1);
            param0->unk_94[5] = 0;
            param0->unk_94[6] = 9;
            param0->unk_94[7] = 0;
            *param1 = 3;
        }
        break;
    case 3: {
        int v6 = sub_020192EC(param0->unk_18, 2);
        int v7 = sub_020192F8(param0->unk_18, 2);
        int v8 = param0->unk_94[6] * 9 * param0->unk_94[7];
        int v9 = 9 * param0->unk_94[7] * param0->unk_94[7] / 2;
        int v10 = (-8 * 13) + v8 - v9;

        if ((param0->unk_94[5] > 0) && (v10 <= 0)) {
            sub_02019184(param0->unk_18, 2, 3, 0);
            param0->unk_94[5] = 0;
            param0->unk_94[6] = 3;
            param0->unk_94[7] = 0;
            *param1 = 4;
        } else {
            param0->unk_94[7]++;
            param0->unk_94[5] = v10;
            sub_02019184(param0->unk_18, 2, 1, 1);
            v10 = v10 >> 1;

            if (v10 > 8 * 18) {
                v10 = 8 * 18;
            }

            sub_02019184(param0->unk_18, 2, 3, v10);
        }
    } break;
    case 4: {
        int v11 = sub_020192EC(param0->unk_18, 2);
        int v12 = sub_020192F8(param0->unk_18, 2);
        int v13 = param0->unk_94[6] * 9 * param0->unk_94[7];
        int v14 = 9 * param0->unk_94[7] * param0->unk_94[7] / 3;
        int v15 = v13 - v14;

        if ((param0->unk_94[5] > 0) && (v15 <= 0)) {
            sub_02019184(param0->unk_18, 2, 3, 0);
            param0->unk_94[5] = 0;
            param0->unk_94[6] = 3;
            param0->unk_94[7] = 0;
            *param1 = 5;
        } else {
            param0->unk_94[7]++;
            sub_02019184(param0->unk_18, 2, 2, 2);
            sub_02019184(param0->unk_18, 2, 3, v15);
            param0->unk_94[5] = v15;
        }
    } break;
    case 5: {
        int v16 = sub_020192EC(param0->unk_18, 2);
        int v17 = sub_020192F8(param0->unk_18, 2);
        int v18 = param0->unk_94[6] * 9 * param0->unk_94[7];
        int v19 = 9 * param0->unk_94[7] * param0->unk_94[7] / 3;
        int v20 = v18 - v19;

        if ((param0->unk_94[5] > 0) && (v20 <= 0)) {
            sub_02019184(param0->unk_18, 2, 3, 0);
            *param1 = 6;
        } else {
            param0->unk_94[7]++;
            sub_02019184(param0->unk_18, 2, 1, 4);
            sub_02019184(param0->unk_18, 2, 3, v20);
            param0->unk_94[5] = v20;
        }
    } break;
    case 6:
        sub_02005844(427, 0);
        v0 = 1;
        break;
    }

    ov73_021D1FA0(param0);

    return v0;
}

static void ov73_021D230C(UnkStruct_ov73_021D1058 *param0)
{
    BGL_SetPriority(2, 1);
}

static BOOL ov73_021D2318(UnkStruct_ov73_021D1058 *param0)
{
    BOOL v0 = 0;

    switch (param0->unk_0C) {
    case 0:
        sub_02004550(2, 1029, 1);
        sub_020055D0(1029, 0);
        sub_02019120(0, 1);
        sub_02019120(7, 1);
        sub_0200F174(0, 1, 1, 0x0, 6, 1, param0->unk_00);
        param0->unk_0C = 1;
        break;
    case 1:
        if (ScreenWipe_Done() == 1) {
            if (ov73_021D14B8(param0, 40) == 1) {
                param0->unk_0C = 2;
            }
        }
        break;
    case 2:
        if (ov73_021D1510(param0, 0, 1) == 1) {
            param0->unk_0C = 3;
            {
                sub_02019EBC(param0->unk_18, 0);
            }
        }
        break;
    case 3:
        Sound_PlayBGM(1029);
        param0->unk_89 = 1;
        param0->unk_8A = 0;
        ov73_021D1A20(param0);
        sub_02019120(3, 1);
        sub_02019120(1, 1);
        sub_0200F174(3, 1, 1, 0x0, 16, 4, param0->unk_00);
        param0->unk_0C = 4;
        break;
    case 4:
        if (ScreenWipe_Done() == 1) {
            param0->unk_0C = 5;
        }
        break;
    case 5:
        if (ov73_021D1510(param0, 1, 1) == 1) {
            param0->unk_0C = 6;
        }
        break;
    case 6:
        if (ov73_021D1D44(param0, 1, 1) == 1) {
            param0->unk_0C = 7;
        }
        break;
    case 7:
        if (ov73_021D1648(param0, 1, 1) == 1) {
            switch (param0->unk_48) {
            case 1:
                param0->unk_10 = 10;
                param0->unk_0C = 8;
                break;
            case 2:
                param0->unk_10 = 31;
                param0->unk_0C = 8;
                {
                    sub_02019EBC(param0->unk_18, 0);
                }
                break;
            case 3:
                param0->unk_0C = 41;
                break;
            }
        }
        break;
    case 8:
        sub_0200F174(0, 0, 0, 0x0, 6, 1, param0->unk_00);
        param0->unk_0C = 9;
        break;
    case 9:
        if (ScreenWipe_Done() == 1) {
            {
                sub_02019EBC(param0->unk_18, 0);
            }
            sub_02019120(1, 0);
            {
                param0->unk_0C = param0->unk_10;
            }
        }
        break;
    case 10:
        param0->unk_88 = 1;
        ov73_021D19DC(param0);
        param0->unk_8B = 1;
        ov73_021D1B14(param0);
        sub_0200F174(0, 1, 1, 0x0, 6, 1, param0->unk_00);
        param0->unk_0C = 11;
        break;
    case 11:
        if (ScreenWipe_Done() == 1) {
            param0->unk_0C = 12;
        }
        break;
    case 12:
        if (ov73_021D1784(param0, 2, 0, 3, 18) == 1) {
            param0->unk_0C = 13;
        }
        break;
    case 13:
        param0->unk_88 = 2;
        ov73_021D19DC(param0);
        param0->unk_0C = 14;
        break;
    case 14:
        if (ov73_021D1784(param0, 3, 0, 7, 12) == 1) {
            param0->unk_0C = 15;
        }
        break;
    case 15:
        param0->unk_88 = 3;
        ov73_021D19DC(param0);
        param0->unk_0C = 16;
        break;
    case 16:
        if (ov73_021D1784(param0, 4, 2, 4, 12) == 1) {
            param0->unk_0C = 17;
        }
        break;
    case 17:
        if (ov73_021D1510(param0, 6, 1) == 1) {
            param0->unk_0C = 18;
        }
        break;
    case 18:
        if (ov73_021D1784(param0, 5, 2, 4, 10) == 1) {
            param0->unk_0C = 19;
            {
                sub_02019EBC(param0->unk_18, 0);
            }
        }
        break;
    case 19:
        sub_02019120(0, 1);
        param0->unk_0C = 20;
        break;
    case 20:
        if (ov73_021D1510(param0, 7, 1) == 1) {
            param0->unk_0C = 21;
        }
        break;
    case 21: {
        UnkStruct_02015958 v1 = { NULL, 6, 1, 12, 12, 8 };

        v1.unk_00 = param0->unk_18;
        sub_02015958(param0->unk_68, &v1);
        sub_02019120(6, 1);
    }
        param0->unk_8B = 3;
        ov73_021D1B14(param0);
        param0->unk_0C = 22;
        break;
    case 22:
        if (gCoreSys.pressedKeys) {
            param0->unk_0C = 27;
            break;
        }

        {
            int v2 = sub_020159C0(param0->unk_68);

            if ((v2 == 3) || (v2 == 4)) {
                param0->unk_0C = 23;
            }
        }
        break;
    case 23:
        switch (sub_020159C0(param0->unk_68)) {
        case 1:
            param0->unk_0C = 24;
            break;
        case 2:
            param0->unk_0C = 26;
            break;
        }
        break;
    case 24:
        if (ov73_021D1334(param0, 6, 1) == 1) {
            sub_02015A54(param0->unk_68);
            sub_0200F174(0, 0, 0, 0x0, 6, 1, param0->unk_00);
            param0->unk_0C = 25;
        }
        break;
    case 25:
        if (ScreenWipe_Done() == 1) {
            {
                sub_02019EBC(param0->unk_18, 0);
            }
            param0->unk_0C = 28;
        }
        break;
    case 26:
        if (ov73_021D1334(param0, 6, 1) == 1) {
            {
                sub_02019EBC(param0->unk_18, 0);
            }
            sub_02015A54(param0->unk_68);
            param0->unk_88 = 1;
            ov73_021D19DC(param0);
            param0->unk_8B = 1;
            ov73_021D1B14(param0);
            param0->unk_0C = 12;
        }
        break;
    case 27:
        if (ov73_021D1510(param0, 8, 1) == 1) {
            param0->unk_0C = 22;
        }
        break;
    case 28:
        param0->unk_88 = 0;
        ov73_021D19DC(param0);
        param0->unk_8B = 0;
        ov73_021D1B14(param0);
        sub_02019120(1, 1);
        sub_02019184(param0->unk_18, 1, 0, 0);
        sub_0200F174(0, 1, 1, 0x0, 6, 1, param0->unk_00);
        param0->unk_0C = 29;
        break;
    case 29:
        if (ScreenWipe_Done() == 1) {
            param0->unk_0C = 30;
        }
        break;
    case 30:
        if (ov73_021D1510(param0, 9, 1) == 1) {
            param0->unk_0C = 6;
        }
        break;
    case 31:
        param0->unk_88 = 4;
        ov73_021D19DC(param0);
        param0->unk_8B = 2;
        ov73_021D1B14(param0);
        sub_0200F174(0, 1, 1, 0x0, 6, 1, param0->unk_00);
        param0->unk_0C = 32;
        break;
    case 32:
        if (ScreenWipe_Done() == 1) {
            param0->unk_0C = 33;
        }
        break;
    case 33:
        if (ov73_021D1784(param0, 10, 1, 9, 6) == 1) {
            param0->unk_0C = 34;
        }
        break;
    case 34:
        if (ov73_021D1784(param0, 11, 1, 8, 8) == 1) {
            param0->unk_0C = 35;
        }
        break;
    case 35:
        if (ov73_021D1784(param0, 12, 1, 9, 6) == 1) {
            param0->unk_0C = 36;
        }
        break;
    case 36:
        if (ov73_021D1784(param0, 13, 1, 5, 14) == 1) {
            param0->unk_0C = 37;
        }
        break;
    case 37:
        if (ov73_021D1784(param0, 14, 1, 10, 4) == 1) {
            param0->unk_0C = 38;
        }
        break;
    case 38:
        if (ov73_021D1784(param0, 15, 1, 6, 12) == 1) {
            param0->unk_0C = 39;
        }
        break;
    case 39:
        sub_0200F174(0, 0, 0, 0x0, 6, 1, param0->unk_00);
        param0->unk_0C = 40;
        break;
    case 40:
        if (ScreenWipe_Done() == 1) {
            {
                sub_02019EBC(param0->unk_18, 0);
            }
            sub_02019120(0, 1);
            param0->unk_0C = 28;
        }
        break;
    case 41:
        if (ov73_021D1D44(param0, 1, 2) == 1) {
            param0->unk_0C = 42;
        }
        break;
    case 42:
        if (ov73_021D1510(param0, 16, 1) == 1) {
            param0->unk_0C = 43;
        }
        break;
    case 43:
        sub_0200F174(4, 0, 0, 0x0, 6, 1, param0->unk_00);
        param0->unk_0C = 44;
        break;
    case 44:
        if (ScreenWipe_Done() == 1) {
            ov73_021D1CE0(param0);
            param0->unk_8B = 4;
            ov73_021D1B14(param0);
            sub_02019120(6, 1);
            sub_0200F174(4, 1, 1, 0x0, 6, 1, param0->unk_00);
            param0->unk_0C = 45;
        }
        break;
    case 45:
        if (ScreenWipe_Done() == 1) {
            param0->unk_0C = 46;
        }
        break;
    case 46:
        if (ov73_021D1510(param0, 17, 1) == 1) {
            param0->unk_0C = 47;
        }
        break;
    case 47:
        if (ov73_021D0FFC() == 1) {
            param0->unk_94[0] = 0;
            param0->unk_94[1] = 0;
            {
                sub_02019EBC(param0->unk_18, 0);
            }
            param0->unk_0C = 48;
        } else if (gCoreSys.pressedKeys) {
            param0->unk_0C = 49;
        }
        break;
    case 48:
        if (param0->unk_94[1]) {
            param0->unk_94[1]--;
        } else {
            {
                int v3[] = { 33, 34, 0xffff };

                if (v3[param0->unk_94[0]] == 0xffff) {
                    Sound_PlayEffect(1798);

                    param0->unk_0C = 50;
                } else {
                    sub_02006E3C(125, v3[param0->unk_94[0]], param0->unk_18, 6, 0x20, 0, 0, param0->unk_00);
                    param0->unk_94[0]++;
                    param0->unk_94[1] = 4;
                }
            }
        }
        break;
    case 49:
        if (ov73_021D1510(param0, 18, 1) == 1) {
            param0->unk_0C = 47;
        }
        break;
    case 50:
        sub_0200AAE0(1, 16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3), 1);
        sub_0200AAE0(1, 16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3), 2);
        param0->unk_0C = 51;
        break;
    case 51:
        if ((sub_0200AC1C(1) == 1) && (sub_0200AC1C(2) == 1)) {
            sub_0200AAE0(1, 0, 16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3), 1);
            sub_0200AAE0(1, 0, 16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3), 2);
            param0->unk_0C = 52;
        }
        break;
    case 52:
        if ((sub_0200AC1C(1) == 1) && (sub_0200AC1C(2) == 1)) {
            sub_0200AAE0(4, 16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3), 1);
            sub_0200AAE0(4, 16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3), 2);
            param0->unk_0C = 53;
        }
        break;
    case 53:
        if ((sub_0200AC1C(1) == 1) && (sub_0200AC1C(2) == 1)) {
            param0->unk_0C = 54;
        }
        break;
    case 54:
        ov73_021D1B80(param0);
        sub_02019120(6, 0);
        param0->unk_94[0] = 0;
        ov73_021D200C(param0, &param0->unk_94[0]);
        param0->unk_8B = 0;
        ov73_021D1B14(param0);
        sub_0200AAE0(16, 0, 16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3), 1);
        sub_0200AAE0(16, 0, 16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3), 2);
        param0->unk_0C = 55;
        break;
    case 55:
        ov73_021D200C(param0, &param0->unk_94[0]);

        if ((sub_0200AC1C(1) == 1) && (sub_0200AC1C(2) == 1)) {
            param0->unk_0C = 56;
        }
        break;
    case 56:
        if (ov73_021D200C(param0, &param0->unk_94[0]) == 1) {
            param0->unk_0C = 57;
        }
        break;
    case 57:
        if (ov73_021D14B8(param0, 40) == 1) {
            param0->unk_0C = 58;
        }
        break;
    case 58:
        if (ov73_021D1510(param0, 19, 1) == 1) {
            {
                sub_02019EBC(param0->unk_18, 0);
            }
            param0->unk_0C = 59;
        }
        break;
    case 59:
        if (ov73_021D1334(param0, 2, 1) == 1) {
            ov73_021D230C(param0);
            param0->unk_0C = 60;
        }
        break;
    case 60:
        if (ov73_021D14B8(param0, 30) == 1) {
            param0->unk_0C = 61;
        }
        break;
    case 61:
        if (ov73_021D1510(param0, 20, 1) == 1) {
            param0->unk_0C = 62;
        }
        break;
    case 62:
        if (ov73_021D1334(param0, 1, 1) == 1) {
            param0->unk_0C = 63;
        }
        break;
    case 63:
        ov73_021D1DCC(param0);
        param0->unk_89 = 2;
        param0->unk_8A = 6;
        ov73_021D1A20(param0);
        sub_02019184(param0->unk_18, 1, 0, -8 * 6);
        sub_02019184(param0->unk_18, 2, 0, 8 * 6);
        param0->unk_0C = 64;
        break;
    case 64:
        if (ov73_021D1334(param0, 1, 0) == 1) {
            param0->unk_0C = 65;
        }
        break;
    case 65:
        if (ov73_021D1334(param0, 2, 0) == 1) {
            param0->unk_0C = 66;
        }
        break;
    case 66:
        if (ov73_021D1510(param0, 21, 1) == 1) {
            param0->unk_84 = 0;
            param0->unk_0C = 67;
        }
        break;
    case 67:
        if ((gCoreSys.pressedKeys & PAD_BUTTON_A) == PAD_BUTTON_A) {
            param0->unk_7C = 6;
            param0->unk_80 = 10;
            param0->unk_78 = 2;

            if (param0->unk_84 == 0) {
                param0->unk_0C = 68;
            } else {
                param0->unk_0C = 70;
            }
            break;
        }

        if ((gCoreSys.pressedKeys & PAD_KEY_LEFT) == PAD_KEY_LEFT || (gCoreSys.pressedKeys & PAD_KEY_RIGHT) == PAD_KEY_RIGHT) {
            if (param0->unk_84 == 0) {
                param0->unk_84 = 1;
            } else {
                param0->unk_84 = 0;
            }

            Sound_PlayEffect(1500);
        }

        ov73_021D1DE8(param0);
        break;
    case 68:
        if (ov73_021D1334(param0, 2, 1) == 1) {
            param0->unk_0C = 69;
        }
        break;
    case 69:
        if (ov73_021D1D44(param0, 1, 0) == 1) {
            ov73_021D1EFC(param0);
            param0->unk_0C = 72;
        }
        break;
    case 70:
        if (ov73_021D1334(param0, 1, 1) == 1) {
            param0->unk_0C = 71;
        }
        break;
    case 71:
        if (ov73_021D1D44(param0, 2, 0) == 1) {
            ov73_021D1EFC(param0);
            param0->unk_0C = 72;
        }
        break;
    case 72: {
        u32 v4;

        if (param0->unk_84 == 0) {
            v4 = 22;
        } else {
            v4 = 23;
        }

        if (ov73_021D1510(param0, v4, 1) == 1) {
            param0->unk_0C = 73;
        }
    } break;
    case 73:
        if (ov73_021D1648(param0, 0, 0) == 1) {
            switch (param0->unk_48) {
            case 1:
                param0->unk_0C = 75;
                break;
            case 2:
            case 0xfffffffe: {
                sub_02019EBC(param0->unk_18, 0);
            }
                param0->unk_0C = 74;
                break;
            }
        }
        break;
    case 74: {
        int v5;

        if (param0->unk_84 == 0) {
            v5 = 1;
        } else {
            v5 = 2;
        }

        if (ov73_021D1334(param0, v5, 1) == 1) {
            param0->unk_0C = 63;
        }
    } break;
    case 75:
        if (ov73_021D1510(param0, 24, 1) == 1) {
            param0->unk_0C = 76;
        }
        break;
    case 76:
        param0->unk_70->unk_04 = param0->unk_84;
        param0->unk_14 = OverlayManager_New(&Unk_020F2DAC, param0->unk_70, param0->unk_00);
        param0->unk_0C = 77;
        break;
    case 77:
        sub_02019120(0, 1);
        sub_02019120(3, 1);
        sub_02019120(7, 1);

        if (param0->unk_84 == 0) {
            sub_02019120(1, 1);
            sub_02019184(param0->unk_18, 1, 0, 0);
        } else {
            sub_02019120(2, 1);
            sub_02019184(param0->unk_18, 2, 0, 0);
        }

        sub_0200F174(0, 1, 1, 0x0, 6, 1, param0->unk_00);
        param0->unk_0C = 78;
        break;
    case 78:
        if (ScreenWipe_Done() == 1) {
            param0->unk_0C = 79;
        }
        break;
    case 79: {
        u32 v6;
        int v7;

        if (param0->unk_84 == 0) {
            v6 = 25;
        } else {
            v6 = 26;
        }

        if (ov73_021D1510(param0, v6, 1) == 1) {
            param0->unk_0C = 80;
        }
    } break;
    case 80:
        if (ov73_021D1648(param0, 0, 0) == 1) {
            {
                sub_02019EBC(param0->unk_18, 0);
            }

            switch (param0->unk_48) {
            case 1:
                param0->unk_10 = 82;
                param0->unk_0C = 81;
                break;
            case 2:
            case 0xfffffffe:
                Strbuf_Clear(param0->unk_70->unk_18);
                param0->unk_10 = 63;
                param0->unk_0C = 81;
                break;
            }
        }
        break;
    case 81: {
        int v8;

        if (param0->unk_84 == 0) {
            v8 = 1;
        } else {
            v8 = 2;
        }

        if (ov73_021D1334(param0, v8, 1) == 1) {
            {
                param0->unk_0C = param0->unk_10;
            }
        }
    } break;
    case 82:
        param0->unk_89 = 1;
        param0->unk_8A = 0;
        ov73_021D1A20(param0);
        param0->unk_0C = 83;
        break;
    case 83:
        if (ov73_021D1334(param0, 1, 0) == 1) {
            param0->unk_0C = 84;
        }
        break;
    case 84:
        if (ov73_021D1510(param0, 27, 1) == 1) {
            param0->unk_0C = 85;
        }
        break;
    case 85:
        if (ov73_021D1334(param0, 1, 1) == 1) {
            param0->unk_0C = 86;
        }
        break;
    case 86:
        param0->unk_89 = 10;
        param0->unk_8A = 0;
        ov73_021D1A20(param0);
        param0->unk_0C = 87;
        break;
    case 87:
        if (ov73_021D1334(param0, 1, 0) == 1) {
            param0->unk_0C = 88;
        }
        break;
    case 88:
        if (ov73_021D1510(param0, 28, 1) == 1) {
            param0->unk_0C = 89;
        }
        break;
    case 89:
        if (ov73_021D1D44(param0, 1, 1) == 1) {
            param0->unk_0C = 90;
        }
        break;
    case 90:
        if (ov73_021D1648(param0, 2, 1) == 1) {
            switch (param0->unk_48) {
            case 1:
                param0->unk_0C = 92;
                break;
            case 2:
            case 3:
            case 4:
            case 5: {
                u32 v9;

                if ((Unk_020E4C40 == 10) || (GAME_VERSION == 12)) {
                    v9 = Unk_ov72_021D3954[param0->unk_48 - 1].unk_00;
                } else {
                    v9 = Unk_ov73_021D1648[param0->unk_48 - 1].unk_00;
                }

                {
                    Strbuf *v10 = MessageLoader_GetNewStrbuf(param0->unk_4C, v9);

                    Strbuf_Copy(param0->unk_74->unk_18, v10);
                    Strbuf_Free(v10);
                }
            }
                param0->unk_0C = 91;
                break;
            }
        }
        break;
    case 91:
        if (ov73_021D1D44(param0, 1, 2) == 1) {
            param0->unk_0C = 95;
        }
        break;
    case 92:
        param0->unk_14 = OverlayManager_New(&Unk_020F2DAC, param0->unk_74, param0->unk_00);
        param0->unk_0C = 93;
        break;
    case 93:
        sub_02019120(0, 1);
        sub_02019120(3, 1);
        sub_02019120(7, 1);
        sub_02019120(1, 1);
        sub_02019184(param0->unk_18, 1, 0, 0);
        sub_0200F174(0, 1, 1, 0x0, 6, 1, param0->unk_00);
        param0->unk_0C = 94;
        break;
    case 94:
        if (ScreenWipe_Done() == 1) {
            param0->unk_0C = 95;
        }
        break;
    case 95:
        if (ov73_021D1510(param0, 29, 1) == 1) {
            param0->unk_0C = 96;
        }
        break;
    case 96:
        if (ov73_021D1648(param0, 0, 0) == 1) {
            switch (param0->unk_48) {
            case 1: {
                sub_02019EBC(param0->unk_18, 0);
            }
                param0->unk_0C = 97;
                break;
            case 2:
            case 0xfffffffe:
                Strbuf_Clear(param0->unk_74->unk_18);
                param0->unk_0C = 88;
                break;
            }
        }
        break;
    case 97:
        if (ov73_021D1334(param0, 1, 1) == 1) {
            param0->unk_0C = 98;
        }
        break;
    case 98:
        param0->unk_89 = 1;
        param0->unk_8A = 0;
        ov73_021D1A20(param0);
        param0->unk_0C = 99;
        break;
    case 99:
        if (ov73_021D1334(param0, 1, 0) == 1) {
            param0->unk_0C = 100;
        }
        break;
    case 100:
        if (ov73_021D14B8(param0, 30) == 1) {
            param0->unk_0C = 101;
        }
        break;
    case 101:
        if (ov73_021D1510(param0, 30, 1) == 1) {
            sub_0200564C(0, 50);
            param0->unk_0C = 102;
        }
        break;
    case 102:
        if (ov73_021D1334(param0, 1, 1) == 1) {
            {
                sub_02019EBC(param0->unk_18, 0);
            }
            param0->unk_0C = 103;
        }
        break;
    case 103:
        if (ov73_021D14B8(param0, 30) == 1) {
            param0->unk_0C = 104;
        }
        break;
    case 104:
        if (param0->unk_84 == 0) {
            param0->unk_89 = 2;
            param0->unk_8A = 0;
            ov73_021D1A20(param0);
        } else {
            param0->unk_89 = 6;
            param0->unk_8A = 0;
            ov73_021D1A20(param0);
        }

        param0->unk_0C = 105;
        break;
    case 105:
        if (ov73_021D1334(param0, 1, 0) == 1) {
            ov73_021D1F08(param0);
            param0->unk_0C = 106;
        }
        break;
    case 106:
        if (ov73_021D14B8(param0, 30) == 1) {
            param0->unk_0C = 107;
        }
        break;
    case 107:
        if (ov73_021D1F18(param0) == 1) {
            param0->unk_0C = 108;
        }
        break;
    case 108:
        param0->unk_14 = OverlayManager_New(&Unk_ov72_021D3820, NULL, param0->unk_00);
        param0->unk_0C = 109;
        break;
    case 109:
        v0 = 1;
        break;
    }

    return v0;
}
