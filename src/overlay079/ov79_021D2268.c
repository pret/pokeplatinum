#include "overlay079/ov79_021D2268.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/sprite_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_020158A8.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02098DE8.h"
#include "struct_defs/struct_0209903C.h"
#include "struct_defs/struct_0209916C.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay061/struct_ov61_0222C884.h"
#include "overlay079/ov79_021D3768.h"
#include "overlay079/struct_ov79_021D3820.h"
#include "overlay079/struct_ov79_021D38D0.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay104/struct_ov104_022412F4.h"
#include "overlay104/struct_ov104_0224133C.h"

#include "cell_actor.h"
#include "communication_system.h"
#include "core_sys.h"
#include "font.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "pokemon.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "unk_02005474.h"
#include "unk_0200762C.h"
#include "unk_0200A784.h"
#include "unk_0200C6E4.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "unk_0201DBEC.h"
#include "unk_020393C8.h"
#include "unk_0208C098.h"
#include "unk_020989DC.h"
#include "unk_02098FFC.h"

typedef struct {
    StringTemplate *unk_00;
    Strbuf *unk_04;
    Strbuf *unk_08[3];
} UnkStruct_ov79_021D2928_sub1;

typedef struct {
    VecFx32 unk_00;
    VecFx32 unk_0C;
    VecFx32 unk_18;
    VecFx32 unk_24;
    VecFx32 unk_30;
    VecFx32 unk_3C;
    fx32 unk_48;
    fx32 unk_4C;
    u16 unk_50;
    u16 unk_52;
    fx32 unk_54;
    int unk_58;
} UnkStruct_ov79_021D2C50;

typedef struct UnkStruct_ov79_021D29B4_t UnkStruct_ov79_021D29B4;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    fx32 unk_0C;
    fx32 unk_10;
    UnkStruct_ov79_021D29B4 *unk_14;
    SysTask *unk_18;
} UnkStruct_ov79_021D29E4;

struct UnkStruct_ov79_021D29B4_t {
    int unk_00;
    int unk_04;
    int unk_08;
    UnkStruct_ov79_021D2C50 unk_0C;
    UnkStruct_ov79_021D2C50 unk_68;
    CellActor *unk_C4;
    Sprite *unk_C8;
    UnkStruct_ov79_021D29E4 unk_CC[4];
};

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    u16 unk_0C;
    u16 unk_0E;
    UnkStruct_02098DE8 *unk_10;
    UnkStruct_020158A8 *unk_14;
    MessageLoader *unk_18;
    UnkStruct_ov79_021D2928_sub1 unk_1C;
    UnkStruct_ov79_021D38D0 unk_30;
    UnkStruct_ov79_021D3820 unk_40;
    UnkStruct_0209903C *unk_5C;
    UnkStruct_0209916C *unk_60[2];
    BGL *unk_68;
    Window unk_6C;
    SpriteRenderer *unk_7C;
    UnkStruct_ov79_021D29B4 unk_80;
} UnkStruct_ov79_021D2928;

int ov79_021D22AC(OverlayManager *param0, int *param1);
int ov79_021D22E4(OverlayManager *param0, int *param1);
int ov79_021D2460(OverlayManager *param0, int *param1);
static int ov79_021D2928(UnkStruct_ov79_021D2928 *param0);
static void ov79_021D252C(void *param0);
static int ov79_021D247C(UnkStruct_ov79_021D2928 *param0);
static int ov79_021D24D4(UnkStruct_ov79_021D2928 *param0);
static void ov79_021D257C(UnkStruct_ov79_021D2928 *param0);
static void ov79_021D260C(UnkStruct_ov79_021D2928 *param0);
static void ov79_021D2634(UnkStruct_ov79_021D2928 *param0);
static void ov79_021D270C(UnkStruct_ov79_021D2928 *param0);
static void ov79_021D2754(UnkStruct_ov79_021D2928 *param0);
static void ov79_021D2768(UnkStruct_ov79_021D2928 *param0);
static void ov79_021D27AC(UnkStruct_ov79_021D2928 *param0);
static void ov79_021D27D8(UnkStruct_ov79_021D2928 *param0);
static void ov79_021D2858(UnkStruct_ov79_021D2928 *param0);
static void ov79_021D2864(UnkStruct_ov79_021D2928 *param0);
static void ov79_021D2908(UnkStruct_ov79_021D2928 *param0);
static int ov79_021D2A04(UnkStruct_ov79_021D2928 *param0, UnkStruct_ov79_021D29B4 *param1);
static int ov79_021D2AE0(UnkStruct_ov79_021D2928 *param0, UnkStruct_ov79_021D29B4 *param1);
static int ov79_021D2AF0(UnkStruct_ov79_021D2928 *param0, UnkStruct_ov79_021D29B4 *param1);
static int ov79_021D2B3C(UnkStruct_ov79_021D2928 *param0, UnkStruct_ov79_021D29B4 *param1);
static int ov79_021D2B54(UnkStruct_ov79_021D2928 *param0, UnkStruct_ov79_021D29B4 *param1);
static int ov79_021D2B84(UnkStruct_ov79_021D2928 *param0, UnkStruct_ov79_021D29B4 *param1);
static int ov79_021D2B94(UnkStruct_ov79_021D2928 *param0);
static int ov79_021D2C08(UnkStruct_ov79_021D2928 *param0);
static void ov79_021D2C50(SysTask *param0, void *param1);
static void ov79_021D2CEC(SysTask *param0, void *param1);
static void ov79_021D2D7C(SysTask *param0, void *param1);
static void ov79_021D2E74(SysTask *param0, void *param1);
static void ov79_021D2F4C(SysTask *param0, void *param1);
static void ov79_021D2FE0(SysTask *param0, void *param1);
static void ov79_021D3094(SysTask *param0, void *param1);
static void ov79_021D312C(SysTask *param0, void *param1);
static void ov79_021D326C(SysTask *param0, void *param1);
static void ov79_021D3290(SysTask *param0, void *param1);
static void ov79_021D3324(SysTask *param0, void *param1);
static void ov79_021D33DC(SysTask *param0, void *param1);
static void ov79_021D34A8(SysTask *param0, void *param1);
static void ov79_021D35B0(SysTask *param0, void *param1);
static void ov79_021D35EC(SysTask *param0, void *param1);
static void ov79_021D3610(SysTask *param0, void *param1);
static void ov79_021D36CC(SysTask *param0, void *param1);
static void ov79_021D36F0(SysTask *param0, void *param1);

