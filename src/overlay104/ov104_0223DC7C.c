#include <nitro.h>
#include <string.h>

#include "struct_decls/font_oam.h"
#include "struct_decls/struct_02012744_decl.h"
#include "struct_defs/struct_020127E8.h"

#include "bg_window.h"
#include "brightness_controller.h"
#include "char_transfer.h"
#include "font.h"
#include "graphics.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "palette.h"
#include "screen_fade.h"
#include "sprite.h"
#include "sprite_system.h"
#include "string_gf.h"
#include "sys_task.h"
#include "sys_task_extensions.h"
#include "sys_task_manager.h"
#include "text.h"
#include "unk_02012744.h"

#include "res/text/bank/npc_trainer_names.h"
#include "res/trainers/classes/field_encounteffect.naix"

typedef struct {
    Window unk_00;
    u16 unk_10;
    u16 unk_12;
} UnkStruct_ov104_0223E29C;

typedef struct {
    FontOAM *unk_00;
    CharTransferAllocation unk_04;
    u16 unk_10;
} UnkStruct_ov104_0223E3B8;

typedef struct {
    s32 unk_00;
    s32 unk_04;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    u8 unk_0B;
    u8 unk_0C;
    u8 unk_0D;
    u8 unk_0E;
    u8 unk_0F;
    u8 unk_10;
    u8 unk_11;
} UnkStruct_ov104_0223E6F0;

typedef struct {
    int unk_00;
    int unk_04;
} UnkStruct_ov104_0223E804;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    void *unk_0C;
    BgConfig *unk_10;
    SpriteSystem *unk_14;
    SpriteManager *unk_18;
    PaletteData *unk_1C;
    u16 *unk_20;
    NARC *unk_24;
    s16 unk_28;
    s16 unk_2A;
    u8 unk_2C;
    UnkStruct_02012744 *unk_30;
    SysTask *unk_34;
    int unk_38;
    int unk_3C;
    u16 unk_40[128];
    SysTask *unk_140;
    UnkStruct_ov104_0223E6F0 unk_144;
    UnkStruct_ov104_0223E804 unk_158;
    int unk_160;
    u32 unk_164;
} UnkStruct_ov104_0223DD30;

typedef struct {
    fx32 currentValue;
    fx32 startValue;
    fx32 delta;
    int currentStep;
    int numSteps;
} LinearInterpolationTaskFX32;

typedef struct {
    s16 unk_00;
    s16 unk_02;
    ManagedSprite *unk_04[4];
    LinearInterpolationTaskFX32 unk_14[4];
} UnkStruct_ov104_0223E48C;

typedef struct {
    LinearInterpolationTaskFX32 unk_00;
    UnkStruct_ov104_0223E48C unk_14;
    s32 unk_78;
    UnkStruct_ov104_0223E3B8 unk_7C;
    ManagedSprite *unk_90;
} UnkStruct_ov104_0223DDE4;

typedef struct FrontierBrainsEncounterParams {
    u32 name;
    u8 mugshotPalette;
    u8 mugshotTiles;
    u8 mugshotCells;
    u8 mugshotAnims;
    u8 bannerPalette;
    u8 bannerTiles;
    u8 bannerTilemap;
    u8 unused;
} FrontierBrainsEncounterParams;

