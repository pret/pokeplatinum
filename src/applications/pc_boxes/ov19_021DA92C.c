#include "applications/pc_boxes/ov19_021DA92C.h"

#include <nitro.h>
#include <string.h>

#include "applications/pc_boxes/box_app_manager.h"
#include "applications/pc_boxes/box_application.h"
#include "applications/pc_boxes/ov19_021D61B0.h"
#include "applications/pc_boxes/pc_mon_preview.h"
#include "applications/pc_boxes/struct_ov19_021D61B0_decl.h"
#include "applications/pc_boxes/struct_ov19_021DA9E0.h"

#include "bg_window.h"
#include "font_special_chars.h"
#include "graphics.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "pokemon.h"
#include "pokemon_sprite.h"
#include "sprite.h"
#include "string_gf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "type_icon.h"

typedef struct RotationTaskState {
    u16 step;
    u16 page;
    u16 displayTicks;
    u16 scrollOffset;
    PCMonPreviewDisplay *previewDisplay;
} RotationTaskState;

static void PCMonPreviewDisplay_CreateInfoSprites(PCMonPreviewDisplay *previewDisplay);
static void PCMonPreviewDisplay_StartRotation(PCMonPreviewDisplay *previewDisplay);
static void PCMonPreviewDisplay_StopRotation(PCMonPreviewDisplay *previewDisplay);
static void PCMonPreviewDisplay_ResetRotation(PCMonPreviewDisplay *previewDisplay);
static void PCMonPreviewDisplay_FreezeRotation(PCMonPreviewDisplay *previewDisplay);
static void PCMonPreviewDisplay_RotationTask(SysTask *unused, void *param);
static void PCMonPreviewDisplay_ScrollTypeIcons(PCMonPreviewDisplay *previewDisplay, fx32 scrollY);
static void PCMonPreviewDisplay_HideTypeIcons(PCMonPreviewDisplay *previewDisplay);
static void RotationTaskState_DrawScrollPages(RotationTaskState *rtState);
static void PCMonPreviewDisplay_DrawRotationPage(Window *window, PCMonPreviewDisplay *previewDisplay, u32 page, u32 row);
static void PCMonPreviewDisplay_DrawMonInfo(PCMonPreviewDisplay *previewDisplay);
static void PCMonPreviewDisplay_DrawMarkings(PCMonPreviewDisplay *previewDisplay, u8 markings);

BOOL PCMonPreviewDisplay_Init(PCMonPreviewDisplay *previewDisplay, BoxGraphics *boxGraphics, const BoxApplication *boxApp, BgConfig *bgConfig, SpriteList *spriteList, const MessageLoader *msgLoader, NARC *narc)
{
    if (BoxApp_GetBoxMode(boxApp) == PC_MODE_COMPARE) {
        previewDisplay->isActive = FALSE;
        return TRUE;
    }

    previewDisplay->boxGraphics = boxGraphics;
    previewDisplay->bgConfig = bgConfig;
    previewDisplay->boxApp = boxApp;
    previewDisplay->spriteList = spriteList;
    previewDisplay->windows = NULL;
    previewDisplay->rotationTask = NULL;
    previewDisplay->monSprite = NULL;
    previewDisplay->monSpriteManager = BoxGraphics_GetMonSpriteManager(boxGraphics);
    previewDisplay->dexNumChars = FontSpecialChars_Init(9, 6, 15, HEAP_ID_BOX_GRAPHICS);
    previewDisplay->levelChars = FontSpecialChars_Init(1, 2, 15, HEAP_ID_BOX_GRAPHICS);
    previewDisplay->infoFrameCellBankBuffer = Graphics_GetCellBankFromOpenNARC(narc, 16, 1, &(previewDisplay->infoFrameCellBank), HEAP_ID_BOX_GRAPHICS);
    previewDisplay->infoFrameSprite = NULL;
    previewDisplay->maleGenderText = MessageLoader_GetNewString(msgLoader, 21);
    previewDisplay->femaleGenderText = MessageLoader_GetNewString(msgLoader, 22);
    previewDisplay->typeIconCellBankBuffer = Graphics_GetCellBank(TypeIcon_GetNARC(), TypeIcon_GetCell(), 1, &(previewDisplay->typeIconCellBank), HEAP_ID_BOX_GRAPHICS);

    for (int i = 0; i < MAX_TYPES; i++) {
        previewDisplay->typeIconSprites[i] = NULL;
    }

    previewDisplay->isActive = TRUE;

    return TRUE;
}

