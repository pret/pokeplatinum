#ifndef POKEPLATINUM_APPLICATIONS_PC_BOXES_MENU_GRAPHICS_H
#define POKEPLATINUM_APPLICATIONS_PC_BOXES_MENU_GRAPHICS_H

#include <nnsys.h>

#include "applications/pc_boxes/defs.h"

#include "bg_window.h"
#include "message.h"
#include "narc.h"
#include "sprite.h"
#include "string_gf.h"
#include "string_template.h"

#define MESSAGE_BOX_FRAME_TILE_BASE   521
#define MESSAGE_BOX_FRAME_PLTT_SLOT   8
#define MENU_FRAME_TILE_BASE          512
#define MENU_FRAME_PLTT_SLOT          7
#define MENU_ITEM_HEIGHT              16
#define MENU_GRAPHICS_WINDOW_BG_COLOR 15

#define MENU_ITEM_TILE_ROWS      (MENU_ITEM_HEIGHT / TILE_HEIGHT_PIXELS)
#define MENU_WINDOW_TILEMAP_LEFT 19
#define MENU_WINDOW_TILEMAP_TOP  3
#define MENU_WINDOW_WIDTH        12
#define MENU_WINDOW_HEIGHT       (MAX_MENU_ITEMS * MENU_ITEM_TILE_ROWS)
#define MENU_WINDOW_PLTT_SLOT    4
#define MENU_WINDOW_BASE_TILE    593

enum MenuGraphicsWindow {
    MENU_GRAPHICS_WINDOW_MESSAGE = 0,
    MENU_GRAPHICS_WINDOW_MENU,
    MENU_GRAPHICS_WINDOW_COUNT,
};

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

BOOL BoxMenuGraphics_Init(BoxMenuGraphics *menuGraphics, BoxGraphics *boxGraphics, const BoxApplication *boxApp, BgConfig *bgConfig, SpriteList *unused, MessageLoader *boxMessagesLoader, const StringTemplate *messageVariableBuffer, int optionsFrame, NARC *narc);
void BoxMenuGraphics_Free(BoxMenuGraphics *menuGraphics);
void BoxMenuGraphics_LoadGraphics(BoxMenuGraphics *menuGraphics);
void BoxMenuGraphics_ShowMessage(BoxMenuGraphics *menuGraphics, u32 boxMessageID);
void BoxMenuGraphics_ShowMenu(BoxMenuGraphics *menuGraphics, const BoxMenu *menu);
void BoxMenuGraphics_CloseMessageBox(BoxMenuGraphics *menuGraphics);
void BoxMenuGraphics_CloseMenu(BoxMenuGraphics *menuGraphics);
void BoxMenuGraphics_DrawMenuCursor(BoxMenuGraphics *menuGraphics, const BoxMenu *menu);
void BoxMenuGraphics_UpdateMarkings(BoxMenuGraphics *menuGraphics, const BoxMenu *menu);

#endif // POKEPLATINUM_APPLICATIONS_PC_BOXES_MENU_GRAPHICS_H
