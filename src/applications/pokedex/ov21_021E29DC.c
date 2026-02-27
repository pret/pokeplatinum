#include "applications/pokedex/ov21_021E29DC.h"

#include <nitro.h>
#include <string.h>

#include "applications/pokedex/infomain.h"
#include "applications/pokedex/infomain_foreign.h"
#include "applications/pokedex/ov21_021D4340.h"
#include "applications/pokedex/ov21_021DC9BC.h"
#include "applications/pokedex/ov21_021E3FFC.h"
#include "applications/pokedex/pokedex_app.h"
#include "applications/pokedex/pokedex_data_manager.h"
#include "applications/pokedex/pokedex_graphics.h"
#include "applications/pokedex/pokedex_graphics_manager.h"
#include "applications/pokedex/pokedex_main.h"
#include "applications/pokedex/pokedex_panel.h"
#include "applications/pokedex/pokedex_sort.h"
#include "applications/pokedex/pokedex_sort_data.h"
#include "applications/pokedex/pokedex_text_manager.h"
#include "applications/pokedex/struct_ov21_021D4660.h"
#include "applications/pokedex/struct_ov21_021D5B68.h"
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

#include "res/graphics/pokedex/zukan.naix"
#include "res/text/bank/pokedex.h"

typedef struct {
    int *unk_00;
    PokedexSortData *unk_04;
    int unk_08;
    UnkStruct_ov21_021D5B68 *unk_0C;
    InfoMainState *unk_10;
    PokedexScreenManager *unk_14;
    PokedexScreenManager *unk_18;
    PokedexScreenManager *unk_1C;
    PokedexScreenManager *unk_20;
    PokedexScreenManager *unk_24;
    BOOL unk_28;
    BOOL unk_2C;
    BOOL unk_30;
} UnkStruct_ov21_021E2BA8;

typedef struct {
    int unk_00;
    PokedexTextData *unk_04[5];
    SpriteResource *unk_18[4];
} UnkStruct_ov21_021E326C;

typedef struct {
    int *unk_00;
    UnkStruct_ov21_021E2BA8 *unk_04;
    PokedexSortData *unk_08;
    int unk_0C[6];
    BOOL unk_24;
    int unk_28;
    BOOL unk_2C;
    BOOL unk_30;
} UnkStruct_ov21_021E342C;

typedef struct {
    void *unk_00;
    void *unk_04;
} UnkStruct_ov21_021E37CC;

typedef struct {
    TouchScreenActions *unk_00;
    TouchScreenHitTable *unk_04;
    UnkStruct_ov21_021E37CC unk_08;
    int unk_10;
    PokedexPanelData *unk_14;
    PokedexCursorData *unk_18;
} UnkStruct_ov21_021E37B4;

typedef struct {
    Sprite *unk_00[6];
    SpriteResource *unk_18[4];
} UnkStruct_ov21_021E3900;

