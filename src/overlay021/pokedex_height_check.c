#include "overlay021/pokedex_height_check.h"

#include <nitro.h>
#include <string.h>

#include "generated/text_banks.h"

#include "struct_decls/sprite_decl.h"

#include "overlay021/ov21_021D0D80.h"
#include "overlay021/ov21_021D1FA4.h"
#include "overlay021/ov21_021E29DC.h"
#include "overlay021/pokedex_sort.h"
#include "overlay021/struct_ov21_021D0F60_decl.h"
#include "overlay021/struct_ov21_021D13FC.h"
#include "overlay021/struct_ov21_021D3320.h"
#include "overlay021/struct_ov21_021D4660.h"
#include "overlay021/struct_ov21_021E68F4.h"
#include "overlay021/struct_ov21_021E6A68.h"
#include "overlay021/struct_ov21_021E6B20.h"

#include "bg_window.h"
#include "cell_actor.h"
#include "font.h"
#include "heap.h"
#include "message.h"
#include "message_util.h"
#include "narc.h"
#include "pokedex_data_index.h"
#include "pokedex_heightweight.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "strbuf.h"
#include "text.h"
#include "unk_0200762C.h"

#include "res/text/bank/pokedex.h"

typedef struct {
    int *unk_00;
    UnkStruct_ov21_021D3320 *unk_04;
    UnkStruct_ov21_021E68F4 *unk_08;
} UnkStruct_ov21_021E6104;

typedef struct {
    UnkStruct_ov21_021D13FC *unk_00;
} UnkStruct_ov21_021E6118;

typedef struct {
    SpriteResource *heightCheckGraphics[4];
    CellActor *trainerHeightCellActor;
} HeightCheckVisuals;

