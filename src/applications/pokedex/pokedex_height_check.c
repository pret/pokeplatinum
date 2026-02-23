#include "applications/pokedex/pokedex_height_check.h"

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
#include "applications/pokedex/struct_ov21_021D4660.h"
#include "applications/pokedex/struct_ov21_021E68F4.h"

#include "bg_window.h"
#include "font.h"
#include "heap.h"
#include "message.h"
#include "message_util.h"
#include "narc.h"
#include "pokedex_data_index.h"
#include "pokedex_heightweight.h"
#include "pokemon_sprite.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "string_gf.h"
#include "text.h"

#include "res/graphics/pokedex/zukan.naix"
#include "res/text/bank/pokedex.h"

typedef struct {
    int *unk_00;
    PokedexSortData *unk_04;
    PokedexScreenManager *unk_08;
} UnkStruct_ov21_021E6104;

typedef struct {
    SpriteResource *heightCheckGraphics[4];
    Sprite *trainerHeightCellActor;
} HeightCheckVisuals;

static UnkStruct_ov21_021E6104 *ov21_021E608C(enum HeapID heapID, PokedexApp *param1);
static PokedexGraphicData **ov21_021E60D8(enum HeapID heapID, PokedexApp *param1);
static UnkStruct_ov21_021D4660 *ov21_021E6100(enum HeapID heapID, PokedexApp *param1);
static void ov21_021E6104(UnkStruct_ov21_021E6104 *param0);
static void ov21_021E6118(PokedexGraphicData **param0);
static void DummyForMatching1(UnkStruct_ov21_021D4660 *param0);
static int ov21_021E6130(void);
static int ov21_021E6134(PokedexDataManager *dataMan, void *data);
static int ov21_021E6158(PokedexDataManager *dataMan, void *data);
static int ov21_021E6168(PokedexDataManager *dataMan, void *data);
static int ov21_021E617C(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static int ov21_021E6200(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static int ov21_021E6204(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static void SetTrainerHeightLarge(HeightCheckVisuals *heightCheckVisuals);
static void SetTrainerHeightNormal(HeightCheckVisuals *heightCheckVisuals);
static void ov21_021E628C(HeightCheckVisuals *heightCheckVisuals, PokedexGraphicData **param1, const UnkStruct_ov21_021E6104 *param2, BOOL param3);
static BOOL ov21_021E62F8(HeightCheckVisuals *heightCheckVisuals, PokedexGraphicData **param1, const UnkStruct_ov21_021E6104 *param2, BOOL param3);
static void DisplayHeightCheck(HeightCheckVisuals *heightCheckVisuals, PokedexGraphicData **param1, const UnkStruct_ov21_021E6104 *param2, const int *param3, enum HeapID heapID);
static void FreeVisuals(HeightCheckVisuals *heightCheckVisuals, PokedexGraphicData **param1);
static void DisplayBackground(PokedexGraphicData **param0, const UnkStruct_ov21_021E6104 *param1, enum HeapID heapID);
static void GetHeightCheckGraphics(HeightCheckVisuals *heightCheckVisuals, PokedexGraphicData **param1, enum HeapID heapID);
static void FreeSprites(HeightCheckVisuals *heightCheckVisuals, PokedexGraphicData **param1);
static void DisplayTrainerHeight(HeightCheckVisuals *heightCheckVisuals, PokedexGraphicData **param1, const UnkStruct_ov21_021E6104 *param2, enum HeapID heapID);
static void FreeTrainerHeight(HeightCheckVisuals *heightCheckVisuals);
static void DummyForMatching2(HeightCheckVisuals *heightCheckVisuals, PokedexGraphicData **param1, const UnkStruct_ov21_021E6104 *param2, enum HeapID heapID);
static void DummyForMatching3(HeightCheckVisuals *heightCheckVisuals);
static void DisplayHeightLabels(PokedexGraphicData **param0, enum HeapID heapID);
static void DisplayHeightValues(PokedexGraphicData **param0, const UnkStruct_ov21_021E6104 *param1, enum HeapID heapID);
static void DisplaySpeciesHeight(PokedexGraphicData **param0, const UnkStruct_ov21_021E6104 *param1);
static void ClearSpeciesSprite(PokedexGraphicData **param0);
static void SetTrainerPosition(Sprite *trainerHeightSprite, short trainerPos);
static void SetSpeciesPosition(PokemonSprite *speciesSprite, short pokemonPos);
static void SetTrainerScale(Sprite *trainerHeightSprite, short trainerScale);
static void SetSpeciesScale(PokemonSprite *speciesSprite, short pokemonScale);

void ov21_021E6014(PokedexScreenManager *param0, PokedexApp *param1, enum HeapID heapID)
{
    UnkStruct_ov21_021E6104 *v0 = ov21_021E608C(heapID, param1);
    PokedexGraphicData **v1 = ov21_021E60D8(heapID, param1);
    UnkStruct_ov21_021D4660 *v2 = ov21_021E6100(heapID, param1);

    param0->pageData = v0;
    param0->pageGraphics = v1;
    param0->screenStates = v2;
    param0->numStates = ov21_021E6130();

    param0->dataFunc[0] = ov21_021E6134;
    param0->dataFunc[1] = ov21_021E6158;
    param0->dataFunc[2] = ov21_021E6168;
    param0->graphicsFunc[0] = ov21_021E617C;
    param0->graphicsFunc[1] = ov21_021E6200;
    param0->graphicsFunc[2] = ov21_021E6204;
}

void ov21_021E6074(PokedexScreenManager *param0)
{
    ov21_021E6104(param0->pageData);
    ov21_021E6118(param0->pageGraphics);
    DummyForMatching1(param0->screenStates);
}

static UnkStruct_ov21_021E6104 *ov21_021E608C(enum HeapID heapID, PokedexApp *param1)
{
    UnkStruct_ov21_021E6104 *v0 = Heap_Alloc(heapID, sizeof(UnkStruct_ov21_021E6104));
    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021E6104));

    v0->unk_00 = ov21_021D138C(param1);
    v0->unk_04 = PokedexMain_GetSortData(param1);
    v0->unk_08 = ov21_021D1410(param1, 5);

    return v0;
}

PokedexGraphicData **ov21_021E60D8(enum HeapID heapID, PokedexApp *param1)
{
    PokedexGraphicData **v0 = Heap_Alloc(heapID, sizeof(PokedexGraphicData *));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(PokedexGraphicData *));

    *v0 = PokedexMain_GetGraphicData(param1);

    return v0;
}

