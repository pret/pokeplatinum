#include "applications/pokedex/ov21_021E737C.h"

#include <nitro.h>
#include <string.h>

#include "applications/pokedex/ov21_021E29DC.h"
#include "applications/pokedex/pokedex_app.h"
#include "applications/pokedex/pokedex_data_manager.h"
#include "applications/pokedex/pokedex_graphics.h"
#include "applications/pokedex/pokedex_graphics_manager.h"
#include "applications/pokedex/pokedex_main.h"
#include "applications/pokedex/pokedex_sort.h"
#include "applications/pokedex/pokedex_sort_data.h"
#include "applications/pokedex/struct_ov21_021E68F4.h"

#include "bg_window.h"
#include "font.h"
#include "heap.h"
#include "message.h"
#include "message_util.h"
#include "narc.h"
#include "palette.h"
#include "pokedex_data_index.h"
#include "pokedex_heightweight.h"
#include "pokemon_icon.h"
#include "software_sprite.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "string_gf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "vram_transfer.h"

#include "res/graphics/pokedex/zukan.naix"
#include "res/text/bank/pokedex.h"

typedef struct {
    int unk_00;
    BOOL unk_04;
    u16 unk_08;
    u16 unk_0A;
    BOOL unk_0C;
    int unk_10;
} UnkStruct_ov21_021E9DB0;

typedef struct {
    PokedexSortData *unk_00;
    PokedexScreenManager *unk_04;
} UnkStruct_ov21_021E7468;

typedef struct {
    PokedexGraphicData *unk_00;
    SoftwareSpriteChars *unk_04;
    SoftwareSpritePalette *unk_08;
    SoftwareSprite *unk_0C;
    void *unk_10;
    void *unk_14;
    NNSG2dCharacterData *unk_18;
    NNSG2dPaletteData *unk_1C;
} UnkStruct_ov21_021E747C;

typedef struct {
    int unk_00;
    int unk_04;
} UnkStruct_ov21_021E74A0;

typedef struct {
    SoftwareSprite *unk_00;
    Sprite *unk_04;
    Sprite *unk_08;
    Sprite *unk_0C;
    Sprite *unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
    int unk_24;
    int unk_28;
    int unk_2C;
    BOOL *unk_30;
} UnkStruct_ov21_021E8084;

typedef struct {
    SoftwareSprite *unk_00;
    Sprite *unk_04;
    Sprite *unk_08;
    Sprite *unk_0C;
    Sprite *unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    BOOL *unk_20;
} UnkStruct_ov21_021E81F8;

typedef struct {
    Sprite *unk_00;
    fx32 unk_04;
    fx32 unk_08;
    s16 unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    BOOL *unk_1C;
} UnkStruct_ov21_021E82C8;

typedef struct {
    Sprite *unk_00;
    Sprite *unk_04;
    Sprite *unk_08;
    Sprite *unk_0C[2];
    SpriteResource *unk_14[4];
    SpriteResource *unk_24[4];
    const UnkStruct_ov21_021E9DB0 *unk_34;
    int unk_38;
    SysTask *unk_3C;
    UnkStruct_ov21_021E8084 unk_40;
    UnkStruct_ov21_021E81F8 unk_74;
    UnkStruct_ov21_021E82C8 unk_98;
    BOOL unk_B8;
    u16 *unk_BC;
    u16 *unk_C0;
} UnkStruct_ov21_021E7714;

