#include "overlay005/field_menu.h"

#include <nitro.h>
#include <string.h>

#include "constants/narc.h"
#include "constants/scrcmd.h"
#include "generated/map_headers.h"

#include "field/field_system.h"

#include "bg_window.h"
#include "coins.h"
#include "font.h"
#include "heap.h"
#include "list_menu.h"
#include "menu.h"
#include "message.h"
#include "render_window.h"
#include "save_player.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_0202D05C.h"

#include "res/text/bank/menu_entries.h"
#include "res/text/bank/unk_0543.h"

#define MENU_LOOPAROUND_MIN_OPTIONS 4
#define LIST_MENU_MAX_DISPLAY       8

#define CURRENT_FLOOR_WINDOW_HEIGHT 4
#define MONEY_WINDOW_WIDTH          10
#define MONEY_WINDOW_HEIGHT         4
#define COIN_BP_WINDOW_WIDTH        10
#define COIN_BP_WINDOW_HEIGHT       2
#define SHARD_COST_WINDOW_WIDTH     10
#define SHARD_COST_WINDOW_HEIGHT    16

#define CURSOR_MARGIN_SIZE 12

#define TILE_SIDELENGTH 8

#define GLYPH_ROW_HEIGHT       16
#define GLYPH_ROW_TILES_HEIGHT ((GLYPH_ROW_HEIGHT + (TILE_SIDELENGTH - 1)) / TILE_SIDELENGTH)

static void FieldMenuManager_Init(FieldSystem *fieldSystem, FieldMenuManager *menuManager, u8 anchorX, u8 anchorY, u8 initialCursorPos, u8 canExitWithB, u16 *selectedOptionPtr, StringTemplate *stringTemplate, Window *parentWindow, MessageLoader *messageLoader);
static void FieldMenuManager_SetupMultiColumnMenu(FieldMenuManager *menuManager, u8 columnsCount, u8 rowsCount);
static void _FieldMenuManager_AddMenuEntry(FieldMenuManager *menuManager, u32 entryID, u32 index);
static u32 CalcMenuWidth(FieldMenuManager *menuManager);
static void FieldMenuManager_SetupSingleColumnMenu(FieldMenuManager *menuManager);
static void MenuSysTaskCallback(SysTask *sysTask, void *param);
static void _FieldMenuManager_ShowListMenuWithWidth(FieldMenuManager *menuManager, u32 windowWidth);
static void _FieldMenuManager_AddListMenuEntry(FieldMenuManager *menuManager, u32 entryID, u32 altTextStringID, u32 entryIndex);
static u32 CalcListMenuWidth(FieldMenuManager *menuManager);
static void FieldMenuManager_InitListMenuTemplate(FieldMenuManager *menuManager);
static void ListMenuPrintCallback(ListMenu *listMenu, u32 index, u8 yOffset);
static void ListMenuCursorCallback(ListMenu *listMenu, u32 index, u8 onInit);
static void ListMenuSysTaskCallback(SysTask *sysTask, void *param);
static void FieldMenuManager_DeleteWithListMenu(FieldMenuManager *menuManager);
static void FieldMenuManager_PrintListMenyAltText(FieldMenuManager *menuManager, u16 entryID, u32 printerDelay);
static void FieldMenuManager_UpdateListMenuAltText(FieldMenuManager *menuManager);
static void CurrentFloorWindowSystaskCallback(SysTask *param0, void *param1);
static void FieldMenuManager_PrintString(FieldMenuManager *menuManager, u16 entryID, u8 xOffset, u8 yOffset);

static inline u32 PixelToTiles(u32 length)
{
    if ((length % TILE_SIDELENGTH) == 0) {
        return length / TILE_SIDELENGTH;
    } else {
        return (length / TILE_SIDELENGTH) + 1;
    }
}

static void FieldMenuManager_Init(FieldSystem *fieldSystem, FieldMenuManager *menuManager, u8 anchorX, u8 anchorY, u8 initialCursorPos, u8 canExitWithB, u16 *selectedOptionPtr, StringTemplate *stringTemplate, Window *parentWindow, MessageLoader *messageLoader)
{
    int i;

    if (messageLoader == NULL) {
        menuManager->messageLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MENU_ENTRIES, HEAP_ID_FIELD1);
        menuManager->freeMsgLoaderOnDelete = TRUE;
    } else {
        menuManager->messageLoader = messageLoader;
        menuManager->freeMsgLoaderOnDelete = FALSE;
    }

    menuManager->stringTemplate = stringTemplate;
    menuManager->fieldSystem = fieldSystem;
    menuManager->selectedOptionPtr = selectedOptionPtr;

    *menuManager->selectedOptionPtr = 0;

    menuManager->listMenuListOffsetPtr = NULL;
    menuManager->listMenuCursorPosPtr = NULL;
    menuManager->canExitWithB = canExitWithB;
    menuManager->initialCursorPos = initialCursorPos;
    menuManager->anchorRight = FALSE;
    menuManager->anchorBottom = FALSE;
    menuManager->anchorX = anchorX;
    menuManager->anchorY = anchorY;
    menuManager->optionsCount = 0;
    menuManager->parentWindow = parentWindow;
    menuManager->sysTaskDelay = 3;
    menuManager->cursorPos = initialCursorPos;

    for (i = 0; i < FIELD_MENU_ENTRIES_MAX; i++) {
        menuManager->menuChoicesStrings[i].entry = NULL;
        menuManager->menuChoicesStrings[i].index = 0;
    }

    for (i = 0; i < FIELD_MENU_ENTRIES_MAX; i++) {
        menuManager->listMenuChoicesStrings[i].entry = NULL;
        menuManager->listMenuChoicesStrings[i].index = 0;
        menuManager->choicesAltTextStringIDs[i] = LIST_MENU_ENTRY_NO_ALT_TEXT;
    }

    for (i = 0; i < FIELD_MENU_ENTRIES_MAX; i++) {
        menuManager->choicesStringsBuffers[i] = Strbuf_Init(80, HEAP_ID_FIELD1);
    }

    *menuManager->selectedOptionPtr = LIST_MENU_NO_SELECTION_YET;
}

