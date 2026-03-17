#include "applications/pokedex/ov21_021DDD2C.h"

#include <nitro.h>
#include <string.h>

#include "applications/pokedex/ov21_021DC9BC.h"
#include "applications/pokedex/ov21_021E29DC.h"
#include "applications/pokedex/pokedex_app.h"
#include "applications/pokedex/pokedex_data_manager.h"
#include "applications/pokedex/pokedex_graphics.h"
#include "applications/pokedex/pokedex_graphics_manager.h"
#include "applications/pokedex/pokedex_main.h"
#include "applications/pokedex/pokedex_sort.h"
#include "applications/pokedex/pokedex_sort_data.h"
#include "applications/pokedex/struct_ov21_021D4660.h"
#include "applications/pokedex/struct_ov21_021E68F4.h"

#include "bg_window.h"
#include "brightness_controller.h"
#include "heap.h"
#include "narc.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "system.h"
#include "touch_screen.h"
#include "touch_screen_actions.h"
#include "vram_transfer.h"

#include "res/graphics/pokedex/zukan.naix"

typedef struct {
    PokedexScreenManager *unk_00;
    PokedexSortData *unk_04;
    PokedexScreenManager *unk_08;
} UnkStruct_ov21_021DDDA4;

typedef struct {
    void *unk_00;
    void *unk_04;
} UnkStruct_ov21_021DDE4C_sub1;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    TouchScreenActions *unk_10;
    TouchScreenHitTable *unk_14;
    UnkStruct_ov21_021DDE4C_sub1 unk_18;
    int unk_20;
    BOOL unk_24;
} UnkStruct_ov21_021DDE4C;

typedef struct {
    Sprite *unk_00;
    SpriteResource *unk_04[4];
    void *unk_14;
    int unk_18;
    int unk_1C;
    NNSG2dPaletteData *unk_20;
    int unk_24;
    int unk_28;
} UnkStruct_ov21_021DDEC8;

