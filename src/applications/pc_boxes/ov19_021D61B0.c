#include "applications/pc_boxes/ov19_021D61B0.h"

#include <nitro.h>
#include <string.h>

#include "applications/pc_boxes/box_app_manager.h"
#include "applications/pc_boxes/box_application.h"
#include "applications/pc_boxes/funcptr_ov19_021D79B8.h"
#include "applications/pc_boxes/ov19_021D79F8.h"
#include "applications/pc_boxes/ov19_021D8B54.h"
#include "applications/pc_boxes/ov19_021DA270.h"
#include "applications/pc_boxes/ov19_021DA814.h"
#include "applications/pc_boxes/ov19_021DA92C.h"
#include "applications/pc_boxes/ov19_021DB2FC.h"
#include "applications/pc_boxes/ov19_021DB8E4.h"
#include "applications/pc_boxes/ov19_021DC5F0.h"
#include "applications/pc_boxes/ov19_021DCF88.h"
#include "applications/pc_boxes/ov19_021DE3E8.h"
#include "applications/pc_boxes/ov19_021DEC04.h"
#include "applications/pc_boxes/struct_ov19_021D61B0_decl.h"
#include "applications/pc_boxes/struct_ov19_021D8318.h"
#include "applications/pc_boxes/struct_ov19_021D8E00.h"
#include "applications/pc_boxes/struct_ov19_021DA384.h"
#include "applications/pc_boxes/struct_ov19_021DA8D8.h"
#include "applications/pc_boxes/struct_ov19_021DA9E0.h"
#include "applications/pc_boxes/struct_ov19_021DB6F0.h"
#include "applications/pc_boxes/struct_ov19_021DBA9C.h"
#include "applications/pc_boxes/struct_ov19_021DC680.h"
#include "applications/pc_boxes/struct_ov19_021DCF88_decl.h"
#include "applications/pc_boxes/struct_ov19_021DE3E8_decl.h"
#include "applications/pc_boxes/struct_ov19_021DEC04_decl.h"

#include "bg_window.h"
#include "enums.h"
#include "font.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "narc.h"
#include "pokemon_sprite.h"
#include "render_oam.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_util.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"

struct BoxGraphics {
    SysTask *unk_00;
    SysTask *unk_04;
    SysTask *taskSlots[BOX_GRAPHICS_MAX_TASKS];
    SpriteList *spriteList;
    G2dRenderer renderer;
    NNSG2dImagePaletteProxy imagePaletteProxy;
    PokemonSpriteManager *monSpriteManager;
    BgConfig *bgConfig;
    const BoxApplication *boxApp;
    MonIconHelper monIconHelper;
    BoxView box;
    BoxCursorGraphics cursorGraphics;
    BoxButtonsGraphics buttonsGraphics;
    PCMonPreviewDisplay previewDisplay;
    BoxMenuGraphics menuGraphics;
    BoxPopupGraphics popupGraphics;
    BoxPartyGraphics partyGraphics;
    BoxDialGraphics *dialGraphics;
    BoxItemIconGraphics *itemIconGraphics;
    BoxCompareGraphics *compareGraphics;
    const BoxApplicationManager *boxAppMan;
};

typedef struct BoxGraphicsTaskHeader {
    enum BoxGraphicsFunction function;
    u16 slotIndex;
    u16 state;
    u16 frameCounter;
    u16 unused_0A;
    BoxGraphics *boxGraphics;
    void *extraData; // TODO: might need a more descriptive name
} BoxGraphicsTaskHeader;

static void BoxGraphics_DrawScene(SysTask *unused, void *param);
static void BoxGraphicsTaskHeader_Free(BoxGraphicsTaskHeader *header);
static void BoxGraphics_VBlankTask(SysTask *unused, void *param);
static void BoxGraphics_ShowBoxScreen(SysTask *unused, void *param);
static void BoxGraphics_ScreenFadeBothToBlackLogIn(SysTask *unused, void *param);
static void BoxGraphics_ScreenFadeInReturnToBox(SysTask *unused, void *param);
static void BoxGraphics_ScreenFadeOutToOtherApp(SysTask *unused, void *param);
static void BoxGraphics_ChangeToNewBox(SysTask *unused, void *param);
static void BoxGraphics_MoveCursor(SysTask *unused, void *param);
static void BoxGraphics_PreviewMon(SysTask *unused, void *param);
static void BoxGraphics_UpdateMarkingsIcon(SysTask *unused, void *param);
static void BoxGraphics_ClearMonPreview(SysTask *unused, void *param);
static void BoxGraphics_PickUpMonIntoCursor(SysTask *unused, void *param);
static void BoxGraphics_PlaceMonDownFromCursor(SysTask *unused, void *param);
static void BoxGraphics_PlayShiftMonAnimation(SysTask *unused, void *param);
static void BoxGraphics_StoreMonFromCursor(SysTask *unused, void *param);
static void BoxGraphics_StoreMonFromParty(SysTask *unused, void *param);
static void BoxGraphics_PlayReleaseCursorMonAnimation(SysTask *unused, void *param);
static void BoxGraphics_PlayReleaseBoxMonAnimation(SysTask *unused, void *param);
static void BoxGraphics_PlayReleasePartyMonAnimation(SysTask *unused, void *param);
static void BoxGraphics_DisplayItemInfo(SysTask *unused, void *param);
static void BoxGraphics_CloseItemInfo(SysTask *unused, void *param);
static void BoxGraphics_PlayTakeItemAnimation(SysTask *unused, void *param);
static void BoxGraphics_PlayGiveItemAnimation(SysTask *unused, void *param);
static void BoxGraphics_PlaySwitchItemAnimation(SysTask *unused, void *param);
static void BoxGraphics_UpdateHeldItemIcon(SysTask *unused, void *param);
static void BoxGraphics_ItemShrinkToNothing(SysTask *unused, void *param);
static void BoxGraphics_DisplayBoxMessage(SysTask *unused, void *param);
static void BoxGraphics_ShowMenu(SysTask *unused, void *param);
static void BoxGraphics_CloseMessageBox(SysTask *unused, void *param);
static void BoxGraphics_CloseMenu(SysTask *unused, void *param);
static void BoxGraphics_UpdateMenuCursor(SysTask *unused, void *param);
static void BoxGraphics_UpdateMenuMarkings(SysTask *unused, void *param);
static void BoxGraphics_ShowBoxSelectionPopup(SysTask *unused, void *param);
static void BoxGraphics_ScrollBoxSelectionPopup(SysTask *unused, void *param);
static void BoxGraphics_CloseBoxSelectionPopup(SysTask *unused, void *param);
static void BoxGraphics_TransitionWallpaper(SysTask *unused, void *param);
static void BoxGraphics_PressBoxButton(SysTask *unused, void *param);
static void BoxGraphics_OpenPartyPopup(SysTask *unused, void *param);
static void BoxGraphics_ClosePartyPopup(SysTask *unused, void *param);
static void BoxGraphics_PlayAdjustPartyAnimation(SysTask *unused, void *param);
static void BoxGraphics_FinishAdjustPartyAnimation(SysTask *unused, void *param);
static void BoxGraphics_SetMonMarkingsTransparency(SysTask *unused, void *param);
static void BoxGraphics_OpenOrCloseSelectedDial(SysTask *unused, void *param);
static void BoxGraphics_UpdateSelectedDial(SysTask *unused, void *param);
static void BoxGraphics_UpdateMarkingsTouchButton(SysTask *unused, void *param);
static void BoxGraphics_UpdateCursorPalette(SysTask *unused, void *param);
static void BoxGraphics_StartDrawMultiSelect(SysTask *unused, void *param);
static void BoxGraphics_ClearMultiSelectShading(SysTask *unused, void *param);
static void BoxGraphics_ApplyMultiSelectMonShading(SysTask *unused, void *param);
static void BoxGraphics_PickUpMultiSelectedMonsIntoCursor(SysTask *unused, void *param);
static void BoxGraphics_SetCompareSlotTab(SysTask *unused, void *param);
static void BoxGraphics_SwitchCompareSlotTab(SysTask *unused, void *param);
static void BoxGraphics_TransitionCompareMode(SysTask *unused, void *param);
static void BoxGraphics_ScreenFadeBothToBlackLogOff(SysTask *unused, void *param);
static void BoxGraphics_InitBackground(BoxGraphics *boxGraphics, const BoxApplication *boxApp);
static void BoxGraphics_LoadGraphics(BoxGraphics *boxGraphics, const BoxApplication *boxApp, NARC *narc);
static void BoxGraphics_Init3D(void);
static void BoxGraphics_LoadSpriteGraphics(BoxGraphics *boxGraphics, const BoxApplication *unused, NARC *narc);
static int BoxGraphics_GetBoxMoveDirection(u32 param0, u32 param1);
static void BoxGraphics_ResetDeferredFrees(void);
static void BoxGraphics_ProcessDeferredFrees(void);

