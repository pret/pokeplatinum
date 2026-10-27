#ifndef POKEPLATINUM_OV19_021DB8E4_H
#define POKEPLATINUM_OV19_021DB8E4_H

#include <nnsys.h>

#include "applications/pc_boxes/box_application.h"
#include "applications/pc_boxes/struct_ov19_021D61B0_decl.h"
#include "applications/pc_boxes/struct_ov19_021DBA9C.h"

#include "bg_window.h"
#include "narc.h"
#include "sprite.h"

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

#endif // POKEPLATINUM_OV19_021DB8E4_H
