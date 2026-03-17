#include "applications/pokedex/ov21_021D5AEC.h"

#include <nitro.h>
#include <string.h>

#include "applications/pokedex/ov21_021D4340.h"
#include "applications/pokedex/pokedex_app.h"
#include "applications/pokedex/pokedex_data_manager.h"
#include "applications/pokedex/pokedex_graphics.h"
#include "applications/pokedex/pokedex_graphics_manager.h"
#include "applications/pokedex/pokedex_main.h"
#include "applications/pokedex/pokedex_sort.h"
#include "applications/pokedex/pokedex_text_manager.h"
#include "applications/pokedex/species_caught_status.h"
#include "applications/pokedex/struct_ov21_021D4660.h"
#include "applications/pokedex/struct_ov21_021D5B68.h"
#include "applications/pokedex/struct_ov21_021E68F4.h"

#include "bg_window.h"
#include "brightness_controller.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "pokemon_sprite.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "string_gf.h"
#include "system.h"
#include "text.h"
#include "unk_02012744.h"

#include "res/graphics/pokedex/zukan.naix"
#include "res/text/bank/pokedex.h"

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    BOOL unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
} UnkStruct_ov21_021D7464;

typedef struct {
    Sprite *unk_00[9];
    int unk_24;
    PokedexTextData *unk_28[9];
    int unk_4C;
    Sprite *unk_50[9];
    Sprite *unk_74;
    fx32 unk_78;
    Sprite *unk_7C;
    SpriteResourceCollection *unk_80[4];
    SpriteResourcesHeader unk_90;
    SpriteResourcesHeader unk_B4;
    void *unk_D8;
    NNSG2dScreenData *unk_DC;
    PokedexLoadingScreen loadingScreen;
    SpriteTransformation unk_104;
    SpriteTransformation unk_124;
    int unk_144;
} UnkStruct_ov21_021D71A8;

static UnkStruct_ov21_021D5B68 *ov21_021D5B90(enum HeapID heapID, PokedexApp *param1);
static void ov21_021D5BCC(UnkStruct_ov21_021D5B68 *param0);
static PokedexGraphicData **ov21_021D5BE0(enum HeapID heapID, PokedexApp *param1);
static void ov21_021D5C08(PokedexGraphicData **param0);
static UnkStruct_ov21_021D4660 *ov21_021D5C1C(enum HeapID heapID, PokedexScreenManager *param1, PokedexApp *param2);
static void ov21_021D5C7C(UnkStruct_ov21_021D4660 *param0);
static int ov21_021D5CB4(void);
static int ov21_021D5CB8(PokedexDataManager *dataMan, void *data);
static int ov21_021D5D04(PokedexDataManager *dataMan, void *data);
static int ov21_021D5D34(PokedexDataManager *dataMan, void *data);
static int ov21_021D5D48(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static int ov21_021D5E2C(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static int ov21_021D5EA8(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static void ov21_021D71A8(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021D5B68 *param2, BOOL param3);
static BOOL ov21_021D71E4(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021D5B68 *param2, BOOL param3);
static void ov21_021D7248(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021D5B68 *param2, BOOL param3);
static BOOL ov21_021D72D4(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021D5B68 *param2, BOOL param3);
static void ov21_021D6FB4(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021D5B68 *param2, BOOL param3);
static BOOL ov21_021D7044(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData **param1);
static void ov21_021D7094(PokedexGraphicData **param0, const UnkStruct_ov21_021D5B68 *param1, BOOL param2);
static void ov21_021D7394(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData **param1);
static BOOL ov21_021D73C8(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData **param1);
static void ov21_021D73F0(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData **param1);
static BOOL ov21_021D7424(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData **param1);
static void ov21_021D5F7C(UnkStruct_ov21_021D5B68 *param0, UnkStruct_ov21_021D7464 *param1, int param2);
static BOOL ov21_021D601C(UnkStruct_ov21_021D5B68 *param0, UnkStruct_ov21_021D7464 *param1, int param2);
static void ov21_021D5FC4(UnkStruct_ov21_021D5B68 *param0);
static void ov21_021D5FD4(UnkStruct_ov21_021D5B68 *param0);
static void ov21_021D5F58(UnkStruct_ov21_021D5B68 *param0, UnkStruct_ov21_021D7464 *param1);
static void ov21_021D60A4(UnkStruct_ov21_021D5B68 *param0, UnkStruct_ov21_021D7464 *param1);
static void ov21_021D60FC(UnkStruct_ov21_021D5B68 *param0, UnkStruct_ov21_021D7464 *param1, int param2);
static BOOL ov21_021D6108(UnkStruct_ov21_021D5B68 *param0, int param1);
static void ov21_021D5F6C(UnkStruct_ov21_021D5B68 *param0, UnkStruct_ov21_021D7464 *param1);
static void ov21_021D744C(UnkStruct_ov21_021D5B68 *param0);
static void ov21_021D7464(UnkStruct_ov21_021D7464 *param0, UnkStruct_ov21_021D5B68 *param1);
static BOOL ov21_021D747C(UnkStruct_ov21_021D5B68 *param0);
static BOOL ov21_021D74B0(UnkStruct_ov21_021D5B68 *param0, int param1);
static void ov21_021D7538(UnkStruct_ov21_021D5B68 *param0, int param1);
static void ov21_021D7590(UnkStruct_ov21_021D7464 *param0, UnkStruct_ov21_021D5B68 *param1);
static void ov21_021D75DC(UnkStruct_ov21_021D7464 *param0, UnkStruct_ov21_021D5B68 *param1);
static void ov21_021D6C24(UnkStruct_ov21_021D71A8 *param0, const UnkStruct_ov21_021D5B68 *param1);
static void ov21_021D6114(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData *param1, const UnkStruct_ov21_021D5B68 *param2, enum HeapID heapID);
static void ov21_021D61D8(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData *param1);
static void ov21_021D61F4(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData *param1, const UnkStruct_ov21_021D5B68 *param2, enum HeapID heapID);
static void ov21_021D62E4(PokedexGraphicData *param0, enum HeapID heapID);
static void ov21_021D637C(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData *param1, enum HeapID heapID, int param3);
static void ov21_021D63C0(UnkStruct_ov21_021D71A8 *param0);
static void ov21_021D63DC(PokedexGraphicData *param0, enum HeapID heapID, int param2, int param3);
static void ov21_021D64B0(PokedexGraphicData *param0, enum HeapID heapID, int param2);
static void ov21_021D6538(UnkStruct_ov21_021D71A8 *param0, enum HeapID heapID);
static void ov21_021D6580(UnkStruct_ov21_021D71A8 *param0);
static void ov21_021D65DC(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData *param1, int param2);
static void ov21_021D6744(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData *param1, int param2);
static void ov21_021D695C(UnkStruct_ov21_021D71A8 *param0);
static int ov21_021D70C0(PokedexGraphicData *param0, enum HeapID heapID);
static void ov21_021D67EC(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData *param1, const UnkStruct_ov21_021D5B68 *param2, int param3);
static void ov21_021D6940(UnkStruct_ov21_021D71A8 *param0);
static void ov21_021D68C8(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData *param1, const UnkStruct_ov21_021D5B68 *param2);
static void ov21_021D70E8(UnkStruct_ov21_021D71A8 *param0);
static void ov21_021D7124(UnkStruct_ov21_021D71A8 *param0);
static void ov21_021D6994(UnkStruct_ov21_021D71A8 *param0, const UnkStruct_ov21_021D5B68 *param1);
static void ov21_021D69A0(UnkStruct_ov21_021D71A8 *param0, const UnkStruct_ov21_021D5B68 *param1);
static void ov21_021D6ED0(UnkStruct_ov21_021D71A8 *param0, const UnkStruct_ov21_021D5B68 *param1);
static void ov21_021D6A58(UnkStruct_ov21_021D71A8 *param0, const UnkStruct_ov21_021D5B68 *param1);
static void ov21_021D6AE4(UnkStruct_ov21_021D71A8 *param0, const UnkStruct_ov21_021D5B68 *param1);
static void ov21_021D6B94(UnkStruct_ov21_021D71A8 *param0, const UnkStruct_ov21_021D5B68 *param1);
static void ov21_021D6BB0(UnkStruct_ov21_021D71A8 *param0, const UnkStruct_ov21_021D5B68 *param1);
static void ov21_021D6C44(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData *param1, const UnkStruct_ov21_021D5B68 *param2, int param3);
static void ov21_021D6CC8(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData *param1, const UnkStruct_ov21_021D5B68 *param2, int param3);
static void ov21_021D6D78(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData *param1, const UnkStruct_ov21_021D5B68 *param2, int param3, int param4, int dexIndex);
static void ov21_021D6DF4(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData *param1, enum HeapID heapID, int param3, int param4);
static void ov21_021D6CA4(Sprite *param0, int *param1, int *param2);
static fx32 ov21_021D6BF8(fx32 param0, fx32 param1, int param2, int param3);
static void ov21_021D6F20(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData *param1, const UnkStruct_ov21_021D5B68 *param2);
static void ov21_021D6F74(const UnkStruct_ov21_021D5B68 *param0);
static void ov21_021D6F64(PokedexGraphicData *param0, const UnkStruct_ov21_021D5B68 *param1);
static void ov21_021D7160(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData *param1, const UnkStruct_ov21_021D5B68 *param2, int param3);

const static int Unk_ov21_021E9D14[] = {
    (180 * FX32_ONE) + 9 * FX32_ONE,
    (180 * FX32_ONE) + 5 * FX32_ONE,
    (180 * FX32_ONE) + 1 * FX32_ONE,
    (180 * FX32_ONE) - 3 * FX32_ONE,
    (180 * FX32_ONE) - 5 * FX32_ONE,
    (170 * FX32_ONE),
    (180 * FX32_ONE) - 5 * FX32_ONE,
    (180 * FX32_ONE) - 3 * FX32_ONE,
    (180 * FX32_ONE) + 1 * FX32_ONE,
    (180 * FX32_ONE) + 5 * FX32_ONE,
    (180 * FX32_ONE) + 9
};

const static int Unk_ov21_021E9D40[] = {
    12 * FX32_ONE,
    22 * FX32_ONE,
    26 * FX32_ONE,
    42 * FX32_ONE,
    58 * FX32_ONE,
    82 * FX32_ONE,
    106 * FX32_ONE,
    122 * FX32_ONE,
    138 * FX32_ONE,
    142 * FX32_ONE,
    152 * FX32_ONE
};

void ov21_021D5AEC(PokedexScreenManager *param0, PokedexApp *param1, enum HeapID heapID)
{
    UnkStruct_ov21_021D5B68 *v0;
    PokedexGraphicData **v1;
    UnkStruct_ov21_021D4660 *v2;

    v0 = ov21_021D5B90(heapID, param1);
    v1 = ov21_021D5BE0(heapID, param1);
    v2 = ov21_021D5C1C(heapID, param0, param1);

    param0->pageData = v0;
    param0->pageGraphics = v1;
    param0->screenStates = v2;
    param0->numStates = ov21_021D5CB4();

    param0->dataFunc[0] = ov21_021D5CB8;
    param0->dataFunc[1] = ov21_021D5D04;
    param0->dataFunc[2] = ov21_021D5D34;
    param0->graphicsFunc[0] = ov21_021D5D48;
    param0->graphicsFunc[1] = ov21_021D5E2C;
    param0->graphicsFunc[2] = ov21_021D5EA8;
}

void ov21_021D5B50(PokedexScreenManager *param0)
{
    ov21_021D5BCC(param0->pageData);
    ov21_021D5C08(param0->pageGraphics);
    ov21_021D5C7C(param0->screenStates);
}

BOOL ov21_021D5B68(const UnkStruct_ov21_021D5B68 *param0)
{
    if ((param0->unk_24 == 1) || (param0->unk_28 == 1) || (param0->unk_2C == 1) || (param0->unk_30 == 1) || (param0->unk_34 == 1)) {
        return 0;
    }

    return 1;
}

static UnkStruct_ov21_021D5B68 *ov21_021D5B90(enum HeapID heapID, PokedexApp *param1)
{
    UnkStruct_ov21_021D5B68 *v0 = Heap_Alloc(heapID, sizeof(UnkStruct_ov21_021D5B68));
    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D5B68));

    v0->unk_00 = ov21_021D138C(param1);
    v0->unk_04 = PokedexMain_GetSortData(param1);
    v0->unk_10 = 0;
    v0->unk_14 = 0;
    v0->unk_1C = 1;

    return v0;
}

static void ov21_021D5BCC(UnkStruct_ov21_021D5B68 *param0)
{
    GF_ASSERT(param0);
    Heap_Free(param0);
}

static PokedexGraphicData **ov21_021D5BE0(enum HeapID heapID, PokedexApp *param1)
{
    PokedexGraphicData **v0 = Heap_Alloc(heapID, sizeof(PokedexGraphicData **));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(PokedexGraphicData **));

    *v0 = PokedexMain_GetGraphicData(param1);

    return v0;
}