static const struct {
    SysTaskFunc sysTaskFunc;
    u32 unk_04;
} sBoxGraphicsTaskHandlers[] = {
    [FUNC_BoxGraphics_ShowBoxScreen] = { BoxGraphics_ShowBoxScreen, 0 },
    [FUNC_BoxGraphics_ScreenFadeBothToBlackLogIn] = { BoxGraphics_ScreenFadeBothToBlackLogIn, 0 },
    [FUNC_BoxGraphics_ScreenFadeInReturnToBox] = { BoxGraphics_ScreenFadeInReturnToBox, 0 },
    [FUNC_BoxGraphics_ScreenFadeOutToOtherApp] = { BoxGraphics_ScreenFadeOutToOtherApp, 0 },
    [FUNC_BoxGraphics_ChangeToNewBox] = { BoxGraphics_ChangeToNewBox, 0 },
    [FUNC_BoxGraphics_MoveCursor] = { BoxGraphics_MoveCursor, 0 },
    [FUNC_BoxGraphics_PreviewMon] = { BoxGraphics_PreviewMon, 0 },
    [FUNC_BoxGraphics_UpdateMarkingsIcon] = { BoxGraphics_UpdateMarkingsIcon, 0 },
    [FUNC_BoxGraphics_ClearMonPreview] = { BoxGraphics_ClearMonPreview, 0 },
    [FUNC_BoxGraphics_PickUpMonIntoCursor] = { BoxGraphics_PickUpMonIntoCursor, 0 },
    [FUNC_BoxGraphics_PlaceMonDownFromCursor] = { BoxGraphics_PlaceMonDownFromCursor, 0 },
    [FUNC_BoxGraphics_PlayShiftMonAnimation] = { BoxGraphics_PlayShiftMonAnimation, 0 },
    [FUNC_BoxGraphics_StoreMonFromCursor] = { BoxGraphics_StoreMonFromCursor, 0 },
    [FUNC_BoxGraphics_StoreMonFromParty] = { BoxGraphics_StoreMonFromParty, 0 },
    [FUNC_BoxGraphics_PlayReleaseCursorMonAnimation] = { BoxGraphics_PlayReleaseCursorMonAnimation, 0 },
    [FUNC_BoxGraphics_PlayReleaseBoxMonAnimation] = { BoxGraphics_PlayReleaseBoxMonAnimation, 0 },
    [FUNC_BoxGraphics_PlayReleasePartyMonAnimation] = { BoxGraphics_PlayReleasePartyMonAnimation, 0 },
    [FUNC_BoxGraphics_DisplayItemInfo] = { BoxGraphics_DisplayItemInfo, 0 },
    [FUNC_BoxGraphics_CloseItemInfo] = { BoxGraphics_CloseItemInfo, 0 },
    [FUNC_BoxGraphics_PlayTakeItemAnimation] = { BoxGraphics_PlayTakeItemAnimation, 0 },
    [FUNC_BoxGraphics_PlayGiveItemAnimation] = { BoxGraphics_PlayGiveItemAnimation, 0 },
    [FUNC_BoxGraphics_PlaySwitchItemAnimation] = { BoxGraphics_PlaySwitchItemAnimation, 0 },
    [FUNC_BoxGraphics_UpdateHeldItemIcon] = { BoxGraphics_UpdateHeldItemIcon, 0 },
    [FUNC_BoxGraphics_ItemShrinkToNothing] = { BoxGraphics_ItemShrinkToNothing, 0 },
    [FUNC_BoxGraphics_DisplayBoxMessage] = { BoxGraphics_DisplayBoxMessage, 0 },
    [FUNC_BoxGraphics_ShowMenu] = { BoxGraphics_ShowMenu, 0 },
    [FUNC_BoxGraphics_CloseMessageBox] = { BoxGraphics_CloseMessageBox, 0 },
    [FUNC_BoxGraphics_CloseMenu] = { BoxGraphics_CloseMenu, 0 },
    [FUNC_BoxGraphics_UpdateMenuCursor] = { BoxGraphics_UpdateMenuCursor, 0 },
    [FUNC_BoxGraphics_UpdateMenuMarkings] = { BoxGraphics_UpdateMenuMarkings, 0 },
    [FUNC_BoxGraphics_ShowBoxSelectionPopup] = { BoxGraphics_ShowBoxSelectionPopup, 0 },
    [FUNC_BoxGraphics_ScrollBoxSelectionPopup] = { BoxGraphics_ScrollBoxSelectionPopup, 0 },
    [FUNC_BoxGraphics_CloseBoxSelectionPopup] = { BoxGraphics_CloseBoxSelectionPopup, 0 },
    [FUNC_BoxGraphics_TransitionWallpaper] = { BoxGraphics_TransitionWallpaper, 0 },
    [FUNC_BoxGraphics_PressBoxButton] = { BoxGraphics_PressBoxButton, 0 },
    [FUNC_BoxGraphics_OpenPartyPopup] = { BoxGraphics_OpenPartyPopup, 0 },
    [FUNC_BoxGraphics_ClosePartyPopup] = { BoxGraphics_ClosePartyPopup, 0 },
    [FUNC_BoxGraphics_PlayAdjustPartyAnimation] = { BoxGraphics_PlayAdjustPartyAnimation, 0 },
    [FUNC_BoxGraphics_FinishAdjustPartyAnimation] = { BoxGraphics_FinishAdjustPartyAnimation, 0 },
    [FUNC_BoxGraphics_SetMonMarkingsTransparency] = { BoxGraphics_SetMonMarkingsTransparency, 0 },
    [FUNC_BoxGraphics_OpenOrCloseSelectedDial] = { BoxGraphics_OpenOrCloseSelectedDial, 0 },
    [FUNC_BoxGraphics_UpdateSelectedDial] = { BoxGraphics_UpdateSelectedDial, 0 },
    [FUNC_BoxGraphics_UpdateMarkingsTouchButton] = { BoxGraphics_UpdateMarkingsTouchButton, 0 },
    [FUNC_BoxGraphics_UpdateCursorPalette] = { BoxGraphics_UpdateCursorPalette, 0 },
    [FUNC_BoxGraphics_StartDrawMultiSelect] = { BoxGraphics_StartDrawMultiSelect, 0 },
    [FUNC_BoxGraphics_ClearMultiSelectShading] = { BoxGraphics_ClearMultiSelectShading, 0 },
    [FUNC_BoxGraphics_ApplyMultiSelectMonShading] = { BoxGraphics_ApplyMultiSelectMonShading, 0 },
    [FUNC_BoxGraphics_PickUpMultiSelectedMonsIntoCursor] = { BoxGraphics_PickUpMultiSelectedMonsIntoCursor, 0 },
    [FUNC_BoxGraphics_SetCompareSlotTab] = { BoxGraphics_SetCompareSlotTab, 0 },
    [FUNC_BoxGraphics_SwitchCompareSlotTab] = { BoxGraphics_SwitchCompareSlotTab, 0 },
    [FUNC_BoxGraphics_TransitionCompareMode] = { BoxGraphics_TransitionCompareMode, 0 },
    [FUNC_BoxGraphics_ScreenFadeBothToBlackLogOff] = { BoxGraphics_ScreenFadeBothToBlackLogOff, 0 },
};

