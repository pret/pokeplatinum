#include "overlay119/ov119_021D0D80.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02014014_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/archived_sprite.h"
#include "struct_defs/sprite_animation_frame.h"
#include "struct_defs/sprite_template.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0207C690.h"
#include "struct_defs/struct_02081CF4.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay104/struct_ov104_022412F4.h"
#include "overlay104/struct_ov104_02241308.h"
#include "overlay104/struct_ov104_0224133C.h"
#include "overlay119/struct_ov119_021D0FD0.h"
#include "overlay119/struct_ov119_021D14DC.h"
#include "overlay119/struct_ov119_021D16C0.h"
#include "overlay119/struct_ov119_021D17B8.h"
#include "overlay119/struct_ov119_021D1930.h"

#include "camera.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "pokemon.h"
#include "spl.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "unk_02001AF4.h"
#include "unk_02002F38.h"
#include "unk_02006E3C.h"
#include "unk_0200762C.h"
#include "unk_0200C6E4.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02013A04.h"
#include "unk_02014000.h"
#include "unk_02018340.h"
#include "unk_0201DBEC.h"
#include "unk_0202419C.h"
#include "unk_02024220.h"

void ov119_021D0D80(void);
void ov119_021D0DA8(void);
GenericPointerData *ov119_021D0DD4(void);
void ov119_021D0DF4(void);
void ov119_021D0E78(void);
static u32 ov119_021D13B4(u32 param0, BOOL param1);
static u32 ov119_021D13D0(u32 param0, BOOL param1);
static UnkStruct_02014014 *ov119_021D13EC(int param0);
static UnkStruct_02014014 *ov119_021D1434(int param0, int param1, int param2);
static void ov119_021D1474(SPLEmitter *param0);

void ov119_021D0D80(void)
{
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
}

void ov119_021D0DA8(void)
{
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, 11, 7);
    G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, 7, 8);
}

GenericPointerData *ov119_021D0DD4(void)
{
    GenericPointerData *v0;

    v0 = sub_02024220(71, 0, 2, 0, 2, ov119_021D0DF4);
    return v0;
}

void ov119_021D0DF4(void)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

    G2_SetBG0Priority(1);
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(1);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_EdgeMarking(0);
    G3X_SetFog(0, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
    G3X_SetClearColor(GX_RGB(0, 0, 0), 0, 0x7fff, 63, 0);
    G3_ViewPort(0, 0, 255, 191);
}

void ov119_021D0E78(void)
{
    NNSGfdTexKey v0;
    NNSGfdPlttKey v1;
    u32 v2, v3;

    v0 = NNS_GfdAllocTexVram(0x2000 * 4, 0, 0);
    v1 = NNS_GfdAllocPlttVram(0x20 * 4, 0, 0);

    GF_ASSERT(v0 != NNS_GFD_ALLOC_ERROR_TEXKEY);
    GF_ASSERT(v1 != NNS_GFD_ALLOC_ERROR_PLTTKEY);

    v2 = NNS_GfdGetTexKeyAddr(v0);
    v3 = NNS_GfdGetPlttKeyAddr(v1);

    sub_02014000();
}