static void ov21_021D5C08(PokedexGraphicData **param0)
{
    GF_ASSERT(param0);
    Heap_Free(param0);
}

static UnkStruct_ov21_021D4660 *ov21_021D5C1C(enum HeapID heapID, PokedexScreenManager *param1, PokedexApp *param2)
{
    UnkStruct_ov21_021D4660 *v0 = Heap_Alloc(heapID, sizeof(UnkStruct_ov21_021D4660) * ov21_021D5CB4());
    ov21_021D467C(heapID, &v0[0], param2, (1 << 0));
    ov21_021D475C(heapID, &v0[1], param2, (1 << 1));
    ov21_021D4704(heapID, &v0[2], param2, (1 << 2));
    ov21_021D4878(&v0[3], param2, heapID, (1 << 3));
    ov21_021D47F0(heapID, &v0[4], param2, (1 << 4));

    return v0;
}

static void ov21_021D5C7C(UnkStruct_ov21_021D4660 *param0)
{
    GF_ASSERT(param0);

    ov21_021D4660(&param0[0]);
    ov21_021D4660(&param0[1]);
    ov21_021D4660(&param0[2]);
    ov21_021D4660(&param0[3]);
    ov21_021D4660(&param0[4]);

    Heap_Free(param0);
}

static int ov21_021D5CB4(void)
{
    return 5;
}

static int ov21_021D5CB8(PokedexDataManager *dataMan, void *data)
{
    UnkStruct_ov21_021D5B68 *v0 = data;

    dataMan->pageData = Heap_Alloc(dataMan->heapID, sizeof(UnkStruct_ov21_021D7464));

    GF_ASSERT(dataMan->pageData);
    memset(dataMan->pageData, 0, sizeof(UnkStruct_ov21_021D7464));

    ov21_021D5F58(v0, dataMan->pageData);
    PokedexSort_UpdateCurrentValues(v0->unk_04);

    v0->unk_1C = 1;
    v0->unk_20 = 0;

    if (v0->unk_18 == 1) {
        v0->unk_10 = 1;
    }

    ov21_021D5FC4(v0);

    return 1;
}

static int ov21_021D5D04(PokedexDataManager *dataMan, void *data)
{
    UnkStruct_ov21_021D5B68 *v0 = data;
    UnkStruct_ov21_021D7464 *v1 = dataMan->pageData;

    if (dataMan->exit == 1) {
        return 1;
    }

    if (dataMan->state == 0) {
        v0->unk_18 = 0;
        dataMan->state = 1;
    } else {
        ov21_021D5F7C(v0, v1, dataMan->heapID);
    }

    return 0;
}

static int ov21_021D5D34(PokedexDataManager *dataMan, void *data)
{
    Heap_Free(dataMan->pageData);
    dataMan->pageData = NULL;

    return 1;
}

static int ov21_021D5D48(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    PokedexGraphicData **v0 = graphics;
    const UnkStruct_ov21_021D5B68 *v1 = data;
    const UnkStruct_ov21_021D7464 *v2 = dataMan->pageData;
    UnkStruct_ov21_021D71A8 *v3 = graphicsMan->pageGraphics;
    BOOL v4;

    switch (graphicsMan->state) {
    case 0:
        v3 = Heap_Alloc(graphicsMan->heapID, sizeof(UnkStruct_ov21_021D71A8));
        GF_ASSERT(v3);
        graphicsMan->pageGraphics = v3;
        ov21_021D6C24(v3, v1);
        ov21_021D68C8(v3, *v0, v1);
        graphicsMan->state++;
        break;
    case 1:
        if (v1->unk_04->unk_1740 == 0) {
            ov21_021D6114(v3, *v0, v1, graphicsMan->heapID);
        } else {
            ov21_021D61F4(v3, *v0, v1, graphicsMan->heapID);
        }

        if (v1->unk_14) {
            ov21_021D7248(v3, v0, v1, 1);
        } else {
            ov21_021D71A8(v3, v0, v1, 1);
        }

        graphicsMan->state++;
        break;
    case 2:
        if (v1->unk_14) {
            v4 = ov21_021D72D4(v3, v0, v1, 1);
        } else {
            v4 = ov21_021D71E4(v3, v0, v1, 1);
        }

        if (v4) {
            graphicsMan->state++;
        }
        break;
    case 3:
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG0, GX_BLEND_PLANEMASK_BG3, 0, 16);
        return 1;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}