BOOL BoxGraphics_Load(BoxGraphics **dest, const BoxApplication *boxApp, const BoxApplicationManager *boxAppMan)
{
    BoxGraphics *boxGraphics = Heap_Alloc(HEAP_ID_BOX_GRAPHICS, sizeof(BoxGraphics));

    if (boxGraphics != NULL) {
        boxGraphics->boxApp = boxApp;
        boxGraphics->bgConfig = BgConfig_New(HEAP_ID_BOX_GRAPHICS);

        if (boxGraphics->bgConfig != NULL) {
            BOOL result = TRUE;
            NARC *boxGraphicsNarc;

            boxGraphicsNarc = NARC_ctor(NARC_INDEX_GRAPHIC__BOX, HEAP_ID_BOX_GRAPHICS);

            SetVBlankCallback(NULL, NULL);
            DisableHBlank();
            GXLayers_DisableEngineALayers();
            GXLayers_DisableEngineBLayers();

            GX_SetVisiblePlane(0);
            GXS_SetVisiblePlane(0);
            GX_SetOBJVRamModeChar(GX_OBJVRAMMODE_CHAR_1D_64K);
            GXS_SetOBJVRamModeChar(GX_OBJVRAMMODE_CHAR_1D_32K);
            NNS_G2dInitOamManagerModule();

            RenderOam_Init(0, 128, 0, 32, 0, 128, 0, 32, 10);
            boxGraphics->spriteList = SpriteList_InitRendering(128, &boxGraphics->renderer, HEAP_ID_BOX_GRAPHICS);
            SetSubScreenViewRect(&(boxGraphics->renderer), 0, 384 << FX32_SHIFT);

            NNS_G2dInitImagePaletteProxy(&(boxGraphics->imagePaletteProxy));

            Graphics_LoadPartialPaletteFromOpenNARC(boxGraphicsNarc, 26, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 10, &(boxGraphics->imagePaletteProxy));
            Font_UseImmediateGlyphAccess(FONT_SYSTEM, 10);

            boxGraphics->monSpriteManager = PokemonSpriteManager_New(HEAP_ID_BOX_GRAPHICS);

            for (u32 i = 0; i < BOX_GRAPHICS_MAX_TASKS; i++) {
                boxGraphics->taskSlots[i] = NULL;
            }

            BoxGraphics_ResetDeferredFrees();
            *dest = boxGraphics;

            result &= MonIconHelper_Init(&(boxGraphics->monIconHelper), boxGraphics, boxGraphics->boxApp, boxGraphics->spriteList, boxGraphicsNarc);
            result &= BoxView_Init(&(boxGraphics->box), boxGraphics, boxGraphics->boxApp, boxGraphics->bgConfig, boxGraphics->spriteList);
            result &= BoxCursorGraphics_Init(&(boxGraphics->cursorGraphics), boxGraphics, boxGraphics->boxApp, boxGraphics->spriteList, boxGraphicsNarc);
            result &= BoxButtonsGraphics_Init(&(boxGraphics->buttonsGraphics), boxGraphics, boxGraphics->boxApp, boxGraphics->spriteList, boxGraphicsNarc);
            result &= PCMonPreviewDisplay_Init(&(boxGraphics->previewDisplay), boxGraphics, boxGraphics->boxApp, boxGraphics->bgConfig, boxGraphics->spriteList, BoxAppMan_GetBoxMessagesLoader(boxAppMan), boxGraphicsNarc);
            result &= BoxMenuGraphics_Init(&(boxGraphics->menuGraphics), boxGraphics, boxGraphics->boxApp, boxGraphics->bgConfig, boxGraphics->spriteList, BoxAppMan_GetBoxMessagesLoader(boxAppMan), BoxAppMan_GetMessageVariableBuffer(boxAppMan), BoxAppMan_GetOptionsFrame(boxAppMan), boxGraphicsNarc);
            result &= BoxPopupGraphics_Init(&(boxGraphics->popupGraphics), boxGraphics, boxGraphics->boxApp, boxGraphics->bgConfig, boxGraphics->spriteList, boxGraphicsNarc);
            result &= BoxPartyGraphics_Init(&(boxGraphics->partyGraphics), boxGraphics, boxGraphics->boxApp, boxGraphics->bgConfig, boxGraphics->spriteList, boxGraphicsNarc);
            result &= BoxDialGraphics_Init(&(boxGraphics->dialGraphics), boxGraphics, boxGraphics->boxApp, boxGraphics->bgConfig, boxGraphics->spriteList);
            result &= BoxItemIconGraphics_Init(&(boxGraphics->itemIconGraphics), boxGraphics, boxGraphics->boxApp, boxGraphics->bgConfig, boxGraphics->spriteList);
            result &= BoxCompareGraphics_Init(&(boxGraphics->compareGraphics), boxGraphics, boxGraphics->boxApp, boxGraphics->bgConfig, boxGraphics->spriteList, BoxAppMan_GetBoxMessagesLoader(boxAppMan), boxGraphicsNarc);

            boxGraphics->boxAppMan = boxAppMan;
            boxGraphics->unk_00 = SysTask_Start(BoxGraphics_DrawScene, boxGraphics, 2);
            boxGraphics->unk_04 = BoxGraphics_StartVBlankTask(BoxGraphics_VBlankTask, boxGraphics, 1);

            NARC_dtor(boxGraphicsNarc);

            return result;
        }
    }

    return FALSE;
}

static void BoxGraphics_DrawScene(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics = (BoxGraphics *)param;

    BoxGraphics_ProcessDeferredFrees();

    G3X_Reset();
    G3X_ResetMtxStack();
    NNS_G2dSetupSoftwareSpriteCamera();

    PokemonSpriteManager_DrawSprites(boxGraphics->monSpriteManager);

    G3_SwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
}

void BoxGraphics_Free(BoxGraphics *boxGraphics)
{
    SetVBlankCallback(NULL, NULL);
    SysTask_Done(boxGraphics->unk_00);
    SysTask_Done(boxGraphics->unk_04);

    BoxCompareGraphics_Free(boxGraphics->compareGraphics);
    BoxItemIconGraphics_Free(boxGraphics->itemIconGraphics);
    BoxDialGraphics_Free(boxGraphics->dialGraphics);
    BoxPartyGraphics_Free(&(boxGraphics->partyGraphics));
    BoxPopupGraphics_Free(&(boxGraphics->popupGraphics));
    BoxMenuGraphics_Free(&(boxGraphics->menuGraphics));
    PCMonPreviewDisplay_Free(&(boxGraphics->previewDisplay));
    BoxButtonsGraphics_Free(&(boxGraphics->buttonsGraphics));
    BoxCursorGraphics_Free(&(boxGraphics->cursorGraphics));
    BoxView_Free(&(boxGraphics->box));
    MonIconHelper_Free(&(boxGraphics->monIconHelper));

    SpriteList_Delete(boxGraphics->spriteList);
    Bg_FreeTilemapBuffer(boxGraphics->bgConfig, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(boxGraphics->bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(boxGraphics->bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(boxGraphics->bgConfig, BG_LAYER_SUB_0);
    PokemonSpriteManager_Free(boxGraphics->monSpriteManager);
    Font_UseLazyGlyphAccess(FONT_SYSTEM);
    Heap_Free(boxGraphics->bgConfig);
    Heap_Free(boxGraphics);
    RenderOam_Free();
}

void BoxGraphics_TaskHandler(BoxGraphics *boxGraphics, enum BoxGraphicsFunction function)
{
    if (function < NELEMS(sBoxGraphicsTaskHandlers)) {
        BoxGraphicsTaskHeader *header;

        for (u32 i = 0; i < BOX_GRAPHICS_MAX_TASKS; i++) {
            if (boxGraphics->taskSlots[i] == NULL) {
                header = Heap_Alloc(HEAP_ID_BOX_GRAPHICS, sizeof(BoxGraphicsTaskHeader) + sBoxGraphicsTaskHandlers[function].unk_04);

                if (header != NULL) {
                    header->function = function;
                    header->slotIndex = i;
                    header->state = 0;
                    header->boxGraphics = boxGraphics;
                    header->extraData = ((u8 *)(header) + sBoxGraphicsTaskHandlers[function].unk_04);

                    boxGraphics->taskSlots[i] = SysTask_Start(sBoxGraphicsTaskHandlers[function].sysTaskFunc, header, 1);
                } else {
                    GF_ASSERT(FALSE);
                }

                break;
            }
        }
    } else {
        GF_ASSERT(FALSE);
    }
}

BOOL BoxGraphics_IsSysTaskDone(BoxGraphics *boxGraphics, enum BoxGraphicsFunction function)
{
    BoxGraphicsTaskHeader *header;

    for (int i = 0; i < BOX_GRAPHICS_MAX_TASKS; i++) {
        if (boxGraphics->taskSlots[i] != NULL) {
            header = SysTask_GetParam(boxGraphics->taskSlots[i]);

            if (header->function == function) {
                return FALSE;
            }
        }
    }

    return TRUE;
}

BOOL BoxGraphics_CheckAllTasksDone(BoxGraphics *boxGraphics)
{
    for (int i = 0; i < BOX_GRAPHICS_MAX_TASKS; i++) {
        if (boxGraphics->taskSlots[i] != NULL) {
            return FALSE;
        }
    }

    return TRUE;
}

static void BoxGraphicsTaskHeader_Free(BoxGraphicsTaskHeader *header)
{
    BoxGraphics *boxGraphics = header->boxGraphics;

    SysTask_Done(boxGraphics->taskSlots[header->slotIndex]);
    boxGraphics->taskSlots[header->slotIndex] = NULL;
    Heap_Free(header);
}

static void BoxGraphics_VBlankTask(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics = (BoxGraphics *)param;

    PCMonPreviewDisplay_UpdateAnimation(&boxGraphics->previewDisplay);

    SpriteList_Update(boxGraphics->spriteList);
    RenderOam_Transfer();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void BoxGraphics_ShowBoxScreen(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    const BoxApplication *boxApp;
    BoxGraphicsTaskHeader *header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    switch (header->state) {
    case SHOW_BOX_SCREEN_STATE_LOAD:
        NARC *boxGraphicsNarc = NARC_ctor(NARC_INDEX_GRAPHIC__BOX, HEAP_ID_BOX_GRAPHICS);

        BoxGraphics_InitBackground(boxGraphics, boxApp);
        BoxGraphics_LoadGraphics(boxGraphics, boxApp, boxGraphicsNarc);
        BoxGraphics_LoadSpriteGraphics(boxGraphics, boxApp, boxGraphicsNarc);
        NARC_dtor(boxGraphicsNarc);

        if (BoxApp_GetBoxMode(boxApp) != PC_MODE_COMPARE) {
            PCMonPreviewDisplay_CreatePlaceholderSprite(&boxGraphics->previewDisplay);
            header->state++;
        } else {
            BoxGraphicsTaskHeader_Free(header);
        }
        break;
    case SHOW_BOX_SCREEN_STATE_WAIT_SPRITE_REMOVED:
        if (PCMonPreviewDisplay_IsPlaceholderSpriteDeleted(&boxGraphics->previewDisplay)) {
            PCMonPreviewDisplay_ShowInitial(&(boxGraphics->previewDisplay));
            BoxGraphicsTaskHeader_Free(header);
        }
        break;
    }
}

static void BoxGraphics_ScreenFadeBothToBlackLogIn(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    const BoxApplication *boxApp;
    BoxGraphicsTaskHeader *header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    switch (header->state) {
    case BOX_GRAPHICS_TASK_START:
        Sound_PlayEffect(SEQ_SE_DP_PC_LOGIN_sseq);
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_ALL, 0x6, 0xa);
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 8, 1, HEAP_ID_BOX_GRAPHICS);
        header->state++;
        break;
    case BOX_GRAPHICS_TASK_WAIT:
        if (IsScreenFadeDone()) {
            BoxGraphicsTaskHeader_Free(header);
        }
        break;
    }
}

static void BoxGraphics_ScreenFadeInReturnToBox(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    const BoxApplication *boxApp;
    BoxGraphicsTaskHeader *header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    switch (header->state) {
    case BOX_GRAPHICS_TASK_START:
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_ALL, 0x6, 0xa);
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_BOX_GRAPHICS);
        header->state++;
        break;
    case BOX_GRAPHICS_TASK_WAIT:
        if (IsScreenFadeDone()) {
            BoxGraphicsTaskHeader_Free(header);
        }
        break;
    }
}