void ov119_021D0EB8(BGL *param0)
{
    GXLayers_DisableEngineALayers();

    {
        UnkStruct_02099F80 v0 = {
            GX_VRAM_BG_128_A,
            GX_VRAM_BGEXTPLTT_NONE,
            GX_VRAM_SUB_BG_32_H,
            GX_VRAM_SUB_BGEXTPLTT_NONE,
            GX_VRAM_OBJ_64_E,
            GX_VRAM_OBJEXTPLTT_NONE,
            GX_VRAM_SUB_OBJ_16_I,
            GX_VRAM_SUB_OBJEXTPLTT_NONE,
            GX_VRAM_TEX_01_BC,
            GX_VRAM_TEXPLTT_01_FG
        };

        GXLayers_SetBanks(&v0);

        MI_CpuClear32((void *)HW_BG_VRAM, HW_BG_VRAM_SIZE);
        MI_CpuClear32((void *)HW_DB_BG_VRAM, HW_DB_BG_VRAM_SIZE);
        MI_CpuClear32((void *)HW_OBJ_VRAM, HW_OBJ_VRAM_SIZE);
        MI_CpuClear32((void *)HW_DB_OBJ_VRAM, HW_DB_OBJ_VRAM_SIZE);
    }

    {
        UnkStruct_ov84_0223BA5C v1 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_3D
        };

        sub_02018368(&v1);
    }

    {
        UnkStruct_ov97_0222DB78 v2[] = {
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x0000,
                GX_BG_CHARBASE_0x04000,
                GX_BG_EXTPLTT_01,
                0,
                0,
                0,
                0,
            },
            {
                0,
                0,
                0x2000,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x1000,
                GX_BG_CHARBASE_0x0c000,
                GX_BG_EXTPLTT_01,
                1,
                0,
                0,
                0,
            },
            {
                0,
                0,
                0x1000,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x3000,
                GX_BG_CHARBASE_0x10000,
                GX_BG_EXTPLTT_01,
                2,
                0,
                0,
                0,
            },
        };

        sub_020183C4(param0, 1, &v2[0], 0);
        sub_020183C4(param0, 2, &v2[1], 0);
        sub_020183C4(param0, 3, &v2[2], 0);
        sub_02019EBC(param0, 1);
        sub_02019EBC(param0, 2);
        sub_02019EBC(param0, 3);

        G2_SetBG0Priority(1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    }

    GXLayers_TurnBothDispOn();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

    {
        UnkStruct_ov97_0222DB78 v3[] = {
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x6800,
                GX_BG_CHARBASE_0x00000,
                GX_BG_EXTPLTT_01,
                0,
                0,
                0,
                0,
            },
        };

        sub_020183C4(param0, 4, &v3[0], 0);
        sub_02019EBC(param0, 4);
    }
}

void ov119_021D0FD0(void *param0)
{
    UnkStruct_ov119_021D0FD0 *v0 = (UnkStruct_ov119_021D0FD0 *)param0;

    sub_02008A94(v0->unk_04.unk_38);
    sub_0201DCAC();
    sub_0200C800();
    sub_02003694(v0->unk_04.unk_04);
    sub_0201C2B8(v0->unk_04.unk_00);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

void ov119_021D1004(void)
{
    int v0;
    const MtxFx43 *v1;

    sub_020241B4();

    v0 = sub_0201469C();

    if (v0 > 0) {
        sub_020241B4();
        NNS_G2dSetupSoftwareSpriteCamera();
    }

    sub_020146C0();
    G3_RequestSwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);
}

void ov119_021D1028(void)
{
    sub_0200F174(0, 1, 1, 0x0, 6, 1, 71);
}

void ov119_021D1048(void)
{
    sub_0200F174(0, 0, 0, 0x0, 6, 1, 71);
}

void ov119_021D1068(BGL *param0, PaletteData *param1, int param2)
{
    int v0 = 71;

    sub_0200DD0C(param0, 1, 20, 15, param2, v0);
    PaletteSys_LoadPalette(param1, 38, sub_0200DD08(param2), v0, 0, 0x20, 12 * 16);
    sub_0200DAA4(param0, 1, (20 + (18 + 12)), 13, 0, v0);
    PaletteSys_LoadPalette(param1, 38, Window_FramePalette(), v0, 0, 0x20, 13 * 16);
    PaletteSys_LoadPalette(param1, 14, 7, v0, 0, 0x20, 14 * 16);
}

void ov119_021D10F0(BGL *param0, Window *param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8)
{
    Window_Init(param1);
    BGL_AddWindow(param0, param1, param2, param3, param4, param5, param6, param8, param7);
    sub_0200E060(param1, 1, 20, 12);
    BGL_FillWindow(param1, 15);
    sub_0201A954(param1);
}

int ov119_021D1158(Window *param0, int param1, Pokemon *param2, int param3)
{
    int v0;
    Strbuf *v1;
    Strbuf *v2;
    StringTemplate *v3;
    BoxPokemon *v4;
    MessageLoader *v5;

    BGL_FillWindow(param0, 15);

    v5 = MessageLoader_Init(0, 26, 357, 71);
    v3 = StringTemplate_Default(71);
    v1 = MessageLoader_GetNewStrbuf(v5, param1);
    v2 = Strbuf_Init(255, 71);
    v4 = Pokemon_GetBoxPokemon(param2);

    StringTemplate_SetSpeciesName(v3, 0, v4);
    StringTemplate_Format(v3, v2, v1);

    v0 = Text_AddPrinterWithParams(param0, FONT_MESSAGE, v2, 0, 0, param3, NULL);

    MessageLoader_Free(v5);
    Strbuf_Free(v2);
    Strbuf_Free(v1);
    StringTemplate_Free(v3);

    return v0;
}

