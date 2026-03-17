#include "applications/pokedex/ov21_021E68F4.h"

#include <nitro.h>
#include <string.h>

#include "applications/pokedex/ov21_021D4340.h"
#include "applications/pokedex/ov21_021E29DC.h"
#include "applications/pokedex/pokedex_app.h"
#include "applications/pokedex/pokedex_data_manager.h"
#include "applications/pokedex/pokedex_graphics.h"
#include "applications/pokedex/pokedex_graphics_manager.h"
#include "applications/pokedex/pokedex_main.h"
#include "applications/pokedex/pokedex_sort.h"
#include "applications/pokedex/pokedex_sort_data.h"
#include "applications/pokedex/pokedex_text_manager.h"
#include "applications/pokedex/struct_ov21_021D4660.h"
#include "applications/pokedex/struct_ov21_021E68F4.h"

#include "bg_window.h"
#include "brightness_controller.h"
#include "heap.h"
#include "narc.h"
#include "pltt_transfer.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "system.h"
#include "touch_screen.h"
#include "touch_screen_actions.h"
#include "unk_02012744.h"
#include "vram_transfer.h"

#include "res/graphics/pokedex/zukan.naix"
#include "res/text/bank/pokedex.h"

typedef struct {
    int *unk_00;
    int unk_04;
    PokedexSortData *unk_08;
    PokedexScreenManager *unk_0C;
} UnkStruct_ov21_021E6A20;

typedef struct {
    void *unk_00;
    void *unk_04;
} UnkStruct_ov21_021E6E04;

typedef struct {
    TouchScreenActions *unk_00;
    TouchScreenHitTable *unk_04;
    UnkStruct_ov21_021E6E04 unk_08;
    int unk_10[2];
} UnkStruct_ov21_021E6DAC;

typedef struct {
    Sprite *unk_00[2];
    PokedexTextData *unk_08[2];
    SpriteResource *unk_10[4];
    Sprite *unk_20[4];
    int unk_30[2];
    void *unk_38[2];
} UnkStruct_ov21_021E6C60;