void PCMonPreviewDisplay_Free(PCMonPreviewDisplay *previewDisplay)
{
    int i;

    // if not active, skip the wipe
    if (previewDisplay->isActive == FALSE) {
        return;
    }

    if (previewDisplay->windows) {
        for (i = 0; i < PREVIEW_WINDOW_COUNT; i++) {
            Window_Remove(&previewDisplay->windows[i]);
        }

        Heap_Free(previewDisplay->windows);
        previewDisplay->windows = NULL;
    }

    if (previewDisplay->dexNumChars) {
        FontSpecialChars_Free(previewDisplay->dexNumChars);
    }

    if (previewDisplay->levelChars) {
        FontSpecialChars_Free(previewDisplay->levelChars);
    }

    if (previewDisplay->maleGenderText) {
        String_Free(previewDisplay->maleGenderText);
    }

    if (previewDisplay->femaleGenderText) {
        String_Free(previewDisplay->femaleGenderText);
    }

    if (previewDisplay->monSprite) {
        PokemonSprite_Delete(previewDisplay->monSprite);
        previewDisplay->monSprite = NULL;
    }

    if (previewDisplay->infoFrameCellBankBuffer) {
        Heap_Free(previewDisplay->infoFrameCellBankBuffer);
    }

    if (previewDisplay->infoFrameSprite) {
        Sprite_Delete(previewDisplay->infoFrameSprite);
    }

    if (previewDisplay->typeIconCellBankBuffer) {
        Heap_Free(previewDisplay->typeIconCellBankBuffer);
    }

    for (i = 0; i < MAX_TYPES; i++) {
        if (previewDisplay->typeIconSprites[i] != NULL) {
            Sprite_Delete(previewDisplay->typeIconSprites[i]);
        }
    }

    PCMonPreviewDisplay_StopRotation(previewDisplay);
}

void PCMonPreviewDisplay_UpdateAnimation(PCMonPreviewDisplay *previewDisplay)
{
    if (previewDisplay->isActive) {
        PokemonSpriteManager_UpdateCharAndPltt(previewDisplay->monSpriteManager);
    }
}

void PCMonPreviewDisplay_CreatePlaceholderSprite(PCMonPreviewDisplay *previewDisplay)
{
    PokemonSpriteTemplate spriteTemplate;

    BuildPokemonSpriteTemplate(&spriteTemplate, 1, 0, 0, 0, 0, 0);
    previewDisplay->monSprite = PokemonSpriteManager_CreateSprite(previewDisplay->monSpriteManager, &spriteTemplate, 44, 84, 0, 0, NULL, NULL);
}

BOOL PCMonPreviewDisplay_IsPlaceholderSpriteDeleted(PCMonPreviewDisplay *previewDisplay)
{
    if (previewDisplay->monSprite) {
        PokemonSprite_Delete(previewDisplay->monSprite);
        previewDisplay->monSprite = NULL;
        return FALSE;
    }

    return TRUE;
}

void PCMonPreviewDisplay_LoadGraphics(PCMonPreviewDisplay *previewDisplay)
{
    static const WindowTemplate windowTemplate[] = {
        { 2, 0, 1, 10, 2, 1, 288 },
        { 2, 5, 3, 5, 1, 1, 308 },
        { 2, 0, 16, 10, 3, 3, 313 },
        { 2, 1, 21, 12, 4, 1, 343 }
    };

    if (previewDisplay->isActive == FALSE) {
        return;
    }

    previewDisplay->windows = Window_New(HEAP_ID_BOX_GRAPHICS, PREVIEW_WINDOW_COUNT);

    if (previewDisplay->windows) {
        for (int i = 0; i < PREVIEW_WINDOW_COUNT; i++) {
            Window_AddFromTemplate(previewDisplay->bgConfig, &previewDisplay->windows[i], &windowTemplate[i]);

            if (i != PREVIEW_WINDOW_INFO) {
                Window_PutToTilemap(&previewDisplay->windows[i]);
            } else {
                Window_PutRectToTilemap(&previewDisplay->windows[i], 12, 2);
            }
        }

        Bg_CopyTilemapBufferToVRAM(previewDisplay->bgConfig, 2);
    }

    PCMonPreviewDisplay_CreateInfoSprites(previewDisplay);
    PCMonPreviewDisplay_StartRotation(previewDisplay);
}

