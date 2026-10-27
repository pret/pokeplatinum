#ifndef POKEPLATINUM_OV19_021D61B0_H
#define POKEPLATINUM_OV19_021D61B0_H

#include <nnsys.h>

#include "applications/pc_boxes/box_app_manager.h"
#include "applications/pc_boxes/box_application.h"
#include "applications/pc_boxes/funcptr_ov19_021D79B8.h"
#include "applications/pc_boxes/struct_ov19_021D61B0_decl.h"
#include "applications/pc_boxes/struct_ov19_021D8318.h"
#include "applications/pc_boxes/struct_ov19_021D8E00.h"
#include "applications/pc_boxes/struct_ov19_021DA384.h"
#include "applications/pc_boxes/struct_ov19_021DBA9C.h"
#include "applications/pc_boxes/struct_ov19_021DC680.h"
#include "applications/pc_boxes/struct_ov19_021DE3E8_decl.h"

#include "sprite.h"
#include "sys_task_manager.h"

#define BOX_GRAPHICS_MAX_TASKS             4
#define BOX_GRAPHICS_COMPARE_MODE_X_OFFSET (-44)

enum BoxGraphicsFunction {
    FUNC_BoxGraphics_ShowBoxScreen = 0,
    FUNC_BoxGraphics_ScreenFadeBothToBlackLogIn,
    FUNC_BoxGraphics_ScreenFadeInReturnToBox,
    FUNC_BoxGraphics_ScreenFadeOutToOtherApp,
    FUNC_BoxGraphics_ChangeToNewBox,
    FUNC_BoxGraphics_MoveCursor,
    FUNC_BoxGraphics_PreviewMon,
    FUNC_BoxGraphics_UpdateMarkingsIcon,
    FUNC_BoxGraphics_ClearMonPreview,
    FUNC_BoxGraphics_PickUpMonIntoCursor,
    FUNC_BoxGraphics_PlaceMonDownFromCursor,
    FUNC_BoxGraphics_PlayShiftMonAnimation,
    FUNC_BoxGraphics_StoreMonFromCursor,
    FUNC_BoxGraphics_StoreMonFromParty,
    FUNC_BoxGraphics_PlayReleaseCursorMonAnimation,
    FUNC_BoxGraphics_PlayReleaseBoxMonAnimation,
    FUNC_BoxGraphics_PlayReleasePartyMonAnimation,
    FUNC_BoxGraphics_DisplayItemInfo,
    FUNC_BoxGraphics_CloseItemInfo,
    FUNC_BoxGraphics_PlayTakeItemAnimation,
    FUNC_BoxGraphics_PlayGiveItemAnimation,
    FUNC_BoxGraphics_PlaySwitchItemAnimation,
    FUNC_BoxGraphics_UpdateHeldItemIcon,
    FUNC_BoxGraphics_ItemShrinkToNothing,
    FUNC_BoxGraphics_DisplayBoxMessage,
    FUNC_BoxGraphics_ShowMenu,
    FUNC_BoxGraphics_CloseMessageBox,
    FUNC_BoxGraphics_CloseMenu,
    FUNC_BoxGraphics_UpdateMenuCursor,
    FUNC_BoxGraphics_UpdateMenuMarkings,
    FUNC_BoxGraphics_ShowBoxSelectionPopup,
    FUNC_BoxGraphics_ScrollBoxSelectionPopup,
    FUNC_BoxGraphics_CloseBoxSelectionPopup,
    FUNC_BoxGraphics_TransitionWallpaper,
    FUNC_BoxGraphics_PressBoxButton,
    FUNC_BoxGraphics_OpenPartyPopup,
    FUNC_BoxGraphics_ClosePartyPopup,
    FUNC_BoxGraphics_PlayAdjustPartyAnimation,
    FUNC_BoxGraphics_FinishAdjustPartyAnimation,
    FUNC_BoxGraphics_SetMonMarkingsTransparency,
    FUNC_BoxGraphics_OpenOrCloseSelectedDial,
    FUNC_BoxGraphics_UpdateSelectedDial,
    FUNC_BoxGraphics_UpdateMarkingsTouchButton,
    FUNC_BoxGraphics_UpdateCursorPalette,
    FUNC_BoxGraphics_StartDrawMultiSelect,
    FUNC_BoxGraphics_ClearMultiSelectShading,
    FUNC_BoxGraphics_ApplyMultiSelectMonShading,
    FUNC_BoxGraphics_PickUpMultiSelectedMonsIntoCursor,
    FUNC_BoxGraphics_SetCompareSlotTab,
    FUNC_BoxGraphics_SwitchCompareSlotTab,
    FUNC_BoxGraphics_TransitionCompareMode,
    FUNC_BoxGraphics_ScreenFadeBothToBlackLogOff,
};