static UnkStruct_ov21_021E7468 *ov21_021E73E8(enum HeapID heapID, PokedexApp *param1);
static UnkStruct_ov21_021E747C *ov21_021E7424(enum HeapID heapID, PokedexApp *param1);
static void ov21_021E7468(UnkStruct_ov21_021E7468 *param0);
static void ov21_021E747C(UnkStruct_ov21_021E747C *param0);
static int ov21_021E749C(void);
static int ov21_021E74A0(PokedexDataManager *dataMan, void *data);
static int ov21_021E750C(PokedexDataManager *dataMan, void *data);
static int ov21_021E751C(PokedexDataManager *dataMan, void *data);
static int ov21_021E7530(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static int ov21_021E75D4(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static int ov21_021E7694(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static void ov21_021E7714(UnkStruct_ov21_021E7714 *param0);
static void ov21_021E7718(UnkStruct_ov21_021E7714 *param0);
static void ov21_021E771C(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1, const UnkStruct_ov21_021E7468 *param2, BOOL param3);
static BOOL ov21_021E77A4(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1, const UnkStruct_ov21_021E7468 *param2, BOOL param3);
static void ov21_021E7800(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1, const UnkStruct_ov21_021E7468 *param2, const UnkStruct_ov21_021E74A0 *param3, enum HeapID heapID);
static void ov21_021E785C(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1);
static void ov21_021E789C(UnkStruct_ov21_021E747C *param0, const UnkStruct_ov21_021E7468 *param1, enum HeapID heapID);
static void ov21_021E7904(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1, const UnkStruct_ov21_021E7468 *param2, enum HeapID heapID);
static void ov21_021E7AA0(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1);
static void ov21_021E7B34(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1, const UnkStruct_ov21_021E7468 *param2, enum HeapID heapID);
static void ov21_021E7CCC(UnkStruct_ov21_021E7714 *param0);
static void ov21_021E7CF0(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1, const UnkStruct_ov21_021E7468 *param2, enum HeapID heapID);
static void ov21_021E7CF4(UnkStruct_ov21_021E7714 *param0);
static void ov21_021E7CF8(UnkStruct_ov21_021E747C *param0, enum HeapID heapID);
static void ov21_021E7DA8(UnkStruct_ov21_021E747C *param0, const UnkStruct_ov21_021E7468 *param1, enum HeapID heapID);
static void ov21_021E7EC0(UnkStruct_ov21_021E747C *param0, enum HeapID heapID);
static void ov21_021E7F20(UnkStruct_ov21_021E747C *param0);
static void ov21_021E7F40(UnkStruct_ov21_021E747C *param0, int param1);
static void ov21_021E7F7C(UnkStruct_ov21_021E747C *param0);
static const UnkStruct_ov21_021E9DB0 *ov21_021E83D8(const UnkStruct_ov21_021E9DB0 *param0, int param1, int param2);
static void ov21_021E80D4(SoftwareSprite *param0, Sprite *param1, Sprite *param2, Sprite *param3, Sprite *param4, u16 param5);
static void ov21_021E7F88(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1, int param2);
static void ov21_021E7FD0(SysTask *param0, void *param1);
static void ov21_021E8084(UnkStruct_ov21_021E8084 *param0);
static void ov21_021E8188(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1, u16 param2, u16 param3, int param4);
static void ov21_021E81F8(SysTask *param0, void *param1);
static void ov21_021E8258(UnkStruct_ov21_021E7714 *param0, s16 param1, int param2);
static void ov21_021E82C8(SysTask *param0, void *param1);
static void ov21_021E8400(UnkStruct_ov21_021E7714 *param0, u8 param1, u16 param2);

const static UnkStruct_ov21_021E9DB0 Unk_ov21_021E9DB0[17] = {
    { 0x0, 0x1, 0x80, 0x0, 0x0, 0x0 },
    { 0xA, 0x1, 0x80, 0x2D8, 0x0, 0x0 },
    { 0x14, 0x1, 0x80, 0x222, 0x0, 0x0 },
    { 0x1E, 0x1, 0x80, 0x2D8, 0x0, 0x0 },
    { 0x28, 0x1, 0x80, 0x38E, 0x0, 0x0 },
    { 0x32, 0x0, 0x80, 0x444, 0x0, 0x0 },
    { 0x3C, 0x0, 0x80, 0x4FA, 0x0, 0x0 },
    { 0x46, 0x0, 0x80, 0x5B0, 0x0, 0x0 },
    { 0x96, 0x0, 0x80, 0xAAA, 0x0, 0x0 },
    { 0x12C, 0x0, 0x100, 0xAAA, 0x0, 0x0 },
    { 0x1F4, 0x0, 0x180, 0xAAA, 0x0, 0x0 },
    { 0x2EE, 0x0, 0x200, 0xAAA, 0x0, 0x0 },
    { 0x41A, 0x0, 0x280, 0xAAA, 0x1, 0x0 },
    { 0x60E, 0x0, 0x300, 0xAAA, 0x1, 0xFFFFFFFFFFFFFFFE },
    { 0x92E, 0x0, 0x380, 0xAAA, 0x1, 0xFFFFFFFFFFFFFFFC },
    { 0xDAC, 0x0, 0x400, 0xAAA, 0x1, 0xFFFFFFFFFFFFFFF8 },
    { 0xFFFF, 0x0, 0x480, 0xAAA, 0x1, 0xFFFFFFFFFFFFFFF0 }
};

void ov21_021E737C(PokedexScreenManager *param0, PokedexApp *param1, enum HeapID heapID)
{
    UnkStruct_ov21_021E7468 *v0 = ov21_021E73E8(heapID, param1);
    UnkStruct_ov21_021E747C *v1 = ov21_021E7424(heapID, param1);

    param0->pageData = v0;
    param0->pageGraphics = v1;
    param0->screenStates = NULL;
    param0->numStates = ov21_021E749C();
    param0->dataFunc[0] = ov21_021E74A0;
    param0->dataFunc[1] = ov21_021E750C;
    param0->dataFunc[2] = ov21_021E751C;
    param0->graphicsFunc[0] = ov21_021E7530;
    param0->graphicsFunc[1] = ov21_021E75D4;
    param0->graphicsFunc[2] = ov21_021E7694;
}

void ov21_021E73D4(PokedexScreenManager *param0)
{
    ov21_021E7468(param0->pageData);
    ov21_021E747C(param0->pageGraphics);
}

static UnkStruct_ov21_021E7468 *ov21_021E73E8(enum HeapID heapID, PokedexApp *param1)
{
    UnkStruct_ov21_021E7468 *v0 = Heap_Alloc(heapID, sizeof(UnkStruct_ov21_021E7468));
    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021E7468));

    v0->unk_00 = PokedexMain_GetSortData(param1);
    v0->unk_04 = ov21_021D1410(param1, 5);

    return v0;
}

UnkStruct_ov21_021E747C *ov21_021E7424(enum HeapID heapID, PokedexApp *param1)
{
    UnkStruct_ov21_021E747C *v0;
    PokedexScreenManager *v1;

    v0 = Heap_Alloc(heapID, sizeof(UnkStruct_ov21_021E747C));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021E747C));

    v0->unk_00 = PokedexMain_GetGraphicData(param1);

    ov21_021E7EC0(v0, heapID);
    ov21_021E7F40(v0, heapID);
    SoftwareSprite_SetVisible(v0->unk_0C, 0);

    return v0;
}

static void ov21_021E7468(UnkStruct_ov21_021E7468 *param0)
{
    GF_ASSERT(param0);
    Heap_Free(param0);
}