void ov104_0223DC7C(int param0, BgConfig *param1, SpriteSystem *param2, SpriteManager *param3, PaletteData *param4, u16 *param5, s16 param6, s16 param7);
static void ov104_0223DD30(UnkStruct_ov104_0223DD30 *param0, SysTask *param1);
static void ov104_0223DD5C(SysTask *param0, void *param1);
static void ov104_0223DDB4(SysTask *param0, void *param1);
static BOOL ov104_0223DDE4(UnkStruct_ov104_0223DD30 *param0, u32 heapID, const FrontierBrainsEncounterParams *param2);
static void ov104_0223E29C(UnkStruct_ov104_0223DD30 *param0, UnkStruct_ov104_0223E3B8 *param1, const String *param2, enum Font param3, TextColor param4, int param5, int param6, int param7, int param8, int param9, UnkStruct_ov104_0223E29C *param10);
static void ov104_0223E3B8(UnkStruct_ov104_0223E3B8 *param0);
static void ov104_0223E3FC(UnkStruct_ov104_0223DD30 *param0, UnkStruct_ov104_0223E48C *param1, fx32 param2, fx32 param3, u32 param4);
static void ov104_0223E48C(UnkStruct_ov104_0223E48C *param0);
static BOOL ov104_0223E4A4(UnkStruct_ov104_0223E48C *param0);
static void ov104_0223E534(LinearInterpolationTaskFX32 *param0, fx32 param1, fx32 param2, int param3);
static BOOL ov104_0223E544(LinearInterpolationTaskFX32 *param0);
static VecFx32 ov104_0223E58C(fx32 param0, fx32 param1, fx32 param2);
static void ov104_0223E5A8(UnkStruct_ov104_0223DD30 *param0, const FrontierBrainsEncounterParams *param1);
static void ov104_0223E6BC(SysTask *param0, void *param1);
static void ov104_0223E6F0(UnkStruct_ov104_0223DD30 *param0, int param1);
static void ov104_0223E740(SysTask *param0, void *param1);
static void ov104_0223E7A4(SysTask *param0, void *param1);
static BOOL ov104_0223E804(UnkStruct_ov104_0223DD30 *param0, UnkStruct_ov104_0223DDE4 *param1, UnkStruct_ov104_0223E804 *param2);
static void ov104_0223E3CC(const String *param0, int param1, int *param2, int *param3);

static const FrontierBrainsEncounterParams sFrontierBrainsEncounterParams[] = {
    { NPCTrainerNames_Text_tower_tycoon_palmer_dummy, tower_tycoon_mugshot_NCLR, tower_tycoon_mugshot_NCGR, tower_tycoon_mugshot_cell_NCER, tower_tycoon_mugshot_anim_NANR, tower_tycoon_banner_NCLR, tower_tycoon_banner_NCGR, tower_tycoon_banner_NSCR, 0 },
    { NPCTrainerNames_Text_factory_head_thorton_dummy, factory_head_mugshot_NCLR, factory_head_mugshot_NCGR, factory_head_mugshot_cell_NCER, factory_head_mugshot_anim_NANR, factory_head_banner_NCLR, factory_head_banner_NCGR, factory_head_banner_NSCR, 0 },
    { NPCTrainerNames_Text_factory_head_thorton_dummy, factory_head_mugshot_NCLR, factory_head_mugshot_NCGR, factory_head_mugshot_cell_NCER, factory_head_mugshot_anim_NANR, factory_head_banner_NCLR, factory_head_banner_NCGR, factory_head_banner_NSCR, 0 },
    { NPCTrainerNames_Text_castle_valet_darach_dummy, castle_valet_mugshot_NCLR, castle_valet_mugshot_NCGR, castle_valet_mugshot_cell_NCER, castle_valet_mugshot_anim_NANR, castle_valet_banner_NCLR, castle_valet_banner_NCGR, castle_valet_banner_NSCR, 0 },
    { NPCTrainerNames_Text_hall_matron_argenta_dummy, hall_matron_mugshot_NCLR, hall_matron_mugshot_NCGR, hall_matron_mugshot_cell_NCER, hall_matron_mugshot_anim_NANR, hall_matron_banner_NCLR, hall_matron_banner_NCGR, hall_matron_banner_NSCR, 0 },
    { NPCTrainerNames_Text_arcade_star_dahlia_dummy, arcade_star_mugshot_NCLR, arcade_star_mugshot_NCGR, arcade_star_mugshot_cell_NCER, arcade_star_mugshot_anim_NANR, arcade_star_banner_NCLR, arcade_star_banner_NCGR, arcade_star_banner_NSCR, 0 }
};

static const SpriteTemplate Unk_ov104_022418B4 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0xC,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x7DA, 0x7D2, 0x7D2, 0x7D2, 0xffffffff, 0xffffffff },
    0x0,
    0x0
};

static const SpriteTemplate Unk_ov104_022418E8 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0xA,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x7DB, 0x7D3, 0x7D3, 0x7D3, 0xffffffff, 0xffffffff },
    0x0,
    0x0
};

