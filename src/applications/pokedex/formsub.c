#include "applications/pokedex/formsub.h"

#include <nitro.h>
#include <string.h>

#include "applications/pokedex/formmain.h"
#include "applications/pokedex/ov21_021E29DC.h"
#include "applications/pokedex/pokedex_app.h"
#include "applications/pokedex/pokedex_data_manager.h"
#include "applications/pokedex/pokedex_graphics.h"
#include "applications/pokedex/pokedex_graphics_manager.h"
#include "applications/pokedex/pokedex_main.h"
#include "applications/pokedex/pokedex_sort.h"
#include "applications/pokedex/pokedex_sort_data.h"
#include "applications/pokedex/pokedex_text_manager.h"
#include "applications/pokedex/struct_ov21_021D4660.h"
#include "applications/pokedex/struct_ov21_021E68F4.h"

#include "bg_window.h"
#include "brightness_controller.h"
#include "heap.h"
#include "narc.h"
#include "pltt_transfer.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "system.h"
#include "touch_screen.h"
#include "touch_screen_actions.h"
#include "unk_02012744.h"
#include "vram_transfer.h"

#include "res/graphics/pokedex/zukan.naix"
#include "res/text/bank/pokedex.h"

/*
 * Pokedex Forms Page Sub Screen
 */

// constants used in this file
#define FORMSUB_GRAPHIC_ID 13000
// form button constants
#define BUTTON_X             128
#define BUTTON_Y             144
#define BUTTON_WIDTH         228
#define BUTTON_HEIGHT        64
#define BUTTON_HITBOX_WIDTH  240
#define BUTTON_HITBOX_HEIGHT 80

enum FormSubButtons {
    FORMSUB_ANOTHER = 0,
    MAX_FORMSUBBUTTONS,
};

typedef struct FormSubData {
    int *unk_00;
    PokedexSortData *sortData;
    PokedexScreenManager *subScreen;
    PokedexScreenManager *mainScreen;
} FormSubData;

typedef struct Context {
    void *formSubData;
    void *formSubPageData;
} Context;

typedef struct FormSubPageData {
    TouchScreenActions *buttonTouchScreenActions;
    TouchScreenHitTable *buttonHitTable;
    Context context;
    enum TouchScreenButtonState buttonState[MAX_FORMSUBBUTTONS];
    BOOL buttonPressed;
} FormSubPageData;

typedef struct FormSubGraphics {
    Sprite *buttonSprite;
    PokedexTextData *buttonText;
    SpriteResource *buttonSpriteResource[MAX_SPRITE_RESOURCE_GEN4];
    Sprite *unused[4];
    int backgroundState;
    void *paletteFile;
} FormSubGraphics;

