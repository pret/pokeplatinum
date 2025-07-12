#include "applications/pokedex/ov21_021E8484.h"

#include <nitro.h>
#include <string.h>

#include "applications/pokedex/ov21_021DF734.h"
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
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "system.h"
#include "touch_screen.h"
#include "touch_screen_actions.h"
#include "unk_02012744.h"
#include "vram_transfer.h"

#include "res/text/bank/pokedex.h"

typedef struct {
    int *unk_00;
    PokedexSortData *unk_04;
    UnkStruct_ov21_021E68F4 *unk_08;
    UnkStruct_ov21_021E68F4 *unk_0C;
} UnkStruct_ov21_021E8570;

typedef struct {
    void *unk_00;
    void *unk_04;
} UnkStruct_ov21_021E88E8;

typedef struct {
    TouchScreenActions *unk_00;
    TouchScreenHitTable *unk_04;
    UnkStruct_ov21_021E88E8 unk_08;
    int unk_10[1];
    BOOL unk_14;
} UnkStruct_ov21_021E88B0;

typedef struct {
    Sprite *unk_00[1];
    PokedexTextData *unk_04[1];
    SpriteResource *unk_08[4];
    Sprite *unk_18[4];
    int unk_28[1];
    void *unk_2C[1];
} UnkStruct_ov21_021E8794;

