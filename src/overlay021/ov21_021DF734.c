#include "overlay021/ov21_021DF734.h"

#include <nitro.h>
#include <string.h>

#include "generated/gender_ratios.h"

#include "overlay021/ov21_021D1FA4.h"
#include "overlay021/ov21_021D4C0C.h"
#include "overlay021/ov21_021E29DC.h"
#include "overlay021/pokedex_app.h"
#include "overlay021/pokedex_data_manager.h"
#include "overlay021/pokedex_graphic_data.h"
#include "overlay021/pokedex_graphics_manager.h"
#include "overlay021/pokedex_main.h"
#include "overlay021/pokedex_sort.h"
#include "overlay021/pokedex_sort_data.h"
#include "overlay021/struct_ov21_021D2648.h"
#include "overlay021/struct_ov21_021D4CA0.h"
#include "overlay021/struct_ov21_021D4CB8.h"
#include "overlay021/struct_ov21_021E68F4.h"

#include "bg_window.h"
#include "heap.h"
#include "inlines.h"
#include "narc.h"
#include "pltt_transfer.h"
#include "pokemon.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "unk_02012744.h"

#include "res/text/bank/pokedex.h"

typedef struct {
    int *unk_00;
    PokedexSortData *unk_04;
    const UnkStruct_ov21_021E68F4 *unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
} UnkStruct_ov21_021DF844;

typedef struct {
    PokedexGraphicData *unk_00;
    BOOL unk_04;
    BOOL unk_08;
} UnkStruct_ov21_021DF858;

typedef struct {
    Sprite *unk_00[4];
    SpriteResource *unk_10[4];
    UnkStruct_ov21_021D4CA0 *unk_20[2];
    UnkStruct_ov21_021D2648 unk_28[4];
    int unk_A8[4];
    int unk_B8;
    Sprite *unk_BC;
    int unk_C0;
    BOOL unk_C4;
    int unk_C8;
    int unk_CC;
} UnkStruct_ov21_021DFFF8;

static inline int inline_ov21_021E00F4(int param0, int param1);
static UnkStruct_ov21_021DF844 *ov21_021DF7CC(enum HeapId heapID, PokedexApp *param1);
static UnkStruct_ov21_021DF858 *ov21_021DF80C(enum HeapId heapID, PokedexApp *param1);
static void ov21_021DF844(UnkStruct_ov21_021DF844 *param0);
static void ov21_021DF858(UnkStruct_ov21_021DF858 *param0);
static int ov21_021DF86C(void);
static int ov21_021DF870(int param0, int param1, int param2, int param3);
static int ov21_021DF888(PokedexDataManager *param0, void *param1);
static int ov21_021DF8B0(PokedexDataManager *param0, void *param1);
static int ov21_021DF8C0(PokedexDataManager *param0, void *param1);
static int ov21_021DF8C4(void *param0, PokedexGraphicsManager *param1, const void *param2, const PokedexDataManager *param3);
static int ov21_021DF958(void *param0, PokedexGraphicsManager *param1, const void *param2, const PokedexDataManager *param3);
static int ov21_021DFA18(void *param0, PokedexGraphicsManager *param1, const void *param2, const PokedexDataManager *param3);
static void ov21_021DFF38(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2, BOOL param3);
static BOOL ov21_021DFFA8(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2, BOOL param3);
static void ov21_021E0078(UnkStruct_ov21_021DF858 *param0);
static void ov21_021DFFF8(UnkStruct_ov21_021DFFF8 *param0);
static void ov21_021E0038(UnkStruct_ov21_021DFFF8 *param0);
static void ov21_021E0094(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1);
static BOOL ov21_021E00B8(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1);
static void ov21_021E00F4(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, int param2, int param3, int param4);
static BOOL ov21_021E015C(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, int param2);
static int ov21_021E01CC(int species, const UnkStruct_ov21_021DF844 *param1);
static int ov21_021E0268(int species, const UnkStruct_ov21_021DF844 *param1);
static int ov21_021E02F0(int species, const UnkStruct_ov21_021DF844 *param1);
static void ov21_021DFA84(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2, int heapID);
static void ov21_021DFACC(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1);
static void ov21_021DFAE8(UnkStruct_ov21_021DF858 *param0, int heapID);
static void ov21_021DFD1C(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, int param2);
static void ov21_021DFDC8(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1);
static void ov21_021DFE0C(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2, int param3);
static void ov21_021DFF18(UnkStruct_ov21_021DFFF8 *param0);
static void ov21_021DFB50(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2);
static void ov21_021DFBB4(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2);
static void ov21_021DFBEC(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2, int param3, int param4, int param5, int param6);
static void ov21_021E0354(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2, int param3, int param4, int param5);
static void ov21_021E03EC(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2, int param3, int param4, int param5);
static void ov21_021E0478(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2, int param3, int param4, int param5);
static void ov21_021E0504(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2, int param3, int param4, int param5);
static void ov21_021E0590(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2, int param3, int param4, int param5);
static void ov21_021E061C(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2, int param3, int param4, int param5);
static void ov21_021E06A8(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2, int param3, int param4, int param5);
static void ov21_021E072C(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2, int param3, int param4, int param5);
static void ov21_021E07B8(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2, int param3, int param4, int param5);
static void ov21_021E0844(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2, int param3, int param4, int param5);
static void ov21_021E0B24(int param0, int *param1, int *param2);
static void ov21_021DFD00(UnkStruct_ov21_021DF858 *param0);
static void ov21_021E08D0(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2, int param3, int param4, int param5);
static void ov21_021E0944(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2, int param3, int param4, int param5);
static void ov21_021E09A4(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2, int param3, int param4, int formIndex, int param6, int param7);
static int SpeciesGenderMessage(UnkStruct_ov21_021DF858 *param0, const UnkStruct_ov21_021DF844 *param1, int formIndex);
static int SpeciesMaleMessage(UnkStruct_ov21_021DF858 *param0, const UnkStruct_ov21_021DF844 *param1, int formIndex);
static int SpeciesFemaleMessage(UnkStruct_ov21_021DF858 *param0, const UnkStruct_ov21_021DF844 *param1, int formIndex);
static int BlankMessage(UnkStruct_ov21_021DF858 *param0, const UnkStruct_ov21_021DF844 *param1, int formIndex);
static int BurmyFormMessage(UnkStruct_ov21_021DF858 *param0, const UnkStruct_ov21_021DF844 *param1, int formIndex);
static int WormadamFormMessage(UnkStruct_ov21_021DF858 *param0, const UnkStruct_ov21_021DF844 *param1, int formIndex);
static int ShellosFormMessage(UnkStruct_ov21_021DF858 *param0, const UnkStruct_ov21_021DF844 *param1, int formIndex);
static int GastrodonFormMessage(UnkStruct_ov21_021DF858 *param0, const UnkStruct_ov21_021DF844 *param1, int formIndex);
static int ov21_021E0AD8(UnkStruct_ov21_021DF858 *param0, const UnkStruct_ov21_021DF844 *param1, int formIndex);
static int DeoxysFormMessage(UnkStruct_ov21_021DF858 *param0, const UnkStruct_ov21_021DF844 *param1, int formIndex);
static int ShayminFormMessage(UnkStruct_ov21_021DF858 *param0, const UnkStruct_ov21_021DF844 *param1, int formIndex);
static int GiratinaFormMessage(UnkStruct_ov21_021DF858 *param0, const UnkStruct_ov21_021DF844 *param1, int formIndex);
static int RotomFormMessage(UnkStruct_ov21_021DF858 *param0, const UnkStruct_ov21_021DF844 *param1, int formIndex);
static int FormMessage(UnkStruct_ov21_021DF858 *param0, const UnkStruct_ov21_021DF844 *param1, int param2, int formIndex);
static void ov21_021E0BF8(UnkStruct_ov21_021DFFF8 *param0);
static void ov21_021E0C10(UnkStruct_ov21_021DFFF8 *param0);
static void ov21_021E0C30(UnkStruct_ov21_021DFFF8 *param0);

