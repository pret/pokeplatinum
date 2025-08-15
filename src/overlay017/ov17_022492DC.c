#include "overlay017/ov17_022492DC.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/font_oam.h"
#include "struct_decls/struct_02012744_decl.h"
#include "struct_defs/struct_020127E8.h"
#include "struct_defs/struct_02095C48.h"

#include "overlay017/struct_ov17_0224A1EC.h"

#include "bg_window.h"
#include "char_transfer.h"
#include "font.h"
#include "graphics.h"
#include "heap.h"
#include "message.h"
#include "palette.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "touch_screen.h"
#include "unk_02012744.h"
#include "unk_02094EDC.h"

typedef struct {
    s32 unk_00;
    s32 unk_04;
    s32 unk_08;
    s32 unk_0C;
} UnkStruct_ov17_022492DC_sub1_sub1;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
    u16 unk_08;
    u16 unk_0A;
} UnkStruct_ov17_02254630;

typedef struct {
    SysTask *unk_00;
    u8 *unk_04;
    void *unk_08;
    u8 *unk_0C;
    UnkStruct_ov17_02254630 unk_10;
    u16 unk_1C;
} UnkStruct_ov17_02249B30;

typedef struct {
    s16 unk_00;
    s16 unk_02;
    union {
        struct {
            UnkStruct_ov17_02249B30 *unk_00;
            const UnkStruct_ov17_02254630 *unk_04[3];
            ManagedSprite *unk_10[3];
            u32 unk_1C[3];
            int unk_28;
            u16 unk_2C;
            u16 unk_2E;
            u8 unk_30;
        } unk_04_val1;
    };
} UnkStruct_ov17_022492DC_sub2;

typedef struct {
    const UnkStruct_ov17_022492DC_sub1_sub1 *unk_00;
    u8 unk_04;
    s8 unk_05;
} UnkStruct_ov17_022492DC_sub1;

typedef struct {
    FontOAM *unk_00;
    CharTransferAllocation unk_04;
    u16 unk_10;
} UnkStruct_ov17_02249BC4;

typedef struct UnkStruct_ov17_022492DC_t {
    UnkStruct_02095C48 *unk_00;
    UnkStruct_ov17_0224A1EC *unk_04;
    void *unk_08;
    SysTask *unk_0C;
    UnkStruct_ov17_022492DC_sub1 unk_10;
    UnkStruct_02012744 *unk_18;
    UnkStruct_ov17_02249BC4 unk_1C[6];
    u16 unk_88;
    s8 unk_8A;
    UnkStruct_ov17_022492DC_sub2 unk_8C;
    u8 *unk_C4[3];
    u16 *unk_D0[4];
    u16 *unk_E0[2];
} UnkStruct_ov17_022492DC;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    union {
        struct {
            u16 unk_04_val1_unk_00;
            u16 unk_04_val1_unk_02;
            u16 unk_04_val1_unk_04;
            u16 unk_04_val1_unk_06;
        };
        u16 unk_04_val2[4];
    };
    union {
        struct {
            u16 unk_0C_val1_unk_00;
            u16 unk_0C_val1_unk_02;
            u16 unk_0C_val1_unk_04;
            u16 unk_0C_val1_unk_06;
        };
        u16 unk_0C_val2[4];
    };
    const TouchScreenRect *unk_14;
    const int *unk_18;
    void (*unk_1C)(UnkStruct_ov17_022492DC *param0, int param1, int param2);
    int (*unk_20)(UnkStruct_ov17_022492DC *param0, int param1);
} UnkStruct_ov17_02254578;

