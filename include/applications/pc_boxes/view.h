#ifndef POKEPLATINUM_APPLICATIONS_PC_BOXES_VIEW_H
#define POKEPLATINUM_APPLICATIONS_PC_BOXES_VIEW_H

#include "applications/pc_boxes/defs.h"
#include "applications/pc_boxes/icon_helper.h"

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

typedef struct BoxView {
    u8 boxID;
    u8 unk_01;
    u8 currentPage;
    u8 previousPage;
    u32 scrollTicksRemaining;
    s32 scrollStartX;
    s32 bgScrollX;
    s32 scrollStepX;
    s32 scrollTargetX;
    u8 padding_18[24];
    u32 pendingBoxID;
    u32 pendingPage;
    fx32 unk_38[2][6];
    fx32 unk_68[2][6];
    u32 scrollStep;
    BOOL scrollDone;
    u16 boxCursorPosition;
    u8 wallpaperChangeStep;
    u8 taskBusy;
    u8 releaseAnimStep;
    u8 padding_A5[3];
    MonIcon icons[2][30];
    u8 iconTileData[30][640];
    u16 iconSpriteIndex[30];
    u16 species[30];
    u8 padding_5850[4];
    int unk_5854;
    int unk_5858;
    int compareModeXOffset;
    u16 unk_5860[9][16];
    MonIconHelper *monIconHelper;
    BgConfig *bgConfig;
    const BoxApplication *boxApp;
    BoxGraphics *boxGraphics;
} BoxView;

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

#endif // POKEPLATINUM_APPLICATIONS_PC_BOXES_VIEW_H
