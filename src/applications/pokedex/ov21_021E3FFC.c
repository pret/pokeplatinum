#include "applications/pokedex/ov21_021E3FFC.h"

#include <nitro.h>
#include <string.h>

#include "applications/pokedex/crysub.h"
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
#include "heap.h"
#include "narc.h"
#include "pokemon_sprite.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"

#include "res/graphics/pokedex/zukan.naix"

typedef struct {
    int *unk_00;
    PokedexSortData *unk_04;
    PokedexScreenManager *unk_08;
    PokedexScreenManager *unk_0C;
} UnkStruct_ov21_021E40F4;

typedef struct {
    PokedexGraphicData *unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
} UnkStruct_ov21_021E4108;

typedef struct {
    const SNDWaveData *unk_00;
    int unk_04;
    int unk_08;
    u8 unk_0C[9];
} UnkStruct_ov21_021E4898;

typedef struct {
    Sprite *unk_00;
    int unk_04;
} UnkStruct_ov21_021E4B30_sub1;

typedef struct {
    Sprite *unk_00;
    int unk_04;
    int unk_08;
} UnkStruct_ov21_021E4B30_sub2;

typedef struct {
    UnkStruct_ov21_021E4B30_sub1 unk_00[9];
    UnkStruct_ov21_021E4B30_sub2 unk_48;
} UnkStruct_ov21_021E4B30;

typedef struct {
    SpriteTransformation unk_00;
    UnkStruct_ov21_021E4B30 unk_20[9];
    SpriteResource *unk_314[4];
    int unk_324;
    int unk_328;
    int unk_32C;
} UnkStruct_ov21_021E4360;

