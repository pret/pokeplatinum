#ifndef POKEPLATINUM_OV19_021DA92C_H
#define POKEPLATINUM_OV19_021DA92C_H

#include "applications/pc_boxes/box_application.h"
#include "applications/pc_boxes/struct_ov19_021D61B0_decl.h"
#include "applications/pc_boxes/struct_ov19_021DA9E0.h"

#include "bg_window.h"
#include "message.h"
#include "narc.h"
#include "sprite.h"

#define ROTATION_PAGE_COUNT  4
#define PREVIEW_WINDOW_COUNT 4

enum PreviewWindow {
    PREVIEW_WINDOW_SPECIES = 0,
    PREVIEW_WINDOW_DEX_NUM,
    PREVIEW_WINDOW_NICKNAME,
    PREVIEW_WINDOW_INFO,
};

enum RotationPage {
    ROTATION_PAGE_HELD_ITEM = 0,
    ROTATION_PAGE_TYPES,
    ROTATION_PAGE_NATURE,
    ROTATION_PAGE_ABILITY,
};

enum RotationTaskStep {
    ROTATION_STEP_CHECK_AVAILABLE = 0,
    ROTATION_STEP_DRAW_PAGE,
    ROTATION_STEP_HOLD,
    ROTATION_STEP_SCROLL,
    ROTATION_STEP_FROZEN,
};

BOOL PCMonPreviewDisplay_Init(PCMonPreviewDisplay *previewDisplay, BoxGraphics *boxGraphics, const BoxApplication *boxApp, BgConfig *bgConfig, SpriteList *spriteList, const MessageLoader *msgLoader, NARC *narc);
void PCMonPreviewDisplay_Free(PCMonPreviewDisplay *previewDisplay);
void PCMonPreviewDisplay_UpdateAnimation(PCMonPreviewDisplay *previewDisplay);
void PCMonPreviewDisplay_CreatePlaceholderSprite(PCMonPreviewDisplay *previewDisplay);
BOOL PCMonPreviewDisplay_IsPlaceholderSpriteDeleted(PCMonPreviewDisplay *previewDisplay);
void PCMonPreviewDisplay_LoadGraphics(PCMonPreviewDisplay *previewDisplay);
void PCMonPreviewDisplay_ShowInitial(PCMonPreviewDisplay *previewDisplay);
void PCMonPreviewDisplay_Refresh(PCMonPreviewDisplay *previewDisplay);
void PCMonPreviewDisplay_Clear(PCMonPreviewDisplay *previewDisplay);
BOOL PCMonPreviewDisplay_IsRefreshDone(PCMonPreviewDisplay *previewDisplay);
void PCMonPreviewDisplay_UpdateMarkings(PCMonPreviewDisplay *previewDisplay);
void PCMonPreviewDisplay_UpdateHeldItem(PCMonPreviewDisplay *previewDisplay);

#endif // POKEPLATINUM_OV19_021DA92C_H