static UnkStruct_ov21_021E6A20 *ov21_021E696C(enum HeapID heapID, PokedexApp *param1);
static PokedexGraphicData **ov21_021E69B0(enum HeapID heapID, PokedexApp *param1);
static UnkStruct_ov21_021D4660 *ov21_021E69D8(enum HeapID heapID, PokedexApp *param1);
static void ov21_021E6A20(UnkStruct_ov21_021E6A20 *param0);
static void ov21_021E6A34(PokedexGraphicData **param0);
static void ov21_021E6A48(UnkStruct_ov21_021D4660 *param0);
static int ov21_021E6A68(void);
static int ov21_021E6A6C(PokedexDataManager *dataMan, void *data);
static int ov21_021E6AB8(PokedexDataManager *dataMan, void *data);
static int ov21_021E6B0C(PokedexDataManager *dataMan, void *data);
static int ov21_021E6B20(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static int ov21_021E6BA8(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static int ov21_021E6BD8(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static void ov21_021E6C60(UnkStruct_ov21_021E6C60 *param0);
static void ov21_021E6C88(UnkStruct_ov21_021E6C60 *param0);
static void ov21_021E6CB0(UnkStruct_ov21_021E6C60 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021E6A20 *param2, BOOL param3);
static BOOL ov21_021E6D1C(UnkStruct_ov21_021E6C60 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021E6A20 *param2, BOOL param3);
static void ov21_021E6D58(UnkStruct_ov21_021E6DAC *param0, UnkStruct_ov21_021E6A20 *param1, enum HeapID heapID);
static void ov21_021E6DAC(UnkStruct_ov21_021E6DAC *param0);
static void ov21_021E6DBC(UnkStruct_ov21_021E6DAC *param0, UnkStruct_ov21_021E6A20 *param1);
static void ov21_021E6DEC(UnkStruct_ov21_021E6DAC *param0);
static void ov21_021E6E04(u32 param0, enum TouchScreenButtonState param1, void *param2);
static void ov21_021E727C(Sprite *param0, PokedexTextData *textData, int param2, int param3, int param4);
static void ov21_021E728C(UnkStruct_ov21_021E6C60 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021E6DAC *param2, int param3);
static void ov21_021E72E8(UnkStruct_ov21_021E6DAC *param0, UnkStruct_ov21_021E6A20 *param1);
static void ov21_021E732C(PokedexGraphicData **param0, const UnkStruct_ov21_021E6A20 *param1);
static void ov21_021E7368(PokedexGraphicData **param0, int param1, int param2, int param3, int param4);
static void ov21_021E6E64(UnkStruct_ov21_021E6C60 *param0, PokedexGraphicData **param1, enum HeapID heapID);
static void ov21_021E6E94(UnkStruct_ov21_021E6C60 *param0, PokedexGraphicData **param1, enum HeapID heapID);
static void ov21_021E6EF0(PokedexGraphicData **param0, enum HeapID heapID);
static void ov21_021E6F58(UnkStruct_ov21_021E6C60 *param0, PokedexGraphicData **param1, int param2);
static void ov21_021E6FD8(UnkStruct_ov21_021E6C60 *param0, PokedexGraphicData **param1);
static void ov21_021E700C(UnkStruct_ov21_021E6C60 *param0, PokedexGraphicData **param1, int param2);
static void ov21_021E70BC(UnkStruct_ov21_021E6C60 *param0);
static void ov21_021E70D4(UnkStruct_ov21_021E6C60 *param0, PokedexGraphicData **param1, int param2);
static void ov21_021E71B8(UnkStruct_ov21_021E6C60 *param0, PokedexGraphicData **param1);

void ov21_021E68F4(PokedexScreenManager *param0, PokedexApp *param1, enum HeapID heapID)
{
    UnkStruct_ov21_021E6A20 *v0;
    PokedexGraphicData **v1;
    UnkStruct_ov21_021D4660 *v2;

    v0 = ov21_021E696C(heapID, param1);
    v1 = ov21_021E69B0(heapID, param1);
    v2 = ov21_021E69D8(heapID, param1);

    param0->pageData = v0;
    param0->pageGraphics = v1;
    param0->screenStates = v2;
    param0->numStates = ov21_021E6A68();

    param0->dataFunc[0] = ov21_021E6A6C;
    param0->dataFunc[1] = ov21_021E6AB8;
    param0->dataFunc[2] = ov21_021E6B0C;
    param0->graphicsFunc[0] = ov21_021E6B20;
    param0->graphicsFunc[1] = ov21_021E6BA8;
    param0->graphicsFunc[2] = ov21_021E6BD8;
}

void ov21_021E6954(PokedexScreenManager *param0)
{
    ov21_021E6A20(param0->pageData);
    ov21_021E6A34(param0->pageGraphics);
    ov21_021E6A48(param0->screenStates);
}

static UnkStruct_ov21_021E6A20 *ov21_021E696C(enum HeapID heapID, PokedexApp *param1)
{
    UnkStruct_ov21_021E6A20 *v0 = Heap_Alloc(heapID, sizeof(UnkStruct_ov21_021E6A20));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021E6A20));

    v0->unk_00 = ov21_021D13A0(param1);
    v0->unk_0C = ov21_021D1430(param1, 3);
    v0->unk_04 = 0;
    v0->unk_08 = PokedexMain_GetSortData(param1);

    return v0;
}

static PokedexGraphicData **ov21_021E69B0(enum HeapID heapID, PokedexApp *param1)
{
    PokedexGraphicData **v0;
    PokedexScreenManager *v1;

    v0 = Heap_Alloc(heapID, sizeof(PokedexGraphicData **));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(PokedexGraphicData **));

    *v0 = PokedexMain_GetGraphicData(param1);

    return v0;
}

static UnkStruct_ov21_021D4660 *ov21_021E69D8(enum HeapID heapID, PokedexApp *param1)
{
    UnkStruct_ov21_021D4660 *v0;
    int v1 = ov21_021E6A68();

    v0 = Heap_Alloc(heapID, sizeof(UnkStruct_ov21_021D4660) * v1);

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D4660) * v1);

    ov21_021D49E4(heapID, &v0[0], param1, (1 << 0));
    ov21_021D4A3C(heapID, &v0[1], param1, (1 << 1));

    return v0;
}