static void PCMonPreviewDisplay_CreateInfoSprites(PCMonPreviewDisplay *previewDisplay)
{
    NNSG2dImageProxy imageProxy;
    SpriteResourcesHeader srHeader;
    enum NarcID narcID;
    u32 iconChar, i;

    narcID = TypeIcon_GetNARC();
    iconChar = TypeIcon_GetChar(2);

    Graphics_LoadPalette(narcID, TypeIcon_GetPlttSrc(), 1, 10 * 0x20, 0x20 * 3, HEAP_ID_BOX_GRAPHICS);

    for (i = 0; i < MAX_TYPES; i++) {
        NNS_G2dInitImageProxy(&imageProxy);
        Graphics_LoadImageMappingAndSetVramMode(narcID, iconChar, 1, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, (1504 + (8 * i)) * 0x20, 10, &imageProxy);
        SpriteResourcesHeader_InitFromProxies(&srHeader, &imageProxy, BoxGraphics_GetImagePaletteProxy(previewDisplay->boxGraphics), previewDisplay->typeIconCellBank, NULL, 3);

        previewDisplay->typeIconSprites[i] = BoxGraphics_CreateSprite(previewDisplay->spriteList, &srHeader, 24 + 36 * i, 176, 46, NNS_G2D_VRAM_TYPE_2DMAIN);
        GF_ASSERT(previewDisplay->typeIconSprites[i] != NULL);

        Sprite_SetDrawFlag(previewDisplay->typeIconSprites[i], FALSE);
    }

    NNS_G2dInitImageProxy(&imageProxy);

    Graphics_LoadImageMapping(NARC_INDEX_GRAPHIC__BOX, 15, 1, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 1480 * 0x20, 10, &imageProxy);
    SpriteResourcesHeader_InitFromProxies(&srHeader, &imageProxy, BoxGraphics_GetImagePaletteProxy(previewDisplay->boxGraphics), previewDisplay->infoFrameCellBank, NULL, 3);

    previewDisplay->infoFrameSprite = BoxGraphics_CreateSprite(previewDisplay->spriteList, &srHeader, 56, 176, 47, NNS_G2D_VRAM_TYPE_2DMAIN);
}

static void PCMonPreviewDisplay_StartRotation(PCMonPreviewDisplay *previewDisplay)
{
    if (previewDisplay->rotationTask == NULL) {
        RotationTaskState *rtState = Heap_Alloc(HEAP_ID_BOX_GRAPHICS, sizeof(RotationTaskState));

        if (rtState) {
            const PCMonPreview *preview = BoxApp_GetPCMonPreview(previewDisplay->boxApp);

            rtState->step = (preview->isEgg) ? ROTATION_STEP_FROZEN : ROTATION_STEP_CHECK_AVAILABLE;
            rtState->previewDisplay = previewDisplay;
            previewDisplay->rotationTask = SysTask_Start(PCMonPreviewDisplay_RotationTask, rtState, 1);
        } else {
            GF_ASSERT(FALSE);
        }
    }
}

static void PCMonPreviewDisplay_StopRotation(PCMonPreviewDisplay *previewDisplay)
{
    if (previewDisplay->rotationTask) {
        Heap_Free(SysTask_GetParam(previewDisplay->rotationTask));
        SysTask_Done(previewDisplay->rotationTask);
        previewDisplay->rotationTask = NULL;
    }
}

static void PCMonPreviewDisplay_ResetRotation(PCMonPreviewDisplay *previewDisplay)
{
    RotationTaskState *rtState = SysTask_GetParam(previewDisplay->rotationTask);

    if (rtState) {
        const PCMonPreview *preview = BoxApp_GetPCMonPreview(previewDisplay->boxApp);

        rtState->step = (preview->isEgg) ? ROTATION_STEP_FROZEN : ROTATION_STEP_CHECK_AVAILABLE;
        PCMonPreviewDisplay_HideTypeIcons(previewDisplay);
    }
}