void ov21_021DF734(UnkStruct_ov21_021E68F4 *param0, PokedexApp *param1, enum HeapId heapID)
{
    UnkStruct_ov21_021DF844 *v0;
    UnkStruct_ov21_021DF858 *v1;

    v0 = ov21_021DF7CC(heapID, param1);
    v1 = ov21_021DF80C(heapID, param1);

    param0->pageData = v0;
    param0->pageGraphics = v1;
    param0->unk_20 = NULL;
    param0->unk_24 = ov21_021DF86C();

    param0->dataFunc[0] = ov21_021DF888;
    param0->dataFunc[1] = ov21_021DF8B0;
    param0->dataFunc[2] = ov21_021DF8C0;
    param0->graphicsFunc[0] = ov21_021DF8C4;
    param0->graphicsFunc[1] = ov21_021DF958;
    param0->graphicsFunc[2] = ov21_021DFA18;
}

void ov21_021DF78C(UnkStruct_ov21_021E68F4 *param0)
{
    ov21_021DF844(param0->pageData);
    ov21_021DF858(param0->pageGraphics);
}

BOOL ov21_021DF7A0(UnkStruct_ov21_021E68F4 *param0, int param1)
{
    UnkStruct_ov21_021DF844 *v0 = param0->pageData;
    UnkStruct_ov21_021DF858 *v1 = param0->pageGraphics;
    int v2;

    if (v1->unk_04 == 1) {
        return 0;
    }

    v2 = v0->unk_14;
    v0->unk_14 = ov21_021DF870(v0->unk_0C, v0->unk_14, param1, v0->unk_10);

    if (v2 != v0->unk_14) {
        return 1;
    }

    return 0;
}

static UnkStruct_ov21_021DF844 *ov21_021DF7CC(enum HeapId heapID, PokedexApp *param1)
{
    UnkStruct_ov21_021DF844 *v0;
    UnkStruct_ov21_021E68F4 *v1;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021DF844));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021DF844));

    v0->unk_00 = ov21_021D138C(param1);
    v0->unk_04 = ov21_021D13EC(param1);
    v1 = ov21_021D1410(param1, 5);
    v0->unk_08 = v1;

    return v0;
}

static UnkStruct_ov21_021DF858 *ov21_021DF80C(enum HeapId heapID, PokedexApp *param1)
{
    UnkStruct_ov21_021DF858 *v0;
    UnkStruct_ov21_021E68F4 *v1;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021DF858));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021DF858));

    v0->unk_00 = ov21_021D13FC(param1);

    return v0;
}