static UnkStruct_ov21_021E8570 *ov21_021E84FC(enum HeapId heapID, PokedexApp *param1);
static PokedexGraphicData **ov21_021E8544(enum HeapId heapID, PokedexApp *param1);
static UnkStruct_ov21_021D4660 *ov21_021E856C(enum HeapId heapID, PokedexApp *param1);
static void ov21_021E8570(UnkStruct_ov21_021E8570 *param0);
static void ov21_021E8584(PokedexGraphicData **param0);
static void ov21_021E8598(UnkStruct_ov21_021D4660 *param0);
static int ov21_021E859C(void);
static int ov21_021E85A0(PokedexDataManager *dataMan, void *data);
static int ov21_021E85DC(PokedexDataManager *dataMan, void *data);
static int ov21_021E8640(PokedexDataManager *dataMan, void *data);
static int ov21_021E8654(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static int ov21_021E86DC(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static int ov21_021E870C(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static void ov21_021E8794(UnkStruct_ov21_021E8794 *param0);
static void ov21_021E87AC(UnkStruct_ov21_021E8794 *param0);
static void ov21_021E87C4(UnkStruct_ov21_021E8794 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021E8570 *param2, BOOL param3);
static BOOL ov21_021E8830(UnkStruct_ov21_021E8794 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021E8570 *param2, BOOL param3);
static void ov21_021E886C(UnkStruct_ov21_021E88B0 *param0, UnkStruct_ov21_021E8570 *param1, enum HeapId heapID);
static void ov21_021E88B0(UnkStruct_ov21_021E88B0 *param0);
static void ov21_021E88B8(UnkStruct_ov21_021E88B0 *param0, UnkStruct_ov21_021E8570 *param1);
static void ov21_021E88D0(UnkStruct_ov21_021E88B0 *param0);
static void ov21_021E88E8(u32 param0, enum TouchScreenButtonState param1, void *param2);
static void ov21_021E8C94(Sprite *param0, PokedexTextData *textData, int param2, int param3, int param4);
static void ov21_021E8CBC(PokedexGraphicData **param0, UnkStruct_ov21_021E8794 *param1, const UnkStruct_ov21_021E88B0 *param2, int param3);
static void ov21_021E8D3C(const UnkStruct_ov21_021E8570 *param0);
static void ov21_021E8CF0(UnkStruct_ov21_021E88B0 *param0, UnkStruct_ov21_021E8570 *param1);
static void ov21_021E8D04(PokedexGraphicData **param0, const UnkStruct_ov21_021E8570 *param1);
static void ov21_021E8D28(PokedexGraphicData **param0, int param1, int param2, int param3, int param4);
static void ov21_021E891C(UnkStruct_ov21_021E8794 *param0, PokedexGraphicData **param1, int heapID);
static void ov21_021E894C(UnkStruct_ov21_021E8794 *param0, PokedexGraphicData **param1, int heapID);
static void ov21_021E898C(PokedexGraphicData **param0, int heapID);
static void ov21_021E89F4(UnkStruct_ov21_021E8794 *param0, PokedexGraphicData **param1, int param2);
static void ov21_021E8A74(UnkStruct_ov21_021E8794 *param0, PokedexGraphicData **param1);
static void ov21_021E8AA8(UnkStruct_ov21_021E8794 *param0, PokedexGraphicData **param1, int param2);
static void ov21_021E8B34(UnkStruct_ov21_021E8794 *param0);
static void ov21_021E8B40(UnkStruct_ov21_021E8794 *param0, PokedexGraphicData **param1, int param2);
static void ov21_021E8BDC(UnkStruct_ov21_021E8794 *param0, PokedexGraphicData **param1);

void ov21_021E8484(UnkStruct_ov21_021E68F4 *param0, PokedexApp *param1, enum HeapId heapID)
{
    UnkStruct_ov21_021E8570 *v0;
    PokedexGraphicData **v1;
    UnkStruct_ov21_021D4660 *v2;

    v0 = ov21_021E84FC(heapID, param1);
    v1 = ov21_021E8544(heapID, param1);
    v2 = ov21_021E856C(heapID, param1);

    param0->pageData = v0;
    param0->pageGraphics = v1;
    param0->unk_20 = v2;
    param0->unk_24 = ov21_021E859C();

    param0->dataFunc[0] = ov21_021E85A0;
    param0->dataFunc[1] = ov21_021E85DC;
    param0->dataFunc[2] = ov21_021E8640;
    param0->graphicsFunc[0] = ov21_021E8654;
    param0->graphicsFunc[1] = ov21_021E86DC;
    param0->graphicsFunc[2] = ov21_021E870C;
}

void ov21_021E84E4(UnkStruct_ov21_021E68F4 *param0)
{
    ov21_021E8570(param0->pageData);
    ov21_021E8584(param0->pageGraphics);
    ov21_021E8598(param0->unk_20);
}

static UnkStruct_ov21_021E8570 *ov21_021E84FC(enum HeapId heapID, PokedexApp *param1)
{
    UnkStruct_ov21_021E8570 *v0 = Heap_Alloc(heapID, sizeof(UnkStruct_ov21_021E8570));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021E8570));

    v0->unk_00 = ov21_021D13A0(param1);
    v0->unk_08 = ov21_021D1430(param1, 3);
    v0->unk_0C = ov21_021D1410(param1, 3);
    v0->unk_04 = ov21_021D13EC(param1);

    return v0;
}

static PokedexGraphicData **ov21_021E8544(enum HeapId heapID, PokedexApp *param1)
{
    PokedexGraphicData **v0;
    UnkStruct_ov21_021E68F4 *v1;

    v0 = Heap_Alloc(heapID, sizeof(PokedexGraphicData **));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(PokedexGraphicData **));

    *v0 = ov21_021D13FC(param1);

    return v0;
}

static UnkStruct_ov21_021D4660 *ov21_021E856C(enum HeapId heapID, PokedexApp *param1)
{
    return NULL;
}

static void ov21_021E8570(UnkStruct_ov21_021E8570 *param0)
{
    GF_ASSERT(param0);
    Heap_Free(param0);
}

static void ov21_021E8584(PokedexGraphicData **param0)
{
    GF_ASSERT(param0);
    Heap_Free(param0);
}

static void ov21_021E8598(UnkStruct_ov21_021D4660 *param0)
{
    return;
}

static int ov21_021E859C(void)
{
    return 0;
}

static int ov21_021E85A0(PokedexDataManager *dataMan, void *data)
{
    UnkStruct_ov21_021E8570 *v0 = data;
    UnkStruct_ov21_021E88B0 *v1 = dataMan->pageData;
    int v2;

    v1 = Heap_Alloc(dataMan->heapID, sizeof(UnkStruct_ov21_021E88B0));
    memset(v1, 0, sizeof(UnkStruct_ov21_021E88B0));

    for (v2 = 0; v2 < 1; v2++) {
        v1->unk_10[v2] = (3 + 1);
    }

    ov21_021E886C(v1, v0, dataMan->heapID);
    ov21_021E88B8(v1, v0);

    dataMan->pageData = v1;

    return 1;
}