static UnkStruct_ov21_021E40F4 *ov21_021E4080(enum HeapID heapID, PokedexApp *param1);
static UnkStruct_ov21_021E4108 *ov21_021E40C8(enum HeapID heapID, PokedexApp *param1);
static void ov21_021E40F4(UnkStruct_ov21_021E40F4 *param0);
static void ov21_021E4108(UnkStruct_ov21_021E4108 *param0);
static int ov21_021E411C(void);
static int ov21_021E4120(PokedexDataManager *dataMan, void *data);
static int ov21_021E4168(PokedexDataManager *dataMan, void *data);
static int ov21_021E4194(PokedexDataManager *dataMan, void *data);
static int ov21_021E41A8(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static int ov21_021E4268(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static int ov21_021E4288(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static void ov21_021E4328(UnkStruct_ov21_021E4108 *param0, const UnkStruct_ov21_021E40F4 *param1);
static void ov21_021E4360(UnkStruct_ov21_021E4360 *param0);
static void ov21_021E4394(UnkStruct_ov21_021E4360 *param0);
static void ov21_021E43C8(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, const UnkStruct_ov21_021E40F4 *param2, BOOL param3);
static BOOL ov21_021E4440(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, const UnkStruct_ov21_021E40F4 *param2, BOOL param3);
static void ov21_021E448C(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, const UnkStruct_ov21_021E40F4 *param2, BOOL param3);
static BOOL ov21_021E4518(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, const UnkStruct_ov21_021E40F4 *param2, BOOL param3);
static void ov21_021E4590(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, const UnkStruct_ov21_021E40F4 *param2, const UnkStruct_ov21_021E4898 *param3, enum HeapID heapID);
static void ov21_021E45DC(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1);
static void ov21_021E45FC(UnkStruct_ov21_021E4108 *param0, const UnkStruct_ov21_021E40F4 *param1, enum HeapID heapID);
static void ov21_021E4664(UnkStruct_ov21_021E4108 *param0);
static void ov21_021E46A8(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, enum HeapID heapID);
static void ov21_021E4770(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1);
static void ov21_021E47CC(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, enum HeapID heapID);
static void ov21_021E4868(UnkStruct_ov21_021E4360 *param0);
static void ov21_021E4890(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, const UnkStruct_ov21_021E40F4 *param2, enum HeapID heapID);
static void ov21_021E4894(UnkStruct_ov21_021E4360 *param0);
static void ov21_021E4898(UnkStruct_ov21_021E4898 *param0, UnkStruct_ov21_021E40F4 *param1);
static void ov21_021E4ABC(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1);
static void ov21_021E4A28(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, const UnkStruct_ov21_021E4898 *param2);
static void ov21_021E48B0(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, const SNDWaveData *param2, int param3, int param4, int param5, int param6, int param7, int *param8);
static void ov21_021E49D0(UnkStruct_ov21_021E4108 *param0, int param1, int param2, int param3, int param4, int *param5);
static void ov21_021E495C(Window *param0, u8 param1, int param2, int param3, int *param4);
static void ov21_021E4C68(UnkStruct_ov21_021E4898 *param0, UnkStruct_ov21_021E40F4 *param1);
static void ov21_021E4AF4(UnkStruct_ov21_021E4360 *param0);
static void ov21_021E4B10(UnkStruct_ov21_021E4360 *param0, const UnkStruct_ov21_021E4898 *param1);
static void ov21_021E4B30(UnkStruct_ov21_021E4B30 *param0, int param1);
static void ov21_021E4B94(UnkStruct_ov21_021E4B30 *param0, int param1);
static void ov21_021E4C38(Sprite *param0, int param1);

void ov21_021E3FFC(PokedexScreenManager *param0, PokedexApp *param1, enum HeapID heapID)
{
    UnkStruct_ov21_021E40F4 *v0 = ov21_021E4080(heapID, param1);
    UnkStruct_ov21_021E4108 *v1 = ov21_021E40C8(heapID, param1);

    param0->pageData = v0;
    param0->pageGraphics = v1;
    param0->screenStates = NULL;
    param0->numStates = ov21_021E411C();
    param0->dataFunc[0] = ov21_021E4120;
    param0->dataFunc[1] = ov21_021E4168;
    param0->dataFunc[2] = ov21_021E4194;
    param0->graphicsFunc[0] = ov21_021E41A8;
    param0->graphicsFunc[1] = ov21_021E4268;
    param0->graphicsFunc[2] = ov21_021E4288;
}

void ov21_021E4054(PokedexScreenManager *param0)
{
    ov21_021E40F4(param0->pageData);
    ov21_021E4108(param0->pageGraphics);
}

void ov21_021E4068(PokedexScreenManager *param0, int param1, int param2)
{
    UnkStruct_ov21_021E4108 *v0 = param0->pageGraphics;

    v0->unk_04 = param1;
    v0->unk_08 = param2;
}

void ov21_021E4070(PokedexScreenManager *param0, int param1)
{
    UnkStruct_ov21_021E4108 *v0 = param0->pageGraphics;
    v0->unk_0C = param1;
}

void ov21_021E4078(PokedexScreenManager *param0, int param1)
{
    UnkStruct_ov21_021E4108 *v0 = param0->pageGraphics;
    v0->unk_10 = param1;
}

static UnkStruct_ov21_021E40F4 *ov21_021E4080(enum HeapID heapID, PokedexApp *param1)
{
    UnkStruct_ov21_021E40F4 *v0;
    PokedexScreenManager *v1;

    v0 = Heap_Alloc(heapID, sizeof(UnkStruct_ov21_021E40F4));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021E40F4));

    v0->unk_00 = ov21_021D138C(param1);
    v0->unk_04 = PokedexMain_GetSortData(param1);
    v0->unk_08 = ov21_021D1410(param1, 5);
    v0->unk_0C = ov21_021D1430(param1, 5);

    return v0;
}

static UnkStruct_ov21_021E4108 *ov21_021E40C8(enum HeapID heapID, PokedexApp *param1)
{
    UnkStruct_ov21_021E4108 *v0;
    PokedexScreenManager *v1;

    v0 = Heap_Alloc(heapID, sizeof(UnkStruct_ov21_021E4108));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021E4108));

    v0->unk_00 = PokedexMain_GetGraphicData(param1);

    return v0;
}