static void ov21_021DF844(UnkStruct_ov21_021DF844 *param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static void ov21_021DF858(UnkStruct_ov21_021DF858 *param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static int ov21_021DF86C(void)
{
    return 0;
}

static inline int inline_ov21_021DF870(int param0, int param1, int param2)
{
    int v0;

    if (param2 > 0) {
        if ((param0 + param2) < param1) {
            v0 = param0 + param2;
        } else {
            v0 = 0;
        }
    } else {
        if ((param0 + param2) >= 0) {
            v0 = param2;
        } else {
            v0 = param1 - 1;
        }
    }

    return v0;
}

static int ov21_021DF870(int param0, int param1, int param2, int param3)
{
    int v0 = inline_ov21_021DF870(param1, param3, param2);

    return v0;
}

static int ov21_021DF888(PokedexDataManager *dataMan, void *param1)
{
    UnkStruct_ov21_021DF844 *v0 = param1;
    int species;

    species = PokedexSort_CurrentSpecies(v0->unk_04);

    v0->unk_0C = ov21_021E01CC(species, v0);
    v0->unk_10 = ov21_021E0268(species, v0);
    v0->unk_14 = 0;

    return 1;
}

static int ov21_021DF8B0(PokedexDataManager *dataMan, void *param1)
{
    UnkStruct_ov21_021DF844 *v0 = param1;

    if (dataMan->exit == 1) {
        return 1;
    }

    if (dataMan->unchanged == 1) {
        return 0;
    }

    return 0;
}

static int ov21_021DF8C0(PokedexDataManager *dataMan, void *param1)
{
    return 1;
}

static int ov21_021DF8C4(void *param0, PokedexGraphicsManager *graphicsMan, const void *param2, const PokedexDataManager *dataMan)
{
    const UnkStruct_ov21_021DF844 *v0 = param2;
    UnkStruct_ov21_021DF858 *v1 = param0;
    UnkStruct_ov21_021DFFF8 *v2 = graphicsMan->pageGraphics;
    BOOL v3;

    switch (graphicsMan->state) {
    case 0:
        graphicsMan->pageGraphics = Heap_AllocFromHeap(graphicsMan->heapID, sizeof(UnkStruct_ov21_021DFFF8));
        memset(graphicsMan->pageGraphics, 0, sizeof(UnkStruct_ov21_021DFFF8));
        v2 = graphicsMan->pageGraphics;
        v2->unk_C8 = v0->unk_0C;
        v1->unk_04 = 0;
        v1->unk_08 = 0;
        graphicsMan->state++;
        break;
    case 1:
        ov21_021DFA84(v2, v1, v0, graphicsMan->heapID);
        ov21_021DFF38(v2, v1, v0, 1);
        graphicsMan->state++;
        break;
    case 2:
        v3 = ov21_021DFFA8(v2, v1, v0, 1);

        if (v3) {
            graphicsMan->state++;
        }
        break;
    case 3:
        G2_BlendNone();
        return 1;
    default:
        break;
    }

    return 0;
}

static int ov21_021DF958(void *param0, PokedexGraphicsManager *graphicsMan, const void *param2, const PokedexDataManager *dataMan)
{
    const UnkStruct_ov21_021DF844 *v0 = param2;
    UnkStruct_ov21_021DF858 *v1 = param0;
    UnkStruct_ov21_021DFFF8 *v2 = graphicsMan->pageGraphics;

    switch (graphicsMan->state) {
    case 0:
        if (v0->unk_14 != v2->unk_CC) {
            v2->unk_CC = v0->unk_14;
            v2->unk_B8 = (v2->unk_B8 + 1) % 2;
            ov21_021E0094(v2, v1);
            ov21_021E0C10(v2);
            v1->unk_04 = 1;
            Sound_PlayEffect(1675);
            graphicsMan->state++;
        }
        break;
    case 1:
        if (ov21_021E00B8(v2, v1) == 1) {
            v1->unk_08 = 1;
            graphicsMan->state++;
        }
        break;
    case 2:
        if (v1->unk_08 == 1) {
            ov21_021E0944(v2, v1, v0, graphicsMan->heapID, v0->unk_0C, v0->unk_14);
            ov21_021DFBB4(v2, v1, v0);
            v1->unk_08 = 0;
            v1->unk_04 = 0;
            graphicsMan->state = 0;
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    ov21_021E0C30(v2);

    return 0;
}

static int ov21_021DFA18(void *param0, PokedexGraphicsManager *graphicsMan, const void *param2, const PokedexDataManager *dataMan)
{
    const UnkStruct_ov21_021DF844 *v0 = param2;
    UnkStruct_ov21_021DF858 *v1 = param0;
    UnkStruct_ov21_021DFFF8 *v2 = graphicsMan->pageGraphics;
    BOOL v3;

    switch (graphicsMan->state) {
    case 0:
        ov21_021DFF38(v2, v1, v0, 0);
        graphicsMan->state++;
        break;
    case 1:
        v3 = ov21_021DFFA8(v2, v1, v0, 0);

        if (v3) {
            graphicsMan->state++;
        }
        break;
    case 2:
        ov21_021DFACC(v2, v1);
        graphicsMan->state++;
        break;
    case 3:
        Heap_FreeToHeap(graphicsMan->pageGraphics);
        graphicsMan->state++;
        break;
    case 4:
        return 1;
    default:
        break;
    }

    return 0;
}

static void ov21_021DFA84(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2, int heapID)
{
    ov21_021DFB50(param0, param1, param2);
    ov21_021DFD1C(param0, param1, heapID);
    ov21_021DFAE8(param1, heapID);
    ov21_021DFE0C(param0, param1, param2, heapID);
    ov21_021E08D0(param0, param1, param2, heapID, param2->unk_0C, param2->unk_14);
}

static void ov21_021DFACC(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1)
{
    ov21_021E0BF8(param0);
    ov21_021DFF18(param0);
    ov21_021DFDC8(param0, param1);
}

static void ov21_021DFAE8(UnkStruct_ov21_021DF858 *param0, int heapID)
{
    void *v0;
    NNSG2dScreenData *v1;

    ov21_021D2724(param0->unk_00, 33, param0->unk_00->bgConfig, 3, 0, 0, 1, heapID);

    v0 = ov21_021D27B8(param0->unk_00, 50, 1, &v1, heapID);

    Bg_LoadToTilemapRect(param0->unk_00->bgConfig, 3, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);
    Bg_ScheduleTilemapTransfer(param0->unk_00->bgConfig, 3);
}

static void ov21_021DFB50(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2)
{
    int species = PokedexSort_CurrentSpecies(param2->unk_04);
    int v1;
    int v2;

    ov21_021DFBEC(param0, param1, param2, species, param2->unk_0C, param2->unk_14, 0);

    v2 = ov21_021DF870(param2->unk_0C, param2->unk_14, 1, param2->unk_10);
    ov21_021DFBEC(param0, param1, param2, species, param2->unk_0C, v2, 2);

    for (v1 = 0; v1 < 4; v1++) {
        ov21_021D2280(param1->unk_00, 1, v1);
    }
}

static void ov21_021DFBB4(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2)
{
    int species = PokedexSort_CurrentSpecies(param2->unk_04);
    int v1;
    int v2 = ov21_021DF870(param2->unk_0C, param2->unk_14, 1, param2->unk_10);
    ov21_021DFBEC(param0, param1, param2, species, param2->unk_0C, v2, 2);
}

static void ov21_021DFBEC(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2, int param3, int param4, int param5, int param6)
{
    GF_ASSERT(param6 <= 2);

    switch (param4) {
    case 0:
    case 1:
    case 2:
    case 3:
        ov21_021E0354(param0, param1, param2, param3, param5, param6);
        break;
    case 6:
        ov21_021E03EC(param0, param1, param2, param3, param5, param6);
        break;
    case 7:
        ov21_021E0478(param0, param1, param2, param3, param5, param6);
        break;
    case 4:
        ov21_021E0504(param0, param1, param2, param3, param5, param6);
        break;
    case 5:
        ov21_021E0590(param0, param1, param2, param3, param5, param6);
        break;
    case 8:
        ov21_021E061C(param0, param1, param2, param3, param5, param6);
        break;
    case 9:
        ov21_021E06A8(param0, param1, param2, param3, param5, param6);
        break;
    case 10:
        ov21_021E072C(param0, param1, param2, param3, param5, param6);
        break;
    case 11:
        ov21_021E07B8(param0, param1, param2, param3, param5, param6);
        break;
    case 12:
        ov21_021E0844(param0, param1, param2, param3, param5, param6);
        break;
    default:
        GF_ASSERT(0);
        break;
    }
}

static void ov21_021DFD00(UnkStruct_ov21_021DF858 *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        ov21_021D2280(param0->unk_00, 0, v0);
    }
}

static void ov21_021DFD1C(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, int param2)
{
    PokedexGraphicData *v0 = param1->unk_00;
    NARC *v1 = ov21_021D26E0(param1->unk_00);

    param0->unk_10[0] = SpriteResourceCollection_AddTilesFrom(v0->spriteResourceCollection[0], v1, 122, 1, 122 + 14000, NNS_G2D_VRAM_TYPE_2DMAIN, param2);

    SpriteTransfer_RequestCharAtEnd(param0->unk_10[0]);
    SpriteResource_ReleaseData(param0->unk_10[0]);

    param0->unk_10[1] = SpriteResourceCollection_AddPaletteFrom(v0->spriteResourceCollection[1], v1, 22, 0, 22 + 14000, NNS_G2D_VRAM_TYPE_2DMAIN, 1, param2);

    SpriteTransfer_RequestPlttFreeSpace(param0->unk_10[1]);
    SpriteResource_ReleaseData(param0->unk_10[1]);

    param0->unk_10[2] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[2], v1, 123, 1, 123 + 14000, 2, param2);
    param0->unk_10[3] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[3], v1, 121, 1, 121 + 14000, 3, param2);
}

static void ov21_021DFDC8(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1)
{
    PokedexGraphicData *v0 = param1->unk_00;

    SpriteTransfer_ResetCharTransfer(param0->unk_10[0]);
    SpriteTransfer_ResetPlttTransfer(param0->unk_10[1]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[0], param0->unk_10[0]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[1], param0->unk_10[1]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[2], param0->unk_10[2]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[3], param0->unk_10[3]);
}

static void ov21_021DFE0C(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2, int param3)
{
    SpriteResourcesHeader v0;
    SpriteListTemplate v1;
    PokedexGraphicData *v2 = param1->unk_00;
    int v3, v4;
    int v5;

    SpriteResourcesHeader_Init(&v0, 122 + 14000, 22 + 14000, 123 + 14000, 121 + 14000, 0xffffffff, 0xffffffff, 0, 3, v2->spriteResourceCollection[0], v2->spriteResourceCollection[1], v2->spriteResourceCollection[2], v2->spriteResourceCollection[3], NULL, NULL);

    v1.list = v2->spriteList;
    v1.resourceData = &v0;
    v1.priority = 32;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.heapID = param3;
    v1.position.x = 0;
    v1.position.y = 0;

    for (v5 = 0; v5 < 4; v5++) {
        ov21_021E0B24(v5, &v3, &v4);
        v1.position.x = v3 << FX32_SHIFT;
        v1.position.y = (v4 + 8) << FX32_SHIFT;

        param0->unk_00[v5] = SpriteList_Add(&v1);

        if ((v5 % 2) == 0) {
            Sprite_SetAnim(param0->unk_00[v5], 0);
        } else {
            Sprite_SetAnim(param0->unk_00[v5], 2);
        }
    }

    v1.position.x = 248 << FX32_SHIFT;
    v1.position.y = 96 << FX32_SHIFT;
    v1.priority = 0;

    param0->unk_BC = SpriteList_Add(&v1);

    Sprite_SetAnim(param0->unk_BC, 1);
    Sprite_SetAnimateFlag(param0->unk_BC, 1);
    Sprite_SetExplicitPriority(param0->unk_BC, 0);

    if (param2->unk_10 <= 1) {
        Sprite_SetDrawFlag(param0->unk_BC, 0);
    }
}

static void ov21_021DFF18(UnkStruct_ov21_021DFFF8 *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        Sprite_Delete(param0->unk_00[v0]);
    }

    Sprite_Delete(param0->unk_BC);
}