static void BoxGraphics_ScreenFadeOutToOtherApp(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    const BoxApplication *boxApp;
    BoxGraphicsTaskHeader *header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    switch (header->state) {
    case BOX_GRAPHICS_TASK_START:
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_BOX_GRAPHICS);
        header->state++;
        break;
    case BOX_GRAPHICS_TASK_WAIT:
        if (IsScreenFadeDone()) {
            BoxGraphicsTaskHeader_Free(header);
        }
        break;
    }
}

static void BoxGraphics_ChangeToNewBox(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    const BoxApplication *boxApp;
    BoxGraphicsTaskHeader *header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    switch (header->state) {
    case CHANGE_BOX_STATE_HIDE_SPRITES:
        BoxItemIconGraphics_HidePreviewIcon(boxGraphics->itemIconGraphics);
        header->state++;
    case CHANGE_BOX_STATE_WAIT_SPRITES_HIDDEN:
        if (BoxItemIconGraphics_IsPreviewIconHidden(boxGraphics->itemIconGraphics) == FALSE) {
            break;
        }

        header->state++;
    case CHANGE_BOX_STATE_SWITCH_BOX: {
        int boxChangeDirection = BoxGraphics_GetBoxMoveDirection(boxGraphics->box.boxID, boxApp->customization.boxID);

        BoxView_Show(&boxGraphics->box, &boxApp->customization, boxChangeDirection, TRUE);
        BoxView_StartScroll(&boxGraphics->box, &boxApp->customization, boxChangeDirection);
        Sound_PlayEffect(SE_CONFIRM_sseq_3);
        header->state++;
    }
    case CHANGE_BOX_STATE_WAIT_SWITCH_DONE:
        if (BoxView_IsScrollDone(&boxGraphics->box) == 0) {
            break;
        }

        BoxItemIconGraphics_UpdatePreviewIcon(boxGraphics->itemIconGraphics);
        header->state++;
    case CHANGE_BOX_STATE_WAIT_SPRITES_SHOWN:
        if (BoxItemIconGraphics_IsPreviewUpdateDone(boxGraphics->itemIconGraphics) == 0) {
            break;
        }

        BoxGraphicsTaskHeader_Free(header);
        break;
    }
}

static void BoxGraphics_MoveCursor(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    const BoxApplication *boxApp;
    BoxGraphicsTaskHeader *header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    switch (header->state) {
    case BOX_GRAPHICS_TASK_START:
        Sound_PlayEffect(SE_CONFIRM_sseq_3);
        BoxCursorGraphics_StartMove(&(boxGraphics->cursorGraphics));
        BoxItemIconGraphics_UpdatePreviewIcon(boxGraphics->itemIconGraphics);
        header->state++;
        break;
    case BOX_GRAPHICS_TASK_WAIT:
        if (BoxCursorGraphics_IsMoveDone(&(boxGraphics->cursorGraphics))
            && BoxItemIconGraphics_IsPreviewUpdateDone(boxGraphics->itemIconGraphics)) {
            BoxGraphicsTaskHeader_Free(header);
        }
        break;
    }
}

static void BoxGraphics_PreviewMon(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    const BoxApplication *boxApp;
    BoxGraphicsTaskHeader *header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    if (BoxApp_GetBoxMode(boxApp) != PC_MODE_COMPARE) {
        switch (header->state) {
        case BOX_GRAPHICS_TASK_START:
            PCMonPreviewDisplay_Refresh(&(boxGraphics->previewDisplay));
            header->state++;
            break;
        case BOX_GRAPHICS_TASK_WAIT:
            if (PCMonPreviewDisplay_IsRefreshDone(&(boxGraphics->previewDisplay))) {
                BoxGraphicsTaskHeader_Free(header);
            }
            break;
        }
    } else {
        switch (header->state) {
        case BOX_GRAPHICS_TASK_START:
            BoxCompareGraphics_RefreshSelectedSlot(boxGraphics->compareGraphics);
            header->state++;
            break;
        case BOX_GRAPHICS_TASK_WAIT:
            if (BoxCompareGraphics_ReturnTrue(boxGraphics->compareGraphics)) {
                BoxGraphicsTaskHeader_Free(header);
            }
            break;
        }
    }
}

static void BoxGraphics_UpdateMarkingsIcon(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    const BoxApplication *boxApp;
    BoxGraphicsTaskHeader *header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    if (BoxApp_GetPreviewMonSource(boxApp) == PREVIEW_MON_IN_CURSOR) {
        BoxCursorGraphics_UpdateMarkingsIcon(&boxGraphics->cursorGraphics);
    } else {
        switch (BoxApp_GetCursorLocation(boxApp)) {
        case CURSOR_IN_BOX:
            BoxView_UpdateMarkingsIcon(&boxGraphics->box);
            break;
        case CURSOR_IN_PARTY:
            BoxPartyGraphics_UpdateMarkingsIcon(&boxGraphics->partyGraphics);
            break;
        }
    }

    PCMonPreviewDisplay_UpdateMarkings(&boxGraphics->previewDisplay);
    BoxGraphicsTaskHeader_Free(header);
}

static void BoxGraphics_ClearMonPreview(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    const BoxApplication *boxApp;
    BoxGraphicsTaskHeader *header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    PCMonPreviewDisplay_Clear(&(boxGraphics->previewDisplay));
    BoxGraphicsTaskHeader_Free(header);
}

static void BoxGraphics_PickUpMonIntoCursor(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    const BoxApplication *boxApp;
    BoxGraphicsTaskHeader *header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    switch (header->state) {
    case BOX_GRAPHICS_TASK_START:
        BoxCursorGraphics_StartPickUpAnimation(&(boxGraphics->cursorGraphics));
        header->state++;
        break;
    case BOX_GRAPHICS_TASK_WAIT:
        if (BoxCursorGraphics_IsPickUpAnimationDone(&(boxGraphics->cursorGraphics))) {
            BoxGraphicsTaskHeader_Free(header);
        }
        break;
    }
}

static void BoxGraphics_PlaceMonDownFromCursor(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    const BoxApplication *boxApp;
    BoxGraphicsTaskHeader *header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    switch (header->state) {
    case BOX_GRAPHICS_TASK_START:
        BoxCursorGraphics_StartPlaceDownAnimation(&(boxGraphics->cursorGraphics));
        header->state++;
        break;
    case BOX_GRAPHICS_TASK_WAIT:
        if (BoxCursorGraphics_IsPlaceDownAnimationDone(&(boxGraphics->cursorGraphics))) {
            BoxGraphicsTaskHeader_Free(header);
        }
        break;
    }
}

static void BoxGraphics_PlayShiftMonAnimation(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    const BoxApplication *boxApp;
    BoxGraphicsTaskHeader *header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    switch (header->state) {
    case BOX_GRAPHICS_TASK_START:
        BoxCursorGraphics_StartShiftAnimation(&(boxGraphics->cursorGraphics));
        header->state++;
        break;
    case BOX_GRAPHICS_TASK_WAIT:
        if (BoxCursorGraphics_IsShiftAnimationDone(&(boxGraphics->cursorGraphics))) {
            BoxGraphicsTaskHeader_Free(header);
        }
        break;
    }
}

static void BoxGraphics_StoreMonFromCursor(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    const BoxApplication *boxApp;
    BoxGraphicsTaskHeader *header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    switch (header->state) {
    case BOX_GRAPHICS_TASK_START:
        BoxCursorGraphics_OnMonStoredFromCursor(&(boxGraphics->cursorGraphics));
        header->state++;
        break;
    case BOX_GRAPHICS_TASK_FREE:
        BoxGraphicsTaskHeader_Free(header);
        break;
    }
}

