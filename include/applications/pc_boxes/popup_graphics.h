#ifndef POKEPLATINUM_APPLICATIONS_PC_BOXES_POPUP_GRAPHICS_H
#define POKEPLATINUM_APPLICATIONS_PC_BOXES_POPUP_GRAPHICS_H

#include <nnsys.h>

#include "applications/pc_boxes/defs.h"

#include "bg_window.h"
#include "font_special_chars.h"
#include "message.h"
#include "narc.h"
#include "pc_boxes.h"
#include "sprite.h"
#include "string_gf.h"
#include "sys_task_manager.h"

#define BOX_SELECTION_VISIBLE_BOXES 7
#define BOX_SELECTION_TOP_ROW       5
#define BOX_SELECTION_HEIGHT        10

#define ITEM_INFO_TOP_ROW        24
#define ITEM_INFO_HEIGHT         7
#define ITEM_INFO_SLIDE_DISTANCE (ITEM_INFO_HEIGHT * TILE_HEIGHT_PIXELS)
#define ITEM_INFO_SLIDE_FRAMES   6
#define ITEM_INFO_ICON_PLTT_SLOT 6
#define ITEM_INFO_ICON_X         18
#define ITEM_INFO_ICON_Y         224

enum BoxSelectionAnim {
    BOX_SELECTION_ANIM_OPEN = 0,
    BOX_SELECTION_ANIM_CLOSE,
};

enum BoxSelectionOpenState {
    BOX_SELECTION_OPEN_STATE_UNROLL = 0,
    BOX_SELECTION_OPEN_STATE_SHOW_THUMBNAILS,
    BOX_SELECTION_OPEN_STATE_FADE_IN,
    BOX_SELECTION_OPEN_STATE_FINISH,
};

enum BoxSelectionCloseState {
    BOX_SELECTION_CLOSE_STATE_CLEAR = 0,
    BOX_SELECTION_CLOSE_STATE_ROLL_UP,
    BOX_SELECTION_CLOSE_STATE_FINISH,
};

enum ItemInfoSlideInState {
    ITEM_INFO_SLIDE_IN_STATE_WAIT = 0,
    ITEM_INFO_SLIDE_IN_STATE_SLIDE,
};

enum PopupGraphicsWindow {
    POPUP_GRAPHICS_WINDOW_BOX_NAME = 0,
    POPUP_GRAPHICS_WINDOW_MON_COUNTS,
    POPUP_GRAPHICS_WINDOW_ITEM_DESCRIPTION,
    POPUP_GRAPHICS_WINDOW_COUNT,
};

#define BOX_THUMBNAIL_SIZE       32
#define BOX_THUMBNAIL_PLTT_SLOT  13
#define BOX_THUMBNAIL_TILE_BASE  1584
#define BOX_THUMBNAIL_TILE_COUNT 32

#define BOX_THUMBNAIL_FADE_STEPS       8
#define BOX_THUMBNAIL_FADE_MAX_BLEND   16
#define BOX_THUMBNAIL_FADE_PLTT_COLORS (3 * PALETTE_SIZE)
#define BOX_THUMBNAIL_FADE_PLTT_SIZE   (BOX_THUMBNAIL_FADE_PLTT_COLORS * sizeof(u16))

typedef struct BoxPopupGraphics {
    BoxGraphics *boxGraphics;
    BgConfig *bgConfig;
    SpriteList *spriteList;
    const BoxApplication *boxApp;
    Window *windows;
    void *thumbnailCharDataBuffer;
    NNSG2dCharacterData *thumbnailCharData;
    void *thumbnailCellBankBuffer;
    NNSG2dCellDataBank *thumbnailCellBank;
    u8 unused_24[8];
    void *boxSelectionScreenBuffer;
    NNSG2dScreenData *boxSelectionScreenData;
    void *itemInfoScreenBuffer;
    NNSG2dScreenData *itemInfoScreenData;
    Bitmap thumbnailBitmap;
    FontSpecialCharsContext *monCountChars;
    Sprite *thumbnailSprites[MAX_PC_BOXES];
    Sprite *itemIconSprite;
    u32 boxMonCounts[MAX_PC_BOXES];
    SysTask *animTask;
    s32 selectedBoxID;
    u16 thumbnailFadePltts[BOX_THUMBNAIL_FADE_STEPS][BOX_THUMBNAIL_FADE_PLTT_COLORS];
    u8 thumbnailCache[MAX_PC_BOXES][BOX_THUMBNAIL_SIZE * BOX_THUMBNAIL_SIZE];
    u8 isThumbnailCached[MAX_PC_BOXES];
    u8 padding_4BF6[2];
    MessageLoader *itemDescriptionsLoader;
    String *string;
} BoxPopupGraphics;

BOOL BoxPopupGraphics_Init(BoxPopupGraphics *popupGraphics, BoxGraphics *boxGraphics, const BoxApplication *boxApp, BgConfig *bgConfig, SpriteList *spriteList, NARC *narc);
void BoxPopupGraphics_LoadGraphics(BoxPopupGraphics *popupGraphics);
void BoxPopupGraphics_Free(BoxPopupGraphics *popupGraphics);
void BoxPopupGraphics_OpenBoxSelection(BoxPopupGraphics *popupGraphics);
BOOL BoxPopupGraphics_IsBoxSelectionOpen(BoxPopupGraphics *popupGraphics);
void BoxPopupGraphics_ScrollBoxSelection(BoxPopupGraphics *popupGraphics);
void BoxPopupGraphics_CloseBoxSelection(BoxPopupGraphics *popupGraphics);
BOOL BoxPopupGraphics_IsBoxSelectionOpen2(BoxPopupGraphics *popupGraphics);
void BoxPopupGraphics_LoadBoxThumbnail(BoxPopupGraphics *popupGraphics, u32 boxID, u32 tileOffset, NNS_G2D_VRAM_TYPE vramType, NNSG2dImageProxy *imageProxy);
NNSG2dCellDataBank *BoxPopupGraphics_GetThumbnailCellBank(BoxPopupGraphics *popupGraphics);
void BoxPopupGraphics_OpenItemInfo(BoxPopupGraphics *popupGraphics);
BOOL BoxPopupGraphics_IsAnimDone2(BoxPopupGraphics *popupGraphics);
void BoxPopupGraphics_CloseItemInfo(BoxPopupGraphics *popupGraphics);
BOOL BoxPopupGraphics_IsItemInfoClosed(BoxPopupGraphics *popupGraphics);

#endif // POKEPLATINUM_APPLICATIONS_PC_BOXES_POPUP_GRAPHICS_H