static VecFx32 ov79_021D2268(VecFx32 *param0, VecFx32 *param1, fx32 param2)
{
    VecFx32 v0 = { 0, 0, 0 };

    param0->x = FX_Div(param1->x, param2);
    param0->y = FX_Div(param1->y, param2);
    param0->z = FX_Div(param1->z, param2);

    return v0;
}

int ov79_021D22AC(OverlayManager *param0, int *param1)
{
    UnkStruct_02098DE8 *v0 = OverlayManager_Args(param0);
    UnkStruct_ov79_021D2928 *v1;

    Heap_Create(3, 46, 0x10000);

    v1 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov79_021D2928), 46);
    MI_CpuClear8(v1, sizeof(UnkStruct_ov79_021D2928));

    v1->unk_00 = 46;
    v1->unk_10 = v0;

    return 1;
}

int ov79_021D22E4(OverlayManager *param0, int *param1)
{
    UnkStruct_ov79_021D2928 *v0 = (UnkStruct_ov79_021D2928 *)OverlayManager_Data(param0);

    if ((*param1 >= 2) && (*param1 <= 5)) {
        ov79_021D3820(&v0->unk_40);
        sub_02099160(v0->unk_5C);
    }

    switch (*param1) {
    case 0:

        SetMainCallback(NULL, NULL);
        DisableHBlank();
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);

        sub_0200F344(0, 0x0);
        sub_0200F344(1, 0x0);
        sub_0200F32C(0);
        sub_0200F32C(1);
        break;
    case 1:
        if (!ov79_021D247C(v0)) {
            return 0;
        }

        SetMainCallback(ov79_021D252C, v0);
        break;
    case 2:
        if (v0->unk_04++ < 4) {
            return 0;
        }

        v0->unk_04 = 0;
        sub_0200F174(0, 1, 1, 0x0, 6, 1, v0->unk_00);
        break;
    case 3:
        if (!ScreenWipe_Done()) {
            return 0;
        }

        break;
    case 4:
        if (!ov79_021D2928(v0)) {
            return 0;
        }

        sub_0200F174(0, 0, 0, 0x0, 6, 1, v0->unk_00);
        break;
    case 5:
        if (!ScreenWipe_Done()) {
            return 0;
        }

        break;
    case 6:
        if (!ov79_021D24D4(v0)) {
            return 0;
        }

        break;
    case 7:
        sub_0200F344(0, 0x0);
        sub_0200F344(1, 0x0);
        SetMainCallback(NULL, NULL);
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);
        break;
    default:
        return 1;
    }

    *param1 += 1;
    return 0;
}

int ov79_021D2460(OverlayManager *param0, int *param1)
{
    UnkStruct_ov79_021D2928 *v0 = (UnkStruct_ov79_021D2928 *)OverlayManager_Data(param0);

    OverlayManager_FreeData(param0);

    Heap_Destroy(v0->unk_00);
    return 1;
}

static int ov79_021D247C(UnkStruct_ov79_021D2928 *param0)
{
    switch (param0->unk_04) {
    case 0:
        ov79_021D257C(param0);
        ov79_021D2634(param0);
        break;
    case 1:
        ov79_021D2768(param0);
        ov79_021D270C(param0);
        break;
    case 2:
        ov79_021D27D8(param0);
        ov79_021D3768(&param0->unk_40, &param0->unk_30, param0->unk_00);
        ov79_021D2864(param0);

        param0->unk_04 = 0;
        return 1;
    }

    param0->unk_04++;
    return 0;
}

static int ov79_021D24D4(UnkStruct_ov79_021D2928 *param0)
{
    switch (param0->unk_04) {
    case 0:
        ov79_021D2908(param0);
        ov79_021D385C(&param0->unk_40);
        ov79_021D2858(param0);
        break;
    case 1:
        ov79_021D2754(param0);
        ov79_021D27AC(param0);
        break;
    case 2:
        ov79_021D260C(param0);
        break;
    case 3:
        param0->unk_04 = 0;
        return 1;
    }

    param0->unk_04++;
    return 0;
}

