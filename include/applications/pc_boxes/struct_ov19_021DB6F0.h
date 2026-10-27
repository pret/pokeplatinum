#ifndef POKEPLATINUM_STRUCT_OV19_021DB6F0_H
#define POKEPLATINUM_STRUCT_OV19_021DB6F0_H

#include <nnsys.h>

#include "applications/pc_boxes/box_application.h"
#include "applications/pc_boxes/struct_ov19_021D61B0_decl.h"

#include "bg_window.h"
#include "message.h"
#include "string_gf.h"
#include "string_template.h"

typedef struct BoxMenuGraphics {
    BgConfig *bgConfig;
    u8 unused_04[4];
    const BoxApplication *unread_08;
    BoxGraphics *unread_0C;
    MessageLoader *boxMessagesLoader;
    MessageLoader *menuItemsLoader;
    Window *windows;
    u16 isMessageBoxOpen;
    u16 isMenuOpen;
    int optionsFrame;
    void *markingsCharDataBuffer;
    NNSG2dCharacterData *markingsCharData;
    const StringTemplate *messageVariableBuffer;
    String *tempString;
    String *formattedString;
} BoxMenuGraphics;

#endif // POKEPLATINUM_STRUCT_OV19_021DB6F0_H