static FormSubData *LoadAppData(enum HeapID heapID, PokedexApp *pokedexApp);
static PokedexGraphicData **LoadAppGraphics(enum HeapID heapID, PokedexApp *pokedexApp);
static UnkStruct_ov21_021D4660 *ScreenStates(enum HeapID heapID, PokedexApp *pokedexApp);
static void FreeFormSubData(FormSubData *formSubData);
static void FreeGraphicData(PokedexGraphicData **graphicData);
static void FreeScreenStates(UnkStruct_ov21_021D4660 *param0);
static int NumStates(void);
static BOOL FormSubDataEnter(PokedexDataManager *dataMan, void *data);
static BOOL FormSubDataUpdate(PokedexDataManager *dataMan, void *data);
static BOOL FormSubDataExit(PokedexDataManager *dataMan, void *data);
static BOOL FormSubGraphicsEnter(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static BOOL FormSubGraphicsUpdate(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static BOOL FormSubGraphicsExit(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);
static void SetSpriteOAMModesXLU(FormSubGraphics *formSubGraphics);
static void SetSpriteOAMModesNormal(FormSubGraphics *formSubGraphics);
static void InitBlendTransition(FormSubGraphics *formSubGraphics, PokedexGraphicData **param1, const FormSubData *formSubData, BOOL isEntering);
static BOOL AdvanceBlendTransition(FormSubGraphics *formSubGraphics, PokedexGraphicData **graphicData, const FormSubData *formSubData, BOOL isEntering);
static void SetTouchScreen(FormSubPageData *formSubPageData, FormSubData *formSubData, enum HeapID heapID);
static void SetButtonOutOfBounds(FormSubPageData *formSubPageData);
static void RunButtonAction(FormSubPageData *formSubPageData, FormSubData *formSubData);
static void FreeTouchScreen(FormSubPageData *formSubPageData);
static void ButtonTouchActions(u32 button, enum TouchScreenButtonState touchScreenButtonState, void *data);
static void UpdateButtonText(Sprite *sprite, PokedexTextData *textData, int y, int textPaletteOffsetUnpressed, int textPaletteOffsetPressed);
static void UpdateButtonDisplay(PokedexGraphicData **graphicData, FormSubGraphics *formSubGraphics, const FormSubPageData *formSubPageData, enum HeapID heapID);
static void AdvanceMainScreen(const FormSubData *formSubData);
static void CheckButtonKeyHeld(FormSubPageData *formSubPageData, FormSubData *formSubData);
static void CursorToButton(PokedexGraphicData **graphicdata, const FormSubData *formSubData);
static void TransformCursor(PokedexGraphicData **graphicdata, int x, int y, int width, int height);
static void LoadFormSubGraphics(FormSubGraphics *formSubGraphics, PokedexGraphicData **graphicData, enum HeapID heapID);
static void FreeGraphics(FormSubGraphics *formSubGraphics, PokedexGraphicData **graphicData, enum HeapID heapID);
static void LoadBackgroundTilemaps(PokedexGraphicData **graphicData, enum HeapID heapID);
static void LoadButtonSprite(FormSubGraphics *formSubGraphics, PokedexGraphicData **pokedexGraphicData, enum HeapID heapID);
static void FreeButtonSpriteResource(FormSubGraphics *formSubGraphics, PokedexGraphicData **pokedexGraphicData);
static void AnimateSprites(FormSubGraphics *formSubGraphics, PokedexGraphicData **pokedexGraphicData, enum HeapID heapID);
static void FreeButtonSprite(FormSubGraphics *formSubGraphics);
static void LoadButtonText(FormSubGraphics *formSubGraphics, PokedexGraphicData **pokedexGraphicData, enum HeapID heapID);
static void FreeTextData(FormSubGraphics *formSubGraphics, PokedexGraphicData **graphicData);
static void UpdateButtonGraphics(PokedexGraphicData **graphicData, Sprite *sprite, PokedexTextData *textData, int buttonState, int y, int destAddr, int *backgroundState, enum HeapID heapID, int textPaletteOffsetUnpressed, int textPaletteOffsetPressed, void **paletteFile);

void FormSub_Init(PokedexScreenManager *screenMan, PokedexApp *pokedexApp, enum HeapID heapID)
{
    FormSubData *formSubData = LoadAppData(heapID, pokedexApp);
    PokedexGraphicData **pokedexGraphicData = LoadAppGraphics(heapID, pokedexApp);
    UnkStruct_ov21_021D4660 *screenStates = ScreenStates(heapID, pokedexApp);

    screenMan->pageData = formSubData;
    screenMan->pageGraphics = pokedexGraphicData;
    screenMan->screenStates = screenStates;
    screenMan->numStates = NumStates();

    screenMan->dataFunc[0] = FormSubDataEnter;
    screenMan->dataFunc[1] = FormSubDataUpdate;
    screenMan->dataFunc[2] = FormSubDataExit;
    screenMan->graphicsFunc[0] = FormSubGraphicsEnter;
    screenMan->graphicsFunc[1] = FormSubGraphicsUpdate;
    screenMan->graphicsFunc[2] = FormSubGraphicsExit;
}

void FormSub_Free(PokedexScreenManager *screenMan)
{
    FreeFormSubData(screenMan->pageData);
    FreeGraphicData(screenMan->pageGraphics);
    FreeScreenStates(screenMan->screenStates);
}

static FormSubData *LoadAppData(enum HeapID heapID, PokedexApp *pokedexApp)
{
    FormSubData *formSubData = Heap_Alloc(heapID, sizeof(FormSubData));

    GF_ASSERT(formSubData);
    memset(formSubData, 0, sizeof(FormSubData));

    formSubData->unk_00 = ov21_021D13A0(pokedexApp);
    formSubData->subScreen = ov21_021D1430(pokedexApp, 3);
    formSubData->mainScreen = ov21_021D1410(pokedexApp, 3);
    formSubData->sortData = PokedexMain_GetSortData(pokedexApp);

    return formSubData;
}

static PokedexGraphicData **LoadAppGraphics(enum HeapID heapID, PokedexApp *pokedexApp)
{
    PokedexGraphicData **graphicData = Heap_Alloc(heapID, sizeof(PokedexGraphicData *));

    GF_ASSERT(graphicData);
    memset(graphicData, 0, sizeof(PokedexGraphicData *));

    *graphicData = PokedexMain_GetGraphicData(pokedexApp);

    return graphicData;
}

static UnkStruct_ov21_021D4660 *ScreenStates(enum HeapID heapID, PokedexApp *param1)
{
    return NULL;
}

static void FreeFormSubData(FormSubData *formSubData)
{
    GF_ASSERT(formSubData);
    Heap_Free(formSubData);
}

static void FreeGraphicData(PokedexGraphicData **graphicData)
{
    GF_ASSERT(graphicData);
    Heap_Free(graphicData);
}

static void FreeScreenStates(UnkStruct_ov21_021D4660 *param0)
{
    return;
}

static int NumStates(void)
{
    return 0;
}

static BOOL FormSubDataEnter(PokedexDataManager *dataMan, void *data)
{
    FormSubData *formSubData = data;

    FormSubPageData *formSubPageData = Heap_Alloc(dataMan->heapID, sizeof(FormSubPageData));
    memset(formSubPageData, 0, sizeof(FormSubPageData));

    formSubPageData->buttonState[FORMSUB_ANOTHER] = TOUCH_BUTTON_HELD_OUT_OF_BOUNDS + 1;

    SetTouchScreen(formSubPageData, formSubData, dataMan->heapID);
    RunButtonAction(formSubPageData, formSubData);

    dataMan->pageData = formSubPageData;

    return TRUE;
}

static BOOL FormSubDataUpdate(PokedexDataManager *dataMan, void *data)
{
    FormSubData *formSubData = data;
    FormSubPageData *formSubPageData = dataMan->pageData;

    if (dataMan->exit == TRUE) {
        return TRUE;
    }

    if (dataMan->unchanged == TRUE) {
        return FALSE;
    }

    if (ov21_021E33AC(formSubData->subScreen)) {
        SetButtonOutOfBounds(formSubPageData);

        if (ov21_021E33BC(formSubData->subScreen) && (ov21_021D3998(formSubData->sortData) == 2)) {
            CheckButtonKeyHeld(formSubPageData, formSubData);
        }

        RunButtonAction(formSubPageData, formSubData);

        if (formSubPageData->buttonPressed) {
            AdvanceMainScreen(formSubData);
            formSubPageData->buttonPressed = FALSE;
        }
    }

    return FALSE;
}

static BOOL FormSubDataExit(PokedexDataManager *dataMan, void *data)
{
    FormSubPageData *formSubPageData = dataMan->pageData;

    FreeTouchScreen(formSubPageData);
    Heap_Free(formSubPageData);

    return TRUE;
}

static BOOL FormSubGraphicsEnter(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const FormSubData *formSubData = data;
    PokedexGraphicData **graphicData = graphics;
    FormSubGraphics *formSubGraphics = graphicsMan->pageGraphics;

    switch (graphicsMan->state) {
    case 0:
        graphicsMan->pageGraphics = Heap_Alloc(graphicsMan->heapID, sizeof(FormSubGraphics));
        memset(graphicsMan->pageGraphics, 0, sizeof(FormSubGraphics));
        graphicsMan->state++;
        break;
    case 1:
        LoadFormSubGraphics(formSubGraphics, graphicData, graphicsMan->heapID);
        InitBlendTransition(formSubGraphics, graphicData, formSubData, TRUE);
        graphicsMan->state++;
        break;
    case 2:
        if (AdvanceBlendTransition(formSubGraphics, graphicData, formSubData, TRUE)) {
            graphicsMan->state++;
        }
        break;
    case 3:
        PokedexGraphics_SetStaticCursorSize(&(*graphicData)->cursorGraphics, FALSE);
        return TRUE;
    default:
        break;
    }

    return FALSE;
}

static BOOL FormSubGraphicsUpdate(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const FormSubData *formSubData = data;
    const FormSubPageData *formSubPageData = dataMan->pageData;
    PokedexGraphicData **graphicData = graphics;
    FormSubGraphics *formSubGraphics = graphicsMan->pageGraphics;

    if (ov21_021E33AC(formSubData->subScreen)) {
        UpdateButtonDisplay(graphicData, formSubGraphics, formSubPageData, graphicsMan->heapID);
        CursorToButton(graphicData, formSubData);
    }

    return FALSE;
}

static BOOL FormSubGraphicsExit(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    const FormSubData *formSubData = data;
    PokedexGraphicData **graphicData = graphics;
    FormSubGraphics *formSubGraphics = graphicsMan->pageGraphics;

    switch (graphicsMan->state) {
    case 0:
        PokedexGraphics_SetStaticCursorSize(&(*graphicData)->cursorGraphics, TRUE);
        InitBlendTransition(formSubGraphics, graphicData, formSubData, FALSE);
        graphicsMan->state++;
        break;
    case 1:
        if (AdvanceBlendTransition(formSubGraphics, graphicData, formSubData, FALSE)) {
            graphicsMan->state++;
        }
        break;
    case 2:
        FreeGraphics(formSubGraphics, graphicData, graphicsMan->heapID);
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

static void SetSpriteOAMModesXLU(FormSubGraphics *formSubGraphics)
{
    Sprite_SetExplicitOAMMode(formSubGraphics->buttonSprite, GX_OAM_MODE_XLU);
    sub_02012AF0(formSubGraphics->buttonText->fontOAM, GX_OAM_MODE_XLU);
}

static void SetSpriteOAMModesNormal(FormSubGraphics *formSubGraphics)
{
    Sprite_SetExplicitOAMMode(formSubGraphics->buttonSprite, GX_OAM_MODE_NORMAL);
    sub_02012AF0(formSubGraphics->buttonText->fontOAM, GX_OAM_MODE_NORMAL);
}

static void InitBlendTransition(FormSubGraphics *formSubGraphics, PokedexGraphicData **param1, const FormSubData *formSubData, BOOL isEntering)
{
    SetSpriteOAMModesXLU(formSubGraphics);

    if (ov21_021E33A4(formSubData->subScreen)) {
        if (isEntering) {
            PokedexGraphics_InitBlendTransition(&(*param1)->blendSub, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 1);
        } else {
            PokedexGraphics_InitBlendTransition(&(*param1)->blendSub, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 1);
        }
    }
}

static BOOL AdvanceBlendTransition(FormSubGraphics *formSubGraphics, PokedexGraphicData **graphicData, const FormSubData *formSubData, BOOL isEntering)
{
    BOOL transitionComplete;

    if (ov21_021E33A4(formSubData->subScreen)) {
        transitionComplete = PokedexGraphics_TakeBlendTransitionStep(&(*graphicData)->blendSub);
    } else {
        transitionComplete = BrightnessController_IsTransitionComplete(BRIGHTNESS_SUB_SCREEN);
    }

    if (transitionComplete) {
        if (isEntering) {
            SetSpriteOAMModesNormal(formSubGraphics);
        }

        return TRUE;
    }

    return FALSE;
}

static void SetTouchScreen(FormSubPageData *formSubPageData, FormSubData *formSubData, enum HeapID heapID)
{
    formSubPageData->buttonHitTable = Heap_Alloc(heapID, sizeof(TouchScreenHitTable));

    PokedexMain_SetHitTableRect(formSubPageData->buttonHitTable, BUTTON_Y - (BUTTON_HITBOX_HEIGHT / 2), BUTTON_Y + (BUTTON_HITBOX_HEIGHT / 2), BUTTON_X - (BUTTON_HITBOX_WIDTH / 2), BUTTON_X + (BUTTON_HITBOX_WIDTH / 2));

    formSubPageData->context.formSubData = formSubData;
    formSubPageData->context.formSubPageData = formSubPageData;
    formSubPageData->buttonTouchScreenActions = TouchScreenActions_RegisterHandler(formSubPageData->buttonHitTable, 1, ButtonTouchActions, &formSubPageData->context, heapID);
}

static void SetButtonOutOfBounds(FormSubPageData *formSubPageData)
{
    formSubPageData->buttonState[FORMSUB_ANOTHER] = TOUCH_BUTTON_HELD_OUT_OF_BOUNDS;
}

static void RunButtonAction(FormSubPageData *formSubPageData, FormSubData *formSubData)
{
    TouchScreenActions_HandleAction(formSubPageData->buttonTouchScreenActions);

    if (formSubPageData->buttonPressed) {
        formSubPageData->buttonState[FORMSUB_ANOTHER] = TOUCH_BUTTON_HELD;
    }
}

static void FreeTouchScreen(FormSubPageData *formSubPageData)
{
    TouchScreenActions_Free(formSubPageData->buttonTouchScreenActions);
    Heap_Free(formSubPageData->buttonHitTable);

    formSubPageData->buttonHitTable = NULL;
}

static void ButtonTouchActions(u32 button, enum TouchScreenButtonState touchScreenButtonState, void *data)
{
    Context *context = data;
    FormSubData *formSubData = context->formSubData;
    FormSubPageData *formSubPageData = context->formSubPageData;

    formSubPageData->buttonState[button] = touchScreenButtonState;

    switch (touchScreenButtonState) {
    case TOUCH_BUTTON_PRESSED:
        switch (button) {
        case FORMSUB_ANOTHER:
            ov21_021E33B4(formSubData->subScreen, TRUE);
            formSubPageData->buttonPressed = TRUE;
            break;
        default:
            break;
        }
        break;
    case TOUCH_BUTTON_HELD:
        switch (button) {
        case FORMSUB_ANOTHER:
            formSubPageData->buttonPressed = TRUE;
            break;
        default:
            break;
        }
        break;
    default:
        break;
    }
}

static void LoadFormSubGraphics(FormSubGraphics *formSubGraphics, PokedexGraphicData **graphicData, enum HeapID heapID)
{
    LoadBackgroundTilemaps(graphicData, heapID);
    LoadButtonSprite(formSubGraphics, graphicData, heapID);
    AnimateSprites(formSubGraphics, graphicData, heapID);
    LoadButtonText(formSubGraphics, graphicData, heapID);
}

static void FreeGraphics(FormSubGraphics *formSubGraphics, PokedexGraphicData **graphicData, enum HeapID heapID)
{
    PokedexGraphics_LoadGraphicNarcPaletteData(*graphicData, background_sub_2_NCLR, PAL_LOAD_SUB_BG, 4 * 32, 32, heapID);
    FreeButtonSprite(formSubGraphics);
    FreeTextData(formSubGraphics, graphicData);
    FreeButtonSpriteResource(formSubGraphics, graphicData);

    if (formSubGraphics->paletteFile) {
        Heap_Free(formSubGraphics->paletteFile);
    }
}

static void LoadBackgroundTilemaps(PokedexGraphicData **graphicData, enum HeapID heapID)
{
    NNSG2dScreenData *screenData;

    PokedexGraphics_LoadGraphicNarcCharacterData(*graphicData, entry_sub_NCGR_lz, (*graphicData)->bgConfig, BG_LAYER_SUB_2, 0, 0, TRUE, heapID);

    void *tilemap = PokedexGraphics_GetGraphicNarcTilemapData(*graphicData, forms_sub_NSCR_lz, TRUE, &screenData, heapID);

    Bg_LoadToTilemapRect((*graphicData)->bgConfig, BG_LAYER_SUB_2, screenData->rawData, 0, 0, screenData->screenWidth / 8, screenData->screenHeight / 8);
    Heap_Free(tilemap);
    Bg_ScheduleTilemapTransfer((*graphicData)->bgConfig, BG_LAYER_SUB_2);
}

static void LoadButtonSprite(FormSubGraphics *formSubGraphics, PokedexGraphicData **pokedexGraphicData, enum HeapID heapID)
{
    PokedexGraphicData *graphicData = *pokedexGraphicData;
    NARC *narc = PokedexGraphics_GetNARC(graphicData);

    formSubGraphics->buttonSpriteResource[SPRITE_RESOURCE_CHAR] = SpriteResourceCollection_AddTilesFrom(graphicData->spriteResourceCollection[SPRITE_RESOURCE_CHAR], narc, size_buttons_pressed_NCGR_lz, TRUE, size_buttons_pressed_NCGR_lz + FORMSUB_GRAPHIC_ID, NNS_G2D_VRAM_TYPE_2DSUB, heapID);

    SpriteTransfer_RequestCharAtEnd(formSubGraphics->buttonSpriteResource[SPRITE_RESOURCE_CHAR]);
    SpriteResource_ReleaseData(formSubGraphics->buttonSpriteResource[SPRITE_RESOURCE_CHAR]);

    formSubGraphics->buttonSpriteResource[SPRITE_RESOURCE_CELL] = SpriteResourceCollection_AddFrom(graphicData->spriteResourceCollection[SPRITE_RESOURCE_CELL], narc, size_buttons_pressed_cell_NCER_lz, TRUE, size_buttons_pressed_cell_NCER_lz + FORMSUB_GRAPHIC_ID, SPRITE_RESOURCE_CELL, heapID);
    formSubGraphics->buttonSpriteResource[SPRITE_RESOURCE_ANIM] = SpriteResourceCollection_AddFrom(graphicData->spriteResourceCollection[SPRITE_RESOURCE_ANIM], narc, size_buttons_pressed_anim_NANR_lz, TRUE, size_buttons_pressed_anim_NANR_lz + FORMSUB_GRAPHIC_ID, SPRITE_RESOURCE_ANIM, heapID);
}

static void FreeButtonSpriteResource(FormSubGraphics *formSubGraphics, PokedexGraphicData **pokedexGraphicData)
{
    PokedexGraphicData *graphicData = *pokedexGraphicData;

    SpriteTransfer_ResetCharTransfer(formSubGraphics->buttonSpriteResource[SPRITE_RESOURCE_CHAR]);
    SpriteResourceCollection_Remove(graphicData->spriteResourceCollection[SPRITE_RESOURCE_CHAR], formSubGraphics->buttonSpriteResource[SPRITE_RESOURCE_CHAR]);
    SpriteResourceCollection_Remove(graphicData->spriteResourceCollection[SPRITE_RESOURCE_CELL], formSubGraphics->buttonSpriteResource[SPRITE_RESOURCE_CELL]);
    SpriteResourceCollection_Remove(graphicData->spriteResourceCollection[SPRITE_RESOURCE_ANIM], formSubGraphics->buttonSpriteResource[SPRITE_RESOURCE_ANIM]);
}

static void AnimateSprites(FormSubGraphics *formSubGraphics, PokedexGraphicData **pokedexGraphicData, enum HeapID heapID)
{
    SpriteResourcesHeader spriteResourcesHeader;
    SpriteListTemplate spriteListTemplate;
    PokedexGraphicData *graphicData = *pokedexGraphicData;

    SpriteResourcesHeader_Init(&spriteResourcesHeader, size_buttons_pressed_NCGR_lz + FORMSUB_GRAPHIC_ID, info_NCLR + 2100, size_buttons_pressed_cell_NCER_lz + FORMSUB_GRAPHIC_ID, size_buttons_pressed_anim_NANR_lz + FORMSUB_GRAPHIC_ID, 0xffffffff, 0xffffffff, FALSE, 2, graphicData->spriteResourceCollection[SPRITE_RESOURCE_CHAR], graphicData->spriteResourceCollection[SPRITE_RESOURCE_PLTT], graphicData->spriteResourceCollection[SPRITE_RESOURCE_CELL], graphicData->spriteResourceCollection[SPRITE_RESOURCE_ANIM], NULL, NULL);

    spriteListTemplate.list = graphicData->spriteList;
    spriteListTemplate.resourceData = &spriteResourcesHeader;
    spriteListTemplate.priority = 31;
    spriteListTemplate.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    spriteListTemplate.heapID = heapID;

    spriteListTemplate.position.x = BUTTON_X << FX32_SHIFT;
    spriteListTemplate.position.y = BUTTON_Y << FX32_SHIFT;
    spriteListTemplate.position.y += (HW_LCD_HEIGHT << FX32_SHIFT);

    formSubGraphics->buttonSprite = SpriteList_Add(&spriteListTemplate);

    Sprite_SetAnim(formSubGraphics->buttonSprite, 2);
}

static void FreeButtonSprite(FormSubGraphics *formSubGraphics)
{
    Sprite_Delete(formSubGraphics->buttonSprite);
}

static void LoadButtonText(FormSubGraphics *formSubGraphics, PokedexGraphicData **pokedexGraphicData, enum HeapID heapID)
{
    PokedexGraphicData *graphicData = *pokedexGraphicData;

    GF_ASSERT(formSubGraphics->buttonSprite);

    SpriteResource *spriteResource = SpriteResourceCollection_Find(graphicData->spriteResourceCollection[SPRITE_RESOURCE_PLTT], info_NCLR + 2100);

    PokedexDisplayBox displayBox;
    displayBox.textMan = graphicData->textMan;
    displayBox.paletteProxy = SpriteTransfer_GetPaletteProxy(spriteResource, NULL);
    displayBox.y = -8;
    displayBox.spriteResourcePriority = 2;
    displayBox.spriteListPriority = 0;
    displayBox.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    displayBox.heapID = heapID;

    int plttOffset = PlttTransfer_GetPlttOffset(displayBox.paletteProxy, NNS_G2D_VRAM_TYPE_2DSUB);
    Window *window = PokedexTextManager_NewWindow(graphicData->textMan, 16, 2);
    u32 strWidth = PokedexTextManager_DisplayMessage(graphicData->textMan, window, TEXT_BANK_POKEDEX, pl_msg_pokedex_anotherform, 0, 0);

    displayBox.x = -(strWidth / 2);
    displayBox.window = window;
    displayBox.sprite = formSubGraphics->buttonSprite;

    formSubGraphics->buttonText = PokedexTextManager_NextTextData(&displayBox);

    sub_02012A60(formSubGraphics->buttonText->fontOAM, plttOffset + 4);
    PokedexTextManager_FreeWindow(window);
}

static void FreeTextData(FormSubGraphics *formSubGraphics, PokedexGraphicData **graphicData)
{
    PokedexTextManager_FreeTextData(formSubGraphics->buttonText);
}

static void UpdateButtonGraphics(PokedexGraphicData **graphicData, Sprite *sprite, PokedexTextData *textData, int buttonState, int y, int destAddr, int *backgroundState, enum HeapID heapID, int textPaletteOffsetUnpressed, int textPaletteOffsetPressed, void **paletteFile)
{
    NNSG2dPaletteData *paletteData;
    BOOL validFrame = FALSE;
    int memberIndex;

    ov21_021D144C(sprite, buttonState);
    UpdateButtonText(sprite, textData, y, textPaletteOffsetUnpressed, textPaletteOffsetPressed);

    switch (Sprite_GetAnimFrame(sprite)) {
    case 0:
    case 1:
        if (*backgroundState != 0) {
            validFrame = TRUE;
            memberIndex = background_sub_2_NCLR;
            *backgroundState = 0;
        }
        break;
    case 2:
        if (*backgroundState != 1) {
            validFrame = TRUE;
            memberIndex = background_sub_3_NCLR;
            *backgroundState = 1;
        }
        break;
    case 3:
        if (*backgroundState != 2) {
            validFrame = TRUE;
            memberIndex = background_sub_1_NCLR;
            *backgroundState = 2;
        }
        break;
    }

    if (validFrame) {
        if (*paletteFile) {
            Heap_Free(*paletteFile);
        }

        *paletteFile = PokedexGraphics_GetGraphicNarcPaletteData(*graphicData, memberIndex, &paletteData, heapID);

        GF_ASSERT(VramTransfer_Request(NNS_GFD_DST_2D_BG_PLTT_SUB, destAddr * 32, paletteData->pRawData, 32));
    }
}

static void UpdateButtonText(Sprite *sprite, PokedexTextData *textData, int y, int textPaletteOffsetUnpressed, int textPaletteOffsetPressed)
{
    PokedexMain_SetButtonY(sprite, textData, y);

    if ((int)Sprite_GetAnimFrame(sprite) < 2) {
        sub_02012AC0(textData->fontOAM, textPaletteOffsetUnpressed);
    } else {
        sub_02012AC0(textData->fontOAM, textPaletteOffsetPressed);
    }
}

static void UpdateButtonDisplay(PokedexGraphicData **graphicData, FormSubGraphics *formSubGraphics, const FormSubPageData *formSubPageData, enum HeapID heapID)
{
    UpdateButtonGraphics(graphicData, formSubGraphics->buttonSprite, formSubGraphics->buttonText, formSubPageData->buttonState[FORMSUB_ANOTHER], -8, 4, &formSubGraphics->backgroundState, heapID, 4, 1, &formSubGraphics->paletteFile);
}

static void CheckButtonKeyHeld(FormSubPageData *formSubPageData, FormSubData *formSubData)
{
    if (gSystem.heldKeys & PAD_BUTTON_A) {
        formSubPageData->buttonPressed = TRUE;
    }
}

static void CursorToButton(PokedexGraphicData **graphicdata, const FormSubData *formSubData)
{
    if (ov21_021E33BC(formSubData->subScreen) == 1) {
        TransformCursor(graphicdata, BUTTON_X, BUTTON_Y, BUTTON_WIDTH, BUTTON_HEIGHT);
    }
}

static void TransformCursor(PokedexGraphicData **graphicdata, int x, int y, int width, int height)
{
    PokedexGraphics_TransformCursor(*graphicdata, x, y, width, height);
}

static void AdvanceMainScreen(const FormSubData *formSubData)
{
    FormMain_NextForm(formSubData->mainScreen, 1);
}