static void ov79_021D252C(void *param0)
{
    UnkStruct_ov79_021D2928 *v0 = param0;

    sub_0201C2B8(v0->unk_68);
    sub_02008A94(v0->unk_40.unk_04);

    sub_0200C800();
    sub_0201DCAC();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov79_021D255C(void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_C,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_32_H,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_16_G,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_01_AB,
        GX_VRAM_TEXPLTT_0_F
    };

    GXLayers_SetBanks(&v0);
}

static void ov79_021D257C(UnkStruct_ov79_021D2928 *param0)
{
    int v0 = 0, v1;

    ov79_021D255C();

    param0->unk_68 = sub_02018340(param0->unk_00);

    {
        UnkStruct_ov84_0223BA5C v2 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_3D
        };

        sub_02018368(&v2);
    }

    {
        UnkStruct_ov97_0222DB78 v3[] = {
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0xf000,
                GX_BG_CHARBASE_0x10000,
                GX_BG_EXTPLTT_01,
                0,
                0,
                0,
                0,
            },
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0xe800,
                GX_BG_CHARBASE_0x00000,
                GX_BG_EXTPLTT_01,
                2,
                0,
                0,
                0,
            },
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x7800,
                GX_BG_CHARBASE_0x00000,
                GX_BG_EXTPLTT_01,
                0,
                0,
                0,
                0,
            },
        };
        u8 v4[] = { 1, 2, 4 };

        for (v0 = 0; v0 < 3; v0++) {
            v1 = v4[v0];
            sub_020183C4(param0->unk_68, v1, &(v3[v0]), 0);
            sub_02019EBC(param0->unk_68, v1);
            sub_02019690(v1, 32, 0, param0->unk_00);
        }
    }
}

static void ov79_021D260C(UnkStruct_ov79_021D2928 *param0)
{
    int v0;

    for (v0 = 1; v0 < 3; v0++) {
        sub_02019044(param0->unk_68, v0);
    }

    sub_02019044(param0->unk_68, 4);
    Heap_FreeToHeap(param0->unk_68);
}

static void ov79_021D2634(UnkStruct_ov79_021D2928 *param0)
{
    NARC *v0;

    v0 = NARC_ctor(NARC_INDEX_GRAPHIC__PORUDEMO, param0->unk_00);

    sub_0208C210(param0->unk_68, param0->unk_00, v0, 87, 2, 2, 0, 0, 0);
    sub_0208C210(param0->unk_68, param0->unk_00, v0, 87, 3, 4, 0, 0, 0);

    sub_0208C210(param0->unk_68, param0->unk_00, v0, 87, 0, 2, 2, 0x20 * 0x1, 0);
    sub_0208C210(param0->unk_68, param0->unk_00, v0, 87, 1, 4, 2, 0x20 * 0x5, 0);

    sub_0208C210(param0->unk_68, param0->unk_00, v0, 87, 4, 2, 1, 0, 0);
    sub_0208C210(param0->unk_68, param0->unk_00, v0, 87, 5, 4, 1, 0, 0);

    NARC_dtor(v0);

    sub_0201C3C0(param0->unk_68, 2);
    sub_0201C3C0(param0->unk_68, 4);
}

static void ov79_021D270C(UnkStruct_ov79_021D2928 *param0)
{
    static const UnkStruct_ov61_0222C884 v0 = {
        1, 2, 19, 27, 4, 15, (1 + (18 + 12))
    };

    sub_0201A8D4(param0->unk_68, &(param0->unk_6C), &v0);
    BGL_FillWindow(&param0->unk_6C, ((0 << 4) | 0));
    sub_0200DD0C(param0->unk_68, 1, 1, 14, param0->unk_10->unk_0B, param0->unk_00);
    Font_LoadScreenIndicatorsPalette(0, 15 * 32, param0->unk_00);
}

static void ov79_021D2754(UnkStruct_ov79_021D2928 *param0)
{
    sub_0201ACF4(&param0->unk_6C);
    BGL_DeleteWindow(&param0->unk_6C);
}

static void ov79_021D2768(UnkStruct_ov79_021D2928 *param0)
{
    int v0 = 0;

    param0->unk_18 = MessageLoader_Init(0, 26, 462, param0->unk_00);
    param0->unk_1C.unk_00 = StringTemplate_New(1, 64, param0->unk_00);
    param0->unk_1C.unk_04 = Strbuf_Init(64, param0->unk_00);

    for (v0 = 0; v0 < 3; v0++) {
        param0->unk_1C.unk_08[v0] = MessageLoader_GetNewStrbuf(param0->unk_18, v0);
    }
}

static void ov79_021D27AC(UnkStruct_ov79_021D2928 *param0)
{
    int v0 = 0;

    for (v0 = 0; v0 < 3; v0++) {
        Strbuf_Free(param0->unk_1C.unk_08[v0]);
    }

    Strbuf_Free(param0->unk_1C.unk_04);
    StringTemplate_Free(param0->unk_1C.unk_00);
    MessageLoader_Free(param0->unk_18);
}