static void ov21_021E6A20(UnkStruct_ov21_021E6A20 *param0)
{
    GF_ASSERT(param0);
    Heap_Free(param0);
}

static void ov21_021E6A34(PokedexGraphicData **param0)
{
    GF_ASSERT(param0);
    Heap_Free(param0);
}

static void ov21_021E6A48(UnkStruct_ov21_021D4660 *param0)
{
    GF_ASSERT(param0);

    ov21_021D4660(&param0[0]);
    ov21_021D4660(&param0[1]);

    Heap_Free(param0);
}

static int ov21_021E6A68(void)
{
    return 2;
}

static int ov21_021E6A6C(PokedexDataManager *dataMan, void *data)
{
    UnkStruct_ov21_021E6A20 *v0 = data;
    UnkStruct_ov21_021E6DAC *v1 = dataMan->pageData;
    int v2;

    v1 = Heap_Alloc(dataMan->heapID, sizeof(UnkStruct_ov21_021E6DAC));
    memset(v1, 0, sizeof(UnkStruct_ov21_021E6DAC));

    for (v2 = 0; v2 < 2; v2++) {
        v1->unk_10[v2] = (3 + 1);
    }

    v0->unk_04 = 0;

    ov21_021E6D58(v1, v0, dataMan->heapID);
    ov21_021E6DBC(v1, v0);

    dataMan->pageData = v1;

    return 1;
}

static int ov21_021E6AB8(PokedexDataManager *dataMan, void *data)
{
    UnkStruct_ov21_021E6A20 *v0 = data;
    UnkStruct_ov21_021E6DAC *v1 = dataMan->pageData;

    if (dataMan->exit == 1) {
        return 1;
    }

    if (dataMan->unchanged == 1) {
        return 0;
    }

    if (ov21_021E33AC(v0->unk_0C)) {
        ov21_021E6DAC(v1);

        if (ov21_021E33BC(v0->unk_0C) && (ov21_021D3998(v0->unk_08) == 2)) {
            ov21_021E72E8(v1, v0);
        }

        ov21_021E6DBC(v1, v0);
    }

    return 0;
}

static int ov21_021E6B0C(PokedexDataManager *dataMan, void *data)
{
    UnkStruct_ov21_021E6A20 *v0 = data;
    UnkStruct_ov21_021E6DAC *v1 = dataMan->pageData;

    ov21_021E6DEC(v1);
    Heap_Free(v1);

    return 1;
}

static int ov21_021E6B20(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const UnkStruct_ov21_021E6A20 *v0 = data;
    const UnkStruct_ov21_021E6DAC *v1 = dataMan->pageData;
    PokedexGraphicData **v2 = graphics;
    UnkStruct_ov21_021E6C60 *v3 = graphicsMan->pageGraphics;

    switch (graphicsMan->state) {
    case 0:
        graphicsMan->pageGraphics = Heap_Alloc(graphicsMan->heapID, sizeof(UnkStruct_ov21_021E6C60));
        memset(graphicsMan->pageGraphics, 0, sizeof(UnkStruct_ov21_021E6C60));
        graphicsMan->state++;
        break;
    case 1:
        ov21_021E6E64(v3, v2, graphicsMan->heapID);
        ov21_021E6CB0(v3, v2, v0, 1);
        graphicsMan->state++;
        break;
    case 2:
        if (ov21_021E6D1C(v3, v2, v0, 1)) {
            graphicsMan->state++;
        }
        break;
    case 3:
        PokedexGraphics_SetStaticCursorSize(&(*v2)->cursorGraphics, 0);
        return 1;
    default:
        break;
    }

    return 0;
}

static int ov21_021E6BA8(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const UnkStruct_ov21_021E6A20 *v0 = data;
    const UnkStruct_ov21_021E6DAC *v1 = dataMan->pageData;
    PokedexGraphicData **v2 = graphics;
    UnkStruct_ov21_021E6C60 *v3 = graphicsMan->pageGraphics;

    if (ov21_021E33AC(v0->unk_0C)) {
        ov21_021E728C(v3, v2, v1, graphicsMan->heapID);
        ov21_021E732C(v2, v0);
    }

    return 0;
}