FieldMenuManager *FieldMenuManager_New(FieldSystem *fieldSystem, u8 anchorX, u8 anchorY, u8 initialCursorPos, u8 canExitWithB, u16 *selectedOptionPtr, StringTemplate *stringTemplate, Window *parentWindow, MessageLoader *messageLoader)
{
    FieldMenuManager *menuManager = Heap_Alloc(HEAP_ID_FIELD1, sizeof(FieldMenuManager));

    if (menuManager == NULL) {
        return NULL;
    }

    memset(menuManager, 0, sizeof(FieldMenuManager));
    FieldMenuManager_Init(fieldSystem, menuManager, anchorX, anchorY, initialCursorPos, canExitWithB, selectedOptionPtr, stringTemplate, parentWindow, messageLoader);

    return menuManager;
}

void FieldMenuManager_AddMenuEntry(FieldMenuManager *menuManager, u32 entryID, u32 index)
{
    _FieldMenuManager_AddMenuEntry(menuManager, entryID, index);
}

void FieldMenuManager_ShowSingleColumnMenu(FieldMenuManager *menuManager)
{
    u32 menuWidth = CalcMenuWidth(menuManager);

    menuWidth = PixelToTiles(menuWidth);

    if (menuManager->anchorRight) {
        menuManager->anchorX -= menuWidth;
    }

    if (menuManager->anchorBottom) {
        menuManager->anchorY -= menuManager->optionsCount * GLYPH_ROW_TILES_HEIGHT;
    }

    Window_Add(menuManager->fieldSystem->bgConfig, &menuManager->menuWindow, BG_LAYER_MAIN_3, menuManager->anchorX, menuManager->anchorY, menuWidth, menuManager->optionsCount * GLYPH_ROW_TILES_HEIGHT, PLTT_13, ((1 + (10 * 4)) + (10 * 2)));
    LoadStandardWindowGraphics(menuManager->fieldSystem->bgConfig, BG_LAYER_MAIN_3, 1024 - (18 + 12) - 9, PLTT_11, STANDARD_WINDOW_SYSTEM, HEAP_ID_FIELD1);
    Window_DrawStandardFrame(&menuManager->menuWindow, TRUE, 1024 - (18 + 12) - 9, PLTT_11);

    FieldMenuManager_SetupSingleColumnMenu(menuManager);

    menuManager->menu = Menu_NewSimple(&menuManager->menuTemplate, menuManager->initialCursorPos, HEAP_ID_FIELD1);
    menuManager->sysTask = SysTask_Start(MenuSysTaskCallback, menuManager, 0);
}

static void _FieldMenuManager_AddMenuEntry(FieldMenuManager *menuManager, u32 entryID, u32 index)
{
    Strbuf *entryBuf = Strbuf_Init(80, HEAP_ID_FIELD1);

    MessageLoader_GetStrbuf(menuManager->messageLoader, entryID, entryBuf);
    StringTemplate_Format(menuManager->stringTemplate, menuManager->choicesStringsBuffers[menuManager->optionsCount], entryBuf);
    menuManager->menuChoicesStrings[menuManager->optionsCount].entry = (const void *)menuManager->choicesStringsBuffers[menuManager->optionsCount];
    Strbuf_Free(entryBuf);

    menuManager->menuChoicesStrings[menuManager->optionsCount].index = index;
    menuManager->optionsCount++;
}

static u32 CalcMenuWidth(FieldMenuManager *menuManager)
{
    u32 entryWidth = 0;
    u32 maxWidth = 0;

    for (int i = 0; i < menuManager->optionsCount; i++) {
        if (menuManager->menuChoicesStrings[i].entry == NULL) {
            break;
        }

        entryWidth = Font_CalcStringWidthWithCursorControl(FONT_SYSTEM, (Strbuf *)menuManager->menuChoicesStrings[i].entry);

        if (maxWidth < entryWidth) {
            maxWidth = entryWidth;
        }
    }

    return maxWidth + CURSOR_MARGIN_SIZE;
}

static void FieldMenuManager_SetupSingleColumnMenu(FieldMenuManager *menuManager)
{
    menuManager->menuTemplate.choices = menuManager->menuChoicesStrings;
    menuManager->menuTemplate.window = &menuManager->menuWindow;
    menuManager->menuTemplate.fontID = FONT_SYSTEM;
    menuManager->menuTemplate.xSize = 1;
    menuManager->menuTemplate.ySize = menuManager->optionsCount;
    menuManager->menuTemplate.lineSpacing = 0;
    menuManager->menuTemplate.suppressCursor = FALSE;

    if (menuManager->optionsCount >= MENU_LOOPAROUND_MIN_OPTIONS) {
        menuManager->menuTemplate.loopAround = TRUE;
    } else {
        menuManager->menuTemplate.loopAround = FALSE;
    }
}

static void MenuSysTaskCallback(SysTask *sysTask, void *param)
{
    FieldMenuManager *menuManager = (FieldMenuManager *)param;

    if (menuManager->sysTaskDelay != 0) {
        menuManager->sysTaskDelay--;
        return;
    }

    if (IsScreenFadeDone() == FALSE) {
        return;
    }

    u32 selectedEntry = Menu_ProcessInput(menuManager->menu);

    switch (selectedEntry) {
    case MENU_NOTHING_CHOSEN:
        break;
    case MENU_CANCELED:
        if (menuManager->canExitWithB == TRUE) {
            *menuManager->selectedOptionPtr = MENU_CANCELED;
            FieldMenuManager_DeleteWithMenu(menuManager);
        }
        break;
    default:
        *menuManager->selectedOptionPtr = selectedEntry;
        FieldMenuManager_DeleteWithMenu(menuManager);
        break;
    }
}