static void PCMonPreviewDisplay_FreezeRotation(PCMonPreviewDisplay *previewDisplay)
{
    RotationTaskState *rtState = SysTask_GetParam(previewDisplay->rotationTask);

    if (rtState) {
        rtState->step = ROTATION_STEP_FROZEN;
        PCMonPreviewDisplay_HideTypeIcons(previewDisplay);
    }
}

static void PCMonPreviewDisplay_RotationTask(SysTask *unused, void *param)
{
    RotationTaskState *rtState = (RotationTaskState *)param;
    PCMonPreviewDisplay *previewDisplay = rtState->previewDisplay;
    const PCMonPreview *preview;

    switch (rtState->step) {
    case ROTATION_STEP_CHECK_AVAILABLE:
        if (BoxApp_IsMonAvailableToCursor(previewDisplay->boxApp) == FALSE) {
            break;
        }

        rtState->page = ROTATION_PAGE_HELD_ITEM;
        rtState->step = ROTATION_STEP_DRAW_PAGE;
    case ROTATION_STEP_DRAW_PAGE:
        PCMonPreviewDisplay_DrawRotationPage(&previewDisplay->windows[PREVIEW_WINDOW_INFO], previewDisplay, rtState->page, 0);
        Window_LoadTiles(&previewDisplay->windows[PREVIEW_WINDOW_INFO]);
        rtState->displayTicks = 0;
        rtState->step = ROTATION_STEP_HOLD;
        break;
    case ROTATION_STEP_HOLD:
        preview = BoxApp_GetPCMonPreview(previewDisplay->boxApp);

        if (!preview->isEgg && (++(rtState->displayTicks) > 80)) {
            RotationTaskState_DrawScrollPages(rtState);
            rtState->displayTicks = 0;
            rtState->scrollOffset = 0;
            rtState->step = ROTATION_STEP_SCROLL;
        }
        break;
    case ROTATION_STEP_SCROLL:
        rtState->scrollOffset += 4;

        PCMonPreviewDisplay_ScrollTypeIcons(previewDisplay, 4 << FX32_SHIFT);
        Window_Scroll(&previewDisplay->windows[PREVIEW_WINDOW_INFO], 0, 4, 0x0);
        Window_LoadTiles(&previewDisplay->windows[PREVIEW_WINDOW_INFO]);

        if (rtState->scrollOffset >= 16) {
            if (rtState->page == ROTATION_PAGE_TYPES) {
                PCMonPreviewDisplay_HideTypeIcons(previewDisplay);
            }

            if (++(rtState->page) >= ROTATION_PAGE_COUNT) {
                rtState->page = ROTATION_PAGE_HELD_ITEM;
            }

            rtState->scrollOffset = 0;
            rtState->displayTicks = 0;
            rtState->step = ROTATION_STEP_HOLD;
        }
        break;
    case ROTATION_STEP_FROZEN:
        break;
    }
}

static void PCMonPreviewDisplay_ScrollTypeIcons(PCMonPreviewDisplay *previewDisplay, fx32 scrollY)
{
    VecFx32 pos;

    for (int i = 0; i < MAX_TYPES; i++) {
        pos = *Sprite_GetPosition(previewDisplay->typeIconSprites[i]);
        pos.y -= scrollY;

        Sprite_SetPosition(previewDisplay->typeIconSprites[i], &pos);

        if ((i == 0) && Sprite_GetDrawFlag(previewDisplay->typeIconSprites[i])) {
            u32 unused1, unused2;

            unused1 = pos.x >> FX32_SHIFT;
            unused2 = pos.y >> FX32_SHIFT;
        }
    }
}

static void PCMonPreviewDisplay_HideTypeIcons(PCMonPreviewDisplay *previewDisplay)
{
    for (int i = 0; i < 2; i++) {
        Sprite_SetDrawFlag(previewDisplay->typeIconSprites[i], FALSE);
    }
}

static void RotationTaskState_DrawScrollPages(RotationTaskState *rtState)
{
    u32 nextPage;
    Window *window = &(rtState->previewDisplay->windows[PREVIEW_WINDOW_INFO]);

    Window_FillTilemap(window, 0);
    PCMonPreviewDisplay_DrawRotationPage(window, rtState->previewDisplay, rtState->page, 0);

    nextPage = rtState->page + 1;

    if (nextPage >= ROTATION_PAGE_COUNT) {
        nextPage = 0;
    }

    PCMonPreviewDisplay_DrawRotationPage(window, rtState->previewDisplay, nextPage, 1);
}