static void ov21_021DFF38(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2, BOOL param3)
{
    ov21_021DFFF8(param0);

    if (ov21_021E2A54(param2->unk_08)) {
        if (param3) {
            ov21_021D23F8(&param1->unk_00->unk_168, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), GX_BLEND_PLANEMASK_BG3, 0);
        } else {
            ov21_021D23F8(&param1->unk_00->unk_168, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), GX_BLEND_PLANEMASK_BG3, 0);
        }
    }

    ov21_021E0078(param1);
}

static BOOL ov21_021DFFA8(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2, BOOL param3)
{
    BOOL v0;

    if (ov21_021E2A54(param2->unk_08)) {
        v0 = ov21_021D2424(&param1->unk_00->unk_168);
    } else {
        v0 = ov21_021D24EC(&param1->unk_00->unk_168);
    }

    if (v0 == 1) {
        if (param3 == 1) {
            ov21_021E0038(param0);
        } else {
            ov21_021DFD00(param1);
        }
    } else {
        ov21_021E0078(param1);
    }

    return v0;
}

static void ov21_021DFFF8(UnkStruct_ov21_021DFFF8 *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        Sprite_SetExplicitOAMMode(param0->unk_00[v0], GX_OAM_MODE_XLU);
    }

    Sprite_SetExplicitOAMMode(param0->unk_BC, GX_OAM_MODE_XLU);

    for (v0 = 0; v0 < 2; v0++) {
        sub_02012AF0(param0->unk_20[v0]->unk_00, GX_OAM_MODE_XLU);
    }
}

