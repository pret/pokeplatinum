#ifndef POKEPLATINUM_STRUCT_BOX_APPLICATION_H
#define POKEPLATINUM_STRUCT_BOX_APPLICATION_H

#include "applications/pc_boxes/box_cursor.h"
#include "applications/pc_boxes/box_customization.h"
#include "applications/pc_boxes/box_mon_selection.h"
#include "applications/pc_boxes/box_settings.h"
#include "applications/pc_boxes/box_touch_dial_helper.h"
#include "applications/pc_boxes/compare_mode_helper.h"
#include "applications/pc_boxes/pc_mon_preview.h"
#include "applications/pc_boxes/struct_box_menu.h"

#include "party.h"
#include "pc_boxes.h"
#include "text.h"

#define BOX_TEXT_COLOR_WALLPAPER_BOX_NAME TEXT_COLOR(2, 1, 0)
#define BOX_TEXT_COLOR_DIAL_BOX_NAME      TEXT_COLOR(1, 2, 0)
#define BOX_TEXT_COLOR_POPUP_BOX_NAME     TEXT_COLOR(2, 8, 7)
#define BOX_TEXT_COLOR_ITEM_DESCRIPTION   TEXT_COLOR(2, 1, 4)
#define BOX_TEXT_COLOR_MENU               TEXT_COLOR(11, 12, MENU_GRAPHICS_WINDOW_BG_COLOR)
#define BOX_TEXT_COLOR_PREVIEW_SPECIES    TEXT_COLOR(9, 6, 15)
#define BOX_TEXT_COLOR_PREVIEW_INFO       TEXT_COLOR(9, 6, 0)
#define BOX_TEXT_COLOR_PREVIEW_NICKNAME   TEXT_COLOR(1, 2, 15)
#define BOX_TEXT_COLOR_PREVIEW_MALE       TEXT_COLOR(7, 8, 15)
#define BOX_TEXT_COLOR_PREVIEW_FEMALE     TEXT_COLOR(3, 4, 15)
#define BOX_TEXT_COLOR_COMPARE            TEXT_COLOR(15, 14, 0)

typedef struct BoxApplication {
    const PCBoxes *pcBoxes;
    const Party *party;
    BoxCursor cursor;
    BoxMonSelection selection;
    BoxCustomization customization;
    BoxSettings boxSettings;
    PCMonPreview pcMonPreview;
    BoxMenu boxMenu;
    u32 boxSelectionBoxID;
    BoxDialHelper dialHelper;
    u8 padding_A2[2];
    CompareModeHelper compareModeHelper;
    u32 boxMessageID;
    u16 depositBoxID;
    u16 cursorItem;
} BoxApplication;

#endif // POKEPLATINUM_STRUCT_BOX_APPLICATION_H