static void PCMonPreviewDisplay_DrawRotationPage(Window *window, PCMonPreviewDisplay *previewDisplay, u32 page, u32 row)
{
    const String *str;
    u32 yOffset = (row * 16) + 0;

    switch (page) {
    case ROTATION_PAGE_HELD_ITEM:
        str = previewDisplay->boxApp->pcMonPreview.heldItemName;
        break;
    case ROTATION_PAGE_NATURE:
        str = previewDisplay->boxApp->pcMonPreview.nature;
        break;
    case ROTATION_PAGE_ABILITY:
        str = previewDisplay->boxApp->pcMonPreview.ability;
        break;

    case ROTATION_PAGE_TYPES: {
        VecFx32 pos;
        u32 unused2, unused3;

        unused2 = TypeIcon_GetNARC();
        unused3 = TypeIcon_GetChar(previewDisplay->boxApp->pcMonPreview.type1);

        Graphics_LoadObjectTiles(TypeIcon_GetNARC(), TypeIcon_GetChar(previewDisplay->boxApp->pcMonPreview.type1), 0, 1504 * 0x20, 0, 1, HEAP_ID_BOX_GRAPHICS);

        pos = *Sprite_GetPosition(previewDisplay->typeIconSprites[0]);
        pos.y = (176 + (16 * row)) << FX32_SHIFT;

        Sprite_SetPosition(previewDisplay->typeIconSprites[0], &pos);
        Sprite_SetExplicitPalette(previewDisplay->typeIconSprites[0], 10 + TypeIcon_GetPltt(previewDisplay->boxApp->pcMonPreview.type1));
        Sprite_SetDrawFlag(previewDisplay->typeIconSprites[0], TRUE);

        if (previewDisplay->boxApp->pcMonPreview.type1 != previewDisplay->boxApp->pcMonPreview.type2) {
            Graphics_LoadObjectTiles(TypeIcon_GetNARC(), TypeIcon_GetChar(previewDisplay->boxApp->pcMonPreview.type2), 0, (1504 + 8) * 0x20, 0, 1, HEAP_ID_BOX_GRAPHICS);

            pos.x += (36 << FX32_SHIFT);

            Sprite_SetPosition(previewDisplay->typeIconSprites[1], &pos);
            Sprite_SetExplicitPalette(previewDisplay->typeIconSprites[1], 10 + TypeIcon_GetPltt(previewDisplay->boxApp->pcMonPreview.type2));
            Sprite_SetDrawFlag(previewDisplay->typeIconSprites[1], TRUE);
        } else {
            Sprite_SetDrawFlag(previewDisplay->typeIconSprites[1], FALSE);
        }
    }
        return;
    default:
        return;
    }

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, str, 0, yOffset, TEXT_SPEED_NO_TRANSFER, BOX_TEXT_COLOR_PREVIEW_INFO, NULL);
}

void PCMonPreviewDisplay_ShowInitial(PCMonPreviewDisplay *previewDisplay)
{
    if (previewDisplay->isActive == FALSE) {
        return;
    }

    Window_FillTilemap(&previewDisplay->windows[PREVIEW_WINDOW_SPECIES], 15);
    Window_FillTilemap(&previewDisplay->windows[PREVIEW_WINDOW_DEX_NUM], 15);
    Window_FillTilemap(&previewDisplay->windows[PREVIEW_WINDOW_NICKNAME], 15);
    Window_FillTilemap(&previewDisplay->windows[PREVIEW_WINDOW_INFO], 0);

    if (BoxApp_IsMonAvailableToCursor(previewDisplay->boxApp)) {
        PCMonPreviewDisplay_DrawMonInfo(previewDisplay);
    }

    Window_LoadTiles(&previewDisplay->windows[PREVIEW_WINDOW_SPECIES]);
    Window_LoadTiles(&previewDisplay->windows[PREVIEW_WINDOW_DEX_NUM]);
    Window_LoadTiles(&previewDisplay->windows[PREVIEW_WINDOW_NICKNAME]);
    Window_LoadTiles(&previewDisplay->windows[PREVIEW_WINDOW_INFO]);
}