static UnkStruct_ov21_021DDDA4 *ov21_021DDDA4(enum HeapID heapID, PokedexApp *param1);
static PokedexGraphicData **ov21_021DDDF0(enum HeapID heapID, PokedexApp *param1);
static UnkStruct_ov21_021D4660 *ov21_021DDE18(enum HeapID heapID, PokedexApp *param1);
static void ov21_021DDE1C(UnkStruct_ov21_021DDDA4 *param0);
static void ov21_021DDE30(PokedexGraphicData **param0);
static void ov21_021DDE44(UnkStruct_ov21_021D4660 *param0);
static int ov21_021DDE48(void);
static int ov21_021DDE4C(PokedexDataManager *dataMan, void *data);
static int ov21_021DDE84(PokedexDataManager *dataMan, void *data);
static int ov21_021DDEB4(PokedexDataManager *dataMan, void *data);
static int ov21_021DDEC8(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static int ov21_021DDF80(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static int ov21_021DDFB4(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static void ov21_021DE040(UnkStruct_ov21_021DDEC8 *param0);
static void ov21_021DE04C(UnkStruct_ov21_021DDEC8 *param0);
static void ov21_021DE058(UnkStruct_ov21_021DDEC8 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021DDDA4 *param2, BOOL param3);
static BOOL ov21_021DE0C4(UnkStruct_ov21_021DDEC8 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021DDDA4 *param2, BOOL param3);
static void ov21_021DE2EC(UnkStruct_ov21_021DDE4C *param0, UnkStruct_ov21_021DDDA4 *param1, enum HeapID heapID);
static void ov21_021DE334(UnkStruct_ov21_021DDE4C *param0, UnkStruct_ov21_021DDDA4 *param1);
static void ov21_021DE44C(u32 param0, enum TouchScreenButtonState param1, void *param2);
static void ov21_021DE484(UnkStruct_ov21_021DDE4C *param0);
static void ov21_021DE3D0(UnkStruct_ov21_021DDE4C *param0, UnkStruct_ov21_021DDDA4 *param1);
static void ov21_021DE5A4(UnkStruct_ov21_021DDE4C *param0, UnkStruct_ov21_021DDDA4 *param1);
static void ov21_021DE358(UnkStruct_ov21_021DDE4C *param0, UnkStruct_ov21_021DDDA4 *param1);
static void ov21_021DE630(PokedexGraphicData **param0, const UnkStruct_ov21_021DDE4C *param1, const UnkStruct_ov21_021DDDA4 *param2);
static void ov21_021DE100(UnkStruct_ov21_021DDEC8 *param0, PokedexGraphicData **param1, enum HeapID heapID);
static void ov21_021DE128(UnkStruct_ov21_021DDEC8 *param0, PokedexGraphicData **param1, int param2);
static void ov21_021DE13C(PokedexGraphicData **param0, enum HeapID heapID);
static void ov21_021DE1A4(UnkStruct_ov21_021DDEC8 *param0, PokedexGraphicData **param1, int param2);
static void ov21_021DE224(UnkStruct_ov21_021DDEC8 *param0, PokedexGraphicData **param1);
static void ov21_021DE258(UnkStruct_ov21_021DDEC8 *param0, PokedexGraphicData **param1, int param2);
static void ov21_021DE2E0(UnkStruct_ov21_021DDEC8 *param0);
static void ov21_021DE49C(UnkStruct_ov21_021DDEC8 *param0, const UnkStruct_ov21_021DDDA4 *param1, const UnkStruct_ov21_021DDE4C *param2);
static int ov21_021DE5DC(int param0);
static void ov21_021DE4D4(UnkStruct_ov21_021DDEC8 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021DDDA4 *param2, enum HeapID heapID);

void ov21_021DDD2C(PokedexScreenManager *param0, PokedexApp *param1, enum HeapID heapID)
{
    UnkStruct_ov21_021DDDA4 *v0;
    PokedexGraphicData **v1;
    UnkStruct_ov21_021D4660 *v2;

    v0 = ov21_021DDDA4(heapID, param1);
    v1 = ov21_021DDDF0(heapID, param1);
    v2 = ov21_021DDE18(heapID, param1);

    param0->pageData = v0;
    param0->pageGraphics = v1;
    param0->screenStates = v2;
    param0->numStates = ov21_021DDE48();

    param0->dataFunc[0] = ov21_021DDE4C;
    param0->dataFunc[1] = ov21_021DDE84;
    param0->dataFunc[2] = ov21_021DDEB4;
    param0->graphicsFunc[0] = ov21_021DDEC8;
    param0->graphicsFunc[1] = ov21_021DDF80;
    param0->graphicsFunc[2] = ov21_021DDFB4;
}

void ov21_021DDD8C(PokedexScreenManager *param0)
{
    ov21_021DDE1C(param0->pageData);
    ov21_021DDE30(param0->pageGraphics);
    ov21_021DDE44(param0->screenStates);
}

static UnkStruct_ov21_021DDDA4 *ov21_021DDDA4(enum HeapID heapID, PokedexApp *param1)
{
    UnkStruct_ov21_021DDDA4 *v0 = Heap_Alloc(heapID, sizeof(UnkStruct_ov21_021DDDA4));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021DDDA4));

    v0->unk_00 = ov21_021D1410(param1, 6);
    v0->unk_08 = ov21_021D1430(param1, 3);
    v0->unk_04 = PokedexMain_GetSortData(param1);

    return v0;
}

static PokedexGraphicData **ov21_021DDDF0(enum HeapID heapID, PokedexApp *param1)
{
    PokedexGraphicData **v0 = Heap_Alloc(heapID, sizeof(PokedexGraphicData **));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(PokedexGraphicData **));

    *v0 = PokedexMain_GetGraphicData(param1);

    return v0;
}

static UnkStruct_ov21_021D4660 *ov21_021DDE18(enum HeapID heapID, PokedexApp *param1)
{
    return NULL;
}

static void ov21_021DDE1C(UnkStruct_ov21_021DDDA4 *param0)
{
    GF_ASSERT(param0);
    Heap_Free(param0);
}

static void ov21_021DDE30(PokedexGraphicData **param0)
{
    GF_ASSERT(param0);
    Heap_Free(param0);
}

static void ov21_021DDE44(UnkStruct_ov21_021D4660 *param0)
{
    return;
}

static int ov21_021DDE48(void)
{
    return 0;
}

static int ov21_021DDE4C(PokedexDataManager *dataMan, void *data)
{
    UnkStruct_ov21_021DDDA4 *v0 = data;
    UnkStruct_ov21_021DDE4C *v1;

    v1 = Heap_Alloc(dataMan->heapID, sizeof(UnkStruct_ov21_021DDE4C));

    GF_ASSERT(v1);
    memset(v1, 0, sizeof(UnkStruct_ov21_021DDE4C));

    dataMan->pageData = v1;

    ov21_021DE5A4(v1, v0);
    ov21_021DE2EC(v1, v0, dataMan->heapID);

    return 1;
}