static int ov21_021D5E2C(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    PokedexGraphicData **v0 = graphics;
    const UnkStruct_ov21_021D5B68 *v1 = data;
    const UnkStruct_ov21_021D7464 *v2 = dataMan->pageData;
    UnkStruct_ov21_021D71A8 *v3 = graphicsMan->pageGraphics;
    int v4;

    if (v1->unk_1C == 0) {
        return 0;
    }

    v4 = PokedexSort_CurrentDisplayIndex(v1->unk_04);

    if (v3->unk_144 != v4) {
        v3->unk_144 = v4;
        ov21_021D6A58(v3, v1);
        ov21_021D6CC8(v3, *v0, v1, graphicsMan->heapID);
        ov21_021D68C8(v3, *v0, v1);
    }

    ov21_021D69A0(v3, v1);
    ov21_021D6AE4(v3, v1);
    ov21_021D6BB0(v3, v1);
    ov21_021D6C44(v3, *v0, v1, graphicsMan->heapID);
    ov21_021D6F20(v3, *v0, v1);
    ov21_021D6F74(v1);

    return 0;
}

static int ov21_021D5EA8(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    PokedexGraphicData **v0 = graphics;
    const UnkStruct_ov21_021D5B68 *v1 = data;
    const UnkStruct_ov21_021D7464 *v2 = dataMan->pageData;
    UnkStruct_ov21_021D71A8 *v3 = graphicsMan->pageGraphics;
    BOOL v4;

    switch (graphicsMan->state) {
    case 0:
        G2_BlendNone();

        if (v1->unk_14) {
            ov21_021D7160(v3, *v0, v1, graphicsMan->heapID);
            ov21_021D6F64(*v0, v1);
            ov21_021D7248(v3, v0, v1, 0);
        } else {
            ov21_021D71A8(v3, v0, v1, 0);
        }

        graphicsMan->state++;
        break;
    case 1:
        if (v1->unk_14) {
            v4 = ov21_021D72D4(v3, v0, v1, 0);
        } else {
            v4 = ov21_021D71E4(v3, v0, v1, 0);
        }

        if (v4) {
            graphicsMan->state++;
        }
        break;
    case 2:
        ov21_021D61D8(v3, *v0);
        Heap_Free(v3);
        graphicsMan->state++;
        break;
    case 3:
        return 1;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}

static void ov21_021D5F58(UnkStruct_ov21_021D5B68 *param0, UnkStruct_ov21_021D7464 *param1)
{
    param0->unk_08 = 0;
    param1->unk_00 = 0;
    param1->unk_04 = 60;
    param1->unk_08 = 4;
    param1->unk_0C = 4;
}

static void ov21_021D5F6C(UnkStruct_ov21_021D5B68 *param0, UnkStruct_ov21_021D7464 *param1)
{
    param1->unk_04 = (64 * 10);
    param1->unk_08 = 0;
    param1->unk_0C = 0;
}

static void ov21_021D5F7C(UnkStruct_ov21_021D5B68 *param0, UnkStruct_ov21_021D7464 *param1, int param2)
{
    if (ov21_021D601C(param0, param1, param2) == 1) {
        return;
    }

    ov21_021D5FC4(param0);

    if (param1->unk_00 == 0) {
        if (param1->unk_14 == 1) {
            ov21_021D7590(param1, param0);
        } else {
            ov21_021D75DC(param1, param0);
        }
    }

    if (param0->unk_20 != 0) {
        ov21_021D60A4(param0, param1);
    }

    ov21_021D5FD4(param0);
}

static void ov21_021D5FC4(UnkStruct_ov21_021D5B68 *param0)
{
    param0->unk_24 = 0;
    param0->unk_28 = 0;
    param0->unk_2C = 0;
    param0->unk_30 = 0;
    param0->unk_34 = 0;
}

static void ov21_021D5FD4(UnkStruct_ov21_021D5B68 *param0)
{
    if (gSystem.pressedKeys & PAD_BUTTON_B) {
        if (param0->unk_04->unk_1740 == 0) {
            param0->unk_28 = 1;
        } else {
            param0->unk_24 = 1;
        }

        return;
    }

    if (gSystem.pressedKeys & PAD_BUTTON_A) {
        param0->unk_2C = 1;
        return;
    }

    if (gSystem.pressedKeys & PAD_BUTTON_X) {
        param0->unk_34 = 1;
        return;
    }

    if (gSystem.pressedKeys & PAD_BUTTON_SELECT) {
        param0->unk_30 = 1;
        return;
    }
}

static BOOL ov21_021D601C(UnkStruct_ov21_021D5B68 *param0, UnkStruct_ov21_021D7464 *param1, int param2)
{
    if (param0->unk_28) {
        ov21_021D744C(param0);
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        return 1;
    }

    if (param0->unk_24) {
        ov21_021D7538(param0, param2);
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        return 1;
    }

    if (param0->unk_2C) {
        int v0 = PokedexSort_CurrentDisplayIndex(param0->unk_04);

        if (PokedexSort_DisplayIndexToStatusIndex(param0->unk_04, v0) != (NATIONAL_DEX_COUNT + 1)) {
            ov21_021D7464(param1, param0);
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            return 1;
        }
    }

    if (param0->unk_34) {
        return ov21_021D747C(param0);
    }

    if (param0->unk_30) {
        return ov21_021D74B0(param0, param2);
    }

    return 0;
}

static void ov21_021D60A4(UnkStruct_ov21_021D5B68 *param0, UnkStruct_ov21_021D7464 *param1)
{
    if (param1->unk_00 == 0) {
        return;
    }

    if ((param0->unk_0C - param1->unk_04) > 0) {
        param0->unk_0C -= param1->unk_04;
    } else {
        param0->unk_0C = 0;
        param1->unk_00 = 0;

        if (param1->unk_0C > 0) {
            if ((param1->unk_08 - 1) > 0) {
                param1->unk_08--;
            } else {
                param1->unk_04 *= (1.60f);
                param1->unk_0C--;
                param1->unk_08 = 4 * (4 - param1->unk_0C);
            }
        }
    }
}

static void ov21_021D60FC(UnkStruct_ov21_021D5B68 *param0, UnkStruct_ov21_021D7464 *param1, int param2)
{
    param0->unk_0C = (64 * 10);
    param1->unk_00 = param2;
    param0->unk_08 = param2;
}

static BOOL ov21_021D6108(UnkStruct_ov21_021D5B68 *param0, int param1)
{
    return PokedexSort_TakeStep(param0->unk_04, param1);
}

static void ov21_021D6114(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData *param1, const UnkStruct_ov21_021D5B68 *param2, enum HeapID heapID)
{
    PokedexGraphics_LoadGraphicNarcPaletteData(param1, background_scroll_default_NCLR, 0, 0, 0, heapID);
    ov21_021D62E4(param1, heapID);
    ov21_021D637C(param0, param1, heapID, PokedexSort_IsNationalDex(param2->unk_04));
    ov21_021D63DC(param1, heapID, PokedexSort_NumEncountered(param2->unk_04), PokedexSort_NumCaught(param2->unk_04));
    ov21_021D6538(param0, heapID);
    ov21_021D65DC(param0, param1, heapID);
    ov21_021D6744(param0, param1, heapID);

    param0->unk_4C = ov21_021D70C0(param1, heapID);

    ov21_021D67EC(param0, param1, param2, heapID);
    ov21_021D6994(param0, param2);
    ov21_021D69A0(param0, param2);
    ov21_021D6AE4(param0, param2);
    ov21_021D6B94(param0, param2);
    ov21_021D6BB0(param0, param2);
    ov21_021D6C44(param0, param1, param2, heapID);
    ov21_021D6F20(param0, param1, param2);
}

static void ov21_021D61D8(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData *param1)
{
    ov21_021D695C(param0);
    ov21_021D6580(param0);
    ov21_021D6940(param0);
    ov21_021D63C0(param0);
}

static void ov21_021D61F4(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData *param1, const UnkStruct_ov21_021D5B68 *param2, enum HeapID heapID)
{
    void *v0;
    NNSG2dPaletteData *v1;
    u8 *v2;

    PokedexGraphics_LoadGraphicNarcPaletteData(param1, register_NCLR, 0, 0, 32, heapID);

    v0 = PokedexGraphics_GetGraphicNarcPaletteData(param1, background_scroll_default_NCLR, &v1, heapID);
    v2 = (u8 *)v1->pRawData;

    DC_FlushRange(v2, 16 * 32);
    GX_LoadBGPltt(v2 + 32, 32, 15 * 32);

    Heap_Free(v0);

    ov21_021D62E4(param1, heapID);
    ov21_021D637C(param0, param1, heapID, PokedexSort_IsNationalDex(param2->unk_04));
    ov21_021D6538(param0, heapID);
    ov21_021D65DC(param0, param1, heapID);
    ov21_021D6744(param0, param1, heapID);

    param0->unk_4C = ov21_021D70C0(param1, heapID);

    ov21_021D67EC(param0, param1, param2, heapID);
    ov21_021D64B0(param1, heapID, PokedexSort_NumEncountered(param2->unk_04));
    ov21_021D6994(param0, param2);
    ov21_021D69A0(param0, param2);
    ov21_021D6AE4(param0, param2);
    ov21_021D6B94(param0, param2);
    ov21_021D6BB0(param0, param2);
    ov21_021D6C44(param0, param1, param2, heapID);
    ov21_021D6F20(param0, param1, param2);
}

static void ov21_021D62E4(PokedexGraphicData *param0, enum HeapID heapID)
{
    void *v0;
    NNSG2dScreenData *v1;

    PokedexGraphics_LoadGraphicNarcCharacterData(param0, scroll_main_background_NCGR_lz, param0->bgConfig, 3, 0, 0, TRUE, heapID);

    v0 = PokedexGraphics_GetGraphicNarcTilemapData(param0, scroll_main_background_NSCR_lz, TRUE, &v1, heapID);

    Bg_LoadToTilemapRect(param0->bgConfig, 3, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_Free(v0);

    v0 = PokedexGraphics_GetGraphicNarcTilemapData(param0, register_species_window_NSCR_lz, TRUE, &v1, heapID);

    Bg_LoadToTilemapRect(param0->bgConfig, 3, v1->rawData, 1, 4, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_Free(v0);
    Bg_ScheduleTilemapTransfer(param0->bgConfig, 3);
}

static void ov21_021D637C(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData *param1, enum HeapID heapID, int param3)
{
    int v0;

    PokedexGraphics_LoadGraphicNarcCharacterData(param1, scroll_main_background_NCGR_lz, param1->bgConfig, 2, 0, 0, TRUE, heapID);

    if (param3 == 1) {
        v0 = search_national_NSCR_lz;
    } else {
        v0 = search_sinnoh_NSCR_lz;
    }

    param0->unk_D8 = PokedexGraphics_GetGraphicNarcTilemapData(param1, v0, TRUE, &param0->unk_DC, heapID);
}

static void ov21_021D63C0(UnkStruct_ov21_021D71A8 *param0)
{
    Heap_Free(param0->unk_D8);
    param0->unk_D8 = NULL;
    param0->unk_DC = NULL;
}

static void ov21_021D63DC(PokedexGraphicData *param0, enum HeapID heapID, int param2, int param3)
{
    String *v0 = String_Init(32, heapID);
    MessageLoader *pokedexMessageBank = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POKEDEX, heapID);

    MessageLoader_GetString(pokedexMessageBank, pl_msg_pokedex_seen, v0);
    Text_AddPrinterWithParamsAndColor(&param0->window, FONT_SYSTEM, v0, 8, 152, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);

    MessageLoader_GetString(pokedexMessageBank, pl_msg_pokedex_obtained, v0);
    Text_AddPrinterWithParamsAndColor(&param0->window, FONT_SYSTEM, v0, 128, 152, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);

    String_FormatInt(v0, param2, 3, 2, 1);
    Text_AddPrinterWithParamsAndColor(&param0->window, FONT_SYSTEM, v0, 48, 170, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);

    String_FormatInt(v0, param3, 3, 2, 1);
    Text_AddPrinterWithParamsAndColor(&param0->window, FONT_SYSTEM, v0, 180, 170, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);

    String_Free(v0);
    MessageLoader_Free(pokedexMessageBank);
    Bg_ScheduleTilemapTransfer(param0->bgConfig, 1);
}

static void ov21_021D64B0(PokedexGraphicData *param0, enum HeapID heapID, int param2)
{
    String *v0 = String_Init(32, heapID);
    MessageLoader *pokedexMessageBank = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POKEDEX, heapID);

    MessageLoader_GetString(pokedexMessageBank, pl_msg_pokedex_results, v0);
    Text_AddPrinterWithParamsAndColor(&param0->window, FONT_SYSTEM, v0, 8, 152, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    String_FormatInt(v0, param2, 3, 2, 1);
    Text_AddPrinterWithParamsAndColor(&param0->window, FONT_SYSTEM, v0, 48, 170, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    String_Free(v0);
    MessageLoader_Free(pokedexMessageBank);
    Bg_ScheduleTilemapTransfer(param0->bgConfig, 1);
}

static void ov21_021D6538(UnkStruct_ov21_021D71A8 *param0, enum HeapID heapID)
{
    param0->unk_80[0] = SpriteResourceCollection_New(2, 0, heapID);
    param0->unk_80[1] = SpriteResourceCollection_New(2, 1, heapID);
    param0->unk_80[2] = SpriteResourceCollection_New(2, 2, heapID);
    param0->unk_80[3] = SpriteResourceCollection_New(2, 3, heapID);
}

static void ov21_021D6580(UnkStruct_ov21_021D71A8 *param0)
{
    SpriteResource *v0 = SpriteResourceCollection_Find(param0->unk_80[0], search_body_shapes_NCGR_lz);
    SpriteTransfer_ResetCharTransfer(v0);

    v0 = SpriteResourceCollection_Find(param0->unk_80[1], buttons_NCLR);
    SpriteTransfer_ResetPlttTransfer(v0);

    v0 = SpriteResourceCollection_Find(param0->unk_80[0], unseen_icon_NCGR_lz);
    SpriteTransfer_ResetCharTransfer(v0);

    SpriteResourceCollection_Delete(param0->unk_80[0]);
    SpriteResourceCollection_Delete(param0->unk_80[1]);
    SpriteResourceCollection_Delete(param0->unk_80[2]);
    SpriteResourceCollection_Delete(param0->unk_80[3]);
}

static void ov21_021D65DC(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData *param1, int param2)
{
    SpriteResource *v0;
    NARC *v1 = PokedexGraphics_GetNARC(param1);

    v0 = SpriteResourceCollection_AddTilesFrom(param0->unk_80[0], v1, search_body_shapes_NCGR_lz, TRUE, search_body_shapes_NCGR_lz, NNS_G2D_VRAM_TYPE_2DMAIN, param2);

    SpriteTransfer_RequestCharAtEnd(v0);
    SpriteResource_ReleaseData(v0);

    v0 = SpriteResourceCollection_AddPaletteFrom(param0->unk_80[1], v1, buttons_NCLR, FALSE, buttons_NCLR, NNS_G2D_VRAM_TYPE_2DMAIN, 12, param2);

    SpriteTransfer_RequestPlttFreeSpace(v0);
    SpriteResource_ReleaseData(v0);
    SpriteResourceCollection_AddFrom(param0->unk_80[2], v1, search_body_shapes_cell_NCER_lz, TRUE, search_body_shapes_cell_NCER_lz, 2, param2);
    SpriteResourceCollection_AddFrom(param0->unk_80[3], v1, search_body_shapes_anim_NANR_lz, TRUE, search_body_shapes_anim_NANR_lz, 3, param2);
    SpriteResourcesHeader_Init(&param0->unk_90, search_body_shapes_NCGR_lz, buttons_NCLR, search_body_shapes_cell_NCER_lz, search_body_shapes_anim_NANR_lz, 0xffffffff, 0xffffffff, FALSE, 2, param0->unk_80[0], param0->unk_80[1], param0->unk_80[2], param0->unk_80[3], NULL, NULL);

    v0 = SpriteResourceCollection_AddTilesFrom(param0->unk_80[0], v1, unseen_icon_NCGR_lz, TRUE, unseen_icon_NCGR_lz, NNS_G2D_VRAM_TYPE_2DMAIN, param2);

    SpriteTransfer_RequestCharAtEnd(v0);
    SpriteResource_ReleaseData(v0);
    SpriteResourceCollection_AddFrom(param0->unk_80[2], v1, unseen_icon_cell_NCER_lz, TRUE, unseen_icon_cell_NCER_lz, 2, param2);
    SpriteResourceCollection_AddFrom(param0->unk_80[3], v1, unseen_icon_anim_NANR_lz, TRUE, unseen_icon_anim_NANR_lz, 3, param2);
    SpriteResourcesHeader_Init(&param0->unk_B4, unseen_icon_NCGR_lz, buttons_NCLR, unseen_icon_cell_NCER_lz, unseen_icon_anim_NANR_lz, 0xffffffff, 0xffffffff, FALSE, 2, param0->unk_80[0], param0->unk_80[1], param0->unk_80[2], param0->unk_80[3], NULL, NULL);
}

static void ov21_021D6744(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData *param1, int param2)
{
    SpriteListTemplate v0;
    int v1;

    memset(&v0, 0, sizeof(SpriteListTemplate));
    v0.list = param1->spriteList;
    v0.resourceData = &param0->unk_90;
    v0.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v0.heapID = param2;
    v0.priority = 32;

    for (v1 = 0; v1 < 9; v1++) {
        param0->unk_00[v1] = SpriteList_Add(&v0);
        Sprite_SetAnim(param0->unk_00[v1], 0);
    }

    v0.priority = 0;

    for (v1 = 0; v1 < 9; v1++) {
        param0->unk_50[v1] = SpriteList_Add(&v0);
        Sprite_SetAnim(param0->unk_50[v1], 1);
    }

    v0.priority = 0;
    param0->unk_74 = SpriteList_Add(&v0);

    Sprite_SetAnim(param0->unk_74, 2);

    v0.priority = 0;
    v0.position.x = 56 << FX32_SHIFT;
    v0.position.y = 80 << FX32_SHIFT;
    v0.resourceData = &param0->unk_B4;

    param0->unk_7C = SpriteList_Add(&v0);

    Sprite_SetDrawFlag(param0->unk_7C, FALSE);
    Sprite_SetExplicitOAMMode(param0->unk_7C, GX_OAM_MODE_XLU);
}

static void ov21_021D67EC(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData *param1, const UnkStruct_ov21_021D5B68 *param2, int param3)
{
    int v0;
    int v1;
    int v2;
    int v3;
    PokedexDisplayBox displayBox;
    Window *v5;
    const SpeciesCaughtStatus *pokeCaughtStatus;
    int dexIndex;

    displayBox.textMan = param1->textMan;
    displayBox.paletteProxy = param0->unk_90.paletteProxy;
    displayBox.sprite = NULL;
    displayBox.x = 0;
    displayBox.y = 0;
    displayBox.spriteResourcePriority = 2;
    displayBox.spriteListPriority = 0;
    displayBox.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    displayBox.heapID = param3;

    v1 = PokedexSort_CurrentDisplayIndex(param2->unk_04) - 4;
    v2 = param0->unk_24;
    v3 = PokedexSort_NumDisplayed(param2->unk_04);

    for (v0 = 0; v0 < 9; v0++) {
        if (param0->unk_28[v2]) {
            PokedexTextManager_FreeTextData(param0->unk_28[v2]);
            param0->unk_28[v2] = NULL;
        }

        if ((v1 >= 0) && (v1 < v3)) {
            dexIndex = PokedexSort_DisplayIndexToStatusIndex(param2->unk_04, v1);

            if (dexIndex != (NATIONAL_DEX_COUNT + 1)) {
                pokeCaughtStatus = PokedexSort_StatusIndexToCaughtStatus(param2->unk_04, dexIndex);
                v5 = PokedexMain_DisplayNameNumber(param1, param2->unk_04, param3, pokeCaughtStatus->species);
                displayBox.window = v5;
                param0->unk_28[v2] = PokedexTextManager_NextTextDataNew(&displayBox, param0->unk_4C);
                PokedexTextManager_FreeWindow(v5);
            } else {
                ov21_021D6DF4(param0, param1, param3, v2, v1 + 1);
            }
        } else {
            param0->unk_28[v2] = NULL;
        }

        v2 = (v2 + 1) % 9;
        v1++;
    }
}

static void ov21_021D68C8(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData *param1, const UnkStruct_ov21_021D5B68 *param2)
{
    int dexIndex;
    int v1;
    const SpeciesCaughtStatus *pokeCaughtStatus;

    v1 = PokedexSort_CurrentDisplayIndex(param2->unk_04);
    dexIndex = PokedexSort_CurrentStatusIndex(param2->unk_04);
    pokeCaughtStatus = PokedexSort_StatusIndexToCaughtStatus(param2->unk_04, dexIndex);

    if (PokedexSort_DisplayIndexToStatusIndex(param2->unk_04, v1) == (NATIONAL_DEX_COUNT + 1)) {
        PokedexGraphics_SetPokemonCharHide(param1, 0);

        if (param0->unk_7C) {
            Sprite_SetDrawFlag(param0->unk_7C, TRUE);
        }
    } else {
        PokedexMain_DisplayPokemonSprite(param1, param2->unk_04, pokeCaughtStatus->species, 2, 56, 80);
        PokedexGraphics_SetPokemonCharHide(param1, 1);

        if (param0->unk_7C) {
            Sprite_SetDrawFlag(param0->unk_7C, FALSE);
        }
    }
}

static void ov21_021D6940(UnkStruct_ov21_021D71A8 *param0)
{
    int v0;

    for (v0 = 0; v0 < 9; v0++) {
        if (param0->unk_28[v0]) {
            PokedexTextManager_FreeTextData(param0->unk_28[v0]);
        }
    }
}

static void ov21_021D695C(UnkStruct_ov21_021D71A8 *param0)
{
    int v0;

    for (v0 = 0; v0 < 9; v0++) {
        Sprite_Delete(param0->unk_00[v0]);
    }

    for (v0 = 0; v0 < 9; v0++) {
        Sprite_Delete(param0->unk_50[v0]);
    }

    Sprite_Delete(param0->unk_74);
    Sprite_Delete(param0->unk_7C);
}

static void ov21_021D6994(UnkStruct_ov21_021D71A8 *param0, const UnkStruct_ov21_021D5B68 *param1)
{
    param0->unk_24 = 0;
    ov21_021D6ED0(param0, param1);
}

static void ov21_021D69A0(UnkStruct_ov21_021D71A8 *param0, const UnkStruct_ov21_021D5B68 *param1)
{
    int v0;
    VecFx32 v1;
    int v2;
    int v3, v4;
    int v5;
    int v6;
    int v7;

    v0 = param0->unk_24;

    for (v2 = 0; v2 < 9; v2++) {
        if (param1->unk_08 == 1) {
            v3 = v2 + 2;
            v4 = v2 + 1;
        } else {
            v3 = v2;
            v4 = v2 + 1;
        }

        v1.x = ov21_021D6BF8(Unk_ov21_021E9D14[v3], Unk_ov21_021E9D14[v4], (64 * 10), (64 * 10) - param1->unk_0C);
        v1.y = ov21_021D6BF8(Unk_ov21_021E9D40[v3], Unk_ov21_021E9D40[v4], (64 * 10), (64 * 10) - param1->unk_0C);

        Sprite_SetPosition(param0->unk_00[v0], &v1);

        v5 = 4 - v2;

        if (v5 < 0) {
            v5 = -v5;
        }

        v6 = v5 * 2;

        if (v6 < 0) {
            v6 = -v6;
        }

        v6 += 32;

        Sprite_SetPriority(param0->unk_00[v0], v6);

        if (v2 == 4) {
            Sprite_SetExplicitPaletteOffsetAutoAdjust(param0->unk_00[v0], 0);
        } else {
            if (7 + (v5 - 1) < 9) {
                Sprite_SetExplicitPaletteOffsetAutoAdjust(param0->unk_00[v0], 7 + (v5 - 1));
            } else {
                Sprite_SetExplicitPaletteOffsetAutoAdjust(param0->unk_00[v0], 9);
            }
        }

        v0 = (v0 + 1) % 9;
    }
}

static void ov21_021D6A58(UnkStruct_ov21_021D71A8 *param0, const UnkStruct_ov21_021D5B68 *param1)
{
    int v0;
    int v1;
    int v2;

    v1 = PokedexSort_CurrentDisplayIndex(param1->unk_04);
    v2 = PokedexSort_NumDisplayed(param1->unk_04);

    if (param1->unk_08 == 1) {
        if ((param0->unk_24 + 1) < 9) {
            param0->unk_24++;
        } else {
            param0->unk_24 = 0;
        }

        v0 = param0->unk_24 + (9 - 1);
        v0 %= 9;

        if ((v1 + 4) >= v2) {
            Sprite_SetDrawFlag(param0->unk_00[v0], FALSE);
        } else {
            Sprite_SetDrawFlag(param0->unk_00[v0], TRUE);
        }
    } else {
        if (param1->unk_08 == 2) {
            if ((param0->unk_24 - 1) >= 0) {
                param0->unk_24--;
            } else {
                param0->unk_24 = 9 - 1;
            }

            v0 = param0->unk_24;

            if ((v1 - 4) < 0) {
                Sprite_SetDrawFlag(param0->unk_00[v0], FALSE);
            } else {
                Sprite_SetDrawFlag(param0->unk_00[v0], TRUE);
            }
        } else {
            ov21_021D6ED0(param0, param1);
        }
    }
}

static void ov21_021D6AE4(UnkStruct_ov21_021D71A8 *param0, const UnkStruct_ov21_021D5B68 *param1)
{
    const VecFx32 *v0;
    VecFx32 v1;
    int v2;
    int v3;
    BOOL isCaught;
    int v5;
    int v6;
    int v7;
    const SpeciesCaughtStatus *pokeCaughtStatus;
    int v9;
    int v10;
    int dexIndex;

    v6 = PokedexSort_CurrentDisplayIndex(param1->unk_04);
    v7 = PokedexSort_NumDisplayed(param1->unk_04);

    for (v2 = 0; v2 < 9; v2++) {
        v3 = (param0->unk_24 + v2) % 9;

        isCaught = 0;
        v5 = ((v6 - 4) + v2);

        if ((v5 >= 0) && (v5 < v7)) {
            dexIndex = PokedexSort_DisplayIndexToStatusIndex(param1->unk_04, v5);

            if (dexIndex != (NATIONAL_DEX_COUNT + 1)) {
                pokeCaughtStatus = PokedexSort_StatusIndexToCaughtStatus(param1->unk_04, dexIndex);

                if (pokeCaughtStatus->caughtStatus == CS_CAUGHT) {
                    isCaught = 1;
                }
            }
        }

        Sprite_SetDrawFlag(param0->unk_50[v3], isCaught);

        if (isCaught) {
            v0 = Sprite_GetPosition(param0->unk_00[v3]);

            v1.x = v0->x + (-54 * FX32_ONE);
            v1.y = v0->y;

            Sprite_SetPosition(param0->unk_50[v3], &v1);

            v10 = Sprite_GetExplicitPaletteOffset(param0->unk_00[v3]);
            Sprite_SetExplicitPaletteOffset(param0->unk_50[v3], v10);

            v9 = Sprite_GetPriority(param0->unk_00[v3]);
            v9--;
            Sprite_SetPriority(param0->unk_50[v3], v9);
        }
    }
}

static void ov21_021D6B94(UnkStruct_ov21_021D71A8 *param0, const UnkStruct_ov21_021D5B68 *param1)
{
    int v0 = PokedexSort_NumDisplayed(param1->unk_04);
    param0->unk_78 = FX_Div((54 * FX32_ONE), v0 << FX32_SHIFT);
}

static void ov21_021D6BB0(UnkStruct_ov21_021D71A8 *param0, const UnkStruct_ov21_021D5B68 *param1)
{
    VecFx32 v0;
    int v1 = PokedexSort_CurrentDisplayIndex(param1->unk_04);

    v0.y = FX_Mul(param0->unk_78, v1 << FX32_SHIFT);
    v0.y += (58 * FX32_ONE);
    v0.x = (248 * FX32_ONE);

    Sprite_SetPosition(param0->unk_74, &v0);
}

static fx32 ov21_021D6BF8(fx32 param0, fx32 param1, int param2, int param3)
{
    fx32 v0;

    v0 = (param1 - param0);
    v0 = FX_Mul(v0, param3 << FX32_SHIFT);
    v0 = FX_Div(v0, param2 << FX32_SHIFT);

    return v0 + param0;
}

static void ov21_021D6C24(UnkStruct_ov21_021D71A8 *param0, const UnkStruct_ov21_021D5B68 *param1)
{
    memset(param0, 0, sizeof(UnkStruct_ov21_021D71A8));
    param0->unk_144 = PokedexSort_CurrentDisplayIndex(param1->unk_04);
}

static void ov21_021D6C44(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData *param1, const UnkStruct_ov21_021D5B68 *param2, int param3)
{
    int v0;
    int v1, v2;
    VecFx32 v3;
    int v4;
    int v5;
    int v6;

    v4 = param0->unk_24;

    for (v0 = 0; v0 < 9; v0++) {
        if (param0->unk_28[v4]) {
            ov21_021D6CA4(param0->unk_00[v4], &v1, &v2);
            FontOAM_SetXY(param0->unk_28[v4]->fontOAM, v1, v2);

            v5 = Sprite_GetPriority(param0->unk_00[v4]);
            v5--;
            sub_02012A30(param0->unk_28[v4]->fontOAM, v5);

            v6 = Sprite_GetExplicitPaletteOffset(param0->unk_00[v4]);
            sub_02012A90(param0->unk_28[v4]->fontOAM, v6);
        }

        v4 = (v4 + 1) % 9;
    }
}

static void ov21_021D6CA4(Sprite *param0, int *param1, int *param2)
{
    const VecFx32 *v0 = Sprite_GetPosition(param0);

    *param1 = v0->x >> FX32_SHIFT;
    *param2 = v0->y >> FX32_SHIFT;
    *param1 -= (128 / 2);
    *param2 -= (16 / 2);
}

static void ov21_021D6CC8(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData *param1, const UnkStruct_ov21_021D5B68 *param2, int param3)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;

    v0 = PokedexSort_CurrentDisplayIndex(param2->unk_04);
    v1 = PokedexSort_NumDisplayed(param2->unk_04);

    switch (param2->unk_08) {
    case 1:
        v2 = param0->unk_24 + 9 - 1;
        v3 = v0 + 4;
        break;
    case 2:
        v2 = param0->unk_24;
        v3 = v0 - 4;
        break;
    default:
        break;
    }

    if (param2->unk_08 == 0) {
        ov21_021D67EC(param0, param1, param2, param3);
    } else {
        v2 %= 9;

        if ((v3 < v1) && (v3 >= 0)) {
            v4 = PokedexSort_DisplayIndexToStatusIndex(param2->unk_04, v3);

            if (v4 != (NATIONAL_DEX_COUNT + 1)) {
                ov21_021D6D78(param0, param1, param2, param3, v2, v4);
            } else {
                ov21_021D6DF4(param0, param1, param3, v2, v3 + 1);
            }
        } else {
            if (param0->unk_28[v2]) {
                PokedexTextManager_FreeTextData(param0->unk_28[v2]);
                param0->unk_28[v2] = NULL;
            }
        }
    }
}

static void ov21_021D6D78(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData *param1, const UnkStruct_ov21_021D5B68 *param2, int param3, int param4, int dexIndex)
{
    PokedexDisplayBox displayBox;
    Window *v1;
    const SpeciesCaughtStatus *pokeCaughtStatus = PokedexSort_StatusIndexToCaughtStatus(param2->unk_04, dexIndex);
    GF_ASSERT(pokeCaughtStatus);

    displayBox.textMan = param1->textMan;
    displayBox.paletteProxy = param0->unk_90.paletteProxy;
    displayBox.sprite = NULL;
    displayBox.x = 0;
    displayBox.y = 0;
    displayBox.spriteResourcePriority = 2;
    displayBox.spriteListPriority = 0;
    displayBox.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    displayBox.heapID = param3;

    v1 = PokedexMain_DisplayNameNumber(param1, param2->unk_04, param3, pokeCaughtStatus->species);

    if (param0->unk_28[param4]) {
        PokedexTextManager_FreeTextData(param0->unk_28[param4]);
    }

    displayBox.window = v1;
    param0->unk_28[param4] = PokedexTextManager_NextTextDataNew(&displayBox, param0->unk_4C);

    PokedexTextManager_FreeWindow(v1);
}

static void ov21_021D6DF4(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData *param1, enum HeapID heapID, int param3, int param4)
{
    PokedexDisplayBox displayBox;
    Window *v1;
    String *v2 = String_Init(32, heapID);
    MessageLoader *pokedexMessageBank = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POKEDEX, heapID);

    displayBox.textMan = param1->textMan;
    displayBox.paletteProxy = param0->unk_90.paletteProxy;
    displayBox.sprite = NULL;
    displayBox.x = 0;
    displayBox.y = 0;
    displayBox.spriteResourcePriority = 2;
    displayBox.spriteListPriority = 0;
    displayBox.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    displayBox.heapID = heapID;

    v1 = PokedexTextManager_NewWindow(param1->textMan, 15, 2);

    String_FormatInt(v2, param4, 3, 2, 1);
    Text_AddPrinterWithParamsAndColor(v1, FONT_SUBSCREEN, v2, 22, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 2, 1), NULL);
    MessageLoader_GetString(pokedexMessageBank, pl_msg_pokedex_noname, v2);
    Text_AddPrinterWithParamsAndColor(v1, FONT_SUBSCREEN, v2, 49, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 2, 1), NULL);

    if (param0->unk_28[param3]) {
        PokedexTextManager_FreeTextData(param0->unk_28[param3]);
    }

    displayBox.window = v1;
    param0->unk_28[param3] = PokedexTextManager_NextTextDataNew(&displayBox, param0->unk_4C);

    PokedexTextManager_FreeWindow(v1);

    String_Free(v2);
    MessageLoader_Free(pokedexMessageBank);
}