static UnkStruct_ov21_021E2BA8 *ov21_021E2A5C(enum HeapID heapID, PokedexApp *param1);
static PokedexGraphicData **ov21_021E2AE0(enum HeapID heapID, PokedexApp *param1);
static UnkStruct_ov21_021D4660 *ov21_021E2B08(enum HeapID heapID, PokedexApp *param1);
static void ov21_021E2BA8(UnkStruct_ov21_021E2BA8 *param0);
static void ov21_021E2BBC(PokedexGraphicData **param0);
static void ov21_021E2BD0(UnkStruct_ov21_021D4660 *param0);
static int ov21_021E2C20(void);
static int ov21_021E2C24(PokedexDataManager *dataMan, void *data);
static int ov21_021E2C2C(PokedexDataManager *dataMan, void *data);
static int ov21_021E2C5C(PokedexDataManager *dataMan, void *data);
static int ov21_021E2C64(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static int ov21_021E2D10(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static int ov21_021E2D38(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static void ov21_021E3320(UnkStruct_ov21_021E2BA8 *param0);
static BOOL ov21_021E2EC0(int param0);
static BOOL ov21_021E2EC4(UnkStruct_ov21_021E2BA8 *param0, int param1, int param2);
static void ov21_021E2E10(UnkStruct_ov21_021E2BA8 *param0);
static void ov21_021E2E00(UnkStruct_ov21_021E2BA8 *param0);
static void ov21_021E3080(PokedexGraphicData **param0, UnkStruct_ov21_021E326C *param1, const UnkStruct_ov21_021E2BA8 *param2, enum HeapID heapID);
static void ov21_021E30BC(PokedexGraphicData **param0, UnkStruct_ov21_021E326C *param1);
static void ov21_021E30E4(PokedexGraphicData **param0, const UnkStruct_ov21_021E2BA8 *param1, enum HeapID heapID);
static void ov21_021E3178(PokedexGraphicData **param0, UnkStruct_ov21_021E326C *param1, int param2);
static void ov21_021E3224(PokedexGraphicData **param0, UnkStruct_ov21_021E326C *param1);
static void ov21_021E3268(PokedexGraphicData **param0, UnkStruct_ov21_021E326C *param1, int param2);
static void ov21_021E326C(UnkStruct_ov21_021E326C *param0);
static void ov21_021E331C(UnkStruct_ov21_021E326C *param0, int param1);
static void ov21_021E3270(PokedexGraphicData **param0, UnkStruct_ov21_021E326C *param1, int param2);
static void ov21_021E3304(UnkStruct_ov21_021E326C *param0);
static void ov21_021E3FC0(UnkStruct_ov21_021E326C *param0, int param1, int param2);
static void ov21_021E3BE0(UnkStruct_ov21_021E326C *param0);
static void ov21_021E3BFC(UnkStruct_ov21_021E326C *param0);
static UnkStruct_ov21_021E342C *ov21_021E33C4(enum HeapID heapID, PokedexApp *param1);
static PokedexGraphicData **ov21_021E3400(enum HeapID heapID, PokedexApp *param1);
static UnkStruct_ov21_021D4660 *ov21_021E3428(enum HeapID heapID, PokedexApp *param1);
static void ov21_021E342C(UnkStruct_ov21_021E342C *param0);
static void ov21_021E3440(PokedexGraphicData **param0);
static void ov21_021E3454(UnkStruct_ov21_021D4660 *param0);
static int ov21_021E3458(void);
static int ov21_021E345C(PokedexDataManager *dataMan, void *data);
static int ov21_021E34AC(PokedexDataManager *dataMan, void *data);
static int ov21_021E3520(PokedexDataManager *dataMan, void *data);
static int ov21_021E3540(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static int ov21_021E35D0(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static int ov21_021E3604(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static BOOL ov21_021E3C18(UnkStruct_ov21_021E342C *param0, int param1, int param2);
static void ov21_021E3688(UnkStruct_ov21_021E37B4 *param0, UnkStruct_ov21_021E342C *param1, enum HeapID heapID);
static void ov21_021E3724(UnkStruct_ov21_021E342C *param0);
static void ov21_021E3734(UnkStruct_ov21_021E37B4 *param0, UnkStruct_ov21_021E342C *param1);
static void ov21_021E37B4(UnkStruct_ov21_021E37B4 *param0);
static void ov21_021E37CC(u32 param0, enum TouchScreenButtonState param1, void *param2);
static void ov21_021E3C6C(UnkStruct_ov21_021E37B4 *param0, UnkStruct_ov21_021E342C *param1, enum HeapID heapID);
static void ov21_021E3D48(UnkStruct_ov21_021E37B4 *param0, UnkStruct_ov21_021E342C *param1);
static void ov21_021E3E74(UnkStruct_ov21_021E37B4 *param0);
static void ov21_021E3E8C(UnkStruct_ov21_021E37B4 *param0, UnkStruct_ov21_021E342C *param1);
static void ov21_021E3EEC(UnkStruct_ov21_021E37B4 *param0, UnkStruct_ov21_021E342C *param1);
static void ov21_021E3F2C(PokedexGraphicData **param0, const UnkStruct_ov21_021E37B4 *param1, const UnkStruct_ov21_021E342C *param2);
static void ov21_021E3F48(PokedexGraphicData **param0, const UnkStruct_ov21_021E37B4 *param1, const UnkStruct_ov21_021E342C *param2);
static void ov21_021E3F88(PokedexGraphicData **param0, const UnkStruct_ov21_021E37B4 *param1);
static BOOL ov21_021E3F98(PokedexGraphicData **param0, BOOL param1);
static void ov21_021E3C2C(UnkStruct_ov21_021E342C *param0);
static void ov21_021E3C34(UnkStruct_ov21_021E342C *param0);
static void ov21_021E3C64(UnkStruct_ov21_021E342C *param0);
static void ov21_021E3900(UnkStruct_ov21_021E3900 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021E342C *param2, enum HeapID heapID);
static void ov21_021E393C(UnkStruct_ov21_021E3900 *param0, PokedexGraphicData **param1);
static void ov21_021E3960(PokedexGraphicData **param0, const UnkStruct_ov21_021E342C *param1, enum HeapID heapID);
static void ov21_021E39FC(UnkStruct_ov21_021E3900 *param0, PokedexGraphicData **param1, int param2);
static void ov21_021E3AAC(UnkStruct_ov21_021E3900 *param0, PokedexGraphicData **param1);
static void ov21_021E3AF0(UnkStruct_ov21_021E3900 *param0, PokedexGraphicData **param1, int param2);
static void ov21_021E3BC0(UnkStruct_ov21_021E3900 *param0);
static void ov21_021E3FE4(UnkStruct_ov21_021E3900 *param0, const UnkStruct_ov21_021E342C *param1);
static void ov21_021E3BD8(UnkStruct_ov21_021E3900 *param0, PokedexGraphicData **param1, int param2);
static void ov21_021E3BDC(UnkStruct_ov21_021E3900 *param0);

void ov21_021E29DC(PokedexScreenManager *param0, PokedexApp *param1, enum HeapID heapID)
{
    UnkStruct_ov21_021E2BA8 *v0;
    PokedexGraphicData **v1;
    UnkStruct_ov21_021D4660 *v2;

    v0 = ov21_021E2A5C(heapID, param1);
    v1 = ov21_021E2AE0(heapID, param1);
    v2 = ov21_021E2B08(heapID, param1);

    param0->pageData = v0;
    param0->pageGraphics = v1;
    param0->screenStates = v2;
    param0->numStates = ov21_021E2C20();

    param0->dataFunc[0] = ov21_021E2C24;
    param0->dataFunc[1] = ov21_021E2C2C;
    param0->dataFunc[2] = ov21_021E2C5C;
    param0->graphicsFunc[0] = ov21_021E2C64;
    param0->graphicsFunc[1] = ov21_021E2D10;
    param0->graphicsFunc[2] = ov21_021E2D38;
}

void ov21_021E2A3C(PokedexScreenManager *param0)
{
    ov21_021E2BA8(param0->pageData);
    ov21_021E2BBC(param0->pageGraphics);
    ov21_021E2BD0(param0->screenStates);
}

BOOL ov21_021E2A54(const PokedexScreenManager *param0)
{
    const UnkStruct_ov21_021E2BA8 *v0 = param0->pageData;
    return v0->unk_28;
}

static UnkStruct_ov21_021E2BA8 *ov21_021E2A5C(enum HeapID heapID, PokedexApp *param1)
{
    UnkStruct_ov21_021E2BA8 *v0;
    PokedexScreenManager *v1;

    v0 = Heap_Alloc(heapID, sizeof(UnkStruct_ov21_021E2BA8));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021E2BA8));

    v0->unk_00 = ov21_021D13B4(param1);
    v0->unk_04 = PokedexMain_GetSortData(param1);
    v0->unk_08 = 0;

    v1 = ov21_021D1410(param1, 2);
    v0->unk_10 = v1->pageData;

    v1 = ov21_021D1410(param1, 3);
    v0->unk_14 = v1;

    v1 = ov21_021D1410(param1, 4);
    v0->unk_18 = v1;

    v1 = ov21_021D1410(param1, 6);
    v0->unk_1C = v1;

    v1 = ov21_021D1410(param1, 7);
    v0->unk_20 = v1;

    v1 = ov21_021D1430(param1, 6);
    v0->unk_24 = v1;

    v1 = ov21_021D1410(param1, 0);
    v0->unk_0C = v1->pageData;

    v0->unk_2C = 1;
    v0->unk_30 = 1;

    return v0;
}

static PokedexGraphicData **ov21_021E2AE0(enum HeapID heapID, PokedexApp *param1)
{
    PokedexGraphicData **v0;
    PokedexScreenManager *v1;

    v0 = Heap_Alloc(heapID, sizeof(PokedexGraphicData **));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(PokedexGraphicData **));

    *v0 = PokedexMain_GetGraphicData(param1);

    return v0;
}

static UnkStruct_ov21_021D4660 *ov21_021E2B08(enum HeapID heapID, PokedexApp *param1)
{
    UnkStruct_ov21_021D4660 *v0;
    int v1 = ov21_021E2C20();

    v0 = Heap_Alloc(heapID, sizeof(UnkStruct_ov21_021D4660) * v1);

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D4660) * v1);

    ov21_021D47F0(heapID, &v0[0], param1, (0x1 << 1));
    ov21_021D4A94(heapID, &v0[1], param1, (0x1 << 2));
    ov21_021D48B8(heapID, &v0[2], param1, (0x1 << 3));
    ov21_021D491C(heapID, &v0[3], param1, (0x1 << 4));
    ov21_021D4980(heapID, &v0[4], param1, (0x1 << 5));
    ov21_021D49E4(heapID, &v0[5], param1, (0x1 << 6));
    ov21_021D4A3C(heapID, &v0[6], param1, (0x1 << 7));
    ov21_021D4B50(heapID, &v0[7], param1, (0x1 << 8));

    return v0;
}

static void ov21_021E2BA8(UnkStruct_ov21_021E2BA8 *param0)
{
    GF_ASSERT(param0);
    Heap_Free(param0);
}

static void ov21_021E2BBC(PokedexGraphicData **param0)
{
    GF_ASSERT(param0);
    Heap_Free(param0);
}

static void ov21_021E2BD0(UnkStruct_ov21_021D4660 *param0)
{
    GF_ASSERT(param0);

    ov21_021D4660(&param0[0]);
    ov21_021D4660(&param0[1]);
    ov21_021D4660(&param0[2]);
    ov21_021D4660(&param0[3]);
    ov21_021D4660(&param0[4]);
    ov21_021D4660(&param0[5]);
    ov21_021D4660(&param0[6]);
    ov21_021D4660(&param0[7]);

    Heap_Free(param0);
}

static int ov21_021E2C20(void)
{
    return 8;
}

static int ov21_021E2C24(PokedexDataManager *dataMan, void *data)
{
    UnkStruct_ov21_021E2BA8 *v0 = data;

    v0->unk_10->playCry = 1;

    return 1;
}

static int ov21_021E2C2C(PokedexDataManager *dataMan, void *data)
{
    UnkStruct_ov21_021E2BA8 *v0 = data;

    if (dataMan->exit == 1) {
        return 1;
    }

    if (dataMan->unchanged == 1) {
        return 0;
    }

    if (dataMan->state == 0) {
        ov21_021E3320(v0);
        dataMan->state++;
    }

    return 0;
}

static int ov21_021E2C5C(PokedexDataManager *dataMan, void *data)
{
    UnkStruct_ov21_021E2BA8 *v0 = data;

    v0->unk_08 = 0;
    return 1;
}

static int ov21_021E2C64(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const UnkStruct_ov21_021E2BA8 *v0 = data;
    PokedexGraphicData **v2 = graphics;
    UnkStruct_ov21_021E326C *v3 = graphicsMan->pageGraphics;
    BOOL v4;

    switch (graphicsMan->state) {
    case 0:
        graphicsMan->pageGraphics = Heap_Alloc(graphicsMan->heapID, sizeof(UnkStruct_ov21_021E326C));
        memset(graphicsMan->pageGraphics, 0, sizeof(UnkStruct_ov21_021E326C));
        v3 = graphicsMan->pageGraphics;
        v3->unk_00 = v0->unk_08;
        graphicsMan->state++;
        break;
    case 1:
        ov21_021E3080(v2, v3, v0, graphicsMan->heapID);
        ov21_021E3BE0(v3);
        PokedexGraphics_InitBlendTransition(&(*v2)->blendMain, 4, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        graphicsMan->state++;
        break;
    case 2:
        if (PokedexGraphics_TakeBlendTransitionStep(&(*v2)->blendMain)) {
            graphicsMan->state++;
        }
        break;
    case 3:
        ov21_021E3BFC(v3);
        return 1;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}

static int ov21_021E2D10(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const UnkStruct_ov21_021E2BA8 *v0 = data;
    UnkStruct_ov21_021E326C *v3 = graphicsMan->pageGraphics;

    if (v3->unk_00 != v0->unk_08) {
        ov21_021E331C(v3, v0->unk_08);
        ov21_021E3FC0(v3, v0->unk_08, v3->unk_00);
        v3->unk_00 = v0->unk_08;
    }

    return 0;
}

static int ov21_021E2D38(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const UnkStruct_ov21_021E2BA8 *v0 = data;
    PokedexGraphicData **v2 = graphics;
    UnkStruct_ov21_021E326C *v3 = graphicsMan->pageGraphics;

    switch (graphicsMan->state) {
    case 0:
        if (v0->unk_2C) {
            ov21_021E3BE0(v3);

            PokedexGraphics_InitBlendTransition(&(*v2)->blendMain, 4, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        } else {
            PokedexGraphics_InitBlendTransition(&(*v2)->blendMain, 4, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 0, 0);
        }
        graphicsMan->state++;
        break;
    case 1:
        if (PokedexGraphics_TakeBlendTransitionStep(&(*v2)->blendMain)) {
            graphicsMan->state++;
        }
        break;
    case 2:
        ov21_021E30BC(v2, v3);
        graphicsMan->state++;
        break;
    case 3:
        Heap_Free(graphicsMan->pageGraphics);
        graphicsMan->pageGraphics = NULL;
        graphicsMan->state++;
        break;
    case 4:
        return 1;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}

static void ov21_021E2E00(UnkStruct_ov21_021E2BA8 *param0)
{
    ov21_021E2E10(param0);
    param0->unk_30 = 1;
}

static void ov21_021E2E10(UnkStruct_ov21_021E2BA8 *param0)
{
    *param0->unk_00 |= (0x1 << 1);
    param0->unk_28 = 0;
    param0->unk_10->animationMode = 0;

    InfoMainForeign_SetAnimationMode(param0->unk_18, ANIM_POSITION_BLEND);

    switch (param0->unk_08) {
    case 0:
        param0->unk_10->displayPositionX = 56;
        param0->unk_10->displayPositionY = 80;
        InfoMainForeign_SetDisplayPosition(param0->unk_18, 56, 80);
        param0->unk_0C->unk_14 = 1;
        param0->unk_2C = 1;
        break;
    case 1:
        ov21_021DCA4C(param0->unk_1C, 1);
        ov21_021DCA54(param0->unk_1C, 4);
        ov21_021DCA44(param0->unk_1C, 56, 80);
        param0->unk_0C->unk_14 = 1;
        param0->unk_2C = 1;
        break;
    case 2:
        ov21_021E4070(param0->unk_20, 1);
        ov21_021E4078(param0->unk_20, 4);
        ov21_021E4068(param0->unk_20, 56, 80);
        param0->unk_0C->unk_14 = 1;
        param0->unk_2C = 1;
        break;
    case 3:
        param0->unk_0C->unk_14 = 0;
        param0->unk_2C = 0;
        break;
    case 4:
        param0->unk_0C->unk_14 = 0;
        param0->unk_2C = 0;
        break;
    default:
        break;
    }
}

static BOOL ov21_021E2EC0(int param0)
{
    return 0;
}

static BOOL ov21_021E2EC4(UnkStruct_ov21_021E2BA8 *param0, int param1, int param2)
{
    int v0, v1;
    BOOL v2 = 1;

    switch (param1) {
    case 0:
        if (ov21_021E2EC0(param2)) {
            param0->unk_10->animationMode = 2;
        } else {
            param0->unk_10->animationMode = 1;
        }

        *param0->unk_00 |= (0x1 << 2);
        param0->unk_08 = 0;
        v0 = 48;
        v1 = 72;
        break;
    case 1:
        if (ov21_021E2EC0(param2)) {
            ov21_021DCA4C(param0->unk_1C, 1);
            ov21_021DCA54(param0->unk_1C, 1);
        } else {
            ov21_021DCA4C(param0->unk_1C, 0);
        }

        *param0->unk_00 |= (0x1 << 3);
        param0->unk_08 = 1;
        v0 = 40;
        v1 = 120;
        break;
    case 2:
        if (ov21_021E2EC0(param2)) {
            ov21_021E4070(param0->unk_20, 1);
            ov21_021E4078(param0->unk_20, 1);
        } else {
            ov21_021E4070(param0->unk_20, 0);
        }

        *param0->unk_00 |= (0x1 << 4);
        param0->unk_08 = 2;
        v0 = 48;
        v1 = 64;
        break;
    case 3:
        if (PokedexSort_CurrentCaughtStatus(param0->unk_04) == 2) {
            *param0->unk_00 |= (0x1 << 5);
            param0->unk_08 = 3;
        } else {
            v2 = 0;
        }
        break;
    case 4:
        if (PokedexSort_CanDetectForms(param0->unk_04) == 1) {
            *param0->unk_00 |= (0x1 << 8);
            param0->unk_08 = 4;
        } else {
            v2 = 0;
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    switch (param2) {
    case 0:
        if (ov21_021E2EC0(param1)) {
            param0->unk_10->animationMode = 2;
            InfoMainForeign_SetAnimationMode(param0->unk_18, ANIM_POSITION);
        } else {
            param0->unk_10->animationMode = 1;
            InfoMainForeign_SetAnimationMode(param0->unk_18, ANIM_BLEND);
        }

        param0->unk_10->displayPositionX = v0;
        param0->unk_10->displayPositionY = v1;
        InfoMainForeign_SetDisplayPosition(param0->unk_18, v0, v1);
        break;
    case 1:
        if (ov21_021E2EC0(param1)) {
            ov21_021DCA4C(param0->unk_1C, 1);
            ov21_021DCA54(param0->unk_1C, 1);
        } else {
            ov21_021DCA4C(param0->unk_1C, 0);
        }

        ov21_021DCA44(param0->unk_1C, v0, v1);
        break;
    case 2:
        if (ov21_021E2EC0(param1)) {
            ov21_021E4070(param0->unk_20, 1);
            ov21_021E4078(param0->unk_20, 1);
        } else {
            ov21_021E4070(param0->unk_20, 0);
        }

        ov21_021E4068(param0->unk_20, v0, v1);
        break;
    case 3:
        break;
    case 4:
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return v2;
}

static void ov21_021E3080(PokedexGraphicData **param0, UnkStruct_ov21_021E326C *param1, const UnkStruct_ov21_021E2BA8 *param2, enum HeapID heapID)
{
    ov21_021E30E4(param0, param2, heapID);
    ov21_021E3178(param0, param1, heapID);
    ov21_021E3268(param0, param1, heapID);
    ov21_021E3270(param0, param1, heapID);
    ov21_021E3FC0(param1, 0, 1);
}

static void ov21_021E30BC(PokedexGraphicData **param0, UnkStruct_ov21_021E326C *param1)
{
    ov21_021E326C(param1);
    ov21_021E3224(param0, param1);
    ov21_021E3304(param1);

    Bg_ClearTilemap((*param0)->bgConfig, 2);
}

static void ov21_021E30E4(PokedexGraphicData **param0, const UnkStruct_ov21_021E2BA8 *param1, enum HeapID heapID)
{
    void *v0;
    NNSG2dScreenData *v1;

    PokedexGraphics_LoadGraphicNarcPaletteData(*param0, banner_sinnoh_NCLR, 0, 0, 0, heapID);

    if (PokedexSort_IsNationalDex(param1->unk_04) == 1) {
        PokedexGraphics_LoadGraphicNarcPaletteData(*param0, banner_national_NCLR, 0, 0, 32, heapID);
    }

    PokedexGraphics_LoadGraphicNarcCharacterData(*param0, entry_main_NCGR_lz, (*param0)->bgConfig, 2, 0, 0, TRUE, heapID);

    v0 = PokedexGraphics_GetGraphicNarcTilemapData(*param0, banner_sinnoh_NSCR_lz, TRUE, &v1, heapID);

    Bg_LoadToTilemapRect((*param0)->bgConfig, 2, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_Free(v0);
    Bg_ScheduleTilemapTransfer((*param0)->bgConfig, 2);
}

static void ov21_021E3178(PokedexGraphicData **param0, UnkStruct_ov21_021E326C *param1, int param2)
{
    PokedexGraphicData *v0 = *param0;
    NARC *v1 = PokedexGraphics_GetNARC(*param0);

    param1->unk_18[0] = SpriteResourceCollection_AddTilesFrom(v0->spriteResourceCollection[0], v1, banner_NCGR_lz, TRUE, banner_NCGR_lz + 2000, NNS_G2D_VRAM_TYPE_2DMAIN, param2);

    SpriteTransfer_RequestCharAtEnd(param1->unk_18[0]);
    SpriteResource_ReleaseData(param1->unk_18[0]);

    param1->unk_18[1] = SpriteResourceCollection_AddPaletteFrom(v0->spriteResourceCollection[1], v1, banner_default_NCLR, FALSE, banner_default_NCLR + 2000, NNS_G2D_VRAM_TYPE_2DMAIN, 1, param2);

    SpriteTransfer_RequestPlttFreeSpace(param1->unk_18[1]);
    SpriteResource_ReleaseData(param1->unk_18[1]);

    param1->unk_18[2] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[2], v1, banner_cell_NCER_lz, TRUE, banner_cell_NCER_lz + 2000, 2, param2);
    param1->unk_18[3] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[3], v1, banner_anim_NANR_lz, TRUE, banner_anim_NANR_lz + 2000, 3, param2);
}

static void ov21_021E3224(PokedexGraphicData **param0, UnkStruct_ov21_021E326C *param1)
{
    PokedexGraphicData *v0 = *param0;

    SpriteTransfer_ResetCharTransfer(param1->unk_18[0]);
    SpriteTransfer_ResetPlttTransfer(param1->unk_18[1]);

    SpriteResourceCollection_Remove(v0->spriteResourceCollection[0], param1->unk_18[0]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[1], param1->unk_18[1]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[2], param1->unk_18[2]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[3], param1->unk_18[3]);
}

static void ov21_021E3268(PokedexGraphicData **param0, UnkStruct_ov21_021E326C *param1, int param2)
{
    return;
}

static void ov21_021E326C(UnkStruct_ov21_021E326C *param0)
{
    return;
}

static void ov21_021E3270(PokedexGraphicData **param0, UnkStruct_ov21_021E326C *param1, int param2)
{
    Window *v0;
    PokedexDisplayBox displayBox;
    PokedexGraphicData *v2 = *param0;
    int v3;
    int v4;

    displayBox.textMan = v2->textMan;
    displayBox.paletteProxy = SpriteTransfer_GetPaletteProxy(param1->unk_18[1], NULL);
    displayBox.x = 16;
    displayBox.y = 0;
    displayBox.spriteResourcePriority = 0;
    displayBox.spriteListPriority = 0;
    displayBox.sprite = NULL;
    displayBox.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    displayBox.heapID = param2;

    v3 = PlttTransfer_GetPlttOffset(displayBox.paletteProxy, NNS_G2D_VRAM_TYPE_2DMAIN);

    for (v4 = 0; v4 < 5; v4++) {
        v0 = PokedexTextManager_NewWindow(v2->textMan, 8, 2);

        PokedexTextManager_DisplayMessage(v2->textMan, v0, TEXT_BANK_POKEDEX, pl_msg_pokedex_info + v4, 0, 0);

        displayBox.window = v0;
        param1->unk_04[v4] = PokedexTextManager_NextTextData(&displayBox);

        sub_02012A60(param1->unk_04[v4]->fontOAM, v3);
        sub_020129D0(param1->unk_04[v4]->fontOAM, 0);

        PokedexTextManager_FreeWindow(v0);
    }
}

static void ov21_021E3304(UnkStruct_ov21_021E326C *param0)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        PokedexTextManager_FreeTextData(param0->unk_04[v0]);
    }
}

static void ov21_021E331C(UnkStruct_ov21_021E326C *param0, int param1)
{
    return;
}

static void ov21_021E3320(UnkStruct_ov21_021E2BA8 *param0)
{
    param0->unk_28 = 1;
    param0->unk_10->animationMode = 1;
}

void ov21_021E332C(PokedexScreenManager *screenMan, PokedexApp *param1, enum HeapID heapID)
{
    UnkStruct_ov21_021E342C *v0;
    PokedexGraphicData **v1;
    UnkStruct_ov21_021D4660 *v2;

    v0 = ov21_021E33C4(heapID, param1);
    v1 = ov21_021E3400(heapID, param1);
    v2 = ov21_021E3428(heapID, param1);

    screenMan->pageData = v0;
    screenMan->pageGraphics = v1;
    screenMan->screenStates = v2;
    screenMan->numStates = ov21_021E3458();

    screenMan->dataFunc[0] = ov21_021E345C;
    screenMan->dataFunc[1] = ov21_021E34AC;
    screenMan->dataFunc[2] = ov21_021E3520;
    screenMan->graphicsFunc[0] = ov21_021E3540;
    screenMan->graphicsFunc[1] = ov21_021E35D0;
    screenMan->graphicsFunc[2] = ov21_021E3604;
}

void ov21_021E338C(PokedexScreenManager *screenMan)
{
    ov21_021E342C(screenMan->pageData);
    ov21_021E3440(screenMan->pageGraphics);
    ov21_021E3454(screenMan->screenStates);
}

BOOL ov21_021E33A4(const PokedexScreenManager *screenMan)
{
    const UnkStruct_ov21_021E342C *v0 = screenMan->pageData;
    return v0->unk_24;
}

BOOL ov21_021E33AC(const PokedexScreenManager *screenMan)
{
    const UnkStruct_ov21_021E342C *v0 = screenMan->pageData;
    return v0->unk_28;
}

void ov21_021E33B4(PokedexScreenManager *screenMan, BOOL param1)
{
    UnkStruct_ov21_021E342C *v0 = screenMan->pageData;
    v0->unk_30 = param1;
}

BOOL ov21_021E33BC(const PokedexScreenManager *screenMan)
{
    const UnkStruct_ov21_021E342C *v0 = screenMan->pageData;
    return v0->unk_30;
}

static UnkStruct_ov21_021E342C *ov21_021E33C4(enum HeapID heapID, PokedexApp *param1)
{
    UnkStruct_ov21_021E342C *v0;
    PokedexScreenManager *v1;

    v0 = Heap_Alloc(heapID, sizeof(UnkStruct_ov21_021E342C));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021E342C));

    v0->unk_00 = ov21_021D13C8(param1);
    v1 = ov21_021D1410(param1, 5);
    v0->unk_04 = v1->pageData;
    v0->unk_08 = PokedexMain_GetSortData(param1);

    return v0;
}

static PokedexGraphicData **ov21_021E3400(enum HeapID heapID, PokedexApp *param1)
{
    PokedexGraphicData **v0;
    PokedexScreenManager *v1;

    v0 = Heap_Alloc(heapID, sizeof(PokedexGraphicData **));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(PokedexGraphicData **));

    *v0 = PokedexMain_GetGraphicData(param1);

    return v0;
}

static UnkStruct_ov21_021D4660 *ov21_021E3428(enum HeapID heapID, PokedexApp *param1)
{
    return NULL;
}

static void ov21_021E342C(UnkStruct_ov21_021E342C *param0)
{
    GF_ASSERT(param0);
    Heap_Free(param0);
}

static void ov21_021E3440(PokedexGraphicData **param0)
{
    GF_ASSERT(param0);
    Heap_Free(param0);
}

static void ov21_021E3454(UnkStruct_ov21_021D4660 *param0)
{
    return;
}

static int ov21_021E3458(void)
{
    return 0;
}

static int ov21_021E345C(PokedexDataManager *dataMan, void *data)
{
    UnkStruct_ov21_021E342C *v0 = data;
    UnkStruct_ov21_021E37B4 *v1 = dataMan->pageData;
    int v2;

    v1 = Heap_Alloc(dataMan->heapID, sizeof(UnkStruct_ov21_021E37B4));
    memset(v1, 0, sizeof(UnkStruct_ov21_021E37B4));

    ov21_021E3688(v1, v0, dataMan->heapID);
    ov21_021E3C6C(v1, v0, dataMan->heapID);
    ov21_021E3E8C(v1, v0);

    for (v2 = 0; v2 < 6; v2++) {
        v0->unk_0C[v2] = (3 + 1);
    }

    dataMan->pageData = v1;

    return 1;
}

static int ov21_021E34AC(PokedexDataManager *dataMan, void *data)
{
    UnkStruct_ov21_021E342C *v0 = data;
    UnkStruct_ov21_021E37B4 *v1 = dataMan->pageData;

    if (dataMan->exit == 1) {
        v0->unk_24 = 0;
        return 1;
    }

    if (dataMan->unchanged == 1) {
        return 0;
    }

    if (dataMan->state == 0) {
        v0->unk_24 = 1;
        v0->unk_04->unk_30 = 0;
        v0->unk_28 = 1;
        dataMan->state++;
    } else {
        v0->unk_28 = 1;

        ov21_021E3C2C(v0);
        ov21_021E3EEC(v1, v0);
        ov21_021E3724(v0);

        if ((ov21_021D3998(v0->unk_08) == 2) && (v0->unk_30 == 0)) {
            ov21_021E3D48(v1, v0);
        }

        ov21_021E3734(v1, v0);
    }

    return 0;
}

static int ov21_021E3520(PokedexDataManager *dataMan, void *data)
{
    UnkStruct_ov21_021E37B4 *v1 = dataMan->pageData;

    ov21_021E37B4(v1);
    ov21_021E3E74(v1);

    Heap_Free(dataMan->pageData);
    dataMan->pageData = NULL;

    return 1;
}

static int ov21_021E3540(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const UnkStruct_ov21_021E342C *v0 = data;
    const UnkStruct_ov21_021E37B4 *v1 = dataMan->pageData;
    PokedexGraphicData **v2 = graphics;
    UnkStruct_ov21_021E3900 *v3 = graphicsMan->pageGraphics;

    switch (graphicsMan->state) {
    case 0:
        graphicsMan->pageGraphics = Heap_Alloc(graphicsMan->heapID, sizeof(UnkStruct_ov21_021E3900));
        memset(graphicsMan->pageGraphics, 0, sizeof(UnkStruct_ov21_021E3900));
        graphicsMan->state++;
        break;
    case 1:
        ov21_021E3900(v3, v2, v0, graphicsMan->heapID);
        graphicsMan->state++;
        break;
    case 2:
        BrightnessController_StartTransition(4, 0, -16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_SUB_SCREEN);
        ov21_021E3F2C(v2, v1, v0);
        graphicsMan->state++;
        break;
    case 3:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_SUB_SCREEN)) {
            graphicsMan->state++;
        }
        break;
    case 4:
        return 1;
    default:
        break;
    }

    return 0;
}