void FieldMenuManager_DeleteWithMenu(FieldMenuManager *menuManager)
{
    Sound_PlayEffect(SEQ_SE_CONFIRM);
    Menu_Free(menuManager->menu, NULL);
    Window_EraseStandardFrame(menuManager->menuTemplate.window, FALSE);
    Window_Remove(menuManager->menuTemplate.window);

    for (int i = 0; i < FIELD_MENU_ENTRIES_MAX; i++) {
        Strbuf_Free(menuManager->choicesStringsBuffers[i]);
    }

    if (menuManager->freeMsgLoaderOnDelete == TRUE) {
        MessageLoader_Free(menuManager->messageLoader);
    }

    SysTask_Done(menuManager->sysTask);
    Heap_Free(menuManager);
}

FieldMenuManager *FieldMenuManager_New2(FieldSystem *fieldSystem, u8 anchorX, u8 anchorY, u8 initialCursorPos, u8 canExitWithB, u16 *selectedOptionPtr, StringTemplate *stringTemplate, Window *parentWindow, MessageLoader *messageLoader)
{
    return FieldMenuManager_New(fieldSystem, anchorX, anchorY, initialCursorPos, canExitWithB, selectedOptionPtr, stringTemplate, parentWindow, messageLoader);
}

void FieldMenuManager_AddListMenuEntry(FieldMenuManager *menuManager, u32 entryID, u32 altTextStringID, u32 entryIndex)
{
    _FieldMenuManager_AddListMenuEntry(menuManager, entryID, altTextStringID, entryIndex);
}

void FieldMenuManager_ShowListMenu(FieldMenuManager *menuManager)
{
    u32 menuWidth = CalcListMenuWidth(menuManager);

    menuWidth = PixelToTiles(menuWidth);

    if (menuManager->anchorRight) {
        menuManager->anchorX -= menuWidth;
    }

    if (menuManager->anchorBottom) {
        if (menuManager->optionsCount > LIST_MENU_MAX_DISPLAY) {
            menuManager->anchorY -= LIST_MENU_MAX_DISPLAY * GLYPH_ROW_TILES_HEIGHT;
        } else {
            menuManager->anchorY -= menuManager->optionsCount * GLYPH_ROW_TILES_HEIGHT;
        }
    }

    _FieldMenuManager_ShowListMenuWithWidth(menuManager, menuWidth);
}

void FieldMenuManager_ShowListMenuWithWidth(FieldMenuManager *menuManager, u16 windowWidth)
{
    _FieldMenuManager_ShowListMenuWithWidth(menuManager, windowWidth);
}

static void _FieldMenuManager_ShowListMenuWithWidth(FieldMenuManager *menuManager, u32 windowWidth)
{
    if (menuManager->optionsCount > LIST_MENU_MAX_DISPLAY) {
        Window_Add(menuManager->fieldSystem->bgConfig, &menuManager->menuWindow, BG_LAYER_MAIN_3, menuManager->anchorX, menuManager->anchorY, windowWidth, LIST_MENU_MAX_DISPLAY * GLYPH_ROW_TILES_HEIGHT, PLTT_13, ((1 + (10 * 4)) + (10 * 2)));
    } else {
        Window_Add(menuManager->fieldSystem->bgConfig, &menuManager->menuWindow, BG_LAYER_MAIN_3, menuManager->anchorX, menuManager->anchorY, windowWidth, menuManager->optionsCount * GLYPH_ROW_TILES_HEIGHT, PLTT_13, ((1 + (10 * 4)) + (10 * 2)));
    }

    LoadStandardWindowGraphics(menuManager->fieldSystem->bgConfig, BG_LAYER_MAIN_3, 1024 - (18 + 12) - 9, PLTT_11, STANDARD_WINDOW_SYSTEM, HEAP_ID_FIELD1);
    Window_DrawStandardFrame(&menuManager->menuWindow, TRUE, 1024 - (18 + 12) - 9, PLTT_11);

    FieldMenuManager_InitListMenuTemplate(menuManager);
    menuManager->listMenu = ListMenu_New((const ListMenuTemplate *)&menuManager->listMenuTemplate, 0, menuManager->initialCursorPos, HEAP_ID_FIELD1);

    FieldMenuManager_UpdateListMenuAltText(menuManager);
    menuManager->sysTask = SysTask_Start(ListMenuSysTaskCallback, menuManager, 0);
}

void FieldMenuManager_ShowListMenuWithCursorPosition(FieldMenuManager *menuManager, u16 *listOffsetPtr, u16 *cursorPosPtr)
{
    u32 menuWidth = CalcListMenuWidth(menuManager);

    menuWidth = PixelToTiles(menuWidth);

    if (menuManager->optionsCount > LIST_MENU_MAX_DISPLAY) {
        Window_Add(menuManager->fieldSystem->bgConfig, &menuManager->menuWindow, BG_LAYER_MAIN_3, menuManager->anchorX, menuManager->anchorY, menuWidth, LIST_MENU_MAX_DISPLAY * GLYPH_ROW_TILES_HEIGHT, PLTT_13, ((1 + (10 * 4)) + (10 * 2)));
    } else {
        Window_Add(menuManager->fieldSystem->bgConfig, &menuManager->menuWindow, BG_LAYER_MAIN_3, menuManager->anchorX, menuManager->anchorY, menuWidth, menuManager->optionsCount * GLYPH_ROW_TILES_HEIGHT, PLTT_13, ((1 + (10 * 4)) + (10 * 2)));
    }

    LoadStandardWindowGraphics(menuManager->fieldSystem->bgConfig, BG_LAYER_MAIN_3, 1024 - (18 + 12) - 9, PLTT_11, STANDARD_WINDOW_SYSTEM, HEAP_ID_FIELD1);
    Window_DrawStandardFrame(&menuManager->menuWindow, TRUE, 1024 - (18 + 12) - 9, PLTT_11);

    FieldMenuManager_InitListMenuTemplate(menuManager);

    menuManager->listMenuListOffsetPtr = listOffsetPtr;
    menuManager->listMenuCursorPosPtr = cursorPosPtr;
    menuManager->cursorPos = ((*menuManager->listMenuListOffsetPtr) + (*menuManager->listMenuCursorPosPtr));
    menuManager->listMenu = ListMenu_New((const ListMenuTemplate *)&menuManager->listMenuTemplate, *listOffsetPtr, *cursorPosPtr, HEAP_ID_FIELD1);

    FieldMenuManager_UpdateListMenuAltText(menuManager);

    menuManager->sysTask = SysTask_Start(ListMenuSysTaskCallback, menuManager, 0);
}