static UnkStruct_ov21_021D4660 *ov21_021E6100(enum HeapID heapID, PokedexApp *param1)
{
    return NULL;
}

static void ov21_021E6104(UnkStruct_ov21_021E6104 *param0)
{
    GF_ASSERT(param0);
    Heap_Free(param0);
}

static void ov21_021E6118(PokedexGraphicData **param0)
{
    GF_ASSERT(param0);
    Heap_Free(param0);
}

static void DummyForMatching1(UnkStruct_ov21_021D4660 *param0)
{
    return;
}

static int ov21_021E6130(void)
{
    return 0;
}

static int ov21_021E6134(PokedexDataManager *dataMan, void *data)
{
    int *v1 = Heap_Alloc(dataMan->heapID, sizeof(int));

    GF_ASSERT(v1);
    memset(v1, 0, sizeof(int));

    dataMan->pageData = v1;

    return 1;
}

static int ov21_021E6158(PokedexDataManager *dataMan, void *data)
{
    if (dataMan->exit == TRUE) {
        return 1;
    }

    return 0;
}

static int ov21_021E6168(PokedexDataManager *dataMan, void *data)
{
    int *v1 = dataMan->pageData;

    Heap_Free(v1);
    dataMan->pageData = NULL;

    return 1;
}

static int ov21_021E617C(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const UnkStruct_ov21_021E6104 *v0 = data;
    const int *v1 = dataMan->pageData;
    PokedexGraphicData **v2 = graphics;
    HeightCheckVisuals *heightCheckVisuals = graphicsMan->pageGraphics;

    switch (graphicsMan->state) {
    case 0:
        graphicsMan->pageGraphics = Heap_Alloc(graphicsMan->heapID, sizeof(HeightCheckVisuals));
        memset(graphicsMan->pageGraphics, 0, sizeof(HeightCheckVisuals));
        graphicsMan->state++;
        break;
    case 1:
        DisplayHeightCheck(heightCheckVisuals, v2, v0, v1, graphicsMan->heapID);
        ov21_021E628C(heightCheckVisuals, v2, v0, 1);
        graphicsMan->state++;
        break;
    case 2:
        if (ov21_021E62F8(heightCheckVisuals, v2, v0, 1)) {
            graphicsMan->state++;
        }
        break;
    case 3:
        return 1;
    }

    return 0;
}