static void ov21_021E747C(UnkStruct_ov21_021E747C *param0)
{
    GF_ASSERT(param0);

    ov21_021E7F20(param0);
    ov21_021E7F7C(param0);
    Heap_Free(param0);
}

static int ov21_021E749C(void)
{
    return 0;
}

static int ov21_021E74A0(PokedexDataManager *dataMan, void *data)
{
    UnkStruct_ov21_021E7468 *v0 = data;
    UnkStruct_ov21_021E74A0 *v1;
    int v2;
    int v3;
    int species;

    v1 = Heap_Alloc(dataMan->heapID, sizeof(UnkStruct_ov21_021E74A0));

    GF_ASSERT(v1);
    memset(v1, 0, sizeof(UnkStruct_ov21_021E74A0));
    dataMan->pageData = v1;

    species = PokedexSort_CurrentSpecies(v0->unk_00);
    v2 = Pokedex_HeightWeightData_Weight(v0->unk_00->HWData, species);

    if (PokedexSort_TrainerGender(v0->unk_00) == 0) {
        v3 = 380;
    } else {
        v3 = 340;
    }

    if (v2 >= v3) {
        v1->unk_00 = v2 - v3;
        v1->unk_04 = 1;
    } else {
        v1->unk_00 = v3 - v2;
        v1->unk_04 = 0;
    }

    return 1;
}

static int ov21_021E750C(PokedexDataManager *dataMan, void *data)
{
    UnkStruct_ov21_021E7468 *v0 = data;
    UnkStruct_ov21_021E74A0 *v1 = dataMan->pageData;

    if (dataMan->exit == 1) {
        return 1;
    }

    if (dataMan->unchanged == 1) {
        return 0;
    }

    return 0;
}

static int ov21_021E751C(PokedexDataManager *dataMan, void *data)
{
    UnkStruct_ov21_021E7468 *v0 = data;
    UnkStruct_ov21_021E74A0 *v1 = dataMan->pageData;

    Heap_Free(v1);
    dataMan->pageData = NULL;

    return 1;
}

static int ov21_021E7530(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const UnkStruct_ov21_021E7468 *v0 = data;
    const UnkStruct_ov21_021E74A0 *v1 = dataMan->pageData;
    UnkStruct_ov21_021E747C *v2 = graphics;
    UnkStruct_ov21_021E7714 *v3 = graphicsMan->pageGraphics;

    switch (graphicsMan->state) {
    case 0:
        graphicsMan->pageGraphics = Heap_Alloc(graphicsMan->heapID, sizeof(UnkStruct_ov21_021E7714));
        memset(graphicsMan->pageGraphics, 0, sizeof(UnkStruct_ov21_021E7714));
        v3 = graphicsMan->pageGraphics;
        v3->unk_B8 = 1;
        graphicsMan->state++;
        break;
    case 1:
        ov21_021E7800(v3, v2, v0, v1, graphicsMan->heapID);
        ov21_021E771C(v3, v2, v0, 1);
        graphicsMan->state++;
        break;
    case 2:
        if (ov21_021E77A4(v3, v2, v0, 1)) {
            graphicsMan->state++;
        }
        break;
    case 3:
        v3->unk_34 = ov21_021E83D8(Unk_ov21_021E9DB0, 17, v1->unk_00);
        v3->unk_38 = v1->unk_04;
        return 1;
    }

    return 0;
}

static int ov21_021E75D4(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const UnkStruct_ov21_021E7468 *v0 = data;
    const UnkStruct_ov21_021E74A0 *v1 = dataMan->pageData;
    UnkStruct_ov21_021E747C *v2 = graphics;
    UnkStruct_ov21_021E7714 *v3 = graphicsMan->pageGraphics;

    switch (graphicsMan->state) {
    case 0:
        v3->unk_B8 = 1;

        if (v3->unk_34->unk_04) {
            graphicsMan->state = 1;
        } else {
            graphicsMan->state = 3;
        }
        break;
    case 1:
        ov21_021E7F88(v3, v2, v3->unk_38);
        graphicsMan->state++;
        break;
    case 2:
        if (v3->unk_B8 == 1) {
            graphicsMan->state++;
        }
        break;
    case 3:
        ov21_021E8188(v3, v2, v3->unk_34->unk_08, v3->unk_34->unk_0A, v3->unk_38);
        graphicsMan->state++;
        break;
    case 4:
        if (v3->unk_B8 == 1) {
            graphicsMan->state++;
        }
        break;
    case 5:
        if (v3->unk_34->unk_0C) {
            ov21_021E8258(v3, v3->unk_34->unk_10, v3->unk_38);
            graphicsMan->state++;
        } else {
            graphicsMan->state = 7;
        }
        break;
    case 6:
        if (v3->unk_B8 == 1) {
            graphicsMan->state++;
        }
        break;
    case 7:
        break;
    }

    return 0;
}

static int ov21_021E7694(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const UnkStruct_ov21_021E7468 *v0 = data;
    const UnkStruct_ov21_021E74A0 *v1 = dataMan->pageData;
    UnkStruct_ov21_021E747C *v2 = graphics;
    UnkStruct_ov21_021E7714 *v3 = graphicsMan->pageGraphics;

    switch (graphicsMan->state) {
    case 0:
        ov21_021E771C(v3, v2, data, 0);
        graphicsMan->state++;
        break;
    case 1:
        if (ov21_021E77A4(v3, v2, data, 0)) {
            graphicsMan->state++;
        }
        break;
    case 2:
        ov21_021E785C(v3, v2);
        graphicsMan->state++;
        break;
    case 3:
        if (v3->unk_B8 == 0) {
            SysTask_Done(v3->unk_3C);
        }

        Heap_Free(graphicsMan->pageGraphics);
        graphicsMan->pageGraphics = NULL;
        graphicsMan->state++;
        break;
    case 4:
        return 1;
    }

    return 0;
}