static void BoxGraphics_StoreMonFromParty(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    const BoxApplication *boxApp;
    BoxGraphicsTaskHeader *header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    switch (header->state) {
    case STORE_MON_FROM_PARTY_STATE_START:
        BoxPartyGraphics_StoreMon(&(boxGraphics->partyGraphics));
        header->state++;
        break;
    case STORE_MON_FROM_PARTY_STATE_ADJUST:
        BoxPartyGraphics_ShiftIconsUp(&(boxGraphics->partyGraphics));
        header->state++;
        break;
    case STORE_MON_FROM_PARTY_STATE_WAIT_ADJUST_DONE:
        if (BoxPartyGraphics_HasFinishedAnimating2(&(boxGraphics->partyGraphics))) {
            BoxGraphicsTaskHeader_Free(header);
        }
        break;
    }
}

static void BoxGraphics_PlayReleaseCursorMonAnimation(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    const BoxApplication *boxApp;
    BoxGraphicsTaskHeader *header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    switch (header->state) {
    case BOX_GRAPHICS_TASK_START:
        BoxCursorGraphics_StartReleaseAnimation(&(boxGraphics->cursorGraphics));
        header->state++;
        break;
    case BOX_GRAPHICS_TASK_WAIT:
        if (BoxCursorGraphics_IsReleaseAnimationDone(&(boxGraphics->cursorGraphics))) {
            BoxGraphicsTaskHeader_Free(header);
        }
        break;
    }
}

static void BoxGraphics_PlayReleaseBoxMonAnimation(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    const BoxApplication *boxApp;
    BoxGraphicsTaskHeader *header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    switch (header->state) {
    case BOX_GRAPHICS_TASK_START:
        BoxView_StartReleaseMonAnimation(&(boxGraphics->box), BoxApp_GetCursorBoxPosition(boxApp));
        header->state++;
        break;
    case BOX_GRAPHICS_TASK_WAIT:
        if (BoxView_IsReleaseMonAnimationDone(&(boxGraphics->box))) {
            BoxGraphicsTaskHeader_Free(header);
        }
        break;
    }
}

static void BoxGraphics_PlayReleasePartyMonAnimation(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    const BoxApplication *boxApp;
    BoxGraphicsTaskHeader *header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    switch (header->state) {
    case BOX_GRAPHICS_TASK_START:
        BoxPartyGraphics_StartReleaseMonAnimation(&(boxGraphics->partyGraphics), BoxApp_GetCursorPartyPosition(boxApp));
        header->state++;
        break;
    case BOX_GRAPHICS_TASK_WAIT:
        if (BoxPartyGraphics_IsReleaseMonAnimationDone(&(boxGraphics->partyGraphics))) {
            BoxGraphicsTaskHeader_Free(header);
        }
        break;
    }
}

static void BoxGraphics_DisplayItemInfo(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    const BoxApplication *boxApp;
    BoxGraphicsTaskHeader *header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    switch (header->state) {
    case BOX_GRAPHICS_TASK_START:
        BoxPopupGraphics_OpenItemInfo(&(boxGraphics->popupGraphics));
        header->state++;
        break;
    case BOX_GRAPHICS_TASK_WAIT:
        if (BoxPopupGraphics_IsAnimDone2(&(boxGraphics->popupGraphics))) {
            BoxGraphicsTaskHeader_Free(header);
        }
        break;
    }
}

static void BoxGraphics_CloseItemInfo(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    const BoxApplication *boxApp;
    BoxGraphicsTaskHeader *header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    switch (header->state) {
    case BOX_GRAPHICS_TASK_START:
        BoxPopupGraphics_CloseItemInfo(&(boxGraphics->popupGraphics));
        header->state++;
        break;
    case BOX_GRAPHICS_TASK_WAIT:
        if (BoxPopupGraphics_IsItemInfoClosed(&(boxGraphics->popupGraphics))) {
            BoxGraphicsTaskHeader_Free(header);
        }
        break;
    }
}

static void BoxGraphics_PlayTakeItemAnimation(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    const BoxApplication *boxApp;
    BoxGraphicsTaskHeader *header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    switch (header->state) {
    case BOX_GRAPHICS_TASK_START:
        BoxCursorGraphics_StartTakeItemAnimation(&(boxGraphics->cursorGraphics));
        header->state++;
        break;
    case BOX_GRAPHICS_TASK_WAIT:
        if (BoxCursorGraphics_IsAnimationDone3(&(boxGraphics->cursorGraphics))) {
            PCMonPreviewDisplay_UpdateHeldItem(&(boxGraphics->previewDisplay));
            BoxGraphicsTaskHeader_Free(header);
        }
        break;
    }
}

static void BoxGraphics_PlayGiveItemAnimation(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    const BoxApplication *boxApp;
    BoxGraphicsTaskHeader *header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    switch (header->state) {
    case BOX_GRAPHICS_TASK_START:
        BoxCursorGraphics_StartGiveItemAnimation(&(boxGraphics->cursorGraphics));
        header->state++;
        break;
    case BOX_GRAPHICS_TASK_WAIT:
        if (BoxCursorGraphics_IsAnimationDone4(&(boxGraphics->cursorGraphics))) {
            PCMonPreviewDisplay_UpdateHeldItem(&(boxGraphics->previewDisplay));
            BoxGraphicsTaskHeader_Free(header);
        }
        break;
    }
}

static void BoxGraphics_PlaySwitchItemAnimation(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    const BoxApplication *boxApp;
    BoxGraphicsTaskHeader *header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    switch (header->state) {
    case BOX_GRAPHICS_TASK_START:
        BoxCursorGraphics_StartSwitchItemAnimation(&(boxGraphics->cursorGraphics));
        header->state++;
        break;
    case BOX_GRAPHICS_TASK_WAIT:
        if (BoxCursorGraphics_IsAnimationDone5(&(boxGraphics->cursorGraphics))) {
            PCMonPreviewDisplay_UpdateHeldItem(&(boxGraphics->previewDisplay));
            BoxGraphicsTaskHeader_Free(header);
        }
        break;
    }
}

static void BoxGraphics_UpdateHeldItemIcon(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    const BoxApplication *boxApp;
    BoxGraphicsTaskHeader *header;
    u32 item;

    header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;
    item = BoxApp_GetPreviewedMonHeldItem(boxApp);

    if (BoxApp_GetPreviewMonSource(boxApp) == PREVIEW_MON_IN_CURSOR) {
        BoxCursorGraphics_UpdateHeldItemIcon(&boxGraphics->cursorGraphics, item);
    } else {
        switch (BoxApp_GetCursorLocation(boxApp)) {
        case CURSOR_IN_PARTY:
            BoxPartyGraphics_UpdateHeldItemIcon(&boxGraphics->partyGraphics, BoxApp_GetCursorPartyPosition(boxApp), item);
            break;
        case CURSOR_IN_BOX:
            BoxView_UpdateHeldItemIcon(&boxGraphics->box, BoxApp_GetCursorBoxPosition(boxApp), item);
            break;
        }
    }

    BoxGraphicsTaskHeader_Free(header);
}

static void BoxGraphics_ItemShrinkToNothing(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    const BoxApplication *boxApp;
    BoxGraphicsTaskHeader *header;

    header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    switch (header->state) {
    case BOX_GRAPHICS_TASK_START:
        BoxCursorGraphics_ShowReachingPose(&boxGraphics->cursorGraphics);
        BoxItemIconGraphics_StartShrinkItem(boxGraphics->itemIconGraphics);
        header->state++;
        break;
    case BOX_GRAPHICS_TASK_WAIT:
        if (BoxItemIconGraphics_IsShrinkItemDone(boxGraphics->itemIconGraphics)) {
            BoxCursorGraphics_ClearHeldItem(&boxGraphics->cursorGraphics);
            BoxGraphicsTaskHeader_Free(header);
        }
        break;
    }
}

static void BoxGraphics_DisplayBoxMessage(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    BoxGraphicsTaskHeader *header;
    const BoxApplication *boxApp;

    header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    BoxMenuGraphics_ShowMessage(&(boxGraphics->menuGraphics), BoxApp_GetBoxMessageID(boxApp));
    BoxGraphicsTaskHeader_Free(header);
}

static void BoxGraphics_ShowMenu(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    BoxGraphicsTaskHeader *header;
    const BoxApplication *boxApp;

    header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    BoxMenuGraphics_ShowMessage(&(boxGraphics->menuGraphics), BoxApp_GetBoxMessageID(boxApp));
    BoxMenuGraphics_ShowMenu(&(boxGraphics->menuGraphics), &(boxApp->boxMenu));
    BoxGraphicsTaskHeader_Free(header);
}

static void BoxGraphics_CloseMessageBox(SysTask *unused, void *param)
{
    BoxGraphicsTaskHeader *header = (BoxGraphicsTaskHeader *)param;
    BoxGraphics *boxGraphics = header->boxGraphics;

    BoxMenuGraphics_CloseMessageBox(&(boxGraphics->menuGraphics));
    BoxGraphicsTaskHeader_Free(header);
}