void PCMonPreviewDisplay_Refresh(PCMonPreviewDisplay *previewDisplay)
{
    if (previewDisplay->isActive == FALSE) {
        return;
    }

    Window_FillTilemap(&previewDisplay->windows[PREVIEW_WINDOW_SPECIES], 15);
    Window_FillTilemap(&previewDisplay->windows[PREVIEW_WINDOW_DEX_NUM], 15);
    Window_FillTilemap(&previewDisplay->windows[PREVIEW_WINDOW_NICKNAME], 15);
    Window_FillTilemap(&previewDisplay->windows[PREVIEW_WINDOW_INFO], 0);

    if (previewDisplay->monSprite) {
        PokemonSprite_Delete(previewDisplay->monSprite);
        previewDisplay->monSprite = NULL;
    }

    if (BoxApp_IsMonAvailableToCursor(previewDisplay->boxApp)) {
        PCMonPreviewDisplay_DrawMonInfo(previewDisplay);
    } else {
        PCMonPreviewDisplay_DrawMarkings(previewDisplay, 0);
    }

    Window_LoadTiles(&previewDisplay->windows[PREVIEW_WINDOW_SPECIES]);
    Window_LoadTiles(&previewDisplay->windows[PREVIEW_WINDOW_DEX_NUM]);
    Window_LoadTiles(&previewDisplay->windows[PREVIEW_WINDOW_NICKNAME]);
    Window_LoadTiles(&previewDisplay->windows[PREVIEW_WINDOW_INFO]);

    PCMonPreviewDisplay_ResetRotation(previewDisplay);
}

void PCMonPreviewDisplay_Clear(PCMonPreviewDisplay *previewDisplay)
{
    if (previewDisplay->isActive == FALSE) {
        return;
    }

    Window_FillTilemap(&previewDisplay->windows[PREVIEW_WINDOW_SPECIES], 15);
    Window_FillTilemap(&previewDisplay->windows[PREVIEW_WINDOW_DEX_NUM], 15);
    Window_FillTilemap(&previewDisplay->windows[PREVIEW_WINDOW_NICKNAME], 15);
    Window_FillTilemap(&previewDisplay->windows[PREVIEW_WINDOW_INFO], 0);

    if (previewDisplay->monSprite) {
        PokemonSprite_Delete(previewDisplay->monSprite);
        previewDisplay->monSprite = NULL;
    }

    PCMonPreviewDisplay_DrawMarkings(previewDisplay, 0);

    Window_LoadTiles(&previewDisplay->windows[PREVIEW_WINDOW_SPECIES]);
    Window_LoadTiles(&previewDisplay->windows[PREVIEW_WINDOW_DEX_NUM]);
    Window_LoadTiles(&previewDisplay->windows[PREVIEW_WINDOW_NICKNAME]);
    Window_LoadTiles(&previewDisplay->windows[PREVIEW_WINDOW_INFO]);

    PCMonPreviewDisplay_FreezeRotation(previewDisplay);
}

