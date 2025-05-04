#include "overlay021/ov21_021DE668.h"

#include <nitro.h>
#include <string.h>

#include "overlay021/ov21_021D1F90.h"
#include "overlay021/ov21_021D1FA4.h"
#include "overlay021/ov21_021E29DC.h"
#include "overlay021/pokedex_app.h"
#include "overlay021/pokedex_data_manager.h"
#include "overlay021/pokedex_graphic_data.h"
#include "overlay021/pokedex_graphics_manager.h"
#include "overlay021/pokedex_main.h"
#include "overlay021/pokedex_sort.h"
#include "overlay021/pokedex_text.h"
#include "overlay021/pokedex_text_manager.h"
#include "overlay021/struct_ov21_021D2648.h"
#include "overlay021/struct_ov21_021DE6D4.h"
#include "overlay021/struct_ov21_021E68F4.h"

#include "bg_window.h"
#include "font.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "pokedex_data_index.h"
#include "pokemon.h"
#include "pokemon_sprite.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "strbuf.h"
#include "text.h"
#include "unk_02012744.h"

#include "res/text/bank/pokedex.h"

typedef struct {
    Sprite *unk_00[3];
    Sprite *unk_0C;
    PokedexTextData *unk_10;
    SpriteResource *unk_14[4];
    SpriteResource *unk_24[4];
    UnkStruct_ov21_021D2648 unk_34;
    UnkStruct_ov21_021D2648 unk_54;
} UnkStruct_ov21_021DF374;

static UnkStruct_ov21_021DE6D4 *ov21_021DE6E8(enum HeapId heapID, PokedexApp *param1);
static PokedexGraphicData **ov21_021DE724(enum HeapId heapID, PokedexApp *param1);
static void ov21_021DE74C(UnkStruct_ov21_021DE6D4 *param0);
static void ov21_021DE760(PokedexGraphicData **param0);
static int ov21_021DE774(void);
static int ov21_021DE778(PokedexDataManager *dataMan, void *data);
static int ov21_021DE79C(PokedexDataManager *dataMan, void *data);
static int ov21_021DE7F8(PokedexDataManager *dataMan, void *data);
static int ov21_021DE804(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static int ov21_021DE8E4(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static int ov21_021DE8E8(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static void ov21_021DF374(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021DE6D4 *param2, BOOL param3);
static BOOL ov21_021DF3F0(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021DE6D4 *param2, BOOL param3);
static void ov21_021DF44C(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021DE6D4 *param2, BOOL param3);
static BOOL ov21_021DF4D0(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021DE6D4 *param2, BOOL param3);
static void ov21_021DF548(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021DE6D4 *param2, BOOL param3);
static BOOL ov21_021DF5D0(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021DE6D4 *param2, BOOL param3);
static void ov21_021DF6B4(PokedexGraphicData **param0);
static void ov21_021DF64C(UnkStruct_ov21_021DF374 *param0);
static void ov21_021DF680(UnkStruct_ov21_021DF374 *param0);
static void ov21_021DF6C4(UnkStruct_ov21_021DF374 *param0, int param1, int param2, int param3);
static BOOL ov21_021DF6E0(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1);
static void ov21_021DF6FC(UnkStruct_ov21_021DF374 *param0);
static BOOL ov21_021DF718(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1);
static void ov21_021DE9A4(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021DE6D4 *param2, int heapID);
static void ov21_021DEA0C(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1);
static void ov21_021DEA44(PokedexGraphicData **param0, int heapID);
static void ov21_021DEB58(PokedexGraphicData **param0, const UnkStruct_ov21_021DE6D4 *param1, int param2);
static void ov21_021DEC2C(Window *param0, int heapID, int param2, u32 param3);
static void ov21_021DEC80(Window *param0, int heapID, int param2, u32 param3);
static void ov21_021DECD4(Window *param0, int heapID, int param2, int param3, u32 param4);
static void ov21_021DED24(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021DE6D4 *param2, int param3);
static void ov21_021DED68(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1);
static void ov21_021DED7C(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1, int param2, int param3);
static void ov21_021DEE38(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1);
static void ov21_021DEE80(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1, int param2);
static void ov21_021DEEF8(UnkStruct_ov21_021DF374 *param0);
static void ov21_021DEFA8(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1, int param2);
static void ov21_021DF054(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1);
static void ov21_021DF098(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021DE6D4 *param2, int param3);
static void ov21_021DF1F8(UnkStruct_ov21_021DF374 *param0);
static void ov21_021DF214(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021DE6D4 *param2, int param3);
static void ov21_021DF35C(UnkStruct_ov21_021DF374 *param0);
static void ov21_021DEF08(PokedexGraphicData **param0, const UnkStruct_ov21_021DE6D4 *param1, int param2);
static void ov21_021DEF3C(PokedexGraphicData **param0);
static void ov21_021DEF54(PokedexGraphicData **param0, const UnkStruct_ov21_021DE6D4 *param1);
static void ov21_021DEF8C(PokedexGraphicData **param0);

void ov21_021DE668(UnkStruct_ov21_021E68F4 *param0, PokedexApp *param1, enum HeapId heapID)
{
    UnkStruct_ov21_021DE6D4 *v0;
    PokedexGraphicData **v1;

    v0 = ov21_021DE6E8(heapID, param1);
    v1 = ov21_021DE724(heapID, param1);

    param0->pageData = v0;
    param0->pageGraphics = v1;
    param0->unk_20 = NULL;
    param0->unk_24 = ov21_021DE774();
    param0->dataFunc[0] = ov21_021DE778;
    param0->dataFunc[1] = ov21_021DE79C;
    param0->dataFunc[2] = ov21_021DE7F8;
    param0->graphicsFunc[0] = ov21_021DE804;
    param0->graphicsFunc[1] = ov21_021DE8E4;
    param0->graphicsFunc[2] = ov21_021DE8E8;
}

void ov21_021DE6C0(UnkStruct_ov21_021E68F4 *param0)
{
    ov21_021DE74C(param0->pageData);
    ov21_021DE760(param0->pageGraphics);
}

BOOL ov21_021DE6D4(UnkStruct_ov21_021DE6D4 *param0, int param1)
{
    return 0;
}

BOOL ov21_021DE6D8(UnkStruct_ov21_021DE6D4 *param0, int param1)
{
    BOOL v0 = 1;

    if (param1 == 1) {
        param1 = 0;
        v0 = 0;
    }

    param0->unk_18 = param1;
    return v0;
}

static UnkStruct_ov21_021DE6D4 *ov21_021DE6E8(enum HeapId heapID, PokedexApp *param1)
{
    UnkStruct_ov21_021DE6D4 *v0;
    UnkStruct_ov21_021E68F4 *v1;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021DE6D4));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021DE6D4));

    v0->unk_00 = ov21_021D138C(param1);
    v0->unk_04 = ov21_021D13EC(param1);
    v1 = ov21_021D1410(param1, 5);
    v0->unk_10 = v1;

    return v0;
}