void ov104_0223DC7C(int param0, BgConfig *param1, SpriteSystem *param2, SpriteManager *param3, PaletteData *param4, u16 *param5, s16 param6, s16 param7)
{
    SysTask *v0 = SysTask_StartAndAllocateParam(ov104_0223DDB4, sizeof(UnkStruct_ov104_0223DD30), 1000, 94);
    UnkStruct_ov104_0223DD30 *v1 = SysTask_GetParam(v0);

    v1->unk_10 = param1;
    v1->unk_14 = param2;
    v1->unk_18 = param3;
    v1->unk_1C = param4;
    v1->unk_20 = param5;
    v1->unk_28 = param6;
    v1->unk_2A = param7;
    v1->unk_24 = NARC_ctor(NARC_INDEX_GRAPHIC__FIELD_ENCOUNTEFFECT, HEAP_ID_94);

    if (v1->unk_20 != NULL) {
        *(v1->unk_20) = 0;
    }

    v1->unk_2C = param0 - 1;

    MI_CpuClear32(Bg_GetCharPtr(1), 0x8000);

    Bg_ScheduleScroll(param1, 1, 0, 0);
    Bg_ScheduleScroll(param1, 1, 3, 0);

    ov104_0223E5A8(v1, &sFrontierBrainsEncounterParams[v1->unk_2C]);

    v1->unk_34 = SysTask_ExecuteAfterVBlank(ov104_0223DD5C, v1, 1);
}

static void ov104_0223DD30(UnkStruct_ov104_0223DD30 *param0, SysTask *param1)
{
    SysTask_Done(param0->unk_140);
    SysTask_Done(param0->unk_34);
    NARC_dtor(param0->unk_24);
    Heap_FreeExplicit(HEAP_ID_94, param0->unk_0C);
    SysTask_FinishAndFreeParam(param1);
}

static void ov104_0223DD5C(SysTask *param0, void *param1)
{
    UnkStruct_ov104_0223DD30 *v0 = param1;

    G2_SetWnd0Position(v0->unk_144.unk_0A, v0->unk_144.unk_0B, v0->unk_144.unk_0C, v0->unk_144.unk_0D);
    G2_SetWnd1Position(v0->unk_144.unk_0E, v0->unk_144.unk_0F, v0->unk_144.unk_10, v0->unk_144.unk_11);
}

static void ov104_0223DDB4(SysTask *param0, void *param1)
{
    UnkStruct_ov104_0223DD30 *v0 = param1;
    BOOL v1 = ov104_0223DDE4(v0, HEAP_ID_94, &sFrontierBrainsEncounterParams[v0->unk_2C]);

    if (v1 == 1) {
        ov104_0223DD30(v0, param0);
    }
}