static int ov21_021E35D0(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const UnkStruct_ov21_021E342C *v0 = data;
    const UnkStruct_ov21_021E37B4 *v1 = dataMan->pageData;
    PokedexGraphicData **v2 = graphics;
    UnkStruct_ov21_021E3900 *v3 = graphicsMan->pageGraphics;
    int v4;

    for (v4 = 0; v4 < 6; v4++) {
        ov21_021D144C(v3->unk_00[v4], v0->unk_0C[v4]);
    }

    ov21_021E3F48(v2, v1, v0);

    return 0;
}

static int ov21_021E3604(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const UnkStruct_ov21_021E342C *v0 = data;
    const UnkStruct_ov21_021E37B4 *v1 = dataMan->pageData;
    PokedexGraphicData **v2 = graphics;
    UnkStruct_ov21_021E3900 *v3 = graphicsMan->pageGraphics;

    switch (graphicsMan->state) {
    case 0:
        BrightnessController_StartTransition(4, -16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_SUB_SCREEN);
        graphicsMan->state++;
        break;
    case 1:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_SUB_SCREEN)) {
            graphicsMan->state++;
        }
        break;
    case 2:
        ov21_021E393C(v3, v2);
        PokedexGraphics_SetDrawCursor(&(*v2)->cursorGraphics, 0);
        graphicsMan->state++;
        break;
    case 3:
        Heap_Free(graphicsMan->pageGraphics);
        graphicsMan->pageGraphics = NULL;
        graphicsMan->state++;
        break;
    case 4:
        return 1;
    default:
        break;
    }

    return 0;
}