static UnkStruct_ov17_02249B30 *ov17_02249AAC(UnkStruct_ov17_022492DC *param0, int param1, u16 param2, u32 param3, const UnkStruct_ov17_02254630 *param4, int param5);
static UnkStruct_ov17_02249B30 *ov17_02249B08(UnkStruct_ov17_022492DC *param0, int param1, u16 param2, u32 param3, const UnkStruct_ov17_02254630 *param4, int param5);
static void *ov17_022492DC(void);
static void ov17_022498E8(UnkStruct_ov17_022492DC *param0, int param1, int param2);
static int ov17_02249A0C(UnkStruct_ov17_022492DC *param0, int param1);
static BOOL ov17_02249B30(UnkStruct_ov17_02249B30 *param0);
static void ov17_02249B54(UnkStruct_ov17_02249B30 *param0);
static void ov17_02249D3C(UnkStruct_ov17_022492DC *param0, int param1);
static void ov17_02249D50(SysTaskFunc param0, UnkStruct_ov17_022492DC *param1);
static void ov17_02249D80(UnkStruct_ov17_022492DC *param0);
static void ov17_02249DA0(SysTask *param0, void *param1);
static void ov17_0224A038(SysTask *param0, void *param1);
static void ov17_0224A088(SysTask *param0, void *param1);
static void ov17_0224A0C8(SysTask *param0, void *param1);
static void ov17_022498F4(UnkStruct_ov17_022492DC *param0);
static void ov17_02249BC4(UnkStruct_ov17_022492DC *param0, UnkStruct_ov17_02249BC4 *param1, const Strbuf *param2, int param3, u32 param4, int param5, int param6, int param7, int param8, int param9);
static void ov17_02249CD0(UnkStruct_ov17_022492DC *param0);
static void ov17_02249CFC(UnkStruct_ov17_022492DC *param0, int param1);
static void ov17_02249828(UnkStruct_ov17_022492DC *param0);
static void ov17_0224981C(UnkStruct_ov17_022492DC *param0, int param1, int param2);
static void ov17_022493DC(UnkStruct_ov17_022492DC *param0);
static void ov17_022495F8(UnkStruct_ov17_022492DC *param0);

static const BgTemplate Unk_ov17_022545C0[] = {
    {
        .x = 0x0,
        .y = 0x0,
        .bufferSize = 0x800,
        .baseTile = 0x0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x6000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0x0,
        .areaOver = 0x0,
        .mosaic = FALSE,
    },
    {
        .x = 0x0,
        .y = 0x0,
        .bufferSize = 0x800,
        .baseTile = 0x0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x6800,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0x0,
        .areaOver = 0x0,
        .mosaic = FALSE,
    },
    {
        .x = 0x0,
        .y = 0x0,
        .bufferSize = 0x800,
        .baseTile = 0x0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x7000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0x0,
        .areaOver = 0x0,
        .mosaic = FALSE,
    },
    {
        .x = 0x0,
        .y = 0x0,
        .bufferSize = 0x800,
        .baseTile = 0x0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x7800,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0x0,
        .areaOver = 0x0,
        .mosaic = FALSE,
    },
};

static const TouchScreenRect Unk_ov17_02254564[] = {
    { 0x0, 0x50, 0x58, 0xA8 },
    { 0x60, 0xB0, 0x58, 0xA8 },
    { 0x28, 0x78, 0x8, 0x58 },
    { 0x28, 0x78, 0xA8, 0xF8 },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static const int Unk_ov17_02254554[NELEMS(Unk_ov17_02254564) - 1] = {
    0x0,
    0x1,
    0x2,
    0x3
};

static const UnkStruct_ov17_02254578 Unk_ov17_02254578[] = {
    {
        0x0,
        0x0,
        { 0x0, 0xFFFF, 0x1, 0xFFFF },
        { 0x2, 0x1, 0x3, 0x0 },
        NULL,
        NULL,
        ov17_0224981C,
        NULL,
    },
    {
        0x1,
        0x1,
        { 0x2, 0xFFFF, 0x3, 0xFFFF },
        { 0x2, 0x1, 0x3, 0x0 },
        Unk_ov17_02254564,
        Unk_ov17_02254554,
        ov17_022498E8,
        ov17_02249A0C,
    }
};

static const UnkStruct_ov17_02254630 Unk_ov17_02254630[][4] = {
    {
        { 0x0, 0x0, 0xC, 0x0, 0x6, 0xC },
        { 0x12, 0x0, 0xC, 0x0, 0x6, 0xC },
        { 0x6, 0x0, 0xC, 0x0, 0x6, 0xC },
        { 0xC, 0x0, 0xC, 0x0, 0x6, 0xC },
    },
    {
        { 0x0, 0x0, 0x6, 0x0, 0x6, 0xC },
        { 0x12, 0x0, 0x6, 0x0, 0x6, 0xC },
        { 0x6, 0x0, 0x6, 0x0, 0x6, 0xC },
        { 0xC, 0x0, 0x6, 0x0, 0x6, 0xC },
    },
    {
        { 0x0, 0x0, 0x0, 0x0, 0x6, 0xC },
        { 0x12, 0x0, 0x0, 0x0, 0x6, 0xC },
        { 0x6, 0x0, 0x0, 0x0, 0x6, 0xC },
        { 0xC, 0x0, 0x0, 0x0, 0x6, 0xC },
    },
};

static void *ov17_022492DC(void)
{
    UnkStruct_ov17_022492DC *v0 = Heap_Alloc(HEAP_ID_23, sizeof(UnkStruct_ov17_022492DC));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov17_022492DC));
    v0->unk_8A = -1;

    return v0;
}