static int ov21_021E6BD8(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const UnkStruct_ov21_021E6A20 *v0 = data;
    const UnkStruct_ov21_021E6DAC *v1 = dataMan->pageData;
    PokedexGraphicData **v2 = graphics;
    UnkStruct_ov21_021E6C60 *v3 = graphicsMan->pageGraphics;

    switch (graphicsMan->state) {
    case 0:
        PokedexGraphics_SetStaticCursorSize(&(*v2)->cursorGraphics, 1);
        ov21_021E6CB0(v3, v2, v0, 0);
        graphicsMan->state++;
        break;
    case 1:
        if (ov21_021E6D1C(v3, v2, v0, 0)) {
            graphicsMan->state++;
        }
        break;
    case 2:
        ov21_021E6E94(v3, v2, graphicsMan->heapID);
        graphicsMan->state++;
        break;
    case 3:
        Heap_Free(graphicsMan->pageGraphics);
        graphicsMan->state++;
        break;
    case 4:
        return 1;
    default:
        break;
    }

    return 0;
}

static void ov21_021E6C60(UnkStruct_ov21_021E6C60 *param0)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        Sprite_SetExplicitOAMMode(param0->unk_00[v0], GX_OAM_MODE_XLU);
        sub_02012AF0(param0->unk_08[v0]->fontOAM, GX_OAM_MODE_XLU);
    }
}

static void ov21_021E6C88(UnkStruct_ov21_021E6C60 *param0)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        Sprite_SetExplicitOAMMode(param0->unk_00[v0], GX_OAM_MODE_NORMAL);
        sub_02012AF0(param0->unk_08[v0]->fontOAM, GX_OAM_MODE_NORMAL);
    }
}

static void ov21_021E6CB0(UnkStruct_ov21_021E6C60 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021E6A20 *param2, BOOL param3)
{
    ov21_021E6C60(param0);

    if (ov21_021E33A4(param2->unk_0C)) {
        if (param3) {
            PokedexGraphics_InitBlendTransition(&(*param1)->blendSub, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 1);
        } else {
            PokedexGraphics_InitBlendTransition(&(*param1)->blendSub, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 1);
        }
    }
}

static BOOL ov21_021E6D1C(UnkStruct_ov21_021E6C60 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021E6A20 *param2, BOOL param3)
{
    BOOL v0;

    if (ov21_021E33A4(param2->unk_0C)) {
        v0 = PokedexGraphics_TakeBlendTransitionStep(&(*param1)->blendSub);
    } else {
        v0 = BrightnessController_IsTransitionComplete(BRIGHTNESS_SUB_SCREEN);
    }

    if (v0) {
        if (param3) {
            ov21_021E6C88(param0);
        }

        return 1;
    }

    return 0;
}

static void ov21_021E6D58(UnkStruct_ov21_021E6DAC *param0, UnkStruct_ov21_021E6A20 *param1, enum HeapID heapID)
{
    param0->unk_04 = Heap_Alloc(heapID, sizeof(TouchScreenHitTable) * 2);

    PokedexMain_SetHitTableRect(&param0->unk_04[0], 120 - (112 / 2), 120 + (112 / 2), 68 - (120 / 2), 68 + (120 / 2));
    PokedexMain_SetHitTableRect(&param0->unk_04[1], 120 - (112 / 2), 120 + (112 / 2), 188 - (120 / 2), 188 + (120 / 2));

    param0->unk_08.unk_00 = param1;
    param0->unk_08.unk_04 = param0;
    param0->unk_00 = TouchScreenActions_RegisterHandler(param0->unk_04, 2, ov21_021E6E04, &param0->unk_08, heapID);
}

static void ov21_021E6DAC(UnkStruct_ov21_021E6DAC *param0)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        param0->unk_10[v0] = 3;
    }
}