static void ov21_021D6ED0(UnkStruct_ov21_021D71A8 *param0, const UnkStruct_ov21_021D5B68 *param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;

    v3 = PokedexSort_CurrentDisplayIndex(param1->unk_04);
    v4 = PokedexSort_NumDisplayed(param1->unk_04);
    v0 = v3 - 4;
    v1 = param0->unk_24;

    for (v2 = 0; v2 < 9; v2++) {
        if ((v0 >= 0) && (v0 < v4)) {
            Sprite_SetDrawFlag(param0->unk_00[v1], TRUE);
        } else {
            Sprite_SetDrawFlag(param0->unk_00[v1], FALSE);
        }

        v1 = (v1 + 1) % 9;
        v0++;
    }
}

static void ov21_021D6F20(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData *param1, const UnkStruct_ov21_021D5B68 *param2)
{
    fx32 v0;
    int v1;
    PokemonSprite *v2;

    v0 = FX_Mul(31 << FX32_SHIFT, ((64 * 10) - param2->unk_0C) << FX32_SHIFT);
    v0 = FX_Div(v0, (64 * 10) << FX32_SHIFT);
    v1 = v0 >> FX32_SHIFT;
    v2 = PokemonGraphics_GetPokemonChar(param1);

    PokemonSprite_SetAttribute(v2, MON_SPRITE_ALPHA, v1);
}