static void ov21_021E40F4(UnkStruct_ov21_021E40F4 *param0)
{
    GF_ASSERT(param0);
    Heap_Free(param0);
}

static void ov21_021E4108(UnkStruct_ov21_021E4108 *param0)
{
    GF_ASSERT(param0);
    Heap_Free(param0);
}

static int ov21_021E411C(void)
{
    return 0;
}

static int ov21_021E4120(PokedexDataManager *dataMan, void *data)
{
    UnkStruct_ov21_021E40F4 *v0 = data;
    UnkStruct_ov21_021E4898 *v1;
    int species = PokedexSort_CurrentSpecies(v0->unk_04);

    v1 = Heap_Alloc(dataMan->heapID, sizeof(UnkStruct_ov21_021E4898));

    GF_ASSERT(v1);
    memset(v1, 0, sizeof(UnkStruct_ov21_021E4898));

    dataMan->pageData = v1;

    v1->unk_00 = Sound_LoadPokedexDataForSpecies(species);
    v1->unk_08 = Sound_WaveData_GetLoopLength(v1->unk_00);

    ov21_021E4898(v1, v0);

    return 1;
}

static int ov21_021E4168(PokedexDataManager *dataMan, void *data)
{
    UnkStruct_ov21_021E40F4 *v0 = data;
    UnkStruct_ov21_021E4898 *v1 = dataMan->pageData;

    if (dataMan->exit == 1) {
        return 1;
    }

    if (dataMan->unchanged == 1) {
        return 0;
    }

    ov21_021E4898(v1, v0);
    ov21_021E4C68(v1, v0);

    return 0;
}

static int ov21_021E4194(PokedexDataManager *dataMan, void *data)
{
    UnkStruct_ov21_021E4898 *v0 = dataMan->pageData;

    Heap_Free(v0);
    dataMan->pageData = NULL;

    return 1;
}

static int ov21_021E41A8(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const UnkStruct_ov21_021E40F4 *v0 = data;
    const UnkStruct_ov21_021E4898 *v1 = dataMan->pageData;
    UnkStruct_ov21_021E4108 *v2 = graphics;
    UnkStruct_ov21_021E4360 *v3 = graphicsMan->pageGraphics;
    BOOL v4;

    switch (graphicsMan->state) {
    case 0:
        graphicsMan->pageGraphics = Heap_Alloc(graphicsMan->heapID, sizeof(UnkStruct_ov21_021E4360));
        memset(graphicsMan->pageGraphics, 0, sizeof(UnkStruct_ov21_021E4360));
        graphicsMan->state++;
        break;
    case 1:
        ov21_021E4590(v3, v2, v0, v1, graphicsMan->heapID);

        if (v2->unk_0C == 0) {
            ov21_021E43C8(v3, v2, v0, 1);
        } else {
            ov21_021E448C(v3, v2, v0, 1);
        }

        Sound_FadeOutBGM(0, 3);

        graphicsMan->state++;
        break;
    case 2:
        if (v2->unk_0C == 0) {
            v4 = ov21_021E4440(v3, v2, v0, 1);
        } else {
            v4 = ov21_021E4518(v3, v2, v0, 1);
        }

        if ((v4 == 1) && (Sound_IsFadeActive() == FALSE)) {
            Sound_SetBGMPlayerPaused(PLAYER_FIELD, TRUE);
            graphicsMan->state++;
        }
        break;
    case 3:
        return 1;
    }

    return 0;
}

static int ov21_021E4268(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const UnkStruct_ov21_021E40F4 *v0 = data;
    const UnkStruct_ov21_021E4898 *v1 = dataMan->pageData;
    UnkStruct_ov21_021E4108 *v2 = graphics;
    UnkStruct_ov21_021E4360 *v3 = graphicsMan->pageGraphics;

    ov21_021E4A28(v3, v2, v1);
    ov21_021E4B10(v3, v1);

    return 0;
}

