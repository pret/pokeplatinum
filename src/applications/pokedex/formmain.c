#include "applications/pokedex/formmain.h"

#include <nitro.h>
#include <string.h>

#include "generated/gender_ratios.h"

#include "applications/pokedex/ov21_021E29DC.h"
#include "applications/pokedex/pokedex_app.h"
#include "applications/pokedex/pokedex_data_manager.h"
#include "applications/pokedex/pokedex_graphics.h"
#include "applications/pokedex/pokedex_graphics_manager.h"
#include "applications/pokedex/pokedex_main.h"
#include "applications/pokedex/pokedex_sort.h"
#include "applications/pokedex/pokedex_sort_data.h"
#include "applications/pokedex/pokedex_text_manager.h"
#include "applications/pokedex/struct_ov21_021E68F4.h"

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

#include "res/graphics/pokedex/zukan.naix"
#include "res/text/bank/pokedex.h"

/*
 * Pokedex Forms Page Main Screen
 */

// constants used in this file
#define FORMMAIN_GRAPHIC_ID 14000
#define TRANSITION_FRAMES   16
#define ARROW_X             248
#define ARROW_Y             96
#define TEXT_WIDTH          16
#define TEXT_HEIGHT         2
#define FRONT_SPRITE_X      76
#define SPRITE_X_GAP        104
#define SPRITE_Y            88

enum FormCategory {
    FORMCATEGORY_GENDER = 0,
    FORMCATEGORY_MALE_ONLY,
    FORMCATEGORY_FEMALE_ONLY,
    FORMCATEGORY_GENDERLESS,
    FORMCATEGORY_SHELLOS,
    FORMCATEGORY_GASTRODON,
    FORMCATEGORY_BURMY,
    FORMCATEGORY_WORMADAM,
    FORMCATEGORY_UNOWN,
    FORMCATEGORY_DEOXYS,
    FORMCATEGORY_SHAYMIN,
    FORMCATEGORY_GIRATINA,
    FORMCATEGORY_ROTOM,
};

typedef struct FormMainData {
    int *unk_00;
    PokedexSortData *sortData;
    const PokedexScreenManager *mainScreen;
    enum FormCategory formCategory;
    int numFormsSeen;
    int formIndex;
} FormMainData;

typedef struct FormMainGraphics {
    PokedexGraphicData *graphicData;
    BOOL boxMoving;
    BOOL boxStationary;
} FormMainGraphics;

typedef struct FormDisplayBox {
    Sprite *boxSprite[NUM_VISIBLE_SPRITES];
    SpriteResource *spriteResource[NUM_VISIBLE_SPRITES];
    PokedexTextData *textData[2];
    SpriteTransformation formBoxTransformation[NUM_VISIBLE_SPRITES];
    int deltaY[NUM_VISIBLE_SPRITES];
    int boxIndex;
    Sprite *arrowSprite;
    int arrowTimer;
    BOOL arrowInvisible;
    enum FormCategory formCategory;
    int formIndex;
} FormDisplayBox;

