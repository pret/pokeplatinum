#include "overlay021/ov21_021E0C68.h"

#include <nitro.h>
#include <string.h>

#include "overlay021/ov21_021D1FA4.h"
#include "overlay021/ov21_021D4C0C.h"
#include "overlay021/ov21_021E29DC.h"
#include "overlay021/pokedex_app.h"
#include "overlay021/pokedex_graphic_data.h"
#include "overlay021/pokedex_main.h"
#include "overlay021/pokedex_sort.h"
#include "overlay021/pokedex_sort_data.h"
#include "overlay021/pokedex_text.h"
#include "overlay021/struct_ov21_021D2648.h"
#include "overlay021/struct_ov21_021D4CA0.h"
#include "overlay021/struct_ov21_021D4CB8.h"
#include "overlay021/struct_ov21_021E68F4.h"
#include "overlay021/struct_ov21_021E6A68.h"
#include "overlay021/struct_ov21_021E6B20.h"

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
    PokedexGraphicData *unk_00;
} UnkStruct_ov21_021E0D7C;

typedef struct {
    Sprite *unk_00;
    UnkStruct_ov21_021D4CA0 *unk_04;
    SpriteResource *unk_08[4];
    UnkStruct_ov21_021D2648 unk_18;
    UnkStruct_ov21_021D2648 unk_38;
} UnkStruct_ov21_021E14D4;