static void ov21_021E7714(UnkStruct_ov21_021E7714 *param0)
{
    return;
}

static void ov21_021E7718(UnkStruct_ov21_021E7714 *param0)
{
    return;
}

static void ov21_021E771C(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1, const UnkStruct_ov21_021E7468 *param2, BOOL param3)
{
    ov21_021E7714(param0);

    if (ov21_021E2A54(param2->unk_04)) {
        if (param3) {
            PokedexGraphics_InitBlendTransition(&param1->unk_00->blendMain, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0, 0);
            ov21_021E8400(param0, -PokedexGraphics_BlendScreen(&param1->unk_00->blendMain), 0);
        } else {
            PokedexGraphics_InitBlendTransition(&param1->unk_00->blendMain, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0, 0);
        }
    }
}

static BOOL ov21_021E77A4(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1, const UnkStruct_ov21_021E7468 *param2, BOOL param3)
{
    BOOL v0;

    if (ov21_021E2A54(param2->unk_04)) {
        v0 = PokedexGraphics_TakeBlendTransitionStep(&param1->unk_00->blendMain);
    } else {
        v0 = PokedexGraphics_BlendTransitionComplete(&param1->unk_00->blendMain);
    }

    if (v0) {
        if (param3) {
            ov21_021E7718(param0);
        }

        return 1;
    } else {
        ov21_021E8400(param0, -PokedexGraphics_BlendScreen(&param1->unk_00->blendMain), 0);
    }

    return 0;
}

static void ov21_021E7800(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1, const UnkStruct_ov21_021E7468 *param2, const UnkStruct_ov21_021E74A0 *param3, enum HeapID heapID)
{
    ov21_021E789C(param1, param2, heapID);
    ov21_021E7CF8(param1, heapID);
    ov21_021E7DA8(param1, param2, heapID);
    ov21_021E7904(param0, param1, param2, heapID);
    ov21_021E7B34(param0, param1, param2, heapID);
    ov21_021E7CF0(param0, param1, param2, heapID);

    SoftwareSprite_SetRotation(param1->unk_0C, 0);
    SoftwareSprite_SetVisible(param1->unk_0C, 1);
}

static void ov21_021E785C(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1)
{
    ov21_021E7CF4(param0);
    ov21_021E7CCC(param0);
    ov21_021E7AA0(param0, param1);

    Window_FillTilemap(&param1->unk_00->window, 0);
    Bg_ClearTilemap(param1->unk_00->bgConfig, 1);

    SoftwareSprite_SetVisible(param1->unk_0C, 0);
    SoftwareSprite_SetRotation(param1->unk_0C, 0);
}

static void ov21_021E789C(UnkStruct_ov21_021E747C *param0, const UnkStruct_ov21_021E7468 *param1, enum HeapID heapID)
{
    void *v0;
    NNSG2dScreenData *v1;

    PokedexGraphics_LoadGraphicNarcCharacterData(param0->unk_00, entry_main_NCGR_lz, param0->unk_00->bgConfig, 3, 0, 0, TRUE, heapID);

    v0 = PokedexGraphics_GetGraphicNarcTilemapData(param0->unk_00, weight_check_main_NSCR_lz, TRUE, &v1, heapID);

    Bg_LoadToTilemapRect(param0->unk_00->bgConfig, 3, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_Free(v0);
    Bg_ScheduleTilemapTransfer(param0->unk_00->bgConfig, 3);
}

static void ov21_021E7904(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1, const UnkStruct_ov21_021E7468 *param2, enum HeapID heapID)
{
    PokedexGraphicData *v0 = param1->unk_00;
    int v1, v2, v3, v4;
    int species = PokedexSort_CurrentSpecies(param2->unk_00);
    BOOL v6;
    NARC *v7 = PokedexGraphics_GetNARC(param1->unk_00);
    int v8;
    NARC *v9 = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, heapID);
    v8 = PokedexSort_DefaultForm(param2->unk_00, species);
    v1 = PokeIconSpriteIndex(species, 0, v8);
    v2 = PokeIconPalettesFileIndex();
    v3 = PokeIconCellsFileIndex();
    v4 = PokeIconAnimationFileIndex();

    param0->unk_14[0] = SpriteResourceCollection_AddTilesFrom(v0->spriteResourceCollection[0], v9, v1, 0, 8000, NNS_G2D_VRAM_TYPE_2DMAIN, heapID);

    SpriteTransfer_RequestCharAtEndWithHardwareMappingType(param0->unk_14[0]);
    SpriteResource_ReleaseData(param0->unk_14[0]);

    param0->unk_14[1] = SpriteResourceCollection_AddPaletteFrom(v0->spriteResourceCollection[1], v9, v2, 0, 8000, NNS_G2D_VRAM_TYPE_2DMAIN, 3, heapID);

    v6 = SpriteTransfer_RequestPlttFreeSpace(param0->unk_14[1]);
    GF_ASSERT(v6);

    {
        param0->unk_BC = Heap_Alloc(heapID, 32 * 3);
    }

    param0->unk_14[2] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[2], v9, v3, 0, 8000, 2, heapID);
    param0->unk_14[3] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[3], v9, v4, 0, 8000, 3, heapID);
    param0->unk_24[0] = SpriteResourceCollection_AddTilesFrom(v0->spriteResourceCollection[0], v7, size_check_icons_NCGR_lz, TRUE, size_check_icons_NCGR_lz + 7000, NNS_G2D_VRAM_TYPE_2DMAIN, heapID);

    SpriteTransfer_RequestCharAtEnd(param0->unk_24[0]);
    SpriteResource_ReleaseData(param0->unk_24[0]);

    param0->unk_24[1] = SpriteResourceCollection_AddPaletteFrom(v0->spriteResourceCollection[1], v7, size_check_icons_NCLR, FALSE, size_check_icons_NCLR + 7000, NNS_G2D_VRAM_TYPE_2DMAIN, 5, heapID);

    SpriteTransfer_RequestPlttFreeSpace(param0->unk_24[1]);

    {
        param0->unk_C0 = Heap_Alloc(heapID, 32 * 5);
    }

    param0->unk_24[2] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[2], v7, size_check_icons_cell_NCER_lz, TRUE, size_check_icons_cell_NCER_lz + 7000, 2, heapID);
    param0->unk_24[3] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[3], v7, size_check_icons_anim_NANR_lz, TRUE, size_check_icons_anim_NANR_lz + 7000, 3, heapID);

    NARC_dtor(v9);
}