static void _FieldMenuManager_AddListMenuEntry(FieldMenuManager *menuManager, u32 entryID, u32 altTextStringID, u32 entryIndex)
{
    Strbuf *fmtString = Strbuf_Init(80, HEAP_ID_FIELD1);

    MessageLoader_GetStrbuf(menuManager->messageLoader, entryID, fmtString);
    StringTemplate_Format(menuManager->stringTemplate, menuManager->choicesStringsBuffers[menuManager->optionsCount], fmtString);
    menuManager->listMenuChoicesStrings[menuManager->optionsCount].entry = (const void *)menuManager->choicesStringsBuffers[menuManager->optionsCount];
    Strbuf_Free(fmtString);

    if (entryIndex == LIST_MENU_BUILDER_HEADER) {
        menuManager->listMenuChoicesStrings[menuManager->optionsCount].index = LIST_HEADER;
    } else {
        menuManager->listMenuChoicesStrings[menuManager->optionsCount].index = entryIndex;
    }

    menuManager->choicesAltTextStringIDs[menuManager->optionsCount] = altTextStringID;
    menuManager->optionsCount++;
}

static u32 CalcListMenuWidth(FieldMenuManager *menuManager)
{
    u32 entryWidth = 0;
    u32 maxWidth = 0;

    for (int i = 0; i < menuManager->optionsCount; i++) {
        if (menuManager->listMenuChoicesStrings[i].entry == NULL) {
            break;
        }

        entryWidth = Font_CalcStringWidthWithCursorControl(FONT_SYSTEM, (Strbuf *)menuManager->listMenuChoicesStrings[i].entry);

        if (maxWidth < entryWidth) {
            maxWidth = entryWidth;
        }
    }

    return maxWidth + CURSOR_MARGIN_SIZE;
}

static void FieldMenuManager_InitListMenuTemplate(FieldMenuManager *menuManager)
{
    menuManager->listMenuTemplate.choices = menuManager->listMenuChoicesStrings;
    menuManager->listMenuTemplate.cursorCallback = ListMenuCursorCallback;
    menuManager->listMenuTemplate.printCallback = ListMenuPrintCallback;
    menuManager->listMenuTemplate.window = &menuManager->menuWindow;
    menuManager->listMenuTemplate.count = menuManager->optionsCount;
    menuManager->listMenuTemplate.maxDisplay = LIST_MENU_MAX_DISPLAY;
    menuManager->listMenuTemplate.headerXOffset = 1;
    menuManager->listMenuTemplate.textXOffset = CURSOR_MARGIN_SIZE;
    menuManager->listMenuTemplate.cursorXOffset = 2;
    menuManager->listMenuTemplate.yOffset = 1;
    menuManager->listMenuTemplate.textColorFg = 1;
    menuManager->listMenuTemplate.textColorBg = 15;
    menuManager->listMenuTemplate.textColorShadow = 2;
    menuManager->listMenuTemplate.letterSpacing = 0;
    menuManager->listMenuTemplate.lineSpacing = 0;
    menuManager->listMenuTemplate.pagerMode = PAGER_MODE_LEFT_RIGHT_PAD;
    menuManager->listMenuTemplate.fontID = FONT_SYSTEM;
    menuManager->listMenuTemplate.cursorType = 0;
    menuManager->listMenuTemplate.parent = (void *)menuManager;
}

static void ListMenuPrintCallback(ListMenu *listMenu, u32 index, u8 yOffset)
{
    if (index == LIST_HEADER) {
        ListMenu_SetAltTextColors(listMenu, 3, 15, 4);
    } else {
        ListMenu_SetAltTextColors(listMenu, 1, 15, 2);
    }
}

static void ListMenuCursorCallback(ListMenu *listMenu, u32 index, u8 onInit)
{
    u16 v2 = 0;
    u16 v3 = 0;
    FieldMenuManager *v4 = (FieldMenuManager *)ListMenu_GetAttribute(listMenu, LIST_MENU_PARENT);

    ListMenu_GetListAndCursorPos(listMenu, &v2, &v3);

    if ((v4->listMenuListOffsetPtr != NULL) && (v4->listMenuCursorPosPtr != NULL)) {
        *v4->listMenuListOffsetPtr = v2;
        *v4->listMenuCursorPosPtr = v3;
    }
}