static void ov21_021E6DBC(UnkStruct_ov21_021E6DAC *param0, UnkStruct_ov21_021E6A20 *param1)
{
    TouchScreenActions_HandleAction(param0->unk_00);

    switch (param1->unk_04) {
    case 0:
        if (param0->unk_10[0] != 2) {
            param0->unk_10[0] = 1;
        }
        break;
    case 1:
        if (param0->unk_10[1] != 2) {
            param0->unk_10[1] = 1;
        }
        break;
    default:
        break;
    }
}

static void ov21_021E6DEC(UnkStruct_ov21_021E6DAC *param0)
{
    TouchScreenActions_Free(param0->unk_00);
    Heap_Free(param0->unk_04);

    param0->unk_04 = NULL;
}

static void ov21_021E6E04(u32 param0, enum TouchScreenButtonState param1, void *param2)
{
    UnkStruct_ov21_021E6E04 *v0 = param2;
    UnkStruct_ov21_021E6A20 *v1 = v0->unk_00;
    UnkStruct_ov21_021E6DAC *v2 = v0->unk_04;

    v2->unk_10[param0] = param1;

    switch (param1) {
    case TOUCH_BUTTON_HELD:
        ov21_021E33B4(v1->unk_0C, 1);

        switch (param0) {
        case 0:
            if (v1->unk_04 != 0) {
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                v1->unk_04 = 0;
                *v1->unk_00 |= (1 << 0);
            }
            break;
        case 1:
            if (v1->unk_04 != 1) {
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                v1->unk_04 = 1;
                *v1->unk_00 |= (1 << 1);
            }
            break;
        default:
            break;
        }
        break;
    default:
        break;
    }
}

static void ov21_021E6E64(UnkStruct_ov21_021E6C60 *param0, PokedexGraphicData **param1, enum HeapID heapID)
{
    ov21_021E6EF0(param1, heapID);
    ov21_021E6F58(param0, param1, heapID);
    ov21_021E700C(param0, param1, heapID);
    ov21_021E70D4(param0, param1, heapID);
}

static void ov21_021E6E94(UnkStruct_ov21_021E6C60 *param0, PokedexGraphicData **param1, enum HeapID heapID)
{
    int v0;

    PokedexGraphics_LoadGraphicNarcPaletteData(*param1, background_sub_2_NCLR, 4, 4 * 32, 32, heapID);
    PokedexGraphics_LoadGraphicNarcPaletteData(*param1, background_sub_2_NCLR, 4, 5 * 32, 32, heapID);
    ov21_021E70BC(param0);
    ov21_021E71B8(param0, param1);
    ov21_021E6FD8(param0, param1);

    for (v0 = 0; v0 < 2; v0++) {
        if (param0->unk_38[v0]) {
            Heap_Free(param0->unk_38[v0]);
        }
    }
}

static void ov21_021E6EF0(PokedexGraphicData **param0, enum HeapID heapID)
{
    void *v0;
    NNSG2dScreenData *v1;

    PokedexGraphics_LoadGraphicNarcCharacterData(*param0, entry_sub_NCGR_lz, (*param0)->bgConfig, 6, 0, 0, TRUE, heapID);

    v0 = PokedexGraphics_GetGraphicNarcTilemapData(*param0, size_sub_NSCR_lz, TRUE, &v1, heapID);

    Bg_LoadToTilemapRect((*param0)->bgConfig, 6, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_Free(v0);
    Bg_ScheduleTilemapTransfer((*param0)->bgConfig, 6);
}

static void ov21_021E6F58(UnkStruct_ov21_021E6C60 *param0, PokedexGraphicData **param1, int param2)
{
    PokedexGraphicData *v0 = *param1;
    NARC *v1 = PokedexGraphics_GetNARC(*param1);

    param0->unk_10[0] = SpriteResourceCollection_AddTilesFrom(v0->spriteResourceCollection[0], v1, size_buttons_pressed_NCGR_lz, TRUE, size_buttons_pressed_NCGR_lz + 9000, NNS_G2D_VRAM_TYPE_2DSUB, param2);

    SpriteTransfer_RequestCharAtEnd(param0->unk_10[0]);
    SpriteResource_ReleaseData(param0->unk_10[0]);

    param0->unk_10[2] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[2], v1, size_buttons_pressed_cell_NCER_lz, TRUE, size_buttons_pressed_cell_NCER_lz + 9000, 2, param2);
    param0->unk_10[3] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[3], v1, size_buttons_pressed_anim_NANR_lz, TRUE, size_buttons_pressed_anim_NANR_lz + 9000, 3, param2);
}