static void ov21_021D6F64(PokedexGraphicData *param0, const UnkStruct_ov21_021D5B68 *param1)
{
    PokemonSprite *v0 = PokemonGraphics_GetPokemonChar(param0);
    PokemonSprite_SetAttribute(v0, MON_SPRITE_ALPHA, 31);
}

static void ov21_021D6F74(const UnkStruct_ov21_021D5B68 *param0)
{
    fx32 v0;
    int v1;

    v0 = FX_Mul(16 << FX32_SHIFT, ((64 * 10) - param0->unk_0C) << FX32_SHIFT);
    v0 = FX_Div(v0, (64 * 10) << FX32_SHIFT);
    v1 = v0 >> FX32_SHIFT;

    G2_ChangeBlendAlpha(v1, 16 - v1);
}

static void ov21_021D6FB4(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021D5B68 *param2, BOOL param3)
{
    int v0, v1;
    int v2, v3;
    int v4;

    Sound_PlayEffect(SEQ_SE_DP_BUTTON01);

    if (param2->unk_10 == 0) {
        if (param3) {
            v0 = 0;
            v2 = 0;
            v1 = 3;
            v3 = 14;
            v4 = 4;

            Bg_SetOffset((*param1)->bgConfig, 1, 3, 192);
        } else {
            v0 = 3;
            v2 = 14;
            v1 = 0;
            v3 = 0;
            v4 = 4;
        }
    } else {
        if (param3) {
            v0 = 12;
            v2 = 20;
            v1 = 3;
            v3 = 14;
            v4 = 4;
        } else {
            v0 = 3;
            v2 = 14;
            v1 = 12;
            v3 = 20;
            v4 = 4;
        }
    }

    PokedexMain_SetLoadingScreenParams(&param0->loadingScreen, (*param1)->bgConfig, 2, param0->unk_DC, v0, v1, v2, v3, v4);
}

