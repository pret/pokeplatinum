#include "applications/pc_boxes/ov19_021DB2FC.h"

#include <nitro.h>
#include <string.h>

#include "applications/pc_boxes/box_application.h"
#include "applications/pc_boxes/struct_box_menu.h"
#include "applications/pc_boxes/struct_ov19_021D61B0_decl.h"
#include "applications/pc_boxes/struct_ov19_021DB6F0.h"

#include "bg_window.h"
#include "enums.h"
#include "graphics.h"
#include "heap.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "render_window.h"
#include "sprite.h"
#include "string_gf.h"
#include "string_template.h"
#include "text.h"

#include "res/text/bank/pokemon_storage_system.h"

static void DrawMessageBoxFrame(BgConfig *bgConfig, u32 bgLayer, u32 tilemapLeft, u32 tilemapTop, u32 width, u32 height);
static void BoxMenuGraphics_DrawMarking(BoxMenuGraphics *menuGraphics, Window *window, u8 markings, u32 markingID);
static void BoxMenuGraphics_PutMenuToTilemap(BoxMenuGraphics *menuGraphics, u32 totalMenuItems);
static void DrawMenuFrame(BgConfig *bgConfig, u32 bgLayer, u32 tilemapLeft, u32 tilemapTop, u32 width, u32 height);
static void ClearMenuFromTilemap(BgConfig *bgConfig, Window *window);
static void ClearMessageBoxFromTilemap(BgConfig *bgConfig, Window *window);

BOOL BoxMenuGraphics_Init(BoxMenuGraphics *menuGraphics, BoxGraphics *boxGraphics, const BoxApplication *boxApp, BgConfig *bgConfig, SpriteList *unused, MessageLoader *boxMessagesLoader, const StringTemplate *messageVariableBuffer, int optionsFrame, NARC *narc)
{
    menuGraphics->unread_0C = boxGraphics;
    menuGraphics->bgConfig = bgConfig;
    menuGraphics->unread_08 = boxApp;
    menuGraphics->messageVariableBuffer = messageVariableBuffer;
    menuGraphics->optionsFrame = optionsFrame;
    menuGraphics->boxMessagesLoader = boxMessagesLoader;
    menuGraphics->menuItemsLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POKEMON_STORAGE_SYSTEM, HEAP_ID_BOX_GRAPHICS);
    menuGraphics->tempString = String_Init(64, HEAP_ID_BOX_GRAPHICS);
    menuGraphics->formattedString = String_Init(64, HEAP_ID_BOX_GRAPHICS);
    menuGraphics->isMessageBoxOpen = FALSE;
    menuGraphics->isMenuOpen = FALSE;
    menuGraphics->windows = NULL;
    menuGraphics->markingsCharDataBuffer = Graphics_GetCharDataFromOpenNARC(narc, 25, TRUE, &menuGraphics->markingsCharData, HEAP_ID_BOX_GRAPHICS);

    if (menuGraphics->markingsCharDataBuffer == NULL || menuGraphics->tempString == NULL || menuGraphics->formattedString == NULL) {
        return FALSE;
    }

    return TRUE;
}

void BoxMenuGraphics_Free(BoxMenuGraphics *menuGraphics)
{
    if (menuGraphics->windows != NULL) {
        for (int i = 0; i < MENU_GRAPHICS_WINDOW_COUNT; i++) {
            Window_Remove(&menuGraphics->windows[i]);
        }

        if (menuGraphics->markingsCharDataBuffer != NULL) {
            Heap_Free(menuGraphics->markingsCharDataBuffer);
        }

        if (menuGraphics->menuItemsLoader != NULL) {
            MessageLoader_Free(menuGraphics->menuItemsLoader);
        }

        if (menuGraphics->tempString != NULL) {
            String_Free(menuGraphics->tempString);
        }

        if (menuGraphics->formattedString != NULL) {
            String_Free(menuGraphics->formattedString);
        }

        Heap_Free(menuGraphics->windows);
        menuGraphics->windows = NULL;
    }
}