static void BoxGraphics_CloseMenu(SysTask *unused, void *param)
{
    BoxGraphicsTaskHeader *header = (BoxGraphicsTaskHeader *)param;
    BoxGraphics *boxGraphics = header->boxGraphics;

    BoxMenuGraphics_CloseMenu(&(boxGraphics->menuGraphics));
    BoxGraphicsTaskHeader_Free(header);
}

static void BoxGraphics_UpdateMenuCursor(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    BoxGraphicsTaskHeader *header;
    const BoxApplication *boxApp;

    header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    Sound_PlayEffect(SE_CONFIRM_sseq_3);
    BoxMenuGraphics_DrawMenuCursor(&(boxGraphics->menuGraphics), &(boxApp->boxMenu));
    BoxGraphicsTaskHeader_Free(header);
}

static void BoxGraphics_UpdateMenuMarkings(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    BoxGraphicsTaskHeader *header;
    const BoxApplication *boxApp;

    header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    Sound_PlayEffect(SEQ_SE_DP_DECIDE_sseq);
    BoxMenuGraphics_UpdateMarkings(&(boxGraphics->menuGraphics), &(boxApp->boxMenu));
    BoxGraphicsTaskHeader_Free(header);
}

static void BoxGraphics_ShowBoxSelectionPopup(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    BoxGraphicsTaskHeader *header;
    const BoxApplication *boxApp;

    header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    switch (header->state) {
    case BOX_GRAPHICS_TASK_START:
        BoxPopupGraphics_OpenBoxSelection(&(boxGraphics->popupGraphics));
        header->state++;
        break;
    case BOX_GRAPHICS_TASK_WAIT:
        if (BoxPopupGraphics_IsBoxSelectionOpen(&(boxGraphics->popupGraphics))) {
            BoxGraphicsTaskHeader_Free(header);
        }
    }
}

static void BoxGraphics_ScrollBoxSelectionPopup(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    BoxGraphicsTaskHeader *header;
    const BoxApplication *boxApp;

    header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    switch (header->state) {
    case BOX_GRAPHICS_TASK_START:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE_sseq);
        BoxPopupGraphics_ScrollBoxSelection(&(boxGraphics->popupGraphics));
        header->state++;
        break;
    case BOX_GRAPHICS_TASK_FREE:
        BoxGraphicsTaskHeader_Free(header);
    }
}

static void BoxGraphics_CloseBoxSelectionPopup(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    BoxGraphicsTaskHeader *header;
    const BoxApplication *boxApp;

    header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    switch (header->state) {
    case BOX_GRAPHICS_TASK_START:
        BoxPopupGraphics_CloseBoxSelection(&(boxGraphics->popupGraphics));
        header->state++;
        break;
    case BOX_GRAPHICS_TASK_WAIT:
        if (BoxPopupGraphics_IsBoxSelectionOpen2(&(boxGraphics->popupGraphics))) {
            BoxGraphicsTaskHeader_Free(header);
        }
    }
}

static void BoxGraphics_TransitionWallpaper(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    BoxGraphicsTaskHeader *header;
    const BoxApplication *boxApp;

    header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    switch (header->state) {
    case BOX_GRAPHICS_TASK_START:
        BoxView_StartWallpaperChange(&(boxGraphics->box));
        header->state++;
        break;
    case BOX_GRAPHICS_TASK_WAIT:
        if (BoxView_IsWallpaperChangeDone(&(boxGraphics->box))) {
            BoxGraphicsTaskHeader_Free(header);
        }
        break;
    }
}

static void BoxGraphics_PressBoxButton(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    BoxGraphicsTaskHeader *header;
    const BoxApplication *boxApp;

    header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    switch (header->state) {
    case PRESS_BOX_BUTTON_STATE_START:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE_sseq);
        BoxCursorGraphics_StartButtonPressAnimation(&(boxGraphics->cursorGraphics));
        header->state++;
        break;
    case PRESS_BOX_BUTTON_STATE_WAIT_ANIM:
        if (BoxCursorGraphics_IsAnimationDone2(&(boxGraphics->cursorGraphics))) {
            switch (BoxApp_GetCursorLocation(boxApp)) {
            case CURSOR_ON_PARTY_BUTTON:
                BoxButtonsGraphics_SetPressedButton(&(boxGraphics->buttonsGraphics), BOX_BUTTONS_ANIM_PARTY_PRESSED);
                break;
            case CURSOR_ON_CLOSE_BUTTON:
                BoxButtonsGraphics_SetPressedButton(&(boxGraphics->buttonsGraphics), BOX_BUTTONS_ANIM_CLOSE_PRESSED);
                break;
            }

            header->frameCounter = 0;
            header->state++;
        }
        break;
    case PRESS_BOX_BUTTON_STATE_HOLD:
        if (++(header->frameCounter) >= 6) {
            BoxCursorGraphics_StartReturnToRestAnimation(&(boxGraphics->cursorGraphics));
            BoxButtonsGraphics_SetPressedButton(&(boxGraphics->buttonsGraphics), BOX_BUTTONS_ANIM_NONE_PRESSED);
            header->state++;
        }
        break;
    case PRESS_BOX_BUTTON_STATE_WAIT_RETURN:
        if (BoxCursorGraphics_IsReturnToRestAnimationDone(&(boxGraphics->cursorGraphics))) {
            BoxGraphicsTaskHeader_Free(header);
        }
        break;
    }
}

static void BoxGraphics_OpenPartyPopup(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    BoxGraphicsTaskHeader *header;
    const BoxApplication *boxApp;

    header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    switch (header->state) {
    case BOX_GRAPHICS_TASK_START:
        Sound_PlayEffect(SEQ_SE_DP_OPEN7_sseq);
        BoxCursorGraphics_RaisePriority(&(boxGraphics->cursorGraphics));
        BoxPartyGraphics_Open(&(boxGraphics->partyGraphics));
        header->state++;
        break;
    case BOX_GRAPHICS_TASK_WAIT:
        if (BoxPartyGraphics_HasFinishedAnimating(&(boxGraphics->partyGraphics))) {
            BoxGraphicsTaskHeader_Free(header);
        }
        break;
    }
}

static void BoxGraphics_ClosePartyPopup(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    BoxGraphicsTaskHeader *header;
    const BoxApplication *boxApp;

    header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    switch (header->state) {
    case CLOSE_PARTY_POPUP_STATE_HIDE_SPRITES:
        BoxItemIconGraphics_HidePreviewIcon(boxGraphics->itemIconGraphics);
        header->state++;
    case CLOSE_PARTY_POPUP_STATE_WAIT_SPRITES_HIDDEN:
        if (BoxItemIconGraphics_IsPreviewIconHidden(boxGraphics->itemIconGraphics) == 0) {
            break;
        }

        header->state++;
    case CLOSE_PARTY_POPUP_STATE_CLOSE:
        Sound_PlayEffect(SEQ_SE_DP_CLOSE7_sseq);
        BoxPartyGraphics_Close(&(boxGraphics->partyGraphics));
        header->state++;
        break;
    case CLOSE_PARTY_POPUP_STATE_WAIT_CLOSE_DONE:
        if (BoxPartyGraphics_IsClosed(&(boxGraphics->partyGraphics))) {
            BoxCursorGraphics_RestorePriority(&(boxGraphics->cursorGraphics));
            BoxGraphicsTaskHeader_Free(header);
        }
        break;
    }
}

static void BoxGraphics_PlayAdjustPartyAnimation(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    BoxGraphicsTaskHeader *header;
    const BoxApplication *boxApp;

    header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    switch (header->state) {
    case BOX_GRAPHICS_TASK_START:
        BoxPartyGraphics_ShiftIconsUp(&(boxGraphics->partyGraphics));
        header->state++;
        break;
    case BOX_GRAPHICS_TASK_WAIT:
        if (BoxPartyGraphics_HasFinishedAnimating2(&(boxGraphics->partyGraphics))) {
            BoxGraphicsTaskHeader_Free(header);
        }
        break;
    }
}

static void BoxGraphics_FinishAdjustPartyAnimation(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    BoxGraphicsTaskHeader *header;
    const BoxApplication *boxApp;

    header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    switch (header->state) {
    case BOX_GRAPHICS_TASK_START:
        if (BoxApp_GetCursorLocation(boxApp) == CURSOR_IN_PARTY) {
            BoxPartyGraphics_GlideIconToLastSlot(&boxGraphics->partyGraphics);
            header->state++;
            break;
        }

        BoxGraphicsTaskHeader_Free(header);
        break;
    case BOX_GRAPHICS_TASK_WAIT:
        if (BoxPartyGraphics_HasFinishedAnimating3(&boxGraphics->partyGraphics)) {
            BoxGraphicsTaskHeader_Free(header);
        }
        break;
    }
}

static void BoxGraphics_SetMonMarkingsTransparency(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    BoxGraphicsTaskHeader *header;
    const BoxApplication *boxApp;

    header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    BoxView_UpdateMarkingsTransparency(&boxGraphics->box);
    BoxPartyGraphics_UpdateMarkingsTransparency(&boxGraphics->partyGraphics);
    BoxCursorGraphics_UpdateHeldMonTransparency(&boxGraphics->cursorGraphics);
    BoxGraphicsTaskHeader_Free(header);
}