static void ListMenuSysTaskCallback(SysTask *sysTask, void *param)
{
    FieldMenuManager *menuManager = (FieldMenuManager *)param;

    if (menuManager->sysTaskDelay != 0) {
        menuManager->sysTaskDelay--;
        return;
    }

    if (IsScreenFadeDone() == FALSE) {
        return;
    }

    u32 selectedOption = ListMenu_ProcessInput(menuManager->listMenu);
    u16 cursorPos = menuManager->cursorPos;

    ListMenu_CalcTrueCursorPos(menuManager->listMenu, &menuManager->cursorPos);

    if (cursorPos != menuManager->cursorPos) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    if (JOY_REPEAT(PAD_KEY_UP) || JOY_REPEAT(PAD_KEY_DOWN) || JOY_REPEAT(PAD_KEY_LEFT) || JOY_REPEAT(PAD_KEY_RIGHT)) {
        FieldMenuManager_UpdateListMenuAltText(menuManager);
    }

    switch (selectedOption) {
    case LIST_NOTHING_CHOSEN:
        break;
    case LIST_CANCEL:
        if (menuManager->canExitWithB == TRUE) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            *menuManager->selectedOptionPtr = LIST_CANCEL;
            FieldMenuManager_DeleteWithListMenu(param);
        }
        break;
    default:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        *menuManager->selectedOptionPtr = selectedOption;
        FieldMenuManager_DeleteWithListMenu(param);
        break;
    }
}

static void FieldMenuManager_DeleteWithListMenu(FieldMenuManager *menuManager)
{
    Sound_PlayEffect(SEQ_SE_CONFIRM);
    ListMenu_Free(menuManager->listMenu, NULL, NULL);
    Window_EraseStandardFrame(menuManager->listMenuTemplate.window, FALSE);
    Window_Remove(&menuManager->menuWindow);

    for (int i = 0; i < FIELD_MENU_ENTRIES_MAX; i++) {
        Strbuf_Free(menuManager->choicesStringsBuffers[i]);
    }

    if (menuManager->freeMsgLoaderOnDelete == TRUE) {
        MessageLoader_Free(menuManager->messageLoader);
    }

    SysTask_Done(menuManager->sysTask);
    Heap_Free(menuManager);
}

static void FieldMenuManager_PrintListMenyAltText(FieldMenuManager *menuManager, u16 entryID, u32 printerDelay)
{
    Strbuf *v0 = Strbuf_Init(80, HEAP_ID_FIELD1);
    Strbuf *v1 = Strbuf_Init(80, HEAP_ID_FIELD1);

    Window_FillTilemap(menuManager->parentWindow, 15);
    MessageLoader_GetStrbuf(menuManager->messageLoader, entryID, v0);
    StringTemplate_Format(menuManager->stringTemplate, v1, v0);
    Text_AddPrinterWithParams(menuManager->parentWindow, FONT_MESSAGE, v1, 0, 0, printerDelay, NULL);
    Strbuf_Free(v0);
    Strbuf_Free(v1);
}

static void FieldMenuManager_UpdateListMenuAltText(FieldMenuManager *menuManager)
{
    ListMenu_CalcTrueCursorPos(menuManager->listMenu, &menuManager->listMenuAltTextIndex);

    if (menuManager->choicesAltTextStringIDs[menuManager->listMenuAltTextIndex] != LIST_MENU_ENTRY_NO_ALT_TEXT) {
        FieldMenuManager_PrintListMenyAltText(menuManager, menuManager->choicesAltTextStringIDs[menuManager->listMenuAltTextIndex], 0);
    }
}

void FieldMenu_ShowCurrentFloorWindow(FieldSystem *fieldSystem, u8 tilemapLeft, u8 tilemapTop, u16 *selectedOptionPtr, StringTemplate *stringTemplate, u16 unused)
{
    u32 width; // forward declaration required to match

    FieldMenuManager *menuManager = FieldMenuManager_New(fieldSystem, tilemapLeft, tilemapTop, 0, 0, selectedOptionPtr, stringTemplate, NULL, NULL);
    width = 8 * Font_GetAttribute(FONT_SYSTEM, FONTATTR_MAX_LETTER_WIDTH);

    if ((width % TILE_SIDELENGTH) == 0) {
        width = (width / TILE_SIDELENGTH);
    } else {
        width = (width / TILE_SIDELENGTH) + 1;
    }

    Window_Add(menuManager->fieldSystem->bgConfig, &menuManager->menuWindow, BG_LAYER_MAIN_3, menuManager->anchorX, menuManager->anchorY, width, CURRENT_FLOOR_WINDOW_HEIGHT, PLTT_13, ((1 + (10 * 4)) + (10 * 2)) + (16 * 10));
    LoadStandardWindowGraphics(menuManager->fieldSystem->bgConfig, BG_LAYER_MAIN_3, 1024 - (18 + 12) - 9, PLTT_11, STANDARD_WINDOW_SYSTEM, HEAP_ID_FIELD1);
    Window_DrawStandardFrame(&menuManager->menuWindow, TRUE, 1024 - (18 + 12) - 9, PLTT_11);
    Window_FillRectWithColor(&menuManager->menuWindow, 15, 0, 0, (width * TILE_SIDELENGTH), (MONEY_WINDOW_HEIGHT * TILE_SIDELENGTH));

    FieldMenuManager_PrintString(menuManager, pl_msg_00000361_00015, 0, 0);
    FieldMenuManager_PrintString(menuManager, pl_msg_00000361_00016, (4 * TILE_SIDELENGTH), GLYPH_ROW_HEIGHT);

    menuManager->menuTemplate.window = &menuManager->menuWindow;
    Window_CopyToVRAM(&menuManager->menuWindow);
    menuManager->sysTask = SysTask_Start(CurrentFloorWindowSystaskCallback, menuManager, 0);
}