static void ov21_021E6FD8(UnkStruct_ov21_021E6C60 *param0, PokedexGraphicData **param1)
{
    PokedexGraphicData *v0 = *param1;

    SpriteTransfer_ResetCharTransfer(param0->unk_10[0]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[0], param0->unk_10[0]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[2], param0->unk_10[2]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[3], param0->unk_10[3]);
}

static void ov21_021E700C(UnkStruct_ov21_021E6C60 *param0, PokedexGraphicData **param1, int param2)
{
    SpriteResourcesHeader v0;
    SpriteListTemplate v1;
    PokedexGraphicData *v2 = *param1;
    int v3;

    SpriteResourcesHeader_Init(&v0, size_buttons_pressed_NCGR_lz + 9000, info_NCLR + 2100, size_buttons_pressed_cell_NCER_lz + 9000, size_buttons_pressed_anim_NANR_lz + 9000, 0xffffffff, 0xffffffff, FALSE, 2, v2->spriteResourceCollection[0], v2->spriteResourceCollection[1], v2->spriteResourceCollection[2], v2->spriteResourceCollection[3], NULL, NULL);

    v1.list = v2->spriteList;
    v1.resourceData = &v0;
    v1.priority = 31;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    v1.heapID = param2;

    v1.position.x = 68 << FX32_SHIFT;
    v1.position.y = 120 << FX32_SHIFT;
    v1.position.y += (192 << FX32_SHIFT);

    param0->unk_00[0] = SpriteList_Add(&v1);

    Sprite_SetAnim(param0->unk_00[0], 1);

    v1.position.x = 188 << FX32_SHIFT;
    v1.position.y = 120 << FX32_SHIFT;
    v1.position.y += (192 << FX32_SHIFT);

    param0->unk_00[1] = SpriteList_Add(&v1);

    Sprite_SetAnim(param0->unk_00[1], 1);
}

static void ov21_021E70BC(UnkStruct_ov21_021E6C60 *param0)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        Sprite_Delete(param0->unk_00[v0]);
    }
}

static void ov21_021E70D4(UnkStruct_ov21_021E6C60 *param0, PokedexGraphicData **param1, int param2)
{
    Window *v0;
    PokedexDisplayBox displayBox;
    SpriteResource *v2;
    PokedexGraphicData *v3 = *param1;
    int v4;
    u32 v5;

    GF_ASSERT(param0->unk_00[0]);

    v2 = SpriteResourceCollection_Find(v3->spriteResourceCollection[1], info_NCLR + 2100);

    displayBox.textMan = v3->textMan;
    displayBox.paletteProxy = SpriteTransfer_GetPaletteProxy(v2, NULL);
    displayBox.y = -8;
    displayBox.spriteResourcePriority = 2;
    displayBox.spriteListPriority = 0;
    displayBox.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    displayBox.heapID = param2;

    v4 = PlttTransfer_GetPlttOffset(displayBox.paletteProxy, NNS_G2D_VRAM_TYPE_2DSUB);
    v0 = PokedexTextManager_NewWindow(v3->textMan, 12, 2);
    v5 = PokedexTextManager_DisplayMessage(v3->textMan, v0, TEXT_BANK_POKEDEX, pl_msg_pokedex_heightcheck_button, 0, 0);

    displayBox.x = -(v5 / 2);
    displayBox.window = v0;
    displayBox.sprite = param0->unk_00[0];

    param0->unk_08[0] = PokedexTextManager_NextTextData(&displayBox);

    sub_02012A60(param0->unk_08[0]->fontOAM, v4 + 4);
    PokedexTextManager_FreeWindow(v0);

    v0 = PokedexTextManager_NewWindow(v3->textMan, 12, 2);
    v5 = PokedexTextManager_DisplayMessage(v3->textMan, v0, TEXT_BANK_POKEDEX, pl_msg_pokedex_weightcheck_button, 0, 0);

    displayBox.x = -(v5 / 2);
    displayBox.window = v0;
    displayBox.sprite = param0->unk_00[1];

    param0->unk_08[1] = PokedexTextManager_NextTextData(&displayBox);

    sub_02012A60(param0->unk_08[1]->fontOAM, v4 + 4);
    PokedexTextManager_FreeWindow(v0);
}