static PokedexGraphicData **ov21_021DE724(enum HeapId heapID, PokedexApp *param1)
{
    PokedexGraphicData **v0;
    UnkStruct_ov21_021E68F4 *v1;

    v0 = Heap_AllocFromHeap(heapID, sizeof(PokedexGraphicData **));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(PokedexGraphicData **));

    *v0 = ov21_021D13FC(param1);

    return v0;
}

static void ov21_021DE74C(UnkStruct_ov21_021DE6D4 *param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static void ov21_021DE760(PokedexGraphicData **param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static int ov21_021DE774(void)
{
    return 0;
}

static int ov21_021DE778(PokedexDataManager *dataMan, void *data)
{
    UnkStruct_ov21_021DE6D4 *v0 = data;

    PokedexSort_SetCurrentSpecies(v0->unk_04, PokedexSort_CurrentSpecies(v0->unk_04));
    PokedexSort_SetBootMode(v0->unk_04, PokedexSort_IsNationalDex(v0->unk_04));

    return 1;
}

static int ov21_021DE79C(PokedexDataManager *dataMan, void *data)
{
    UnkStruct_ov21_021DE6D4 *v0 = data;

    if (dataMan->exit == 1) {
        return 1;
    }

    if (dataMan->unchanged == 1) {
        return 0;
    }

    switch (dataMan->state) {
    case 0:
        if (v0->unk_1C == 1) {
            Sound_PlayPokemonCryEx(POKECRY_POKEDEX, PokedexSort_CurrentSpecies(v0->unk_04), 0x1ff, 0x1ff, 0x1ff, 0);
            v0->unk_1C = 0;
        }

        dataMan->state++;
        break;
    default:
        break;
    }

    return 0;
}

static int ov21_021DE7F8(PokedexDataManager *dataMan, void *data)
{
    Sound_StopPokemonCries(0);
    return 1;
}

static int ov21_021DE804(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const UnkStruct_ov21_021DE6D4 *v0 = data;
    PokedexGraphicData **v1 = graphics;
    UnkStruct_ov21_021DF374 *v2 = graphicsMan->pageGraphics;
    BOOL v3;

    switch (graphicsMan->state) {
    case 0:
        graphicsMan->pageGraphics = Heap_AllocFromHeap(graphicsMan->heapID, sizeof(UnkStruct_ov21_021DF374));
        memset(graphicsMan->pageGraphics, 0, sizeof(UnkStruct_ov21_021DF374));
        graphicsMan->state++;
        break;
    case 1:
        ov21_021DE9A4(v2, v1, v0, graphicsMan->heapID);

        switch (v0->unk_14) {
        case 0:
            ov21_021DF44C(v2, v1, v0, 1);
            break;
        case 1:
            ov21_021DF374(v2, v1, v0, 1);
            break;
        case 2:
            ov21_021DF548(v2, v1, v0, 1);
            break;
        }

        graphicsMan->state++;
        break;
    case 2:
        switch (v0->unk_14) {
        case 0:
            v3 = ov21_021DF4D0(v2, v1, v0, 1);
            break;
        case 1:
            v3 = ov21_021DF3F0(v2, v1, v0, 1);
            break;
        case 2:
            v3 = ov21_021DF5D0(v2, v1, v0, 1);
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

static int ov21_021DE8E4(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    return 0;
}

static int ov21_021DE8E8(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const UnkStruct_ov21_021DE6D4 *v0 = data;
    PokedexGraphicData **v1 = graphics;
    UnkStruct_ov21_021DF374 *v2 = graphicsMan->pageGraphics;
    BOOL v3;

    switch (graphicsMan->state) {
    case 0:
        switch (v0->unk_14) {
        case 0:
            ov21_021DF44C(v2, v1, v0, 0);
            break;
        case 1:
            ov21_021DF374(v2, v1, v0, 0);
            break;
        case 2:
            ov21_021DF548(v2, v1, v0, 0);
            break;
        }

        graphicsMan->state++;
        break;
    case 1:
        switch (v0->unk_14) {
        case 0:
            v3 = ov21_021DF4D0(v2, v1, v0, 0);
            break;
        case 1:
            v3 = ov21_021DF3F0(v2, v1, v0, 0);
            break;
        case 2:
            v3 = ov21_021DF5D0(v2, v1, v0, 0);
            break;
        }

        if (v3) {
            graphicsMan->state++;
        }
        break;
    case 2:
        ov21_021DEA0C(v2, v1);
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

static void ov21_021DE9A4(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021DE6D4 *param2, int heapID)
{
    ov21_021DEF08(param1, param2, heapID);
    ov21_021DEF54(param1, param2);
    ov21_021DEFA8(param0, param1, heapID);
    ov21_021DF214(param0, param1, param2, heapID);
    ov21_021DEA44(param1, heapID);
    ov21_021DEB58(param1, param2, heapID);

    if (PokedexSort_CurrentCaughtStatus(param2->unk_04) == 2) {
        ov21_021DED24(param0, param1, param2, heapID);
        ov21_021DF098(param0, param1, param2, heapID);
    }
}

static void ov21_021DEA0C(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1)
{
    ov21_021DF35C(param0);

    Window_FillTilemap(&(*param1)->window, 0);

    ov21_021DED68(param0, param1);
    ov21_021DF1F8(param0);
    ov21_021DF054(param0, param1);

    Bg_ClearTilemap((*param1)->bgConfig, 1);
}

static void ov21_021DEA44(PokedexGraphicData **param0, int heapID)
{
    void *v0;
    NNSG2dScreenData *v1;

    ov21_021D2724(*param0, 33, (*param0)->bgConfig, 3, 0, 0, 1, heapID);

    v0 = ov21_021D27B8(*param0, 50, 1, &v1, heapID);
    Bg_LoadToTilemapRect((*param0)->bgConfig, 3, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);

    v0 = ov21_021D27B8(*param0, 51, 1, &v1, heapID);
    Bg_LoadToTilemapRect((*param0)->bgConfig, 3, v1->rawData, 0, 3, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);

    v0 = ov21_021D27B8(*param0, 52, 1, &v1, heapID);
    Bg_LoadToTilemapRect((*param0)->bgConfig, 3, v1->rawData, 12, 8, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);

    v0 = ov21_021D27B8(*param0, 54, 1, &v1, heapID);
    Bg_LoadToTilemapRect((*param0)->bgConfig, 3, v1->rawData, 0, 16, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);
    Bg_ScheduleTilemapTransfer((*param0)->bgConfig, 3);
}

static void ov21_021DEB58(PokedexGraphicData **param0, const UnkStruct_ov21_021DE6D4 *param1, int param2)
{
    int species = PokedexSort_CurrentSpecies(param1->unk_04);

    if (PokedexSort_CurrentCaughtStatus(param1->unk_04) != 2) {
        species = 0;
    }

    ov21_021DEB8C(&(*param0)->window, species, param2, param1->unk_18, TEXT_COLOR(2, 1, 0));
}

void ov21_021DEB8C(Window *param0, int param1, enum HeapId heapID, int param3, u32 param4)
{
    Strbuf *v0 = Strbuf_Init(64, heapID);
    MessageLoader *pokedexMessageBank = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POKEDEX, heapID);

    MessageLoader_GetStrbuf(pokedexMessageBank, pl_msg_pokedex_ht, v0);
    Text_AddPrinterWithParamsAndColor(param0, FONT_SYSTEM, v0, 152, 88, TEXT_SPEED_INSTANT, param4, NULL);

    MessageLoader_GetStrbuf(pokedexMessageBank, pl_msg_pokedex_wt, v0);
    Text_AddPrinterWithParamsAndColor(param0, FONT_SYSTEM, v0, 152, 104, TEXT_SPEED_INSTANT, param4, NULL);
    Strbuf_Free(v0);
    MessageLoader_Free(pokedexMessageBank);

    ov21_021DEC2C(param0, heapID, param1, param4);
    ov21_021DEC80(param0, heapID, param1, param4);
    ov21_021DECD4(param0, heapID, param1, param3, param4);
}

static void ov21_021DEC2C(Window *param0, int heapID, int param2, u32 param3)
{
    Strbuf *v0 = Strbuf_Init(64, heapID);

    int heightMessageBankIndex = Height_Message_Bank_Index();
    MessageLoader *v1 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, heightMessageBankIndex, heapID);

    MessageLoader_GetStrbuf(v1, param2, v0);
    Text_AddPrinterWithParamsAndColor(param0, FONT_SYSTEM, v0, 184, 88, TEXT_SPEED_INSTANT, param3, NULL);
    Strbuf_Free(v0);
    MessageLoader_Free(v1);
}

static void ov21_021DEC80(Window *param0, int heapID, int param2, u32 param3)
{
    Strbuf *v0 = Strbuf_Init(64, heapID);

    int weightMessageBankIndex = Weight_Message_Bank_Index();
    MessageLoader *v1 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, weightMessageBankIndex, heapID);

    MessageLoader_GetStrbuf(v1, param2, v0);
    Text_AddPrinterWithParamsAndColor(param0, FONT_SYSTEM, v0, 184, 104, TEXT_SPEED_INSTANT, param3, NULL);
    Strbuf_Free(v0);
    MessageLoader_Free(v1);
}

static void ov21_021DECD4(Window *param0, int heapID, int param2, int param3, u32 param4)
{
    Strbuf *v0 = PokedexText_DexEntry(param2, GAME_LANGUAGE, param3, heapID);
    u32 v1 = Font_CalcMaxLineWidth(FONT_SYSTEM, v0, 0);
    u32 v2 = (v1 < 240) ? 128 - v1 / 2 : 8;

    Text_AddPrinterWithParamsAndColor(param0, FONT_SYSTEM, v0, v2, 136, TEXT_SPEED_INSTANT, param4, NULL);
    PokedexText_Free(v0);
}

static void ov21_021DED24(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021DE6D4 *param2, int param3)
{
    int species = PokedexSort_CurrentSpecies(param2->unk_04);
    int form = PokedexSort_DefaultForm(param2->unk_04, species);

    if ((species == SPECIES_GIRATINA) && (form > 0)) {
        species = 11;
    }

    ov21_021DED7C(param0, param1, param3, species);
    ov21_021DEE80(param0, param1, param3);
}

static void ov21_021DED68(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1)
{
    ov21_021DEEF8(param0);
    ov21_021DEE38(param0, param1);
}

static void ov21_021DED7C(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1, int param2, int param3)
{
    PokedexGraphicData *v0 = *param1;
    int v1 = ov21_021D1F90();
    int v2 = ov21_021D1F94(param3);
    int v3 = ov21_021D1F98();
    int v4 = ov21_021D1F9C();
    int v5 = ov21_021D1FA0();

    param0->unk_24[0] = SpriteResourceCollection_AddTiles(v0->spriteResourceCollection[0], v1, v2, 1, 4000, NNS_G2D_VRAM_TYPE_2DMAIN, param2);

    SpriteTransfer_RequestCharAtEnd(param0->unk_24[0]);
    SpriteResource_ReleaseData(param0->unk_24[0]);

    param0->unk_24[1] = SpriteResourceCollection_AddPalette(v0->spriteResourceCollection[1], v1, v3, 0, 4000, NNS_G2D_VRAM_TYPE_2DMAIN, 1, param2);

    SpriteTransfer_RequestPlttFreeSpace(param0->unk_24[1]);
    SpriteResource_ReleaseData(param0->unk_24[1]);

    param0->unk_24[2] = SpriteResourceCollection_Add(v0->spriteResourceCollection[2], v1, v4, 1, 4000, 2, param2);
    param0->unk_24[3] = SpriteResourceCollection_Add(v0->spriteResourceCollection[3], v1, v5, 1, 4000, 3, param2);
}

static void ov21_021DEE38(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1)
{
    PokedexGraphicData *v0 = *param1;

    if (param0->unk_24[0] == NULL) {
        return;
    }

    SpriteTransfer_ResetCharTransfer(param0->unk_24[0]);
    SpriteTransfer_ResetPlttTransfer(param0->unk_24[1]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[0], param0->unk_24[0]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[1], param0->unk_24[1]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[2], param0->unk_24[2]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[3], param0->unk_24[3]);
}

static void ov21_021DEE80(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1, int param2)
{
    SpriteResourcesHeader v0;
    SpriteListTemplate v1;
    PokedexGraphicData *v2 = *param1;

    SpriteResourcesHeader_Init(&v0, 4000, 4000, 4000, 4000, 0xffffffff, 0xffffffff, 0, 0, v2->spriteResourceCollection[0], v2->spriteResourceCollection[1], v2->spriteResourceCollection[2], v2->spriteResourceCollection[3], NULL, NULL);

    v1.list = v2->spriteList;
    v1.resourceData = &v0;
    v1.priority = 32;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.heapID = param2;
    v1.position.y = (88 * FX32_ONE);
    v1.position.x = (120 * FX32_ONE);

    param0->unk_00[0] = SpriteList_Add(&v1);
}

static void ov21_021DEEF8(UnkStruct_ov21_021DF374 *param0)
{
    if (param0->unk_00[0]) {
        Sprite_Delete(param0->unk_00[0]);
    }
}

static void ov21_021DEF08(PokedexGraphicData **param0, const UnkStruct_ov21_021DE6D4 *param1, int param2)
{
    PokedexMain_EntryNameNumber(*param0, param1->unk_04, param2, PokedexSort_CurrentStatusIndex(param1->unk_04), (172 * FX32_ONE), (32 * FX32_ONE));
    ov21_021D238C(*param0, 0);
}

static void ov21_021DEF3C(PokedexGraphicData **param0)
{
    ov21_021D23C0(*param0, 0);
    ov21_021D2360(*param0, GX_OAM_MODE_NORMAL);
}

static void ov21_021DEF54(PokedexGraphicData **param0, const UnkStruct_ov21_021DE6D4 *param1)
{
    PokemonSprite *v0 = ov21_021D2170(*param0);
    int species = PokedexSort_CurrentSpecies(param1->unk_04);

    PokedexMain_DisplayPokemonSprite(*param0, param1->unk_04, species, 2, 48, 72);
    PokemonSprite_SetAttribute(v0, MON_SPRITE_HIDE, 0);
}

static void ov21_021DEF8C(PokedexGraphicData **param0)
{
    PokemonSprite *v0 = ov21_021D2170(*param0);

    PokemonSprite_SetAttribute(v0, MON_SPRITE_HIDE, 1);
    PokemonSprite_ClearFade(v0);
}

static void ov21_021DEFA8(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1, int param2)
{
    PokedexGraphicData *v0 = *param1;
    NARC *v1 = ov21_021D26E0(*param1);

    param0->unk_14[0] = SpriteResourceCollection_AddTilesFrom(v0->spriteResourceCollection[0], v1, 90, 1, 90 + 4000, NNS_G2D_VRAM_TYPE_2DMAIN, param2);

    SpriteTransfer_RequestCharAtEnd(param0->unk_14[0]);
    SpriteResource_ReleaseData(param0->unk_14[0]);

    param0->unk_14[1] = SpriteResourceCollection_AddPaletteFrom(v0->spriteResourceCollection[1], v1, 13, 0, 13 + 4000, NNS_G2D_VRAM_TYPE_2DMAIN, 5, param2);

    SpriteTransfer_RequestPlttFreeSpace(param0->unk_14[1]);
    SpriteResource_ReleaseData(param0->unk_14[1]);

    param0->unk_14[2] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[2], v1, 88, 1, 88 + 4000, 2, param2);
    param0->unk_14[3] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[3], v1, 89, 1, 89 + 4000, 3, param2);
}

static void ov21_021DF054(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1)
{
    PokedexGraphicData *v0 = *param1;

    SpriteTransfer_ResetCharTransfer(param0->unk_14[0]);
    SpriteTransfer_ResetPlttTransfer(param0->unk_14[1]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[0], param0->unk_14[0]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[1], param0->unk_14[1]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[2], param0->unk_14[2]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[3], param0->unk_14[3]);
}

static void ov21_021DF098(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021DE6D4 *param2, int param3)
{
    SpriteResourcesHeader v0;
    SpriteListTemplate v1;
    PokedexGraphicData *v2 = *param1;
    int species = PokedexSort_CurrentSpecies(param2->unk_04);
    int type1, type2;
    int v6 = PokedexSort_DefaultForm(param2->unk_04, species);

    type1 = SpeciesData_GetFormValue(species, v6, SPECIES_DATA_TYPE_1);
    type2 = SpeciesData_GetFormValue(species, v6, SPECIES_DATA_TYPE_2);
    type1 = ov21_021DF180(type1);
    type2 = ov21_021DF180(type2);

    SpriteResourcesHeader_Init(&v0, 90 + 4000, 13 + 4000, 88 + 4000, 89 + 4000, 0xffffffff, 0xffffffff, 0, 0, v2->spriteResourceCollection[0], v2->spriteResourceCollection[1], v2->spriteResourceCollection[2], v2->spriteResourceCollection[3], NULL, NULL);

    v1.list = v2->spriteList;
    v1.resourceData = &v0;
    v1.priority = 32;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.heapID = param3;
    v1.position.x = (170 * FX32_ONE);
    v1.position.y = (72 * FX32_ONE);

    param0->unk_00[1] = SpriteList_Add(&v1);

    Sprite_SetAnim(param0->unk_00[1], 0 + type1);

    if (type1 != type2) {
        v1.position.x = (220 * FX32_ONE);
        v1.position.y = (72 * FX32_ONE);
        param0->unk_00[2] = SpriteList_Add(&v1);
        Sprite_SetAnim(param0->unk_00[2], 0 + type2);
    } else {
        param0->unk_00[2] = NULL;
    }
}

int ov21_021DF180(int param0)
{
    int v0;

    switch (param0) {
    case 0:
        v0 = 0x0;
        break;
    case 1:
        v0 = 0x6;
        break;
    case 2:
        v0 = 0xe;
        break;
    case 3:
        v0 = 0xa;
        break;
    case 4:
        v0 = 0x8;
        break;
    case 5:
        v0 = 0x5;
        break;
    case 6:
        v0 = 0xb;
        break;
    case 7:
    case 9:
        v0 = 0x7;
        break;
    case 8:
        v0 = 0x9;
        break;
    case 10:
        v0 = 0x1;
        break;
    case 11:
        v0 = 0x3;
        break;
    case 12:
        v0 = 0x2;
        break;
    case 13:
        v0 = 0x4;
        break;
    case 14:
        v0 = 0xf;
        break;
    case 15:
        v0 = 0xd;
        break;
    case 16:
        v0 = 0x10;
        break;
    case 17:
        v0 = 0xc;
        break;
    }

    return v0;
}

static void ov21_021DF1F8(UnkStruct_ov21_021DF374 *param0)
{
    if (param0->unk_00[1]) {
        Sprite_Delete(param0->unk_00[1]);
    }

    if (param0->unk_00[2]) {
        Sprite_Delete(param0->unk_00[2]);
    }
}

static void ov21_021DF214(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021DE6D4 *param2, int param3)
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

    param0->unk_0C = SpriteList_Add(&v1);

    Sprite_SetAnim(param0->unk_0C, 0x11);

    if (PokedexSort_CurrentCaughtStatus(param2->unk_04) != 2) {
        species = 0;
    }

    v4 = ov21_021DF30C((*param1)->unk_14C, species, param3);
    v6 = ov21_021D2344(*param1, 1);

    displayBox.textMan = (*param1)->unk_14C;
    displayBox.paletteProxy = SpriteTransfer_GetPaletteProxy(v6, NULL);
    displayBox.sprite = param0->unk_0C;
    displayBox.x = -78;
    displayBox.y = -8;
    displayBox.spriteResourcePriority = 0;
    displayBox.spriteListPriority = 32 - 1;
    displayBox.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    displayBox.heapID = param3;
    displayBox.window = v4;

    param0->unk_10 = PokedexTextManager_NextTextData(&displayBox);

    PokedexTextManager_FreeWindow(v4);
}

Window *ov21_021DF30C(PokedexTextManager *textMan, int param1, int param2)
{
    Window *v0;
    Strbuf *v1;

    v0 = PokedexTextManager_NewWindow(textMan, 18, 2);
    v1 = PokedexText_Category(param1, GAME_LANGUAGE, param2);

    {
        u32 v2 = Font_CalcStrbufWidth(FONT_SUBSCREEN, v1, 0);
        u32 v3 = (v2 < 136) ? (136 - v2) / 2 : 0;

        PokedexTextManager_DisplayStrbuf(textMan, v0, v1, v3, 0);
    }

    PokedexText_Free(v1);

    return v0;
}

static void ov21_021DF35C(UnkStruct_ov21_021DF374 *param0)
{
    Sprite_Delete(param0->unk_0C);
    param0->unk_0C = NULL;
    PokedexTextManager_FreeTextData(param0->unk_10);
}

static void ov21_021DF374(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021DE6D4 *param2, BOOL param3)
{
    ov21_021D2360(*param1, GX_OAM_MODE_XLU);
    ov21_021DF64C(param0);

    if (ov21_021E2A54(param2->unk_10)) {
        if (param3) {
            ov21_021D23F8(&(*param1)->unk_168, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), GX_BLEND_PLANEMASK_BG3, 0);
        } else {
            ov21_021D23F8(&(*param1)->unk_168, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), GX_BLEND_PLANEMASK_BG3, 0);
        }
    }

    ov21_021DF6B4(param1);
}