static void ov21_021E0038(UnkStruct_ov21_021DFFF8 *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        Sprite_SetExplicitOAMMode(param0->unk_00[v0], GX_OAM_MODE_NORMAL);
    }

    Sprite_SetExplicitOAMMode(param0->unk_BC, GX_OAM_MODE_NORMAL);

    for (v0 = 0; v0 < 2; v0++) {
        sub_02012AF0(param0->unk_20[v0]->unk_00, GX_OAM_MODE_NORMAL);
    }
}

static void ov21_021E0078(UnkStruct_ov21_021DF858 *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        ov21_021D251C(param0->unk_00, &param0->unk_00->unk_168, v0);
    }
}

static void ov21_021E0094(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        ov21_021E00F4(param0, param1, -256, 0, v0);
    }
}

static BOOL ov21_021E00B8(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1)
{
    int v0;
    BOOL v1;

    if (param1->unk_04 == 0) {
        return 1;
    }

    for (v0 = 0; v0 < 4; v0++) {
        v1 = ov21_021E015C(param0, param1, v0);
    }

    for (v0 = 0; v0 < 2; v0++) {
        sub_02012938(param0->unk_20[v0]->unk_00);
    }

    return v1;
}

static void ov21_021E00F4(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, int param2, int param3, int param4)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4 = inline_ov21_021E00F4(param0->unk_B8, param4);

    ov21_021E0B24(param4, &v2, &v3);
    ov21_021D2250(param1->unk_00, &v0, &v1, v4);
    ov21_021D2648(&param0->unk_28[param4], v2 + param2, v2, v3 + param3, v3, 16);

    param0->unk_A8[param4] = v1 - v3;
}

static BOOL ov21_021E015C(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, int param2)
{
    BOOL v0;
    VecFx32 v1;
    int v2 = inline_ov21_021E00F4(param0->unk_B8, param2);

    v0 = ov21_021D2664(&param0->unk_28[param2]);
    ov21_021D222C(param1->unk_00, param0->unk_28[param2].unk_00, param0->unk_28[param2].unk_04 + param0->unk_A8[param2], v2);

    v1.x = param0->unk_28[param2].unk_00 << FX32_SHIFT;
    v1.y = (param0->unk_28[param2].unk_04 + 8) << FX32_SHIFT;

    Sprite_SetPosition(param0->unk_00[v2], &v1);

    return v0;
}

static int ov21_021E01CC(int species, const UnkStruct_ov21_021DF844 *param1)
{
    switch (species) {
    case SPECIES_UNOWN:
        return 8;
    case SPECIES_SHELLOS:
        return 4;
    case SPECIES_GASTRODON:
        return 5;
    case SPECIES_BURMY:
        return 6;
    case SPECIES_WORMADAM:
        return 7;
    case SPECIES_DEOXYS:
        return 9;
    case SPECIES_SHAYMIN:
        return 10;
    case SPECIES_GIRATINA:
        return 11;
    case SPECIES_ROTOM:
        return 12;
    default:
        break;
    }

    return ov21_021E02F0(species, param1);
}

static int ov21_021E0268(int species, const UnkStruct_ov21_021DF844 *param1)
{
    switch (species) {
    case SPECIES_UNOWN:
    case SPECIES_SHELLOS:
    case SPECIES_GASTRODON:
    case SPECIES_BURMY:
    case SPECIES_WORMADAM:
    case SPECIES_DEOXYS:
    case SPECIES_SHAYMIN:
    case SPECIES_GIRATINA:
    case SPECIES_ROTOM:
        return PokedexSort_NumFormsSeen(param1->unk_04, species);
    default:
        break;
    }

    return PokedexSort_NumGendersVisible(param1->unk_04, species);
}