enum BoxGraphicsShowBoxScreenState {
    SHOW_BOX_SCREEN_STATE_LOAD = 0,
    SHOW_BOX_SCREEN_STATE_WAIT_SPRITE_REMOVED,
};

enum BoxGraphicsChangeToNewBoxState {
    CHANGE_BOX_STATE_HIDE_SPRITES = 0,
    CHANGE_BOX_STATE_WAIT_SPRITES_HIDDEN,
    CHANGE_BOX_STATE_SWITCH_BOX,
    CHANGE_BOX_STATE_WAIT_SWITCH_DONE,
    CHANGE_BOX_STATE_WAIT_SPRITES_SHOWN,
};

enum BoxGraphicsTaskState {
    BOX_GRAPHICS_TASK_START = 0,
    BOX_GRAPHICS_TASK_WAIT,
    BOX_GRAPHICS_TASK_FREE = 1,
};

enum BoxGraphicsStoreMonFromPartyState {
    STORE_MON_FROM_PARTY_STATE_START = 0,
    STORE_MON_FROM_PARTY_STATE_ADJUST,
    STORE_MON_FROM_PARTY_STATE_WAIT_ADJUST_DONE,
};

enum BoxGraphicsPressBoxButtonState {
    PRESS_BOX_BUTTON_STATE_START = 0,
    PRESS_BOX_BUTTON_STATE_WAIT_ANIM,
    PRESS_BOX_BUTTON_STATE_HOLD,
    PRESS_BOX_BUTTON_STATE_WAIT_RETURN,
};

enum BoxGraphicsClosePartyPopupState {
    CLOSE_PARTY_POPUP_STATE_HIDE_SPRITES = 0,
    CLOSE_PARTY_POPUP_STATE_WAIT_SPRITES_HIDDEN,
    CLOSE_PARTY_POPUP_STATE_CLOSE,
    CLOSE_PARTY_POPUP_STATE_WAIT_CLOSE_DONE,
};

enum BoxGraphicsOpenOrCloseSelectedDialState {
    DIAL_STATE_START = 0,
    DIAL_STATE_WAIT_TOGGLE_DONE,
    DIAL_STATE_WAIT_SELECT_DONE,
};

BOOL BoxGraphics_Load(BoxGraphics **dest, const BoxApplication *boxApp, const BoxApplicationManager *boxAppMan);
void BoxGraphics_Free(BoxGraphics *boxGraphics);
void BoxGraphics_TaskHandler(BoxGraphics *boxGraphics, enum BoxGraphicsFunction function);
BOOL BoxGraphics_IsSysTaskDone(BoxGraphics *boxGraphics, enum BoxGraphicsFunction function);
BOOL BoxGraphics_CheckAllTasksDone(BoxGraphics *boxGraphics);
SysTask *BoxGraphics_StartVBlankTask(SysTaskFunc callback, void *param, u32 priority);
NNSG2dImagePaletteProxy *BoxGraphics_GetImagePaletteProxy(BoxGraphics *boxGraphics);
MonIconHelper *BoxGraphics_GetMonIconHelper(BoxGraphics *boxGraphics);
BoxView *BoxGraphics_GetBoxView(BoxGraphics *boxGraphics);
BoxPartyGraphics *BoxGraphics_GetPartyGraphics(BoxGraphics *boxGraphics);
BoxCursorGraphics *BoxGraphics_GetCursorGraphics(BoxGraphics *boxGraphics);
BoxItemIconGraphics *BoxGraphics_GetItemIconGraphics(BoxGraphics *boxGraphics);
BoxPopupGraphics *BoxGraphics_GetPopupGraphics(BoxGraphics *boxGraphics);
PokemonSpriteManager *BoxGraphics_GetMonSpriteManager(BoxGraphics *boxGraphics);
int BoxGraphics_GetCompareModeXOffset(BoxGraphics *boxGraphics);
void SpriteResourcesHeader_InitFromProxies(SpriteResourcesHeader *srHeader, NNSG2dImageProxy *imageProxy, NNSG2dImagePaletteProxy *plttProxy, NNSG2dCellDataBank *cellBank, NNSG2dCellAnimBankData *animBank, u32 priority);
Sprite *BoxGraphics_CreateSprite(SpriteList *spriteList, SpriteResourcesHeader *srHeader, u32 x, u32 y, u32 priority, NNS_G2D_VRAM_TYPE vramType);
void BoxGraphics_SetSpritePriority(Sprite *sprite, u32 priority);
void BoxGraphics_BlendPltt(const u16 *src, u16 *dest, u32 size, u16 target, u32 fraction);
const BoxApplicationManager *BoxGraphics_GetBoxAppMan(BoxGraphics *boxGraphics);
void BoxGraphics_DeferFree(void *heapPtr, BoxGraphicsDeferredFreeCallback callback, void *callbackParam);

#endif // POKEPLATINUM_OV19_021D61B0_H