static void PCMonPreviewDisplay_DrawMonInfo(PCMonPreviewDisplay *previewDisplay)
{
    PokemonSpriteTemplate spriteTemplate;
    const PCMonPreview *preview = BoxApp_GetPCMonPreview(previewDisplay->boxApp);

    Text_AddPrinterWithParamsAndColor(&previewDisplay->windows[PREVIEW_WINDOW_SPECIES], FONT_SYSTEM, preview->speciesName, 2, 0, TEXT_SPEED_NO_TRANSFER, BOX_TEXT_COLOR_PREVIEW_SPECIES, NULL);
    Text_AddPrinterWithParamsAndColor(&previewDisplay->windows[PREVIEW_WINDOW_NICKNAME], FONT_SYSTEM, preview->nickname, 2, 0, TEXT_SPEED_NO_TRANSFER, BOX_TEXT_COLOR_PREVIEW_NICKNAME, NULL);
    Text_AddPrinterWithParamsAndColor(&previewDisplay->windows[PREVIEW_WINDOW_NICKNAME], FONT_SYSTEM, preview->nickname, 2, 0, TEXT_SPEED_NO_TRANSFER, BOX_TEXT_COLOR_PREVIEW_NICKNAME, NULL);

    switch (preview->gender) {
    case GENDER_MALE:
        Text_AddPrinterWithParamsAndColor(&previewDisplay->windows[PREVIEW_WINDOW_NICKNAME], FONT_SYSTEM, previewDisplay->maleGenderText, 70, 0, TEXT_SPEED_NO_TRANSFER, BOX_TEXT_COLOR_PREVIEW_MALE, NULL);
        break;
    case GENDER_FEMALE:
        Text_AddPrinterWithParamsAndColor(&previewDisplay->windows[PREVIEW_WINDOW_NICKNAME], FONT_SYSTEM, previewDisplay->femaleGenderText, 70, 0, TEXT_SPEED_NO_TRANSFER, BOX_TEXT_COLOR_PREVIEW_FEMALE, NULL);
        break;
    }

    if (preview->isEgg == FALSE) {
        Text_AddPrinterWithParamsAndColor(&previewDisplay->windows[PREVIEW_WINDOW_INFO], FONT_SYSTEM, preview->heldItemName, 0, 0, TEXT_SPEED_NO_TRANSFER, BOX_TEXT_COLOR_PREVIEW_INFO, NULL);

        if (preview->dexNum) {
            FontSpecialChars_DrawPartyScreenText(previewDisplay->dexNumChars, 2, preview->dexNum, 3, 2, &(previewDisplay->windows[PREVIEW_WINDOW_DEX_NUM]), 0, 0);
        }

        FontSpecialChars_DrawPartyScreenText(previewDisplay->levelChars, 1, preview->level, 3, 1, &(previewDisplay->windows[PREVIEW_WINDOW_NICKNAME]), 0, 16);
    }

    BoxPokemon_BuildSpriteTemplate(&spriteTemplate, preview->mon, 2, 0);
    previewDisplay->monSprite = PokemonSpriteManager_CreateSprite(previewDisplay->monSpriteManager, &spriteTemplate, 44, 84, 0, 0, NULL, NULL);
    PCMonPreviewDisplay_DrawMarkings(previewDisplay, preview->markings);
}

BOOL PCMonPreviewDisplay_IsRefreshDone(PCMonPreviewDisplay *previewDisplay)
{
    if (previewDisplay->isActive == FALSE) {
        return TRUE;
    }

    return TRUE;
}

void PCMonPreviewDisplay_UpdateMarkings(PCMonPreviewDisplay *previewDisplay)
{
    if (previewDisplay->isActive == FALSE) {
        return;
    }

    if (BoxApp_IsMonAvailableToCursor(previewDisplay->boxApp)) {
        const PCMonPreview *preview;

        preview = BoxApp_GetPCMonPreview(previewDisplay->boxApp);
        PCMonPreviewDisplay_DrawMarkings(previewDisplay, preview->markings);
    }
}

static void PCMonPreviewDisplay_DrawMarkings(PCMonPreviewDisplay *previewDisplay, u8 markings)
{
    u16 *markingsTiles;
    u32 tilemapOffset;

    tilemapOffset = (19 * 32) + 4;
    markingsTiles = Bg_GetTilemapBuffer(previewDisplay->bgConfig, 2);
    markingsTiles += tilemapOffset;

    for (int i = 0; i < 6; i++) {
        if (markings & (1 << i)) {
            markingsTiles[i] = (2 << 12) | (152 + i);
        } else {
            markingsTiles[i] = (2 << 12) | (132 + i);
        }
    }

    Bg_CopyTilemapBufferRangeToVRAM(previewDisplay->bgConfig, 2, markingsTiles, 6 * sizeof(u16), tilemapOffset);
}

void PCMonPreviewDisplay_UpdateHeldItem(PCMonPreviewDisplay *previewDisplay)
{
    const PCMonPreview *preview;

    if (previewDisplay->isActive == FALSE) {
        return;
    }

    preview = BoxApp_GetPCMonPreview(previewDisplay->boxApp);
    Window_FillTilemap(&previewDisplay->windows[PREVIEW_WINDOW_INFO], 0);

    if (preview->isEgg == FALSE) {
        Text_AddPrinterWithParamsAndColor(&previewDisplay->windows[PREVIEW_WINDOW_INFO], FONT_SYSTEM, preview->heldItemName, 0, 0, TEXT_SPEED_NO_TRANSFER, BOX_TEXT_COLOR_PREVIEW_INFO, NULL);
    }

    PCMonPreviewDisplay_ResetRotation(previewDisplay);
}