void BoxMenuGraphics_LoadGraphics(BoxMenuGraphics *menuGraphics)
{
    static const WindowTemplate windowTemplate[MENU_GRAPHICS_WINDOW_COUNT] = {
        [MENU_GRAPHICS_WINDOW_MESSAGE] = {
            .bgLayer = BG_LAYER_MAIN_1,
            .tilemapLeft = 2,
            .tilemapTop = 21,
            .width = 27,
            .height = 2,
            .palette = 4,
            .baseTile = 539,
        },
        [MENU_GRAPHICS_WINDOW_MENU] = {
            .bgLayer = BG_LAYER_MAIN_1,
            .tilemapLeft = MENU_WINDOW_TILEMAP_LEFT,
            .tilemapTop = MENU_WINDOW_TILEMAP_TOP,
            .width = MENU_WINDOW_WIDTH,
            .height = MENU_WINDOW_HEIGHT,
            .palette = MENU_WINDOW_PLTT_SLOT,
            .baseTile = MENU_WINDOW_BASE_TILE,
        },
    };

    menuGraphics->windows = Window_New(HEAP_ID_BOX_GRAPHICS, MENU_GRAPHICS_WINDOW_COUNT);

    if (menuGraphics->windows != NULL) {
        for (int i = 0; i < MENU_GRAPHICS_WINDOW_COUNT; i++) {
            Window_AddFromTemplate(menuGraphics->bgConfig, &menuGraphics->windows[i], &windowTemplate[i]);
        }
    }

    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__PL_WINFRAME, 0, menuGraphics->bgConfig, BG_LAYER_MAIN_1, MENU_FRAME_TILE_BASE, 0, 0, HEAP_ID_BOX_GRAPHICS);
    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__PL_WINFRAME, 24, 0, PLTT_OFFSET(MENU_FRAME_PLTT_SLOT), PALETTE_SIZE_BYTES, HEAP_ID_BOX_GRAPHICS);
    LoadMessageBoxGraphics(menuGraphics->bgConfig, BG_LAYER_MAIN_1, MESSAGE_BOX_FRAME_TILE_BASE, MESSAGE_BOX_FRAME_PLTT_SLOT, menuGraphics->optionsFrame, HEAP_ID_BOX_GRAPHICS);
}

