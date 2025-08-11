#ifndef POKEPLATINUM_STRUCT_OV19_021D4DF0_H
#define POKEPLATINUM_STRUCT_OV19_021D4DF0_H

#include "struct_decls/pc_boxes_decl.h"

#include "overlay019/box_cursor.h"
#include "overlay019/box_customization.h"
#include "overlay019/box_mon_selection.h"
#include "overlay019/box_settings.h"
#include "overlay019/pc_mon_preview.h"
#include "overlay019/struct_box_menu.h"
#include "overlay019/struct_ov19_021D4EE4.h"
#include "overlay019/struct_ov19_021D4F34.h"

#include "party.h"

typedef struct {
    const PCBoxes *pcBoxes;
    const Party *party;
    BoxCursor cursor;
    BoxMonSelection selection;
    BoxCustomization customization;
    BoxSettings boxSettings;
    PCMonPreview pcMonPreview;
    BoxMenu boxMenu;
    u32 boxSelectionBoxID;
    UnkStruct_ov19_021D4F34 unk_9C;
    u8 padding_A2[2];
    UnkStruct_ov19_021D4EE4 unk_A4;
    u32 boxMessageID;
    u16 unk_110;
    u16 cursorItem;
} UnkStruct_ov19_021D4DF0;

#endif // POKEPLATINUM_STRUCT_OV19_021D4DF0_H