void ov119_021D11E4(UnkStruct_ov119_021D0FD0 *param0, BGL *param1, Window *param2, int param3, int param4, int param5, int param6, int param7, int param8, int param9)
{
    UnkStruct_02081CF4 v0;

    Window_Init(param2);
    BGL_AddWindow(param1, param2, param3, param4, param5, param6, param7, param9, param8);

    param0->unk_04.unk_44 = sub_02013A04(2, 71);

    {
        int v1;
        Strbuf *v2;
        MessageLoader *v3 = MessageLoader_Init(0, 26, 357, 71);

        for (v1 = 0; v1 < 2; v1++) {
            v2 = MessageLoader_GetNewStrbuf(v3, 2 + v1);
            sub_02013A6C(param0->unk_04.unk_44, v2, v1);
            Strbuf_Free(v2);
        }

        MessageLoader_Free(v3);
    }

    v0.unk_00 = param0->unk_04.unk_44;
    v0.unk_08 = 0;
    v0.unk_04 = param2;
    v0.unk_09 = 1;
    v0.unk_0A = 2;
    v0.unk_0B_0 = 0;
    v0.unk_0B_4 = 0;
    v0.unk_0B_6 = 1;

    Window_Show(param2, 1, (20 + (18 + 12)), 13);
    param0->unk_04.unk_48 = sub_02001B7C(&v0, 8, 0, 0, 71, PAD_BUTTON_B);
}

void ov119_021D12CC(UnkStruct_ov119_021D0FD0 *param0)
{
    Window_Clear(&param0->unk_04.unk_14[1], 1);
    sub_0201ACF4(&param0->unk_04.unk_14[1]);
    BGL_DeleteWindow(&param0->unk_04.unk_14[1]);
    sub_02001BC4(param0->unk_04.unk_48, NULL);
    sub_02013A3C(param0->unk_04.unk_44);
}

void ov119_021D12F8(Window *param0)
{
    sub_0201ACF4(param0);
    BGL_DeleteWindow(param0);
}

void ov119_021D1308(BGL *param0, PaletteData *param1)
{
    int v0 = 118;
    int v1 = 0;
    int v2 = 1;
    int v3 = 8;
    int v4 = 3;
    int v5 = 71;

    sub_02006E3C(v0, v1, param0, v4, 0, 0, 1, v5);
    sub_02006E60(v0, v2, param0, v4, 0, 0, 1, v5);
    PaletteSys_LoadPalette(param1, v0, v3, v5, 0, 0x20 * 2, 0);
}

void ov119_021D135C(BGL *param0, PaletteData *param1)
{
    int v0 = 12;
    int v1 = 10;
    int v2 = 11;
    int v3 = 12;
    int v4 = 4;
    int v5 = 71;

    sub_02006E3C(v0, v1, param0, v4, 0, 0, 1, v5);
    sub_02006E60(v0, v2, param0, v4, 0, 0, 1, v5);
    PaletteSys_LoadPalette(param1, v0, v3, v5, 1, 0x20 * 1, 0);
}

static u32 ov119_021D13B4(u32 param0, BOOL param1)
{
    NNSGfdTexKey v0;
    u32 v1;

    v0 = NNS_GfdAllocTexVram(param0, param1, 0);
    sub_020145B4(v0);

    v1 = NNS_GfdGetTexKeyAddr(v0);
    return v1;
}

static u32 ov119_021D13D0(u32 param0, BOOL param1)
{
    NNSGfdPlttKey v0;
    u32 v1;

    v0 = NNS_GfdAllocPlttVram(param0, param1, 0);
    sub_020145F4(v0);

    v1 = NNS_GfdGetPlttKeyAddr(v0);
    return v1;
}