void BoxMenuGraphics_ShowMessage(BoxMenuGraphics *menuGraphics, u32 boxMessageID)
{
    Window_PutToTilemap(&menuGraphics->windows[MENU_GRAPHICS_WINDOW_MESSAGE]);
    DrawMessageBoxFrame(menuGraphics->bgConfig, menuGraphics->windows[MENU_GRAPHICS_WINDOW_MESSAGE].bgLayer, menuGraphics->windows[MENU_GRAPHICS_WINDOW_MESSAGE].tilemapLeft, menuGraphics->windows[MENU_GRAPHICS_WINDOW_MESSAGE].tilemapTop, menuGraphics->windows[MENU_GRAPHICS_WINDOW_MESSAGE].width, menuGraphics->windows[MENU_GRAPHICS_WINDOW_MESSAGE].height);
    Window_FillTilemap(&menuGraphics->windows[MENU_GRAPHICS_WINDOW_MESSAGE], MENU_GRAPHICS_WINDOW_BG_COLOR);
    MessageLoader_GetString(menuGraphics->boxMessagesLoader, boxMessageID, menuGraphics->tempString);
    StringTemplate_Format(menuGraphics->messageVariableBuffer, menuGraphics->formattedString, menuGraphics->tempString);
    Text_AddPrinterWithParams(&menuGraphics->windows[MENU_GRAPHICS_WINDOW_MESSAGE], FONT_MESSAGE, menuGraphics->formattedString, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_LoadTiles(&menuGraphics->windows[MENU_GRAPHICS_WINDOW_MESSAGE]);
    Bg_CopyTilemapBufferToVRAM(menuGraphics->bgConfig, BG_LAYER_MAIN_1);

    menuGraphics->isMessageBoxOpen = TRUE;
}

static void DrawMessageBoxFrame(BgConfig *bgConfig, u32 bgLayer, u32 tilemapLeft, u32 tilemapTop, u32 width, u32 height)
{
    u16 *tilemap;
    u32 i;

    tilemap = Bg_GetTilemapBuffer(bgConfig, bgLayer);
    tilemap += ((tilemapTop - 1) * 32) + (tilemapLeft - 2);

    tilemap[0] = TILEMAP_PALETTE_SHIFT(MESSAGE_BOX_FRAME_PLTT_SLOT) | MESSAGE_BOX_FRAME_TILE_BASE;
    tilemap[1] = TILEMAP_PALETTE_SHIFT(MESSAGE_BOX_FRAME_PLTT_SLOT) | (MESSAGE_BOX_FRAME_TILE_BASE + 1);

    for (i = 0; i < width; i++) {
        tilemap[2 + i] = TILEMAP_PALETTE_SHIFT(MESSAGE_BOX_FRAME_PLTT_SLOT) | (MESSAGE_BOX_FRAME_TILE_BASE + 2);
    }

    tilemap[2 + width] = TILEMAP_PALETTE_SHIFT(MESSAGE_BOX_FRAME_PLTT_SLOT) | (MESSAGE_BOX_FRAME_TILE_BASE + 3);
    tilemap[3 + width] = TILEMAP_PALETTE_SHIFT(MESSAGE_BOX_FRAME_PLTT_SLOT) | (MESSAGE_BOX_FRAME_TILE_BASE + 4);
    tilemap[4 + width] = TILEMAP_PALETTE_SHIFT(MESSAGE_BOX_FRAME_PLTT_SLOT) | (MESSAGE_BOX_FRAME_TILE_BASE + 5);

    tilemap += 32;

    for (i = 0; i < height; i++) {
        tilemap[0] = TILEMAP_PALETTE_SHIFT(MESSAGE_BOX_FRAME_PLTT_SLOT) | (MESSAGE_BOX_FRAME_TILE_BASE + 6);
        tilemap[1] = TILEMAP_PALETTE_SHIFT(MESSAGE_BOX_FRAME_PLTT_SLOT) | (MESSAGE_BOX_FRAME_TILE_BASE + 7);
        tilemap[2 + width] = TILEMAP_PALETTE_SHIFT(MESSAGE_BOX_FRAME_PLTT_SLOT) | (MESSAGE_BOX_FRAME_TILE_BASE + 9);
        tilemap[3 + width] = TILEMAP_PALETTE_SHIFT(MESSAGE_BOX_FRAME_PLTT_SLOT) | (MESSAGE_BOX_FRAME_TILE_BASE + 10);
        tilemap[4 + width] = TILEMAP_PALETTE_SHIFT(MESSAGE_BOX_FRAME_PLTT_SLOT) | (MESSAGE_BOX_FRAME_TILE_BASE + 11);
        tilemap += 32;
    }

    tilemap[0] = TILEMAP_PALETTE_SHIFT(MESSAGE_BOX_FRAME_PLTT_SLOT) | (MESSAGE_BOX_FRAME_TILE_BASE + 12);
    tilemap[1] = TILEMAP_PALETTE_SHIFT(MESSAGE_BOX_FRAME_PLTT_SLOT) | (MESSAGE_BOX_FRAME_TILE_BASE + 13);

    for (i = 0; i < width; i++) {
        tilemap[2 + i] = TILEMAP_PALETTE_SHIFT(MESSAGE_BOX_FRAME_PLTT_SLOT) | (MESSAGE_BOX_FRAME_TILE_BASE + 14);
    }

    tilemap[2 + width] = TILEMAP_PALETTE_SHIFT(MESSAGE_BOX_FRAME_PLTT_SLOT) | (MESSAGE_BOX_FRAME_TILE_BASE + 15);
    tilemap[3 + width] = TILEMAP_PALETTE_SHIFT(MESSAGE_BOX_FRAME_PLTT_SLOT) | (MESSAGE_BOX_FRAME_TILE_BASE + 16);
    tilemap[4 + width] = TILEMAP_PALETTE_SHIFT(MESSAGE_BOX_FRAME_PLTT_SLOT) | (MESSAGE_BOX_FRAME_TILE_BASE + 17);
}

void BoxMenuGraphics_ShowMenu(BoxMenuGraphics *menuGraphics, const BoxMenu *menu)
{
    Window *window;
    u32 y, i;

    if (menuGraphics->isMenuOpen) {
        ClearMenuFromTilemap(menuGraphics->bgConfig, &menuGraphics->windows[MENU_GRAPHICS_WINDOW_MENU]);
    }

    window = &menuGraphics->windows[MENU_GRAPHICS_WINDOW_MENU];
    Window_FillTilemap(window, MENU_GRAPHICS_WINDOW_BG_COLOR);
    y = (MAX_MENU_ITEMS - menu->totalMenuItems) * MENU_ITEM_HEIGHT;

    for (i = 0; i < menu->totalMenuItems; i++) {
        if (menu->menuItems[i] >= BOX_MENU_FIRST_MARKING && menu->menuItems[i] <= BOX_MENU_LAST_MARKING) {
            BoxMenuGraphics_DrawMarking(menuGraphics, window, menu->markings, menu->menuItems[i] - BOX_MENU_FIRST_MARKING);
        } else {
            MessageLoader_GetString(menuGraphics->menuItemsLoader, PokemonStorageSystem_Text_Jump + menu->menuItems[i], menuGraphics->tempString);
            Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, menuGraphics->tempString, 10, y, TEXT_SPEED_NO_TRANSFER, BOX_TEXT_COLOR_MENU, NULL);
        }

        y += MENU_ITEM_HEIGHT;
    }

    BoxMenuGraphics_DrawMenuCursor(menuGraphics, menu);
    BoxMenuGraphics_PutMenuToTilemap(menuGraphics, menu->totalMenuItems);

    Window_LoadTiles(window);
    Bg_CopyTilemapBufferToVRAM(menuGraphics->bgConfig, BG_LAYER_MAIN_1);

    menuGraphics->isMenuOpen = TRUE;
}