static void ov21_021E7AA0(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1)
{
    PokedexGraphicData *v0 = param1->unk_00;

    SpriteTransfer_ResetCharTransfer(param0->unk_14[0]);
    SpriteTransfer_ResetPlttTransfer(param0->unk_14[1]);

    SpriteResourceCollection_Remove(v0->spriteResourceCollection[0], param0->unk_14[0]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[1], param0->unk_14[1]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[2], param0->unk_14[2]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[3], param0->unk_14[3]);

    SpriteTransfer_ResetCharTransfer(param0->unk_24[0]);
    SpriteTransfer_ResetPlttTransfer(param0->unk_24[1]);

    SpriteResourceCollection_Remove(v0->spriteResourceCollection[0], param0->unk_24[0]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[1], param0->unk_24[1]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[2], param0->unk_24[2]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[3], param0->unk_24[3]);

    Heap_Free(param0->unk_BC);
    Heap_Free(param0->unk_C0);
}

static void ov21_021E7B34(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1, const UnkStruct_ov21_021E7468 *param2, enum HeapID heapID)
{
    SpriteResourcesHeader v0;
    SpriteListTemplate v1;
    PokedexGraphicData *v2 = param1->unk_00;
    VecFx32 v3;
    short v4;
    short v5;
    int species = PokedexSort_CurrentSpecies(param2->unk_00);
    int v7 = PokedexSort_DefaultForm(param2->unk_00, species);

    SpriteResourcesHeader_Init(&v0, size_check_icons_NCGR_lz + 7000, size_check_icons_NCLR + 7000, size_check_icons_cell_NCER_lz + 7000, size_check_icons_anim_NANR_lz + 7000, 0xffffffff, 0xffffffff, FALSE, 3, v2->spriteResourceCollection[0], v2->spriteResourceCollection[1], v2->spriteResourceCollection[2], v2->spriteResourceCollection[3], NULL, NULL);

    v1.list = v2->spriteList;
    v1.resourceData = &v0;
    v1.priority = 31;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.heapID = heapID;
    v1.position.x = 184 << FX32_SHIFT;
    v1.position.y = 64 << FX32_SHIFT;

    param0->unk_00 = SpriteList_Add(&v1);

    if (PokedexSort_TrainerGender(param2->unk_00) == 0) {
        Sprite_SetAnim(param0->unk_00, 3);
    } else {
        Sprite_SetAnim(param0->unk_00, 4);
    }

    v1.position.x = 128 << FX32_SHIFT;
    v1.position.y = (96 + 10) << FX32_SHIFT;

    param0->unk_08 = SpriteList_Add(&v1);

    Sprite_SetAnim(param0->unk_08, 1);
    Sprite_SetExplicitPriority(param0->unk_08, 1);

    v1.position.x = 184 << FX32_SHIFT;
    v1.position.y = (64 + 24) << FX32_SHIFT;

    param0->unk_0C[0] = SpriteList_Add(&v1);
    Sprite_SetAnim(param0->unk_0C[0], 0);

    v1.position.x = 72 << FX32_SHIFT;
    v1.position.y = (64 + 24) << FX32_SHIFT;

    param0->unk_0C[1] = SpriteList_Add(&v1);

    Sprite_SetAnim(param0->unk_0C[1], 0);
    SpriteResourcesHeader_Init(&v0, SpriteResource_GetID(param0->unk_14[0]), SpriteResource_GetID(param0->unk_14[1]), SpriteResource_GetID(param0->unk_14[2]), SpriteResource_GetID(param0->unk_14[3]), 0xffffffff, 0xffffffff, FALSE, 3, v2->spriteResourceCollection[0], v2->spriteResourceCollection[1], v2->spriteResourceCollection[2], v2->spriteResourceCollection[3], NULL, NULL);

    v1.list = v2->spriteList;
    v1.resourceData = &v0;
    v1.priority = 31;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.heapID = heapID;
    v1.position.x = 72 << FX32_SHIFT;
    v1.position.y = 64 << FX32_SHIFT;

    param0->unk_04 = SpriteList_Add(&v1);
    Sprite_SetExplicitPaletteWithOffset(param0->unk_04, PokeIconPaletteIndex(species, v7, 0));
}