static BOOL ov104_0223DDE4(UnkStruct_ov104_0223DD30 *param0, u32 heapID, const FrontierBrainsEncounterParams *param2)
{
    UnkStruct_ov104_0223DDE4 *v0 = param0->unk_0C;
    BOOL v1;
    const VecFx32 *v2;
    VecFx32 v3;
    VecFx32 v4;
    int v5;
    int v6, v7 = 0;
    String *v8;

    switch (param0->unk_00) {
    case 0:
        param0->unk_0C = Heap_Alloc(heapID, sizeof(UnkStruct_ov104_0223DDE4));
        memset(param0->unk_0C, 0, sizeof(UnkStruct_ov104_0223DDE4));

        v0 = param0->unk_0C;
        v7 = SpriteSystem_LoadPaletteBufferFromOpenNarc(param0->unk_1C, 2, param0->unk_14, param0->unk_18, param0->unk_24, _shared_enc_fade_NCLR, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 2004);

        param0->unk_164 |= 1 << v7;
        param0->unk_30 = sub_02012744(4, HEAP_ID_94);

        {
            MessageLoader *v9;
            String *v10;

            v9 = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_NPC_TRAINER_NAMES, heapID);
            v10 = MessageLoader_GetNewString(v9, param2->name);

            ov104_0223E29C(param0, &v0->unk_7C, v10, FONT_SYSTEM, TEXT_COLOR(1, 2, 0), 0, 2004, 208 + -92 + param0->unk_28, 11 * 8 + param0->unk_2A, 0, NULL);

            sub_020129D0(v0->unk_7C.unk_00, 0);
            String_Free(v10);
            MessageLoader_Free(v9);
        }

        {
            param0->unk_160 = SpriteSystem_LoadPaletteBufferFromOpenNarc(param0->unk_1C, 2, param0->unk_14, param0->unk_18, param0->unk_24, param2->mugshotPalette, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 2002);
            param0->unk_164 |= 1 << param0->unk_160;

            SpriteSystem_LoadCharResObjFromOpenNarc(param0->unk_14, param0->unk_18, param0->unk_24, param2->mugshotTiles, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 2010);
            SpriteSystem_LoadCellResObjFromOpenNarc(param0->unk_14, param0->unk_18, param0->unk_24, param2->mugshotCells, FALSE, 2002);
            SpriteSystem_LoadAnimResObjFromOpenNarc(param0->unk_14, param0->unk_18, param0->unk_24, param2->mugshotAnims, FALSE, 2002);
            PaletteData_Blend(param0->unk_1C, PLTTBUF_MAIN_OBJ, param0->unk_160 * 16, 16, 14, (GX_RGB(0, 0, 0)));

            v7 = SpriteSystem_LoadPaletteBufferFromOpenNarc(param0->unk_1C, PLTTBUF_MAIN_OBJ, param0->unk_14, param0->unk_18, param0->unk_24, _shared_vs_NCLR, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 2003);
            param0->unk_164 |= 1 << v7;

            SpriteSystem_LoadCharResObjFromOpenNarc(param0->unk_14, param0->unk_18, param0->unk_24, _shared_frontier_vs_NCGR, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 2011);
            SpriteSystem_LoadCellResObjFromOpenNarc(param0->unk_14, param0->unk_18, param0->unk_24, _shared_frontier_vs_cell_NCER, FALSE, 2003);
            SpriteSystem_LoadAnimResObjFromOpenNarc(param0->unk_14, param0->unk_18, param0->unk_24, _shared_frontier_vs_anim_NANR, FALSE, 2003);
        }

        v0->unk_90 = SpriteSystem_NewSprite(param0->unk_14, param0->unk_18, &Unk_ov104_022418B4);

        ManagedSprite_SetDrawFlag(v0->unk_90, 0);
        Sprite_TickFrame(v0->unk_90->sprite);
        ov104_0223E3FC(param0, &v0->unk_14, (FX32_CONST(72)) + FX32_CONST(param0->unk_28), (FX32_CONST(82)) + FX32_CONST(param0->unk_2A), heapID);
        param0->unk_00++;
        break;
    case 1:
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_WHITE, 3, 1, heapID);
        param0->unk_00++;
        break;
    case 2:
        if (IsScreenFadeDone()) {
            param0->unk_00++;
        }
        break;
    case 3:
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_WHITE, 3, 1, heapID);
        param0->unk_00++;
        break;
    case 4:
        if (IsScreenFadeDone()) {
            param0->unk_00++;
        }
        break;
    case 5:
        ov104_0223E6F0(param0, 0);
        param0->unk_00++;
        break;
    case 6:
        if (param0->unk_144.unk_08 == 1) {
            param0->unk_00++;
            v0->unk_78 = 10;
        }
        break;
    case 7:
        v0->unk_78--;

        if (v0->unk_78 >= 0) {
            break;
        }

        v1 = ov104_0223E4A4(&v0->unk_14);

        if (v1 == 1) {
            param0->unk_00++;
        }
        break;
    case 8:
        param0->unk_00++;
        break;
    case 9:
        v1 = ov104_0223E804(param0, v0, &param0->unk_158);

        if (v1 == 1) {
            param0->unk_00++;
        }
        break;
    case 10:
        v0->unk_78 = 10;
        param0->unk_00++;
        break;
    case 11:
        v0->unk_78--;

        if (v0->unk_78 >= 0) {
            break;
        }

        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_WHITE, 3, 1, heapID);
        param0->unk_00++;
        break;
    case 12:
        if (IsScreenFadeDone()) {
            PaletteData_BlendMulti(param0->unk_1C, 2, param0->unk_164 ^ 0x3fff, 14, 0x0);
            PaletteData_Blend(param0->unk_1C, 2, param0->unk_160 * 16, 16, 0, (GX_RGB(0, 0, 0)));
            BrightnessController_SetScreenBrightness(-14, GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD, BRIGHTNESS_MAIN_SCREEN);
            sub_020129D0(v0->unk_7C.unk_00, 1);
            param0->unk_00++;
        }
        break;
    case 13:
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_WHITE, 3, 1, heapID);
        param0->unk_00++;
        break;
    case 14:
        if (IsScreenFadeDone()) {
            v0->unk_78 = 26;
            param0->unk_00++;
        }
        break;
    case 15:
        v0->unk_78--;

        if (v0->unk_78 < 0) {
            param0->unk_00++;
        }
        break;
    case 16:
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_WHITE, 15, 1, HEAP_ID_94);
        param0->unk_00++;
        break;
    case 17:
        if (IsScreenFadeDone()) {
            param0->unk_00++;
        }
        break;
    case 18:
        SetScreenColorBrightness(DS_SCREEN_SUB, COLOR_WHITE);

        if (param0->unk_20 != NULL) {
            *(param0->unk_20) = 1;
        }

        ov104_0223E3B8(&v0->unk_7C);

        sub_020127BC(param0->unk_30);
        Sprite_DeleteAndFreeResources(v0->unk_90);

        ov104_0223E48C(&v0->unk_14);
        return 1;
    }

    return 0;
}