static int ov21_021E4288(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const UnkStruct_ov21_021E40F4 *v0 = data;
    const UnkStruct_ov21_021E4898 *v1 = dataMan->pageData;
    UnkStruct_ov21_021E4108 *v2 = graphics;
    UnkStruct_ov21_021E4360 *v3 = graphicsMan->pageGraphics;
    BOOL v4;

    switch (graphicsMan->state) {
    case 0:
        if (v2->unk_0C == 0) {
            ov21_021E43C8(v3, v2, v0, 0);
        } else {
            ov21_021E448C(v3, v2, v0, 0);
        }

        Sound_SetBGMPlayerPaused(PLAYER_FIELD, FALSE);
        Sound_FadeInBGM(127, 3, BGM_FADE_IN_TYPE_FROM_ZERO);
        graphicsMan->state++;
        break;
    case 1:
        if (v2->unk_0C == 0) {
            v4 = ov21_021E4440(v3, v2, v0, 0);
        } else {
            v4 = ov21_021E4518(v3, v2, v0, 0);
        }

        if (v4) {
            graphicsMan->state++;
        }
        break;
    case 2:
        ov21_021E45DC(v3, v2);
        graphicsMan->state++;
        break;
    case 3:
        Heap_Free(graphicsMan->pageGraphics);
        graphicsMan->pageGraphics = NULL;
        graphicsMan->state++;
        break;
    case 4:
        return 1;
    }

    return 0;
}

static void ov21_021E4328(UnkStruct_ov21_021E4108 *param0, const UnkStruct_ov21_021E40F4 *param1)
{
    PokemonSprite *v0 = PokemonGraphics_GetPokemonChar(param0->unk_00);
    int species = PokedexSort_CurrentSpecies(param1->unk_04);

    PokedexMain_DisplayPokemonSprite(param0->unk_00, param1->unk_04, species, 2, 48, 64);
    PokemonSprite_SetAttribute(v0, MON_SPRITE_HIDE, 0);
}

static void ov21_021E4360(UnkStruct_ov21_021E4360 *param0)
{
    int v0, v1;

    for (v0 = 0; v0 < 9; v0++) {
        for (v1 = 0; v1 < 9; v1++) {
            Sprite_SetExplicitOAMMode(param0->unk_20[v0].unk_00[v1].unk_00, GX_OAM_MODE_XLU);
        }

        Sprite_SetExplicitOAMMode(param0->unk_20[v0].unk_48.unk_00, GX_OAM_MODE_XLU);
    }
}

static void ov21_021E4394(UnkStruct_ov21_021E4360 *param0)
{
    int v0, v1;

    for (v0 = 0; v0 < 9; v0++) {
        for (v1 = 0; v1 < 9; v1++) {
            Sprite_SetExplicitOAMMode(param0->unk_20[v0].unk_00[v1].unk_00, GX_OAM_MODE_NORMAL);
        }

        Sprite_SetExplicitOAMMode(param0->unk_20[v0].unk_48.unk_00, GX_OAM_MODE_NORMAL);
    }
}

