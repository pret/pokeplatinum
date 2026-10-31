#ifndef POKEPLATINUM_APPLICATIONS_PC_BOXES_PREVIEW_DISPLAY_H
#define POKEPLATINUM_APPLICATIONS_PC_BOXES_PREVIEW_DISPLAY_H

#include <nnsys.h>

#include "struct_defs/species.h"

#include "applications/pc_boxes/defs.h"

#include "bg_window.h"
#include "font_special_chars.h"
#include "message.h"
#include "narc.h"
#include "pokemon_sprite.h"
#include "sprite.h"
#include "string_gf.h"
#include "sys_task_manager.h"

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

typedef struct PCMonPreviewDisplay {
    BOOL isActive;
    Window *windows;
    BgConfig *bgConfig;
    SpriteList *spriteList;
    const BoxApplication *boxApp;
    BoxGraphics *boxGraphics;
    FontSpecialCharsContext *dexNumChars;
    FontSpecialCharsContext *levelChars;
    PokemonSpriteManager *monSpriteManager;
    PokemonSprite *monSprite;
    void *infoFrameCellBankBuffer;
    NNSG2dCellDataBank *infoFrameCellBank;
    Sprite *infoFrameSprite;
    void *typeIconCellBankBuffer;
    NNSG2dCellDataBank *typeIconCellBank;
    Sprite *typeIconSprites[MAX_TYPES];
    String *maleGenderText;
    String *femaleGenderText;
    SysTask *rotationTask;
    u8 padding_50[4];
} PCMonPreviewDisplay;

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

#endif // POKEPLATINUM_APPLICATIONS_PC_BOXES_PREVIEW_DISPLAY_H