static int ov21_021E85DC(PokedexDataManager *dataMan, void *data)
{
    UnkStruct_ov21_021E8570 *v0 = data;
    UnkStruct_ov21_021E88B0 *v1 = dataMan->pageData;

    if (dataMan->exit == 1) {
        return 1;
    }

    if (dataMan->unchanged == 1) {
        return 0;
    }

    if (ov21_021E33AC(v0->unk_08)) {
        ov21_021E88B0(v1);

        if (ov21_021E33BC(v0->unk_08) && (ov21_021D3998(v0->unk_04) == 2)) {
            ov21_021E8CF0(v1, v0);
        }

        ov21_021E88B8(v1, v0);

        if (v1->unk_14) {
            ov21_021E8D3C(v0);
            v1->unk_14 = 0;
        }
    }

    return 0;
}

static int ov21_021E8640(PokedexDataManager *dataMan, void *data)
{
    UnkStruct_ov21_021E8570 *v0 = data;
    UnkStruct_ov21_021E88B0 *v1 = dataMan->pageData;

    ov21_021E88D0(v1);
    Heap_Free(v1);

    return 1;
}

static int ov21_021E8654(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const UnkStruct_ov21_021E8570 *v0 = data;
    const UnkStruct_ov21_021E88B0 *v1 = dataMan->pageData;
    PokedexGraphicData **v2 = graphics;
    UnkStruct_ov21_021E8794 *v3 = graphicsMan->pageGraphics;

    switch (graphicsMan->state) {
    case 0:
        graphicsMan->pageGraphics = Heap_Alloc(graphicsMan->heapID, sizeof(UnkStruct_ov21_021E8794));
        memset(graphicsMan->pageGraphics, 0, sizeof(UnkStruct_ov21_021E8794));
        graphicsMan->state++;
        break;
    case 1:
        ov21_021E891C(v3, v2, graphicsMan->heapID);
        ov21_021E87C4(v3, v2, v0, 1);
        graphicsMan->state++;
        break;
    case 2:
        if (ov21_021E8830(v3, v2, v0, 1)) {
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

static int ov21_021E86DC(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const UnkStruct_ov21_021E8570 *v0 = data;
    const UnkStruct_ov21_021E88B0 *v1 = dataMan->pageData;
    PokedexGraphicData **v2 = graphics;
    UnkStruct_ov21_021E8794 *v3 = graphicsMan->pageGraphics;

    if (ov21_021E33AC(v0->unk_08)) {
        ov21_021E8CBC(v2, v3, v1, graphicsMan->heapID);
        ov21_021E8D04(v2, v0);
    }

    return 0;
}

static int ov21_021E870C(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const UnkStruct_ov21_021E8570 *v0 = data;
    const UnkStruct_ov21_021E88B0 *v1 = dataMan->pageData;
    PokedexGraphicData **v2 = graphics;
    UnkStruct_ov21_021E8794 *v3 = graphicsMan->pageGraphics;

    switch (graphicsMan->state) {
    case 0:
        PokedexGraphics_SetStaticCursorSize(&(*v2)->cursorGraphics, 1);
        ov21_021E87C4(v3, v2, v0, 0);
        graphicsMan->state++;
        break;
    case 1:
        if (ov21_021E8830(v3, v2, v0, 0)) {
            graphicsMan->state++;
        }
        break;
    case 2:
        ov21_021E894C(v3, v2, graphicsMan->heapID);
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

static void ov21_021E8794(UnkStruct_ov21_021E8794 *param0)
{
    int v0;

    for (v0 = 0; v0 < 1; v0++) {
        Sprite_SetExplicitOAMMode(param0->unk_00[v0], GX_OAM_MODE_XLU);
        sub_02012AF0(param0->unk_04[v0]->fontOAM, GX_OAM_MODE_XLU);
    }
}

static void ov21_021E87AC(UnkStruct_ov21_021E8794 *param0)
{
    int v0;

    for (v0 = 0; v0 < 1; v0++) {
        Sprite_SetExplicitOAMMode(param0->unk_00[v0], GX_OAM_MODE_NORMAL);
        sub_02012AF0(param0->unk_04[v0]->fontOAM, GX_OAM_MODE_NORMAL);
    }
}

static void ov21_021E87C4(UnkStruct_ov21_021E8794 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021E8570 *param2, BOOL param3)
{
    ov21_021E8794(param0);

    if (ov21_021E33A4(param2->unk_08)) {
        if (param3) {
            PokedexGraphics_InitBlendTransition(&(*param1)->blendSub, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 1);
        } else {
            PokedexGraphics_InitBlendTransition(&(*param1)->blendSub, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 1);
        }
    }
}

static BOOL ov21_021E8830(UnkStruct_ov21_021E8794 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021E8570 *param2, BOOL param3)
{
    BOOL v0;

    if (ov21_021E33A4(param2->unk_08)) {
        v0 = PokedexGraphics_TakeBlendTransitionStep(&(*param1)->blendSub);
    } else {
        v0 = BrightnessController_IsTransitionComplete(BRIGHTNESS_SUB_SCREEN);
    }

    if (v0) {
        if (param3) {
            ov21_021E87AC(param0);
        }

        return 1;
    }

    return 0;
}

static void ov21_021E886C(UnkStruct_ov21_021E88B0 *param0, UnkStruct_ov21_021E8570 *param1, enum HeapId heapID)
{
    param0->unk_04 = Heap_Alloc(heapID, sizeof(TouchScreenHitTable) * 1);

    ov21_021D154C(&param0->unk_04[0], 144 - (80 / 2), 144 + (80 / 2), 128 - (240 / 2), 128 + (240 / 2));

    param0->unk_08.unk_00 = param1;
    param0->unk_08.unk_04 = param0;
    param0->unk_00 = TouchScreenActions_RegisterHandler(param0->unk_04, 1, ov21_021E88E8, &param0->unk_08, heapID);
}

static void ov21_021E88B0(UnkStruct_ov21_021E88B0 *param0)
{
    int v0;

    for (v0 = 0; v0 < 1; v0++) {
        param0->unk_10[v0] = 3;
    }
}

static void ov21_021E88B8(UnkStruct_ov21_021E88B0 *param0, UnkStruct_ov21_021E8570 *param1)
{
    TouchScreenActions_HandleAction(param0->unk_00);

    if (param0->unk_14) {
        param0->unk_10[0] = 2;
    }
}

static void ov21_021E88D0(UnkStruct_ov21_021E88B0 *param0)
{
    TouchScreenActions_Free(param0->unk_00);
    Heap_Free(param0->unk_04);

    param0->unk_04 = NULL;
}

static void ov21_021E88E8(u32 param0, enum TouchScreenButtonState param1, void *param2)
{
    UnkStruct_ov21_021E88E8 *v0 = param2;
    UnkStruct_ov21_021E8570 *v1 = v0->unk_00;
    UnkStruct_ov21_021E88B0 *v2 = v0->unk_04;

    v2->unk_10[param0] = param1;

    switch (param1) {
    case TOUCH_BUTTON_PRESSED:
        switch (param0) {
        case 0:
            ov21_021E33B4(v1->unk_08, 1);
            v2->unk_14 = 1;
            break;
        default:
            break;
        }
        break;
    case TOUCH_BUTTON_HELD:
        switch (param0) {
        case 0:
            v2->unk_14 = 1;
            break;
        default:
            break;
        }
        break;
    default:
        break;
    }
}

static void ov21_021E891C(UnkStruct_ov21_021E8794 *param0, PokedexGraphicData **param1, int heapID)
{
    ov21_021E898C(param1, heapID);
    ov21_021E89F4(param0, param1, heapID);
    ov21_021E8AA8(param0, param1, heapID);
    ov21_021E8B40(param0, param1, heapID);
}

static void ov21_021E894C(UnkStruct_ov21_021E8794 *param0, PokedexGraphicData **param1, int heapID)
{
    int v0;

    PokedexGraphics_LoadGraphicNarcPaletteData(*param1, 9, 4, 4 * 32, 32, heapID);
    ov21_021E8B34(param0);
    ov21_021E8BDC(param0, param1);
    ov21_021E8A74(param0, param1);

    for (v0 = 0; v0 < 1; v0++) {
        if (param0->unk_2C[v0]) {
            Heap_Free(param0->unk_2C[v0]);
        }
    }
}

static void ov21_021E898C(PokedexGraphicData **param0, int heapID)
{
    void *v0;
    NNSG2dScreenData *v1;

    PokedexGraphics_LoadGraphicNarcCharacterData(*param0, 34, (*param0)->bgConfig, 6, 0, 0, 1, heapID);

    v0 = PokedexGraphics_GetGraphicNarcScreenData(*param0, 58, 1, &v1, heapID);

    Bg_LoadToTilemapRect((*param0)->bgConfig, 6, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_Free(v0);
    Bg_ScheduleTilemapTransfer((*param0)->bgConfig, 6);
}

static void ov21_021E89F4(UnkStruct_ov21_021E8794 *param0, PokedexGraphicData **param1, int param2)
{
    PokedexGraphicData *v0 = *param1;
    NARC *v1 = PokedexGraphics_GetNARC(v0);

    param0->unk_08[0] = SpriteResourceCollection_AddTilesFrom(v0->spriteResourceCollection[0], v1, 102, 1, 102 + 13000, NNS_G2D_VRAM_TYPE_2DSUB, param2);

    SpriteTransfer_RequestCharAtEnd(param0->unk_08[0]);
    SpriteResource_ReleaseData(param0->unk_08[0]);

    param0->unk_08[2] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[2], v1, 100, 1, 100 + 13000, 2, param2);
    param0->unk_08[3] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[3], v1, 101, 1, 101 + 13000, 3, param2);
}

static void ov21_021E8A74(UnkStruct_ov21_021E8794 *param0, PokedexGraphicData **param1)
{
    PokedexGraphicData *v0 = *param1;

    SpriteTransfer_ResetCharTransfer(param0->unk_08[0]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[0], param0->unk_08[0]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[2], param0->unk_08[2]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[3], param0->unk_08[3]);
}

static void ov21_021E8AA8(UnkStruct_ov21_021E8794 *param0, PokedexGraphicData **param1, int param2)
{
    SpriteResourcesHeader v0;
    SpriteListTemplate v1;
    PokedexGraphicData *v2 = *param1;
    int v3;

    SpriteResourcesHeader_Init(&v0, 102 + 13000, 11 + 2100, 100 + 13000, 101 + 13000, 0xffffffff, 0xffffffff, 0, 2, v2->spriteResourceCollection[0], v2->spriteResourceCollection[1], v2->spriteResourceCollection[2], v2->spriteResourceCollection[3], NULL, NULL);

    v1.list = v2->spriteList;
    v1.resourceData = &v0;
    v1.priority = 31;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    v1.heapID = param2;

    v1.position.x = 128 << FX32_SHIFT;
    v1.position.y = 144 << FX32_SHIFT;
    v1.position.y += (192 << FX32_SHIFT);

    param0->unk_00[0] = SpriteList_Add(&v1);

    Sprite_SetAnim(param0->unk_00[0], 2);
}

static void ov21_021E8B34(UnkStruct_ov21_021E8794 *param0)
{
    int v0;

    for (v0 = 0; v0 < 1; v0++) {
        Sprite_Delete(param0->unk_00[v0]);
    }
}

static void ov21_021E8B40(UnkStruct_ov21_021E8794 *param0, PokedexGraphicData **param1, int param2)
{
    Window *v0;
    PokedexDisplayBox displayBox;
    SpriteResource *v2;
    PokedexGraphicData *v3 = *param1;
    int v4;
    u32 v5;

    GF_ASSERT(param0->unk_00[0]);

    v2 = SpriteResourceCollection_Find(v3->spriteResourceCollection[1], 11 + 2100);

    displayBox.textMan = v3->textMan;
    displayBox.paletteProxy = SpriteTransfer_GetPaletteProxy(v2, NULL);
    displayBox.y = -8;
    displayBox.spriteResourcePriority = 2;
    displayBox.spriteListPriority = 0;
    displayBox.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    displayBox.heapID = param2;

    v4 = PlttTransfer_GetPlttOffset(displayBox.paletteProxy, NNS_G2D_VRAM_TYPE_2DSUB);
    v0 = PokedexTextManager_NewWindow(v3->textMan, 16, 2);
    v5 = PokedexTextManager_DisplayMessage(v3->textMan, v0, TEXT_BANK_POKEDEX, pl_msg_pokedex_anotherform, 0, 0);

    displayBox.x = -(v5 / 2);
    displayBox.window = v0;
    displayBox.sprite = param0->unk_00[0];

    param0->unk_04[0] = PokedexTextManager_NextTextData(&displayBox);

    sub_02012A60(param0->unk_04[0]->fontOAM, v4 + 4);
    PokedexTextManager_FreeWindow(v0);
}

static void ov21_021E8BDC(UnkStruct_ov21_021E8794 *param0, PokedexGraphicData **param1)
{
    int v0;

    for (v0 = 0; v0 < 1; v0++) {
        PokedexTextManager_FreeTextData(param0->unk_04[v0]);
    }
}

static void ov21_021E8BE8(PokedexGraphicData **param0, Sprite *param1, PokedexTextData *textData, int param3, int param4, int param5, int *param6, int heapID, int param8, int param9, void **param10)
{
    int v0;
    NNSG2dPaletteData *v1;
    BOOL v2;
    BOOL v3 = 0;
    int v4;

    ov21_021D144C(param1, param3);
    ov21_021E8C94(param1, textData, param4, param8, param9);

    v0 = Sprite_GetAnimFrame(param1);

    switch (v0) {
    case 0:
    case 1:
        if (*param6 != 0) {
            v3 = 1;
            v4 = 9;
            *param6 = 0;
        }
        break;
    case 2:
        if (*param6 != 1) {
            v3 = 1;
            v4 = 10;
            *param6 = 1;
        }
        break;
    case 3:
        if (*param6 != 2) {
            v3 = 1;
            v4 = 8;
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

static void ov21_021E8C94(Sprite *param0, PokedexTextData *textData, int param2, int param3, int param4)
{
    int v0;

    ov21_021D1498(param0, textData, param2);
    v0 = Sprite_GetAnimFrame(param0);

    if (v0 < 2) {
        sub_02012AC0(textData->fontOAM, param3);
    } else {
        sub_02012AC0(textData->fontOAM, param4);
    }
}

static void ov21_021E8CBC(PokedexGraphicData **param0, UnkStruct_ov21_021E8794 *param1, const UnkStruct_ov21_021E88B0 *param2, int param3)
{
    int v0;
    int v1;

    for (v0 = 0; v0 < 1; v0++) {
        v1 = 4;

        ov21_021E8BE8(param0, param1->unk_00[v0], param1->unk_04[v0], param2->unk_10[v0], -8, v1, &param1->unk_28[v0], param3, 4, 1, &param1->unk_2C[v0]);
    }
}

static void ov21_021E8CF0(UnkStruct_ov21_021E88B0 *param0, UnkStruct_ov21_021E8570 *param1)
{
    if (gSystem.heldKeys & PAD_BUTTON_A) {
        param0->unk_14 = 1;
    }
}

static void ov21_021E8D04(PokedexGraphicData **param0, const UnkStruct_ov21_021E8570 *param1)
{
    if (ov21_021E33BC(param1->unk_08) == 1) {
        ov21_021E8D28(param0, 128, 144, 228, 64);
    }
}

static void ov21_021E8D28(PokedexGraphicData **param0, int param1, int param2, int param3, int param4)
{
    PokedexGraphicData *v0 = *param0;
    PokedexGraphics_TransformCursor(v0, param1, param2, param3, param4);
}

static void ov21_021E8D3C(const UnkStruct_ov21_021E8570 *param0)
{
    ov21_021DF7A0(param0->unk_0C, 1);
}