static void ov104_0223E29C(UnkStruct_ov104_0223DD30 *param0, UnkStruct_ov104_0223E3B8 *param1, const String *param2, enum Font param3, TextColor param4, int param5, int param6, int param7, int param8, int param9, UnkStruct_ov104_0223E29C *param10)
{
    UnkStruct_020127E8 v0;
    Window v1;
    CharTransferAllocation v2;
    int v3;
    FontOAM *v4;
    BgConfig *v5;
    SpriteManager *v6;
    int v7, v8;

    GF_ASSERT(param1->unk_00 == NULL);

    v5 = param0->unk_10;
    v6 = param0->unk_18;

    if (param10 == NULL) {
        ov104_0223E3CC(param2, param3, &v7, &v8);
    } else {
        v7 = param10->unk_12;
        v8 = param10->unk_10;
    }

    if (param10 == NULL) {
        Window_Init(&v1);
        Window_AddToTopLeftCorner(v5, &v1, v8, 16 / 8, 0, 0);
        Text_AddPrinterWithParamsColorAndSpacing(&v1, param3, param2, 0, 0, TEXT_SPEED_NO_TRANSFER, param4, 0, 0, NULL);
    } else {
        v1 = param10->unk_00;
    }

    v3 = sub_02012898(&v1, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_94);
    CharTransfer_AllocRange(v3, 1, NNS_G2D_VRAM_TYPE_2DMAIN, &v2);

    if (param9 == 1) {
        param7 -= v7 / 2;
    }

    param8 -= 8;

    v0.unk_00 = param0->unk_30;
    v0.unk_04 = &v1;
    v0.unk_08 = SpriteManager_GetSpriteList(v6);
    v0.unk_0C = SpriteManager_FindPlttResourceProxy(v6, param6);
    v0.unk_10 = NULL;
    v0.unk_14 = v2.offset;
    v0.unk_18 = param7;
    v0.unk_1C = param8;
    v0.unk_20 = 0;
    v0.unk_24 = 11;
    v0.unk_28 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v0.heapID = HEAP_ID_94;

    v4 = sub_020127E8(&v0);

    sub_02012AC0(v4, param5);
    FontOAM_SetXY(v4, param7, param8);

    if (param10 == NULL) {
        Window_Remove(&v1);
    }

    param1->unk_00 = v4;
    param1->unk_04 = v2;
    param1->unk_10 = v7;
}

static void ov104_0223E3B8(UnkStruct_ov104_0223E3B8 *param0)
{
    sub_02012870(param0->unk_00);
    CharTransfer_ClearRange(&param0->unk_04);
}

static void ov104_0223E3CC(const String *param0, int param1, int *param2, int *param3)
{
    int v0 = Font_CalcStringWidth(param1, param0, 0);
    int v1 = v0 / 8;

    if (FX_ModS32(v0, 8) != 0) {
        v1++;
    }

    *param2 = v0;
    *param3 = v1;
}

static void ov104_0223E3FC(UnkStruct_ov104_0223DD30 *param0, UnkStruct_ov104_0223E48C *param1, fx32 param2, fx32 param3, u32 param4)
{
    int v0;
    SpriteTemplate v1 = Unk_ov104_022418E8;

    v1.x = param2 >> FX32_SHIFT;
    v1.y = param3 >> FX32_SHIFT;

    param1->unk_00 = 0;
    param1->unk_02 = 0;

    for (v0 = 0; v0 < 4; v0++) {
        param1->unk_04[v0] = SpriteSystem_NewSprite(param0->unk_14, param0->unk_18, &v1);
        ManagedSprite_SetDrawFlag(param1->unk_04[v0], 0);

        if (v0 != 3) {
            Sprite_SetAffineOverwriteMode(param1->unk_04[v0]->sprite, 2);
            Sprite_SetAnim(param1->unk_04[v0]->sprite, 1);
            ov104_0223E534(&param1->unk_14[v0], FX32_CONST(2), FX32_CONST(1), 6);
        } else {
            ov104_0223E534(&param1->unk_14[v0], FX32_CONST(1), FX32_CONST(1), 6);
        }
    }
}