static BOOL ov21_021DF3F0(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021DE6D4 *param2, BOOL param3)
{
    BOOL v0;

    if (ov21_021E2A54(param2->unk_10)) {
        v0 = ov21_021D2424(&(*param1)->unk_168);
    } else {
        v0 = ov21_021D24EC(&(*param1)->unk_168);
    }

    if (v0 == 1) {
        if (param3 == 1) {
            ov21_021DF680(param0);
            ov21_021D2360(*param1, GX_OAM_MODE_NORMAL);
        } else {
            ov21_021DEF8C(param1);
            ov21_021DEF3C(param1);
        }
    } else {
        ov21_021DF6B4(param1);
    }

    return v0;
}

static void ov21_021DF44C(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021DE6D4 *param2, BOOL param3)
{
    ov21_021DF64C(param0);

    if (param3 == 0) {
        ov21_021DF6C4(param0, param2->unk_08, param2->unk_0C, 4);
        ov21_021DF6FC(param0);
    }

    if (ov21_021E2A54(param2->unk_10)) {
        if (param3) {
            ov21_021D23F8(&(*param1)->unk_168, 4, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        } else {
            ov21_021D23F8(&(*param1)->unk_168, 4, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        }
    }
}

static BOOL ov21_021DF4D0(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021DE6D4 *param2, BOOL param3)
{
    BOOL v0[3];
    int v1;

    if (param3 == 0) {
        v0[0] = ov21_021DF6E0(param0, param1);
        v0[1] = ov21_021DF718(param0, param1);
    } else {
        v0[0] = 1;
        v0[1] = 1;
    }

    if (ov21_021E2A54(param2->unk_10)) {
        v0[2] = ov21_021D2424(&(*param1)->unk_168);
    } else {
        v0[2] = ov21_021D24EC(&(*param1)->unk_168);
    }

    for (v1 = 0; v1 < 3; v1++) {
        if (v0[v1] == 0) {
            break;
        }
    }

    if (v1 == 3) {
        if (param3 == 1) {
            ov21_021DF680(param0);
        }

        return 1;
    }

    return 0;
}

static void ov21_021DF548(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021DE6D4 *param2, BOOL param3)
{
    ov21_021DF64C(param0);
    ov21_021D2360(*param1, GX_OAM_MODE_XLU);

    if (param3 == 0) {
        ov21_021DF6C4(param0, param2->unk_08, param2->unk_0C, 1);
    }

    if (ov21_021E2A54(param2->unk_10)) {
        if (param3) {
            ov21_021D23F8(&(*param1)->unk_168, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        } else {
            ov21_021D23F8(&(*param1)->unk_168, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        }
    }
}

static BOOL ov21_021DF5D0(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1, const UnkStruct_ov21_021DE6D4 *param2, BOOL param3)
{
    BOOL v0[2];
    int v1;

    if (param3 == 0) {
        v0[0] = ov21_021DF6E0(param0, param1);
    } else {
        v0[0] = 1;
    }

    if (ov21_021E2A54(param2->unk_10)) {
        v0[1] = ov21_021D2424(&(*param1)->unk_168);
    } else {
        v0[1] = ov21_021D24EC(&(*param1)->unk_168);
    }

    for (v1 = 0; v1 < 2; v1++) {
        if (v0[v1] == 0) {
            break;
        }
    }

    if (v1 == 2) {
        if (param3 == 1) {
            ov21_021DF680(param0);
            ov21_021D2360(*param1, GX_OAM_MODE_NORMAL);
        } else {
            ov21_021DEF3C(param1);
        }

        return 1;
    }

    return 0;
}

static void ov21_021DF64C(UnkStruct_ov21_021DF374 *param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        if (param0->unk_00[v0]) {
            Sprite_SetExplicitOAMMode(param0->unk_00[v0], GX_OAM_MODE_XLU);
        }
    }

    Sprite_SetExplicitOAMMode(param0->unk_0C, GX_OAM_MODE_XLU);
    sub_02012AF0(param0->unk_10->fontOAM, GX_OAM_MODE_XLU);
}

static void ov21_021DF680(UnkStruct_ov21_021DF374 *param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        if (param0->unk_00[v0]) {
            Sprite_SetExplicitOAMMode(param0->unk_00[v0], GX_OAM_MODE_NORMAL);
        }
    }

    Sprite_SetExplicitOAMMode(param0->unk_0C, GX_OAM_MODE_NORMAL);
    sub_02012AF0(param0->unk_10->fontOAM, GX_OAM_MODE_NORMAL);
}

static void ov21_021DF6B4(PokedexGraphicData **param0)
{
    ov21_021D24FC(*param0, &(*param0)->unk_168);
}

static void ov21_021DF6C4(UnkStruct_ov21_021DF374 *param0, int param1, int param2, int param3)
{
    ov21_021D2648(&param0->unk_34, 48, param1, 72, param2, param3);
}

static BOOL ov21_021DF6E0(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1)
{
    BOOL v0 = ov21_021D2664(&param0->unk_34);
    ov21_021D2164(*param1, param0->unk_34.unk_00, param0->unk_34.unk_04);

    return v0;
}

static void ov21_021DF6FC(UnkStruct_ov21_021DF374 *param0)
{
    ov21_021D2648(&param0->unk_54, 172, 170, 32, 82, 4);
}

static BOOL ov21_021DF718(UnkStruct_ov21_021DF374 *param0, PokedexGraphicData **param1)
{
    BOOL v0 = ov21_021D2664(&param0->unk_54);
    ov21_021D1848(*param1, param0->unk_54.unk_00, param0->unk_54.unk_04);

    return v0;
}
