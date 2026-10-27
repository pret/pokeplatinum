#ifndef POKEPLATINUM_OV19_021D79F8_H
#define POKEPLATINUM_OV19_021D79F8_H

#include "applications/pc_boxes/box_application.h"
#include "applications/pc_boxes/box_customization.h"
#include "applications/pc_boxes/struct_ov19_021D61B0_decl.h"
#include "applications/pc_boxes/struct_ov19_021D8318.h"
#include "applications/pc_boxes/struct_ov19_021DCD18.h"

#include "bg_window.h"
#include "sprite.h"

#define BOX_GRID_LEFT      112
#define BOX_GRID_TOP       40
#define BOX_GRID_CELL_SIZE 24

#define BOX_ICON_TILE_BASE       88
#define BOX_ICON_PAGE_TILE_COUNT (MAX_MONS_PER_BOX * MON_ICON_TILE_COUNT)

enum BoxViewReloadWallpaperState {
    RELOAD_WALLPAPER_STATE_PLTT = 0,
    RELOAD_WALLPAPER_STATE_TILES,
    RELOAD_WALLPAPER_STATE_DONE,
};

enum BoxViewWallpaperChangeState {
    WALLPAPER_CHANGE_STATE_WAIT_FLASH_IN = 0,
    WALLPAPER_CHANGE_STATE_START_RELOAD,
    WALLPAPER_CHANGE_STATE_WAIT_RELOAD,
    WALLPAPER_CHANGE_STATE_START_FLASH_OUT,
    WALLPAPER_CHANGE_STATE_WAIT_FLASH_OUT,
};

enum BoxViewReleaseAnimStep {
    RELEASE_ANIM_STEP_RELEASING = 0,
    RELEASE_ANIM_STEP_REJECTED,
};

BOOL BoxView_Init(BoxView *boxView, BoxGraphics *boxGraphics, const BoxApplication *boxApp, BgConfig *bgConfig, SpriteList *unused);
void BoxView_Free(BoxView *boxView);
void BoxView_InitBgScroll(BoxView *boxView);
void BoxView_Show(BoxView *boxView, const BoxCustomization *customization, int boxChangeDirection, BOOL refreshNow);
void BoxView_StartScroll(BoxView *boxView, const BoxCustomization *customization, int boxChangeDirection);
BOOL BoxView_IsScrollDone(BoxView *boxView);
void BoxView_StartWallpaperChange(BoxView *boxView);
BOOL BoxView_IsWallpaperChangeDone(BoxView *boxView);
void BoxView_PickUpIcon(BoxView *boxView, u32 boxPos, s32 tileOffset, MonIcon *monIcon);
void BoxView_PlaceDownIcon(BoxView *boxView, u32 boxPos, const MonIcon *monIcon);
MonIcon *BoxView_GetIcon(BoxView *boxView, u32 posInBox);
void BoxView_CreateMissingIcons(BoxView *boxView);
void BoxView_StartReleaseMonAnimation(BoxView *boxView, u32 boxCursorPosition);
BOOL BoxView_IsReleaseMonAnimationDone(BoxView *boxView);
void BoxView_UpdateMarkingsTransparency(BoxView *boxView);
void BoxView_UpdateHeldItemIcon(BoxView *boxView, u32 posInBox, u32 item);
void BoxView_UpdateMarkingsIcon(BoxView *boxView);
void BoxView_ApplyMultiSelectMonShading(BoxView *boxView);
void BoxView_ClearMultiSelectShading(BoxView *boxView);

#endif // POKEPLATINUM_OV19_021D79F8_H