static int ov21_021E02F0(int species, const UnkStruct_ov21_021DF844 *param1)
{
    int genderRatio;
    int v1;

    genderRatio = SpeciesData_GetSpeciesValue(species, SPECIES_DATA_GENDER_RATIO);

    if (genderRatio == GENDER_RATIO_MALE_ONLY) {
        return 1;
    }

    if (genderRatio == GENDER_RATIO_FEMALE_ONLY) {
        return 2;
    }

    if (genderRatio == GENDER_RATIO_NO_GENDER) {
        return 3;
    }

    v1 = PokedexSort_NumGendersVisible(param1->unk_04, species);

    if (v1 == 1) {
        genderRatio = PokedexSort_Gender(param1->unk_04, species, 0);
        GF_ASSERT(genderRatio != -1);

        if (genderRatio == 0) {
            return 1;
        }

        if (genderRatio == 254) {
            return 2;
        }

        if (genderRatio == 255) {
            return 3;
        }
    }

    return 0;
}

static void ov21_021E0354(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2, int param3, int param4, int param5)
{
    int v0;
    int v1, v2;
    int v3;

    ov21_021E0B24(param5, &v1, &v2);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5);
    v0 = PokedexMain_DisplaySpeciesSprite(param1->unk_00, param2->unk_04, param3, 2, v1, v2, param4, v3);
    GF_ASSERT(v0 != -1);

    ov21_021E0B24(param5 + 1, &v1, &v2);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5 + 1);
    v0 = PokedexMain_DisplaySpeciesSprite(param1->unk_00, param2->unk_04, param3, 0, v1, v2, param4, v3);
    GF_ASSERT(v0 != -1);
}

static void ov21_021E03EC(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2, int param3, int param4, int param5)
{
    int v0, v1;
    int v2;
    int v3;

    ov21_021E0B24(param5, &v0, &v1);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5);
    v2 = PokedexMain_DisplayBurmySprite(param1->unk_00, param2->unk_04, 2, v0, v1, param4, v3);
    GF_ASSERT(v2 != -1);

    ov21_021E0B24(param5 + 1, &v0, &v1);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5 + 1);
    v2 = PokedexMain_DisplayBurmySprite(param1->unk_00, param2->unk_04, 0, v0, v1, param4, v3);
    GF_ASSERT(v2 != -1);
}

static void ov21_021E0478(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2, int param3, int param4, int param5)
{
    int v0, v1;
    int v2;
    int v3;

    ov21_021E0B24(param5, &v0, &v1);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5);
    v2 = PokedexMain_DisplayWormadamSprite(param1->unk_00, param2->unk_04, 2, v0, v1, param4, v3);
    GF_ASSERT(v2 != -1);

    ov21_021E0B24(param5 + 1, &v0, &v1);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5 + 1);
    v2 = PokedexMain_DisplayWormadamSprite(param1->unk_00, param2->unk_04, 0, v0, v1, param4, v3);
    GF_ASSERT(v2 != -1);
}

static void ov21_021E0504(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2, int param3, int param4, int param5)
{
    int v0, v1;
    int v2;
    int v3;

    ov21_021E0B24(param5, &v0, &v1);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5);
    v2 = PokedexMain_DisplayShellosSprite(param1->unk_00, param2->unk_04, 2, v0, v1, param4, v3);
    GF_ASSERT(v2 != -1);

    ov21_021E0B24(param5 + 1, &v0, &v1);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5 + 1);
    v2 = PokedexMain_DisplayShellosSprite(param1->unk_00, param2->unk_04, 0, v0, v1, param4, v3);
    GF_ASSERT(v2 != -1);
}

static void ov21_021E0590(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2, int param3, int param4, int param5)
{
    int v0, v1;
    int v2;
    int v3;

    ov21_021E0B24(param5, &v0, &v1);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5);
    v2 = PokedexMain_DisplayGastrodonSprite(param1->unk_00, param2->unk_04, 2, v0, v1, param4, v3);
    GF_ASSERT(v2 != -1);

    ov21_021E0B24(param5 + 1, &v0, &v1);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5 + 1);
    v2 = PokedexMain_DisplayGastrodonSprite(param1->unk_00, param2->unk_04, 0, v0, v1, param4, v3);
    GF_ASSERT(v2 != -1);
}

static void ov21_021E061C(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2, int param3, int param4, int param5)
{
    int v0, v1;
    int v2;
    int v3;

    ov21_021E0B24(param5, &v0, &v1);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5);
    v2 = PokedexMain_DisplayUnownSprite(param1->unk_00, param2->unk_04, 2, v0, v1, param4, v3);
    GF_ASSERT(v2 != -1);

    ov21_021E0B24(param5 + 1, &v0, &v1);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5 + 1);
    v2 = PokedexMain_DisplayUnownSprite(param1->unk_00, param2->unk_04, 0, v0, v1, param4, v3);
    GF_ASSERT(v2 != -1);
}

static void ov21_021E06A8(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2, int param3, int param4, int param5)
{
    int v0, v1;
    int v2;
    int v3;

    ov21_021E0B24(param5, &v0, &v1);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5);
    v2 = PokedexMain_DisplayDeoxysSprite(param1->unk_00, param2->unk_04, 2, v0, v1, param4, v3);
    GF_ASSERT(v2 != 15);

    ov21_021E0B24(param5 + 1, &v0, &v1);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5 + 1);
    v2 = PokedexMain_DisplayDeoxysSprite(param1->unk_00, param2->unk_04, 0, v0, v1, param4, v3);
    GF_ASSERT(v2 != 15);
}