static inline int SwapSpriteIndex(int boxIndex, int spriteIndex);
static FormMainData *LoadAppData(enum HeapID heapID, PokedexApp *pokedexApp);
static FormMainGraphics *LoadAppGraphics(enum HeapID heapID, PokedexApp *pokedexApp);
static void FreeFormMainData(FormMainData *formMainData);
static void FreeFormMainGraphics(FormMainGraphics *formMainGraphics);
static int NumStates(void);
static int NextFormIndex(int formCategory, int formIndex, int formDelta, int numFormsSeen);
static BOOL FormMainDataEnter(PokedexDataManager *dataMan, void *data);
static BOOL FormMainDataUpdate(PokedexDataManager *dataMan, void *data);
static BOOL FormMainDataExit(PokedexDataManager *dataMan, void *data);
static BOOL FormMainGraphicsEnter(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static BOOL FormMainGraphicsUpdate(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static BOOL FormMainGraphicsExit(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static void InitBlendTransition(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData, BOOL isEntering);
static BOOL AdvanceBlendTransition(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData, BOOL isEntering);
static void BlendPokemonSprite(FormMainGraphics *formMainGraphics);
static void SetSpriteOAMModesXLU(FormDisplayBox *formDisplayBox);
static void SetSpriteOAMModesNormal(FormDisplayBox *formDisplayBox);
static void InitBoxTransform(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics);
static BOOL AdvanceBoxTransform(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics);
static void InitBoxResourceTypeTransform(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, int xOffset, int yOffset, int spriteIndex);
static BOOL BoxTransformStep(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, int spriteIndex);
static int SpeciesFormCategory(enum Species species, const FormMainData *formMainData);
static int NumberFormsSeen(enum Species species, const FormMainData *formMainData);
static int SpeciesGenderFormCategory(enum Species species, const FormMainData *formMainData);
static void LoadGraphics(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData, enum HeapID heapID);
static void FreeGraphics(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics);
static void LoadBackgroundTilemaps(FormMainGraphics *formMainGraphics, enum HeapID heapID);
static void LoadBoxSpriteResources(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, enum HeapID heapID);
static void FreeBoxSpriteResources(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics);
static void AnimateSprites(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData, enum HeapID heapID);
static void FreeSprites(FormDisplayBox *formDisplayBox);
static void DisplaySpecies(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData);
static void DisplayNextFormSprite(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData);
static void DisplayPokemonSprites(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int species, int formCategory, int formIndex, int spriteIndex);
static void DisplaySpeciesSprites(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int species, int formIndex, int spriteIndex);
static void DisplayBurmySprites(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int species, int formIndex, int spriteIndex);
static void DisplayWormadamSprites(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int species, int formIndex, int spriteIndex);
static void DisplayShellosSprites(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int species, int formIndex, int spriteIndex);
static void DisplayGastrodonSprites(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int species, int formIndex, int spriteIndex);
static void DisplayUnownSprites(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int species, int formIndex, int spriteIndex);
static void DisplayDeoxysSprites(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int species, int formIndex, int spriteIndex);
static void DisplayShayminSprites(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int species, int formIndex, int spriteIndex);
static void DisplayGiratinaSprites(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int species, int formIndex, int spriteIndex);
static void DisplayRotomSprites(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int species, int formIndex, int spriteIndex);
static void SpriteEndXY(int spriteIndex, int *x, int *y);
static void HidePokemonSprite(FormMainGraphics *formMainGraphics);
static void LoadBoxText(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData, enum HeapID heapID, int formCategory, int formIndex);
static void DisplayNextFormText(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData, enum HeapID heapID, int formCategory, int formIndex);
static void DisplayFormText(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData, enum HeapID heapID, int formCategory, int formIndex, int spriteIndex, int textIndex);
static int SpeciesGenderMessage(FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int formIndex);
static int SpeciesMaleMessage(FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int formIndex);
static int SpeciesFemaleMessage(FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int formIndex);
static int BlankMessage(FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int formIndex);
static int BurmyFormMessage(FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int formIndex);
static int WormadamFormMessage(FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int formIndex);
static int ShellosFormMessage(FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int formIndex);
static int GastrodonFormMessage(FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int formIndex);
static int UnownFormMessage(FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int formIndex);
static int DeoxysFormMessage(FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int formIndex);
static int ShayminFormMessage(FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int formIndex);
static int GiratinaFormMessage(FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int formIndex);
static int RotomFormMessage(FormMainGraphics *parformMainGraphicsam0, const FormMainData *formMainData, int formIndex);
static int FormMessageID(FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int formCategory, int formIndex);
static void FreeTextData(FormDisplayBox *formDisplayBox);
static void ResetArrow(FormDisplayBox *formDisplayBox);
static void AdvanceArrow(FormDisplayBox *formDisplayBox);

void FormMain_Init(PokedexScreenManager *screenMan, PokedexApp *pokedexApp, enum HeapID heapID)
{
    FormMainData *formMainData = LoadAppData(heapID, pokedexApp);
    FormMainGraphics *formMainGraphics = LoadAppGraphics(heapID, pokedexApp);

    screenMan->pageData = formMainData;
    screenMan->pageGraphics = formMainGraphics;
    screenMan->screenStates = NULL;
    screenMan->numStates = NumStates();

    screenMan->dataFunc[0] = FormMainDataEnter;
    screenMan->dataFunc[1] = FormMainDataUpdate;
    screenMan->dataFunc[2] = FormMainDataExit;
    screenMan->graphicsFunc[0] = FormMainGraphicsEnter;
    screenMan->graphicsFunc[1] = FormMainGraphicsUpdate;
    screenMan->graphicsFunc[2] = FormMainGraphicsExit;
}

void FormMain_Free(PokedexScreenManager *screenMan)
{
    FreeFormMainData(screenMan->pageData);
    FreeFormMainGraphics(screenMan->pageGraphics);
}

BOOL FormMain_NextForm(PokedexScreenManager *screenMan, int formDelta)
{
    FormMainData *formMainData = screenMan->pageData;
    FormMainGraphics *formMainGraphics = screenMan->pageGraphics;

    if (formMainGraphics->boxMoving == TRUE) {
        return FALSE;
    }

    int previousFormIndex = formMainData->formIndex;
    formMainData->formIndex = NextFormIndex(formMainData->formCategory, formMainData->formIndex, formDelta, formMainData->numFormsSeen);

    if (previousFormIndex != formMainData->formIndex) {
        return TRUE;
    }

    return FALSE;
}

static FormMainData *LoadAppData(enum HeapID heapID, PokedexApp *pokedexApp)
{
    FormMainData *formMainData = Heap_Alloc(heapID, sizeof(FormMainData));

    GF_ASSERT(formMainData);
    memset(formMainData, 0, sizeof(FormMainData));

    formMainData->unk_00 = ov21_021D138C(pokedexApp);
    formMainData->sortData = PokedexMain_GetSortData(pokedexApp);
    formMainData->mainScreen = ov21_021D1410(pokedexApp, 5);

    return formMainData;
}

static FormMainGraphics *LoadAppGraphics(enum HeapID heapID, PokedexApp *pokedexApp)
{
    FormMainGraphics *formMainGraphics = Heap_Alloc(heapID, sizeof(FormMainGraphics));

    GF_ASSERT(formMainGraphics);
    memset(formMainGraphics, 0, sizeof(FormMainGraphics));

    formMainGraphics->graphicData = PokedexMain_GetGraphicData(pokedexApp);

    return formMainGraphics;
}

static void FreeFormMainData(FormMainData *formMainData)
{
    GF_ASSERT(formMainData);
    Heap_Free(formMainData);
}

static void FreeFormMainGraphics(FormMainGraphics *formMainGraphics)
{
    GF_ASSERT(formMainGraphics);
    Heap_Free(formMainGraphics);
}

static int NumStates(void)
{
    return 0;
}

static inline int CalcNextFormIndex(int formIndex, int numFormsSeen, int formDelta)
{
    int newFormIndex;

    if (formDelta > 0) {
        if (formIndex + formDelta < numFormsSeen) {
            newFormIndex = formIndex + formDelta;
        } else {
            newFormIndex = 0;
        }
    } else {
        if (formIndex + formDelta >= 0) {
            newFormIndex = formDelta;
        } else {
            newFormIndex = numFormsSeen - 1;
        }
    }

    return newFormIndex;
}

static int NextFormIndex(int formCategory, int formIndex, int formDelta, int numFormsSeen)
{
    return CalcNextFormIndex(formIndex, numFormsSeen, formDelta);
}

static BOOL FormMainDataEnter(PokedexDataManager *dataMan, void *data)
{
    FormMainData *formMainData = data;
    enum Species species = PokedexSort_CurrentSpecies(formMainData->sortData);

    formMainData->formCategory = SpeciesFormCategory(species, formMainData);
    formMainData->numFormsSeen = NumberFormsSeen(species, formMainData);
    formMainData->formIndex = 0;

    return TRUE;
}

static BOOL FormMainDataUpdate(PokedexDataManager *dataMan, void *data)
{
    return dataMan->exit == TRUE;
}

static BOOL FormMainDataExit(PokedexDataManager *dataMan, void *data)
{
    return TRUE;
}

static BOOL FormMainGraphicsEnter(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const FormMainData *formMainData = data;
    FormMainGraphics *formMainGraphics = graphics;
    FormDisplayBox *formDisplayBox = graphicsMan->pageGraphics;

    switch (graphicsMan->state) {
    case 0:
        graphicsMan->pageGraphics = Heap_Alloc(graphicsMan->heapID, sizeof(FormDisplayBox));
        memset(graphicsMan->pageGraphics, 0, sizeof(FormDisplayBox));
        formDisplayBox = graphicsMan->pageGraphics;
        formDisplayBox->formCategory = formMainData->formCategory;
        formMainGraphics->boxMoving = FALSE;
        formMainGraphics->boxStationary = FALSE;
        graphicsMan->state++;
        break;
    case 1:
        LoadGraphics(formDisplayBox, formMainGraphics, formMainData, graphicsMan->heapID);
        InitBlendTransition(formDisplayBox, formMainGraphics, formMainData, TRUE);
        graphicsMan->state++;
        break;
    case 2:
        if (AdvanceBlendTransition(formDisplayBox, formMainGraphics, formMainData, TRUE)) {
            graphicsMan->state++;
        }
        break;
    case 3:
        G2_BlendNone();
        return TRUE;
    default:
        break;
    }

    return FALSE;
}

static BOOL FormMainGraphicsUpdate(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const FormMainData *formMainData = data;
    FormMainGraphics *formMainGraphics = graphics;
    FormDisplayBox *formDisplayBox = graphicsMan->pageGraphics;

    switch (graphicsMan->state) {
    case 0:
        if (formMainData->formIndex != formDisplayBox->formIndex) {
            formDisplayBox->formIndex = formMainData->formIndex;
            formDisplayBox->boxIndex = (formDisplayBox->boxIndex + 1) % 2;
            InitBoxTransform(formDisplayBox, formMainGraphics);
            ResetArrow(formDisplayBox);
            formMainGraphics->boxMoving = TRUE;
            Sound_PlayEffect(SEQ_SE_DP_DENSI06);
            graphicsMan->state++;
        }
        break;
    case 1:
        if (AdvanceBoxTransform(formDisplayBox, formMainGraphics) == TRUE) {
            formMainGraphics->boxStationary = TRUE;
            graphicsMan->state++;
        }
        break;
    case 2:
        if (formMainGraphics->boxStationary == TRUE) {
            DisplayNextFormText(formDisplayBox, formMainGraphics, formMainData, graphicsMan->heapID, formMainData->formCategory, formMainData->formIndex);
            DisplayNextFormSprite(formDisplayBox, formMainGraphics, formMainData);
            formMainGraphics->boxStationary = FALSE;
            formMainGraphics->boxMoving = FALSE;
            graphicsMan->state = 0;
        }
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    AdvanceArrow(formDisplayBox);

    return FALSE;
}

static BOOL FormMainGraphicsExit(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const FormMainData *formMainData = data;
    FormMainGraphics *formMainGraphics = graphics;
    FormDisplayBox *formDisplayBox = graphicsMan->pageGraphics;

    switch (graphicsMan->state) {
    case 0:
        InitBlendTransition(formDisplayBox, formMainGraphics, formMainData, FALSE);
        graphicsMan->state++;
        break;
    case 1:
        if (AdvanceBlendTransition(formDisplayBox, formMainGraphics, formMainData, FALSE)) {
            graphicsMan->state++;
        }
        break;
    case 2:
        FreeGraphics(formDisplayBox, formMainGraphics);
        graphicsMan->state++;
        break;
    case 3:
        Heap_Free(graphicsMan->pageGraphics);
        graphicsMan->state++;
        break;
    case 4:
        return TRUE;
    default:
        break;
    }

    return FALSE;
}

static void LoadGraphics(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData, enum HeapID heapID)
{
    DisplaySpecies(formDisplayBox, formMainGraphics, formMainData);
    LoadBoxSpriteResources(formDisplayBox, formMainGraphics, heapID);
    LoadBackgroundTilemaps(formMainGraphics, heapID);
    AnimateSprites(formDisplayBox, formMainGraphics, formMainData, heapID);
    LoadBoxText(formDisplayBox, formMainGraphics, formMainData, heapID, formMainData->formCategory, formMainData->formIndex);
}

static void FreeGraphics(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics)
{
    FreeTextData(formDisplayBox);
    FreeSprites(formDisplayBox);
    FreeBoxSpriteResources(formDisplayBox, formMainGraphics);
}

static void LoadBackgroundTilemaps(FormMainGraphics *formMainGraphics, enum HeapID heapID)
{
    NNSG2dScreenData *screenData;

    PokedexGraphics_LoadGraphicNarcCharacterData(formMainGraphics->graphicData, entry_main_NCGR_lz, formMainGraphics->graphicData->bgConfig, BG_LAYER_MAIN_3, 0, 0, TRUE, heapID);

    void *tilemap = PokedexGraphics_GetGraphicNarcTilemapData(formMainGraphics->graphicData, info_main_NSCR_lz, TRUE, &screenData, heapID);

    Bg_LoadToTilemapRect(formMainGraphics->graphicData->bgConfig, BG_LAYER_MAIN_3, screenData->rawData, 0, 0, screenData->screenWidth / 8, screenData->screenHeight / 8);
    Heap_Free(tilemap);
    Bg_ScheduleTilemapTransfer(formMainGraphics->graphicData->bgConfig, BG_LAYER_MAIN_3);
}

static void DisplaySpecies(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData)
{
    enum Species species = PokedexSort_CurrentSpecies(formMainData->sortData);

    DisplayPokemonSprites(formDisplayBox, formMainGraphics, formMainData, species, formMainData->formCategory, formMainData->formIndex, SPRITEINDEX_CURRENT_FRONT);

    int nextFormIndex = NextFormIndex(formMainData->formCategory, formMainData->formIndex, 1, formMainData->numFormsSeen);
    DisplayPokemonSprites(formDisplayBox, formMainGraphics, formMainData, species, formMainData->formCategory, nextFormIndex, SPRITEINDEX_PREVIOUS_FRONT);

    for (int spriteIndex = 0; spriteIndex < NUM_VISIBLE_SPRITES; spriteIndex++) {
        PokedexGraphics_SetPokemonSpriteHide(formMainGraphics->graphicData, TRUE, spriteIndex);
    }
}

static void DisplayNextFormSprite(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData)
{
    enum Species species = PokedexSort_CurrentSpecies(formMainData->sortData);
    int nextFormIndex = NextFormIndex(formMainData->formCategory, formMainData->formIndex, 1, formMainData->numFormsSeen);
    DisplayPokemonSprites(formDisplayBox, formMainGraphics, formMainData, species, formMainData->formCategory, nextFormIndex, SPRITEINDEX_PREVIOUS_FRONT);
}

static void DisplayPokemonSprites(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int species, int formCategory, int formIndex, int spriteIndex)
{
    GF_ASSERT(spriteIndex <= 2);

    switch (formCategory) {
    case FORMCATEGORY_GENDER:
    case FORMCATEGORY_MALE_ONLY:
    case FORMCATEGORY_FEMALE_ONLY:
    case FORMCATEGORY_GENDERLESS:
        DisplaySpeciesSprites(formDisplayBox, formMainGraphics, formMainData, species, formIndex, spriteIndex);
        break;
    case FORMCATEGORY_BURMY:
        DisplayBurmySprites(formDisplayBox, formMainGraphics, formMainData, species, formIndex, spriteIndex);
        break;
    case FORMCATEGORY_WORMADAM:
        DisplayWormadamSprites(formDisplayBox, formMainGraphics, formMainData, species, formIndex, spriteIndex);
        break;
    case FORMCATEGORY_SHELLOS:
        DisplayShellosSprites(formDisplayBox, formMainGraphics, formMainData, species, formIndex, spriteIndex);
        break;
    case FORMCATEGORY_GASTRODON:
        DisplayGastrodonSprites(formDisplayBox, formMainGraphics, formMainData, species, formIndex, spriteIndex);
        break;
    case FORMCATEGORY_UNOWN:
        DisplayUnownSprites(formDisplayBox, formMainGraphics, formMainData, species, formIndex, spriteIndex);
        break;
    case FORMCATEGORY_DEOXYS:
        DisplayDeoxysSprites(formDisplayBox, formMainGraphics, formMainData, species, formIndex, spriteIndex);
        break;
    case FORMCATEGORY_SHAYMIN:
        DisplayShayminSprites(formDisplayBox, formMainGraphics, formMainData, species, formIndex, spriteIndex);
        break;
    case FORMCATEGORY_GIRATINA:
        DisplayGiratinaSprites(formDisplayBox, formMainGraphics, formMainData, species, formIndex, spriteIndex);
        break;
    case FORMCATEGORY_ROTOM:
        DisplayRotomSprites(formDisplayBox, formMainGraphics, formMainData, species, formIndex, spriteIndex);
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }
}

static void HidePokemonSprite(FormMainGraphics *formMainGraphics)
{
    for (int spriteIndex = 0; spriteIndex < NUM_VISIBLE_SPRITES; spriteIndex++) {
        PokedexGraphics_SetPokemonSpriteHide(formMainGraphics->graphicData, FALSE, spriteIndex);
    }
}

static void LoadBoxSpriteResources(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, enum HeapID heapID)
{
    PokedexGraphicData *graphicData = formMainGraphics->graphicData;
    NARC *narc = PokedexGraphics_GetNARC(formMainGraphics->graphicData);

    formDisplayBox->spriteResource[SPRITE_RESOURCE_CHAR] = SpriteResourceCollection_AddTilesFrom(graphicData->spriteResourceCollection[SPRITE_RESOURCE_CHAR], narc, form_display_box_NCGR_lz, TRUE, form_display_box_NCGR_lz + FORMMAIN_GRAPHIC_ID, NNS_G2D_VRAM_TYPE_2DMAIN, heapID);

    SpriteTransfer_RequestCharAtEnd(formDisplayBox->spriteResource[SPRITE_RESOURCE_CHAR]);
    SpriteResource_ReleaseData(formDisplayBox->spriteResource[SPRITE_RESOURCE_CHAR]);

    formDisplayBox->spriteResource[SPRITE_RESOURCE_PLTT] = SpriteResourceCollection_AddPaletteFrom(graphicData->spriteResourceCollection[SPRITE_RESOURCE_PLTT], narc, form_display_box_NCLR, FALSE, form_display_box_NCLR + FORMMAIN_GRAPHIC_ID, NNS_G2D_VRAM_TYPE_2DMAIN, 1, heapID);

    SpriteTransfer_RequestPlttFreeSpace(formDisplayBox->spriteResource[SPRITE_RESOURCE_PLTT]);
    SpriteResource_ReleaseData(formDisplayBox->spriteResource[SPRITE_RESOURCE_PLTT]);

    formDisplayBox->spriteResource[SPRITE_RESOURCE_CELL] = SpriteResourceCollection_AddFrom(graphicData->spriteResourceCollection[SPRITE_RESOURCE_CELL], narc, form_display_box_cell_NCER_lz, TRUE, form_display_box_cell_NCER_lz + FORMMAIN_GRAPHIC_ID, SPRITE_RESOURCE_CELL, heapID);
    formDisplayBox->spriteResource[SPRITE_RESOURCE_ANIM] = SpriteResourceCollection_AddFrom(graphicData->spriteResourceCollection[SPRITE_RESOURCE_ANIM], narc, form_display_box_anim_NANR_lz, TRUE, form_display_box_anim_NANR_lz + FORMMAIN_GRAPHIC_ID, SPRITE_RESOURCE_ANIM, heapID);
}

static void FreeBoxSpriteResources(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics)
{
    PokedexGraphicData *graphicData = formMainGraphics->graphicData;

    SpriteTransfer_ResetCharTransfer(formDisplayBox->spriteResource[SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_ResetPlttTransfer(formDisplayBox->spriteResource[SPRITE_RESOURCE_PLTT]);
    SpriteResourceCollection_Remove(graphicData->spriteResourceCollection[SPRITE_RESOURCE_CHAR], formDisplayBox->spriteResource[SPRITE_RESOURCE_CHAR]);
    SpriteResourceCollection_Remove(graphicData->spriteResourceCollection[SPRITE_RESOURCE_PLTT], formDisplayBox->spriteResource[SPRITE_RESOURCE_PLTT]);
    SpriteResourceCollection_Remove(graphicData->spriteResourceCollection[SPRITE_RESOURCE_CELL], formDisplayBox->spriteResource[SPRITE_RESOURCE_CELL]);
    SpriteResourceCollection_Remove(graphicData->spriteResourceCollection[SPRITE_RESOURCE_ANIM], formDisplayBox->spriteResource[SPRITE_RESOURCE_ANIM]);
}

static void AnimateSprites(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData, enum HeapID heapID)
{
    SpriteResourcesHeader spriteResourcesHeader;
    SpriteListTemplate spriteListTemplate;
    PokedexGraphicData *graphicData = formMainGraphics->graphicData;
    int x, y;

    SpriteResourcesHeader_Init(&spriteResourcesHeader, form_display_box_NCGR_lz + FORMMAIN_GRAPHIC_ID, form_display_box_NCLR + FORMMAIN_GRAPHIC_ID, form_display_box_cell_NCER_lz + FORMMAIN_GRAPHIC_ID, form_display_box_anim_NANR_lz + FORMMAIN_GRAPHIC_ID, 0xffffffff, 0xffffffff, FALSE, 3, graphicData->spriteResourceCollection[SPRITE_RESOURCE_CHAR], graphicData->spriteResourceCollection[SPRITE_RESOURCE_PLTT], graphicData->spriteResourceCollection[SPRITE_RESOURCE_CELL], graphicData->spriteResourceCollection[SPRITE_RESOURCE_ANIM], NULL, NULL);

    spriteListTemplate.list = graphicData->spriteList;
    spriteListTemplate.resourceData = &spriteResourcesHeader;
    spriteListTemplate.priority = 32;
    spriteListTemplate.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    spriteListTemplate.heapID = heapID;
    spriteListTemplate.position.x = 0;
    spriteListTemplate.position.y = 0;

    for (int spriteIndex = 0; spriteIndex < NUM_VISIBLE_SPRITES; spriteIndex++) {
        SpriteEndXY(spriteIndex, &x, &y);
        spriteListTemplate.position.x = x << FX32_SHIFT;
        spriteListTemplate.position.y = (y + 8) << FX32_SHIFT;

        formDisplayBox->boxSprite[spriteIndex] = SpriteList_Add(&spriteListTemplate);

        if (spriteIndex % 2 == 0) {
            Sprite_SetAnim(formDisplayBox->boxSprite[spriteIndex], 0);
        } else {
            Sprite_SetAnim(formDisplayBox->boxSprite[spriteIndex], 2);
        }
    }

    spriteListTemplate.position.x = ARROW_X << FX32_SHIFT;
    spriteListTemplate.position.y = ARROW_Y << FX32_SHIFT;
    spriteListTemplate.priority = 0;

    formDisplayBox->arrowSprite = SpriteList_Add(&spriteListTemplate);

    Sprite_SetAnim(formDisplayBox->arrowSprite, 1);
    Sprite_SetAnimateFlag(formDisplayBox->arrowSprite, 1);
    Sprite_SetExplicitPriority(formDisplayBox->arrowSprite, 0);

    if (formMainData->numFormsSeen <= 1) {
        Sprite_SetDrawFlag(formDisplayBox->arrowSprite, FALSE);
    }
}

static void FreeSprites(FormDisplayBox *formDisplayBox)
{
    for (int spriteIndex = 0; spriteIndex < NUM_VISIBLE_SPRITES; spriteIndex++) {
        Sprite_Delete(formDisplayBox->boxSprite[spriteIndex]);
    }

    Sprite_Delete(formDisplayBox->arrowSprite);
}

static void InitBlendTransition(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData, BOOL isEntering)
{
    SetSpriteOAMModesXLU(formDisplayBox);

    if (ov21_021E2A54(formMainData->mainScreen)) {
        if (isEntering) {
            PokedexGraphics_InitBlendTransition(&formMainGraphics->graphicData->blendMain, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), GX_BLEND_PLANEMASK_BG3, 0);
        } else {
            PokedexGraphics_InitBlendTransition(&formMainGraphics->graphicData->blendMain, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), GX_BLEND_PLANEMASK_BG3, 0);
        }
    }

    BlendPokemonSprite(formMainGraphics);
}

static BOOL AdvanceBlendTransition(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData, BOOL isEntering)
{
    BOOL transitionComplete;

    if (ov21_021E2A54(formMainData->mainScreen)) {
        transitionComplete = PokedexGraphics_TakeBlendTransitionStep(&formMainGraphics->graphicData->blendMain);
    } else {
        transitionComplete = PokedexGraphics_BlendTransitionComplete(&formMainGraphics->graphicData->blendMain);
    }

    if (transitionComplete == TRUE) {
        if (isEntering == TRUE) {
            SetSpriteOAMModesNormal(formDisplayBox);
        } else {
            HidePokemonSprite(formMainGraphics);
        }
    } else {
        BlendPokemonSprite(formMainGraphics);
    }

    return transitionComplete;
}

static void SetSpriteOAMModesXLU(FormDisplayBox *formDisplayBox)
{
    int i;

    for (i = 0; i < NUM_VISIBLE_SPRITES; i++) {
        Sprite_SetExplicitOAMMode(formDisplayBox->boxSprite[i], GX_OAM_MODE_XLU);
    }

    Sprite_SetExplicitOAMMode(formDisplayBox->arrowSprite, GX_OAM_MODE_XLU);

    for (i = 0; i < 2; i++) {
        sub_02012AF0(formDisplayBox->textData[i]->fontOAM, GX_OAM_MODE_XLU);
    }
}

static void SetSpriteOAMModesNormal(FormDisplayBox *formDisplayBox)
{
    int i;

    for (i = 0; i < NUM_VISIBLE_SPRITES; i++) {
        Sprite_SetExplicitOAMMode(formDisplayBox->boxSprite[i], GX_OAM_MODE_NORMAL);
    }

    Sprite_SetExplicitOAMMode(formDisplayBox->arrowSprite, GX_OAM_MODE_NORMAL);

    for (i = 0; i < 2; i++) {
        sub_02012AF0(formDisplayBox->textData[i]->fontOAM, GX_OAM_MODE_NORMAL);
    }
}

static void BlendPokemonSprite(FormMainGraphics *formMainGraphics)
{
    for (int spriteIndex = 0; spriteIndex < NUM_VISIBLE_SPRITES; spriteIndex++) {
        PokedexGraphics_BlendPokemonSprite(formMainGraphics->graphicData, &formMainGraphics->graphicData->blendMain, spriteIndex);
    }
}

static void InitBoxTransform(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics)
{
    for (int spriteIndex = 0; spriteIndex < NUM_VISIBLE_SPRITES; spriteIndex++) {
        InitBoxResourceTypeTransform(formDisplayBox, formMainGraphics, -HW_LCD_WIDTH, 0, spriteIndex);
    }
}

static BOOL AdvanceBoxTransform(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics)
{
    int i;
    BOOL transformComplete;

    if (formMainGraphics->boxMoving == FALSE) {
        return TRUE;
    }

    for (i = 0; i < NUM_VISIBLE_SPRITES; i++) {
        transformComplete = BoxTransformStep(formDisplayBox, formMainGraphics, i);
    }

    for (i = 0; i < 2; i++) {
        sub_02012938(formDisplayBox->textData[i]->fontOAM);
    }

    return transformComplete;
}

static void InitBoxResourceTypeTransform(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, int xOffset, int yOffset, int spriteIndex)
{
    int centerX;
    int centerY;
    int x;
    int y;
    int newSpriteIndex = SwapSpriteIndex(formDisplayBox->boxIndex, spriteIndex);

    SpriteEndXY(spriteIndex, &x, &y);
    PokemonGraphics_GetSpriteCenterXY(formMainGraphics->graphicData, &centerX, &centerY, newSpriteIndex);
    PokedexGraphics_InitTransformation(&formDisplayBox->formBoxTransformation[spriteIndex], x + xOffset, x, y + yOffset, y, TRANSITION_FRAMES);

    formDisplayBox->deltaY[spriteIndex] = centerY - y;
}

static BOOL BoxTransformStep(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, int spriteIndex)
{
    VecFx32 position;
    enum SpriteResourceType spriteResourceType = SwapSpriteIndex(formDisplayBox->boxIndex, spriteIndex);

    BOOL transformComplete = PokedexGraphics_TakeTransformStep(&formDisplayBox->formBoxTransformation[spriteIndex]);
    PokemonGraphics_SetSpriteCenterXY(formMainGraphics->graphicData, formDisplayBox->formBoxTransformation[spriteIndex].currentX, formDisplayBox->formBoxTransformation[spriteIndex].currentY + formDisplayBox->deltaY[spriteIndex], spriteResourceType);

    position.x = formDisplayBox->formBoxTransformation[spriteIndex].currentX << FX32_SHIFT;
    position.y = (formDisplayBox->formBoxTransformation[spriteIndex].currentY + 8) << FX32_SHIFT;

    Sprite_SetPosition(formDisplayBox->boxSprite[spriteResourceType], &position);

    return transformComplete;
}

static int SpeciesFormCategory(enum Species species, const FormMainData *formMainData)
{
    switch (species) {
    case SPECIES_UNOWN:
        return FORMCATEGORY_UNOWN;
    case SPECIES_SHELLOS:
        return FORMCATEGORY_SHELLOS;
    case SPECIES_GASTRODON:
        return FORMCATEGORY_GASTRODON;
    case SPECIES_BURMY:
        return FORMCATEGORY_BURMY;
    case SPECIES_WORMADAM:
        return FORMCATEGORY_WORMADAM;
    case SPECIES_DEOXYS:
        return FORMCATEGORY_DEOXYS;
    case SPECIES_SHAYMIN:
        return FORMCATEGORY_SHAYMIN;
    case SPECIES_GIRATINA:
        return FORMCATEGORY_GIRATINA;
    case SPECIES_ROTOM:
        return FORMCATEGORY_ROTOM;
    default:
        break;
    }

    return SpeciesGenderFormCategory(species, formMainData);
}

static int NumberFormsSeen(enum Species species, const FormMainData *formMainData)
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
        return PokedexSort_NumFormsSeen(formMainData->sortData, species);
    default:
        break;
    }

    return PokedexSort_NumGendersVisible(formMainData->sortData, species);
}

static int SpeciesGenderFormCategory(enum Species species, const FormMainData *formMainData)
{
    enum GenderRatio genderRatio = SpeciesData_GetSpeciesValue(species, SPECIES_DATA_GENDER_RATIO);

    if (genderRatio == GENDER_RATIO_MALE_ONLY) {
        return FORMCATEGORY_MALE_ONLY;
    }

    if (genderRatio == GENDER_RATIO_FEMALE_ONLY) {
        return FORMCATEGORY_FEMALE_ONLY;
    }

    if (genderRatio == GENDER_RATIO_NO_GENDER) {
        return FORMCATEGORY_GENDERLESS;
    }

    if (PokedexSort_NumGendersVisible(formMainData->sortData, species) == 1) {
        genderRatio = PokedexSort_Gender(formMainData->sortData, species, 0);
        GF_ASSERT(genderRatio != -1);

        if (genderRatio == GENDER_RATIO_MALE_ONLY) {
            return FORMCATEGORY_MALE_ONLY;
        }

        if (genderRatio == GENDER_RATIO_FEMALE_ONLY) {
            return FORMCATEGORY_FEMALE_ONLY;
        }

        if (genderRatio == GENDER_RATIO_NO_GENDER) {
            return FORMCATEGORY_GENDERLESS;
        }
    }

    return FORMCATEGORY_GENDER;
}

static void DisplaySpeciesSprites(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int species, int formIndex, int spriteIndex)
{
    int x, y;

    SpriteEndXY(spriteIndex, &x, &y);

    int newSpriteIndex = SwapSpriteIndex(formDisplayBox->boxIndex, spriteIndex);
    int gender = PokedexMain_DisplaySpeciesSprite(formMainGraphics->graphicData, formMainData->sortData, species, FACE_FRONT, x, y, formIndex, newSpriteIndex);
    GF_ASSERT(gender != -1);

    SpriteEndXY(spriteIndex + 1, &x, &y);

    newSpriteIndex = SwapSpriteIndex(formDisplayBox->boxIndex, spriteIndex + 1);
    gender = PokedexMain_DisplaySpeciesSprite(formMainGraphics->graphicData, formMainData->sortData, species, FACE_BACK, x, y, formIndex, newSpriteIndex);
    GF_ASSERT(gender != -1);
}

static void DisplayBurmySprites(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int species, int formIndex, int spriteIndex)
{
    int x, y;
    SpriteEndXY(spriteIndex, &x, &y);

    int newSpriteIndex = SwapSpriteIndex(formDisplayBox->boxIndex, spriteIndex);
    int form = PokedexMain_DisplayBurmySprite(formMainGraphics->graphicData, formMainData->sortData, FACE_FRONT, x, y, formIndex, newSpriteIndex);
    GF_ASSERT(form != -1);

    SpriteEndXY(spriteIndex + 1, &x, &y);

    newSpriteIndex = SwapSpriteIndex(formDisplayBox->boxIndex, spriteIndex + 1);
    form = PokedexMain_DisplayBurmySprite(formMainGraphics->graphicData, formMainData->sortData, FACE_BACK, x, y, formIndex, newSpriteIndex);
    GF_ASSERT(form != -1);
}

static void DisplayWormadamSprites(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int species, int formIndex, int spriteIndex)
{
    int x, y;
    SpriteEndXY(spriteIndex, &x, &y);

    int newSpriteIndex = SwapSpriteIndex(formDisplayBox->boxIndex, spriteIndex);
    int form = PokedexMain_DisplayWormadamSprite(formMainGraphics->graphicData, formMainData->sortData, FACE_FRONT, x, y, formIndex, newSpriteIndex);
    GF_ASSERT(form != -1);

    SpriteEndXY(spriteIndex + 1, &x, &y);

    newSpriteIndex = SwapSpriteIndex(formDisplayBox->boxIndex, spriteIndex + 1);
    form = PokedexMain_DisplayWormadamSprite(formMainGraphics->graphicData, formMainData->sortData, FACE_BACK, x, y, formIndex, newSpriteIndex);
    GF_ASSERT(form != -1);
}

static void DisplayShellosSprites(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int species, int formIndex, int spriteIndex)
{
    int x, y;
    SpriteEndXY(spriteIndex, &x, &y);

    int newSpriteIndex = SwapSpriteIndex(formDisplayBox->boxIndex, spriteIndex);
    int form = PokedexMain_DisplayShellosSprite(formMainGraphics->graphicData, formMainData->sortData, FACE_FRONT, x, y, formIndex, newSpriteIndex);
    GF_ASSERT(form != -1);

    SpriteEndXY(spriteIndex + 1, &x, &y);

    newSpriteIndex = SwapSpriteIndex(formDisplayBox->boxIndex, spriteIndex + 1);
    form = PokedexMain_DisplayShellosSprite(formMainGraphics->graphicData, formMainData->sortData, FACE_BACK, x, y, formIndex, newSpriteIndex);
    GF_ASSERT(form != -1);
}

static void DisplayGastrodonSprites(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int species, int formIndex, int spriteIndex)
{
    int x, y;
    SpriteEndXY(spriteIndex, &x, &y);

    int newSpriteIndex = SwapSpriteIndex(formDisplayBox->boxIndex, spriteIndex);
    int form = PokedexMain_DisplayGastrodonSprite(formMainGraphics->graphicData, formMainData->sortData, FACE_FRONT, x, y, formIndex, newSpriteIndex);
    GF_ASSERT(form != -1);

    SpriteEndXY(spriteIndex + 1, &x, &y);

    newSpriteIndex = SwapSpriteIndex(formDisplayBox->boxIndex, spriteIndex + 1);
    form = PokedexMain_DisplayGastrodonSprite(formMainGraphics->graphicData, formMainData->sortData, FACE_BACK, x, y, formIndex, newSpriteIndex);
    GF_ASSERT(form != -1);
}

static void DisplayUnownSprites(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int species, int formIndex, int spriteIndex)
{
    int x, y;
    SpriteEndXY(spriteIndex, &x, &y);

    int newSpriteIndex = SwapSpriteIndex(formDisplayBox->boxIndex, spriteIndex);
    int form = PokedexMain_DisplayUnownSprite(formMainGraphics->graphicData, formMainData->sortData, FACE_FRONT, x, y, formIndex, newSpriteIndex);
    GF_ASSERT(form != -1);

    SpriteEndXY(spriteIndex + 1, &x, &y);

    newSpriteIndex = SwapSpriteIndex(formDisplayBox->boxIndex, spriteIndex + 1);
    form = PokedexMain_DisplayUnownSprite(formMainGraphics->graphicData, formMainData->sortData, FACE_BACK, x, y, formIndex, newSpriteIndex);
    GF_ASSERT(form != -1);
}

static void DisplayDeoxysSprites(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int species, int formIndex, int spriteIndex)
{
    int x, y;
    SpriteEndXY(spriteIndex, &x, &y);

    int newSpriteIndex = SwapSpriteIndex(formDisplayBox->boxIndex, spriteIndex);
    int form = PokedexMain_DisplayDeoxysSprite(formMainGraphics->graphicData, formMainData->sortData, FACE_FRONT, x, y, formIndex, newSpriteIndex);
    GF_ASSERT(form != 15);

    SpriteEndXY(spriteIndex + 1, &x, &y);

    newSpriteIndex = SwapSpriteIndex(formDisplayBox->boxIndex, spriteIndex + 1);
    form = PokedexMain_DisplayDeoxysSprite(formMainGraphics->graphicData, formMainData->sortData, FACE_BACK, x, y, formIndex, newSpriteIndex);
    GF_ASSERT(form != 15);
}

static void DisplayShayminSprites(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int species, int formIndex, int spriteIndex)
{
    int x, y;
    SpriteEndXY(spriteIndex, &x, &y);

    int newSpriteIndex = SwapSpriteIndex(formDisplayBox->boxIndex, spriteIndex);
    int form = PokedexMain_DisplayShayminSprite(formMainGraphics->graphicData, formMainData->sortData, FACE_FRONT, x, y, formIndex, newSpriteIndex);
    GF_ASSERT(form != -1);

    SpriteEndXY(spriteIndex + 1, &x, &y);

    newSpriteIndex = SwapSpriteIndex(formDisplayBox->boxIndex, spriteIndex + 1);
    form = PokedexMain_DisplayShayminSprite(formMainGraphics->graphicData, formMainData->sortData, FACE_BACK, x, y, formIndex, newSpriteIndex);
    GF_ASSERT(form != -1);
}

static void DisplayGiratinaSprites(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int species, int formIndex, int spriteIndex)
{
    int x, y;
    SpriteEndXY(spriteIndex, &x, &y);

    int newSpriteIndex = SwapSpriteIndex(formDisplayBox->boxIndex, spriteIndex);
    int form = PokedexMain_DisplayGiratinaSprite(formMainGraphics->graphicData, formMainData->sortData, FACE_FRONT, x, y, formIndex, newSpriteIndex);
    GF_ASSERT(form != -1);

    SpriteEndXY(spriteIndex + 1, &x, &y);

    newSpriteIndex = SwapSpriteIndex(formDisplayBox->boxIndex, spriteIndex + 1);
    form = PokedexMain_DisplayGiratinaSprite(formMainGraphics->graphicData, formMainData->sortData, FACE_BACK, x, y, formIndex, newSpriteIndex);
    GF_ASSERT(form != -1);
}

static void DisplayRotomSprites(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int species, int formIndex, int spriteIndex)
{
    int x, y;
    SpriteEndXY(spriteIndex, &x, &y);

    int newSpriteIndex = SwapSpriteIndex(formDisplayBox->boxIndex, spriteIndex);
    int form = PokedexMain_DisplayRotomSprite(formMainGraphics->graphicData, formMainData->sortData, FACE_FRONT, x, y, formIndex, newSpriteIndex);
    GF_ASSERT(form != -1);

    SpriteEndXY(spriteIndex + 1, &x, &y);

    newSpriteIndex = SwapSpriteIndex(formDisplayBox->boxIndex, spriteIndex + 1);
    form = PokedexMain_DisplayRotomSprite(formMainGraphics->graphicData, formMainData->sortData, FACE_BACK, x, y, formIndex, newSpriteIndex);
    GF_ASSERT(form != -1);
}

static void LoadBoxText(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData, enum HeapID heapID, int formCategory, int formIndex)
{
    int newSpriteIndex = SwapSpriteIndex(formDisplayBox->boxIndex, SPRITEINDEX_CURRENT_FRONT);
    DisplayFormText(formDisplayBox, formMainGraphics, formMainData, heapID, formCategory, formIndex, newSpriteIndex, 0);

    int nextFormIndex = NextFormIndex(formCategory, formIndex, 1, formMainData->numFormsSeen);
    newSpriteIndex = SwapSpriteIndex(formDisplayBox->boxIndex, SPRITEINDEX_PREVIOUS_FRONT);
    DisplayFormText(formDisplayBox, formMainGraphics, formMainData, heapID, formCategory, nextFormIndex, newSpriteIndex, 1);
}

static void DisplayNextFormText(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData, enum HeapID heapID, int formCategory, int formIndex)
{
    int nextFormIndex = NextFormIndex(formCategory, formIndex, 1, formMainData->numFormsSeen);
    int newSpriteIndex = SwapSpriteIndex(formDisplayBox->boxIndex, SPRITEINDEX_PREVIOUS_FRONT);
    int textIndex = (formDisplayBox->boxIndex + 1) % 2;

    PokedexTextManager_FreeTextData(formDisplayBox->textData[textIndex]);
    DisplayFormText(formDisplayBox, formMainGraphics, formMainData, heapID, formCategory, nextFormIndex, newSpriteIndex, textIndex);
}

static void DisplayFormText(FormDisplayBox *formDisplayBox, FormMainGraphics *formMainGraphics, const FormMainData *formMainData, enum HeapID heapID, int formCategory, int formIndex, int spriteIndex, int textIndex)
{
    Window *window;
    PokedexDisplayBox displayBox;
    PokedexGraphicData *graphicData = formMainGraphics->graphicData;
    int plttOffset;
    int entryID;

    GF_ASSERT(formDisplayBox->boxSprite[spriteIndex]);

    entryID = FormMessageID(formMainGraphics, formMainData, formCategory, formIndex);

    displayBox.textMan = graphicData->textMan;
    displayBox.paletteProxy = SpriteTransfer_GetPaletteProxy(formDisplayBox->spriteResource[1], NULL);
    displayBox.x = -12;
    displayBox.y = 40;
    displayBox.spriteResourcePriority = 3;
    displayBox.spriteListPriority = 0;
    displayBox.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    displayBox.heapID = heapID;

    plttOffset = PlttTransfer_GetPlttOffset(displayBox.paletteProxy, NNS_G2D_VRAM_TYPE_2DMAIN);
    window = PokedexTextManager_NewWindow(graphicData->textMan, TEXT_WIDTH, TEXT_HEIGHT);

    PokedexTextManager_DisplayMessageTopRight(graphicData->textMan, window, TEXT_BANK_POKEDEX, entryID);

    displayBox.window = window;
    displayBox.sprite = formDisplayBox->boxSprite[spriteIndex];

    formDisplayBox->textData[textIndex] = PokedexTextManager_NextTextData(&displayBox);

    sub_02012A60(formDisplayBox->textData[textIndex]->fontOAM, plttOffset);
    PokedexTextManager_FreeWindow(window);
}

static int SpeciesGenderMessage(FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int formIndex)
{
    int entryID;
    enum Species species = PokedexSort_CurrentSpecies(formMainData->sortData);

    int gender = PokedexSort_Gender(formMainData->sortData, species, formIndex);
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

static int SpeciesMaleMessage(FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int formIndex)
{
    return pl_msg_pokedex_male;
}

static int SpeciesFemaleMessage(FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int formIndex)
{
    return pl_msg_pokedex_female;
}

static int BlankMessage(FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int formIndex)
{
    return pl_msg_pokedex_blank;
}

static int BurmyFormMessage(FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int formIndex)
{
    return pl_msg_pokedex_plantcloak + PokedexSort_BurmyForm(formMainData->sortData, formIndex);
}

static int WormadamFormMessage(FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int formIndex)
{
    return pl_msg_pokedex_plantcloak + PokedexSort_WormadamForm(formMainData->sortData, formIndex);
}

static int ShellosFormMessage(FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int formIndex)
{
    return pl_msg_pokedex_westsea + PokedexSort_ShellosForm(formMainData->sortData, formIndex);
}

static int GastrodonFormMessage(FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int formIndex)
{
    return pl_msg_pokedex_westsea + PokedexSort_GastrodonForm(formMainData->sortData, formIndex);
}

static int UnownFormMessage(FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int formIndex)
{
    return pl_msg_pokedex_oneform;
}

static int DeoxysFormMessage(FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int formIndex)
{
    return pl_msg_pokedex_normalforme + PokedexSort_DeoxysForm(formMainData->sortData, formIndex);
}

static int ShayminFormMessage(FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int formIndex)
{
    return pl_msg_pokedex_landforme + PokedexSort_Form(formMainData->sortData, SPECIES_SHAYMIN, formIndex);
}

static int GiratinaFormMessage(FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int formIndex)
{
    return pl_msg_pokedex_alteredforme + PokedexSort_Form(formMainData->sortData, SPECIES_GIRATINA, formIndex);
}

static int RotomFormMessage(FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int formIndex)
{
    return pl_msg_pokedex_rotom + PokedexSort_Form(formMainData->sortData, SPECIES_ROTOM, formIndex);
}

static inline int SwapSpriteIndex(int boxIndex, int spriteIndex)
{
    if (boxIndex == 0) {
        return spriteIndex;
    }

    spriteIndex -= 2;

    if (spriteIndex < 0) {
        spriteIndex += NUM_VISIBLE_SPRITES;
    }

    return spriteIndex;
}

static void SpriteEndXY(int spriteIndex, int *x, int *y)
{
    int newX = 0;
    int newY = 0;

    switch (spriteIndex) {
    case SPRITEINDEX_CURRENT_BACK:
        newX = SPRITE_X_GAP;
    case SPRITEINDEX_CURRENT_FRONT:
        newX += FRONT_SPRITE_X;
        newY = SPRITE_Y;
        break;
    case SPRITEINDEX_PREVIOUS_BACK:
        newX = SPRITE_X_GAP;
    case SPRITEINDEX_PREVIOUS_FRONT:
        newX += FRONT_SPRITE_X + HW_LCD_WIDTH;
        newY = SPRITE_Y;
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    *x = newX;
    *y = newY;
}

static int FormMessageID(FormMainGraphics *formMainGraphics, const FormMainData *formMainData, int formCategory, int formIndex)
{
    int entryID;

    switch (formCategory) {
    case FORMCATEGORY_GENDER:
        entryID = SpeciesGenderMessage(formMainGraphics, formMainData, formIndex);
        break;
    case FORMCATEGORY_MALE_ONLY:
        entryID = SpeciesMaleMessage(formMainGraphics, formMainData, formIndex);
        break;
    case FORMCATEGORY_FEMALE_ONLY:
        entryID = SpeciesFemaleMessage(formMainGraphics, formMainData, formIndex);
        break;
    case FORMCATEGORY_GENDERLESS:
        entryID = BlankMessage(formMainGraphics, formMainData, formIndex);
        break;
    case FORMCATEGORY_BURMY:
        entryID = BurmyFormMessage(formMainGraphics, formMainData, formIndex);
        break;
    case FORMCATEGORY_WORMADAM:
        entryID = WormadamFormMessage(formMainGraphics, formMainData, formIndex);
        break;
    case FORMCATEGORY_SHELLOS:
        entryID = ShellosFormMessage(formMainGraphics, formMainData, formIndex);
        break;
    case FORMCATEGORY_GASTRODON:
        entryID = GastrodonFormMessage(formMainGraphics, formMainData, formIndex);
        break;
    case FORMCATEGORY_UNOWN:
        entryID = UnownFormMessage(formMainGraphics, formMainData, formIndex);
        break;
    case FORMCATEGORY_DEOXYS:
        entryID = DeoxysFormMessage(formMainGraphics, formMainData, formIndex);
        break;
    case FORMCATEGORY_SHAYMIN:
        entryID = ShayminFormMessage(formMainGraphics, formMainData, formIndex);
        break;
    case FORMCATEGORY_GIRATINA:
        entryID = GiratinaFormMessage(formMainGraphics, formMainData, formIndex);
        break;
    case FORMCATEGORY_ROTOM:
        entryID = RotomFormMessage(formMainGraphics, formMainData, formIndex);
        break;
    default:
        break;
    }

    return entryID;
}

static void FreeTextData(FormDisplayBox *formDisplayBox)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        PokedexTextManager_FreeTextData(formDisplayBox->textData[v0]);
    }
}

static void ResetArrow(FormDisplayBox *formDisplayBox)
{
    Sprite_SetDrawFlag(formDisplayBox->arrowSprite, FALSE);

    formDisplayBox->arrowTimer = TRANSITION_FRAMES + 8;
    formDisplayBox->arrowInvisible = TRUE;
}

static void AdvanceArrow(FormDisplayBox *formDisplayBox)
{
    if (formDisplayBox->arrowInvisible) {
        formDisplayBox->arrowTimer--;

        if (formDisplayBox->arrowTimer <= 0) {
            Sprite_SetDrawFlag(formDisplayBox->arrowSprite, TRUE);
            formDisplayBox->arrowInvisible = FALSE;
        }
    }
}
