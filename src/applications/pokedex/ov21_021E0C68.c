#include "applications/pokedex/ov21_021E0C68.h"

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
#include "applications/pokedex/pokedex_text.h"
#include "applications/pokedex/pokedex_text_manager.h"
#include "applications/pokedex/struct_ov21_021E68F4.h"

#include "bg_window.h"
#include "font.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "pokemon_sprite.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "strbuf.h"
#include "text.h"
#include "unk_02012744.h"

#include "res/text/bank/pokedex.h"

typedef struct {
    int *unk_00;
    PokedexSortData *unk_04;
    int unk_08;
    int unk_0C;
    const UnkStruct_ov21_021E68F4 *unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
} UnkStruct_ov21_021E0D68;

typedef struct {
    Sprite *unk_00;
    PokedexTextData *unk_04;
    SpriteResource *unk_08[4];
    CursorTransformation unk_18;
    CursorTransformation unk_38;
} UnkStruct_ov21_021E14D4;

static UnkStruct_ov21_021E0D68 *ov21_021E0D04(enum HeapId heapID, PokedexApp *param1);
static PokedexGraphicData **ov21_021E0D40(enum HeapId heapID, PokedexApp *param1);
static void ov21_021E0D68(UnkStruct_ov21_021E0D68 *param0);
static void ov21_021E0D7C(PokedexGraphicData **param0);
static int ov21_021E0D90(void);
static int ov21_021E0D94(PokedexDataManager *dataMan, void *data);
static int ov21_021E0D98(PokedexDataManager *dataMan, void *data);
static int ov21_021E0DA8(PokedexDataManager *dataMan, void *data);
static int ov21_021E0DAC(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static int ov21_021E0E8C(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static int ov21_021E0E90(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static void ov21_021E14D4(UnkStruct_ov21_021E14D4 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021E0D68 *param2, BOOL param3);
static BOOL ov21_021E1550(UnkStruct_ov21_021E14D4 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021E0D68 *param2, BOOL param3);
static void ov21_021E15AC(UnkStruct_ov21_021E14D4 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021E0D68 *param2, BOOL param3);
static BOOL ov21_021E1630(UnkStruct_ov21_021E14D4 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021E0D68 *param2, BOOL param3);
static void ov21_021E16A8(UnkStruct_ov21_021E14D4 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021E0D68 *param2, BOOL param3);
static BOOL ov21_021E1730(UnkStruct_ov21_021E14D4 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021E0D68 *param2, BOOL param3);
static void ov21_021E17DC(PokedexGraphicData **param0);
static void ov21_021E17AC(UnkStruct_ov21_021E14D4 *param0);
static void ov21_021E17C4(UnkStruct_ov21_021E14D4 *param0);
static void ov21_021E17EC(UnkStruct_ov21_021E14D4 *param0, int param1, int param2, int param3);
static BOOL ov21_021E1808(UnkStruct_ov21_021E14D4 *param0, PokedexGraphicData **param1);
static void ov21_021E1824(UnkStruct_ov21_021E14D4 *param0);
static BOOL ov21_021E1840(UnkStruct_ov21_021E14D4 *param0, PokedexGraphicData **param1);
static void ov21_021E0F4C(UnkStruct_ov21_021E14D4 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021E0D68 *param2, int heapID);
static void ov21_021E0F94(UnkStruct_ov21_021E14D4 *param0, PokedexGraphicData **param1);
static void ov21_021E0FBC(PokedexGraphicData **param0, int heapID);
static void ov21_021E10D0(PokedexGraphicData **param0, const UnkStruct_ov21_021E0D68 *param1, enum HeapId heapID);
static void ov21_021E1188(PokedexGraphicData **param0, int param1, int param2, int param3, int param4);
static int LanguageMessage(int param0);
static void ov21_021E18A0(PokedexGraphicData **param0, int param1, int param2, int param3);
static void ov21_021E18DC(PokedexGraphicData **param0, int param1, int param2, int param3);
static void ov21_021E136C(UnkStruct_ov21_021E14D4 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021E0D68 *param2, int param3);
static void ov21_021E14BC(UnkStruct_ov21_021E14D4 *param0);
static Window *ov21_021E1460(PokedexGraphicData **param0, int param1, int param2);
static void ov21_021E127C(UnkStruct_ov21_021E14D4 *param0, PokedexGraphicData **param1, int param2);
static void ov21_021E1328(UnkStruct_ov21_021E14D4 *param0, PokedexGraphicData **param1);
static void ov21_021E11DC(PokedexGraphicData **param0, const UnkStruct_ov21_021E0D68 *param1, int param2);
static void ov21_021E1210(PokedexGraphicData **param0);
static void ov21_021E1228(PokedexGraphicData **param0, const UnkStruct_ov21_021E0D68 *param1);
static void ov21_021E1260(PokedexGraphicData **param0);

void ov21_021E0C68(UnkStruct_ov21_021E68F4 *param0, PokedexApp *param1, enum HeapId heapID)
{
    UnkStruct_ov21_021E0D68 *v0;
    PokedexGraphicData **v1;

    v0 = ov21_021E0D04(heapID, param1);
    v1 = ov21_021E0D40(heapID, param1);

    param0->pageData = v0;
    param0->pageGraphics = v1;
    param0->unk_20 = NULL;
    param0->unk_24 = ov21_021E0D90();
    param0->dataFunc[0] = ov21_021E0D94;
    param0->dataFunc[1] = ov21_021E0D98;
    param0->dataFunc[2] = ov21_021E0DA8;
    param0->graphicsFunc[0] = ov21_021E0DAC;
    param0->graphicsFunc[1] = ov21_021E0E8C;
    param0->graphicsFunc[2] = ov21_021E0E90;
}

void ov21_021E0CC0(UnkStruct_ov21_021E68F4 *param0)
{
    ov21_021E0D68(param0->pageData);
    ov21_021E0D7C(param0->pageGraphics);
}

void ov21_021E0CD4(UnkStruct_ov21_021E68F4 *param0, int param1, int param2)
{
    UnkStruct_ov21_021E0D68 *v0 = param0->pageData;

    v0->unk_08 = param1;
    v0->unk_0C = param2;
}

void ov21_021E0CDC(UnkStruct_ov21_021E68F4 *param0, int param1)
{
    UnkStruct_ov21_021E0D68 *v0 = param0->pageData;
    v0->unk_14 = param1;
}

BOOL ov21_021E0CE4(UnkStruct_ov21_021E68F4 *param0)
{
    UnkStruct_ov21_021E0D68 *v0 = param0->pageData;
    return 0;
}

BOOL ov21_021E0CE8(UnkStruct_ov21_021E68F4 *param0, int param1)
{
    UnkStruct_ov21_021E0D68 *v0 = param0->pageData;
    BOOL v1 = 1;

    if (param1 == 1) {
        param1 = 0;
        v1 = 0;
    }

    v0->unk_1C = param1;

    return v1;
}

void ov21_021E0CF8(UnkStruct_ov21_021E68F4 *param0, int param1)
{
    UnkStruct_ov21_021E0D68 *v0 = param0->pageData;

    v0->unk_18 = param1;
    v0->unk_1C = 0;
}

static UnkStruct_ov21_021E0D68 *ov21_021E0D04(enum HeapId heapID, PokedexApp *param1)
{
    UnkStruct_ov21_021E0D68 *v0;
    UnkStruct_ov21_021E68F4 *v1;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021E0D68));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021E0D68));

    v0->unk_00 = ov21_021D138C(param1);
    v0->unk_04 = ov21_021D13EC(param1);

    v1 = ov21_021D1410(param1, 5);

    v0->unk_10 = v1;

    return v0;
}