static void ov21_021E072C(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2, int param3, int param4, int param5)
{
    int v0, v1;
    int v2;
    int v3;

    ov21_021E0B24(param5, &v0, &v1);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5);
    v2 = PokedexMain_DisplayShayminSprite(param1->unk_00, param2->unk_04, 2, v0, v1, param4, v3);
    GF_ASSERT(v2 != -1);

    ov21_021E0B24(param5 + 1, &v0, &v1);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5 + 1);
    v2 = PokedexMain_DisplayShayminSprite(param1->unk_00, param2->unk_04, 0, v0, v1, param4, v3);
    GF_ASSERT(v2 != -1);
}

static void ov21_021E07B8(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2, int param3, int param4, int param5)
{
    int v0, v1;
    int v2;
    int v3;

    ov21_021E0B24(param5, &v0, &v1);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5);
    v2 = PokedexMain_DisplayGiratinaSprite(param1->unk_00, param2->unk_04, 2, v0, v1, param4, v3);
    GF_ASSERT(v2 != -1);

    ov21_021E0B24(param5 + 1, &v0, &v1);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5 + 1);
    v2 = PokedexMain_DisplayGiratinaSprite(param1->unk_00, param2->unk_04, 0, v0, v1, param4, v3);
    GF_ASSERT(v2 != -1);
}

static void ov21_021E0844(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2, int param3, int param4, int param5)
{
    int v0, v1;
    int v2;
    int v3;

    ov21_021E0B24(param5, &v0, &v1);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5);
    v2 = PokedexMain_DisplayRotomSprite(param1->unk_00, param2->unk_04, 2, v0, v1, param4, v3);
    GF_ASSERT(v2 != -1);

    ov21_021E0B24(param5 + 1, &v0, &v1);

    v3 = inline_ov21_021E00F4(param0->unk_B8, param5 + 1);
    v2 = PokedexMain_DisplayRotomSprite(param1->unk_00, param2->unk_04, 0, v0, v1, param4, v3);
    GF_ASSERT(v2 != -1);
}

static void ov21_021E08D0(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2, int param3, int param4, int param5)
{
    int v0;
    int v1 = inline_ov21_021E00F4(param0->unk_B8, 0);
    ov21_021E09A4(param0, param1, param2, param3, param4, param5, v1, 0);

    v0 = ov21_021DF870(param4, param5, 1, param2->unk_10);
    v1 = inline_ov21_021E00F4(param0->unk_B8, 2);
    ov21_021E09A4(param0, param1, param2, param3, param4, v0, v1, 1);
}

static void ov21_021E0944(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2, int param3, int param4, int param5)
{
    int v0;
    int v1;
    int v2;

    v0 = ov21_021DF870(param4, param5, 1, param2->unk_10);
    v1 = inline_ov21_021E00F4(param0->unk_B8, 2);
    v2 = (param0->unk_B8 + 1) % 2;

    ov21_021D4D1C(param0->unk_20[v2]);
    ov21_021E09A4(param0, param1, param2, param3, param4, v0, v1, v2);
}

static void ov21_021E09A4(UnkStruct_ov21_021DFFF8 *param0, UnkStruct_ov21_021DF858 *param1, const UnkStruct_ov21_021DF844 *param2, int param3, int param4, int formIndex, int param6, int param7)
{
    Window *v0;
    UnkStruct_ov21_021D4CB8 v1;
    PokedexGraphicData *v2 = param1->unk_00;
    int v3;
    int entryID;

    GF_ASSERT(param0->unk_00[param6]);

    entryID = FormMessage(param1, param2, param4, formIndex);

    v1.unk_00 = v2->unk_14C;
    v1.unk_08 = SpriteTransfer_GetPaletteProxy(param0->unk_10[1], NULL);
    v1.unk_10 = -12;
    v1.unk_14 = 40;
    v1.unk_18 = 3;
    v1.unk_1C = 0;
    v1.unk_20 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.heapID = param3;

    v3 = PlttTransfer_GetPlttOffset(v1.unk_08, NNS_G2D_VRAM_TYPE_2DMAIN);
    v0 = ov21_021D4D6C(v2->unk_14C, 16, 2);

    ov21_021D4E10(v2->unk_14C, v0, TEXT_BANK_POKEDEX, entryID);

    v1.unk_04 = v0;
    v1.unk_0C = param0->unk_00[param6];

    param0->unk_20[param7] = ov21_021D4CA0(&v1);

    sub_02012A60(param0->unk_20[param7]->unk_00, v3);
    ov21_021D4DA0(v0);
}