void ov17_02249300(BgConfig *param0)
{
    int v0;

    for (v0 = 0; v0 < NELEMS(Unk_ov17_022545C0); v0++) {
        Bg_InitFromTemplate(param0, BG_LAYER_SUB_0 + v0, &Unk_ov17_022545C0[v0], 0);
        Bg_FillTilemap(param0, 4 + v0, 0);
        Bg_SetOffset(param0, BG_LAYER_SUB_0 + v0, 0, 0);
        Bg_SetOffset(param0, BG_LAYER_SUB_0 + v0, 3, 0);
    }
}

void ov17_02249358(BgConfig *param0)
{
    int v0;

    for (v0 = 0; v0 < NELEMS(Unk_ov17_022545C0); v0++) {
        Bg_ToggleLayer(BG_LAYER_SUB_0 + v0, 0);
        Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_0 + v0);
    }
}

void *ov17_02249380(UnkStruct_02095C48 *param0, UnkStruct_ov17_0224A1EC *param1)
{
    UnkStruct_ov17_022492DC *v0 = ov17_022492DC();

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_18 = sub_02012744(6, HEAP_ID_23);

    ov17_022493DC(v0);

    return v0;
}

void ov17_022493A4(UnkStruct_ov17_022492DC *param0)
{
    ov17_022495F8(param0);
    ov17_02249D3C(param0, 1);

    sub_020127BC(param0->unk_18);
    Heap_Free(param0);
}

void ov17_022493C4(UnkStruct_ov17_022492DC *param0)
{
    ov17_02249828(param0);
    ov17_022498F4(param0);
    ov17_02249CFC(param0, 0);
}

static void ov17_022493DC(UnkStruct_ov17_022492DC *param0)
{
    NNSG2dCharacterData *v0;
    NNSG2dScreenData *v1;
    void *v2;

    param0->unk_C4[0] = Heap_Alloc(HEAP_ID_23, 0x8000 - (0x800 * 4));
    param0->unk_C4[1] = Heap_Alloc(HEAP_ID_23, 0x8000 - (0x800 * 4));
    param0->unk_C4[2] = Heap_Alloc(HEAP_ID_23, 6 * 12 * 0x20 * 3);

    param0->unk_D0[0] = Heap_Alloc(HEAP_ID_23, 0x800);
    param0->unk_D0[1] = Heap_Alloc(HEAP_ID_23, 0x800);
    param0->unk_D0[2] = Heap_Alloc(HEAP_ID_23, 0x800);
    param0->unk_D0[3] = Heap_Alloc(HEAP_ID_23, 0x800);

    param0->unk_E0[0] = Heap_Alloc(HEAP_ID_23, 0x200);
    param0->unk_E0[1] = Heap_Alloc(HEAP_ID_23, 0x200);

    v2 = Graphics_GetCharData(NARC_INDEX_CONTEST__GRAPHIC__CONTEST_BG, 9, 1, &v0, HEAP_ID_23);
    MI_CpuCopy32(v0->pRawData, param0->unk_C4[0], 0x8000 - (0x800 * 4));
    Heap_Free(v2);

    v2 = Graphics_GetCharData(NARC_INDEX_CONTEST__GRAPHIC__CONTEST_BG, 18, 1, &v0, HEAP_ID_23);
    MI_CpuCopy32(v0->pRawData, param0->unk_C4[1], 0x8000 - (0x800 * 4));
    Heap_Free(v2);

    v2 = Graphics_GetCharData(NARC_INDEX_CONTEST__GRAPHIC__CONTEST_BG, 16, 1, &v0, HEAP_ID_23);
    MI_CpuCopy32(v0->pRawData, param0->unk_C4[2], 6 * 12 * 0x20 * 3);
    Heap_Free(v2);

    v2 = Graphics_GetScrnData(NARC_INDEX_CONTEST__GRAPHIC__CONTEST_BG, 7, 1, &v1, HEAP_ID_23);
    MI_CpuCopy32(v1->rawData, param0->unk_D0[0], 0x800);
    Heap_Free(v2);

    v2 = Graphics_GetScrnData(NARC_INDEX_CONTEST__GRAPHIC__CONTEST_BG, 8, 1, &v1, HEAP_ID_23);
    MI_CpuCopy32(v1->rawData, param0->unk_D0[1], 0x800);
    Heap_Free(v2);

    v2 = Graphics_GetScrnData(NARC_INDEX_CONTEST__GRAPHIC__CONTEST_BG, 17, 1, &v1, HEAP_ID_23);
    MI_CpuCopy32(v1->rawData, param0->unk_D0[2], 0x800);
    Heap_Free(v2);

    v2 = Graphics_GetScrnData(NARC_INDEX_CONTEST__GRAPHIC__CONTEST_BG, 28, 1, &v1, HEAP_ID_23);
    MI_CpuCopy32(v1->rawData, param0->unk_D0[3], 0x800);
    Heap_Free(v2);

    LoadPaletteFromFile(NARC_INDEX_CONTEST__GRAPHIC__CONTEST_BG, 31, HEAP_ID_23, 0x200, 0, param0->unk_E0[0]);
    LoadPaletteFromFile(NARC_INDEX_CONTEST__GRAPHIC__CONTEST_BG, 38, HEAP_ID_23, 32, 16 * param0->unk_04->unk_00->unk_10F, &param0->unk_E0[0][2 * 16]);
    LoadPaletteFromFile(NARC_INDEX_CONTEST__GRAPHIC__CONTEST_BG, 33, HEAP_ID_23, 0x200, 0, param0->unk_E0[1]);
}