static void ov21_021E3688(UnkStruct_ov21_021E37B4 *param0, UnkStruct_ov21_021E342C *param1, enum HeapID heapID)
{
    param0->unk_04 = Heap_Alloc(heapID, sizeof(TouchScreenHitTable) * 6);

    PokedexMain_SetHitTableRect(&param0->unk_04[0], 24 - (32 / 2), 24 + (32 / 2), 28 - (40 / 2), 28 + (40 / 2));
    PokedexMain_SetHitTableRect(&param0->unk_04[5], 24 - (32 / 2), 24 + (32 / 2), 228 - (40 / 2), 228 + (40 / 2));
    PokedexMain_SetHitTableRect(&param0->unk_04[1], 24 - (32 / 2), 24 + (32 / 2), 68 - (40 / 2), 68 + (40 / 2));
    PokedexMain_SetHitTableRect(&param0->unk_04[2], 24 - (32 / 2), 24 + (32 / 2), 108 - (40 / 2), 108 + (40 / 2));
    PokedexMain_SetHitTableRect(&param0->unk_04[3], 24 - (32 / 2), 24 + (32 / 2), 148 - (40 / 2), 148 + (40 / 2));
    PokedexMain_SetHitTableRect(&param0->unk_04[4], 24 - (32 / 2), 24 + (32 / 2), 188 - (40 / 2), 188 + (40 / 2));

    param0->unk_08.unk_00 = param1;
    param0->unk_08.unk_04 = param0;
    param0->unk_00 = TouchScreenActions_RegisterHandler(param0->unk_04, 6, ov21_021E37CC, &param0->unk_08, heapID);
}