static UnkStruct_02014014 *ov119_021D13EC(int param0)
{
    UnkStruct_02014014 *v0;
    void *v1;
    Camera *camera;

    v1 = Heap_AllocFromHeap(param0, 0x4800);
    v0 = sub_02014014(ov119_021D13B4, ov119_021D13D0, v1, 0x4800, 1, param0);
    camera = sub_02014784(v0);

    if (camera != NULL) {
        Camera_SetClipping((FX32_ONE), (FX32_ONE * 900), camera);
    }

    return v0;
}

static UnkStruct_02014014 *ov119_021D1434(int param0, int param1, int param2)
{
    UnkStruct_02014014 *v0;
    void *v1;

    v0 = ov119_021D13EC(param0);
    v1 = sub_020144C4(param1, param2, param0);

    sub_020144CC(v0, v1, (1 << 1) | (1 << 3), 1);

    return v0;
}

void ov119_021D145C(UnkStruct_02014014 *param0)
{
    void *v0;

    v0 = sub_02014730(param0);
    sub_0201411C(param0);
    Heap_FreeToHeap(v0);
}

static void ov119_021D1474(SPLEmitter *param0)
{
    VecFx32 v0 = { 0, 0, 0 };

    SPLEmitter_SetPos(param0, &v0);
}

UnkStruct_ov119_021D14DC *ov119_021D14AC(UnkStruct_ov119_021D1930 *param0)
{
    int v0;
    int v1;
    int v2;
    int v3;
    UnkStruct_ov119_021D14DC *v4;

    v4 = Heap_AllocFromHeap(param0->unk_00, sizeof(UnkStruct_ov119_021D14DC));

    GF_ASSERT(v4 != NULL);

    v4->unk_00 = *param0;
    v4->unk_0C = ov119_021D1434(v4->unk_00.unk_00, 119, v4->unk_00.unk_04);

    sub_02014788(v4->unk_0C, 1);

    return v4;
}

void ov119_021D14DC(UnkStruct_ov119_021D14DC *param0, int param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    UnkStruct_ov119_021D14DC *v4 = param0;

    sub_020146F4(v4->unk_0C, param1, ov119_021D1474, v4);
    sub_02014788(v4->unk_0C, 1);
}

BOOL ov119_021D14F8(UnkStruct_ov119_021D14DC *param0)
{
    UnkStruct_ov119_021D14DC *v0 = param0;

    if (sub_02014710(v0->unk_0C) == 0) {
        return 0;
    }

    return 1;
}

void ov119_021D150C(UnkStruct_ov119_021D14DC *param0)
{
    Heap_FreeToHeap(param0);
}

void ov119_021D1514(UnkStruct_ov119_021D0FD0 *param0)
{
    SpriteRenderer *v0;
    SpriteGfxHandler *v1;
    PaletteData *v2;
    int v3[][4] = {
        { 4, 9, 3, 2 },
        { 4, 9, 3, 2 }
    };
    int v4 = 118;
    int v5 = NNS_G2D_VRAM_TYPE_2DMAIN;
    int v6 = 0;

    v0 = param0->unk_04.unk_50;
    v1 = param0->unk_04.unk_4C;
    v2 = param0->unk_04.unk_04;

    sub_0200CBDC(v0, v1, v4, v3[v6][0], 1, v5, 20000);
    sub_0200CD7C(v2, 2, v0, v1, v4, v3[v6][1], 0, 1, v5, 20001);
    sub_0200CE0C(v0, v1, v4, v3[v6][2], 1, 20002);
    sub_0200CE3C(v0, v1, v4, v3[v6][3], 1, 20003);

    sub_0200CBDC(v0, v1, v4, 7, 1, v5, 25000);
    sub_0200CD7C(v2, 2, v0, v1, v4, 10, 0, 1, v5, 25001);
    sub_0200CE0C(v0, v1, v4, 6, 1, 25002);
    sub_0200CE3C(v0, v1, v4, 5, 1, 25003);
}

