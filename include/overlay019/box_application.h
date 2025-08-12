#ifndef POKEPLATINUM_STRUCT_BOX_APPLICATION_H
#define POKEPLATINUM_STRUCT_BOX_APPLICATION_H

#include "struct_decls/pc_boxes_decl.h"

#include "overlay019/box_cursor.h"
#include "overlay019/box_customization.h"
#include "overlay019/box_mon_selection.h"
#include "overlay019/box_settings.h"
#include "overlay019/box_touch_dial_helper.h"
#include "overlay019/compare_mode_helper.h"
#include "overlay019/pc_mon_preview.h"
#include "overlay019/struct_box_menu.h"

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