static void ov79_021D27D8(UnkStruct_ov79_021D2928 *param0)
{
    param0->unk_30.unk_00 = param0->unk_10->unk_00;
    param0->unk_30.unk_04 = Pokemon_GetValue(param0->unk_10->unk_00, MON_DATA_SPECIES, NULL);
    param0->unk_30.unk_07 = Pokemon_GetGender(param0->unk_10->unk_00);
    param0->unk_30.unk_06 = Pokemon_GetNature(param0->unk_10->unk_00);
    param0->unk_30.unk_08 = PokemonPersonalData_GetFormValue(param0->unk_30.unk_04, Pokemon_GetValue(param0->unk_10->unk_00, MON_DATA_FORM, NULL), 28) ^ 1;
    param0->unk_30.unk_0C = Strbuf_Init(12, param0->unk_00);

    Pokemon_GetValue(param0->unk_10->unk_00, MON_DATA_NICKNAME_STRBUF, param0->unk_30.unk_0C);

    param0->unk_30.unk_09 = sub_02098EAC(param0->unk_10->unk_04, param0->unk_30.unk_06);
}

static void ov79_021D2858(UnkStruct_ov79_021D2928 *param0)
{
    Strbuf_Free(param0->unk_30.unk_0C);
}

static void ov79_021D2864(UnkStruct_ov79_021D2928 *param0)
{
    sub_0201DBEC(32, param0->unk_00);

    param0->unk_7C = sub_0200C6E4(param0->unk_00);

    {
        UnkStruct_ov104_0224133C v0 = {
            0,
            128,
            0,
            31,
            0,
            1,
            0,
            31,
        };
        UnkStruct_ov104_022412F4 v1 = {
            3,
            0,
            0,
            GX_OBJVRAMMODE_CHAR_1D_32K,
            GX_OBJVRAMMODE_CHAR_1D_32K,
        };

        sub_0200C73C(param0->unk_7C, &v0, &v1, 32);
        sub_0200A93C(param0->unk_00);
    }

    param0->unk_5C = sub_02098FFC(param0->unk_00, 2, 2, (NNS_G2D_VRAM_TYPE_2DMAIN), 0);
    param0->unk_60[0] = sub_0209916C(param0->unk_5C, param0->unk_10->unk_08, 100, 90, 0, 1, 0, 0);

    SpriteActor_EnableObject(param0->unk_60[0]->unk_04, 0);

    if (CommSys_IsInitialized()) {
        sub_02039734();
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov79_021D2908(UnkStruct_ov79_021D2928 *param0)
{
    sub_02099370(param0->unk_5C, param0->unk_60[0]);
    sub_0209903C(param0->unk_5C);
    sub_0200C8D4(param0->unk_7C);
    sub_0201DC3C();
}

static int ov79_021D2928(UnkStruct_ov79_021D2928 *param0)
{
    switch (param0->unk_04) {
    case 0:
        param0->unk_04 = ov79_021D2A04(param0, &param0->unk_80);
        break;
    case 1:
        param0->unk_04 = ov79_021D2AE0(param0, &param0->unk_80);
        break;
    case 2:
        param0->unk_04 = ov79_021D2AF0(param0, &param0->unk_80);
        break;
    case 3:
        param0->unk_04 = ov79_021D2B3C(param0, &param0->unk_80);
        break;
    case 4:
        param0->unk_04 = ov79_021D2B54(param0, &param0->unk_80);
        break;
    case 5:
        param0->unk_04 = ov79_021D2B84(param0, &param0->unk_80);
        break;
    case 6:
        param0->unk_04 = ov79_021D2B94(param0);
        break;
    case 7:
        param0->unk_04 = ov79_021D2C08(param0);
        break;
    case 8:
    default:
        param0->unk_04 = 0;
        return 1;
    }

    return 0;
}

static int ov79_021D29B4(UnkStruct_ov79_021D29B4 *param0, int param1, SysTaskFunc param2)
{
    UnkStruct_ov79_021D29E4 *v0 = &(param0->unk_CC[param1]);

    MI_CpuClear8(v0, sizeof(UnkStruct_ov79_021D29E4));

    v0->unk_14 = param0;
    v0->unk_18 = SysTask_Start(param2, v0, 0);

    param0->unk_04++;
    return param0->unk_04;
}

static int ov79_021D29E4(UnkStruct_ov79_021D29E4 *param0)
{
    SysTask_Done(param0->unk_18);
    param0->unk_14->unk_04--;

    MI_CpuClear8(param0, sizeof(UnkStruct_ov79_021D29E4));
    return 0;
}

static int ov79_021D2A04(UnkStruct_ov79_021D2928 *param0, UnkStruct_ov79_021D29B4 *param1)
{
    VecFx32 v0;

    MI_CpuClear8(param1, sizeof(UnkStruct_ov79_021D29B4));

    param1->unk_C4 = param0->unk_60[0]->unk_04->unk_00;
    param1->unk_C8 = param0->unk_40.unk_18;
    param1->unk_08 = param0->unk_30.unk_09;
    param1->unk_00 = 24;
    param1->unk_0C.unk_00.x = FX32_CONST(128);
    param1->unk_0C.unk_00.y = FX32_CONST(192 + 32);
    param1->unk_0C.unk_0C.x = FX32_CONST(128);
    param1->unk_0C.unk_0C.y = FX32_CONST(96);
    param1->unk_0C.unk_24.x = 0x1000;
    param1->unk_0C.unk_24.y = 0x1000;
    param1->unk_0C.unk_30.x = 0x800;
    param1->unk_0C.unk_30.y = 0x800;
    param1->unk_0C.unk_58 = 24;
    param1->unk_0C.unk_54 = 0;

    CellActor_SetPosition(param1->unk_C4, &param1->unk_0C.unk_00);
    VEC_Subtract(&param1->unk_0C.unk_00, &param1->unk_0C.unk_0C, &v0);
    ov79_021D2268(&param1->unk_0C.unk_3C, &v0, FX32_CONST(24));

    CellActor_SetAffineOverwriteMode(param1->unk_C4, 1);
    CellActor_SetAffineScale(param1->unk_C4, &param1->unk_0C.unk_24);

    ov79_021D29B4(param1, 0, ov79_021D2C50);
    ov79_021D29B4(param1, 1, ov79_021D2D7C);
    ov79_021D29B4(param1, 2, ov79_021D2F4C);
    ov79_021D29B4(param1, 3, ov79_021D3094);

    return 1;
}

static int ov79_021D2AE0(UnkStruct_ov79_021D2928 *param0, UnkStruct_ov79_021D29B4 *param1)
{
    int v0, v1 = 0;

    if (param1->unk_04) {
        return 1;
    }

    return 2;
}

static int ov79_021D2AF0(UnkStruct_ov79_021D2928 *param0, UnkStruct_ov79_021D29B4 *param1)
{
    u32 v0;

    v0 = Pokemon_GetValue(param0->unk_30.unk_00, MON_DATA_FORM, NULL);

    switch (param0->unk_30.unk_09) {
    case 1:
        Sound_PlayPokemonCry(11, param0->unk_30.unk_04, 0, 127, param0->unk_00, v0);
        break;
    default:
        Sound_PlayPokemonCry(0, param0->unk_30.unk_04, 0, 127, param0->unk_00, v0);
        break;
    }

    return 3;
}

static int ov79_021D2B3C(UnkStruct_ov79_021D2928 *param0, UnkStruct_ov79_021D29B4 *param1)
{
    if (sub_0200598C()) {
        return 3;
    }

    sub_0200592C(0);
    return 4;
}

static int ov79_021D2B54(UnkStruct_ov79_021D2928 *param0, UnkStruct_ov79_021D29B4 *param1)
{
    MI_CpuClear8(&param1->unk_68, sizeof(UnkStruct_ov79_021D2C50));
    ov79_021D29B4(param1, 0, ov79_021D3290);
    ov79_021D29B4(param1, 1, ov79_021D33DC);

    return 5;
}

static int ov79_021D2B84(UnkStruct_ov79_021D2928 *param0, UnkStruct_ov79_021D29B4 *param1)
{
    if (param1->unk_04) {
        return 5;
    }

    return 6;
}

static int ov79_021D2B94(UnkStruct_ov79_021D2928 *param0)
{
    sub_0200E060(&param0->unk_6C, 1, 1, 14);
    BGL_FillWindow(&param0->unk_6C, ((15 << 4) | 15));
    Strbuf_Clear(param0->unk_1C.unk_04);
    StringTemplate_SetStrbuf(param0->unk_1C.unk_00, 0, param0->unk_30.unk_0C, 2, 1, GAME_LANGUAGE);
    StringTemplate_Format(param0->unk_1C.unk_00, param0->unk_1C.unk_04, param0->unk_1C.unk_08[param0->unk_30.unk_09]);

    param0->unk_0C = Text_AddPrinterWithParamsAndColor(&param0->unk_6C, FONT_MESSAGE, param0->unk_1C.unk_04, 0, 0, param0->unk_10->unk_0A, TEXT_COLOR(1, 2, 15), NULL);
    param0->unk_0E = 0;

    return 7;
}

static int ov79_021D2C08(UnkStruct_ov79_021D2928 *param0)
{
    if (Text_IsPrinterActive(param0->unk_0C)) {
        return 7;
    }

    if (((gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) == 0) && (param0->unk_0E++ < 90)) {
        return 7;
    }

    sub_0200E084(&param0->unk_6C, 1);
    sub_0201ACF4(&param0->unk_6C);

    return 8;
}

static void ov79_021D2C50(SysTask *param0, void *param1)
{
    UnkStruct_ov79_021D29E4 *v0 = (UnkStruct_ov79_021D29E4 *)param1;
    UnkStruct_ov79_021D29B4 *v1 = v0->unk_14;
    UnkStruct_ov79_021D2C50 *v2 = &v1->unk_0C;
    VecFx32 v3;

    v0->unk_04 = 24;

    v2->unk_24.x = 0x1000;
    v2->unk_24.y = 0x1000;
    v2->unk_30.x = 0x800;
    v2->unk_30.y = 0x800;

    VEC_Subtract(&v2->unk_24, &v2->unk_30, &v3);

    ov79_021D2268(&v2->unk_3C, &v3, FX32_CONST(v0->unk_04));
    CellActor_SetDrawFlag(v1->unk_C4, 1);
    CellActor_SetAffineOverwriteMode(v1->unk_C4, 1);
    CellActor_SetAffineScale(v1->unk_C4, &v2->unk_24);
    SysTask_SetCallback(param0, ov79_021D2CEC);
}

static void ov79_021D2CEC(SysTask *param0, void *param1)
{
    UnkStruct_ov79_021D29E4 *v0 = (UnkStruct_ov79_021D29E4 *)param1;
    UnkStruct_ov79_021D29B4 *v1 = v0->unk_14;
    UnkStruct_ov79_021D2C50 *v2 = &v1->unk_0C;
    VecFx32 v3 = { 0, 0, 0 };

    v3.x = v2->unk_24.x - FX_Mul(v2->unk_3C.x, v0->unk_0C);
    v3.y = v2->unk_24.y - FX_Mul(v2->unk_3C.y, v0->unk_0C);

    CellActor_SetAffineScale(v1->unk_C4, &v3);

    v0->unk_0C += FX32_ONE;
    v0->unk_04--;

    if (v0->unk_04 == 0) {
        CellActor_SetDrawFlag(v1->unk_C4, 0);
        ov79_021D29E4(v0);
    }
}

static void ov79_021D2D7C(SysTask *param0, void *param1)
{
    UnkStruct_ov79_021D29E4 *v0 = (UnkStruct_ov79_021D29E4 *)param1;
    UnkStruct_ov79_021D29B4 *v1 = v0->unk_14;
    UnkStruct_ov79_021D2C50 *v2 = &v1->unk_0C;
    VecFx32 v3 = { 0, 0, 0 };

    v0->unk_04 = 24;

    v2->unk_00.x = FX32_CONST(128);
    v2->unk_00.y = FX32_CONST(192 + 32);
    v2->unk_0C.x = FX32_CONST(128);
    v2->unk_0C.y = FX32_CONST(96);

    VEC_Subtract(&v2->unk_0C, &v2->unk_00, &v3);
    ov79_021D2268(&v2->unk_18, &v3, FX32_CONST(v0->unk_04));

    v2->unk_48 = FX_Div(FX32_CONST(180), FX32_CONST(v0->unk_04));
    v2->unk_4C = FX_Div(FX32_CONST(1), FX32_CONST(v0->unk_04));

    CellActor_SetPosition(v1->unk_C4, &v2->unk_00);
    SysTask_SetCallback(param0, ov79_021D2E74);
}

static void ov79_021D2E74(SysTask *param0, void *param1)
{
    UnkStruct_ov79_021D29E4 *v0 = (UnkStruct_ov79_021D29E4 *)param1;
    UnkStruct_ov79_021D29B4 *v1 = v0->unk_14;
    UnkStruct_ov79_021D2C50 *v2 = &v1->unk_0C;
    VecFx32 v3;
    fx32 v4, v5;

    v3.x = v2->unk_00.x + FX_Mul(v2->unk_18.x, v0->unk_0C);
    v3.y = v2->unk_00.y + FX_Mul(v2->unk_18.y, v0->unk_0C);

    v4 = FX_Mul(v2->unk_48, v0->unk_0C);
    v4 = FX_Mul(sub_0201D250(v4 >> 12), FX32_CONST(-64));
    v5 = FX32_ONE;
    v3.y += FX_Mul(v4, v5);

    CellActor_SetPosition(v1->unk_C4, &v3);

    v0->unk_0C += FX32_ONE;
    v0->unk_04--;

    if (v0->unk_04) {
        return;
    }

    ov79_021D29E4(v0);
}

static void ov79_021D2F4C(SysTask *param0, void *param1)
{
    UnkStruct_ov79_021D29E4 *v0 = (UnkStruct_ov79_021D29E4 *)param1;
    UnkStruct_ov79_021D29B4 *v1 = v0->unk_14;
    UnkStruct_ov79_021D2C50 *v2 = &v1->unk_68;
    VecFx32 v3;

    v0->unk_04 = 24;

    v2->unk_24.x = 0x1000;
    v2->unk_24.y = 0x1000;
    v2->unk_30.x = 0x1800;
    v2->unk_30.y = 0x1800;

    VEC_Subtract(&v2->unk_30, &v2->unk_24, &v3);
    ov79_021D2268(&v2->unk_3C, &v3, FX32_CONST(v0->unk_04));

    sub_02007DEC(v1->unk_C8, 12, 0x1000 >> 4);
    sub_02007DEC(v1->unk_C8, 13, 0x1000 >> 4);
    SysTask_SetCallback(param0, ov79_021D2FE0);
}

static void ov79_021D2FE0(SysTask *param0, void *param1)
{
    UnkStruct_ov79_021D29E4 *v0 = (UnkStruct_ov79_021D29E4 *)param1;
    UnkStruct_ov79_021D29B4 *v1 = v0->unk_14;
    UnkStruct_ov79_021D2C50 *v2 = &v1->unk_68;
    VecFx32 v3;

    v3.x = v2->unk_24.x + FX_Mul(v2->unk_3C.x, v0->unk_0C);
    v3.y = v2->unk_24.y + FX_Mul(v2->unk_3C.y, v0->unk_0C);

    sub_02007DEC(v1->unk_C8, 12, v3.x >> 4);
    sub_02007DEC(v1->unk_C8, 13, v3.y >> 4);

    v0->unk_0C += FX32_ONE;
    v0->unk_04--;

    if (v0->unk_04 == 0) {
        sub_02007DEC(v1->unk_C8, 0, 128);
        sub_02007DEC(v1->unk_C8, 1, 96);
        ov79_021D29E4(v0);
    }
}

static void ov79_021D3094(SysTask *param0, void *param1)
{
    UnkStruct_ov79_021D29E4 *v0 = (UnkStruct_ov79_021D29E4 *)param1;
    UnkStruct_ov79_021D29B4 *v1 = v0->unk_14;
    UnkStruct_ov79_021D2C50 *v2 = &v1->unk_68;
    VecFx32 v3;

    v0->unk_04 = 24;

    v2->unk_00.x = FX32_CONST(128);
    v2->unk_00.y = FX32_CONST(96);
    v2->unk_0C.x = FX32_CONST(128);
    v2->unk_0C.y = FX32_CONST(112);

    VEC_Subtract(&v2->unk_0C, &v2->unk_00, &v3);

    ov79_021D2268(&v2->unk_18, &v3, FX32_CONST(v0->unk_04));
    sub_02007DEC(v1->unk_C8, 0, v2->unk_00.x >> 12);
    sub_02007DEC(v1->unk_C8, 1, v2->unk_00.y >> 12);
    SysTask_SetCallback(param0, ov79_021D312C);
}

static void ov79_021D312C(SysTask *param0, void *param1)
{
    UnkStruct_ov79_021D29E4 *v0 = (UnkStruct_ov79_021D29E4 *)param1;
    UnkStruct_ov79_021D29B4 *v1 = v0->unk_14;
    UnkStruct_ov79_021D2C50 *v2 = &v1->unk_68;
    VecFx32 v3;
    fx32 v4;
    int v5;

    v3.x = v2->unk_00.x + FX_Mul(v2->unk_18.x, v0->unk_0C);
    v3.y = v2->unk_00.y + FX_Mul(v2->unk_18.y, v0->unk_0C);

    sub_02007DEC(v1->unk_C8, 0, v3.x >> 12);
    sub_02007DEC(v1->unk_C8, 1, v3.y >> 12);

    v5 = v2->unk_50 - 4;
    v5 = -(v5 * v5) + 16;
    v4 = FX32_CONST(-v5);
    v4 = FX_Mul(v4, FX32_CONST(1.4));

    sub_02007DEC(v1->unk_C8, 4, v4 >> 12);

    v2->unk_50++;

    if (v2->unk_50 > 8) {
        v2->unk_50 = 0;
    }

    v0->unk_0C += FX32_ONE;

    if (v0->unk_04--) {
        return;
    }

    sub_02007DEC(v1->unk_C8, 4, 0);
    v2->unk_50 = 0;

    SysTask_SetCallback(param0, ov79_021D326C);
}

static void ov79_021D326C(SysTask *param0, void *param1)
{
    UnkStruct_ov79_021D29E4 *v0 = (UnkStruct_ov79_021D29E4 *)param1;
    UnkStruct_ov79_021D29B4 *v1 = v0->unk_14;
    UnkStruct_ov79_021D2C50 *v2 = &v1->unk_68;

    if (v2->unk_50++ < 4) {
        return;
    }

    ov79_021D29E4(v0);
}

static void ov79_021D3290(SysTask *param0, void *param1)
{
    UnkStruct_ov79_021D29E4 *v0 = (UnkStruct_ov79_021D29E4 *)param1;
    UnkStruct_ov79_021D29B4 *v1 = v0->unk_14;
    UnkStruct_ov79_021D2C50 *v2 = &v1->unk_68;
    VecFx32 v3;

    v0->unk_04 = 24 / 3;

    v2->unk_24.x = 0x1800;
    v2->unk_24.y = 0x1800;
    v2->unk_30.x = 0x1000;
    v2->unk_30.y = 0x1000;

    VEC_Subtract(&v2->unk_30, &v2->unk_24, &v3);
    ov79_021D2268(&v2->unk_3C, &v3, FX32_CONST(v0->unk_04));

    sub_02007DEC(v1->unk_C8, 12, 0x1800 >> 4);
    sub_02007DEC(v1->unk_C8, 13, 0x1800 >> 4);
    SysTask_SetCallback(param0, ov79_021D3324);
}

static void ov79_021D3324(SysTask *param0, void *param1)
{
    UnkStruct_ov79_021D29E4 *v0 = (UnkStruct_ov79_021D29E4 *)param1;
    UnkStruct_ov79_021D29B4 *v1 = v0->unk_14;
    UnkStruct_ov79_021D2C50 *v2 = &v1->unk_68;
    VecFx32 v3;

    v3.x = v2->unk_24.x + FX_Mul(v2->unk_3C.x, v0->unk_0C);
    v3.y = v2->unk_24.y + FX_Mul(v2->unk_3C.y, v0->unk_0C);

    sub_02007DEC(v1->unk_C8, 12, v3.x >> 4);
    sub_02007DEC(v1->unk_C8, 13, v3.y >> 4);

    v0->unk_0C += FX32_ONE;
    v0->unk_04--;

    if (v0->unk_04) {
        return;
    }

    sub_02007DEC(v1->unk_C8, 12, 0x100);
    sub_02007DEC(v1->unk_C8, 13, 0x100);
    ov79_021D29E4(v0);
}

static void ov79_021D33DC(SysTask *param0, void *param1)
{
    UnkStruct_ov79_021D29E4 *v0 = (UnkStruct_ov79_021D29E4 *)param1;
    UnkStruct_ov79_021D29B4 *v1 = v0->unk_14;
    UnkStruct_ov79_021D2C50 *v2 = &v1->unk_68;
    VecFx32 v3;

    v0->unk_04 = 24 / 3;

    v2->unk_00.x = FX32_CONST(128);
    v2->unk_00.y = FX32_CONST(112);
    v2->unk_0C.x = FX32_CONST(128);
    v2->unk_0C.y = FX32_CONST(96);

    VEC_Subtract(&v2->unk_0C, &v2->unk_00, &v3);
    ov79_021D2268(&v2->unk_18, &v3, FX32_CONST(v0->unk_04));

    v2->unk_48 = FX_Div(FX32_CONST(180), FX32_CONST(v0->unk_04));

    sub_02007DEC(v1->unk_C8, 0, v2->unk_00.x >> 12);
    sub_02007DEC(v1->unk_C8, 1, v2->unk_00.y >> 12);
    SysTask_SetCallback(param0, ov79_021D34A8);
}

static void ov79_021D34A8(SysTask *param0, void *param1)
{
    UnkStruct_ov79_021D29E4 *v0 = (UnkStruct_ov79_021D29E4 *)param1;
    UnkStruct_ov79_021D29B4 *v1 = v0->unk_14;
    UnkStruct_ov79_021D2C50 *v2 = &v1->unk_68;
    VecFx32 v3;
    fx32 v4;
    int v5;

    v3.x = v2->unk_00.x + FX_Mul(v2->unk_18.x, v0->unk_0C);
    v3.y = v2->unk_00.y + FX_Mul(v2->unk_18.y, v0->unk_0C);

    sub_02007DEC(v1->unk_C8, 0, v3.x >> 12);
    sub_02007DEC(v1->unk_C8, 1, v3.y >> 12);

    v4 = FX_Mul(v2->unk_48, v0->unk_0C);
    v4 = FX_Mul(sub_0201D250(v4 >> 12), FX32_CONST(-6));

    sub_02007DEC(v1->unk_C8, 4, v4 >> 12);

    v0->unk_0C += FX32_ONE;
    v0->unk_04--;

    if (v0->unk_04) {
        return;
    }

    sub_02007DEC(v1->unk_C8, 4, 0);
    SysTask_SetCallback(param0, ov79_021D35B0);
}

static void ov79_021D35B0(SysTask *param0, void *param1)
{
    UnkStruct_ov79_021D29E4 *v0 = (UnkStruct_ov79_021D29E4 *)param1;

    if (v0->unk_04++ < 4) {
        return;
    }

    switch (v0->unk_14->unk_08) {
    case 0:
        SysTask_SetCallback(param0, ov79_021D35EC);
        break;
    case 1:
        SysTask_SetCallback(param0, ov79_021D36CC);
        break;
    default:
        ov79_021D29E4(v0);
        break;
    }
}

static void ov79_021D35EC(SysTask *param0, void *param1)
{
    UnkStruct_ov79_021D29E4 *v0 = (UnkStruct_ov79_021D29E4 *)param1;
    UnkStruct_ov79_021D29B4 *v1 = v0->unk_14;
    UnkStruct_ov79_021D2C50 *v2 = &v1->unk_68;
    VecFx32 v3;

    MI_CpuClear8(v2, sizeof(UnkStruct_ov79_021D2C50));
    v0->unk_04 = 3;
    SysTask_SetCallback(param0, ov79_021D3610);
}

static void ov79_021D3610(SysTask *param0, void *param1)
{
    UnkStruct_ov79_021D29E4 *v0 = (UnkStruct_ov79_021D29E4 *)param1;
    UnkStruct_ov79_021D29B4 *v1 = v0->unk_14;
    UnkStruct_ov79_021D2C50 *v2 = &v1->unk_68;
    VecFx32 v3;
    fx32 v4, v5;
    int v6;

    v6 = v2->unk_50 - 4;
    v6 = -(v6 * v6) + 16;
    v4 = FX32_CONST(-v6);
    v4 = FX_Mul(v4, FX32_CONST(1.4));

    sub_02007DEC(v1->unk_C8, 4, v4 >> 12);

    v2->unk_52 = 0;
    v2->unk_50++;

    if (v2->unk_50 > 8) {
        v2->unk_50 = 0;
        v0->unk_04--;
    }

    if (v0->unk_04 == 0) {
        sub_02007DEC(v1->unk_C8, 4, 0);
        ov79_021D29E4(v0);
    }
}

static void ov79_021D36CC(SysTask *param0, void *param1)
{
    UnkStruct_ov79_021D29E4 *v0 = (UnkStruct_ov79_021D29E4 *)param1;
    UnkStruct_ov79_021D29B4 *v1 = v0->unk_14;
    UnkStruct_ov79_021D2C50 *v2 = &v1->unk_68;
    VecFx32 v3;

    MI_CpuClear8(v2, sizeof(UnkStruct_ov79_021D2C50));
    v0->unk_04 = 32;
    SysTask_SetCallback(param0, ov79_021D36F0);
}

static void ov79_021D36F0(SysTask *param0, void *param1)
{
    UnkStruct_ov79_021D29E4 *v0 = (UnkStruct_ov79_021D29E4 *)param1;
    UnkStruct_ov79_021D29B4 *v1 = v0->unk_14;
    UnkStruct_ov79_021D2C50 *v2 = &v1->unk_68;
    VecFx32 v3;
    fx32 v4, v5;

    v4 = sub_0201D250(v2->unk_50);
    v5 = FX_Mul(v4, FX32_CONST(2));

    if (v2->unk_50 > 359) {
        v2->unk_50 = 0;
    } else {
        v2->unk_50 += 90;
    }

    sub_02007DEC(v1->unk_C8, 3, v5 >> 12);

    v0->unk_04--;

    if (v0->unk_04 == 0) {
        sub_02007DEC(v1->unk_C8, 3, 0);
        ov79_021D29E4(v0);
    }
}