static UnkStruct_ov21_021E6104 *ov21_021E608C(enum HeapId heapID, UnkStruct_ov21_021D0F60 *param1);
static UnkStruct_ov21_021E6118 *ov21_021E60D8(enum HeapId heapID, UnkStruct_ov21_021D0F60 *param1);
static UnkStruct_ov21_021D4660 *ov21_021E6100(enum HeapId heapID, UnkStruct_ov21_021D0F60 *param1);
static void ov21_021E6104(UnkStruct_ov21_021E6104 *param0);
static void ov21_021E6118(UnkStruct_ov21_021E6118 *param0);
static void DummyForMatching1(UnkStruct_ov21_021D4660 *param0);
static int ov21_021E6130(void);
static int ov21_021E6134(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021E6158(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021E6168(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021E617C(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static int ov21_021E6200(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static int ov21_021E6204(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static void SetTrainerHeightLarge(HeightCheckVisuals *heightCheckVisuals);
static void SetTrainerHeightNormal(HeightCheckVisuals *heightCheckVisuals);
static void ov21_021E628C(HeightCheckVisuals *heightCheckVisuals, UnkStruct_ov21_021E6118 *param1, const UnkStruct_ov21_021E6104 *param2, BOOL param3);
static BOOL ov21_021E62F8(HeightCheckVisuals *heightCheckVisuals, UnkStruct_ov21_021E6118 *param1, const UnkStruct_ov21_021E6104 *param2, BOOL param3);
static void DisplayHeightCheck(HeightCheckVisuals *heightCheckVisuals, UnkStruct_ov21_021E6118 *param1, const UnkStruct_ov21_021E6104 *param2, const int *param3, enum HeapId heapID);
static void FreeVisuals(HeightCheckVisuals *heightCheckVisuals, UnkStruct_ov21_021E6118 *param1);
static void DisplayBackground(UnkStruct_ov21_021E6118 *param0, const UnkStruct_ov21_021E6104 *param1, enum HeapId heapID);
static void GetHeightCheckGraphics(HeightCheckVisuals *heightCheckVisuals, UnkStruct_ov21_021E6118 *param1, enum HeapId heapID);
static void FreeSprites(HeightCheckVisuals *heightCheckVisuals, UnkStruct_ov21_021E6118 *param1);
static void DisplayTrainerHeight(HeightCheckVisuals *heightCheckVisuals, UnkStruct_ov21_021E6118 *param1, const UnkStruct_ov21_021E6104 *param2, enum HeapId heapID);
static void FreeTrainerHeight(HeightCheckVisuals *heightCheckVisuals);
static void DummyForMatching2(HeightCheckVisuals *heightCheckVisuals, UnkStruct_ov21_021E6118 *param1, const UnkStruct_ov21_021E6104 *param2, enum HeapId heapID);
static void DummyForMatching3(HeightCheckVisuals *heightCheckVisuals);
static void DisplayHeightLabels(UnkStruct_ov21_021E6118 *param0, enum HeapId heapID);
static void DisplayHeightValues(UnkStruct_ov21_021E6118 *param0, const UnkStruct_ov21_021E6104 *param1, enum HeapId heapID);
static void DisplaySpeciesHeight(UnkStruct_ov21_021E6118 *param0, const UnkStruct_ov21_021E6104 *param1);
static void ClearSpeciesSprite(UnkStruct_ov21_021E6118 *param0);
static void SetTrainerPosition(CellActor *trainerHeightCellActor, short trainerPos);
static void SetSpeciesPosition(Sprite *speciesSprite, short pokemonPos);
static void SetTrainerScale(CellActor *trainerHeightCellActor, short trainerScale);
static void SetSpeciesScale(Sprite *speciesSprite, short pokemonScale);

void ov21_021E6014(UnkStruct_ov21_021E68F4 *param0, UnkStruct_ov21_021D0F60 *param1, enum HeapId heapID)
{
    UnkStruct_ov21_021E6104 *v0 = ov21_021E608C(heapID, param1);
    UnkStruct_ov21_021E6118 *v1 = ov21_021E60D8(heapID, param1);
    UnkStruct_ov21_021D4660 *v2 = ov21_021E6100(heapID, param1);

    param0->unk_00 = v0;
    param0->unk_04 = v1;
    param0->unk_20 = v2;
    param0->unk_24 = ov21_021E6130();

    param0->unk_08[0] = ov21_021E6134;
    param0->unk_08[1] = ov21_021E6158;
    param0->unk_08[2] = ov21_021E6168;
    param0->unk_14[0] = ov21_021E617C;
    param0->unk_14[1] = ov21_021E6200;
    param0->unk_14[2] = ov21_021E6204;
}

void ov21_021E6074(UnkStruct_ov21_021E68F4 *param0)
{
    ov21_021E6104(param0->unk_00);
    ov21_021E6118(param0->unk_04);
    DummyForMatching1(param0->unk_20);
}

static UnkStruct_ov21_021E6104 *ov21_021E608C(enum HeapId heapID, UnkStruct_ov21_021D0F60 *param1)
{
    UnkStruct_ov21_021E6104 *v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021E6104));
    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021E6104));

    v0->unk_00 = ov21_021D138C(param1);
    v0->unk_04 = ov21_021D13EC(param1);
    v0->unk_08 = ov21_021D1410(param1, 5);

    return v0;
}

UnkStruct_ov21_021E6118 *ov21_021E60D8(enum HeapId heapID, UnkStruct_ov21_021D0F60 *param1)
{
    UnkStruct_ov21_021E6118 *v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021E6118));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021E6118));

    v0->unk_00 = ov21_021D13FC(param1);

    return v0;
}

static UnkStruct_ov21_021D4660 *ov21_021E6100(enum HeapId heapID, UnkStruct_ov21_021D0F60 *param1)
{
    return NULL;
}