static void ov17_022495F8(UnkStruct_ov17_022492DC *param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        Heap_Free(param0->unk_C4[v0]);
    }

    for (v0 = 0; v0 < 4; v0++) {
        Heap_Free(param0->unk_D0[v0]);
    }

    for (v0 = 0; v0 < 2; v0++) {
        Heap_Free(param0->unk_E0[v0]);
    }
}

void ov17_02249640(UnkStruct_ov17_022492DC *param0, int param1, int param2, void *param3)
{
    const UnkStruct_ov17_02254578 *v0, *v1;
    int v2;
    BgConfig *v3;
    SpriteSystem *v4;
    SpriteManager *v5;

    param0->unk_08 = param3;

    v3 = param0->unk_04->unk_60;
    v4 = param0->unk_04->unk_58;
    v5 = param0->unk_04->unk_5C;

    if (param0->unk_8A == -1) {
        param2 = 1;
        v1 = NULL;
    } else {
        v1 = &Unk_ov17_02254578[param0->unk_8A];
    }

    v0 = &Unk_ov17_02254578[param1];

    {
        for (v2 = 0; v2 < 4; v2++) {
            Bg_SetPriority(BG_LAYER_SUB_0 + v2, v0->unk_0C_val2[v2]);
        }
    }

    if (1) {
        param0->unk_88 = v0->unk_00;
        SysTask_ExecuteAfterVBlank(ov17_0224A088, param0, 8);
    }

    if ((v0->unk_02 != 0xffff) && ((param2 == 1) || (v0->unk_02 != v1->unk_02))) {
        PaletteData_LoadBuffer(param0->unk_04->unk_90, param0->unk_E0[v0->unk_02], 1, 0, 0x200);
    }

    for (v2 = 0; v2 < 4; v2++) {
        if ((v0->unk_04_val2[v2] != 0xffff) && ((param2 == 1) || (v0->unk_04_val2[v2] != v1->unk_04_val2[v2]))) {
            Bg_LoadTilemapBuffer(v3, 4 + v2, param0->unk_D0[v0->unk_04_val2[v2]], 0x800);
            Bg_ScheduleTilemapTransfer(v3, 4 + v2);
        }
    }

    param0->unk_8A = param1;

    ov17_02249D3C(param0, 0);

    if (v0->unk_1C != NULL) {
        v0->unk_1C(param0, param1, param2);
    }

    SysTask_ExecuteAfterVBlank(ov17_0224A038, param0, 10);
}

int ov17_02249760(UnkStruct_ov17_022492DC *param0)
{
    int v0, v1, v2;
    const UnkStruct_ov17_02254578 *v3;

    GF_ASSERT(param0->unk_8A != -1);
    v3 = &Unk_ov17_02254578[param0->unk_8A];

    if (v3->unk_14 == NULL) {
        return 0xffffffff;
    }

    GF_ASSERT(v3->unk_18 != NULL);
    v1 = TouchScreen_CheckRectanglePressed(v3->unk_14);

    if (v1 == 0xffffffff) {
        if (v3->unk_18 == Unk_ov17_02254554) {
            if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_KEY_RIGHT)) {
                v1 = 3;
            } else if (gSystem.pressedKeys & (PAD_BUTTON_B | PAD_KEY_DOWN)) {
                v1 = 1;
            } else if (gSystem.pressedKeys & (PAD_BUTTON_X | PAD_KEY_UP)) {
                v1 = 0;
            } else if (gSystem.pressedKeys & (PAD_BUTTON_Y | PAD_KEY_LEFT)) {
                v1 = 2;
            }
        }
    }

    if (v1 == 0xffffffff) {
        v0 = 0xffffffff;
    } else {
        v0 = v3->unk_18[v1];
    }

    if (v3->unk_20 != NULL) {
        v0 = v3->unk_20(param0, v0);
    }

    return v0;
}