static void FieldMenuManager_PrintString(FieldMenuManager *menuManager, u16 entryID, u8 xOffset, u8 yOffset)
{
    Strbuf *fmtString = Strbuf_Init(80, HEAP_ID_FIELD1);
    Strbuf *formatted = Strbuf_Init(80, HEAP_ID_FIELD1);

    MessageLoader_GetStrbuf(menuManager->messageLoader, entryID, fmtString);
    StringTemplate_Format(menuManager->stringTemplate, formatted, fmtString);
    Text_AddPrinterWithParams(&menuManager->menuWindow, FONT_SYSTEM, formatted, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(fmtString);
    Strbuf_Free(formatted);
}

static void CurrentFloorWindowSystaskCallback(SysTask *sysTask, void *param)
{
    FieldMenuManager *menuManager = (FieldMenuManager *)param;

    if (*menuManager->selectedOptionPtr == 0xffff) {
        Window_EraseStandardFrame(menuManager->menuTemplate.window, FALSE);
        Window_Remove(menuManager->menuTemplate.window);

        for (int i = 0; i < FIELD_MENU_ENTRIES_MAX; i++) {
            Strbuf_Free(menuManager->choicesStringsBuffers[i]);
        }

        if (menuManager->freeMsgLoaderOnDelete == TRUE) {
            MessageLoader_Free(menuManager->messageLoader);
        }

        SysTask_Done(menuManager->sysTask);
        Heap_Free(menuManager);
    }
}

u16 FieldMenu_GetFloorsAbove(int location)
{
    u16 floorsAbove;

    switch (location) {
    case MAP_HEADER_HEARTHOME_CITY_SOUTHEAST_HOUSE_1F:
        floorsAbove = 1;
        break;
    case MAP_HEADER_HEARTHOME_CITY_SOUTHEAST_HOUSE_2F:
        floorsAbove = 0;
        break;
    case MAP_HEADER_VISTA_LIGHTHOUSE:
        floorsAbove = 0;
        break;
    case MAP_HEADER_SUNYSHORE_CITY:
        floorsAbove = 1;
        break;
    case MAP_HEADER_HEARTHOME_CITY_NORTHEAST_HOUSE_1F:
        floorsAbove = 1;
        break;
    case MAP_HEADER_HEARTHOME_CITY_NORTHEAST_HOUSE_2F:
        floorsAbove = 0;
        break;
    case MAP_HEADER_RESORT_AREA_RIBBON_SYNDICATE_1F:
        floorsAbove = 1;
        break;
    case MAP_HEADER_RESORT_AREA_RIBBON_SYNDICATE_2F:
        floorsAbove = 0;
        break;
    case MAP_HEADER_VEILSTONE_STORE_1F:
        floorsAbove = 4;
        break;
    case MAP_HEADER_VEILSTONE_STORE_2F:
        floorsAbove = 3;
        break;
    case MAP_HEADER_VEILSTONE_STORE_3F:
        floorsAbove = 2;
        break;
    case MAP_HEADER_VEILSTONE_STORE_4F:
        floorsAbove = 1;
        break;
    case MAP_HEADER_VEILSTONE_STORE_5F:
        floorsAbove = 0;
        break;
    case MAP_HEADER_VEILSTONE_STORE_B1F:
        floorsAbove = 5;
        break;
    case MAP_HEADER_JUBILIFE_TV_1F:
        floorsAbove = 3;
        break;
    case MAP_HEADER_JUBILIFE_TV_2F:
        floorsAbove = 2;
        break;
    case MAP_HEADER_JUBILIFE_TV_3F:
        floorsAbove = 1;
        break;
    case MAP_HEADER_JUBILIFE_TV_4F:
        floorsAbove = 0;
        break;
    default:
        floorsAbove = 1;
    }

    return floorsAbove;
}

void FieldMenuManager_ShowMultiColumnMenu(FieldMenuManager *menuManager, u8 columnsCount)
{
    u32 menuWidth = CalcMenuWidth(menuManager);

    menuWidth = PixelToTiles(menuWidth);

    u8 rowsCount = (menuManager->optionsCount / columnsCount);

    if ((menuManager->optionsCount % columnsCount) != 0) {
        rowsCount++;
    }

    Window_Add(menuManager->fieldSystem->bgConfig, &menuManager->menuWindow, BG_LAYER_MAIN_3, menuManager->anchorX, menuManager->anchorY, (menuWidth * columnsCount), rowsCount * GLYPH_ROW_TILES_HEIGHT, PLTT_13, ((1 + (10 * 4)) + (10 * 2)));
    LoadStandardWindowGraphics(menuManager->fieldSystem->bgConfig, BG_LAYER_MAIN_3, 1024 - (18 + 12) - 9, PLTT_11, STANDARD_WINDOW_SYSTEM, HEAP_ID_FIELD1);
    Window_DrawStandardFrame(&menuManager->menuWindow, TRUE, 1024 - (18 + 12) - 9, PLTT_11);

    FieldMenuManager_SetupMultiColumnMenu(menuManager, columnsCount, rowsCount);

    menuManager->menu = Menu_NewSimple(&menuManager->menuTemplate, menuManager->initialCursorPos, HEAP_ID_FIELD1);
    menuManager->sysTask = SysTask_Start(MenuSysTaskCallback, menuManager, 0);
}

static void FieldMenuManager_SetupMultiColumnMenu(FieldMenuManager *menuManager, u8 columnsCount, u8 rowsCount)
{
    menuManager->menuTemplate.choices = menuManager->menuChoicesStrings;
    menuManager->menuTemplate.window = &menuManager->menuWindow;
    menuManager->menuTemplate.fontID = FONT_SYSTEM;
    menuManager->menuTemplate.xSize = columnsCount;
    menuManager->menuTemplate.ySize = rowsCount;
    menuManager->menuTemplate.lineSpacing = 0;
    menuManager->menuTemplate.suppressCursor = FALSE;
}

Window *FieldMenu_CreateMoneyWindow(FieldSystem *fieldSystem, u8 tilemapTop, u8 tilemapLeft)
{
    Window *window = Window_New(HEAP_ID_FIELD1, 1);

    Window_Add(fieldSystem->bgConfig, window, BG_LAYER_MAIN_3, tilemapTop, tilemapLeft, MONEY_WINDOW_WIDTH, MONEY_WINDOW_HEIGHT, PLTT_13, 1);
    LoadStandardWindowGraphics(fieldSystem->bgConfig, BG_LAYER_MAIN_3, 1024 - (18 + 12) - 9, PLTT_11, STANDARD_WINDOW_SYSTEM, HEAP_ID_FIELD1);
    Window_DrawStandardFrame(window, TRUE, 1024 - (18 + 12) - 9, PLTT_11);
    Window_FillTilemap(window, 15);

    MessageLoader *messageLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0543, HEAP_ID_FIELD1);
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(messageLoader, pl_msg_00000543_00018);

    Text_AddPrinterWithParams(window, FONT_SYSTEM, strbuf, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    MessageLoader_Free(messageLoader);
    Strbuf_Free(strbuf);

    FieldMenu_PrintMoneyToWindow(fieldSystem, window);

    return window;
}

void FieldMenu_DeleteMoneyWindow(Window *window)
{
    Window_EraseStandardFrame(window, FALSE);
    Windows_Delete(window, 1);
}

void FieldMenu_PrintMoneyToWindow(FieldSystem *fieldSystem, Window *window)
{
    Window_FillRectWithColor(window, 15, 0, GLYPH_ROW_HEIGHT, MONEY_WINDOW_WIDTH * TILE_SIDELENGTH, MONEY_WINDOW_HEIGHT * TILE_SIDELENGTH - GLYPH_ROW_HEIGHT);

    MessageLoader *messageLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0543, HEAP_ID_FIELD1);
    StringTemplate *stringTemplate = StringTemplate_Default(HEAP_ID_FIELD1);
    Strbuf *strbuf = Strbuf_Init(16, HEAP_ID_FIELD1);
    Strbuf *fmtString = MessageLoader_GetNewStrbuf(messageLoader, pl_msg_00000543_00019);
    u32 money = TrainerInfo_Money(SaveData_GetTrainerInfo(fieldSystem->saveData));

    StringTemplate_SetNumber(stringTemplate, 0, money, 6, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    StringTemplate_Format(stringTemplate, strbuf, fmtString);

    u32 printerOffset = (MONEY_WINDOW_WIDTH * TILE_SIDELENGTH) - Font_CalcStrbufWidth(FONT_SYSTEM, strbuf, 0);

    Text_AddPrinterWithParams(window, FONT_SYSTEM, strbuf, printerOffset, GLYPH_ROW_HEIGHT, TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(fmtString);
    Strbuf_Free(strbuf);
    StringTemplate_Free(stringTemplate);
    MessageLoader_Free(messageLoader);
    Window_ScheduleCopyToVRAM(window);
}

Window *FieldMenu_DrawCoinWindow(FieldSystem *fieldSystem, u8 tilemapLeft, u8 tilemapTop)
{
    Window *window = Window_New(HEAP_ID_FIELD1, 1);

    Window_Add(fieldSystem->bgConfig, window, BG_LAYER_MAIN_3, tilemapLeft, tilemapTop, COIN_BP_WINDOW_WIDTH, COIN_BP_WINDOW_HEIGHT, PLTT_13, (1 + (10 * 4)));
    LoadStandardWindowGraphics(fieldSystem->bgConfig, BG_LAYER_MAIN_3, 1024 - (18 + 12) - 9, PLTT_11, STANDARD_WINDOW_SYSTEM, HEAP_ID_FIELD1);
    Window_DrawStandardFrame(window, TRUE, 1024 - (18 + 12) - 9, PLTT_11);

    FieldMenu_PrintCoinsToWindow(fieldSystem, window);

    return window;
}

void FieldMenu_DeleteSpecialCurrencyWindow(Window *window)
{
    Window_EraseStandardFrame(window, FALSE);
    Windows_Delete(window, 1);
}

void FieldMenu_PrintCoinsToWindow(FieldSystem *fieldSystem, Window *window)
{
    Window_FillTilemap(window, 15);

    MessageLoader *messageLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MENU_ENTRIES, HEAP_ID_FIELD1);
    StringTemplate *stringTemplate = StringTemplate_Default(HEAP_ID_FIELD1);
    Strbuf *strbuf = Strbuf_Init(16, HEAP_ID_FIELD1);
    Strbuf *fmtString = MessageLoader_GetNewStrbuf(messageLoader, pl_msg_00000361_00197);
    u32 coins = Coins_GetValue(SaveData_GetCoins(fieldSystem->saveData));

    StringTemplate_SetNumber(stringTemplate, 0, coins, 5, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    StringTemplate_Format(stringTemplate, strbuf, fmtString);

    u32 printerOffset = (COIN_BP_WINDOW_WIDTH * TILE_SIDELENGTH) - Font_CalcStrbufWidth(FONT_SYSTEM, strbuf, 0);

    Text_AddPrinterWithParams(window, FONT_SYSTEM, strbuf, printerOffset, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(fmtString);
    Strbuf_Free(strbuf);
    StringTemplate_Free(stringTemplate);
    MessageLoader_Free(messageLoader);
    Window_ScheduleCopyToVRAM(window);
}

Window *FieldMenu_DrawBPWindow(FieldSystem *fieldSystem, u8 tilemapLeft, u8 tilemapTop)
{
    Window *window = Window_New(HEAP_ID_FIELD1, 1);

    Window_Add(fieldSystem->bgConfig, window, BG_LAYER_MAIN_3, tilemapLeft, tilemapTop, COIN_BP_WINDOW_WIDTH, COIN_BP_WINDOW_HEIGHT, PLTT_13, (1 + (10 * 4)));
    LoadStandardWindowGraphics(fieldSystem->bgConfig, BG_LAYER_MAIN_3, 1024 - (18 + 12) - 9, PLTT_11, STANDARD_WINDOW_SYSTEM, HEAP_ID_FIELD1);
    Window_DrawStandardFrame(window, TRUE, 1024 - (18 + 12) - 9, PLTT_11);

    FieldMenu_PrintBPToWindow(fieldSystem, window);

    return window;
}

void FieldMenu_PrintBPToWindow(FieldSystem *fieldSystem, Window *window)
{
    Window_FillTilemap(window, 15);

    MessageLoader *messageLaoder = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MENU_ENTRIES, HEAP_ID_FIELD1);
    StringTemplate *stringTemplate = StringTemplate_Default(HEAP_ID_FIELD1);
    Strbuf *strbuf = Strbuf_Init(16, HEAP_ID_FIELD1);
    Strbuf *fmtString = MessageLoader_GetNewStrbuf(messageLaoder, pl_msg_00000361_00230);
    u16 battlePoints = sub_0202D230(sub_0202D750(fieldSystem->saveData), 0, 0);

    StringTemplate_SetNumber(stringTemplate, 0, battlePoints, 5, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    StringTemplate_Format(stringTemplate, strbuf, fmtString);

    u32 printerOffset = (COIN_BP_WINDOW_WIDTH * TILE_SIDELENGTH) - Font_CalcStrbufWidth(FONT_SYSTEM, strbuf, 0);

    Text_AddPrinterWithParams(window, FONT_SYSTEM, strbuf, printerOffset, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(fmtString);
    Strbuf_Free(strbuf);
    StringTemplate_Free(stringTemplate);
    MessageLoader_Free(messageLaoder);
    Window_ScheduleCopyToVRAM(window);
}

FieldMenuManager *FieldMenuManager_NewMoveTutorCostWindow(FieldSystem *fieldSystem, u8 anchorX, u8 anchorY, u16 *selectedOptionPtr, StringTemplate *stringTemplate, u8 redCost, u8 blueCost, u8 yellowCost, u8 greenCost)
{
    FieldMenuManager *menuManager = FieldMenuManager_New(fieldSystem, anchorX, anchorY, 0, FALSE, selectedOptionPtr, stringTemplate, NULL, NULL);

    Window_Add(menuManager->fieldSystem->bgConfig, &menuManager->menuWindow, BG_LAYER_MAIN_3, menuManager->anchorX, menuManager->anchorY, SHARD_COST_WINDOW_WIDTH, SHARD_COST_WINDOW_HEIGHT, PLTT_13, ((1 + (10 * 4)) + (10 * 2)));
    LoadStandardWindowGraphics(menuManager->fieldSystem->bgConfig, BG_LAYER_MAIN_3, 1024 - (18 + 12) - 9, PLTT_11, STANDARD_WINDOW_SYSTEM, HEAP_ID_FIELD1);
    Window_DrawStandardFrame(&menuManager->menuWindow, TRUE, 1024 - (18 + 12) - 9, PLTT_11);
    Window_FillRectWithColor(&menuManager->menuWindow, 15, 0, 0, (SHARD_COST_WINDOW_WIDTH * TILE_SIDELENGTH), (SHARD_COST_WINDOW_HEIGHT * TILE_SIDELENGTH));

    FieldMenuManager_PrintString(menuManager, pl_msg_00000361_00273, 0, 0);
    StringTemplate_SetNumber(stringTemplate, 0, redCost, 3, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    FieldMenuManager_PrintString(menuManager, pl_msg_00000361_00277, 0, 1 * GLYPH_ROW_HEIGHT);

    FieldMenuManager_PrintString(menuManager, pl_msg_00000361_00274, 0, 2 * GLYPH_ROW_HEIGHT);
    StringTemplate_SetNumber(stringTemplate, 0, blueCost, 3, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    FieldMenuManager_PrintString(menuManager, pl_msg_00000361_00277, 0, 3 * GLYPH_ROW_HEIGHT);

    FieldMenuManager_PrintString(menuManager, pl_msg_00000361_00275, 0, 4 * GLYPH_ROW_HEIGHT);
    StringTemplate_SetNumber(stringTemplate, 0, yellowCost, 3, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    FieldMenuManager_PrintString(menuManager, pl_msg_00000361_00277, 0, 5 * GLYPH_ROW_HEIGHT);

    FieldMenuManager_PrintString(menuManager, pl_msg_00000361_00276, 0, 6 * GLYPH_ROW_HEIGHT);
    StringTemplate_SetNumber(stringTemplate, 0, greenCost, 3, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    FieldMenuManager_PrintString(menuManager, pl_msg_00000361_00277, 0, 7 * GLYPH_ROW_HEIGHT);

    menuManager->menuTemplate.window = &menuManager->menuWindow;
    Window_CopyToVRAM(&menuManager->menuWindow);

    return menuManager;
}

void FieldMenuManager_DeleteMoveTutorCost(FieldMenuManager *menuManager)
{
    Window_EraseStandardFrame(menuManager->menuTemplate.window, FALSE);
    Window_Remove(menuManager->menuTemplate.window);

    for (int i = 0; i < FIELD_MENU_ENTRIES_MAX; i++) {
        Strbuf_Free(menuManager->choicesStringsBuffers[i]);
    }

    if (menuManager->freeMsgLoaderOnDelete == TRUE) {
        MessageLoader_Free(menuManager->messageLoader);
    }

    Heap_Free(menuManager);
}

void FieldMenuManager_SetHorizontalAnchor(FieldMenuManager *menuManager, BOOL anchorRight)
{
    menuManager->anchorRight = anchorRight;
}

void FieldMenuManager_SetVerticalAnchor(FieldMenuManager *menuManager, BOOL anchorBottom)
{
    menuManager->anchorBottom = anchorBottom;
}