static void BoxGraphics_OpenOrCloseSelectedDial(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    BoxGraphicsTaskHeader *header;
    const BoxApplication *boxApp;

    header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    switch (header->state) {
    case DIAL_STATE_START:
        BoxDialGraphics_SwitchDial(boxGraphics->dialGraphics);
        header->state++;
        break;
    case DIAL_STATE_WAIT_TOGGLE_DONE:
        if (BoxDialGraphics_IsSwitchDone(boxGraphics->dialGraphics)) {
            if (boxApp->dialHelper.selectedDial == DIALS_NONE) {
                BoxGraphicsTaskHeader_Free(header);
            } else {
                BoxDialGraphics_PopulateDial(boxGraphics->dialGraphics);
                header->state++;
            }
        }
        break;
    case DIAL_STATE_WAIT_SELECT_DONE:
        if (BoxDialGraphics_IsPopulateDone(boxGraphics->dialGraphics)) {
            BoxGraphicsTaskHeader_Free(header);
        }
        break;
    }
}

static void BoxGraphics_UpdateSelectedDial(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    BoxGraphicsTaskHeader *header;
    const BoxApplication *boxApp;

    header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    switch (header->state) {
    case BOX_GRAPHICS_TASK_START:
        BoxDialGraphics_RotateDial(boxGraphics->dialGraphics);
        header->state++;
        break;
    case BOX_GRAPHICS_TASK_WAIT:
        if (BoxDialGraphics_IsRotateDone(boxGraphics->dialGraphics)) {
            BoxGraphicsTaskHeader_Free(header);
        }
        break;
    }
}

static void BoxGraphics_UpdateMarkingsTouchButton(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    BoxGraphicsTaskHeader *header;
    const BoxApplication *boxApp;

    header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    BoxDialGraphics_UpdateMarkingButtons(boxGraphics->dialGraphics);
    BoxGraphicsTaskHeader_Free(header);
}

static void BoxGraphics_UpdateCursorPalette(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    BoxGraphicsTaskHeader *header;
    const BoxApplication *boxApp;

    header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    BoxCursorGraphics_UpdateFastModePalette(&(boxGraphics->cursorGraphics));
    BoxGraphicsTaskHeader_Free(header);
}

static void BoxGraphics_StartDrawMultiSelect(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    BoxGraphicsTaskHeader *header;
    const BoxApplication *boxApp;

    header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    BoxGraphics_OpenMultiSelectCursor(&(boxGraphics->cursorGraphics));
    BoxView_ApplyMultiSelectMonShading(&(boxGraphics->box));
    BoxGraphicsTaskHeader_Free(header);
}

static void BoxGraphics_ClearMultiSelectShading(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    BoxGraphicsTaskHeader *header;
    const BoxApplication *boxApp;

    header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    BoxView_ClearMultiSelectShading(&(boxGraphics->box));
    BoxGraphicsTaskHeader_Free(header);
}

static void BoxGraphics_ApplyMultiSelectMonShading(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    BoxGraphicsTaskHeader *header;
    const BoxApplication *boxApp;

    header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    BoxView_ApplyMultiSelectMonShading(&(boxGraphics->box));
    BoxGraphicsTaskHeader_Free(header);
}

static void BoxGraphics_PickUpMultiSelectedMonsIntoCursor(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    BoxGraphicsTaskHeader *header;
    const BoxApplication *boxApp;

    header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    switch (header->state) {
    case BOX_GRAPHICS_TASK_START:
        BoxCursorGraphics_StartPickUpAnimation(&(boxGraphics->cursorGraphics));
        header->state++;
        break;
    case BOX_GRAPHICS_TASK_WAIT:
        if (BoxCursorGraphics_IsPickUpAnimationDone(&(boxGraphics->cursorGraphics))) {
            BoxGraphicsTaskHeader_Free(header);
        }
        break;
    }
}

static void BoxGraphics_SetCompareSlotTab(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    BoxGraphicsTaskHeader *header;
    const BoxApplication *boxApp;

    header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    BoxCompareGraphics_UpdateSlotTabs(boxGraphics->compareGraphics, 0);
    BoxGraphicsTaskHeader_Free(header);
}

static void BoxGraphics_SwitchCompareSlotTab(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    BoxGraphicsTaskHeader *header;
    const BoxApplication *boxApp;

    header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    BoxCompareGraphics_UpdateSlotTabs(boxGraphics->compareGraphics, 1);
    BoxGraphicsTaskHeader_Free(header);
}

static void BoxGraphics_TransitionCompareMode(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    BoxGraphicsTaskHeader *header;
    const BoxApplication *boxApp;

    header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    switch (header->state) {
    case BOX_GRAPHICS_TASK_START:
        BoxCompareGraphics_StartPageChange(boxGraphics->compareGraphics);
        header->state++;
        break;
    case BOX_GRAPHICS_TASK_WAIT:
        if (BoxCompareGraphics_IsPageChangeDone(boxGraphics->compareGraphics)) {
            BoxGraphicsTaskHeader_Free(header);
        }
        break;
    }
}

static void BoxGraphics_ScreenFadeBothToBlackLogOff(SysTask *unused, void *param)
{
    BoxGraphics *boxGraphics;
    const BoxApplication *boxApp;
    BoxGraphicsTaskHeader *header = (BoxGraphicsTaskHeader *)param;
    boxGraphics = header->boxGraphics;
    boxApp = boxGraphics->boxApp;

    switch (header->state) {
    case BOX_GRAPHICS_TASK_START:
        Sound_PlayEffect(SEQ_SE_DP_PC_LOGOFF_sseq);
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_BOX_GRAPHICS);
        header->state++;
        break;
    case BOX_GRAPHICS_TASK_WAIT:
        if (IsScreenFadeDone()) {
            BoxGraphicsTaskHeader_Free(header);
        }
        break;
    }
}

static void BoxGraphics_InitBackground(BoxGraphics *boxGraphics, const BoxApplication *boxApp)
{
    static const GXBanks vramBanks = {
        GX_VRAM_BG_128_B,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_A,
        GX_VRAM_TEXPLTT_01_FG
    };

    static const GraphicsModes graphicsModes = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_3D,
    };

    static const BgTemplate unusedBgTemplate = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = 0,
        .charBase = 0,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    static const BgTemplate mainBg1Template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xe000,
        .charBase = GX_BG_CHARBASE_0x18000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    static const BgTemplate mainBg2Template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xe800,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    static const BgTemplate mainBg3Template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x1000,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_512x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf000,
        .charBase = GX_BG_CHARBASE_0x10000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 3,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    static const BgTemplate subBg0Template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf000,
        .charBase = GX_BG_CHARBASE_0x10000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    static const BgTemplate subBg1Template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x0,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_512x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xd000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    static const BgTemplate subBg2Template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x0,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_512x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xe000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 2,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    static const BgTemplate subBg3Template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x0,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf800,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 3,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    static const BgTemplate compareSubBg1Template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x0,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xe000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    static const BgTemplate compareSubBg2Template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x0,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xe800,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 2,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    GXLayers_SetBanks(&vramBanks);

    GX_SetDispSelect(GX_DISP_SELECT_MAIN_SUB);
    GX_SetGraphicsMode(GX_DISPMODE_GRAPHICS, GX_BGMODE_0, GX_BG0_AS_3D);

    SetAllGraphicsModes(&graphicsModes);
    Bg_InitFromTemplate(boxGraphics->bgConfig, BG_LAYER_MAIN_1, &mainBg1Template, 0);
    Bg_InitFromTemplate(boxGraphics->bgConfig, BG_LAYER_MAIN_2, &mainBg2Template, 0);
    Bg_InitFromTemplate(boxGraphics->bgConfig, BG_LAYER_MAIN_3, &mainBg3Template, 0);

    if (BoxApp_GetBoxMode(boxApp) != PC_MODE_COMPARE) {
        Bg_InitFromTemplate(boxGraphics->bgConfig, BG_LAYER_SUB_0, &subBg0Template, 0);
        Bg_InitFromTemplate(boxGraphics->bgConfig, BG_LAYER_SUB_1, &subBg1Template, 0);
        Bg_InitFromTemplate(boxGraphics->bgConfig, BG_LAYER_SUB_2, &subBg2Template, 0);
        Bg_InitFromTemplate(boxGraphics->bgConfig, BG_LAYER_SUB_3, &subBg3Template, 0);
    } else {
        Bg_InitFromTemplate(boxGraphics->bgConfig, BG_LAYER_SUB_0, &subBg0Template, 0);
        Bg_InitFromTemplate(boxGraphics->bgConfig, BG_LAYER_SUB_1, &compareSubBg1Template, 0);
        Bg_InitFromTemplate(boxGraphics->bgConfig, BG_LAYER_SUB_2, &compareSubBg2Template, 0);
        Bg_InitFromTemplate(boxGraphics->bgConfig, BG_LAYER_SUB_3, &subBg3Template, 0);
    }

    BoxGraphics_Init3D();
}