BOOL ov17_02249804(UnkStruct_ov17_022492DC *param0)
{
    if (param0->unk_0C == NULL) {
        return 1;
    }

    return 0;
}

int ov17_02249814(UnkStruct_ov17_022492DC *param0)
{
    return param0->unk_8A;
}

static void ov17_0224981C(UnkStruct_ov17_022492DC *param0, int param1, int param2)
{
    ov17_02249CFC(param0, 1);
}

static void ov17_02249828(UnkStruct_ov17_022492DC *param0)
{
    Strbuf *v0, *v1;
    u32 v2, v3;
    MessageLoader *v4 = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_CONTEST_TEXT, HEAP_ID_23);
    v2 = sub_02095848(param0->unk_04->unk_00->unk_110, param0->unk_04->unk_00->unk_111, param0->unk_00->unk_155);
    v3 = sub_020958C4(param0->unk_04->unk_00->unk_10F, param0->unk_04->unk_00->unk_111);
    v0 = MessageLoader_GetNewStrbuf(v4, v2);
    v1 = MessageLoader_GetNewStrbuf(v4, v3);

    ov17_02249BC4(param0, &param0->unk_1C[0], v0, FONT_SYSTEM, TEXT_COLOR(1, 2, 0), 0, 33003, 128, 8 * 0x10 - 1, 1);
    ov17_02249BC4(param0, &param0->unk_1C[1], v1, FONT_SYSTEM, TEXT_COLOR(1, 2, 0), 0, 33003, 128, 8 * 0x14 - 1, 1);

    Strbuf_Free(v0);
    Strbuf_Free(v1);
    MessageLoader_Free(v4);
}

static void ov17_022498E8(UnkStruct_ov17_022492DC *param0, int param1, int param2)
{
    ov17_02249CFC(param0, 1);
}

static void ov17_022498F4(UnkStruct_ov17_022492DC *param0)
{
    Strbuf *v0, *v1, *v2, *v3;
    MessageLoader *v4 = param0->unk_04->unk_84;

    if (param0->unk_04->unk_A14[param0->unk_04->unk_00->unk_113] == 1) {
        v0 = MessageLoader_GetNewStrbuf(v4, 0);
    } else {
        v0 = MessageLoader_GetNewStrbuf(v4, 1);
    }

    v1 = MessageLoader_GetNewStrbuf(v4, 2);
    v2 = MessageLoader_GetNewStrbuf(v4, 3);
    v3 = MessageLoader_GetNewStrbuf(v4, 4);

    ov17_02249BC4(param0, &param0->unk_1C[2], v0, FONT_SUBSCREEN, TEXT_COLOR(1, 1, 0xb), 0, 33003, 128, 24, 1);
    ov17_02249BC4(param0, &param0->unk_1C[3], v1, FONT_SUBSCREEN, TEXT_COLOR(1, 1, 0xb), 0, 33003, 128, 120, 1);
    ov17_02249BC4(param0, &param0->unk_1C[4], v2, FONT_SUBSCREEN, TEXT_COLOR(1, 1, 0xb), 0, 33003, 48, 64, 1);
    ov17_02249BC4(param0, &param0->unk_1C[5], v3, FONT_SUBSCREEN, TEXT_COLOR(1, 1, 0xb), 0, 33003, 208, 64, 1);

    Strbuf_Free(v0);
    Strbuf_Free(v1);
    Strbuf_Free(v2);
    Strbuf_Free(v3);
}