static void ov104_0223E48C(UnkStruct_ov104_0223E48C *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        Sprite_DeleteAndFreeResources(param0->unk_04[v0]);
    }
}

static BOOL ov104_0223E4A4(UnkStruct_ov104_0223E48C *param0)
{
    int v0;
    BOOL v1;
    BOOL v2 = 1;
    VecFx32 v3;

    if (param0->unk_02 < 4) {
        v2 = 0;
        param0->unk_00--;

        if (param0->unk_00 <= 0) {
            param0->unk_00 = 3;
            param0->unk_02++;
        }
    }

    for (v0 = 0; v0 < param0->unk_02; v0++) {
        v1 = ov104_0223E544(&param0->unk_14[v0]);
        v3 = ov104_0223E58C(param0->unk_14[v0].currentValue, param0->unk_14[v0].currentValue, param0->unk_14[v0].currentValue);

        Sprite_SetAffineScale(param0->unk_04[v0]->sprite, &v3);
        Sprite_SetDrawFlag(param0->unk_04[v0]->sprite, TRUE);

        if (v1 == 0) {
            v2 = 0;
        }
    }

    return v2;
}

static void ov104_0223E534(LinearInterpolationTaskFX32 *param0, fx32 param1, fx32 param2, int param3)
{
    param0->currentValue = param1;
    param0->startValue = param1;
    param0->delta = param2 - param1;
    param0->numSteps = param3;
    param0->currentStep = 0;
}

static BOOL ov104_0223E544(LinearInterpolationTaskFX32 *param0)
{
    fx32 v0;

    v0 = FX_Mul(param0->delta, param0->currentStep << FX32_SHIFT);
    v0 = FX_Div(v0, param0->numSteps << FX32_SHIFT);

    param0->currentValue = v0 + param0->startValue;

    if ((param0->currentStep + 1) <= param0->numSteps) {
        param0->currentStep++;
        return 0;
    }

    param0->currentStep = param0->numSteps;
    return 1;
}

static VecFx32 ov104_0223E58C(fx32 param0, fx32 param1, fx32 param2)
{
    VecFx32 v0;

    v0.x = param0;
    v0.y = param1;
    v0.z = param2;

    return v0;
}

static void ov104_0223E5A8(UnkStruct_ov104_0223DD30 *param0, const FrontierBrainsEncounterParams *param1)
{
    GX_SetVisibleWnd(GX_WNDMASK_W0 | GX_WNDMASK_W1);
    G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
    G2_SetWnd1InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
    G2_SetWndOutsidePlane((GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ) ^ GX_WND_PLANEMASK_BG1, 1);
    G2_SetWnd0Position(0, 0, 0, 0);
    G2_SetWnd1Position(0, 0, 0, 0);

    PaletteData_LoadBufferFromFileStart(param0->unk_1C, 112, param1->bannerPalette, 94, 0, 0x20, 12 * 16);
    Graphics_LoadTilesToBgLayerFromOpenNARC(param0->unk_24, param1->bannerTiles, param0->unk_10, 1, 0, 0, 0, HEAP_ID_94);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param0->unk_24, param1->bannerTilemap, param0->unk_10, 1, 0, 0, 0, HEAP_ID_94);
    Bg_ChangeTilemapRectPalette(param0->unk_10, 1, 0, 0, 32, 32, 12);
    Bg_ScheduleTilemapTransfer(param0->unk_10, 1);

    {
        void *v0;
        NNSG2dPaletteData *v1;

        v0 = Graphics_GetPlttData(NARC_INDEX_GRAPHIC__FIELD_ENCOUNTEFFECT, param1->bannerPalette, &v1, HEAP_ID_94);

        MI_CpuCopy16(v1->pRawData, param0->unk_40, 8 * 32);
        Heap_Free(v0);
    }

    param0->unk_140 = SysTask_Start(ov104_0223E6BC, param0, 1100);
}