static BOOL ov21_021D7044(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData **param1)
{
    BOOL moveComplete = PokedexMain_LoadingScreenMove(&param0->loadingScreen);

    if (moveComplete == FALSE) {
        int bottomPos = (param0->loadingScreen.bottomDist * (param0->loadingScreen.counter - 1)) / param0->loadingScreen.duration;
        bottomPos += param0->loadingScreen.bottomStart;
        bottomPos *= 8;
        bottomPos = bottomPos - (14 * 8);

        if (bottomPos < -48) {
            bottomPos = -48;
        }

        Bg_ScheduleScroll((*param1)->bgConfig, 1, 3, bottomPos);
    }

    return moveComplete;
}

static void ov21_021D7094(PokedexGraphicData **param0, const UnkStruct_ov21_021D5B68 *param1, BOOL param2)
{
    if (param1->unk_10 == 0) {
        if (param2 == 0) {
            Bg_SetOffset((*param0)->bgConfig, 1, 3, 0);
        }
    }

    GX_SetVisibleWnd(GX_WNDMASK_NONE);
}

static int ov21_021D70C0(PokedexGraphicData *param0, enum HeapID heapID)
{
    Window *v0;
    int v1;

    v0 = PokedexTextManager_NewWindow(param0->textMan, 15, 2);
    v1 = sub_02012898(v0, NNS_G2D_VRAM_TYPE_2DMAIN, heapID);

    PokedexTextManager_FreeWindow(v0);

    return v1;
}