static int ov17_02249A0C(UnkStruct_ov17_022492DC *param0, int param1)
{
    int v0;

    switch (param1) {
    case 0xffffffff:
    default:
        return param1;
    case 0:
        v0 = 2;
        break;
    case 1:
        v0 = 3;
        break;
    case 2:
        v0 = 4;
        break;
    case 3:
        v0 = 5;
        break;
    }

    ov17_02249D50(ov17_02249DA0, param0);

    param0->unk_8C.unk_04_val1.unk_1C[0] = 2;
    param0->unk_8C.unk_04_val1.unk_1C[1] = 2;
    param0->unk_8C.unk_04_val1.unk_1C[2] = 2;
    param0->unk_8C.unk_04_val1.unk_2E = 6 * 3;
    param0->unk_8C.unk_04_val1.unk_2C = 45;
    param0->unk_8C.unk_04_val1.unk_04[0] = &Unk_ov17_02254630[0][param1];
    param0->unk_8C.unk_04_val1.unk_04[1] = &Unk_ov17_02254630[1][param1];
    param0->unk_8C.unk_04_val1.unk_04[2] = &Unk_ov17_02254630[2][param1];
    param0->unk_8C.unk_04_val1.unk_28 = param1;
    param0->unk_8C.unk_04_val1.unk_30 = v0;

    return param1;
}

static UnkStruct_ov17_02249B30 *ov17_02249AAC(UnkStruct_ov17_022492DC *param0, int param1, u16 param2, u32 param3, const UnkStruct_ov17_02254630 *param4, int param5)
{
    UnkStruct_ov17_02249B30 *v0 = Heap_Alloc(HEAP_ID_23, sizeof(UnkStruct_ov17_02249B30));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov17_02249B30));

    if (param3 != 0xffffffff) {
        v0->unk_0C = param0->unk_C4[param3];
    }

    v0->unk_1C = param5 * 0x20;
    v0->unk_10 = *param4;
    v0->unk_04 = Bg_GetCharPtr(param1);

    return v0;
}

static UnkStruct_ov17_02249B30 *ov17_02249B08(UnkStruct_ov17_022492DC *param0, int param1, u16 param2, u32 param3, const UnkStruct_ov17_02254630 *param4, int param5)
{
    UnkStruct_ov17_02249B30 *v0 = ov17_02249AAC(param0, param1, param2, param3, param4, param5);
    v0->unk_00 = SysTask_ExecuteAfterVBlank(ov17_0224A0C8, v0, 20);

    return v0;
}

static BOOL ov17_02249B30(UnkStruct_ov17_02249B30 *param0)
{
    if (param0->unk_00 == NULL) {
        if (param0->unk_08 != NULL) {
            Heap_Free(param0->unk_08);
        }

        Heap_Free(param0);
        return 1;
    }

    return 0;
}

static void ov17_02249B54(UnkStruct_ov17_02249B30 *param0)
{
    int v0, v1, v2;
    u32 v3, v4;

    v2 = 32 * 32;
    v3 = param0->unk_10.unk_06 * param0->unk_1C;
    v4 = param0->unk_10.unk_02 * v2;

    for (v1 = 0; v1 < param0->unk_10.unk_0A; v1++) {
        if (param0->unk_0C != NULL) {
            MI_CpuCopy16(&param0->unk_0C[param0->unk_1C * v1 + v3 + param0->unk_10.unk_04 * 0x20], &param0->unk_04[v2 * v1 + v4 + param0->unk_10.unk_00 * 0x20], param0->unk_10.unk_08 * 0x20);
        } else {
            MI_CpuClear16(&param0->unk_04[v2 * v1 + v4 + param0->unk_10.unk_00 * 0x20], param0->unk_10.unk_08 * 0x20);
        }
    }
}

static void ov17_02249BC4(UnkStruct_ov17_022492DC *param0, UnkStruct_ov17_02249BC4 *param1, const Strbuf *param2, int param3, u32 param4, int param5, int param6, int param7, int param8, int param9)
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

    v5 = param0->unk_04->unk_60;
    v6 = param0->unk_04->unk_5C;

    {
        v7 = Font_CalcStrbufWidth(param3, param2, 0);
        v8 = v7 / 8;

        if (FX_ModS32(v7, 8) != 0) {
            v8++;
        }
    }

    {
        Window_Init(&v1);
        Window_AddToTopLeftCorner(v5, &v1, v8, 16 / 8, 0, 0);
        Text_AddPrinterWithParamsColorAndSpacing(&v1, param3, param2, 0, 0, TEXT_SPEED_NO_TRANSFER, param4, 0, 0, NULL);
    }

    v3 = sub_02012898(&v1, NNS_G2D_VRAM_TYPE_2DSUB, HEAP_ID_23);
    CharTransfer_AllocRange(v3, 1, NNS_G2D_VRAM_TYPE_2DSUB, &v2);

    if (param9 == 1) {
        param7 -= v7 / 2;
    }

    param8 += ((256 * FX32_ONE) / FX32_ONE) - 8;

    v0.unk_00 = param0->unk_18;
    v0.unk_04 = &v1;
    v0.unk_08 = SpriteManager_GetSpriteList(v6);
    v0.unk_0C = SpriteManager_FindPlttResourceProxy(v6, param6);
    v0.unk_10 = NULL;
    v0.unk_14 = v2.offset;
    v0.unk_18 = param7;
    v0.unk_1C = param8;
    v0.unk_20 = 0;
    v0.unk_24 = 100;
    v0.unk_28 = NNS_G2D_VRAM_TYPE_2DSUB;
    v0.heapID = HEAP_ID_23;

    v4 = sub_020127E8(&v0);

    sub_02012AC0(v4, param5);
    sub_020128C4(v4, param7, param8);
    Window_Remove(&v1);

    param1->unk_00 = v4;
    param1->unk_04 = v2;
    param1->unk_10 = v7;
}