static int SpeciesGenderMessage(UnkStruct_ov21_021DF858 *param0, const UnkStruct_ov21_021DF844 *param1, int formIndex)
{
    int entryID;
    int species = PokedexSort_CurrentSpecies(param1->unk_04);

    int gender = PokedexSort_Gender(param1->unk_04, species, formIndex);
    GF_ASSERT(gender != -1);

    switch (gender) {
    case GENDER_MALE:
        entryID = pl_msg_pokedex_male;
        break;
    case GENDER_FEMALE:
        entryID = pl_msg_pokedex_female;
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    return entryID;
}

static int SpeciesMaleMessage(UnkStruct_ov21_021DF858 *param0, const UnkStruct_ov21_021DF844 *param1, int formIndex)
{
    return pl_msg_pokedex_male;
}

static int SpeciesFemaleMessage(UnkStruct_ov21_021DF858 *param0, const UnkStruct_ov21_021DF844 *param1, int formIndex)
{
    return pl_msg_pokedex_female;
}

static int BlankMessage(UnkStruct_ov21_021DF858 *param0, const UnkStruct_ov21_021DF844 *param1, int formIndex)
{
    return pl_msg_pokedex_blank;
}

static int BurmyFormMessage(UnkStruct_ov21_021DF858 *param0, const UnkStruct_ov21_021DF844 *param1, int formIndex)
{
    return pl_msg_pokedex_plantcloak + PokedexSort_BurmyForm(param1->unk_04, formIndex);
}

static int WormadamFormMessage(UnkStruct_ov21_021DF858 *param0, const UnkStruct_ov21_021DF844 *param1, int formIndex)
{
    return pl_msg_pokedex_plantcloak + PokedexSort_WormadamForm(param1->unk_04, formIndex);
}

static int ShellosFormMessage(UnkStruct_ov21_021DF858 *param0, const UnkStruct_ov21_021DF844 *param1, int formIndex)
{
    return pl_msg_pokedex_westsea + PokedexSort_ShellosForm(param1->unk_04, formIndex);
}

static int GastrodonFormMessage(UnkStruct_ov21_021DF858 *param0, const UnkStruct_ov21_021DF844 *param1, int formIndex)
{
    return pl_msg_pokedex_westsea + PokedexSort_GastrodonForm(param1->unk_04, formIndex);
}

static int ov21_021E0AD8(UnkStruct_ov21_021DF858 *param0, const UnkStruct_ov21_021DF844 *param1, int formIndex)
{
    return pl_msg_pokedex_oneform;
}

static int DeoxysFormMessage(UnkStruct_ov21_021DF858 *param0, const UnkStruct_ov21_021DF844 *param1, int formIndex)
{
    return pl_msg_pokedex_normalforme + PokedexSort_DeoxysForm(param1->unk_04, formIndex);
}

static int ShayminFormMessage(UnkStruct_ov21_021DF858 *param0, const UnkStruct_ov21_021DF844 *param1, int formIndex)
{
    return pl_msg_pokedex_landforme + PokedexSort_Form(param1->unk_04, SPECIES_SHAYMIN, formIndex);
}

static int GiratinaFormMessage(UnkStruct_ov21_021DF858 *param0, const UnkStruct_ov21_021DF844 *param1, int formIndex)
{
    return pl_msg_pokedex_alteredforme + PokedexSort_Form(param1->unk_04, SPECIES_GIRATINA, formIndex);
}

static int RotomFormMessage(UnkStruct_ov21_021DF858 *param0, const UnkStruct_ov21_021DF844 *param1, int formIndex)
{
    return pl_msg_pokedex_rotom + PokedexSort_Form(param1->unk_04, SPECIES_ROTOM, formIndex);
}

static inline int inline_ov21_021E00F4(int param0, int param1)
{
    if (param0 == 0) {
        return param1;
    }

    param1 -= 2;

    if (param1 < 0) {
        param1 += 4;
    }

    return param1;
}

static void ov21_021E0B24(int param0, int *param1, int *param2)
{
    int v0 = 0;
    int v1 = 0;

    switch (param0) {
    case 1:
        v0 = 104;
    case 0:
        v0 += 76;
        v1 = 88;
        break;
    case 3:
        v0 = 104;
    case 2:
        v0 += (76 + 256);
        v1 = 88;
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    *param1 = v0;
    *param2 = v1;
}

static int FormMessage(UnkStruct_ov21_021DF858 *param0, const UnkStruct_ov21_021DF844 *param1, int param2, int formIndex)
{
    int entryID;

    switch (param2) {
    case 0:
        entryID = SpeciesGenderMessage(param0, param1, formIndex);
        break;
    case 1:
        entryID = SpeciesMaleMessage(param0, param1, formIndex);
        break;
    case 2:
        entryID = SpeciesFemaleMessage(param0, param1, formIndex);
        break;
    case 3:
        entryID = BlankMessage(param0, param1, formIndex);
        break;
    case 6:
        entryID = BurmyFormMessage(param0, param1, formIndex);
        break;
    case 7:
        entryID = WormadamFormMessage(param0, param1, formIndex);
        break;
    case 4:
        entryID = ShellosFormMessage(param0, param1, formIndex);
        break;
    case 5:
        entryID = GastrodonFormMessage(param0, param1, formIndex);
        break;
    case 8:
        entryID = ov21_021E0AD8(param0, param1, formIndex);
        break;
    case 9:
        entryID = DeoxysFormMessage(param0, param1, formIndex);
        break;
    case 10:
        entryID = ShayminFormMessage(param0, param1, formIndex);
        break;
    case 11:
        entryID = GiratinaFormMessage(param0, param1, formIndex);
        break;
    case 12:
        entryID = RotomFormMessage(param0, param1, formIndex);
        break;
    default:
        break;
    }

    return entryID;
}

static void ov21_021E0BF8(UnkStruct_ov21_021DFFF8 *param0)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        ov21_021D4D1C(param0->unk_20[v0]);
    }
}

static void ov21_021E0C10(UnkStruct_ov21_021DFFF8 *param0)
{
    Sprite_SetDrawFlag(param0->unk_BC, 0);

    param0->unk_C0 = (16 + 8);
    param0->unk_C4 = 1;
}

static void ov21_021E0C30(UnkStruct_ov21_021DFFF8 *param0)
{
    if (param0->unk_C4) {
        param0->unk_C0--;

        if (param0->unk_C0 <= 0) {
            Sprite_SetDrawFlag(param0->unk_BC, 1);
            param0->unk_C4 = 0;
        }
    }
}