static void BoxGraphics_LoadGraphics(BoxGraphics *boxGraphics, const BoxApplication *boxApp, NARC *narc)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 4, boxGraphics->bgConfig, 1, 0, 0, 1, HEAP_ID_BOX_GRAPHICS);
    Bg_FillTilemapRect(boxGraphics->bgConfig, 1, 0x0, 0, 0, 32, 32, 17);
    Bg_CopyTilemapBufferToVRAM(boxGraphics->bgConfig, 1);
    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 1, boxGraphics->bgConfig, 2, 0, 0, 1, HEAP_ID_BOX_GRAPHICS);
    Graphics_LoadPaletteFromOpenNARC(narc, 5, 0, 0, 0x20 * 7, HEAP_ID_BOX_GRAPHICS);

    if (BoxApp_GetBoxMode(boxApp) != PC_MODE_COMPARE) {
        Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 0, boxGraphics->bgConfig, 2, 0, 0, 1, HEAP_ID_BOX_GRAPHICS);
    }

    BoxView_InitBgScroll(&boxGraphics->box);
    BoxView_Show(&boxGraphics->box, &boxApp->customization, 0, TRUE);
    PCMonPreviewDisplay_LoadGraphics(&(boxGraphics->previewDisplay));
    BoxMenuGraphics_LoadGraphics(&(boxGraphics->menuGraphics));
    BoxPopupGraphics_LoadGraphics(&(boxGraphics->popupGraphics));
    BoxDialGraphics_LoadGraphics(boxGraphics->dialGraphics, narc);
    BoxCompareGraphics_LoadGraphics(boxGraphics->compareGraphics, narc);

    if (BoxApp_GetCursorLocation(boxApp) == CURSOR_IN_PARTY) {
        BoxPartyGraphics_ShowInstantly(&(boxGraphics->partyGraphics));
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    GX_DispOn();
}

static void BoxGraphics_Init3D(void)
{
    NNS_G3dInit();
    G3X_InitMtxStack();

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

    G2_SetBG0Priority(1);
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(1);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_SetClearColor(GX_RGB(0, 0, 0), 0, 0x7fff, 63, 0);
    G3_SwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
    G3_ViewPort(0, 0, 255, 191);
}

static void BoxGraphics_LoadSpriteGraphics(BoxGraphics *boxGraphics, const BoxApplication *unused, NARC *narc)
{
    BoxCursorGraphics_Load(&boxGraphics->cursorGraphics, narc);
    BoxButtonsGraphics_CreateSprite(&boxGraphics->buttonsGraphics, narc);
    BoxItemIconGraphics_ShowInitialIcons(boxGraphics->itemIconGraphics);
}

static int BoxGraphics_GetBoxMoveDirection(u32 sourceBoxID, u32 destBoxID)
{
    int distanceRight, distanceLeft;

    if (destBoxID > sourceBoxID) {
        distanceRight = destBoxID - sourceBoxID;
        distanceLeft = sourceBoxID + (MAX_PC_BOXES - destBoxID);
    } else {
        distanceRight = destBoxID + (MAX_PC_BOXES - sourceBoxID);
        distanceLeft = sourceBoxID - destBoxID;
    }

    return (distanceRight >= distanceLeft) ? -1 : 1;
}

SysTask *BoxGraphics_StartVBlankTask(SysTaskFunc callback, void *param, u32 priority)
{
    return SysTask_ExecuteOnVBlank(callback, param, priority);
}

NNSG2dImagePaletteProxy *BoxGraphics_GetImagePaletteProxy(BoxGraphics *boxGraphics)
{
    return &(boxGraphics->imagePaletteProxy);
}

MonIconHelper *BoxGraphics_GetMonIconHelper(BoxGraphics *boxGraphics)
{
    return &(boxGraphics->monIconHelper);
}

BoxView *BoxGraphics_GetBoxView(BoxGraphics *boxGraphics)
{
    return &(boxGraphics->box);
}

BoxPartyGraphics *BoxGraphics_GetPartyGraphics(BoxGraphics *boxGraphics)
{
    return &(boxGraphics->partyGraphics);
}

BoxCursorGraphics *BoxGraphics_GetCursorGraphics(BoxGraphics *boxGraphics)
{
    return &(boxGraphics->cursorGraphics);
}

BoxItemIconGraphics *BoxGraphics_GetItemIconGraphics(BoxGraphics *boxGraphics)
{
    return boxGraphics->itemIconGraphics;
}

BoxPopupGraphics *BoxGraphics_GetPopupGraphics(BoxGraphics *boxGraphics)
{
    return &(boxGraphics->popupGraphics);
}

PokemonSpriteManager *BoxGraphics_GetMonSpriteManager(BoxGraphics *boxGraphics)
{
    return boxGraphics->monSpriteManager;
}

int BoxGraphics_GetCompareModeXOffset(BoxGraphics *boxGraphics)
{
    if (BoxApp_GetBoxMode(boxGraphics->boxApp) != PC_MODE_COMPARE) {
        return 0;
    } else {
        return BOX_GRAPHICS_COMPARE_MODE_X_OFFSET;
    }
}

void SpriteResourcesHeader_InitFromProxies(SpriteResourcesHeader *srHeader, NNSG2dImageProxy *imageProxy, NNSG2dImagePaletteProxy *plttProxy, NNSG2dCellDataBank *cellBank, NNSG2dCellAnimBankData *animBank, u32 priority)
{
    srHeader->imageProxy = imageProxy;
    srHeader->paletteProxy = plttProxy;
    srHeader->cellBank = cellBank;
    srHeader->cellAnimBank = animBank;
    srHeader->priority = priority;
    srHeader->charData = NULL;
    srHeader->multiCellBank = NULL;
    srHeader->multiCellAnimBank = NULL;
    srHeader->isVRamTransfer = 0;
}

Sprite *BoxGraphics_CreateSprite(SpriteList *spriteList, SpriteResourcesHeader *srHeader, u32 x, u32 y, u32 priority, NNS_G2D_VRAM_TYPE vramType)
{
    SpriteListTemplate template;
    Sprite *sprite;

    template.list = spriteList;
    template.resourceData = srHeader;
    template.position.x = x * FX32_ONE;
    template.position.y = y * FX32_ONE;
    template.position.z = 0;
    template.priority = priority;
    template.vramType = vramType;
    template.heapID = HEAP_ID_BOX_GRAPHICS;

    OSIntrMode intrMode = OS_DisableInterrupts();

    sprite = SpriteList_Add(&template);
    OS_RestoreInterrupts(intrMode);

    if (sprite) {
        Sprite_SetAnimateFlag(sprite, 1);
        Sprite_SetAnimSpeed(sprite, FX32_ONE * (2 / 2));
    }

    return sprite;
}

void BoxGraphics_SetSpritePriority(Sprite *sprite, u32 priority)
{
    OSIntrMode mode = OS_DisableInterrupts();

    Sprite_SetPriority(sprite, priority);
    OS_RestoreInterrupts(mode);
}

void BoxGraphics_BlendPltt(const u16 *src, u16 *dest, u32 size, u16 target, u32 fraction)
{
    int r, g, b;
    int targetR, targetG, targetB;

    targetR = (target & 0x1f) << 8;
    targetG = ((target >> 5) & 0x1f) << 8;
    targetB = ((target >> 10) & 0x1f) << 8;

    while (size--) {
        r = ((*src) & 0x1f) << 8;
        g = (((*src) >> 5) & 0x1f) << 8;
        b = (((*src) >> 10) & 0x1f) << 8;

        r += (((targetR - r) / 16) * fraction);
        g += (((targetG - g) / 16) * fraction);
        b += (((targetB - b) / 16) * fraction);

        r = (r >> 8) & 0x1f;
        g = (g >> 8) & 0x1f;
        b = (b >> 8) & 0x1f;

        *dest = ((b << 10) | (g << 5) | r);

        src++;
        dest++;
    }
}

const BoxApplicationManager *BoxGraphics_GetBoxAppMan(BoxGraphics *boxGraphics)
{
    return boxGraphics->boxAppMan;
}

static u32 sDeferredFreeCount = 0;

static struct {
    BoxGraphicsDeferredFreeCallback callback;
    void *callbackParam;
    void *heapPtr;
} sDeferredFrees[32];

static void BoxGraphics_ResetDeferredFrees(void)
{
    sDeferredFreeCount = 0;
}

static void BoxGraphics_ProcessDeferredFrees(void)
{
    if (sDeferredFreeCount) {
        for (u32 i = 0; i < sDeferredFreeCount; i++) {
            Heap_Free(sDeferredFrees[i].heapPtr);

            if (sDeferredFrees[i].callback) {
                sDeferredFrees[i].callback(sDeferredFrees[i].callbackParam);
            }
        }

        sDeferredFreeCount = 0;
    }
}

void BoxGraphics_DeferFree(void *heapPtr, BoxGraphicsDeferredFreeCallback callback, void *callbackParam)
{
    GF_ASSERT(sDeferredFreeCount < 32);

    sDeferredFrees[sDeferredFreeCount].heapPtr = heapPtr;
    sDeferredFrees[sDeferredFreeCount].callback = callback;
    sDeferredFrees[sDeferredFreeCount].callbackParam = callbackParam;
    sDeferredFreeCount++;
}