void ov119_021D161C(UnkStruct_ov119_021D0FD0 *param0)
{
    SpriteTemplate v0;

    v0.x = 128;
    v0.y = 120;
    v0.z = 0;
    v0.animIdx = 0;
    v0.priority = 0;
    v0.plttIdx = 0;
    v0.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v0.bgPriority = 2;
    v0.transferToVRAM = FALSE;

    v0.resources[0] = 20000;
    v0.resources[1] = 20001;
    v0.resources[2] = 20002;
    v0.resources[3] = 20003;
    v0.resources[4] = SPRITE_RESOURCE_NONE;
    v0.resources[5] = SPRITE_RESOURCE_NONE;

    param0->unk_74 = SpriteActor_LoadResources(param0->unk_04.unk_50, param0->unk_04.unk_4C, &v0);

    sub_0200D330(param0->unk_74);
    sub_0200D6A4(param0->unk_74, 2);

    v0.x = 0;
    v0.y = 0 - (2 * 8);
    v0.bgPriority = 0;
    v0.resources[0] = 25000;
    v0.resources[1] = 25001;
    v0.resources[2] = 25002;
    v0.resources[3] = 25003;

    param0->unk_78 = SpriteActor_LoadResources(param0->unk_04.unk_50, param0->unk_04.unk_4C, &v0);
    sub_0200D330(param0->unk_78);

    v0.y = 192 - (6 * 8);

    param0->unk_7C = SpriteActor_LoadResources(param0->unk_04.unk_50, param0->unk_04.unk_4C, &v0);
    sub_0200D330(param0->unk_7C);
}

static const s16 Unk_ov119_021D2478[][10] = {
    { -1, 0x1, 0x1, -1, -1, 0x1, 0x1, -1, 0xFF, 0xFF },
    { -2, 0x2, 0x2, -2, -2, 0x2, 0x2, -2, 0xFF, 0xFF },
    { -3, 0x3, 0x3, -3, -3, 0x3, 0xFF, 0xFF },
    { -3, 0x3, 0x3, -3, -3, 0x3, 0xFF, 0xFF }
};
static const s16 Unk_ov119_021D24C8[][10] = {
    { 0x0, 0xFF },
    { 0x0, 0x0, 0x1, 0x1, 0x0, -1, -1, 0x0, 0x0, 0xFF },
    { 0x0, 0x0, 0x1, 0x1, 0x1, -1, -1, -1, 0x0, 0x0 },
    { 0x0, 0x0, 0x1, 0x1, 0x1, -1, -1, -1, 0x0, 0x0 }
};
static const f32 Unk_ov119_021D256C[][10] = {
    { 1.0f, 0.0f },
    { 1.0f, 1.0f, 1.1f, 1.1f, 1.1f, 1.1f, 1.1f, 1.0f, 1.0f, 0.0f },
    { 1.0f, 1.1f, 1.1f, 1.2f, 1.2f, 1.2f, 1.1f, 1.1f, 1.0f, 0.0f },
    { 1.0f, 1.1f, 1.1f, 1.2f, 1.2f, 1.2f, 1.1f, 1.1f, 1.0f, 0.0f }
};
static const f32 Unk_ov119_021D260C[][10] = {
    { 1.0f, 0.0f },
    { 1.0f, 1.0f, 0.9f, 0.9f, 0.9f, 0.9f, 0.9f, 1.0f, 1.0f, 0.0f },
    { 1.0f, 1.0f, 0.9f, 0.8f, 0.7f, 0.7f, 0.8f, 0.9f, 1.0f, 1.0f },
    { 1.0f, 1.0f, 0.9f, 0.8f, 0.7f, 0.7f, 0.8f, 0.9f, 1.0f, 1.0f }
};

BOOL ov119_021D16C0(UnkStruct_ov119_021D0FD0 *param0, int param1)
{
    UnkStruct_ov119_021D16C0 *v0;

    v0 = &param0->unk_80;

    switch (v0->unk_00) {
    case 0:
        if (v0->unk_04 >= 10) {
            v0->unk_00++;
            v0->unk_04 = 0;
        } else {
            s16 v1;
            s16 v2;
            f32 v3;
            f32 v4;
            int v5 = 0;

            v1 = Unk_ov119_021D2478[param1][v0->unk_04];
            v2 = Unk_ov119_021D24C8[param1][v0->unk_04];
            v3 = Unk_ov119_021D256C[param1][v0->unk_04];
            v4 = Unk_ov119_021D260C[param1][v0->unk_04];

            if (v1 == 0xFF) {
                v1 = 0;
                v5++;
            }

            if (v2 == 0xFF) {
                v2 = 0;
                v5++;
            }

            sub_0200D5DC(param0->unk_74, v1, v2);

            if (v3 != 0.0f) {
                sub_0200D6E8(param0->unk_74, v3, v4);
            } else {
                v5++;
            }

            if (v5 != 3) {
                v0->unk_04++;
                break;
            } else {
                v0->unk_00++;
            }
        }
    default:
        v0->unk_00 = 0;
        v0->unk_04 = 0;
        return 0;
    }

    return 1;
}