static int ov21_021DDE84(PokedexDataManager *dataMan, void *data)
{
    UnkStruct_ov21_021DDDA4 *v0 = data;
    UnkStruct_ov21_021DDE4C *v1 = dataMan->pageData;

    if (dataMan->exit == 1) {
        return 1;
    }

    if (dataMan->unchanged == 1) {
        return 0;
    }

    if (ov21_021E33AC(v0->unk_08)) {
        ov21_021DE334(v1, v0);
    }

    return 0;
}

static int ov21_021DDEB4(PokedexDataManager *dataMan, void *data)
{
    UnkStruct_ov21_021DDDA4 *v0 = data;
    UnkStruct_ov21_021DDE4C *v1 = dataMan->pageData;

    ov21_021DE484(v1);
    Heap_Free(v1);

    return 1;
}

static int ov21_021DDEC8(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const UnkStruct_ov21_021DDDA4 *v0 = data;
    const UnkStruct_ov21_021DDE4C *v1 = dataMan->pageData;
    PokedexGraphicData **v2 = graphics;
    UnkStruct_ov21_021DDEC8 *v3 = graphicsMan->pageGraphics;

    switch (graphicsMan->state) {
    case 0:
        graphicsMan->pageGraphics = Heap_Alloc(graphicsMan->heapID, sizeof(UnkStruct_ov21_021DDEC8));
        memset(graphicsMan->pageGraphics, 0, sizeof(UnkStruct_ov21_021DDEC8));
        graphicsMan->state++;
        break;
    case 1:
        ov21_021DE100(v3, v2, graphicsMan->heapID);
        ov21_021DE49C(v3, v0, v1);
        ov21_021DE4D4(v3, v2, v0, graphicsMan->heapID);
        ov21_021DE058(v3, v2, v0, 1);
        graphicsMan->state++;
        break;
    case 2:
        ov21_021DE4D4(v3, v2, v0, graphicsMan->heapID);

        if (ov21_021DE0C4(v3, v2, v0, 1)) {
            graphicsMan->state++;
        }
        break;
    case 3:
        ov21_021DE4D4(v3, v2, v0, graphicsMan->heapID);
        PokedexGraphics_SetStaticCursorSize(&(*v2)->cursorGraphics, 0);
        return 1;
    default:
        break;
    }

    return 0;
}

static int ov21_021DDF80(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const UnkStruct_ov21_021DDDA4 *v0 = data;
    const UnkStruct_ov21_021DDE4C *v1 = dataMan->pageData;
    PokedexGraphicData **v2 = graphics;
    UnkStruct_ov21_021DDEC8 *v3 = graphicsMan->pageGraphics;

    ov21_021DE49C(v3, v0, v1);
    ov21_021DE630(v2, v1, v0);
    ov21_021DE4D4(v3, v2, v0, graphicsMan->heapID);

    return 0;
}