static void ov17_02249CD0(UnkStruct_ov17_022492DC *param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        if (param0->unk_1C[v0].unk_00 != NULL) {
            sub_02012870(param0->unk_1C[v0].unk_00);
            CharTransfer_ClearRange(&param0->unk_1C[v0].unk_04);
            param0->unk_1C[v0].unk_00 = NULL;
        }
    }
}

static void ov17_02249CFC(UnkStruct_ov17_022492DC *param0, int param1)
{
    SpriteManager *v0;
    int v1;
    int v2, v3;

    if (param1 == 1) {
        if (param0->unk_8A == 0) {
            v2 = 0;
            v3 = 1;
        } else {
            v2 = 2;
            v3 = 5;
        }
    } else {
        v2 = 0;
        v3 = 6 - 1;
    }

    v0 = param0->unk_04->unk_5C;

    for (v1 = v2; v1 <= v3; v1++) {
        if (param0->unk_1C[v1].unk_00 != NULL) {
            sub_020129D0(param0->unk_1C[v1].unk_00, param1);
        }
    }
}

static void ov17_02249D3C(UnkStruct_ov17_022492DC *param0, int param1)
{
    if (param1 == 1) {
        ov17_02249CD0(param0);
    } else {
        ov17_02249CFC(param0, 0);
    }
}

static void ov17_02249D50(SysTaskFunc param0, UnkStruct_ov17_022492DC *param1)
{
    GF_ASSERT(param1->unk_0C == NULL);

    MI_CpuClear8(&param1->unk_8C, sizeof(UnkStruct_ov17_022492DC_sub2));
    param1->unk_0C = SysTask_Start(param0, param1, 1300);
}

static void ov17_02249D80(UnkStruct_ov17_022492DC *param0)
{
    if (param0->unk_0C != NULL) {
        SysTask_Done(param0->unk_0C);
        param0->unk_0C = NULL;
        MI_CpuClear8(&param0->unk_8C, sizeof(UnkStruct_ov17_022492DC_sub2));
    }
}