static void ov21_021E3724(UnkStruct_ov21_021E342C *param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        param0->unk_0C[v0] = 3;
    }
}

static void ov21_021E3734(UnkStruct_ov21_021E37B4 *param0, UnkStruct_ov21_021E342C *param1)
{
    if (param1->unk_2C == 0) {
        TouchScreenActions_HandleAction(param0->unk_00);
    }

    if (param1->unk_2C) {
        if (param1->unk_0C[5] != 2) {
            param1->unk_0C[5] = 1;
        }
    }

    switch (param1->unk_04->unk_08) {
    case 0:
        if (param1->unk_0C[0] != 2) {
            param1->unk_0C[0] = 1;
        }
        break;
    case 1:
        if (param1->unk_0C[1] != 2) {
            param1->unk_0C[1] = 1;
        }
        break;
    case 2:
        if (param1->unk_0C[2] != 2) {
            param1->unk_0C[2] = 1;
        }
        break;
    case 3:
        if (param1->unk_0C[3] != 2) {
            param1->unk_0C[3] = 1;
        }
        break;
    case 4:
        if (param1->unk_0C[4] != 2) {
            param1->unk_0C[4] = 1;
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }
}

static void ov21_021E37B4(UnkStruct_ov21_021E37B4 *param0)
{
    TouchScreenActions_Free(param0->unk_00);
    Heap_Free(param0->unk_04);
    param0->unk_04 = NULL;
}

static void ov21_021E37CC(u32 param0, enum TouchScreenButtonState param1, void *param2)
{
    UnkStruct_ov21_021E37CC *v0 = param2;
    UnkStruct_ov21_021E342C *v1 = v0->unk_00;
    UnkStruct_ov21_021E37B4 *v2 = v0->unk_04;
    UnkStruct_ov21_021E2BA8 *v3 = v1->unk_04;

    v1->unk_0C[param0] = param1;

    switch (param1) {
    case TOUCH_BUTTON_PRESSED:
        v2->unk_10 = 0;
        break;
    case TOUCH_BUTTON_HELD:
        PokedexPanel_Move(v2->unk_14, 2, param0);

        switch (param0) {
        case 5:
            ov21_021E2E00(v3);
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            break;
        case 0:
            if (v3->unk_08 != 0) {
                ov21_021E3C18(v1, 0, v3->unk_08);
                ov21_021E3E8C(v2, v1);
                Sound_PlayEffect(SEQ_SE_DP_DENSI06);
            }
            break;
        case 1:
            if (v3->unk_08 != 1) {
                ov21_021E3C18(v1, 1, v3->unk_08);
                ov21_021E3E8C(v2, v1);
                Sound_PlayEffect(SEQ_SE_DP_DENSI06);
            }
            break;
        case 2:
            if (v3->unk_08 != 2) {
                ov21_021E3C18(v1, 2, v3->unk_08);
                ov21_021E3E8C(v2, v1);
                Sound_PlayEffect(SEQ_SE_DP_DENSI06);
            }
            break;
        case 3:
            if (v3->unk_08 != 3) {
                if (ov21_021E3C18(v1, 3, v3->unk_08)) {
                    ov21_021E3E8C(v2, v1);
                    Sound_PlayEffect(SEQ_SE_DP_DENSI06);
                } else {
                    if (v2->unk_10 == 0) {
                        if (v3->unk_08 != 2) {
                            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                        }

                        v2->unk_10 = 1;
                    }
                }
            }
            break;
        case 4:
            if (v3->unk_08 != 4) {
                if (ov21_021E3C18(v1, 4, v3->unk_08)) {
                    ov21_021E3E8C(v2, v1);
                    Sound_PlayEffect(SEQ_SE_DP_DENSI06);
                } else {
                    if (v2->unk_10 == 0) {
                        if (PokedexSort_CanDetectForms(v3->unk_04) == 1) {
                            if (v3->unk_08 != 2) {
                                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                            }
                        }

                        v2->unk_10 = 0;
                    }
                }
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

static void ov21_021E3900(UnkStruct_ov21_021E3900 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021E342C *param2, enum HeapID heapID)
{
    ov21_021E3960(param1, param2, heapID);
    ov21_021E39FC(param0, param1, heapID);
    ov21_021E3AF0(param0, param1, heapID);
    ov21_021E3BD8(param0, param1, heapID);
    ov21_021E3FE4(param0, param2);
}

static void ov21_021E393C(UnkStruct_ov21_021E3900 *param0, PokedexGraphicData **param1)
{
    ov21_021E3BDC(param0);
    ov21_021E3BC0(param0);
    ov21_021E3AAC(param0, param1);
    Bg_ClearTilemap((*param1)->bgConfig, 5);
}

static void ov21_021E3960(PokedexGraphicData **param0, const UnkStruct_ov21_021E342C *param1, enum HeapID heapID)
{
    void *v0;
    NNSG2dScreenData *v1;

    if (param1->unk_04->unk_30) {
        PokedexGraphics_LoadGraphicNarcPaletteData(*param0, banner_sinnoh_NCLR, 4, 0, 0, heapID);

        if (PokedexSort_IsNationalDex(param1->unk_08) == 1) {
            PokedexGraphics_LoadGraphicNarcPaletteData(*param0, banner_national_NCLR, 4, 0, 32, heapID);
        }
    }

    PokedexGraphics_LoadGraphicNarcCharacterData(*param0, entry_sub_NCGR_lz, (*param0)->bgConfig, 5, 0, 0, TRUE, heapID);

    v0 = PokedexGraphics_GetGraphicNarcTilemapData(*param0, page_panel_NSCR_lz, TRUE, &v1, heapID);

    Bg_LoadToTilemapRect((*param0)->bgConfig, 5, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_Free(v0);
    Bg_ScheduleTilemapTransfer((*param0)->bgConfig, 5);
}

static void ov21_021E39FC(UnkStruct_ov21_021E3900 *param0, PokedexGraphicData **param1, int param2)
{
    PokedexGraphicData *v0 = *param1;
    NARC *v1 = PokedexGraphics_GetNARC(*param1);

    param0->unk_18[0] = SpriteResourceCollection_AddTilesFrom(v0->spriteResourceCollection[0], v1, page_buttons_NCGR_lz, TRUE, page_buttons_NCGR_lz + 2100, NNS_G2D_VRAM_TYPE_2DSUB, param2);

    SpriteTransfer_RequestCharAtEnd(param0->unk_18[0]);
    SpriteResource_ReleaseData(param0->unk_18[0]);

    param0->unk_18[1] = SpriteResourceCollection_AddPaletteFrom(v0->spriteResourceCollection[1], v1, info_NCLR, FALSE, info_NCLR + 2100, NNS_G2D_VRAM_TYPE_2DSUB, 6, param2);

    SpriteTransfer_RequestPlttFreeSpace(param0->unk_18[1]);
    SpriteResource_ReleaseData(param0->unk_18[1]);

    param0->unk_18[2] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[2], v1, page_buttons_cell_NCER_lz, TRUE, page_buttons_cell_NCER_lz + 2100, 2, param2);
    param0->unk_18[3] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[3], v1, page_buttons_anim_NANR_lz, TRUE, page_buttons_anim_NANR_lz + 2100, 3, param2);
}

static void ov21_021E3AAC(UnkStruct_ov21_021E3900 *param0, PokedexGraphicData **param1)
{
    PokedexGraphicData *v0 = *param1;

    SpriteTransfer_ResetCharTransfer(param0->unk_18[0]);
    SpriteTransfer_ResetPlttTransfer(param0->unk_18[1]);

    SpriteResourceCollection_Remove(v0->spriteResourceCollection[0], param0->unk_18[0]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[1], param0->unk_18[1]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[2], param0->unk_18[2]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[3], param0->unk_18[3]);
}

static void ov21_021E3AF0(UnkStruct_ov21_021E3900 *param0, PokedexGraphicData **param1, int param2)
{
    SpriteResourcesHeader v0;
    SpriteListTemplate v1;
    PokedexGraphicData *v2 = *param1;
    int v3;

    SpriteResourcesHeader_Init(&v0, page_buttons_NCGR_lz + 2100, info_NCLR + 2100, page_buttons_cell_NCER_lz + 2100, page_buttons_anim_NANR_lz + 2100, 0xffffffff, 0xffffffff, FALSE, 0, v2->spriteResourceCollection[0], v2->spriteResourceCollection[1], v2->spriteResourceCollection[2], v2->spriteResourceCollection[3], NULL, NULL);

    v1.list = v2->spriteList;
    v1.resourceData = &v0;
    v1.priority = 32;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    v1.heapID = param2;
    v1.position.y = (24 * FX32_ONE) + (192 << FX32_SHIFT);

    for (v3 = 0; v3 < 6; v3++) {
        switch (v3) {
        case 5:
            v1.position.x = 228 * FX32_ONE;
            break;
        case 0:
            v1.position.x = 28 * FX32_ONE;
            break;
        case 1:
            v1.position.x = 68 * FX32_ONE;
            break;
        case 2:
            v1.position.x = 108 * FX32_ONE;
            break;
        case 3:
            v1.position.x = 148 * FX32_ONE;
            break;
        case 4:
            v1.position.x = 188 * FX32_ONE;
            break;
        }

        param0->unk_00[v3] = SpriteList_Add(&v1);
        Sprite_SetAnim(param0->unk_00[v3], v3);
    }
}

static void ov21_021E3BC0(UnkStruct_ov21_021E3900 *param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        Sprite_Delete(param0->unk_00[v0]);
    }
}

static void ov21_021E3BD8(UnkStruct_ov21_021E3900 *param0, PokedexGraphicData **param1, int param2)
{
    return;
}

static void ov21_021E3BDC(UnkStruct_ov21_021E3900 *param0)
{
    return;
}

static void ov21_021E3BE0(UnkStruct_ov21_021E326C *param0)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        sub_02012AF0(param0->unk_04[v0]->fontOAM, GX_OAM_MODE_XLU);
    }
}

static void ov21_021E3BFC(UnkStruct_ov21_021E326C *param0)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        sub_02012AF0(param0->unk_04[v0]->fontOAM, GX_OAM_MODE_NORMAL);
    }
}