static void ov21_021E7CCC(UnkStruct_ov21_021E7714 *param0)
{
    Sprite_Delete(param0->unk_00);
    Sprite_Delete(param0->unk_04);
    Sprite_Delete(param0->unk_08);
    Sprite_Delete(param0->unk_0C[0]);
    Sprite_Delete(param0->unk_0C[1]);
}

static void ov21_021E7CF0(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1, const UnkStruct_ov21_021E7468 *param2, enum HeapID heapID)
{
    return;
}

static void ov21_021E7CF4(UnkStruct_ov21_021E7714 *param0)
{
    return;
}

static void ov21_021E7CF8(UnkStruct_ov21_021E747C *param0, enum HeapID heapID)
{
    String *v0 = String_Init(32, heapID);
    MessageLoader *pokedexMessageBank = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POKEDEX, heapID);

    MessageLoader_GetString(pokedexMessageBank, pl_msg_pokedex_weightcheck_topscreen, v0);

    {
        u32 v2 = Font_CalcCenterAlignment(FONT_SYSTEM, v0, 0, 256);
        Text_AddPrinterWithParamsAndColor(&param0->unk_00->window, FONT_SYSTEM, v0, v2, 24, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    }

    MessageLoader_GetString(pokedexMessageBank, pl_msg_pokedex_wt, v0);
    Text_AddPrinterWithParamsAndColor(&param0->unk_00->window, FONT_SYSTEM, v0, 32, 168, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    MessageLoader_GetString(pokedexMessageBank, pl_msg_pokedex_wt, v0);
    Text_AddPrinterWithParamsAndColor(&param0->unk_00->window, FONT_SYSTEM, v0, 152, 168, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    String_Free(v0);
    MessageLoader_Free(pokedexMessageBank);
}

static void ov21_021E7DA8(UnkStruct_ov21_021E747C *param0, const UnkStruct_ov21_021E7468 *param1, enum HeapID heapID)
{
    String *v0 = String_Init(32, heapID);
    int species = PokedexSort_CurrentSpecies(param1->unk_00);
    String *v3 = MessageUtil_SpeciesName(species, heapID);

    int weightMessageBankIndex = Weight_Message_Bank_Index();
    MessageLoader *v1 = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, weightMessageBankIndex, heapID);

    Text_AddPrinterWithParamsAndColor(&param0->unk_00->window, FONT_SYSTEM, v3, 26, 152, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    MessageLoader_GetString(v1, species, v0);

    {
        u32 v5 = 32 + 78 - Font_CalcStringWidth(FONT_SYSTEM, v0, 0);
        Text_AddPrinterWithParamsAndColor(&param0->unk_00->window, FONT_SYSTEM, v0, v5, 168, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    }

    String_Free(v3);
    MessageLoader_Free(v1);

    v1 = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POKEDEX, heapID);

    Text_AddPrinterWithParamsAndColor(&param0->unk_00->window, FONT_SYSTEM, PokedexSort_TrainerName(param1->unk_00), 146, 152, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);

    if (PokedexSort_TrainerGender(param1->unk_00) == 0) {
        MessageLoader_GetString(v1, pl_msg_pokedex_lucasweight, v0);
    } else {
        MessageLoader_GetString(v1, pl_msg_pokedex_dawnweight, v0);
    }

    {
        u32 v6 = 152 + 78 - Font_CalcStringWidth(FONT_SYSTEM, v0, 0);
        Text_AddPrinterWithParamsAndColor(&param0->unk_00->window, FONT_SYSTEM, v0, v6, 168, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    }

    String_Free(v0);
    MessageLoader_Free(v1);
}

static void ov21_021E7EC0(UnkStruct_ov21_021E747C *param0, enum HeapID heapID)
{
    SoftwareSpriteCharsTemplate v0;
    SoftwareSpritePaletteTemplate v1;

    param0->unk_10 = PokedexGraphics_GetGraphicNarcCharacterData(param0->unk_00, weight_scale_NCGR_lz, TRUE, &param0->unk_18, heapID);
    param0->unk_14 = PokedexGraphics_GetGraphicNarcPaletteData(param0->unk_00, banner_sinnoh_NCLR, &param0->unk_1C, heapID);

    v0.softSpriteMan = param0->unk_00->unk_164;
    v0.charsData = param0->unk_18;

    param0->unk_04 = SoftwareSprite_LoadChars(&v0);

    v1.softSpriteMan = param0->unk_00->unk_164;
    v1.paletteData = param0->unk_1C;
    v1.paletteSlot = 16;

    param0->unk_08 = SoftwareSprite_LoadPalette(&v1);
}

static void ov21_021E7F20(UnkStruct_ov21_021E747C *param0)
{
    SoftwareSprite_FreeChars(param0->unk_04);
    SoftwareSprite_FreePalette(param0->unk_08);
    Heap_Free(param0->unk_10);
    Heap_Free(param0->unk_14);
}

static void ov21_021E7F40(UnkStruct_ov21_021E747C *param0, int param1)
{
    SoftwareSpriteTemplate v0;

    v0.softSpriteMan = param0->unk_00->unk_164;
    v0.chars = param0->unk_04;
    v0.palette = param0->unk_08;

    v0.xPos = 128 - (128 / 2);
    v0.yPos = 96 - (16 / 2);
    v0.rotation = 0;
    v0.alpha = 31;
    v0.priority = 0;
    v0.paletteSlot = 0;

    param0->unk_0C = SoftwareSprite_Load(&v0);
}

static void ov21_021E7F7C(UnkStruct_ov21_021E747C *param0)
{
    SoftwareSprite_Reset(param0->unk_0C);
}

static void ov21_021E7F88(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1, int param2)
{
    param0->unk_40.unk_00 = param1->unk_0C;
    param0->unk_40.unk_04 = param0->unk_0C[0];
    param0->unk_40.unk_08 = param0->unk_0C[1];
    param0->unk_40.unk_0C = param0->unk_00;
    param0->unk_40.unk_10 = param0->unk_04;
    param0->unk_40.unk_2C = 0;
    param0->unk_40.unk_30 = &param0->unk_B8;
    param0->unk_B8 = 0;

    if (param2 == 0) {
        param0->unk_40.unk_14 = -1;
    } else {
        param0->unk_40.unk_14 = 1;
    }

    param0->unk_3C = SysTask_Start(ov21_021E7FD0, &param0->unk_40, 0);
}

static void ov21_021E7FD0(SysTask *param0, void *param1)
{
    UnkStruct_ov21_021E8084 *v0 = (UnkStruct_ov21_021E8084 *)param1;

    switch (v0->unk_2C) {
    case 0:
        v0->unk_18 = 2;
        v0->unk_2C = 2;
        break;
    case 1:
        ov21_021E8084(v0);
        break;
    case 2:
        v0->unk_24 = (-((3 * 0xffff) / 360)) * v0->unk_14;
        v0->unk_20 = -((1 * 0xffff) / 360) * v0->unk_14;
        v0->unk_28 = 3;
        v0->unk_2C = 1;
        ov21_021E8084(v0);
        break;
    case 3:
        v0->unk_24 = ((3 * 0xffff) / 360) * v0->unk_14;
        v0->unk_20 = ((1 * 0xffff) / 360) * v0->unk_14;
        v0->unk_28 = 4;
        v0->unk_2C = 1;
        ov21_021E8084(v0);
        break;
    case 4:
        v0->unk_24 = ((0 * 0xffff) / 360) * v0->unk_14;
        v0->unk_20 = -((1 * 0xffff) / 360) * v0->unk_14;
        v0->unk_2C = 1;

        v0->unk_18--;

        if (v0->unk_18 > 0) {
            v0->unk_28 = 2;
        } else {
            v0->unk_28 = 5;
        }

        ov21_021E8084(v0);
        break;
    case 5:
        SysTask_Done(param0);
        *v0->unk_30 = 1;
        break;
    }
}

static void ov21_021E8084(UnkStruct_ov21_021E8084 *param0)
{
    if (param0->unk_20 < 0) {
        if ((param0->unk_1C + param0->unk_20) >= param0->unk_24) {
            param0->unk_1C += param0->unk_20;
        } else {
            param0->unk_1C = param0->unk_24;
            param0->unk_2C = param0->unk_28;
        }
    } else {
        if ((param0->unk_1C + param0->unk_20) <= param0->unk_24) {
            param0->unk_1C += param0->unk_20;
        } else {
            param0->unk_1C = param0->unk_24;
            param0->unk_2C = param0->unk_28;
        }
    }

    ov21_021E80D4(param0->unk_00, param0->unk_04, param0->unk_08, param0->unk_0C, param0->unk_10, param0->unk_1C);
}

static void ov21_021E80D4(SoftwareSprite *param0, Sprite *param1, Sprite *param2, Sprite *param3, Sprite *param4, u16 param5)
{
    fx32 v0, v1;
    VecFx32 v2;

    SoftwareSprite_SetRotation(param0, param5);

    v0 = FX_Mul(FX_CosIdx(param5), 56 << FX32_SHIFT);
    v1 = FX_Mul(FX_SinIdx(param5), 56 << FX32_SHIFT);

    v2.x = (128 << FX32_SHIFT) + v0;
    v2.y = (64 << FX32_SHIFT) + v1;

    Sprite_SetPosition(param3, &v2);
    v2.y += 24 << FX32_SHIFT;
    Sprite_SetPosition(param1, &v2);

    v2.x = (128 << FX32_SHIFT) - v0;
    v2.y = (64 << FX32_SHIFT) - v1;

    Sprite_SetPosition(param4, &v2);
    v2.y += 24 << FX32_SHIFT;
    Sprite_SetPosition(param2, &v2);
}

static void ov21_021E8188(UnkStruct_ov21_021E7714 *param0, UnkStruct_ov21_021E747C *param1, u16 param2, u16 param3, int param4)
{
    param0->unk_74.unk_00 = param1->unk_0C;
    param0->unk_74.unk_04 = param0->unk_0C[0];
    param0->unk_74.unk_08 = param0->unk_0C[1];
    param0->unk_74.unk_0C = param0->unk_00;
    param0->unk_74.unk_10 = param0->unk_04;
    param0->unk_74.unk_14 = 0;
    param0->unk_74.unk_20 = &param0->unk_B8;
    param0->unk_B8 = 0;

    if (param4 == 0) {
        param0->unk_74.unk_18 = param2;
        param0->unk_74.unk_1C = param3;
    } else {
        param0->unk_74.unk_18 = -param2;
        param0->unk_74.unk_1C = -param3;
    }

    param0->unk_3C = SysTask_Start(ov21_021E81F8, &param0->unk_74, 0);
}

static void ov21_021E81F8(SysTask *param0, void *param1)
{
    UnkStruct_ov21_021E81F8 *v0 = (UnkStruct_ov21_021E81F8 *)param1;
    BOOL v1 = 0;

    if (v0->unk_18 < 0) {
        if ((v0->unk_14 + v0->unk_18) >= v0->unk_1C) {
            v0->unk_14 += v0->unk_18;
        } else {
            v0->unk_14 = v0->unk_1C;
            v1 = 1;
        }
    } else {
        if ((v0->unk_14 + v0->unk_18) <= v0->unk_1C) {
            v0->unk_14 += v0->unk_18;
        } else {
            v0->unk_14 = v0->unk_1C;
            v1 = 1;
        }
    }

    ov21_021E80D4(v0->unk_00, v0->unk_04, v0->unk_08, v0->unk_0C, v0->unk_10, v0->unk_14);

    if (v1 == 1) {
        SysTask_Done(param0);
        *v0->unk_20 = 1;
    }
}

static void ov21_021E8258(UnkStruct_ov21_021E7714 *param0, s16 param1, int param2)
{
    const VecFx32 *v0;

    if (param2 == 0) {
        param0->unk_98.unk_00 = param0->unk_04;
    } else {
        param0->unk_98.unk_00 = param0->unk_00;
    }

    param0->unk_98.unk_10 = (-param1 / 1) * 2;

    v0 = Sprite_GetPosition(param0->unk_98.unk_00);

    param0->unk_98.unk_04 = v0->x;
    param0->unk_98.unk_08 = v0->y;
    param0->unk_98.unk_14 = 0;
    param0->unk_98.unk_0C = param1;
    param0->unk_98.unk_18 = 0;
    param0->unk_98.unk_1C = &param0->unk_B8;
    param0->unk_B8 = 0;
    param0->unk_3C = SysTask_Start(ov21_021E82C8, &param0->unk_98, 0);
}

static void ov21_021E82C8(SysTask *param0, void *param1)
{
    UnkStruct_ov21_021E82C8 *v0 = (UnkStruct_ov21_021E82C8 *)param1;
    int v1;
    VecFx32 v2;

    switch (v0->unk_18) {
    case 0:
        v0->unk_14++;
        v1 = (v0->unk_0C * v0->unk_14) + ((1 * (v0->unk_14 * v0->unk_14)) / 2);

        v2.x = v0->unk_04;
        v2.y = v0->unk_08 + (v1 << FX32_SHIFT);

        Sprite_SetPosition(v0->unk_00, &v2);

        if (v0->unk_14 >= v0->unk_10) {
            v0->unk_14 = 0;
            v0->unk_10 = 1 + (v0->unk_0C / 2);
            v0->unk_18++;
        }
        break;
    case 1:
        if (v0->unk_14 == 0) {
            v2.x = v0->unk_04 + (2 * FX32_ONE);
            v2.y = v0->unk_08;
            Sprite_SetPosition(v0->unk_00, &v2);
        }

        v0->unk_14++;

        if (v0->unk_14 > 1) {
            v0->unk_14 = 0;
            v0->unk_18++;
        }
        break;
    case 2:
        if (v0->unk_14 == 0) {
            v2.x = v0->unk_04 - (2 * FX32_ONE);
            v2.y = v0->unk_08;
            Sprite_SetPosition(v0->unk_00, &v2);
        }

        v0->unk_14++;

        if (v0->unk_14 > 1) {
            v0->unk_10--;

            if (v0->unk_10 > 0) {
                v0->unk_14 = 0;
                v0->unk_18 = 1;
            } else {
                v0->unk_18++;
            }
        }
        break;
    case 3:
        v2.x = v0->unk_04;
        v2.y = v0->unk_08;
        Sprite_SetPosition(v0->unk_00, &v2);
        SysTask_Done(param0);
        *v0->unk_1C = 1;
        break;
    }
}

static const UnkStruct_ov21_021E9DB0 *ov21_021E83D8(const UnkStruct_ov21_021E9DB0 *param0, int param1, int param2)
{
    int v0;

    for (v0 = 0; v0 < param1; v0++) {
        if (param0[v0].unk_00 >= param2) {
            return &param0[v0];
        }
    }

    return NULL;
}

static void ov21_021E8400(UnkStruct_ov21_021E7714 *param0, u8 param1, u16 param2)
{
    NNSG2dPaletteData *v0 = SpriteResource_GetPaletteFade(param0->unk_14[1]);
    const NNSG2dImagePaletteProxy *v1 = SpriteTransfer_GetPaletteProxy(param0->unk_14[1], NULL);

    BlendPalette(v0->pRawData, param0->unk_BC, 3 * 16, param1, param2);
    VramTransfer_Request(NNS_GFD_DST_2D_OBJ_PLTT_MAIN, NNS_G2dGetImagePaletteLocation(v1, NNS_G2D_VRAM_TYPE_2DMAIN), param0->unk_BC, 3 * 32);

    v0 = SpriteResource_GetPaletteFade(param0->unk_24[1]);
    v1 = SpriteTransfer_GetPaletteProxy(param0->unk_24[1], NULL);

    BlendPalette(v0->pRawData, param0->unk_C0, 5 * 16, param1, param2);
    VramTransfer_Request(NNS_GFD_DST_2D_OBJ_PLTT_MAIN, NNS_G2dGetImagePaletteLocation(v1, NNS_G2D_VRAM_TYPE_2DMAIN), param0->unk_C0, 5 * 32);
}