static int ov21_021E6200(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    return 0;
}

static int ov21_021E6204(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    PokedexGraphicData **v2 = graphics;
    HeightCheckVisuals *heightCheckVisuals = graphicsMan->pageGraphics;

    switch (graphicsMan->state) {
    case 0:
        ov21_021E628C(heightCheckVisuals, v2, data, 0);
        graphicsMan->state++;
        break;
    case 1:
        if (ov21_021E62F8(heightCheckVisuals, v2, data, 0)) {
            graphicsMan->state++;
        }
        break;
    case 2:
        FreeVisuals(heightCheckVisuals, v2);
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

static void SetTrainerHeightLarge(HeightCheckVisuals *heightCheckVisuals)
{
    Sprite_SetExplicitOAMMode(heightCheckVisuals->trainerHeightCellActor, GX_OAM_MODE_XLU);
}

static void SetTrainerHeightNormal(HeightCheckVisuals *heightCheckVisuals)
{
    Sprite_SetExplicitOAMMode(heightCheckVisuals->trainerHeightCellActor, GX_OAM_MODE_NORMAL);
}

static void ov21_021E628C(HeightCheckVisuals *heightCheckVisuals, PokedexGraphicData **param1, const UnkStruct_ov21_021E6104 *param2, BOOL param3)
{
    SetTrainerHeightLarge(heightCheckVisuals);

    if (ov21_021E2A54(param2->unk_08)) {
        if (param3) {
            PokedexGraphics_InitBlendTransition(&(*param1)->blendMain, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        } else {
            PokedexGraphics_InitBlendTransition(&(*param1)->blendMain, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        }
    }
}

static BOOL ov21_021E62F8(HeightCheckVisuals *heightCheckVisuals, PokedexGraphicData **param1, const UnkStruct_ov21_021E6104 *param2, BOOL param3)
{
    BOOL v0;

    if (ov21_021E2A54(param2->unk_08)) {
        v0 = PokedexGraphics_TakeBlendTransitionStep(&(*param1)->blendMain);
    } else {
        v0 = PokedexGraphics_BlendTransitionComplete(&(*param1)->blendMain);
    }

    if (v0) {
        if (param3) {
            SetTrainerHeightNormal(heightCheckVisuals);
        }

        return TRUE;
    }

    return FALSE;
}

static void DisplayHeightCheck(HeightCheckVisuals *heightCheckVisuals, PokedexGraphicData **param1, const UnkStruct_ov21_021E6104 *param2, const int *param3, enum HeapID heapID)
{
    DisplayBackground(param1, param2, heapID);
    DisplayHeightLabels(param1, heapID);
    DisplayHeightValues(param1, param2, heapID);
    GetHeightCheckGraphics(heightCheckVisuals, param1, heapID);
    DisplayTrainerHeight(heightCheckVisuals, param1, param2, heapID);
    DummyForMatching2(heightCheckVisuals, param1, param2, heapID);
    DisplaySpeciesHeight(param1, param2);
}

static void FreeVisuals(HeightCheckVisuals *heightCheckVisuals, PokedexGraphicData **param1)
{
    DummyForMatching3(heightCheckVisuals);
    FreeTrainerHeight(heightCheckVisuals);
    FreeSprites(heightCheckVisuals, param1);

    Window_FillTilemap(&(*param1)->window, 0);
    Bg_ClearTilemap((*param1)->bgConfig, 1);

    ClearSpeciesSprite(param1);
}

static void DisplayBackground(PokedexGraphicData **param0, const UnkStruct_ov21_021E6104 *param1, enum HeapID heapID)
{
    NNSG2dScreenData *v1;

    PokedexGraphics_LoadGraphicNarcCharacterData(*param0, entry_main_NCGR_lz, (*param0)->bgConfig, 3, 0, 0, TRUE, heapID);

    void *v0 = PokedexGraphics_GetGraphicNarcTilemapData(*param0, height_check_main_NSCR_lz, TRUE, &v1, heapID);

    Bg_LoadToTilemapRect((*param0)->bgConfig, 3, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_Free(v0);
    Bg_ScheduleTilemapTransfer((*param0)->bgConfig, 3);
}

static void GetHeightCheckGraphics(HeightCheckVisuals *heightCheckVisuals, PokedexGraphicData **param1, enum HeapID heapID)
{
    PokedexGraphicData *v0 = *param1;
    NARC *pokedexGraphicsNarc = PokedexGraphics_GetNARC(v0);

    heightCheckVisuals->heightCheckGraphics[SPRITE_RESOURCE_CHAR] = SpriteResourceCollection_AddTilesFrom(v0->spriteResourceCollection[SPRITE_RESOURCE_CHAR], pokedexGraphicsNarc, size_check_icons_NCGR_lz, TRUE, size_check_icons_NCGR_lz + 7000, NNS_G2D_VRAM_TYPE_2DMAIN, heapID);

    SpriteTransfer_RequestCharAtEnd(heightCheckVisuals->heightCheckGraphics[SPRITE_RESOURCE_CHAR]);
    SpriteResource_ReleaseData(heightCheckVisuals->heightCheckGraphics[SPRITE_RESOURCE_CHAR]);

    heightCheckVisuals->heightCheckGraphics[SPRITE_RESOURCE_PLTT] = SpriteResourceCollection_AddPaletteFrom(v0->spriteResourceCollection[SPRITE_RESOURCE_PLTT], pokedexGraphicsNarc, size_check_icons_NCLR, FALSE, size_check_icons_NCLR + 7000, NNS_G2D_VRAM_TYPE_2DMAIN, 5, heapID);

    SpriteTransfer_RequestPlttFreeSpace(heightCheckVisuals->heightCheckGraphics[SPRITE_RESOURCE_PLTT]);
    SpriteResource_ReleaseData(heightCheckVisuals->heightCheckGraphics[SPRITE_RESOURCE_PLTT]);

    heightCheckVisuals->heightCheckGraphics[SPRITE_RESOURCE_CELL] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[SPRITE_RESOURCE_CELL], pokedexGraphicsNarc, size_check_icons_cell_NCER_lz, TRUE, size_check_icons_cell_NCER_lz + 7000, SPRITE_RESOURCE_CELL, heapID);
    heightCheckVisuals->heightCheckGraphics[SPRITE_RESOURCE_ANIM] = SpriteResourceCollection_AddFrom(v0->spriteResourceCollection[SPRITE_RESOURCE_ANIM], pokedexGraphicsNarc, size_check_icons_anim_NANR_lz, TRUE, size_check_icons_anim_NANR_lz + 7000, SPRITE_RESOURCE_ANIM, heapID);
}

static void FreeSprites(HeightCheckVisuals *heightCheckVisuals, PokedexGraphicData **param1)
{
    PokedexGraphicData *v0 = *param1;

    SpriteTransfer_ResetCharTransfer(heightCheckVisuals->heightCheckGraphics[SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_ResetPlttTransfer(heightCheckVisuals->heightCheckGraphics[SPRITE_RESOURCE_PLTT]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[SPRITE_RESOURCE_CHAR], heightCheckVisuals->heightCheckGraphics[SPRITE_RESOURCE_CHAR]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[SPRITE_RESOURCE_PLTT], heightCheckVisuals->heightCheckGraphics[SPRITE_RESOURCE_PLTT]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[SPRITE_RESOURCE_CELL], heightCheckVisuals->heightCheckGraphics[SPRITE_RESOURCE_CELL]);
    SpriteResourceCollection_Remove(v0->spriteResourceCollection[SPRITE_RESOURCE_ANIM], heightCheckVisuals->heightCheckGraphics[SPRITE_RESOURCE_ANIM]);
}

static void DisplayTrainerHeight(HeightCheckVisuals *heightCheckVisuals, PokedexGraphicData **param1, const UnkStruct_ov21_021E6104 *param2, enum HeapID heapID)
{
    SpriteResourcesHeader trainerResource;
    SpriteListTemplate trainerCellParams;
    PokedexGraphicData *v2 = *param1;
    int species = PokedexSort_CurrentSpecies(param2->unk_04);

    SpriteResourcesHeader_Init(&trainerResource, size_check_icons_NCGR_lz + 7000, size_check_icons_NCLR + 7000, size_check_icons_cell_NCER_lz + 7000, size_check_icons_anim_NANR_lz + 7000, 0xffffffff, 0xffffffff, FALSE, 1, v2->spriteResourceCollection[SPRITE_RESOURCE_CHAR], v2->spriteResourceCollection[SPRITE_RESOURCE_PLTT], v2->spriteResourceCollection[SPRITE_RESOURCE_CELL], v2->spriteResourceCollection[SPRITE_RESOURCE_ANIM], NULL, NULL);

    trainerCellParams.list = v2->spriteList;
    trainerCellParams.resourceData = &trainerResource;
    trainerCellParams.priority = 31;
    trainerCellParams.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    trainerCellParams.heapID = heapID;

    short trainerPos = Pokedex_HeightWeightData_TrainerPos(param2->unk_04->HWData, species);
    short trainerScale = Pokedex_HeightWeightData_TrainerScale(param2->unk_04->HWData, species);

    trainerCellParams.position.x = 168 << FX32_SHIFT;
    trainerCellParams.position.y = (88 + trainerPos) << FX32_SHIFT;

    heightCheckVisuals->trainerHeightCellActor = SpriteList_Add(&trainerCellParams);

    if (PokedexSort_TrainerGender(param2->unk_04) == GENDER_MALE) {
        Sprite_SetAnim(heightCheckVisuals->trainerHeightCellActor, 5);
    } else {
        Sprite_SetAnim(heightCheckVisuals->trainerHeightCellActor, 6);
    }

    SetTrainerPosition(heightCheckVisuals->trainerHeightCellActor, trainerPos);
    SetTrainerScale(heightCheckVisuals->trainerHeightCellActor, trainerScale);
}

static void FreeTrainerHeight(HeightCheckVisuals *heightCheckVisuals)
{
    Sprite_Delete(heightCheckVisuals->trainerHeightCellActor);
}

static void DummyForMatching2(HeightCheckVisuals *heightCheckVisuals, PokedexGraphicData **param1, const UnkStruct_ov21_021E6104 *param2, enum HeapID heapID)
{
    return;
}

static void DummyForMatching3(HeightCheckVisuals *heightCheckVisuals)
{
    return;
}

static void DisplayHeightLabels(PokedexGraphicData **param0, enum HeapID heapID)
{
    String *string = String_Init(32, heapID);
    MessageLoader *pokedexMessageBank = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POKEDEX, heapID);

    MessageLoader_GetString(pokedexMessageBank, pl_msg_pokedex_heightcheck_topscreen, string);

    {
        u32 xOffset = Font_CalcCenterAlignment(FONT_SYSTEM, string, 0, 256);
        Text_AddPrinterWithParamsAndColor(&(*param0)->window, FONT_SYSTEM, string, xOffset, 24, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    }

    MessageLoader_GetString(pokedexMessageBank, pl_msg_pokedex_ht, string);
    Text_AddPrinterWithParamsAndColor(&(*param0)->window, FONT_SYSTEM, string, 32, 168, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    MessageLoader_GetString(pokedexMessageBank, pl_msg_pokedex_ht, string);
    Text_AddPrinterWithParamsAndColor(&(*param0)->window, FONT_SYSTEM, string, 152, 168, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    String_Free(string);
    MessageLoader_Free(pokedexMessageBank);
}

static void DisplayHeightValues(PokedexGraphicData **param0, const UnkStruct_ov21_021E6104 *param1, enum HeapID heapID)
{
    String *string = String_Init(32, heapID);
    int species = PokedexSort_CurrentSpecies(param1->unk_04);
    String *speciesName = MessageUtil_SpeciesName(species, heapID);

    int heightMessageBankIndex = Height_Message_Bank_Index();
    MessageLoader *messageBank = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, heightMessageBankIndex, heapID);

    Text_AddPrinterWithParamsAndColor(&(*param0)->window, FONT_SYSTEM, speciesName, 26, 152, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    MessageLoader_GetString(messageBank, species, string);

    {
        u32 v5 = 32 + 78 - Font_CalcStringWidth(FONT_SYSTEM, string, 0);
        Text_AddPrinterWithParamsAndColor(&(*param0)->window, FONT_SYSTEM, string, v5, 168, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    }

    String_Free(speciesName);
    MessageLoader_Free(messageBank);

    messageBank = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POKEDEX, heapID);

    Text_AddPrinterWithParamsAndColor(&(*param0)->window, FONT_SYSTEM, PokedexSort_TrainerName(param1->unk_04), 146, 152, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);

    if (PokedexSort_TrainerGender(param1->unk_04) == GENDER_MALE) {
        MessageLoader_GetString(messageBank, pl_msg_pokedex_lucasheight, string);
    } else {
        MessageLoader_GetString(messageBank, pl_msg_pokedex_dawnheight, string);
    }

    {
        u32 v6 = 152 + 78 - Font_CalcStringWidth(FONT_SYSTEM, string, 0);
        Text_AddPrinterWithParamsAndColor(&(*param0)->window, FONT_SYSTEM, string, v6, 168, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    }

    String_Free(string);
    MessageLoader_Free(messageBank);
}

static void DisplaySpeciesHeight(PokedexGraphicData **param0, const UnkStruct_ov21_021E6104 *param1)
{
    PokemonSprite *speciesSprite = PokemonGraphics_GetPokemonChar(*param0);
    int species = PokedexSort_CurrentSpecies(param1->unk_04);

    short pokemonPos = Pokedex_HeightWeightData_PokemonPos(param1->unk_04->HWData, species);
    short pokemonScale = Pokedex_HeightWeightData_PokemonScale(param1->unk_04->HWData, species);

    PokedexMain_DisplayPokemonSprite(*param0, param1->unk_04, species, 2, 88, 88 + pokemonPos);

    PokemonSprite_SetAttribute(speciesSprite, MON_SPRITE_HIDE, FALSE);
    PokemonSprite_StartFade(speciesSprite, 15, 15, 0, 0);

    SetSpeciesPosition(speciesSprite, pokemonPos);
    SetSpeciesScale(speciesSprite, pokemonScale);
}

static void ClearSpeciesSprite(PokedexGraphicData **param0)
{
    PokemonSprite *speciesSprite = PokemonGraphics_GetPokemonChar(*param0);

    PokemonSprite_SetAttribute(speciesSprite, MON_SPRITE_HIDE, TRUE);
    PokemonSprite_ClearFade(speciesSprite);
}

static void SetTrainerPosition(Sprite *trainerHeightSprite, short trainerPos)
{
    VecFx32 position;

    position.x = 168 << FX32_SHIFT;
    position.y = (88 + trainerPos) << FX32_SHIFT;

    Sprite_SetPosition(trainerHeightSprite, &position);
}

static void SetSpeciesPosition(PokemonSprite *speciesSprite, short pokemonPos)
{
    PokemonSprite_SetAttribute(speciesSprite, MON_SPRITE_Y_CENTER, 88 + pokemonPos);
}

static void SetTrainerScale(Sprite *trainerHeightSprite, short trainerScale)
{
    VecFx32 scale;

    scale.x = FX_Div(0x100 << FX32_SHIFT, trainerScale << FX32_SHIFT);
    scale.y = scale.x;

    Sprite_SetAffineScaleEx(trainerHeightSprite, &scale, 2);
}

static void SetSpeciesScale(PokemonSprite *speciesSprite, short pokemonScale)
{
    fx32 scale = FX_Div(0x100 << FX32_SHIFT, pokemonScale << FX32_SHIFT);
    pokemonScale = FX_Mul(scale, 0x100 << FX32_SHIFT) >> FX32_SHIFT;

    PokemonSprite_SetAttribute(speciesSprite, MON_SPRITE_SCALE_X, pokemonScale);
    PokemonSprite_SetAttribute(speciesSprite, MON_SPRITE_SCALE_Y, pokemonScale);
}