static BOOL ov21_021E3C18(UnkStruct_ov21_021E342C *param0, int param1, int param2)
{
    UnkStruct_ov21_021E2BA8 *v0 = param0->unk_04;
    BOOL v1 = ov21_021E2EC4(v0, param1, param2);

    if (v1 == 1) {
        param0->unk_28 = 0;
    }

    return v1;
}

static void ov21_021E3C2C(UnkStruct_ov21_021E342C *param0)
{
    UnkStruct_ov21_021E2BA8 *v0 = param0->unk_04;
    ov21_021E3C34(param0);
}

static void ov21_021E3C34(UnkStruct_ov21_021E342C *param0)
{
    UnkStruct_ov21_021E2BA8 *v0 = param0->unk_04;
    int v1;
    int v2;

    ov21_021E3C64(param0);

    if (gSystem.pressedKeys & PAD_BUTTON_B) {
        ov21_021E2E00(v0);
        param0->unk_2C = 1;
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        return;
    }
}

static void ov21_021E3C64(UnkStruct_ov21_021E342C *param0)
{
    param0->unk_2C = 0;
}

static void ov21_021E3C6C(UnkStruct_ov21_021E37B4 *param0, UnkStruct_ov21_021E342C *param1, enum HeapID heapID)
{
    int v0;

    param0->unk_18 = Heap_Alloc(heapID, sizeof(PokedexCursorData) * 6);

    PokedexPanel_InitCursorData(&param0->unk_18[0], 28, 24, 24, 16, 0, 0, 0);
    PokedexPanel_InitCursorData(&param0->unk_18[1], 68, 24, 24, 16, 0, 0, 1);
    PokedexPanel_InitCursorData(&param0->unk_18[2], 108, 24, 24, 16, 0, 0, 2);
    PokedexPanel_InitCursorData(&param0->unk_18[3], 148, 24, 24, 16, 0, 0, 3);

    if (PokedexSort_CanDetectForms(param1->unk_08) == 1) {
        v0 = 0;
    } else {
        v0 = 2;
    }

    PokedexPanel_InitCursorData(&param0->unk_18[4], 188, 24, 24, 16, v0, v0, 4);
    PokedexPanel_InitCursorData(&param0->unk_18[5], 228, 24, 24, 16, 0, 0, 5);

    param0->unk_14 = PokedexPanel_Alloc(heapID);
    PokedexPanel_New(param0->unk_14, param0->unk_18, 6, 1);
}