static void ov21_021E6104(UnkStruct_ov21_021E6104 *param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static void ov21_021E6118(UnkStruct_ov21_021E6118 *param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static void DummyForMatching1(UnkStruct_ov21_021D4660 *param0)
{
    return;
}

static int ov21_021E6130(void)
{
    return 0;
}

static int ov21_021E6134(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    int *v1 = Heap_AllocFromHeap(param0->heapID, sizeof(int));

    GF_ASSERT(v1);
    memset(v1, 0, sizeof(int));

    param0->unk_08 = v1;

    return 1;
}

static int ov21_021E6158(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    if (param0->unk_0C == TRUE) {
        return 1;
    }

    return 0;
}

static int ov21_021E6168(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    int *v1 = param0->unk_08;

    Heap_FreeToHeap(v1);
    param0->unk_08 = NULL;

    return 1;
}

static int ov21_021E617C(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const UnkStruct_ov21_021E6104 *v0 = param2;
    const int *v1 = param3->unk_08;
    UnkStruct_ov21_021E6118 *v2 = param0;
    HeightCheckVisuals *heightCheckVisuals = param1->unk_08;

    switch (param1->unk_00) {
    case 0:
        param1->unk_08 = Heap_AllocFromHeap(param1->heapID, sizeof(HeightCheckVisuals));
        memset(param1->unk_08, 0, sizeof(HeightCheckVisuals));
        param1->unk_00++;
        break;
    case 1:
        DisplayHeightCheck(heightCheckVisuals, v2, v0, v1, param1->heapID);
        ov21_021E628C(heightCheckVisuals, v2, v0, 1);
        param1->unk_00++;
        break;
    case 2:
        if (ov21_021E62F8(heightCheckVisuals, v2, v0, 1)) {
            param1->unk_00++;
        }
        break;
    case 3:
        return 1;
    }

    return 0;
}

static int ov21_021E6200(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    return 0;
}

static int ov21_021E6204(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    UnkStruct_ov21_021E6118 *v2 = param0;
    HeightCheckVisuals *heightCheckVisuals = param1->unk_08;

    switch (param1->unk_00) {
    case 0:
        ov21_021E628C(heightCheckVisuals, v2, param2, 0);
        param1->unk_00++;
        break;
    case 1:
        if (ov21_021E62F8(heightCheckVisuals, v2, param2, 0)) {
            param1->unk_00++;
        }
        break;
    case 2:
        FreeVisuals(heightCheckVisuals, v2);
        param1->unk_00++;
        break;
    case 3:
        Heap_FreeToHeap(param1->unk_08);
        param1->unk_08 = NULL;
        param1->unk_00++;
        break;
    case 4:
        return 1;
    }

    return 0;
}

static void SetTrainerHeightLarge(HeightCheckVisuals *heightCheckVisuals)
{
    CellActor_SetExplicitOAMMode(heightCheckVisuals->trainerHeightCellActor, GX_OAM_MODE_XLU);
}

static void SetTrainerHeightNormal(HeightCheckVisuals *heightCheckVisuals)
{
    CellActor_SetExplicitOAMMode(heightCheckVisuals->trainerHeightCellActor, GX_OAM_MODE_NORMAL);
}

static void ov21_021E628C(HeightCheckVisuals *heightCheckVisuals, UnkStruct_ov21_021E6118 *param1, const UnkStruct_ov21_021E6104 *param2, BOOL param3)
{
    SetTrainerHeightLarge(heightCheckVisuals);

    if (ov21_021E2A54(param2->unk_08)) {
        if (param3) {
            ov21_021D23F8(&param1->unk_00->unk_168, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        } else {
            ov21_021D23F8(&param1->unk_00->unk_168, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        }
    }
}

static BOOL ov21_021E62F8(HeightCheckVisuals *heightCheckVisuals, UnkStruct_ov21_021E6118 *param1, const UnkStruct_ov21_021E6104 *param2, BOOL param3)
{
    BOOL v0;

    if (ov21_021E2A54(param2->unk_08)) {
        v0 = ov21_021D2424(&param1->unk_00->unk_168);
    } else {
        v0 = ov21_021D24EC(&param1->unk_00->unk_168);
    }

    if (v0) {
        if (param3) {
            SetTrainerHeightNormal(heightCheckVisuals);
        }

        return TRUE;
    }

    return FALSE;
}

static void DisplayHeightCheck(HeightCheckVisuals *heightCheckVisuals, UnkStruct_ov21_021E6118 *param1, const UnkStruct_ov21_021E6104 *param2, const int *param3, enum HeapId heapID)
{
    DisplayBackground(param1, param2, heapID);
    DisplayHeightLabels(param1, heapID);
    DisplayHeightValues(param1, param2, heapID);
    GetHeightCheckGraphics(heightCheckVisuals, param1, heapID);
    DisplayTrainerHeight(heightCheckVisuals, param1, param2, heapID);
    DummyForMatching2(heightCheckVisuals, param1, param2, heapID);
    DisplaySpeciesHeight(param1, param2);
}

static void FreeVisuals(HeightCheckVisuals *heightCheckVisuals, UnkStruct_ov21_021E6118 *param1)
{
    DummyForMatching3(heightCheckVisuals);
    FreeTrainerHeight(heightCheckVisuals);
    FreeSprites(heightCheckVisuals, param1);

    Window_FillTilemap(&param1->unk_00->unk_04, 0);
    Bg_ClearTilemap(param1->unk_00->unk_00, 1);

    ClearSpeciesSprite(param1);
}

static void DisplayBackground(UnkStruct_ov21_021E6118 *param0, const UnkStruct_ov21_021E6104 *param1, enum HeapId heapID)
{
    NNSG2dScreenData *v1;

    ov21_021D2724(param0->unk_00, 33, param0->unk_00->unk_00, 3, 0, 0, 1, heapID);

    void *v0 = ov21_021D27B8(param0->unk_00, 74, 1, &v1, heapID);

    Bg_LoadToTilemapRect(param0->unk_00->unk_00, 3, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);
    Bg_ScheduleTilemapTransfer(param0->unk_00->unk_00, 3);
}

static void GetHeightCheckGraphics(HeightCheckVisuals *heightCheckVisuals, UnkStruct_ov21_021E6118 *param1, enum HeapId heapID)
{
    UnkStruct_ov21_021D13FC *v0 = param1->unk_00;
    NARC *pokedexGraphicsNarc = ov21_021D26E0(v0);

    heightCheckVisuals->heightCheckGraphics[SPRITE_RESOURCE_TILES] = SpriteResourceCollection_AddTilesFrom(v0->unk_13C[0], pokedexGraphicsNarc, 93, 1, 93 + 7000, NNS_G2D_VRAM_TYPE_2DMAIN, heapID);

    SpriteTransfer_RequestCharAtEnd(heightCheckVisuals->heightCheckGraphics[SPRITE_RESOURCE_TILES]);
    SpriteResource_ReleaseData(heightCheckVisuals->heightCheckGraphics[SPRITE_RESOURCE_TILES]);

    heightCheckVisuals->heightCheckGraphics[SPRITE_RESOURCE_PALETTE] = SpriteResourceCollection_AddPaletteFrom(v0->unk_13C[1], pokedexGraphicsNarc, 14, 0, 14 + 7000, NNS_G2D_VRAM_TYPE_2DMAIN, 5, heapID);

    SpriteTransfer_RequestPlttFreeSpace(heightCheckVisuals->heightCheckGraphics[SPRITE_RESOURCE_PALETTE]);
    SpriteResource_ReleaseData(heightCheckVisuals->heightCheckGraphics[SPRITE_RESOURCE_PALETTE]);

    heightCheckVisuals->heightCheckGraphics[SPRITE_RESOURCE_SPRITE] = SpriteResourceCollection_AddFrom(v0->unk_13C[2], pokedexGraphicsNarc, 91, 1, 91 + 7000, 2, heapID);
    heightCheckVisuals->heightCheckGraphics[SPRITE_RESOURCE_SPRITE_ANIM] = SpriteResourceCollection_AddFrom(v0->unk_13C[3], pokedexGraphicsNarc, 92, 1, 92 + 7000, 3, heapID);
}

static void FreeSprites(HeightCheckVisuals *heightCheckVisuals, UnkStruct_ov21_021E6118 *param1)
{
    UnkStruct_ov21_021D13FC *v0 = param1->unk_00;

    SpriteTransfer_ResetCharTransfer(heightCheckVisuals->heightCheckGraphics[SPRITE_RESOURCE_TILES]);
    SpriteTransfer_ResetPlttTransfer(heightCheckVisuals->heightCheckGraphics[SPRITE_RESOURCE_PALETTE]);
    SpriteResourceCollection_Remove(v0->unk_13C[0], heightCheckVisuals->heightCheckGraphics[SPRITE_RESOURCE_TILES]);
    SpriteResourceCollection_Remove(v0->unk_13C[1], heightCheckVisuals->heightCheckGraphics[SPRITE_RESOURCE_PALETTE]);
    SpriteResourceCollection_Remove(v0->unk_13C[2], heightCheckVisuals->heightCheckGraphics[SPRITE_RESOURCE_SPRITE]);
    SpriteResourceCollection_Remove(v0->unk_13C[3], heightCheckVisuals->heightCheckGraphics[SPRITE_RESOURCE_SPRITE_ANIM]);
}

static void DisplayTrainerHeight(HeightCheckVisuals *heightCheckVisuals, UnkStruct_ov21_021E6118 *param1, const UnkStruct_ov21_021E6104 *param2, enum HeapId heapID)
{
    CellActorResourceData trainerResource;
    CellActorInitParams trainerCellParams;
    UnkStruct_ov21_021D13FC *v2 = param1->unk_00;
    int species = PokedexSort_CurrentSpecies(param2->unk_04);

    SpriteResourcesHeader_Init(&trainerResource, 93 + 7000, 14 + 7000, 91 + 7000, 92 + 7000, 0xffffffff, 0xffffffff, 0, 1, v2->unk_13C[0], v2->unk_13C[1], v2->unk_13C[2], v2->unk_13C[3], NULL, NULL);

    trainerCellParams.collection = v2->unk_138;
    trainerCellParams.resourceData = &trainerResource;
    trainerCellParams.priority = 31;
    trainerCellParams.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    trainerCellParams.heapID = heapID;

    short trainerPos = Pokedex_HeightWeightData_TrainerPos(param2->unk_04->HWData, species);
    short trainerScale = Pokedex_HeightWeightData_TrainerScale(param2->unk_04->HWData, species);

    trainerCellParams.position.x = 168 << FX32_SHIFT;
    trainerCellParams.position.y = (88 + trainerPos) << FX32_SHIFT;

    heightCheckVisuals->trainerHeightCellActor = CellActorCollection_Add(&trainerCellParams);

    if (PokedexSort_TrainerGender(param2->unk_04) == GENDER_MALE) {
        CellActor_SetAnim(heightCheckVisuals->trainerHeightCellActor, 5);
    } else {
        CellActor_SetAnim(heightCheckVisuals->trainerHeightCellActor, 6);
    }

    SetTrainerPosition(heightCheckVisuals->trainerHeightCellActor, trainerPos);
    SetTrainerScale(heightCheckVisuals->trainerHeightCellActor, trainerScale);
}

static void FreeTrainerHeight(HeightCheckVisuals *heightCheckVisuals)
{
    CellActor_Delete(heightCheckVisuals->trainerHeightCellActor);
}

static void DummyForMatching2(HeightCheckVisuals *heightCheckVisuals, UnkStruct_ov21_021E6118 *param1, const UnkStruct_ov21_021E6104 *param2, enum HeapId heapID)
{
    return;
}

static void DummyForMatching3(HeightCheckVisuals *heightCheckVisuals)
{
    return;
}

static void DisplayHeightLabels(UnkStruct_ov21_021E6118 *param0, enum HeapId heapID)
{
    Strbuf *strbuf = Strbuf_Init(32, heapID);
    MessageLoader *pokedexMessageBank = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POKEDEX, heapID);

    MessageLoader_GetStrbuf(pokedexMessageBank, pl_msg_pokedex_heightcheck_topscreen, strbuf);

    {
        u32 xOffset = Font_CalcCenterAlignment(FONT_SYSTEM, strbuf, 0, 256);
        Text_AddPrinterWithParamsAndColor(&param0->unk_00->unk_04, FONT_SYSTEM, strbuf, xOffset, 24, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    }

    MessageLoader_GetStrbuf(pokedexMessageBank, pl_msg_pokedex_ht, strbuf);
    Text_AddPrinterWithParamsAndColor(&param0->unk_00->unk_04, FONT_SYSTEM, strbuf, 32, 168, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    MessageLoader_GetStrbuf(pokedexMessageBank, pl_msg_pokedex_ht, strbuf);
    Text_AddPrinterWithParamsAndColor(&param0->unk_00->unk_04, FONT_SYSTEM, strbuf, 152, 168, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    Strbuf_Free(strbuf);
    MessageLoader_Free(pokedexMessageBank);
}

static void DisplayHeightValues(UnkStruct_ov21_021E6118 *param0, const UnkStruct_ov21_021E6104 *param1, enum HeapId heapID)
{
    Strbuf *strbuf = Strbuf_Init(32, heapID);
    int species = PokedexSort_CurrentSpecies(param1->unk_04);
    Strbuf *speciesName = MessageUtil_SpeciesName(species, heapID);

    int heightMessageBankIndex = Height_Message_Bank_Index();
    MessageLoader *messageBank = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, heightMessageBankIndex, heapID);

    Text_AddPrinterWithParamsAndColor(&param0->unk_00->unk_04, FONT_SYSTEM, speciesName, 26, 152, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    MessageLoader_GetStrbuf(messageBank, species, strbuf);

    {
        u32 v5 = 32 + 78 - Font_CalcStrbufWidth(FONT_SYSTEM, strbuf, 0);
        Text_AddPrinterWithParamsAndColor(&param0->unk_00->unk_04, FONT_SYSTEM, strbuf, v5, 168, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    }

    Strbuf_Free(speciesName);
    MessageLoader_Free(messageBank);

    messageBank = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POKEDEX, heapID);

    Text_AddPrinterWithParamsAndColor(&param0->unk_00->unk_04, FONT_SYSTEM, PokedexSort_TrainerName(param1->unk_04), 146, 152, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);

    if (PokedexSort_TrainerGender(param1->unk_04) == GENDER_MALE) {
        MessageLoader_GetStrbuf(messageBank, pl_msg_pokedex_lucasheight, strbuf);
    } else {
        MessageLoader_GetStrbuf(messageBank, pl_msg_pokedex_dawnheight, strbuf);
    }

    {
        u32 v6 = 152 + 78 - Font_CalcStrbufWidth(FONT_SYSTEM, strbuf, 0);
        Text_AddPrinterWithParamsAndColor(&param0->unk_00->unk_04, FONT_SYSTEM, strbuf, v6, 168, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    }

    Strbuf_Free(strbuf);
    MessageLoader_Free(messageBank);
}

static void DisplaySpeciesHeight(UnkStruct_ov21_021E6118 *param0, const UnkStruct_ov21_021E6104 *param1)
{
    Sprite *speciesSprite = ov21_021D2170(param0->unk_00);
    int species = PokedexSort_CurrentSpecies(param1->unk_04);

    short pokemonPos = Pokedex_HeightWeightData_PokemonPos(param1->unk_04->HWData, species);
    short pokemonScale = Pokedex_HeightWeightData_PokemonScale(param1->unk_04->HWData, species);

    ov21_021D1890(param0->unk_00, param1->unk_04, species, 2, 88, 88 + pokemonPos);

    sub_02007DEC(speciesSprite, 6, 0);
    sub_020086FC(speciesSprite, 15, 15, 0, 0);

    SetSpeciesPosition(speciesSprite, pokemonPos);
    SetSpeciesScale(speciesSprite, pokemonScale);
}

static void ClearSpeciesSprite(UnkStruct_ov21_021E6118 *param0)
{
    Sprite *speciesSprite = ov21_021D2170(param0->unk_00);

    sub_02007DEC(speciesSprite, 6, 1);
    sub_02008780(speciesSprite);
}

static void SetTrainerPosition(CellActor *trainerHeightCellActor, short trainerPos)
{
    VecFx32 position;

    position.x = 168 << FX32_SHIFT;
    position.y = (88 + trainerPos) << FX32_SHIFT;

    CellActor_SetPosition(trainerHeightCellActor, &position);
}

static void SetSpeciesPosition(Sprite *speciesSprite, short pokemonPos)
{
    sub_02007DEC(speciesSprite, 1, 88 + pokemonPos);
}

static void SetTrainerScale(CellActor *trainerHeightCellActor, short trainerScale)
{
    VecFx32 scale;

    scale.x = FX_Div(0x100 << FX32_SHIFT, trainerScale << FX32_SHIFT);
    scale.y = scale.x;

    CellActor_SetAffineScaleEx(trainerHeightCellActor, &scale, 2);
}

static void SetSpeciesScale(Sprite *speciesSprite, short pokemonScale)
{
    fx32 scale = FX_Div(0x100 << FX32_SHIFT, pokemonScale << FX32_SHIFT);
    pokemonScale = FX_Mul(scale, 0x100 << FX32_SHIFT) >> FX32_SHIFT;

    sub_02007DEC(speciesSprite, 12, pokemonScale);
    sub_02007DEC(speciesSprite, 13, pokemonScale);
}