static UnkStruct_ov21_021E0D68 *ov21_021E0D04(enum HeapId heapID, PokedexApp *param1);
static UnkStruct_ov21_021E0D7C *ov21_021E0D40(enum HeapId heapID, PokedexApp *param1);
static void ov21_021E0D68(UnkStruct_ov21_021E0D68 *param0);
static void ov21_021E0D7C(UnkStruct_ov21_021E0D7C *param0);
static int ov21_021E0D90(void);
static int ov21_021E0D94(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021E0D98(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021E0DA8(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021E0DAC(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static int ov21_021E0E8C(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static int ov21_021E0E90(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static void ov21_021E14D4(UnkStruct_ov21_021E14D4 *param0, UnkStruct_ov21_021E0D7C *param1, const UnkStruct_ov21_021E0D68 *param2, BOOL param3);
static BOOL ov21_021E1550(UnkStruct_ov21_021E14D4 *param0, UnkStruct_ov21_021E0D7C *param1, const UnkStruct_ov21_021E0D68 *param2, BOOL param3);
static void ov21_021E15AC(UnkStruct_ov21_021E14D4 *param0, UnkStruct_ov21_021E0D7C *param1, const UnkStruct_ov21_021E0D68 *param2, BOOL param3);
static BOOL ov21_021E1630(UnkStruct_ov21_021E14D4 *param0, UnkStruct_ov21_021E0D7C *param1, const UnkStruct_ov21_021E0D68 *param2, BOOL param3);
static void ov21_021E16A8(UnkStruct_ov21_021E14D4 *param0, UnkStruct_ov21_021E0D7C *param1, const UnkStruct_ov21_021E0D68 *param2, BOOL param3);
static BOOL ov21_021E1730(UnkStruct_ov21_021E14D4 *param0, UnkStruct_ov21_021E0D7C *param1, const UnkStruct_ov21_021E0D68 *param2, BOOL param3);
static void ov21_021E17DC(UnkStruct_ov21_021E0D7C *param0);
static void ov21_021E17AC(UnkStruct_ov21_021E14D4 *param0);
static void ov21_021E17C4(UnkStruct_ov21_021E14D4 *param0);
static void ov21_021E17EC(UnkStruct_ov21_021E14D4 *param0, int param1, int param2, int param3);
static BOOL ov21_021E1808(UnkStruct_ov21_021E14D4 *param0, UnkStruct_ov21_021E0D7C *param1);
static void ov21_021E1824(UnkStruct_ov21_021E14D4 *param0);
static BOOL ov21_021E1840(UnkStruct_ov21_021E14D4 *param0, UnkStruct_ov21_021E0D7C *param1);
static void ov21_021E0F4C(UnkStruct_ov21_021E14D4 *param0, UnkStruct_ov21_021E0D7C *param1, const UnkStruct_ov21_021E0D68 *param2, int heapID);
static void ov21_021E0F94(UnkStruct_ov21_021E14D4 *param0, UnkStruct_ov21_021E0D7C *param1);
static void ov21_021E0FBC(UnkStruct_ov21_021E0D7C *param0, int heapID);
static void ov21_021E10D0(UnkStruct_ov21_021E0D7C *param0, const UnkStruct_ov21_021E0D68 *param1, enum HeapId heapID);
static void ov21_021E1188(UnkStruct_ov21_021E0D7C *param0, int param1, int param2, int param3, int param4);
static int LanguageMessage(int param0);
static void ov21_021E18A0(UnkStruct_ov21_021E0D7C *param0, int param1, int param2, int param3);
static void ov21_021E18DC(UnkStruct_ov21_021E0D7C *param0, int param1, int param2, int param3);
static void ov21_021E136C(UnkStruct_ov21_021E14D4 *param0, UnkStruct_ov21_021E0D7C *param1, const UnkStruct_ov21_021E0D68 *param2, int param3);
static void ov21_021E14BC(UnkStruct_ov21_021E14D4 *param0);
static Window *ov21_021E1460(UnkStruct_ov21_021E0D7C *param0, int param1, int param2);
static void ov21_021E127C(UnkStruct_ov21_021E14D4 *param0, UnkStruct_ov21_021E0D7C *param1, int param2);
static void ov21_021E1328(UnkStruct_ov21_021E14D4 *param0, UnkStruct_ov21_021E0D7C *param1);
static void ov21_021E11DC(UnkStruct_ov21_021E0D7C *param0, const UnkStruct_ov21_021E0D68 *param1, int param2);
static void ov21_021E1210(UnkStruct_ov21_021E0D7C *param0);
static void ov21_021E1228(UnkStruct_ov21_021E0D7C *param0, const UnkStruct_ov21_021E0D68 *param1);
static void ov21_021E1260(UnkStruct_ov21_021E0D7C *param0);

void ov21_021E0C68(UnkStruct_ov21_021E68F4 *param0, PokedexApp *param1, enum HeapId heapID)
{
    UnkStruct_ov21_021E0D68 *v0;
    UnkStruct_ov21_021E0D7C *v1;

    v0 = ov21_021E0D04(heapID, param1);
    v1 = ov21_021E0D40(heapID, param1);

    param0->unk_00 = v0;
    param0->unk_04 = v1;
    param0->unk_20 = NULL;
    param0->unk_24 = ov21_021E0D90();
    param0->unk_08[0] = ov21_021E0D94;
    param0->unk_08[1] = ov21_021E0D98;
    param0->unk_08[2] = ov21_021E0DA8;
    param0->unk_14[0] = ov21_021E0DAC;
    param0->unk_14[1] = ov21_021E0E8C;
    param0->unk_14[2] = ov21_021E0E90;
}

void ov21_021E0CC0(UnkStruct_ov21_021E68F4 *param0)
{
    ov21_021E0D68(param0->unk_00);
    ov21_021E0D7C(param0->unk_04);
}

void ov21_021E0CD4(UnkStruct_ov21_021E68F4 *param0, int param1, int param2)
{
    UnkStruct_ov21_021E0D68 *v0 = param0->unk_00;

    v0->unk_08 = param1;
    v0->unk_0C = param2;
}

void ov21_021E0CDC(UnkStruct_ov21_021E68F4 *param0, int param1)
{
    UnkStruct_ov21_021E0D68 *v0 = param0->unk_00;
    v0->unk_14 = param1;
}

BOOL ov21_021E0CE4(UnkStruct_ov21_021E68F4 *param0)
{
    UnkStruct_ov21_021E0D68 *v0 = param0->unk_00;
    return 0;
}

BOOL ov21_021E0CE8(UnkStruct_ov21_021E68F4 *param0, int param1)
{
    UnkStruct_ov21_021E0D68 *v0 = param0->unk_00;
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
    UnkStruct_ov21_021E0D68 *v0 = param0->unk_00;

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

static UnkStruct_ov21_021E0D7C *ov21_021E0D40(enum HeapId heapID, PokedexApp *param1)
{
    UnkStruct_ov21_021E0D7C *v0;
    UnkStruct_ov21_021E68F4 *v1;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021E0D7C));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021E0D7C));

    v0->unk_00 = ov21_021D13FC(param1);

    return v0;
}

static void ov21_021E0D68(UnkStruct_ov21_021E0D68 *param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static void ov21_021E0D7C(UnkStruct_ov21_021E0D7C *param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static int ov21_021E0D90(void)
{
    return 0;
}

static int ov21_021E0D94(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    return 1;
}

static int ov21_021E0D98(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    UnkStruct_ov21_021E0D68 *v0 = param1;

    if (param0->unk_0C == 1) {
        return 1;
    }

    if (param0->unk_10 == 1) {
        return 0;
    }

    return 0;
}

static int ov21_021E0DA8(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    return 1;
}

static int ov21_021E0DAC(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const UnkStruct_ov21_021E0D68 *v0 = param2;
    UnkStruct_ov21_021E0D7C *v1 = param0;
    UnkStruct_ov21_021E14D4 *v2 = param1->unk_08;
    BOOL v3;

    switch (param1->unk_00) {
    case 0:
        param1->unk_08 = Heap_AllocFromHeap(param1->heapID, sizeof(UnkStruct_ov21_021E14D4));
        memset(param1->unk_08, 0, sizeof(UnkStruct_ov21_021E14D4));
        param1->unk_00++;
        break;
    case 1:
        ov21_021E0F4C(v2, v1, v0, param1->heapID);

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

        param1->unk_00++;
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
            param1->unk_00++;
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

static int ov21_021E0E8C(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    return 0;
}

static int ov21_021E0E90(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const UnkStruct_ov21_021E0D68 *v0 = param2;
    UnkStruct_ov21_021E0D7C *v1 = param0;
    UnkStruct_ov21_021E14D4 *v2 = param1->unk_08;
    BOOL v3;

    switch (param1->unk_00) {
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

        param1->unk_00++;
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
            param1->unk_00++;
        }
        break;
    case 2:
        ov21_021E0F94(v2, v1);
        param1->unk_00++;
        break;

    case 3:
        Heap_FreeToHeap(param1->unk_08);
        param1->unk_00++;
        break;
    case 4:
        return 1;
    default:
        break;
    }

    return 0;
}

static void ov21_021E0F4C(UnkStruct_ov21_021E14D4 *param0, UnkStruct_ov21_021E0D7C *param1, const UnkStruct_ov21_021E0D68 *param2, int heapID)
{
    ov21_021E11DC(param1, param2, heapID);
    ov21_021E1228(param1, param2);
    ov21_021E127C(param0, param1, heapID);
    ov21_021E136C(param0, param1, param2, heapID);
    ov21_021E0FBC(param1, heapID);
    ov21_021E10D0(param1, param2, heapID);
}

static void ov21_021E0F94(UnkStruct_ov21_021E14D4 *param0, UnkStruct_ov21_021E0D7C *param1)
{
    ov21_021E14BC(param0);
    Window_FillTilemap(&param1->unk_00->window, 0);

    ov21_021E1328(param0, param1);
    Bg_ClearTilemap(param1->unk_00->bgConfig, 1);
}

static void ov21_021E0FBC(UnkStruct_ov21_021E0D7C *param0, int heapID)
{
    void *v0;
    NNSG2dScreenData *v1;

    ov21_021D2724(param0->unk_00, 33, param0->unk_00->bgConfig, 3, 0, 0, 1, heapID);

    v0 = ov21_021D27B8(param0->unk_00, 50, 1, &v1, heapID);
    Bg_LoadToTilemapRect(param0->unk_00->bgConfig, 3, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);

    v0 = ov21_021D27B8(param0->unk_00, 51, 1, &v1, heapID);

    Bg_LoadToTilemapRect(param0->unk_00->bgConfig, 3, v1->rawData, 0, 3, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);

    v0 = ov21_021D27B8(param0->unk_00, 55, 1, &v1, heapID);

    Bg_LoadToTilemapRect(param0->unk_00->bgConfig, 3, v1->rawData, 0, 16, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);

    v0 = ov21_021D27B8(param0->unk_00, 56, 1, &v1, heapID);

    Bg_LoadToTilemapRect(param0->unk_00->bgConfig, 3, v1->rawData, 12, 8, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);
    Bg_ScheduleTilemapTransfer(param0->unk_00->bgConfig, 3);
}

static void ov21_021E10D0(UnkStruct_ov21_021E0D7C *param0, const UnkStruct_ov21_021E0D68 *param1, enum HeapId heapID)
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

    Text_AddPrinterWithParamsAndColor(&param0->unk_00->window, FONT_SYSTEM, v0, 176 - v4, 72, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    Strbuf_Free(v0);
    MessageLoader_Free(pokedexMessageBank);

    ov21_021E1188(param0, heapID, species, param1->unk_18, param1->unk_1C);
    ov21_021E18A0(param0, heapID, species, param1->unk_18);
    ov21_021E18DC(param0, heapID, species, param1->unk_18);
}

static void ov21_021E1188(UnkStruct_ov21_021E0D7C *param0, int param1, int param2, int param3, int param4)
{
    Strbuf *v0 = PokedexText_DexEntry(param2, param3, param4, param1);
    u32 v1 = Font_CalcMaxLineWidth(FONT_SYSTEM, v0, 0);
    u32 v2 = (v1 < 240) ? 128 - v1 / 2 : 8;

    Text_AddPrinterWithParamsAndColor(&param0->unk_00->window, FONT_SYSTEM, v0, v2, 136, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    PokedexText_Free(v0);
}

static void ov21_021E11DC(UnkStruct_ov21_021E0D7C *param0, const UnkStruct_ov21_021E0D68 *param1, int param2)
{
    PokedexMain_EntryNameNumber(param0->unk_00, param1->unk_04, param2, PokedexSort_CurrentStatusIndex(param1->unk_04), (172 * FX32_ONE), (32 * FX32_ONE));
    ov21_021D238C(param0->unk_00, 0);
}

static void ov21_021E1210(UnkStruct_ov21_021E0D7C *param0)
{
    ov21_021D23C0(param0->unk_00, 0);
    ov21_021D2360(param0->unk_00, GX_OAM_MODE_NORMAL);
}

static void ov21_021E1228(UnkStruct_ov21_021E0D7C *param0, const UnkStruct_ov21_021E0D68 *param1)
{
    PokemonSprite *v0 = ov21_021D2170(param0->unk_00);
    int species = PokedexSort_CurrentSpecies(param1->unk_04);

    PokedexMain_DisplayPokemonSprite(param0->unk_00, param1->unk_04, species, 2, 48, 72);
    PokemonSprite_SetAttribute(v0, MON_SPRITE_HIDE, 0);
}

static void ov21_021E1260(UnkStruct_ov21_021E0D7C *param0)
{
    PokemonSprite *v0 = ov21_021D2170(param0->unk_00);

    PokemonSprite_SetAttribute(v0, MON_SPRITE_HIDE, 1);
    PokemonSprite_ClearFade(v0);
}

static void ov21_021E127C(UnkStruct_ov21_021E14D4 *param0, UnkStruct_ov21_021E0D7C *param1, int param2)
{
    PokedexGraphicData *v0 = param1->unk_00;
    NARC *v1 = ov21_021D26E0(param1->unk_00);

    param0->unk_08[0] = SpriteResourceCollection_AddTilesFrom(v0->spriteResourceCollection[0], v1, 90, 1, 90 + 4000, NNS_G2D_VRAM_TYPE_2DMAIN, param2);

    SpriteTransfer_RequestCharAtEnd(param0->unk_08[0]);
    SpriteResource_ReleaseData(param0->unk_08[0]);

    param0->unk_08[1] = SpriteResourceCollection_AddPaletteFrom(v0->spriteResourceCollection[1], v1, 13, 0, 13 + 4000, NNS_G2D_VRAM_TYPE_2DMAIN, 5, param2);

    SpriteTransfer_RequestPlttFreeSpace(param0->unk_08[1]);
    SpriteResource_ReleaseData(param0->unk_08[1]);

    param0->unk_08[2] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[2], v1, 88, 1, 88 + 4000, 2, param2);
    param0->unk_08[3] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[3], v1, 89, 1, 89 + 4000, 3, param2);
}

static void ov21_021E1328(UnkStruct_ov21_021E14D4 *param0, UnkStruct_ov21_021E0D7C *param1)
{
    PokedexGraphicData *v0 = param1->unk_00;

    SpriteTransfer_ResetCharTransfer(param0->unk_08[0]);
    SpriteTransfer_ResetPlttTransfer(param0->unk_08[1]);

    SpriteResourceCollection_Remove(v0->spriteResourceCollection[0], param0->unk_08[0]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[1], param0->unk_08[1]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[2], param0->unk_08[2]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[3], param0->unk_08[3]);
}

static void ov21_021E136C(UnkStruct_ov21_021E14D4 *param0, UnkStruct_ov21_021E0D7C *param1, const UnkStruct_ov21_021E0D68 *param2, int param3)
{
    SpriteResourcesHeader v0;
    SpriteListTemplate v1;
    PokedexGraphicData *v2 = param1->unk_00;
    int species = PokedexSort_CurrentSpecies(param2->unk_04);
    Window *v4;
    UnkStruct_ov21_021D4CB8 v5;
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
    v6 = ov21_021D2344(param1->unk_00, 1);

    v5.unk_00 = param1->unk_00->unk_14C;
    v5.unk_08 = SpriteTransfer_GetPaletteProxy(v6, NULL);
    v5.unk_0C = param0->unk_00;
    v5.unk_10 = -78;
    v5.unk_14 = -8;
    v5.unk_18 = 0;
    v5.unk_1C = 32 - 1;
    v5.unk_20 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v5.heapID = param3;
    v5.unk_04 = v4;

    param0->unk_04 = ov21_021D4CA0(&v5);

    ov21_021D4DA0(v4);
}

static Window *ov21_021E1460(UnkStruct_ov21_021E0D7C *param0, int param1, int param2)
{
    Window *v0;
    Strbuf *v1;

    v0 = ov21_021D4D6C(param0->unk_00->unk_14C, 18, 2);
    v1 = PokedexText_Category(param1, GAME_LANGUAGE, param2);

    {
        u32 v2 = Font_CalcStrbufWidth(FONT_SUBSCREEN, v1, 0);
        u32 v3 = (v2 < 136) ? (136 - v2) / 2 : 0;
        ov21_021D4E80(param0->unk_00->unk_14C, v0, v1, v3, 0);
    }

    PokedexText_Free(v1);

    return v0;
}

static void ov21_021E14BC(UnkStruct_ov21_021E14D4 *param0)
{
    Sprite_Delete(param0->unk_00);
    param0->unk_00 = NULL;
    ov21_021D4D1C(param0->unk_04);
}

static void ov21_021E14D4(UnkStruct_ov21_021E14D4 *param0, UnkStruct_ov21_021E0D7C *param1, const UnkStruct_ov21_021E0D68 *param2, BOOL param3)
{
    ov21_021D2360(param1->unk_00, GX_OAM_MODE_XLU);
    ov21_021E17AC(param0);

    if (ov21_021E2A54(param2->unk_10)) {
        if (param3) {
            ov21_021D23F8(&param1->unk_00->unk_168, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), GX_BLEND_PLANEMASK_BG3, 0);
        } else {
            ov21_021D23F8(&param1->unk_00->unk_168, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), GX_BLEND_PLANEMASK_BG3, 0);
        }
    }

    ov21_021E17DC(param1);
}

static BOOL ov21_021E1550(UnkStruct_ov21_021E14D4 *param0, UnkStruct_ov21_021E0D7C *param1, const UnkStruct_ov21_021E0D68 *param2, BOOL param3)
{
    BOOL v0;

    if (ov21_021E2A54(param2->unk_10)) {
        v0 = ov21_021D2424(&param1->unk_00->unk_168);
    } else {
        v0 = ov21_021D24EC(&param1->unk_00->unk_168);
    }

    if (v0 == 1) {
        if (param3 == 1) {
            ov21_021E17C4(param0);
            ov21_021D2360(param1->unk_00, GX_OAM_MODE_NORMAL);
        } else {
            ov21_021E1260(param1);
            ov21_021E1210(param1);
        }
    } else {
        ov21_021E17DC(param1);
    }

    return v0;
}

static void ov21_021E15AC(UnkStruct_ov21_021E14D4 *param0, UnkStruct_ov21_021E0D7C *param1, const UnkStruct_ov21_021E0D68 *param2, BOOL param3)
{
    ov21_021E17AC(param0);

    if (param3 == 0) {
        ov21_021E17EC(param0, param2->unk_08, param2->unk_0C, 4);
        ov21_021E1824(param0);
    }

    if (ov21_021E2A54(param2->unk_10)) {
        if (param3) {
            ov21_021D23F8(&param1->unk_00->unk_168, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        } else {
            ov21_021D23F8(&param1->unk_00->unk_168, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        }
    }
}

static BOOL ov21_021E1630(UnkStruct_ov21_021E14D4 *param0, UnkStruct_ov21_021E0D7C *param1, const UnkStruct_ov21_021E0D68 *param2, BOOL param3)
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
        v0[2] = ov21_021D2424(&param1->unk_00->unk_168);
    } else {
        v0[2] = ov21_021D24EC(&param1->unk_00->unk_168);
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

static void ov21_021E16A8(UnkStruct_ov21_021E14D4 *param0, UnkStruct_ov21_021E0D7C *param1, const UnkStruct_ov21_021E0D68 *param2, BOOL param3)
{
    ov21_021E17AC(param0);
    ov21_021D2360(param1->unk_00, GX_OAM_MODE_XLU);

    if (param3 == 0) {
        ov21_021E17EC(param0, param2->unk_08, param2->unk_0C, 1);
    }

    if (ov21_021E2A54(param2->unk_10)) {
        if (param3) {
            ov21_021D23F8(&param1->unk_00->unk_168, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        } else {
            ov21_021D23F8(&param1->unk_00->unk_168, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        }
    }
}

static BOOL ov21_021E1730(UnkStruct_ov21_021E14D4 *param0, UnkStruct_ov21_021E0D7C *param1, const UnkStruct_ov21_021E0D68 *param2, BOOL param3)
{
    BOOL v0[2];
    int v1;

    if (param3 == 0) {
        v0[0] = ov21_021E1808(param0, param1);
    } else {
        v0[0] = 1;
    }

    if (ov21_021E2A54(param2->unk_10)) {
        v0[1] = ov21_021D2424(&param1->unk_00->unk_168);
    } else {
        v0[1] = ov21_021D24EC(&param1->unk_00->unk_168);
    }

    for (v1 = 0; v1 < 2; v1++) {
        if (v0[v1] == 0) {
            break;
        }
    }

    if (v1 == 2) {
        if (param3 == 1) {
            ov21_021E17C4(param0);
            ov21_021D2360(param1->unk_00, GX_OAM_MODE_NORMAL);
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
    sub_02012AF0(param0->unk_04->unk_00, GX_OAM_MODE_XLU);
}

static void ov21_021E17C4(UnkStruct_ov21_021E14D4 *param0)
{
    Sprite_SetExplicitOAMMode(param0->unk_00, GX_OAM_MODE_NORMAL);
    sub_02012AF0(param0->unk_04->unk_00, GX_OAM_MODE_NORMAL);
}

static void ov21_021E17DC(UnkStruct_ov21_021E0D7C *param0)
{
    ov21_021D24FC(param0->unk_00, &param0->unk_00->unk_168);
}

static void ov21_021E17EC(UnkStruct_ov21_021E14D4 *param0, int param1, int param2, int param3)
{
    ov21_021D2648(&param0->unk_18, 48, param1, 72, param2, param3);
}

static BOOL ov21_021E1808(UnkStruct_ov21_021E14D4 *param0, UnkStruct_ov21_021E0D7C *param1)
{
    BOOL v0 = ov21_021D2664(&param0->unk_18);
    ov21_021D2164(param1->unk_00, param0->unk_18.unk_00, param0->unk_18.unk_04);

    return v0;
}

static void ov21_021E1824(UnkStruct_ov21_021E14D4 *param0)
{
    ov21_021D2648(&param0->unk_38, 172, 170, 32, 82, 4);
}

static BOOL ov21_021E1840(UnkStruct_ov21_021E14D4 *param0, UnkStruct_ov21_021E0D7C *param1)
{
    BOOL v0 = ov21_021D2664(&param0->unk_38);
    ov21_021D1848(param1->unk_00, param0->unk_38.unk_00, param0->unk_38.unk_04);

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

static void ov21_021E18A0(UnkStruct_ov21_021E0D7C *param0, int param1, int param2, int param3)
{
    Strbuf *v0 = PokedexText_NameNumber(param2, param3, param1);

    Text_AddPrinterWithParamsAndColor(&param0->unk_00->window, FONT_SYSTEM, v0, 120, 96, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    PokedexText_Free(v0);
}

static void ov21_021E18DC(UnkStruct_ov21_021E0D7C *param0, int param1, int param2, int param3)
{
    Strbuf *v0 = PokedexText_Category(param2, param3, param1);
    u32 v1 = 240 - Font_CalcStrbufWidth(FONT_SYSTEM, v0, 0);

    Text_AddPrinterWithParamsAndColor(&param0->unk_00->window, FONT_SYSTEM, v0, v1, 112, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    PokedexText_Free(v0);
}