static void ov17_02249DA0(SysTask *param0, void *param1)
{
    UnkStruct_ov17_022492DC *v0 = param1;
    BgConfig *v1;
    int v2, v3;
    int v4;

    v1 = v0->unk_04->unk_60;

    switch (v0->unk_8C.unk_00) {
    case 0:
        v0->unk_8C.unk_04_val1.unk_00 = ov17_02249B08(v0, 4, v0->unk_8C.unk_04_val1.unk_2C, v0->unk_8C.unk_04_val1.unk_1C[0], v0->unk_8C.unk_04_val1.unk_04[0], v0->unk_8C.unk_04_val1.unk_2E);

        sub_020129A4(v0->unk_1C[v0->unk_8C.unk_04_val1.unk_30].unk_00, &v2, &v3);
        sub_020128C4(v0->unk_1C[v0->unk_8C.unk_04_val1.unk_30].unk_00, v2, v3 + 16);

        for (v4 = 0; v4 < 3; v4++) {
            if (v0->unk_8C.unk_04_val1.unk_10[v4] != NULL) {
                Sprite_OffsetPositionXY(v0->unk_8C.unk_04_val1.unk_10[v4]->sprite, 0, 16);
            }
        }

        v0->unk_8C.unk_00++;
        break;
    case 1:
        if (ov17_02249B30(v0->unk_8C.unk_04_val1.unk_00) == 0) {
            break;
        }

        v0->unk_8C.unk_00++;
    case 2:
        v0->unk_8C.unk_02++;

        if (v0->unk_8C.unk_02 > 2) {
            v0->unk_8C.unk_02 = 0;
            v0->unk_8C.unk_00++;
        } else {
            break;
        }
    case 3:
        v0->unk_8C.unk_04_val1.unk_00 = ov17_02249B08(v0, 4, v0->unk_8C.unk_04_val1.unk_2C, v0->unk_8C.unk_04_val1.unk_1C[1], v0->unk_8C.unk_04_val1.unk_04[1], v0->unk_8C.unk_04_val1.unk_2E);

        sub_020129A4(v0->unk_1C[v0->unk_8C.unk_04_val1.unk_30].unk_00, &v2, &v3);
        sub_020128C4(v0->unk_1C[v0->unk_8C.unk_04_val1.unk_30].unk_00, v2, v3 + -4);

        for (v4 = 0; v4 < 3; v4++) {
            if (v0->unk_8C.unk_04_val1.unk_10[v4] != NULL) {
                Sprite_OffsetPositionXY(v0->unk_8C.unk_04_val1.unk_10[v4]->sprite, 0, -4);
            }
        }

        v0->unk_8C.unk_00++;
        break;
    case 4:
        if (ov17_02249B30(v0->unk_8C.unk_04_val1.unk_00) == 0) {
            break;
        }

        v0->unk_8C.unk_00++;
    case 5:
        v0->unk_8C.unk_02++;

        if (v0->unk_8C.unk_02 > 2) {
            v0->unk_8C.unk_02 = 0;
            v0->unk_8C.unk_00++;
        } else {
            break;
        }
    case 6:
        v0->unk_8C.unk_04_val1.unk_00 = ov17_02249B08(v0, 4, v0->unk_8C.unk_04_val1.unk_2C, v0->unk_8C.unk_04_val1.unk_1C[2], v0->unk_8C.unk_04_val1.unk_04[2], v0->unk_8C.unk_04_val1.unk_2E);

        sub_020129A4(v0->unk_1C[v0->unk_8C.unk_04_val1.unk_30].unk_00, &v2, &v3);
        sub_020128C4(v0->unk_1C[v0->unk_8C.unk_04_val1.unk_30].unk_00, v2, v3 + (-(16 + -4)));

        for (v4 = 0; v4 < 3; v4++) {
            if (v0->unk_8C.unk_04_val1.unk_10[v4] != NULL) {
                Sprite_OffsetPositionXY(v0->unk_8C.unk_04_val1.unk_10[v4]->sprite, 0, -(16 + -4));
            }
        }

        v0->unk_8C.unk_00++;
        break;
    case 7:
        if (ov17_02249B30(v0->unk_8C.unk_04_val1.unk_00) == 0) {
            break;
        }

        v0->unk_8C.unk_00++;
    case 8:
        v0->unk_8C.unk_02++;

        if (v0->unk_8C.unk_02 > 2) {
            v0->unk_8C.unk_02 = 0;
            v0->unk_8C.unk_00++;
        } else {
            break;
        }
    default:
        ov17_02249D80(v0);
        return;
    }
}

static void ov17_0224A038(SysTask *param0, void *param1)
{
    UnkStruct_ov17_022492DC *v0 = param1;
    const UnkStruct_ov17_02254578 *v1;
    int v2;

    v1 = &Unk_ov17_02254578[v0->unk_8A];

    for (v2 = 0; v2 < 4; v2++) {
        if (v1->unk_04_val2[v2] == 0xffff) {
            Bg_ToggleLayer(BG_LAYER_SUB_0 + v2, 0);
        } else {
            Bg_ToggleLayer(BG_LAYER_SUB_0 + v2, 1);
        }
    }

    SysTask_Done(param0);
}

static void ov17_0224A088(SysTask *param0, void *param1)
{
    UnkStruct_ov17_022492DC *v0 = param1;

    if (v0->unk_88 != 0xffff) {
        Bg_LoadTiles(v0->unk_04->unk_60, 4, v0->unk_C4[v0->unk_88], 0x8000 - (0x800 * 4), 0);
        v0->unk_88 = 0xffff;
    }

    SysTask_Done(param0);
}

static void ov17_0224A0C8(SysTask *param0, void *param1)
{
    UnkStruct_ov17_02249B30 *v0 = param1;

    ov17_02249B54(v0);
    v0->unk_00 = NULL;
    SysTask_Done(param0);
}

void ov17_0224A0E0(UnkStruct_ov17_022492DC *param0, u16 param1, u8 param2)
{
    PaletteData_Blend(param0->unk_04->unk_90, 1, 0 * 16, 16 * 4, param2, param1);
}