static void ov21_021E3D48(UnkStruct_ov21_021E37B4 *param0, UnkStruct_ov21_021E342C *param1)
{
    UnkStruct_ov21_021E2BA8 *v0 = param1->unk_04;

    if (param1->unk_2C) {
        return;
    }

    if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
        PokedexPanel_Move(param0->unk_14, 0, 1);
    }

    if (gSystem.pressedKeys & PAD_KEY_LEFT) {
        PokedexPanel_Move(param0->unk_14, 0, -1);
    }

    if (gSystem.pressedKeys & PAD_BUTTON_A) {
        switch (PokedexPanel_GetCurrentButton(param0->unk_14)) {
        case 0:
            if (v0->unk_08 != 0) {
                ov21_021E3C18(param1, 0, v0->unk_08);
                param1->unk_0C[0] = 2;
                Sound_PlayEffect(SEQ_SE_DP_DENSI06);
            }
            break;
        case 1:
            if (v0->unk_08 != 1) {
                ov21_021E3C18(param1, 1, v0->unk_08);
                param1->unk_0C[1] = 2;
                Sound_PlayEffect(SEQ_SE_DP_DENSI06);
            }
            break;
        case 2:
            if (v0->unk_08 != 2) {
                ov21_021E3C18(param1, 2, v0->unk_08);
                param1->unk_0C[2] = 2;
                Sound_PlayEffect(SEQ_SE_DP_DENSI06);
            }
            break;
        case 3:
            if (v0->unk_08 != 3) {
                if (ov21_021E3C18(param1, 3, v0->unk_08)) {
                    param1->unk_0C[3] = 2;
                    Sound_PlayEffect(SEQ_SE_DP_DENSI06);
                } else {
                    if (v0->unk_08 != 2) {
                        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                    }
                }
            }
            break;
        case 4:
            if (v0->unk_08 != 4) {
                if (ov21_021E3C18(param1, 4, v0->unk_08)) {
                    param1->unk_0C[4] = 2;
                    Sound_PlayEffect(SEQ_SE_DP_DENSI06);
                } else {
                    if (v0->unk_08 != 2) {
                        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                    }
                }
            }
            break;
        case 5:
            ov21_021E2E00(v0);
            param1->unk_2C = 1;
            param1->unk_0C[5] = 2;
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            break;
        }
    }
}