static void BoxMenuGraphics_DrawMarking(BoxMenuGraphics *menuGraphics, Window *window, u8 markings, u32 markingID)
{
    Window_BlitBitmapRectWithTransparency(window, menuGraphics->markingsCharData->pRawData, markingID * 8, ((markings & (1 << markingID)) ? 0 : 8), MAX_POKEMON_MARKINGS * 8, 16, 44, markingID * MENU_ITEM_HEIGHT + 4, 8, 8, 0xff);
}

static void BoxMenuGraphics_PutMenuToTilemap(BoxMenuGraphics *menuGraphics, u32 totalMenuItems)
{
    u16 *tilemap;
    u32 x, y, tile, blankRows;

    tilemap = Bg_GetTilemapBuffer(menuGraphics->bgConfig, BG_LAYER_MAIN_1);
    tilemap += MENU_WINDOW_TILEMAP_TOP * 32 + MENU_WINDOW_TILEMAP_LEFT;
    tile = MENU_WINDOW_BASE_TILE;
    blankRows = MAX_MENU_ITEMS - totalMenuItems;
    tilemap += blankRows * MENU_ITEM_TILE_ROWS * 32;
    tile += blankRows * MENU_ITEM_TILE_ROWS * MENU_WINDOW_WIDTH;

    for (y = 0; y < totalMenuItems * MENU_ITEM_TILE_ROWS; y++) {
        for (x = 0; x < MENU_WINDOW_WIDTH; x++) {
            tilemap[x] = (MENU_WINDOW_PLTT_SLOT << 12) | tile;
            tile++;
        }

        tilemap += 32;
    }

    DrawMenuFrame(menuGraphics->bgConfig, BG_LAYER_MAIN_1, MENU_WINDOW_TILEMAP_LEFT, MENU_WINDOW_TILEMAP_TOP + blankRows * MENU_ITEM_TILE_ROWS, MENU_WINDOW_WIDTH, totalMenuItems * MENU_ITEM_TILE_ROWS);
}

void BoxMenuGraphics_CloseMessageBox(BoxMenuGraphics *menuGraphics)
{
    if (menuGraphics->isMessageBoxOpen) {
        ClearMessageBoxFromTilemap(menuGraphics->bgConfig, &menuGraphics->windows[MENU_GRAPHICS_WINDOW_MESSAGE]);
        menuGraphics->isMessageBoxOpen = FALSE;
    }

    if (menuGraphics->isMenuOpen) {
        ClearMenuFromTilemap(menuGraphics->bgConfig, &menuGraphics->windows[MENU_GRAPHICS_WINDOW_MENU]);
        menuGraphics->isMenuOpen = FALSE;
    }

    Bg_CopyTilemapBufferToVRAM(menuGraphics->bgConfig, BG_LAYER_MAIN_1);
}

void BoxMenuGraphics_CloseMenu(BoxMenuGraphics *menuGraphics)
{
    if (menuGraphics->isMenuOpen) {
        ClearMenuFromTilemap(menuGraphics->bgConfig, &menuGraphics->windows[MENU_GRAPHICS_WINDOW_MENU]);
        menuGraphics->isMenuOpen = FALSE;
    }

    Bg_CopyTilemapBufferToVRAM(menuGraphics->bgConfig, BG_LAYER_MAIN_1);
}