static PokedexGraphicData **ov21_021E0D40(enum HeapId heapID, PokedexApp *param1)
{
    PokedexGraphicData **v0;
    UnkStruct_ov21_021E68F4 *v1;

    v0 = Heap_AllocFromHeap(heapID, sizeof(PokedexGraphicData *));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(PokedexGraphicData *));

    *v0 = ov21_021D13FC(param1);

    return v0;
}

static void ov21_021E0D68(UnkStruct_ov21_021E0D68 *param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static void ov21_021E0D7C(PokedexGraphicData **param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static int ov21_021E0D90(void)
{
    return 0;
}

static int ov21_021E0D94(PokedexDataManager *dataMan, void *data)
{
    return 1;
}

static int ov21_021E0D98(PokedexDataManager *dataMan, void *data)
{
    UnkStruct_ov21_021E0D68 *v0 = data;

    if (dataMan->exit == 1) {
        return 1;
    }

    if (dataMan->unchanged == 1) {
        return 0;
    }

    return 0;
}

static int ov21_021E0DA8(PokedexDataManager *dataMan, void *data)
{
    return 1;
}

static int ov21_021E0DAC(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const UnkStruct_ov21_021E0D68 *v0 = data;
    PokedexGraphicData **v1 = graphics;
    UnkStruct_ov21_021E14D4 *v2 = graphicsMan->pageGraphics;
    BOOL v3;

    switch (graphicsMan->state) {
    case 0:
        graphicsMan->pageGraphics = Heap_AllocFromHeap(graphicsMan->heapID, sizeof(UnkStruct_ov21_021E14D4));
        memset(graphicsMan->pageGraphics, 0, sizeof(UnkStruct_ov21_021E14D4));
        graphicsMan->state++;
        break;
    case 1:
        ov21_021E0F4C(v2, v1, v0, graphicsMan->heapID);

        switch (v0->unk_14) {
        case 0:
            ov21_021E15AC(v2, v1, v0, 1);
            break;
        case 1:
            ov21_021E14D4(v2, v1, v0, 1);
            break;
        case 2:
            ov21_021E16A8(v2, v1, v0, 1);
            break;
        }

        graphicsMan->state++;
        break;

    case 2:
        switch (v0->unk_14) {
        case 0:
            v3 = ov21_021E1630(v2, v1, v0, 1);
            break;
        case 1:
            v3 = ov21_021E1550(v2, v1, v0, 1);
            break;
        case 2:
            v3 = ov21_021E1730(v2, v1, v0, 1);
            break;
        }

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

static int ov21_021E0E8C(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    return 0;
}

static int ov21_021E0E90(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const UnkStruct_ov21_021E0D68 *v0 = data;
    PokedexGraphicData **v1 = graphics;
    UnkStruct_ov21_021E14D4 *v2 = graphicsMan->pageGraphics;
    BOOL v3;

    switch (graphicsMan->state) {
    case 0:
        switch (v0->unk_14) {
        case 0:
            ov21_021E15AC(v2, v1, v0, 0);
            break;
        case 1:
            ov21_021E14D4(v2, v1, v0, 0);
            break;
        case 2:
            ov21_021E16A8(v2, v1, v0, 0);
            break;
        }

        graphicsMan->state++;
        break;
    case 1:
        switch (v0->unk_14) {
        case 0:
            v3 = ov21_021E1630(v2, v1, v0, 0);
            break;
        case 1:
            v3 = ov21_021E1550(v2, v1, v0, 0);
            break;
        case 2:
            v3 = ov21_021E1730(v2, v1, v0, 0);
            break;
        }

        if (v3) {
            graphicsMan->state++;
        }
        break;
    case 2:
        ov21_021E0F94(v2, v1);
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

static void ov21_021E0F4C(UnkStruct_ov21_021E14D4 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021E0D68 *param2, int heapID)
{
    ov21_021E11DC(param1, param2, heapID);
    ov21_021E1228(param1, param2);
    ov21_021E127C(param0, param1, heapID);
    ov21_021E136C(param0, param1, param2, heapID);
    ov21_021E0FBC(param1, heapID);
    ov21_021E10D0(param1, param2, heapID);
}

static void ov21_021E0F94(UnkStruct_ov21_021E14D4 *param0, PokedexGraphicData **param1)
{
    ov21_021E14BC(param0);
    Window_FillTilemap(&(*param1)->window, 0);

    ov21_021E1328(param0, param1);
    Bg_ClearTilemap((*param1)->bgConfig, 1);
}

static void ov21_021E0FBC(PokedexGraphicData **param0, int heapID)
{
    void *v0;
    NNSG2dScreenData *v1;

    PokedexGraphics_LoadGraphicNarcCharacterData(*param0, 33, (*param0)->bgConfig, 3, 0, 0, 1, heapID);

    v0 = PokedexGraphics_GetGraphicNarcScreenData(*param0, 50, 1, &v1, heapID);
    Bg_LoadToTilemapRect((*param0)->bgConfig, 3, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);

    v0 = PokedexGraphics_GetGraphicNarcScreenData(*param0, 51, 1, &v1, heapID);

    Bg_LoadToTilemapRect((*param0)->bgConfig, 3, v1->rawData, 0, 3, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);

    v0 = PokedexGraphics_GetGraphicNarcScreenData(*param0, 55, 1, &v1, heapID);

    Bg_LoadToTilemapRect((*param0)->bgConfig, 3, v1->rawData, 0, 16, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);

    v0 = PokedexGraphics_GetGraphicNarcScreenData(*param0, 56, 1, &v1, heapID);

    Bg_LoadToTilemapRect((*param0)->bgConfig, 3, v1->rawData, 12, 8, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);
    Bg_ScheduleTilemapTransfer((*param0)->bgConfig, 3);
}

static void ov21_021E10D0(PokedexGraphicData **param0, const UnkStruct_ov21_021E0D68 *param1, enum HeapId heapID)
{
    Strbuf *v0 = Strbuf_Init(64, heapID);
    MessageLoader *pokedexMessageBank = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POKEDEX, heapID);
    int species = PokedexSort_CurrentSpecies(param1->unk_04);
    int entryID;
    int v4;

    if (PokedexSort_CurrentCaughtStatus(param1->unk_04) != 2) {
        species = 0;
        GF_ASSERT(0);
    }

    entryID = LanguageMessage(param1->unk_18);

    MessageLoader_GetStrbuf(pokedexMessageBank, entryID, v0);

    v4 = Font_CalcStrbufWidth(FONT_SYSTEM, v0, 0);
    v4 /= 2;

    Text_AddPrinterWithParamsAndColor(&(*param0)->window, FONT_SYSTEM, v0, 176 - v4, 72, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    Strbuf_Free(v0);
    MessageLoader_Free(pokedexMessageBank);

    ov21_021E1188(param0, heapID, species, param1->unk_18, param1->unk_1C);
    ov21_021E18A0(param0, heapID, species, param1->unk_18);
    ov21_021E18DC(param0, heapID, species, param1->unk_18);
}

static void ov21_021E1188(PokedexGraphicData **param0, int param1, int param2, int param3, int param4)
{
    Strbuf *v0 = PokedexText_DexEntry(param2, param3, param4, param1);
    u32 v1 = Font_CalcMaxLineWidth(FONT_SYSTEM, v0, 0);
    u32 v2 = (v1 < 240) ? 128 - v1 / 2 : 8;

    Text_AddPrinterWithParamsAndColor(&(*param0)->window, FONT_SYSTEM, v0, v2, 136, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    PokedexText_Free(v0);
}

static void ov21_021E11DC(PokedexGraphicData **param0, const UnkStruct_ov21_021E0D68 *param1, int param2)
{
    PokedexMain_EntryNameNumber(*param0, param1->unk_04, param2, PokedexSort_CurrentStatusIndex(param1->unk_04), (172 * FX32_ONE), (32 * FX32_ONE));
    PokedexGraphics_SetSpeciesLabelPriority(*param0, 0);
}

static void ov21_021E1210(PokedexGraphicData **param0)
{
    PokedexGraphics_SetPokedexSpeciesLabelDraw(*param0, 0);
    PokedexGraphics_SetSpeciesLabelGXOamMode(*param0, GX_OAM_MODE_NORMAL);
}

static void ov21_021E1228(PokedexGraphicData **param0, const UnkStruct_ov21_021E0D68 *param1)
{
    PokemonSprite *v0 = PokemonGraphics_GetPokemonChar(*param0);
    int species = PokedexSort_CurrentSpecies(param1->unk_04);

    PokedexMain_DisplayPokemonSprite(*param0, param1->unk_04, species, 2, 48, 72);
    PokemonSprite_SetAttribute(v0, MON_SPRITE_HIDE, 0);
}

static void ov21_021E1260(PokedexGraphicData **param0)
{
    PokemonSprite *v0 = PokemonGraphics_GetPokemonChar(*param0);

    PokemonSprite_SetAttribute(v0, MON_SPRITE_HIDE, 1);
    PokemonSprite_ClearFade(v0);
}

static void ov21_021E127C(UnkStruct_ov21_021E14D4 *param0, PokedexGraphicData **param1, int param2)
{
    PokedexGraphicData *v0 = *param1;
    NARC *v1 = PokedexGraphics_GetNARC(*param1);

    param0->unk_08[0] = SpriteResourceCollection_AddTilesFrom(v0->spriteResourceCollection[0], v1, 90, 1, 90 + 4000, NNS_G2D_VRAM_TYPE_2DMAIN, param2);

    SpriteTransfer_RequestCharAtEnd(param0->unk_08[0]);
    SpriteResource_ReleaseData(param0->unk_08[0]);

    param0->unk_08[1] = SpriteResourceCollection_AddPaletteFrom(v0->spriteResourceCollection[1], v1, 13, 0, 13 + 4000, NNS_G2D_VRAM_TYPE_2DMAIN, 5, param2);

    SpriteTransfer_RequestPlttFreeSpace(param0->unk_08[1]);
    SpriteResource_ReleaseData(param0->unk_08[1]);

    param0->unk_08[2] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[2], v1, 88, 1, 88 + 4000, 2, param2);
    param0->unk_08[3] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[3], v1, 89, 1, 89 + 4000, 3, param2);
}

static void ov21_021E1328(UnkStruct_ov21_021E14D4 *param0, PokedexGraphicData **param1)
{
    PokedexGraphicData *v0 = *param1;

    SpriteTransfer_ResetCharTransfer(param0->unk_08[0]);
    SpriteTransfer_ResetPlttTransfer(param0->unk_08[1]);

    SpriteResourceCollection_Remove(v0->spriteResourceCollection[0], param0->unk_08[0]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[1], param0->unk_08[1]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[2], param0->unk_08[2]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[3], param0->unk_08[3]);
}

static void ov21_021E136C(UnkStruct_ov21_021E14D4 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021E0D68 *param2, int param3)
{
    SpriteResourcesHeader v0;
    SpriteListTemplate v1;
    PokedexGraphicData *v2 = *param1;
    int species = PokedexSort_CurrentSpecies(param2->unk_04);
    Window *v4;
    PokedexDisplayBox displayBox;
    SpriteResource *v6;

    SpriteResourcesHeader_Init(&v0, 90 + 4000, 13 + 4000, 88 + 4000, 89 + 4000, 0xffffffff, 0xffffffff, 0, 0, v2->spriteResourceCollection[0], v2->spriteResourceCollection[1], v2->spriteResourceCollection[2], v2->spriteResourceCollection[3], NULL, NULL);

    v1.list = v2->spriteList;
    v1.resourceData = &v0;
    v1.priority = 32;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.heapID = param3;
    v1.position.x = (192 * FX32_ONE);
    v1.position.y = (52 * FX32_ONE);

    param0->unk_00 = SpriteList_Add(&v1);

    Sprite_SetAnim(param0->unk_00, 0x11);

    if (PokedexSort_CurrentCaughtStatus(param2->unk_04) != 2) {
        species = 0;
    }

    v4 = ov21_021E1460(param1, species, param3);
    v6 = PokedexGraphics_GetSpeciesLabelSpriteResource(*param1, 1);

    displayBox.textMan = (*param1)->textMan;
    displayBox.paletteProxy = SpriteTransfer_GetPaletteProxy(v6, NULL);
    displayBox.sprite = param0->unk_00;
    displayBox.x = -78;
    displayBox.y = -8;
    displayBox.spriteResourcePriority = 0;
    displayBox.spriteListPriority = 32 - 1;
    displayBox.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    displayBox.heapID = param3;
    displayBox.window = v4;

    param0->unk_04 = PokedexTextManager_NextTextData(&displayBox);

    PokedexTextManager_FreeWindow(v4);
}

static Window *ov21_021E1460(PokedexGraphicData **param0, int param1, int param2)
{
    Window *v0;
    Strbuf *v1;

    v0 = PokedexTextManager_NewWindow((*param0)->textMan, 18, 2);
    v1 = PokedexText_Category(param1, GAME_LANGUAGE, param2);

    {
        u32 v2 = Font_CalcStrbufWidth(FONT_SUBSCREEN, v1, 0);
        u32 v3 = (v2 < 136) ? (136 - v2) / 2 : 0;
        PokedexTextManager_DisplayStrbuf((*param0)->textMan, v0, v1, v3, 0);
    }

    PokedexText_Free(v1);

    return v0;
}

static void ov21_021E14BC(UnkStruct_ov21_021E14D4 *param0)
{
    Sprite_Delete(param0->unk_00);
    param0->unk_00 = NULL;
    PokedexTextManager_FreeTextData(param0->unk_04);
}

static void ov21_021E14D4(UnkStruct_ov21_021E14D4 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021E0D68 *param2, BOOL param3)
{
    PokedexGraphics_SetSpeciesLabelGXOamMode(*param1, GX_OAM_MODE_XLU);
    ov21_021E17AC(param0);

    if (ov21_021E2A54(param2->unk_10)) {
        if (param3) {
            PokedexGraphics_InitBlendTransition(&(*param1)->blendMain, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), GX_BLEND_PLANEMASK_BG3, 0);
        } else {
            PokedexGraphics_InitBlendTransition(&(*param1)->blendMain, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), GX_BLEND_PLANEMASK_BG3, 0);
        }
    }

    ov21_021E17DC(param1);
}

static BOOL ov21_021E1550(UnkStruct_ov21_021E14D4 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021E0D68 *param2, BOOL param3)
{
    BOOL v0;

    if (ov21_021E2A54(param2->unk_10)) {
        v0 = PokedexGraphics_TakeBlendTransitionStep(&(*param1)->blendMain);
    } else {
        v0 = PokedexGraphics_BlendTransitionComplete(&(*param1)->blendMain);
    }

    if (v0 == 1) {
        if (param3 == 1) {
            ov21_021E17C4(param0);
            PokedexGraphics_SetSpeciesLabelGXOamMode(*param1, GX_OAM_MODE_NORMAL);
        } else {
            ov21_021E1260(param1);
            ov21_021E1210(param1);
        }
    } else {
        ov21_021E17DC(param1);
    }

    return v0;
}

static void ov21_021E15AC(UnkStruct_ov21_021E14D4 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021E0D68 *param2, BOOL param3)
{
    ov21_021E17AC(param0);

    if (param3 == 0) {
        ov21_021E17EC(param0, param2->unk_08, param2->unk_0C, 4);
        ov21_021E1824(param0);
    }

    if (ov21_021E2A54(param2->unk_10)) {
        if (param3) {
            PokedexGraphics_InitBlendTransition(&(*param1)->blendMain, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        } else {
            PokedexGraphics_InitBlendTransition(&(*param1)->blendMain, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        }
    }
}

static BOOL ov21_021E1630(UnkStruct_ov21_021E14D4 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021E0D68 *param2, BOOL param3)
{
    BOOL v0[3];
    int v1;

    if (param3 == 0) {
        v0[0] = ov21_021E1808(param0, param1);

        v0[1] = ov21_021E1840(param0, param1);
    } else {
        v0[0] = 1;
        v0[1] = 1;
    }

    if (ov21_021E2A54(param2->unk_10)) {
        v0[2] = PokedexGraphics_TakeBlendTransitionStep(&(*param1)->blendMain);
    } else {
        v0[2] = PokedexGraphics_BlendTransitionComplete(&(*param1)->blendMain);
    }

    for (v1 = 0; v1 < 3; v1++) {
        if (v0[v1] == 0) {
            break;
        }
    }

    if (v1 == 3) {
        if (param3 == 1) {
            ov21_021E17C4(param0);
        }

        return 1;
    }

    return 0;
}

static void ov21_021E16A8(UnkStruct_ov21_021E14D4 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021E0D68 *param2, BOOL param3)
{
    ov21_021E17AC(param0);
    PokedexGraphics_SetSpeciesLabelGXOamMode(*param1, GX_OAM_MODE_XLU);

    if (param3 == 0) {
        ov21_021E17EC(param0, param2->unk_08, param2->unk_0C, 1);
    }

    if (ov21_021E2A54(param2->unk_10)) {
        if (param3) {
            PokedexGraphics_InitBlendTransition(&(*param1)->blendMain, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        } else {
            PokedexGraphics_InitBlendTransition(&(*param1)->blendMain, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        }
    }
}

static BOOL ov21_021E1730(UnkStruct_ov21_021E14D4 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021E0D68 *param2, BOOL param3)
{
    BOOL v0[2];
    int v1;

    if (param3 == 0) {
        v0[0] = ov21_021E1808(param0, param1);
    } else {
        v0[0] = 1;
    }

    if (ov21_021E2A54(param2->unk_10)) {
        v0[1] = PokedexGraphics_TakeBlendTransitionStep(&(*param1)->blendMain);
    } else {
        v0[1] = PokedexGraphics_BlendTransitionComplete(&(*param1)->blendMain);
    }

    for (v1 = 0; v1 < 2; v1++) {
        if (v0[v1] == 0) {
            break;
        }
    }

    if (v1 == 2) {
        if (param3 == 1) {
            ov21_021E17C4(param0);
            PokedexGraphics_SetSpeciesLabelGXOamMode(*param1, GX_OAM_MODE_NORMAL);
        } else {
            ov21_021E1210(param1);
        }

        return 1;
    }

    return 0;
}

static void ov21_021E17AC(UnkStruct_ov21_021E14D4 *param0)
{
    Sprite_SetExplicitOAMMode(param0->unk_00, GX_OAM_MODE_XLU);
    sub_02012AF0(param0->unk_04->fontOAM, GX_OAM_MODE_XLU);
}

static void ov21_021E17C4(UnkStruct_ov21_021E14D4 *param0)
{
    Sprite_SetExplicitOAMMode(param0->unk_00, GX_OAM_MODE_NORMAL);
    sub_02012AF0(param0->unk_04->fontOAM, GX_OAM_MODE_NORMAL);
}

static void ov21_021E17DC(PokedexGraphicData **param0)
{
    PokedexGraphics_BlendPokemonChar(*param0, &(*param0)->blendMain);
}

static void ov21_021E17EC(UnkStruct_ov21_021E14D4 *param0, int param1, int param2, int param3)
{
    PokedexGraphics_InitTransformation(&param0->unk_18, 48, param1, 72, param2, param3);
}

static BOOL ov21_021E1808(UnkStruct_ov21_021E14D4 *param0, PokedexGraphicData **param1)
{
    BOOL v0 = PokedexGraphics_TakeCursorTransformStep(&param0->unk_18);
    PokemonGraphics_SetCharCenterXY(*param1, param0->unk_18.currentX, param0->unk_18.currentY);

    return v0;
}

static void ov21_021E1824(UnkStruct_ov21_021E14D4 *param0)
{
    PokedexGraphics_InitTransformation(&param0->unk_38, 172, 170, 32, 82, 4);
}

static BOOL ov21_021E1840(UnkStruct_ov21_021E14D4 *param0, PokedexGraphicData **param1)
{
    BOOL v0 = PokedexGraphics_TakeCursorTransformStep(&param0->unk_38);
    ov21_021D1848(*param1, param0->unk_38.currentX, param0->unk_38.currentY);

    return v0;
}

static int LanguageMessage(int param0)
{
    int entryID;

    switch (param0) {
    case 1:
        entryID = pl_msg_pokedex_japanese;
        break;
    case 2:
        entryID = pl_msg_pokedex_english;
        break;
    case 3:
        entryID = pl_msg_pokedex_french;
        break;
    case 4:
        entryID = pl_msg_pokedex_italian;
        break;
    case 5:
        entryID = pl_msg_pokedex_german;
        break;
    case 7:
        entryID = pl_msg_pokedex_spanish;
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    return entryID;
}

static void ov21_021E18A0(PokedexGraphicData **param0, int param1, int param2, int param3)
{
    Strbuf *v0 = PokedexText_NameNumber(param2, param3, param1);

    Text_AddPrinterWithParamsAndColor(&(*param0)->window, FONT_SYSTEM, v0, 120, 96, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    PokedexText_Free(v0);
}

static void ov21_021E18DC(PokedexGraphicData **param0, int param1, int param2, int param3)
{
    Strbuf *v0 = PokedexText_Category(param2, param3, param1);
    u32 v1 = 240 - Font_CalcStrbufWidth(FONT_SYSTEM, v0, 0);

    Text_AddPrinterWithParamsAndColor(&(*param0)->window, FONT_SYSTEM, v0, v1, 112, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    PokedexText_Free(v0);
}