static void ov21_021E3E74(UnkStruct_ov21_021E37B4 *param0)
{
    Heap_Free(param0->unk_18);
    PokedexPanel_Free(param0->unk_14);
    param0->unk_14 = NULL;
    param0->unk_18 = NULL;
}

static void ov21_021E3E8C(UnkStruct_ov21_021E37B4 *param0, UnkStruct_ov21_021E342C *param1)
{
    UnkStruct_ov21_021E2BA8 *v0 = param1->unk_04;

    param1->unk_30 = 0;

    switch (v0->unk_08) {
    case 0:
        PokedexPanel_Move(param0->unk_14, 4, 0);
        break;
    case 1:
        PokedexPanel_Move(param0->unk_14, 4, 1);
        break;
    case 2:
        PokedexPanel_Move(param0->unk_14, 4, 2);
        break;
    case 3:
        PokedexPanel_Move(param0->unk_14, 4, 3);
        break;
    case 4:
        PokedexPanel_Move(param0->unk_14, 4, 4);
        break;
    default:
        break;
    }
}

static void ov21_021E3EEC(UnkStruct_ov21_021E37B4 *param0, UnkStruct_ov21_021E342C *param1)
{
    UnkStruct_ov21_021E2BA8 *v0 = param1->unk_04;

    if (v0->unk_08 == 0) {
        return;
    }

    if (ov21_021D3998(param1->unk_08) != 2) {
        return;
    }

    if (param1->unk_30 == 0) {
        if (gSystem.pressedKeys & PAD_KEY_DOWN) {
            param1->unk_30 = 1;
        }
    } else {
        if (gSystem.pressedKeys & PAD_KEY_UP) {
            param1->unk_30 = 0;
        }
    }
}

static void ov21_021E3F2C(PokedexGraphicData **param0, const UnkStruct_ov21_021E37B4 *param1, const UnkStruct_ov21_021E342C *param2)
{
    PokedexGraphics_GoToCurrentButton(param1->unk_14, *param0);
    ov21_021E3F48(param0, param1, param2);
}

static void ov21_021E3F48(PokedexGraphicData **param0, const UnkStruct_ov21_021E37B4 *param1, const UnkStruct_ov21_021E342C *param2)
{
    BOOL v0;

    if (ov21_021D3998(param2->unk_08) != 0) {
        v0 = ov21_021E3F98(param0, 1);

        if (param2->unk_30 == 0) {
            if (v0) {
                PokedexGraphics_GoToCurrentButton(param1->unk_14, *param0);
            }

            ov21_021E3F88(param0, param1);
        }
    } else {
        ov21_021E3F98(param0, 0);
    }
}

static void ov21_021E3F88(PokedexGraphicData **param0, const UnkStruct_ov21_021E37B4 *param1)
{
    PokedexGraphicData *v0 = *param0;
    PokedexGraphics_CurrentButtonTransformation(param1->unk_14, v0);
}

static BOOL ov21_021E3F98(PokedexGraphicData **param0, BOOL param1)
{
    PokedexGraphicData *v0 = *param0;

    if (PokedexGraphics_GetDrawCursor(&v0->cursorGraphics) != param1) {
        PokedexGraphics_SetDrawCursor(&v0->cursorGraphics, param1);
        return 1;
    }

    return 0;
}

static void ov21_021E3FC0(UnkStruct_ov21_021E326C *param0, int param1, int param2)
{
    sub_020129D0(param0->unk_04[param2]->fontOAM, 0);
    sub_020129D0(param0->unk_04[param1]->fontOAM, 1);
}

static void ov21_021E3FE4(UnkStruct_ov21_021E3900 *param0, const UnkStruct_ov21_021E342C *param1)
{
    if (PokedexSort_CanDetectForms(param1->unk_08) == 0) {
        Sprite_SetDrawFlag(param0->unk_00[4], FALSE);
    }
}