static int ov21_021DDFB4(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const UnkStruct_ov21_021DDDA4 *v0 = data;
    const UnkStruct_ov21_021DDE4C *v1 = dataMan->pageData;
    PokedexGraphicData **v2 = graphics;
    UnkStruct_ov21_021DDEC8 *v3 = graphicsMan->pageGraphics;

    switch (graphicsMan->state) {
    case 0:
        PokedexGraphics_SetStaticCursorSize(&(*v2)->cursorGraphics, 1);
        ov21_021DE058(v3, v2, v0, 0);
        graphicsMan->state++;
        break;
    case 1:
        if (ov21_021DE0C4(v3, v2, v0, 0)) {
            graphicsMan->state++;
        }
        break;
    case 2:
        ov21_021DE128(v3, v2, graphicsMan->heapID);
        graphicsMan->state++;
        break;
    case 3:
        Heap_Free(v3->unk_14);
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

static void ov21_021DE040(UnkStruct_ov21_021DDEC8 *param0)
{
    Sprite_SetExplicitOAMMode(param0->unk_00, GX_OAM_MODE_XLU);
}

static void ov21_021DE04C(UnkStruct_ov21_021DDEC8 *param0)
{
    Sprite_SetExplicitOAMMode(param0->unk_00, GX_OAM_MODE_NORMAL);
}

static void ov21_021DE058(UnkStruct_ov21_021DDEC8 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021DDDA4 *param2, BOOL param3)
{
    ov21_021DE040(param0);

    if (ov21_021E33A4(param2->unk_08)) {
        if (param3) {
            PokedexGraphics_InitBlendTransition(&(*param1)->blendSub, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 1);
        } else {
            PokedexGraphics_InitBlendTransition(&(*param1)->blendSub, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 1);
        }
    }
}

static BOOL ov21_021DE0C4(UnkStruct_ov21_021DDEC8 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021DDDA4 *param2, BOOL param3)
{
    BOOL v0;

    if (ov21_021E33A4(param2->unk_08)) {
        v0 = PokedexGraphics_TakeBlendTransitionStep(&(*param1)->blendSub);
    } else {
        v0 = BrightnessController_IsTransitionComplete(BRIGHTNESS_SUB_SCREEN);
    }

    if (v0) {
        if (param3) {
            ov21_021DE04C(param0);
        }

        return 1;
    }

    return 0;
}

static void ov21_021DE100(UnkStruct_ov21_021DDEC8 *param0, PokedexGraphicData **param1, enum HeapID heapID)
{
    ov21_021DE13C(param1, heapID);
    ov21_021DE1A4(param0, param1, heapID);
    ov21_021DE258(param0, param1, heapID);
}

static void ov21_021DE128(UnkStruct_ov21_021DDEC8 *param0, PokedexGraphicData **param1, int param2)
{
    ov21_021DE2E0(param0);
    ov21_021DE224(param0, param1);
}

static void ov21_021DE13C(PokedexGraphicData **param0, enum HeapID heapID)
{
    void *v0;
    NNSG2dScreenData *v1;

    PokedexGraphics_LoadGraphicNarcCharacterData(*param0, entry_sub_NCGR_lz, (*param0)->bgConfig, 6, 0, 0, TRUE, heapID);

    v0 = PokedexGraphics_GetGraphicNarcTilemapData(*param0, area_sub_NSCR_lz, TRUE, &v1, heapID);

    Bg_LoadToTilemapRect((*param0)->bgConfig, 6, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_Free(v0);
    Bg_ScheduleTilemapTransfer((*param0)->bgConfig, 6);
}

static void ov21_021DE1A4(UnkStruct_ov21_021DDEC8 *param0, PokedexGraphicData **param1, int param2)
{
    PokedexGraphicData *v0 = *param1;
    NARC *v1 = PokedexGraphics_GetNARC(*param1);

    param0->unk_04[0] = SpriteResourceCollection_AddTilesFrom(v0->spriteResourceCollection[0], v1, time_day_icons_NCGR_lz, TRUE, time_day_icons_NCGR_lz + 6000, NNS_G2D_VRAM_TYPE_2DSUB, param2);

    SpriteTransfer_RequestCharAtEnd(param0->unk_04[0]);
    SpriteResource_ReleaseData(param0->unk_04[0]);

    param0->unk_04[2] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[2], v1, time_day_icons_cell_NCER_lz, TRUE, time_day_icons_cell_NCER_lz + 6000, 2, param2);
    param0->unk_04[3] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[3], v1, time_day_icons_anim_NANR_lz, TRUE, time_day_icons_anim_NANR_lz + 6000, 3, param2);
}

static void ov21_021DE224(UnkStruct_ov21_021DDEC8 *param0, PokedexGraphicData **param1)
{
    PokedexGraphicData *v0 = *param1;

    SpriteTransfer_ResetCharTransfer(param0->unk_04[0]);

    SpriteResourceCollection_Remove(v0->spriteResourceCollection[0], param0->unk_04[0]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[2], param0->unk_04[2]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[3], param0->unk_04[3]);
}

static void ov21_021DE258(UnkStruct_ov21_021DDEC8 *param0, PokedexGraphicData **param1, int param2)
{
    SpriteResourcesHeader v0;
    SpriteListTemplate v1;
    PokedexGraphicData *v2 = *param1;

    SpriteResourcesHeader_Init(&v0, time_day_icons_NCGR_lz + 6000, info_NCLR + 2100, time_day_icons_cell_NCER_lz + 6000, time_day_icons_anim_NANR_lz + 6000, 0xffffffff, 0xffffffff, FALSE, 1, v2->spriteResourceCollection[0], v2->spriteResourceCollection[1], v2->spriteResourceCollection[2], v2->spriteResourceCollection[3], NULL, NULL);

    v1.list = v2->spriteList;
    v1.resourceData = &v0;
    v1.priority = 31;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    v1.heapID = param2;
    v1.position.x = 0;
    v1.position.y = 0;
    v1.position.y += (192 << FX32_SHIFT);

    param0->unk_00 = SpriteList_Add(&v1);

    Sprite_SetAnim(param0->unk_00, 0);
}

static void ov21_021DE2E0(UnkStruct_ov21_021DDEC8 *param0)
{
    Sprite_Delete(param0->unk_00);
}

static void ov21_021DE2EC(UnkStruct_ov21_021DDE4C *param0, UnkStruct_ov21_021DDDA4 *param1, enum HeapID heapID)
{
    param0->unk_14 = Heap_Alloc(heapID, sizeof(TouchScreenHitTable) * 1);
    param0->unk_14[0].circle.code = TOUCHSCREEN_USE_CIRCLE;
    param0->unk_14[0].circle.x = param0->unk_00;
    param0->unk_14[0].circle.y = param0->unk_04;
    param0->unk_14[0].circle.r = 32;
    param0->unk_18.unk_00 = param1;
    param0->unk_18.unk_04 = param0;
    param0->unk_10 = TouchScreenActions_RegisterHandler(param0->unk_14, 1, ov21_021DE44C, &param0->unk_18, heapID);
}

static void ov21_021DE334(UnkStruct_ov21_021DDE4C *param0, UnkStruct_ov21_021DDDA4 *param1)
{
    TouchScreenActions_HandleAction(param0->unk_10);
    ov21_021DE3D0(param0, param1);

    param0->unk_14[0].circle.x = param0->unk_00;
    param0->unk_14[0].circle.y = param0->unk_04;
}

static void ov21_021DE358(UnkStruct_ov21_021DDE4C *param0, UnkStruct_ov21_021DDDA4 *param1)
{
    s32 v0;

    if (gSystem.touchHeld) {
        return;
    }

    if ((ov21_021E33BC(param1->unk_08) == 1) && (ov21_021D3998(param1->unk_04) == 2)) {
        v0 = ov21_021DCA28(param1->unk_00);

        if (gSystem.pressedKeys & PAD_KEY_LEFT) {
            v0--;

            if (v0 < 0) {
                v0 = 0;
            }

            ov21_021DCA30(param1->unk_00, v0);
            ov21_021DE5A4(param0, param1);
            param0->unk_24 = 1;
        } else if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
            v0++;

            if (v0 >= 3) {
                v0 = 3 - 1;
            }

            ov21_021DCA30(param1->unk_00, v0);
            ov21_021DE5A4(param0, param1);
            param0->unk_24 = 1;
        }
    }
}

