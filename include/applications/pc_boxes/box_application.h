#ifndef POKEPLATINUM_STRUCT_BOX_APPLICATION_H
#define POKEPLATINUM_STRUCT_BOX_APPLICATION_H

#include "struct_decls/pc_boxes_decl.h"

#include "applications/pc_boxes/box_cursor.h"
#include "applications/pc_boxes/box_customization.h"
#include "applications/pc_boxes/box_mon_selection.h"
#include "applications/pc_boxes/box_settings.h"
#include "applications/pc_boxes/box_touch_dial_helper.h"
#include "applications/pc_boxes/compare_mode_helper.h"
#include "applications/pc_boxes/pc_mon_preview.h"
#include "applications/pc_boxes/struct_box_menu.h"

#include "party.h"

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
    BoxTouchDialHelper touchDialHelper;
    u8 padding_A2[2];
    CompareModeHelper compareModeHelper;
    u32 boxMessageID;
    u16 selectedBoxID;
    u16 cursorItem;
} BoxApplication;

#endif // POKEPLATINUM_STRUCT_BOX_APPLICATION_H