static void ov21_021D70E8(UnkStruct_ov21_021D71A8 *param0)
{
    int v0;

    Sprite_SetExplicitOAMMode(param0->unk_74, GX_OAM_MODE_XLU);

    for (v0 = 0; v0 < 9; v0++) {
        Sprite_SetExplicitOAMMode(param0->unk_00[v0], GX_OAM_MODE_XLU);
        Sprite_SetExplicitOAMMode(param0->unk_50[v0], GX_OAM_MODE_XLU);

        if (param0->unk_28[v0]) {
            sub_02012AF0(param0->unk_28[v0]->fontOAM, GX_OAM_MODE_XLU);
        }
    }
}

static void ov21_021D7124(UnkStruct_ov21_021D71A8 *param0)
{
    int v0;

    Sprite_SetExplicitOAMMode(param0->unk_74, GX_OAM_MODE_NORMAL);

    for (v0 = 0; v0 < 9; v0++) {
        Sprite_SetExplicitOAMMode(param0->unk_00[v0], GX_OAM_MODE_NORMAL);
        Sprite_SetExplicitOAMMode(param0->unk_50[v0], GX_OAM_MODE_NORMAL);

        if (param0->unk_28[v0]) {
            sub_02012AF0(param0->unk_28[v0]->fontOAM, GX_OAM_MODE_NORMAL);
        }
    }
}

static void ov21_021D7160(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData *param1, const UnkStruct_ov21_021D5B68 *param2, int param3)
{
    const VecFx32 *v0;
    int v1 = (param0->unk_24 + 4) % 9;
    v0 = Sprite_GetPosition(param0->unk_00[v1]);

    PokedexMain_EntryNameNumber(param1, param2->unk_04, param3, PokedexSort_CurrentStatusIndex(param2->unk_04), v0->x, v0->y);
    PokedexGraphics_SetSpeciesLabelPriority(param1, 0);
}

static void ov21_021D71A8(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021D5B68 *param2, BOOL param3)
{
    ov21_021D6FB4(param0, param1, param2, param3);

    if (param2->unk_10 != 1) {
        if (param3) {
            BrightnessController_StartTransition(4, 0, -16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_MAIN_SCREEN);
        } else {
            BrightnessController_StartTransition(4, -16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_MAIN_SCREEN);
        }
    }
}