static void ov21_021DE3D0(UnkStruct_ov21_021DDE4C *param0, UnkStruct_ov21_021DDDA4 *param1)
{
    int v0;
    int v1;

    param0->unk_24 = 0;

    if (param0->unk_20) {
        if (gSystem.touchHeld) {
            param0->unk_00 = gSystem.touchX - param0->unk_08;
            param0->unk_04 = gSystem.touchY - param0->unk_0C;

            if (param0->unk_00 < 24) {
                param0->unk_00 = 24;
            }

            if (param0->unk_00 > 246) {
                param0->unk_00 = 246;
            }

            if (param0->unk_04 < 64) {
                param0->unk_04 = 64;
            }

            v1 = ov21_021DE5DC(param0->unk_00);

            if (param0->unk_04 > (132 + v1)) {
                param0->unk_04 = (132 + v1);
            }

            v0 = param0->unk_00 / 85;

            if (v0 > 2) {
                v0 = 2;
            }

            ov21_021DCA30(param1->unk_00, v0);
        } else {
            param0->unk_20 = 0;
        }
    } else {
        ov21_021DE358(param0, param1);
    }
}

static void ov21_021DE44C(u32 param0, enum TouchScreenButtonState param1, void *param2)
{
    UnkStruct_ov21_021DDE4C_sub1 *v0 = param2;
    UnkStruct_ov21_021DDDA4 *v1 = v0->unk_00;
    UnkStruct_ov21_021DDE4C *v2 = v0->unk_04;

    switch (param1) {
    case TOUCH_BUTTON_PRESSED:
        ov21_021E33B4(v1->unk_08, 1);
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);

        v2->unk_20 = 1;
        v2->unk_08 = gSystem.touchX - v2->unk_00;
        v2->unk_0C = gSystem.touchY - v2->unk_04;
        break;
    default:
        break;
    }
}