int ov119_021D176C(UnkStruct_ov119_021D0FD0 *param0, int param1)
{
    if (ov119_021D16C0(param0, param1) == 0) {
        return 2;
    }

    if (param1 == 4) {
        if (param0->unk_80.unk_04 == 6) {
            return 1;
        }
    } else {
        if (param0->unk_80.unk_04 == 6) {
            return 1;
        }
    }

    return 0;
}

void ov119_021D17A0(UnkStruct_ov119_021D0FD0 *param0)
{
    sub_0200D0F4(param0->unk_74);
    sub_0200D0F4(param0->unk_78);
    sub_0200D0F4(param0->unk_7C);
}

void ov119_021D17B8(UnkStruct_ov119_021D17B8 *param0)
{
    param0->unk_50 = sub_0200C6E4(71);
    {
        const UnkStruct_ov104_0224133C v0 = {
            0,
            128,
            0,
            32,
            0,
            128,
            0,
            32,
        };
        const UnkStruct_ov104_022412F4 v1 = {
            48 + 48, 1024 * 0x40, 512 * 0x20, GX_OBJVRAMMODE_CHAR_1D_64K, GX_OBJVRAMMODE_CHAR_1D_32K
        };

        sub_0200C73C(param0->unk_50, &v0, &v1, 16 + 16);
    }

    {
        BOOL v2;
        const UnkStruct_ov104_02241308 v3 = {
            48 + 48,
            16 + 16,
            64,
            64,
            16,
            16,
        };

        param0->unk_4C = sub_0200C704(param0->unk_50);

        v2 = sub_0200C7C0(param0->unk_50, param0->unk_4C, 255);
        GF_ASSERT(v2);

        v2 = sub_0200CB30(param0->unk_50, param0->unk_4C, &v3);
        GF_ASSERT(v2);
    }
}

void ov119_021D1844(UnkStruct_ov119_021D17B8 *param0)
{
    sub_0200D0B0(param0->unk_50, param0->unk_4C);
    sub_0200C8D4(param0->unk_50);
}

void ov119_021D1858(UnkStruct_ov119_021D0FD0 *param0)
{
    ArchivedSprite v0;
    SpriteAnimationFrame v1[10];
    Pokemon *v2;
    int v3;
    int v4;

    v2 = param0->unk_00->unk_0C.unk_00;
    v3 = Pokemon_GetValue(v2, MON_DATA_SPECIES, NULL);
    v4 = Pokemon_SpriteYOffset(v2, 2);

    {
        int v5 = 0;

        Pokemon_SetValue(v2, 76, &v5);
    }

    Pokemon_BuildArchivedSprite(&v0, v2, 2);
    PokeSprite_LoadAnimationFrames(param0->unk_04.unk_3C, &v1[0], v3, 1);

    param0->unk_70 = sub_02007C34(param0->unk_04.unk_38, &v0, 128, 96 + v4, 0, 0, &v1[0], NULL);
}

void ov119_021D18C0(UnkStruct_ov119_021D0FD0 *param0)
{
    int v0;
    int v1;

    v0 = Pokemon_GetValue(param0->unk_00->unk_0C.unk_00, MON_DATA_SPECIES, NULL);
    v1 = Pokemon_GetNature(param0->unk_00->unk_0C.unk_00);

    sub_02007B98(param0->unk_70, 1);
    PokeSprite_LoadAnimation(param0->unk_04.unk_3C, param0->unk_04.unk_54, param0->unk_70, v0, 2, 0, 0);
}

void ov119_021D1900(UnkStruct_ov119_021D0FD0 *param0)
{
    sub_02007DC8(param0->unk_70);
}

void ov119_021D190C(UnkStruct_ov119_021D0FD0 *param0, int param1)
{
    sub_02007DEC(param0->unk_70, 6, param1);
}