void BoxMenuGraphics_DrawMenuCursor(BoxMenuGraphics *menuGraphics, const BoxMenu *menu)
{
    Window *menuWindow;
    u32 y;

    menuWindow = &menuGraphics->windows[MENU_GRAPHICS_WINDOW_MENU];
    y = (MAX_MENU_ITEMS - menu->totalMenuItems) * MENU_ITEM_HEIGHT;

    Window_FillRectWithColor(menuWindow, MENU_GRAPHICS_WINDOW_BG_COLOR, 0, y, 10, menu->totalMenuItems * MENU_ITEM_HEIGHT);
    Window_DrawMenuCursor(menuWindow, 0, y + (menu->selectedMenuItemIndex * MENU_ITEM_HEIGHT));
    Window_LoadTiles(menuWindow);
}

void BoxMenuGraphics_UpdateMarkings(BoxMenuGraphics *menuGraphics, const BoxMenu *menu)
{
    Window *window = &menuGraphics->windows[MENU_GRAPHICS_WINDOW_MENU];

    for (int i = 0; i < 6; i++) {
        BoxMenuGraphics_DrawMarking(menuGraphics, window, menu->markings, i);
    }

    Window_LoadTiles(window);
}

static void DrawMenuFrame(BgConfig *bgConfig, u32 bgLayer, u32 tilemapLeft, u32 tilemapTop, u32 width, u32 height)
{
    u16 *tilemap;
    u32 i;

    tilemap = Bg_GetTilemapBuffer(bgConfig, bgLayer);
    tilemap += ((tilemapTop - 1) * 32) + (tilemapLeft - 1);
    *tilemap = TILEMAP_PALETTE_SHIFT(MENU_FRAME_PLTT_SLOT) | MENU_FRAME_TILE_BASE;

    for (i = 0; i < width; i++) {
        tilemap[i + 1] = TILEMAP_PALETTE_SHIFT(MENU_FRAME_PLTT_SLOT) | (MENU_FRAME_TILE_BASE + 1);
    }

    tilemap[width + 1] = TILEMAP_PALETTE_SHIFT(MENU_FRAME_PLTT_SLOT) | (MENU_FRAME_TILE_BASE + 2);
    tilemap += 32;

    for (i = 0; i < height; i++) {
        *tilemap = TILEMAP_PALETTE_SHIFT(MENU_FRAME_PLTT_SLOT) | (MENU_FRAME_TILE_BASE + 3);
        tilemap[width + 1] = TILEMAP_PALETTE_SHIFT(MENU_FRAME_PLTT_SLOT) | (MENU_FRAME_TILE_BASE + 5);
        tilemap += 32;
    }

    *tilemap = TILEMAP_PALETTE_SHIFT(MENU_FRAME_PLTT_SLOT) | (MENU_FRAME_TILE_BASE + 6);

    for (i = 0; i < width; i++) {
        tilemap[i + 1] = TILEMAP_PALETTE_SHIFT(MENU_FRAME_PLTT_SLOT) | (MENU_FRAME_TILE_BASE + 7);
    }

    tilemap[width + 1] = TILEMAP_PALETTE_SHIFT(MENU_FRAME_PLTT_SLOT) | (MENU_FRAME_TILE_BASE + 8);
}

static void ClearMenuFromTilemap(BgConfig *bgConfig, Window *window)
{
    u16 *tilemap;
    u32 x, y;

    tilemap = Bg_GetTilemapBuffer(bgConfig, window->bgLayer);
    tilemap += ((window->tilemapTop - 1) * 32) + (window->tilemapLeft - 1);

    for (y = 0; y < (window->height + 2); y++) {
        for (x = 0; x < (window->width + 2); x++) {
            tilemap[x] = 0;
        }

        tilemap += 32;
    }
}

static void ClearMessageBoxFromTilemap(BgConfig *bgConfig, Window *window)
{
    u16 *tilemap;
    u32 x, y;

    tilemap = Bg_GetTilemapBuffer(bgConfig, window->bgLayer);
    tilemap += ((window->tilemapTop - 1) * 32) + (window->tilemapLeft - 2);

    for (y = 0; y < (window->height + 2); y++) {
        for (x = 0; x < (window->width + 5); x++) {
            tilemap[x] = 0;
        }

        tilemap += 32;
    }
}