static void ov21_021E71B8(UnkStruct_ov21_021E6C60 *param0, PokedexGraphicData **param1)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        PokedexTextManager_FreeTextData(param0->unk_08[v0]);
    }
}

static void ov21_021E71D0(PokedexGraphicData **param0, Sprite *param1, PokedexTextData *textData, int param3, int param4, int param5, int *param6, enum HeapID heapID, int param8, int param9, void **param10)
{
    int v0;
    NNSG2dPaletteData *v1;
    BOOL v2;
    BOOL v3 = 0;
    int v4;

    ov21_021D144C(param1, param3);
    ov21_021E727C(param1, textData, param4, param8, param9);

    v0 = Sprite_GetAnimFrame(param1);

    switch (v0) {
    case 0:
    case 1:
        if (*param6 != 0) {
            v3 = 1;
            v4 = background_sub_2_NCLR;
            *param6 = 0;
        }
        break;
    case 2:
        if (*param6 != 1) {
            v3 = 1;
            v4 = background_sub_3_NCLR;
            *param6 = 1;
        }
        break;
    case 3:
        if (*param6 != 2) {
            v3 = 1;
            v4 = background_sub_1_NCLR;
            *param6 = 2;
        }
        break;
    }

    if (v3) {
        if (*param10) {
            Heap_Free(*param10);
        }

        *param10 = PokedexGraphics_GetGraphicNarcPaletteData(*param0, v4, &v1, heapID);

        v2 = VramTransfer_Request(NNS_GFD_DST_2D_BG_PLTT_SUB, param5 * 32, v1->pRawData, 32);
        GF_ASSERT(v2);
    }
}

static void ov21_021E727C(Sprite *param0, PokedexTextData *textData, int param2, int param3, int param4)
{
    ov21_021D1524(param0, textData, param2, param3, param4);
}

static void ov21_021E728C(UnkStruct_ov21_021E6C60 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021E6DAC *param2, int param3)
{
    int v0;
    int v1;

    for (v0 = 0; v0 < 2; v0++) {
        if (v0 == 0) {
            v1 = 4;
        } else {
            v1 = 5;
        }

        ov21_021E71D0(param1, param0->unk_00[v0], param0->unk_08[v0], param2->unk_10[v0], -8, v1, &param0->unk_30[v0], param3, 4, 1, &param0->unk_38[v0]);
    }
}

static void ov21_021E72E8(UnkStruct_ov21_021E6DAC *param0, UnkStruct_ov21_021E6A20 *param1)
{
    if (gSystem.pressedKeys & PAD_BUTTON_A) {
        if (param1->unk_04 == 1) {
            param1->unk_04 = 0;
            *param1->unk_00 |= (1 << 0);
            param0->unk_10[0] = 2;
        } else {
            param1->unk_04 = 1;
            *param1->unk_00 |= (1 << 1);
            param0->unk_10[1] = 2;
        }

        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
    }
}

static void ov21_021E732C(PokedexGraphicData **param0, const UnkStruct_ov21_021E6A20 *param1)
{
    if (ov21_021E33BC(param1->unk_0C) == 1) {
        if (param1->unk_04 == 0) {
            ov21_021E7368(param0, 188, 120, 104, 96);
        } else {
            ov21_021E7368(param0, 68, 120, 104, 96);
        }
    }
}

static void ov21_021E7368(PokedexGraphicData **param0, int param1, int param2, int param3, int param4)
{
    PokedexGraphicData *v0 = *param0;
    PokedexGraphics_TransformCursor(v0, param1, param2, param3, param4);
}