static void ov21_021E43C8(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, const UnkStruct_ov21_021E40F4 *param2, BOOL param3)
{
    ov21_021E4360(param0);

    if (ov21_021E2A54(param2->unk_08)) {
        if (param3) {
            PokedexGraphics_InitBlendTransition(&param1->unk_00->blendMain, 3, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        } else {
            PokedexGraphics_InitBlendTransition(&param1->unk_00->blendMain, 3, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        }
    }

    PokedexGraphics_BlendPokemonChar(param1->unk_00, &param1->unk_00->blendMain);
}

static BOOL ov21_021E4440(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, const UnkStruct_ov21_021E40F4 *param2, BOOL param3)
{
    BOOL v0;

    if (ov21_021E2A54(param2->unk_08)) {
        v0 = PokedexGraphics_TakeBlendTransitionStep(&param1->unk_00->blendMain);
    } else {
        v0 = PokedexGraphics_BlendTransitionComplete(&param1->unk_00->blendMain);
    }

    if (v0) {
        if (param3) {
            ov21_021E4394(param0);
        }

        return 1;
    } else {
        PokedexGraphics_BlendPokemonChar(param1->unk_00, &param1->unk_00->blendMain);
    }

    return 0;
}

static void ov21_021E448C(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, const UnkStruct_ov21_021E40F4 *param2, BOOL param3)
{
    ov21_021E4360(param0);

    if (param3 == 0) {
        PokedexGraphics_InitTransformation(&param0->unk_00, 48, param1->unk_04, 64, param1->unk_08, param1->unk_10);
    }

    if (ov21_021E2A54(param2->unk_08)) {
        if (param3) {
            PokedexGraphics_InitBlendTransition(&param1->unk_00->blendMain, param1->unk_10, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        } else {
            PokedexGraphics_InitBlendTransition(&param1->unk_00->blendMain, param1->unk_10, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        }
    }
}

static BOOL ov21_021E4518(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, const UnkStruct_ov21_021E40F4 *param2, BOOL param3)
{
    BOOL v0[2];
    int v1;

    if (param3 == 0) {
        v0[0] = PokedexGraphics_TakeTransformStep(&param0->unk_00);
        PokemonGraphics_SetCharCenterXY(param1->unk_00, param0->unk_00.currentX, param0->unk_00.currentY);
    } else {
        v0[0] = 1;
    }

    if (ov21_021E2A54(param2->unk_08)) {
        v0[1] = PokedexGraphics_TakeBlendTransitionStep(&param1->unk_00->blendMain);
    } else {
        v0[1] = PokedexGraphics_BlendTransitionComplete(&param1->unk_00->blendMain);
    }

    for (v1 = 0; v1 < 2; v1++) {
        if (v0[v1] == 0) {
            break;
        }
    }

    if (v1 == 2) {
        if (param3 == 1) {
            ov21_021E4394(param0);
        }

        return 1;
    }

    return 0;
}

static void ov21_021E4590(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, const UnkStruct_ov21_021E40F4 *param2, const UnkStruct_ov21_021E4898 *param3, enum HeapID heapID)
{
    ov21_021E45FC(param1, param2, heapID);
    ov21_021E46A8(param0, param1, heapID);
    ov21_021E47CC(param0, param1, heapID);
    ov21_021E4890(param0, param1, param2, heapID);
    ov21_021E4328(param1, param2);
    ov21_021E4ABC(param0, param1);
    ov21_021E4AF4(param0);
}

static void ov21_021E45DC(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1)
{
    ov21_021E4894(param0);
    ov21_021E4868(param0);
    ov21_021E4770(param0, param1);
    ov21_021E4664(param1);
}

static void ov21_021E45FC(UnkStruct_ov21_021E4108 *param0, const UnkStruct_ov21_021E40F4 *param1, enum HeapID heapID)
{
    void *v0;
    NNSG2dScreenData *v1;

    PokedexGraphics_LoadGraphicNarcCharacterData(param0->unk_00, entry_main_NCGR_lz, param0->unk_00->bgConfig, 3, 0, 0, TRUE, heapID);
    v0 = PokedexGraphics_GetGraphicNarcTilemapData(param0->unk_00, cry_button_NSCR_lz, TRUE, &v1, heapID);

    Bg_LoadToTilemapRect(param0->unk_00->bgConfig, 3, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_Free(v0);
    Bg_ScheduleTilemapTransfer(param0->unk_00->bgConfig, 3);
}

static void ov21_021E4664(UnkStruct_ov21_021E4108 *param0)
{
    Bg_ScheduleScroll(param0->unk_00->bgConfig, 1, 0, 0);
    Window_FillRectWithColor(&param0->unk_00->window, 0, 0, 0, 256, 192);
    Bg_ClearTilemap(param0->unk_00->bgConfig, 1);
    Window_SetPalette(&param0->unk_00->window, 0);
}

static void ov21_021E46A8(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, enum HeapID heapID)
{
    PokedexGraphicData *v0 = param1->unk_00;
    NARC *v1 = PokedexGraphics_GetNARC(param1->unk_00);

    param0->unk_314[0] = SpriteResourceCollection_AddTilesFrom(v0->spriteResourceCollection[0], v1, cry_bar_NCGR_lz, TRUE, cry_bar_NCGR_lz + 11000, NNS_G2D_VRAM_TYPE_2DMAIN, heapID);

    SpriteTransfer_RequestCharAtEnd(param0->unk_314[0]);
    SpriteResource_ReleaseData(param0->unk_314[0]);

    param0->unk_314[1] = SpriteResourceCollection_AddPaletteFrom(v0->spriteResourceCollection[1], v1, cry_bar_NCLR, FALSE, cry_bar_NCLR + 11000, NNS_G2D_VRAM_TYPE_2DMAIN, 1, heapID);

    SpriteTransfer_RequestPlttFreeSpace(param0->unk_314[1]);
    SpriteResource_ReleaseData(param0->unk_314[1]);

    param0->unk_314[2] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[2], v1, cry_bar_cell_NCER_lz, TRUE, cry_bar_cell_NCER_lz + 11000, 2, heapID);
    param0->unk_314[3] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[3], v1, cry_bar_anim_NANR_lz, TRUE, cry_bar_anim_NANR_lz + 11000, 3, heapID);
}

static void ov21_021E4770(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1)
{
    PokedexGraphicData *v0 = param1->unk_00;

    SpriteTransfer_ResetCharTransfer(param0->unk_314[0]);
    SpriteTransfer_ResetPlttTransfer(param0->unk_314[1]);

    SpriteResourceCollection_Remove(v0->spriteResourceCollection[0], param0->unk_314[0]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[1], param0->unk_314[1]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[2], param0->unk_314[2]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[3], param0->unk_314[3]);
}

static void ov21_021E47CC(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, enum HeapID heapID)
{
    SpriteResourcesHeader v0;
    SpriteListTemplate v1;
    PokedexGraphicData *v2 = param1->unk_00;
    int v3, v4;

    SpriteResourcesHeader_Init(&v0, cry_bar_NCGR_lz + 11000, cry_bar_NCLR + 11000, cry_bar_cell_NCER_lz + 11000, cry_bar_anim_NANR_lz + 11000, 0xffffffff, 0xffffffff, FALSE, 0, v2->spriteResourceCollection[0], v2->spriteResourceCollection[1], v2->spriteResourceCollection[2], v2->spriteResourceCollection[3], NULL, NULL);

    v1.list = v2->spriteList;
    v1.resourceData = &v0;
    v1.priority = 17;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.heapID = heapID;
    v1.position.x = 0;
    v1.position.y = 0;

    for (v3 = 0; v3 < 9; v3++) {
        for (v4 = 0; v4 < 9; v4++) {
            param0->unk_20[v3].unk_00[v4].unk_00 = SpriteList_Add(&v1);
        }

        param0->unk_20[v3].unk_48.unk_00 = SpriteList_Add(&v1);
    }
}

static void ov21_021E4868(UnkStruct_ov21_021E4360 *param0)
{
    int v0, v1;

    for (v0 = 0; v0 < 9; v0++) {
        for (v1 = 0; v1 < 9; v1++) {
            Sprite_Delete(param0->unk_20[v0].unk_00[v1].unk_00);
        }

        Sprite_Delete(param0->unk_20[v0].unk_48.unk_00);
    }
}

static void ov21_021E4890(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, const UnkStruct_ov21_021E40F4 *param2, enum HeapID heapID)
{
    return;
}

static void ov21_021E4894(UnkStruct_ov21_021E4360 *param0)
{
    return;
}

static void ov21_021E4898(UnkStruct_ov21_021E4898 *param0, UnkStruct_ov21_021E40F4 *param1)
{
    int pitch = CrySub_GetPitch(param1->unk_0C);
    param0->unk_04 = Sound_GetNumberOfPlayedCrySamples(1, param0->unk_00, pitch);
}

static void ov21_021E48B0(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, const SNDWaveData *param2, int param3, int param4, int param5, int param6, int param7, int *param8)
{
    const u8 *v0 = Sound_WaveData_GetSamples(param2);
    int v1;
    int v2;
    int v3;

    Window_FillRectWithColor(&param1->unk_00->window, 0, param6, param7 - 32, 1 * (param5), 32 * 2);

    v3 = param4 - param3;

    for (v1 = 0; v1 < param5; v1++) {
        v2 = FX_Mul(v3 << FX32_SHIFT, v1 << FX32_SHIFT);
        v2 = FX_Div(v2, param5 << FX32_SHIFT) >> FX32_SHIFT;
        v2 += param3;

        ov21_021E495C(&param1->unk_00->window, v0[v2], param6, param7, param8);

        param6 += 1;
    }
}

static void ov21_021E495C(Window *param0, u8 param1, int param2, int param3, int *param4)
{
    int v0;
    int v1;
    int v2, v3;

    if (param1 > 127) {
        v0 = param1 - 255;
    } else {
        v0 = param1;
    }

    if (v0 != 0) {
        v0 = FX_Mul(32 << FX32_SHIFT, v0 << FX32_SHIFT);
        v0 = FX_Div(v0, 127 << FX32_SHIFT) >> FX32_SHIFT;
    }

    v2 = (param3 + v0);
    v3 = (param3 + (*param4));

    if (v2 > v3) {
        v1 = v3;
        v2 = v2 - v3;
    } else {
        v1 = v2;
        v2 = v3 - v2;
    }

    v2++;
    v2 *= 1;

    Window_FillRectWithColor(param0, 6, param2, v1, 1, v2);

    *param4 = v0;
}

static void ov21_021E49D0(UnkStruct_ov21_021E4108 *param0, int param1, int param2, int param3, int param4, int *param5)
{
    int v0;

    Window_FillRectWithColor(&param0->unk_00->window, 0, param3, param4 - 32, 1 * (param2 - param1), 32 * 2);

    for (v0 = param1; v0 < param2; v0++) {
        ov21_021E495C(&param0->unk_00->window, 0, param3, param4, param5);
        param3 += 1;
    }
}

static void ov21_021E4A28(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1, const UnkStruct_ov21_021E4898 *param2)
{
    int v0;

    param0->unk_324 += 4;
    param0->unk_324 %= 256;

    v0 = param0->unk_324 - (4 * 2);

    if (v0 < 0) {
        v0 += 256;
    }

    if (param0->unk_32C != param2->unk_04) {
        ov21_021E48B0(param0, param1, param2->unk_00, param0->unk_32C, param2->unk_04, 4, v0, 151, &param0->unk_328);
    } else {
        ov21_021E49D0(param1, 0, 4, v0, 151, &param0->unk_328);
    }

    Bg_ScheduleScroll(param1->unk_00->bgConfig, 1, 0, param0->unk_324);
    Window_ScheduleCopyToVRAM(&param1->unk_00->window);

    param0->unk_32C = param2->unk_04;
}

static void ov21_021E4ABC(UnkStruct_ov21_021E4360 *param0, UnkStruct_ov21_021E4108 *param1)
{
    Window_SetPalette(&param1->unk_00->window, 9);
    ov21_021E49D0(param1, 0, 256, 0, 151, &param0->unk_328);
    Window_CopyToVRAM(&param1->unk_00->window);
}

static void ov21_021E4AF4(UnkStruct_ov21_021E4360 *param0)
{
    int v0;

    for (v0 = 0; v0 < 9; v0++) {
        ov21_021E4B30(&param0->unk_20[v0], v0);
    }
}

static void ov21_021E4B10(UnkStruct_ov21_021E4360 *param0, const UnkStruct_ov21_021E4898 *param1)
{
    int v0;

    for (v0 = 0; v0 < 9; v0++) {
        ov21_021E4B94(&param0->unk_20[v0], param1->unk_0C[v0]);
    }
}

static void ov21_021E4B30(UnkStruct_ov21_021E4B30 *param0, int param1)
{
    int v0;
    VecFx32 v1;

    v1.x = (112 + (16 * param1)) << FX32_SHIFT;
    v1.y = 96 << FX32_SHIFT;

    for (v0 = 0; v0 < 9; v0++) {
        Sprite_SetPosition(param0->unk_00[v0].unk_00, &v1);
        Sprite_SetDrawFlag(param0->unk_00[v0].unk_00, FALSE);

        v1.y += -8 << FX32_SHIFT;

        Sprite_SetAnim(param0->unk_00[v0].unk_00, 1);
    }

    v1.y = 96 << FX32_SHIFT;

    Sprite_SetPosition(param0->unk_48.unk_00, &v1);
    Sprite_SetDrawFlag(param0->unk_48.unk_00, FALSE);
}

static void ov21_021E4B94(UnkStruct_ov21_021E4B30 *param0, int param1)
{
    int v0;
    int v1 = 0;

    for (v0 = 0; v0 < param1; v0++) {
        Sprite_SetDrawFlag(param0->unk_00[v0].unk_00, TRUE);
        param0->unk_00[v0].unk_04 = 2 * (v0 + 1);
    }

    for (v0 = 0; v0 < 9; v0++) {
        if (Sprite_GetDrawFlag(param0->unk_00[v0].unk_00)) {
            if ((param0->unk_00[v0].unk_04 - 1) > 0) {
                param0->unk_00[v0].unk_04--;
                v1 = v0 + 1;
            } else {
                Sprite_SetDrawFlag(param0->unk_00[v0].unk_00, FALSE);
            }
        }
    }

    if (param0->unk_48.unk_04 <= v1) {
        ov21_021E4C38(param0->unk_48.unk_00, v1);
        param0->unk_48.unk_08 = 16;

        if (param0->unk_48.unk_04 < v1) {
            Sprite_SetDrawFlag(param0->unk_48.unk_00, TRUE);
        }

        param0->unk_48.unk_04 = v1;
    }

    if (param0->unk_48.unk_04 > 0) {
        if (param0->unk_48.unk_08 < 0) {
            param0->unk_48.unk_04--;
            ov21_021E4C38(param0->unk_48.unk_00, param0->unk_48.unk_04);
        } else {
            param0->unk_48.unk_08--;
        }
    } else {
        Sprite_SetDrawFlag(param0->unk_48.unk_00, FALSE);
    }
}

static void ov21_021E4C38(Sprite *param0, int param1)
{
    VecFx32 v0;
    const VecFx32 *v1 = Sprite_GetPosition(param0);
    v0 = *v1;
    v0.y = (96 + (-8 * param1)) << FX32_SHIFT;

    Sprite_SetPosition(param0, &v0);
}

static void ov21_021E4C68(UnkStruct_ov21_021E4898 *param0, UnkStruct_ov21_021E40F4 *param1)
{
    int pitch = CrySub_GetPitch(param1->unk_0C);

    memset(param0->unk_0C, 0, sizeof(u8) * 9);

    if (Sound_IsPokemonCryPlaying() != 0) {
        Sound_WaveData_AccumulateAmplitudes(param0->unk_00, param0->unk_0C, 9, pitch);
    }
}