static BOOL ov21_021D71E4(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021D5B68 *param2, BOOL param3)
{
    BOOL v0[2];

    v0[0] = ov21_021D7044(param0, param1);

    if (param2->unk_10 != 1) {
        v0[1] = BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN);
    } else {
        v0[1] = 1;
    }

    if ((v0[0] == 1) && (v0[1] == 1)) {
        if (param2->unk_10 != 1) {
            if (param3 == 0) {
                BrightnessController_SetScreenBrightness(-16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_MAIN_SCREEN);
                Window_FillTilemap(&(*param1)->window, 0);
                Bg_ClearTilemap((*param1)->bgConfig, 1);
            }
        }

        ov21_021D7094(param1, param2, param3);

        return 1;
    }

    return 0;
}

static void ov21_021D7248(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021D5B68 *param2, BOOL param3)
{
    ov21_021D70E8(param0);
    ov21_021D6FB4(param0, param1, param2, param3);

    if (param3 == 0) {
        ov21_021D7394(param0, param1);
        ov21_021D73F0(param0, param1);
    }

    if (param2->unk_10 != 1) {
        if (param3) {
            PokedexGraphics_InitBlendTransition(&(*param1)->blendMain, 4, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), GX_BLEND_PLANEMASK_BG3, 0);
        } else {
            PokedexGraphics_InitBlendTransition(&(*param1)->blendMain, 4, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), GX_BLEND_PLANEMASK_BG3, 0);
        }
    }
}

static BOOL ov21_021D72D4(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021D5B68 *param2, BOOL param3)
{
    BOOL v0[4];
    int v1;

    v0[0] = ov21_021D7044(param0, param1);

    if (param2->unk_10 != 1) {
        v0[1] = PokedexGraphics_TakeBlendTransitionStep(&(*param1)->blendMain);
    }

    if (param3 == 0) {
        v0[2] = ov21_021D73C8(param0, param1);
        v0[3] = ov21_021D7424(param0, param1);
    } else {
        v0[2] = 1;
        v0[3] = 1;
    }

    for (v1 = 0; v1 < 4; v1++) {
        if (v0[v1] == 0) {
            break;
        }
    }

    if (v1 == 4) {
        if (param3 == 0) {
            if (param2->unk_10 != 1) {
                G2_SetBlendBrightnessExt((GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), GX_BLEND_PLANEMASK_BG3, 0, 0, -16);
                Window_FillTilemap(&(*param1)->window, 0);
                Bg_ClearTilemap((*param1)->bgConfig, 1);
            }
        } else {
            ov21_021D7124(param0);
            PokedexGraphics_SetPokedexSpeciesLabelDraw(*param1, 0);
            PokedexGraphics_SetSpeciesLabelGXOamMode(*param1, GX_OAM_MODE_NORMAL);
        }

        ov21_021D7094(param1, param2, param3);

        return 1;
    }

    return 0;
}

static void ov21_021D7394(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData **param1)
{
    PokedexGraphics_InitTransformation(&param0->unk_104, 56, 48, 80, 72, 4);
    PokemonGraphics_SetCharCenterXY(*param1, param0->unk_104.currentX, param0->unk_104.currentY);
}

static BOOL ov21_021D73C8(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData **param1)
{
    BOOL v0 = PokedexGraphics_TakeTransformStep(&param0->unk_104);
    PokemonGraphics_SetCharCenterXY(*param1, param0->unk_104.currentX, param0->unk_104.currentY);

    return v0;
}

static void ov21_021D73F0(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData **param1)
{
    PokedexGraphics_InitTransformation(&param0->unk_124, 170, 172, 82, 32, 4);
    ov21_021D1848(*param1, param0->unk_124.currentX, param0->unk_124.currentY);
}

static BOOL ov21_021D7424(UnkStruct_ov21_021D71A8 *param0, PokedexGraphicData **param1)
{
    BOOL v0 = PokedexGraphics_TakeTransformStep(&param0->unk_124);
    ov21_021D1848(*param1, param0->unk_124.currentX, param0->unk_124.currentY);

    return v0;
}

static void ov21_021D744C(UnkStruct_ov21_021D5B68 *param0)
{
    *param0->unk_00 |= (1 << 2);
    param0->unk_10 = 0;
    param0->unk_14 = 0;
    param0->unk_20 = 2;
}

static void ov21_021D7464(UnkStruct_ov21_021D7464 *param0, UnkStruct_ov21_021D5B68 *param1)
{
    *param1->unk_00 |= (1 << 1);
    param1->unk_10 = 0;
    param1->unk_14 = 1;
    param1->unk_0C = 0;
    param1->unk_20 = 2;
}

static BOOL ov21_021D747C(UnkStruct_ov21_021D5B68 *param0)
{
    if (param0->unk_04->unk_1740 == 0) {
        *param0->unk_00 |= (1 << 0);
        param0->unk_10 = 0;
        param0->unk_14 = 0;
        param0->unk_20 = 2;
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        return 1;
    }

    return 0;
}

static BOOL ov21_021D74B0(UnkStruct_ov21_021D5B68 *param0, int param1)
{
    int v0;

    if (param0->unk_04->unk_1740 == 1) {
        return 0;
    }

    v0 = PokedexSort_IsNationalDex(param0->unk_04);

    if (v0 == 0) {
        v0 = 1;
    } else {
        v0 = 0;
    }

    if (ov21_021D36A4(param0->unk_04, v0)) {
        ov21_021D36C0(param0->unk_04, v0);
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        PokedexSort_SortUnfiltered(param0->unk_04, 0, 0, 0, 0, 0, v0, param1);
        PokedexSort_SetCurrentStatusIndex(param0->unk_04, 0);

        param0->unk_0C = 0;
        *param0->unk_00 |= (1 << 4);
        param0->unk_10 = 0;
        param0->unk_14 = 0;
        param0->unk_20 = 2;
        param0->unk_1C = 0;

        return 1;
    }

    return 0;
}

static void ov21_021D7538(UnkStruct_ov21_021D5B68 *param0, int param1)
{
    u32 species = PokedexSort_CurrentSpecies(param0->unk_04);

    PokedexSort_SortUnfiltered(param0->unk_04, 0, 0, 0, 0, 0, PokedexSort_IsNationalDex(param0->unk_04), param1);
    (*param0->unk_00) |= (1 << 4);

    PokedexSort_SetCurrentStatusIndexWithSpecies(param0->unk_04, species);

    param0->unk_0C = 0;
    param0->unk_04->unk_1740 = 0;
    param0->unk_10 = 0;
    param0->unk_14 = 0;
    param0->unk_08 = 0;
    param0->unk_20 = 2;
    param0->unk_1C = 0;
}

static void ov21_021D7590(UnkStruct_ov21_021D7464 *param0, UnkStruct_ov21_021D5B68 *param1)
{
    param0->unk_18--;

    if (param0->unk_18 >= 0) {
        if (ov21_021D6108(param1, param0->unk_1C)) {
            ov21_021D60FC(param1, param0, param0->unk_20);
            param1->unk_20 = 1;
            Sound_PlayEffect(SEQ_SE_DP_DENSI06);
        } else {
            param0->unk_18 = 0;
        }
    } else {
        ov21_021D5F58(param1, param0);
        param0->unk_14 = 0;
        param1->unk_20 = 0;
    }
}

static void ov21_021D75DC(UnkStruct_ov21_021D7464 *param0, UnkStruct_ov21_021D5B68 *param1)
{
    if (gSystem.heldKeys & PAD_KEY_UP) {
        if (ov21_021D6108(param1, -1)) {
            ov21_021D60FC(param1, param0, 2);
            param1->unk_20 = 1;
            Sound_PlayEffect(SEQ_SE_DP_DENSI06);
        } else {
            ov21_021D5F58(param1, param0);
            param1->unk_20 = 0;
        }

        return;
    }

    if (gSystem.heldKeys & PAD_KEY_DOWN) {
        if (ov21_021D6108(param1, 1)) {
            ov21_021D60FC(param1, param0, 1);
            param1->unk_20 = 1;
            Sound_PlayEffect(SEQ_SE_DP_DENSI06);
        } else {
            ov21_021D5F58(param1, param0);
            param1->unk_20 = 0;
        }

        return;
    }

    if (gSystem.pressedKeys & PAD_KEY_LEFT) {
        param0->unk_14 = 1;
        param0->unk_18 = 5;
        param0->unk_1C = -1;
        param0->unk_20 = 2;
        ov21_021D5F6C(param1, param0);
        return;
    }

    if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
        param0->unk_14 = 1;
        param0->unk_18 = 5;
        param0->unk_1C = 1;
        param0->unk_20 = 1;
        ov21_021D5F6C(param1, param0);
        return;
    }

    if (param1->unk_20 == 1) {
        ov21_021D5F58(param1, param0);
        param1->unk_20 = 0;
    }
}