static void ov21_021DE484(UnkStruct_ov21_021DDE4C *param0)
{
    TouchScreenActions_Free(param0->unk_10);
    Heap_Free(param0->unk_14);
    param0->unk_14 = NULL;
}

static void ov21_021DE49C(UnkStruct_ov21_021DDEC8 *param0, const UnkStruct_ov21_021DDDA4 *param1, const UnkStruct_ov21_021DDE4C *param2)
{
    VecFx32 v0;

    v0.x = param2->unk_00 << FX32_SHIFT;
    v0.y = param2->unk_04 << FX32_SHIFT;
    v0.y += (192 << FX32_SHIFT);

    Sprite_SetPosition(param0->unk_00, &v0);
    Sprite_SetAnim(param0->unk_00, ov21_021DCA28(param1->unk_00));
}

static void ov21_021DE4D4(UnkStruct_ov21_021DDEC8 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021DDDA4 *param2, enum HeapID heapID)
{
    int v0;
    int v1 = 0;
    BOOL v2;

    v0 = ov21_021DCA28(param2->unk_00);

    if ((param0->unk_18 != v0) || (param0->unk_14 == NULL) || (param0->unk_1C != param0->unk_18)) {
        if (param0->unk_1C != v0) {
            param0->unk_18 = param0->unk_1C;
            param0->unk_24 = 0;
        }

        switch (param0->unk_24) {
        case 0:
            param0->unk_1C = v0;

            if (param0->unk_14) {
                Heap_Free(param0->unk_14);
            }

            param0->unk_14 = PokedexGraphics_GetGraphicNarcPaletteData(*param1, area_morning_NCLR + param0->unk_18, &param0->unk_20, heapID);
            param0->unk_28 = 0;

            if (param0->unk_18 > v0) {
                v1 = 1;
            } else {
                v1 = 2;
            }

            param0->unk_24++;
            break;
        case 1:
            if (param0->unk_14) {
                Heap_Free(param0->unk_14);
            }

            param0->unk_14 = PokedexGraphics_GetGraphicNarcPaletteData(*param1, area_morning_NCLR + param0->unk_1C, &param0->unk_20, heapID);
            param0->unk_28 = 0;

            if (param0->unk_18 < param0->unk_1C) {
                v1 = 1;
            } else {
                v1 = 2;
            }

            param0->unk_24++;
            break;
        case 2:
            v1 = 0;
            param0->unk_24 = 0;
            param0->unk_18 = param0->unk_1C;
            break;
        }

        v2 = VramTransfer_Request(NNS_GFD_DST_2D_BG_PLTT_SUB, 2 * 32, &((u8 *)(param0->unk_20->pRawData))[(v1 * 32)], 32);
        GF_ASSERT(v2);
    }
}

static void ov21_021DE5A4(UnkStruct_ov21_021DDE4C *param0, UnkStruct_ov21_021DDDA4 *param1)
{
    int v0 = ov21_021DCA28(param1->unk_00);

    switch (v0) {
    case 0:
        param0->unk_00 = 32;
        param0->unk_04 = 128;
        break;
    case 1:
        param0->unk_00 = 128;
        param0->unk_04 = 96;
        break;
    case 2:
        param0->unk_00 = 224;
        param0->unk_04 = 128;
        break;
    }
}

static int ov21_021DE5DC(int param0)
{
    int v0;
    int v1;

    if ((param0 < 40) || ((256 - 40) < param0)) {
        return 48;
    }

    param0 -= 40;

    v0 = ((180 * 0xffff) / 360) * param0;
    v0 = v0 / (256 - (40 * 2));
    v1 = FX_Mul(FX_SinIdx((u16)v0), 48 << FX32_SHIFT);
    v1 >>= FX32_SHIFT;
    v1 = 48 - v1;

    return v1;
}

static void ov21_021DE630(PokedexGraphicData **param0, const UnkStruct_ov21_021DDE4C *param1, const UnkStruct_ov21_021DDDA4 *param2)
{
    PokedexGraphicData *v0 = *param0;

    if (ov21_021E33BC(param2->unk_08) == 1) {
        if (param1->unk_24 == 0) {
            PokedexGraphics_TransformCursor(v0, param1->unk_00, param1->unk_04, 32, 32);
        } else {
            PokedexGraphics_SetCursorPosAndSize(v0, param1->unk_00, param1->unk_04, 32, 32);
        }
    }
}