static void ov104_0223E6BC(SysTask *param0, void *param1)
{
    UnkStruct_ov104_0223DD30 *v0 = param1;

    v0->unk_38++;

    if (v0->unk_38 < 0) {
        return;
    }

    v0->unk_38 = 0;
    v0->unk_3C++;

    if (v0->unk_3C >= 8) {
        v0->unk_3C = 0;
    }

    PaletteData_LoadBuffer(v0->unk_1C, &v0->unk_40[v0->unk_3C * 16], 0, 12 * 16, 0x20);
}

static void ov104_0223E6F0(UnkStruct_ov104_0223DD30 *param0, int param1)
{
    UnkStruct_ov104_0223E6F0 *v0 = &param0->unk_144;
    MI_CpuClear8(v0, sizeof(UnkStruct_ov104_0223E6F0));

    if (param1 == 0) {
        v0->unk_00 = (10 * 8) << 8;
        v0->unk_04 = (10 * 8) << 8;

        SysTask_Start(ov104_0223E740, v0, 1000);
    } else {
        v0->unk_00 = ((10 * 8) - (8 * 8 + 4) / 2) << 8;
        v0->unk_04 = ((10 * 8) + (8 * 8 + 4) / 2) << 8;

        SysTask_Start(ov104_0223E7A4, v0, 1000);
    }
}

static void ov104_0223E740(SysTask *param0, void *param1)
{
    UnkStruct_ov104_0223E6F0 *v0 = param1;

    switch (v0->unk_09) {
    case 0:
        v0->unk_00 -= 0x800;
        v0->unk_04 += 0x800;

        if (v0->unk_00 <= ((10 * 8) << 8) - (((8 * 8 + 4) / 2) << 8)) {
            v0->unk_00 = ((10 * 8) - (8 * 8 + 4) / 2) << 8;
            v0->unk_04 = ((10 * 8) + (8 * 8 + 4) / 2) << 8;
            v0->unk_09++;
        }

        v0->unk_0A = 0;
        v0->unk_0B = v0->unk_00 >> 8;
        v0->unk_0C = 255;
        v0->unk_0D = v0->unk_04 >> 8;
        v0->unk_0E = 1;
        v0->unk_0F = v0->unk_00 >> 8;
        v0->unk_10 = 0;
        v0->unk_11 = v0->unk_04 >> 8;
        break;
    default:
        v0->unk_08 = 1;
        SysTask_Done(param0);
        return;
    }
}

static void ov104_0223E7A4(SysTask *param0, void *param1)
{
    UnkStruct_ov104_0223E6F0 *v0 = param1;

    switch (v0->unk_09) {
    case 0:
        v0->unk_00 += 0x800;
        v0->unk_04 -= 0x800;

        if (v0->unk_00 >= ((10 * 8) << 8)) {
            v0->unk_00 = (10 * 8) << 8;
            v0->unk_04 = (10 * 8) << 8;
            v0->unk_09++;
        }

        v0->unk_0A = 0;
        v0->unk_0B = v0->unk_00 >> 8;
        v0->unk_0C = 255;
        v0->unk_0D = v0->unk_04 >> 8;
        v0->unk_0E = 1;
        v0->unk_0F = v0->unk_00 >> 8;
        v0->unk_10 = 0;
        v0->unk_11 = v0->unk_04 >> 8;
        break;
    default:
        v0->unk_08 = 1;
        SysTask_Done(param0);
        return;
    }
}

static BOOL ov104_0223E804(UnkStruct_ov104_0223DD30 *param0, UnkStruct_ov104_0223DDE4 *param1, UnkStruct_ov104_0223E804 *param2)
{
    int v0 = 0;

    switch (param2->unk_04) {
    case 0:
        ManagedSprite_SetPositionXYWithSubscreenOffset(param1->unk_90, 256 + param0->unk_28, 80 + param0->unk_2A, (512 * FX32_ONE));
        ManagedSprite_SetDrawFlag(param1->unk_90, 1);
        param2->unk_00 = 256 << 8;
        param2->unk_04++;
        break;
    case 1:
        param2->unk_00 -= 3840;

        if (param2->unk_00 <= (208 << 8)) {
            param2->unk_00 = 208 << 8;
            param2->unk_04++;
        }

        ManagedSprite_SetPositionXYWithSubscreenOffset(param1->unk_90, param2->unk_00 >> 8, 80 + param0->unk_2A, (512 * FX32_ONE));
        break;
    default:
        return 1;
    }

    return 0;
}
