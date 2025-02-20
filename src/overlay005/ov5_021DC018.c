#include "overlay005/ov5_021DC018.h"

#include <nitro.h>
#include <string.h>

#include "constants/narc.h"
#include "generated/map_headers.h"
#include "generated/sdat.h"
#include "generated/text_banks.h"

#include "field/field_system.h"
#include "overlay005/struct_ov5_021DC1A4_decl.h"

#include "bg_window.h"
#include "coins.h"
#include "font.h"
#include "heap.h"
#include "list_menu.h"
#include "menu.h"
#include "message.h"
#include "render_window.h"
#include "save_player.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_02005474.h"
#include "unk_0200F174.h"
#include "unk_0202D05C.h"

#include "res/text/bank/common_strings_2.h"
#include "res/text/bank/unk_0543.h"

#define GENERIC_MENU_ENTRIES_MAX 28
#define NO_ALT_TEXT              0xff

struct GenericMenuManager_t {
    FieldSystem *fieldSystem;
    SysTask *sysTask;
    Window menuWindow;
    Window *parentWindow;
    Strbuf *choicesStringsBuffers[GENERIC_MENU_ENTRIES_MAX];
    MessageLoader *messageLoader;
    StringTemplate *stringTemplate;
    u8 sysTaskDelay;
    u8 unk_95;
    u8 initialCursorPos;
    u8 canExitWithB : 1;
    u8 freeMsgLoaderOnDelete : 1;
    u8 unk_97_2 : 4;
    u8 horizontalAnchor : 1;
    u8 verticalAnchor : 1;
    u8 anchorX;
    u8 anchorY;
    u8 unk_9A;
    u8 optionsCount;
    u16 *unk_9C;
    u16 *selectedOptionPtr;
    u16 *listMenuListOffsetPtr;
    u16 *listMenuCursorPosPtr;
    MenuTemplate menuTemplate;
    Menu *menu;
    StringList menuChoicesStrings[GENERIC_MENU_ENTRIES_MAX];
    ListMenuTemplate listMenuTemplate;
    ListMenu *listMenu;
    u16 unk_1C0;
    u16 listMenuAltTextIndex;
    StringList listMenuChoicesStrings[GENERIC_MENU_ENTRIES_MAX];
    u16 choicesAltTextStringIDs[GENERIC_MENU_ENTRIES_MAX];
    u16 cursorPos;
};

static void ov5_021DC018(FieldSystem *fieldSystem, GenericMenuManager *menuManager, u8 anchorX, u8 anchorY, u8 initialCursorPos, u8 canExitWithB, u16 *selectedOptionPtr, StringTemplate *stringTemplate, Window *parentWindow, MessageLoader *messageLoader);
static void ov5_021DCE64(GenericMenuManager *menuManager, u8 columnsCount, u8 rowsCount);
static void ov5_021DC290(GenericMenuManager *menuManager, u32 entryID, u32 index);
static u32 CalcMenuWidth(GenericMenuManager *menuManager);
static void ov5_021DC33C(GenericMenuManager *menuManager);
static void ov5_021DC3B0(SysTask *sysTask, void *param);
static void ov5_021DC530(GenericMenuManager *menuManager, u32 windowWidth);
static void ov5_021DC708(GenericMenuManager *menuManager, u32 entryID, u32 altTextStringID, u32 entryIndex);
static u32 CalcListMenuWidth(GenericMenuManager *menuManager);
static void GenericMenuManager_InitListMenuTemplate(GenericMenuManager *menuManager);
static void ListMenuPrintCallback(ListMenu *listMenu, u32 index, u8 yOffset);
static void ListMenuCursorCallback(ListMenu *listMenu, u32 index, u8 onInit);
static void ListMenuSysTaskCallback(SysTask *sysTask, void *param);
static void ov5_021DCA28(GenericMenuManager *menuManager);
static void ov5_021DCA90(GenericMenuManager *menuManager, u16 entryID, u32 printerDelay);
static void ov5_021DCAF4(GenericMenuManager *menuManager);
static void ov5_021DCC64(SysTask *param0, void *param1);
static void ov5_021DCC00(GenericMenuManager *menuManager, u16 entryID, u8 xOffset, u8 yOffset);

static inline u32 PixelToTiles(u32 length)
{
    if ((length % 8) == 0) {
        return length / 8;
    } else {
        return (length / 8) + 1;
    }
}

static void ov5_021DC018(FieldSystem *fieldSystem, GenericMenuManager *menuManager, u8 anchorX, u8 anchorY, u8 initialCursorPos, u8 canExitWithB, u16 *selectedOptionPtr, StringTemplate *stringTemplate, Window *parentWindow, MessageLoader *messageLoader)
{
    int i;

    if (messageLoader == NULL) {
        menuManager->messageLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_COMMON_STRINGS_2, HEAP_ID_FIELD);
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
    menuManager->horizontalAnchor = FALSE;
    menuManager->verticalAnchor = FALSE;
    menuManager->anchorX = anchorX;
    menuManager->anchorY = anchorY;
    menuManager->optionsCount = 0;
    menuManager->parentWindow = parentWindow;
    menuManager->sysTaskDelay = 3;
    menuManager->cursorPos = initialCursorPos;

    for (i = 0; i < GENERIC_MENU_ENTRIES_MAX; i++) {
        menuManager->menuChoicesStrings[i].entry = NULL;
        menuManager->menuChoicesStrings[i].index = 0;
    }

    for (i = 0; i < GENERIC_MENU_ENTRIES_MAX; i++) {
        menuManager->listMenuChoicesStrings[i].entry = NULL;
        menuManager->listMenuChoicesStrings[i].index = 0;
        menuManager->choicesAltTextStringIDs[i] = NO_ALT_TEXT;
    }

    for (i = 0; i < GENERIC_MENU_ENTRIES_MAX; i++) {
        menuManager->choicesStringsBuffers[i] = Strbuf_Init((40 * 2), HEAP_ID_FIELD);
    }

    *menuManager->selectedOptionPtr = 0xeeee;
}

GenericMenuManager *ov5_021DC150(FieldSystem *fieldSystem, u8 anchorX, u8 anchorY, u8 initialCursorPos, u8 canExitWithB, u16 *selectedOptionPtr, StringTemplate *stringTemplate, Window *parentWindow, MessageLoader *messageLoader)
{
    GenericMenuManager *menuManager = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(GenericMenuManager));

    if (menuManager == NULL) {
        return NULL;
    }

    memset(menuManager, 0, sizeof(GenericMenuManager));
    ov5_021DC018(fieldSystem, menuManager, anchorX, anchorY, initialCursorPos, canExitWithB, selectedOptionPtr, stringTemplate, parentWindow, messageLoader);

    return menuManager;
}

void ov5_021DC1A4(GenericMenuManager *menuManager, u32 entryID, u32 index) // Add Menu entry
{
    ov5_021DC290(menuManager, entryID, index);
}

void ov5_021DC1AC(GenericMenuManager *menuManager)
{
    u32 menuWidth = CalcMenuWidth(menuManager);

    menuWidth = PixelToTiles(menuWidth);

    if (menuManager->horizontalAnchor) {
        menuManager->anchorX -= menuWidth;
    }

    if (menuManager->verticalAnchor) {
        menuManager->anchorY -= menuManager->optionsCount * 2;
    }

    Window_Add(menuManager->fieldSystem->bgConfig, &menuManager->menuWindow, 3, menuManager->anchorX, menuManager->anchorY, menuWidth, menuManager->optionsCount * 2, 13, ((1 + (10 * 4)) + (10 * 2)));
    LoadStandardWindowGraphics(menuManager->fieldSystem->bgConfig, 3, 1024 - (18 + 12) - 9, 11, 0, 4);
    Window_DrawStandardFrame(&menuManager->menuWindow, 1, 1024 - (18 + 12) - 9, 11);

    ov5_021DC33C(menuManager);

    menuManager->menu = Menu_NewSimple(&menuManager->menuTemplate, menuManager->initialCursorPos, HEAP_ID_FIELD);
    menuManager->sysTask = SysTask_Start(ov5_021DC3B0, menuManager, 0);
}

static void ov5_021DC290(GenericMenuManager *menuManager, u32 entryID, u32 index)
{
    {
        Strbuf *entryBuf = Strbuf_Init((40 * 2), HEAP_ID_FIELD);

        MessageLoader_GetStrbuf(menuManager->messageLoader, entryID, entryBuf);
        StringTemplate_Format(menuManager->stringTemplate, menuManager->choicesStringsBuffers[menuManager->optionsCount], entryBuf);
        menuManager->menuChoicesStrings[menuManager->optionsCount].entry = (const void *)menuManager->choicesStringsBuffers[menuManager->optionsCount];
        Strbuf_Free(entryBuf);
    }

    menuManager->menuChoicesStrings[menuManager->optionsCount].index = index;
    menuManager->optionsCount++;
}

static u32 CalcMenuWidth(GenericMenuManager *menuManager)
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

    return maxWidth + 12;
}

static void ov5_021DC33C(GenericMenuManager *menuManager)
{
    menuManager->menuTemplate.choices = menuManager->menuChoicesStrings;
    menuManager->menuTemplate.window = &menuManager->menuWindow;
    menuManager->menuTemplate.fontID = FONT_SYSTEM;
    menuManager->menuTemplate.xSize = 1;
    menuManager->menuTemplate.ySize = menuManager->optionsCount;
    menuManager->menuTemplate.lineSpacing = 0;
    menuManager->menuTemplate.suppressCursor = FALSE;

    if (menuManager->optionsCount >= 4) {
        menuManager->menuTemplate.loopAround = TRUE;
    } else {
        menuManager->menuTemplate.loopAround = FALSE;
    }
}

static void ov5_021DC3B0(SysTask *sysTask, void *param)
{
    GenericMenuManager *menuManager = (GenericMenuManager *)param;

    if (menuManager->sysTaskDelay != 0) {
        menuManager->sysTaskDelay--;
        return;
    }

    if (IsScreenTransitionDone() == FALSE) {
        return;
    }

    u32 selectedEntry = Menu_ProcessInput(menuManager->menu);

    switch (selectedEntry) {
    case MENU_NOTHING_CHOSEN:
        break;
    case MENU_CANCELED:
        if (menuManager->canExitWithB == TRUE) {
            *menuManager->selectedOptionPtr = MENU_CANCELED;
            ov5_021DC424(menuManager);
        }
        break;
    default:
        *menuManager->selectedOptionPtr = selectedEntry;
        ov5_021DC424(menuManager);
        break;
    }
}

void ov5_021DC424(GenericMenuManager *menuManager)
{
    Sound_PlayEffect(SEQ_SE_CONFIRM);
    Menu_Free(menuManager->menu, NULL);
    Window_EraseStandardFrame(menuManager->menuTemplate.window, FALSE);
    Window_Remove(menuManager->menuTemplate.window);

    for (int i = 0; i < GENERIC_MENU_ENTRIES_MAX; i++) {
        Strbuf_Free(menuManager->choicesStringsBuffers[i]);
    }

    if (menuManager->freeMsgLoaderOnDelete == TRUE) {
        MessageLoader_Free(menuManager->messageLoader);
    }

    SysTask_Done(menuManager->sysTask);
    Heap_FreeToHeap(menuManager);
}

GenericMenuManager *ov5_021DC48C(FieldSystem *fieldSystem, u8 anchorX, u8 anchorY, u8 initialCursorPos, u8 canExitWithB, u16 *selectedOptionPtr, StringTemplate *stringTemplate, Window *parentWindow, MessageLoader *messageLoader)
{
    return ov5_021DC150(fieldSystem, anchorX, anchorY, initialCursorPos, canExitWithB, selectedOptionPtr, stringTemplate, parentWindow, messageLoader);
}

void ov5_021DC4B0(GenericMenuManager *menuManager, u32 entryID, u32 altTextStringID, u32 entryIndex) // Add ListMenu Entry
{
    ov5_021DC708(menuManager, entryID, altTextStringID, entryIndex);
}

void ov5_021DC4B8(GenericMenuManager *menuManager)
{
    u32 menuWidth = CalcListMenuWidth(menuManager);

    menuWidth = PixelToTiles(menuWidth);

    if (menuManager->horizontalAnchor) {
        menuManager->anchorX -= menuWidth;
    }

    if (menuManager->verticalAnchor) {
        if (menuManager->optionsCount > 8) {
            menuManager->anchorY -= 8 * 2;
        } else {
            menuManager->anchorY -= menuManager->optionsCount * 2;
        }
    }

    ov5_021DC530(menuManager, menuWidth);
}

void ov5_021DC528(GenericMenuManager *menuManager, u16 windowWidth)
{
    ov5_021DC530(menuManager, windowWidth);
}

static void ov5_021DC530(GenericMenuManager *menuManager, u32 windowWidth)
{
    if (menuManager->optionsCount > 8) {
        Window_Add(menuManager->fieldSystem->bgConfig, &menuManager->menuWindow, 3, menuManager->anchorX, menuManager->anchorY, windowWidth, 8 * 2, 13, ((1 + (10 * 4)) + (10 * 2)));
    } else {
        Window_Add(menuManager->fieldSystem->bgConfig, &menuManager->menuWindow, 3, menuManager->anchorX, menuManager->anchorY, windowWidth, menuManager->optionsCount * 2, 13, ((1 + (10 * 4)) + (10 * 2)));
    }

    LoadStandardWindowGraphics(menuManager->fieldSystem->bgConfig, 3, 1024 - (18 + 12) - 9, 11, 0, HEAP_ID_FIELD);
    Window_DrawStandardFrame(&menuManager->menuWindow, TRUE, 1024 - (18 + 12) - 9, 11);

    GenericMenuManager_InitListMenuTemplate(menuManager);
    menuManager->listMenu = ListMenu_New((const ListMenuTemplate *)&menuManager->listMenuTemplate, 0, menuManager->initialCursorPos, HEAP_ID_FIELD);

    ov5_021DCAF4(menuManager);
    menuManager->sysTask = SysTask_Start(ListMenuSysTaskCallback, menuManager, 0);
}

void ov5_021DC600(GenericMenuManager *menuManager, u16 *listOffsetPtr, u16 *cursorPosPtr)
{
    u32 menuWidth = CalcListMenuWidth(menuManager);

    menuWidth = PixelToTiles(menuWidth);

    if (menuManager->optionsCount > 8) {
        Window_Add(menuManager->fieldSystem->bgConfig, &menuManager->menuWindow, 3, menuManager->anchorX, menuManager->anchorY, menuWidth, 8 * 2, 13, ((1 + (10 * 4)) + (10 * 2)));
    } else {
        Window_Add(menuManager->fieldSystem->bgConfig, &menuManager->menuWindow, 3, menuManager->anchorX, menuManager->anchorY, menuWidth, menuManager->optionsCount * 2, 13, ((1 + (10 * 4)) + (10 * 2)));
    }

    LoadStandardWindowGraphics(menuManager->fieldSystem->bgConfig, 3, 1024 - (18 + 12) - 9, 11, 0, 4);
    Window_DrawStandardFrame(&menuManager->menuWindow, TRUE, 1024 - (18 + 12) - 9, 11);

    GenericMenuManager_InitListMenuTemplate(menuManager);

    menuManager->listMenuListOffsetPtr = listOffsetPtr;
    menuManager->listMenuCursorPosPtr = cursorPosPtr;
    menuManager->cursorPos = ((*menuManager->listMenuListOffsetPtr) + (*menuManager->listMenuCursorPosPtr));
    menuManager->listMenu = ListMenu_New((const ListMenuTemplate *)&menuManager->listMenuTemplate, *listOffsetPtr, *cursorPosPtr, HEAP_ID_FIELD);

    ov5_021DCAF4(menuManager);

    menuManager->sysTask = SysTask_Start(ListMenuSysTaskCallback, menuManager, 0);
}

static void ov5_021DC708(GenericMenuManager *menuManager, u32 entryID, u32 altTextStringID, u32 entryIndex)
{
    {
        Strbuf *fmtString = Strbuf_Init((40 * 2), HEAP_ID_FIELD);

        MessageLoader_GetStrbuf(menuManager->messageLoader, entryID, fmtString);
        StringTemplate_Format(menuManager->stringTemplate, menuManager->choicesStringsBuffers[menuManager->optionsCount], fmtString);
        menuManager->listMenuChoicesStrings[menuManager->optionsCount].entry = (const void *)menuManager->choicesStringsBuffers[menuManager->optionsCount];
        Strbuf_Free(fmtString);
    }

    if (entryIndex == 0xfa) {
        menuManager->listMenuChoicesStrings[menuManager->optionsCount].index = 0xfffffffd;
    } else {
        menuManager->listMenuChoicesStrings[menuManager->optionsCount].index = entryIndex;
    }

    menuManager->choicesAltTextStringIDs[menuManager->optionsCount] = altTextStringID;
    menuManager->optionsCount++;
}

static u32 CalcListMenuWidth(GenericMenuManager *menuManager)
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

    return maxWidth + 12;
}

static void GenericMenuManager_InitListMenuTemplate(GenericMenuManager *menuManager)
{
    menuManager->listMenuTemplate.choices = menuManager->listMenuChoicesStrings;
    menuManager->listMenuTemplate.cursorCallback = ListMenuCursorCallback;
    menuManager->listMenuTemplate.printCallback = ListMenuPrintCallback;
    menuManager->listMenuTemplate.window = &menuManager->menuWindow;
    menuManager->listMenuTemplate.count = menuManager->optionsCount;
    menuManager->listMenuTemplate.maxDisplay = 8;
    menuManager->listMenuTemplate.headerXOffset = 1;
    menuManager->listMenuTemplate.textXOffset = 12;
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
    if (index == 0xfffffffd) {
        ListMenu_SetAltTextColors(listMenu, 3, 15, 4);
    } else {
        ListMenu_SetAltTextColors(listMenu, 1, 15, 2);
    }
}

static void ListMenuCursorCallback(ListMenu *listMenu, u32 index, u8 onInit)
{
    u16 v2 = 0;
    u16 v3 = 0;
    GenericMenuManager *v4 = (GenericMenuManager *)ListMenu_GetAttribute(listMenu, LIST_MENU_PARENT);

    ListMenu_GetListAndCursorPos(listMenu, &v2, &v3);

    if ((v4->listMenuListOffsetPtr != NULL) && (v4->listMenuCursorPosPtr != NULL)) {
        *v4->listMenuListOffsetPtr = v2;
        *v4->listMenuCursorPosPtr = v3;
    }
}

static void ListMenuSysTaskCallback(SysTask *sysTask, void *param)
{
    GenericMenuManager *menuManager = (GenericMenuManager *)param;

    if (menuManager->sysTaskDelay != 0) {
        menuManager->sysTaskDelay--;
        return;
    }

    if (IsScreenTransitionDone() == FALSE) {
        return;
    }

    u32 selectedOption = ListMenu_ProcessInput(menuManager->listMenu);
    u16 cursorPos = menuManager->cursorPos;

    ListMenu_CalcTrueCursorPos(menuManager->listMenu, &menuManager->cursorPos);

    if (cursorPos != menuManager->cursorPos) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    if ((gSystem.pressedKeysRepeatable & PAD_KEY_UP) || (gSystem.pressedKeysRepeatable & PAD_KEY_DOWN) || (gSystem.pressedKeysRepeatable & PAD_KEY_LEFT) || (gSystem.pressedKeysRepeatable & PAD_KEY_RIGHT)) {
        ov5_021DCAF4(menuManager);
    }

    switch (selectedOption) {
    case LIST_NOTHING_CHOSEN:
        break;
    case LIST_CANCEL:
        if (menuManager->canExitWithB == TRUE) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            *menuManager->selectedOptionPtr = LIST_CANCEL;
            ov5_021DCA28(param);
        }
        break;
    default:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        *menuManager->selectedOptionPtr = selectedOption;
        ov5_021DCA28(param);
        break;
    }
}

static void ov5_021DCA28(GenericMenuManager *menuManager)
{
    Sound_PlayEffect(SEQ_SE_CONFIRM);
    ListMenu_Free(menuManager->listMenu, NULL, NULL);
    Window_EraseStandardFrame(menuManager->listMenuTemplate.window, FALSE);
    Window_Remove(&menuManager->menuWindow);

    for (int i = 0; i < GENERIC_MENU_ENTRIES_MAX; i++) {
        Strbuf_Free(menuManager->choicesStringsBuffers[i]);
    }

    if (menuManager->freeMsgLoaderOnDelete == TRUE) {
        MessageLoader_Free(menuManager->messageLoader);
    }

    SysTask_Done(menuManager->sysTask);
    Heap_FreeToHeap(menuManager);
}

static void ov5_021DCA90(GenericMenuManager *menuManager, u16 entryID, u32 printerDelay)
{
    Strbuf *v0 = Strbuf_Init((40 * 2), HEAP_ID_FIELD);
    Strbuf *v1 = Strbuf_Init((40 * 2), HEAP_ID_FIELD);

    Window_FillTilemap(menuManager->parentWindow, 15);
    MessageLoader_GetStrbuf(menuManager->messageLoader, entryID, v0);
    StringTemplate_Format(menuManager->stringTemplate, v1, v0);
    Text_AddPrinterWithParams(menuManager->parentWindow, FONT_MESSAGE, v1, 0, 0, printerDelay, NULL);
    Strbuf_Free(v0);
    Strbuf_Free(v1);
}

static void ov5_021DCAF4(GenericMenuManager *menuManager)
{
    ListMenu_CalcTrueCursorPos(menuManager->listMenu, &menuManager->listMenuAltTextIndex);

    if (menuManager->choicesAltTextStringIDs[menuManager->listMenuAltTextIndex] != NO_ALT_TEXT) {
        ov5_021DCA90(menuManager, menuManager->choicesAltTextStringIDs[menuManager->listMenuAltTextIndex], 0);
    }
}

void ov5_021DCB24(FieldSystem *fieldSystem, u8 tilemapLeft, u8 tilemapTop, u16 *selectedOptionPtr, StringTemplate *stringTemplate, u16 unused)
{
    u32 width; // forward declaration required to match

    GenericMenuManager *menuManager = ov5_021DC150(fieldSystem, tilemapLeft, tilemapTop, 0, 0, selectedOptionPtr, stringTemplate, NULL, NULL);
    width = 8 * Font_GetAttribute(FONT_SYSTEM, FONTATTR_MAX_LETTER_WIDTH);

    if ((width % 8) == 0) {
        width = (width / 8);
    } else {
        width = (width / 8) + 1;
    }

    Window_Add(menuManager->fieldSystem->bgConfig, &menuManager->menuWindow, 3, menuManager->anchorX, menuManager->anchorY, width, 4, 13, ((1 + (10 * 4)) + (10 * 2)) + (16 * 10));
    LoadStandardWindowGraphics(menuManager->fieldSystem->bgConfig, 3, 1024 - (18 + 12) - 9, 11, 0, 4);
    Window_DrawStandardFrame(&menuManager->menuWindow, TRUE, 1024 - (18 + 12) - 9, 11);
    Window_FillRectWithColor(&menuManager->menuWindow, 15, 0, 0, (width * 8), (4 * 8));

    ov5_021DCC00(menuManager, pl_msg_00000361_00015, 0, 0);
    ov5_021DCC00(menuManager, pl_msg_00000361_00016, (8 * 4), 16);

    menuManager->menuTemplate.window = &menuManager->menuWindow;
    Window_CopyToVRAM(&menuManager->menuWindow);
    menuManager->sysTask = SysTask_Start(ov5_021DCC64, menuManager, 0);
}

static void ov5_021DCC00(GenericMenuManager *menuManager, u16 entryID, u8 xOffset, u8 yOffset)
{
    Strbuf *fmtString = Strbuf_Init((40 * 2), HEAP_ID_FIELD);
    Strbuf *formatted = Strbuf_Init((40 * 2), HEAP_ID_FIELD);

    MessageLoader_GetStrbuf(menuManager->messageLoader, entryID, fmtString);
    StringTemplate_Format(menuManager->stringTemplate, formatted, fmtString);
    Text_AddPrinterWithParams(&menuManager->menuWindow, FONT_SYSTEM, formatted, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(fmtString);
    Strbuf_Free(formatted);
}

static void ov5_021DCC64(SysTask *sysTask, void *param)
{
    GenericMenuManager *menuManager = (GenericMenuManager *)param;

    if (*menuManager->selectedOptionPtr == 0xffff) {
        Window_EraseStandardFrame(menuManager->menuTemplate.window, FALSE);
        Window_Remove(menuManager->menuTemplate.window);

        for (int i = 0; i < GENERIC_MENU_ENTRIES_MAX; i++) {
            Strbuf_Free(menuManager->choicesStringsBuffers[i]);
        }

        if (menuManager->freeMsgLoaderOnDelete == TRUE) {
            MessageLoader_Free(menuManager->messageLoader);
        }

        SysTask_Done(menuManager->sysTask);
        Heap_FreeToHeap(menuManager);
    }
}

u16 ov5_021DCCC8(int location)
{
    u16 v0;

    switch (location) {
    case MAP_HEADER_HEARTHOME_CITY_SOUTHEAST_HOUSE_1F:
        v0 = 1;
        break;
    case MAP_HEADER_HEARTHOME_CITY_SOUTHEAST_HOUSE_2F:
        v0 = 0;
        break;
    case MAP_HEADER_VISTA_LIGHTHOUSE:
        v0 = 0;
        break;
    case MAP_HEADER_SUNYSHORE_CITY:
        v0 = 1;
        break;
    case MAP_HEADER_HEARTHOME_CITY_NORTHEAST_HOUSE_1F:
        v0 = 1;
        break;
    case MAP_HEADER_HEARTHOME_CITY_NORTHEAST_HOUSE_2F:
        v0 = 0;
        break;
    case MAP_HEADER_RESORT_AREA_RIBBON_SYNDICATE_1F:
        v0 = 1;
        break;
    case MAP_HEADER_RESORT_AREA_RIBBON_SYNDICATE_2F:
        v0 = 0;
        break;
    case MAP_HEADER_VEILSTONE_STORE_1F:
        v0 = 4;
        break;
    case MAP_HEADER_VEILSTONE_STORE_2F:
        v0 = 3;
        break;
    case MAP_HEADER_VEILSTONE_STORE_3F:
        v0 = 2;
        break;
    case MAP_HEADER_VEILSTONE_STORE_4F:
        v0 = 1;
        break;
    case MAP_HEADER_VEILSTONE_STORE_5F:
        v0 = 0;
        break;
    case MAP_HEADER_VEILSTONE_STORE_B1F:
        v0 = 5;
        break;
    case MAP_HEADER_JUBILIFE_TV_1F:
        v0 = 3;
        break;
    case MAP_HEADER_JUBILIFE_TV_2F:
        v0 = 2;
        break;
    case MAP_HEADER_JUBILIFE_TV_3F:
        v0 = 1;
        break;
    case MAP_HEADER_JUBILIFE_TV_4F:
        v0 = 0;
        break;
    default:
        v0 = 1;
    }

    return v0;
}

void ov5_021DCD94(GenericMenuManager *menuManager, u8 columnsCount)
{
    u32 menuWidth = CalcMenuWidth(menuManager);

    menuWidth = PixelToTiles(menuWidth);

    u8 rowsCount = (menuManager->optionsCount / columnsCount);

    if ((menuManager->optionsCount % columnsCount) != 0) {
        rowsCount++;
    }

    Window_Add(menuManager->fieldSystem->bgConfig, &menuManager->menuWindow, 3, menuManager->anchorX, menuManager->anchorY, (menuWidth * columnsCount), rowsCount * 2, 13, ((1 + (10 * 4)) + (10 * 2)));
    LoadStandardWindowGraphics(menuManager->fieldSystem->bgConfig, 3, 1024 - (18 + 12) - 9, 11, 0, HEAP_ID_FIELD);
    Window_DrawStandardFrame(&menuManager->menuWindow, TRUE, 1024 - (18 + 12) - 9, 11);

    ov5_021DCE64(menuManager, columnsCount, rowsCount);

    menuManager->menu = Menu_NewSimple(&menuManager->menuTemplate, menuManager->initialCursorPos, HEAP_ID_FIELD);
    menuManager->sysTask = SysTask_Start(ov5_021DC3B0, menuManager, 0);
}

static void ov5_021DCE64(GenericMenuManager *menuManager, u8 columnsCount, u8 rowsCount)
{
    menuManager->menuTemplate.choices = menuManager->menuChoicesStrings;
    menuManager->menuTemplate.window = &menuManager->menuWindow;
    menuManager->menuTemplate.fontID = FONT_SYSTEM;
    menuManager->menuTemplate.xSize = columnsCount;
    menuManager->menuTemplate.ySize = rowsCount;
    menuManager->menuTemplate.lineSpacing = 0;
    menuManager->menuTemplate.suppressCursor = FALSE;
}

Window *ov5_021DCEB0(FieldSystem *fieldSystem, u8 tilemapTop, u8 tilemapLeft)
{
    Window *window = Window_New(HEAP_ID_FIELD, 1);

    Window_Add(fieldSystem->bgConfig, window, 3, tilemapTop, tilemapLeft, 10, 4, 13, 1);
    LoadStandardWindowGraphics(fieldSystem->bgConfig, 3, 1024 - (18 + 12) - 9, 11, 0, HEAP_ID_FIELD);
    Window_DrawStandardFrame(window, TRUE, 1024 - (18 + 12) - 9, 11);
    Window_FillTilemap(window, 15);

    {
        MessageLoader *messageLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0543, HEAP_ID_FIELD);
        Strbuf *strbuf = MessageLoader_GetNewStrbuf(messageLoader, pl_msg_00000543_00018);

        Text_AddPrinterWithParams(window, FONT_SYSTEM, strbuf, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
        MessageLoader_Free(messageLoader);
        Strbuf_Free(strbuf);
    }

    ov5_021DCF6C(fieldSystem, window);

    return window;
}

void ov5_021DCF58(Window *window)
{
    Window_EraseStandardFrame(window, FALSE);
    Windows_Delete(window, 1);
}

void ov5_021DCF6C(FieldSystem *fieldSystem, Window *window) // Money
{
    Window_FillRectWithColor(window, 15, 0, 16, 10 * 8, 4 * 8 - 16);

    MessageLoader *messageLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0543, HEAP_ID_FIELD);
    StringTemplate *stringTemplate = StringTemplate_Default(HEAP_ID_FIELD);
    Strbuf *strbuf = Strbuf_Init(16, HEAP_ID_FIELD);
    Strbuf *fmtString = MessageLoader_GetNewStrbuf(messageLoader, pl_msg_00000543_00019);
    u32 money = TrainerInfo_Money(SaveData_GetTrainerInfo(fieldSystem->saveData));

    StringTemplate_SetNumber(stringTemplate, 0, money, 6, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    StringTemplate_Format(stringTemplate, strbuf, fmtString);

    u32 printerOffset = (10 * 8) - Font_CalcStrbufWidth(FONT_SYSTEM, strbuf, 0);

    Text_AddPrinterWithParams(window, FONT_SYSTEM, strbuf, printerOffset, 16, TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(fmtString);
    Strbuf_Free(strbuf);
    StringTemplate_Free(stringTemplate);
    MessageLoader_Free(messageLoader);
    Window_ScheduleCopyToVRAM(window);
}

Window *ov5_021DD020(FieldSystem *fieldSystem, u8 tilemapLeft, u8 tilemapTop)
{
    Window *window = Window_New(HEAP_ID_FIELD, 1);

    Window_Add(fieldSystem->bgConfig, window, 3, tilemapLeft, tilemapTop, 10, 2, 13, (1 + (10 * 4)));
    LoadStandardWindowGraphics(fieldSystem->bgConfig, 3, 1024 - (18 + 12) - 9, 11, 0, HEAP_ID_FIELD);
    Window_DrawStandardFrame(window, TRUE, 1024 - (18 + 12) - 9, 11);

    ov5_021DD098(fieldSystem, window);

    return window;
}

void ov5_021DD084(Window *window)
{
    Window_EraseStandardFrame(window, FALSE);
    Windows_Delete(window, 1);
}

void ov5_021DD098(FieldSystem *fieldSystem, Window *window) // Coins count
{
    Window_FillTilemap(window, 15);

    MessageLoader *messageLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_COMMON_STRINGS_2, HEAP_ID_FIELD);
    StringTemplate *stringTemplate = StringTemplate_Default(HEAP_ID_FIELD);
    Strbuf *strbuf = Strbuf_Init(16, HEAP_ID_FIELD);
    Strbuf *fmtString = MessageLoader_GetNewStrbuf(messageLoader, pl_msg_00000361_00197);
    u32 coins = Coins_GetValue(SaveData_GetCoins(fieldSystem->saveData));

    StringTemplate_SetNumber(stringTemplate, 0, coins, 5, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    StringTemplate_Format(stringTemplate, strbuf, fmtString);

    u32 printerOffset = (10 * 8) - Font_CalcStrbufWidth(FONT_SYSTEM, strbuf, 0);

    Text_AddPrinterWithParams(window, FONT_SYSTEM, strbuf, printerOffset, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(fmtString);
    Strbuf_Free(strbuf);
    StringTemplate_Free(stringTemplate);
    MessageLoader_Free(messageLoader);
    Window_ScheduleCopyToVRAM(window);
}

Window *ov5_021DD140(FieldSystem *fieldSystem, u8 tilemapLeft, u8 tilemapTop)
{
    Window *window = Window_New(HEAP_ID_FIELD, 1);

    Window_Add(fieldSystem->bgConfig, window, 3, tilemapLeft, tilemapTop, 10, 2, 13, (1 + (10 * 4)));
    LoadStandardWindowGraphics(fieldSystem->bgConfig, 3, 1024 - (18 + 12) - 9, 11, 0, HEAP_ID_FIELD);
    Window_DrawStandardFrame(window, TRUE, 1024 - (18 + 12) - 9, 11);

    ov5_021DD1A4(fieldSystem, window);

    return window;
}

void ov5_021DD1A4(FieldSystem *fieldSystem, Window *window) // BP count
{
    Window_FillTilemap(window, 15);

    MessageLoader *messageLaoder = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_COMMON_STRINGS_2, HEAP_ID_FIELD);
    StringTemplate *stringTemplate = StringTemplate_Default(HEAP_ID_FIELD);
    Strbuf *strbuf = Strbuf_Init(16, HEAP_ID_FIELD);
    Strbuf *fmtString = MessageLoader_GetNewStrbuf(messageLaoder, pl_msg_00000361_00230);
    u16 battlePoints = sub_0202D230(sub_0202D750(fieldSystem->saveData), 0, 0);

    StringTemplate_SetNumber(stringTemplate, 0, battlePoints, 5, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    StringTemplate_Format(stringTemplate, strbuf, fmtString);

    u32 printerOffset = (10 * 8) - Font_CalcStrbufWidth(FONT_SYSTEM, strbuf, 0);

    Text_AddPrinterWithParams(window, FONT_SYSTEM, strbuf, printerOffset, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(fmtString);
    Strbuf_Free(strbuf);
    StringTemplate_Free(stringTemplate);
    MessageLoader_Free(messageLaoder);
    Window_ScheduleCopyToVRAM(window);
}

GenericMenuManager *ov5_021DD250(FieldSystem *fieldSystem, u8 anchorX, u8 anchorY, u16 *selectedOptionPtr, StringTemplate *stringTemplate, u8 redCost, u8 blueCost, u8 yellowCost, u8 greenCost) // Move tutor shard cost
{
    GenericMenuManager *menuManager = ov5_021DC150(fieldSystem, anchorX, anchorY, 0, FALSE, selectedOptionPtr, stringTemplate, NULL, NULL);

    Window_Add(menuManager->fieldSystem->bgConfig, &menuManager->menuWindow, 3, menuManager->anchorX, menuManager->anchorY, 10, 16, 13, ((1 + (10 * 4)) + (10 * 2)));
    LoadStandardWindowGraphics(menuManager->fieldSystem->bgConfig, 3, 1024 - (18 + 12) - 9, 11, 0, HEAP_ID_FIELD);
    Window_DrawStandardFrame(&menuManager->menuWindow, TRUE, 1024 - (18 + 12) - 9, 11);
    Window_FillRectWithColor(&menuManager->menuWindow, 15, 0, 0, (10 * 8), (16 * 8));

    ov5_021DCC00(menuManager, pl_msg_00000361_00273, 0, 0);
    StringTemplate_SetNumber(stringTemplate, 0, redCost, 3, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    ov5_021DCC00(menuManager, pl_msg_00000361_00277, 0, (0 + 16));

    ov5_021DCC00(menuManager, pl_msg_00000361_00274, 0, 32);
    StringTemplate_SetNumber(stringTemplate, 0, blueCost, 3, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    ov5_021DCC00(menuManager, pl_msg_00000361_00277, 0, (32 + 16));

    ov5_021DCC00(menuManager, pl_msg_00000361_00275, 0, 64);
    StringTemplate_SetNumber(stringTemplate, 0, yellowCost, 3, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    ov5_021DCC00(menuManager, pl_msg_00000361_00277, 0, (64 + 16));

    ov5_021DCC00(menuManager, pl_msg_00000361_00276, 0, 96);
    StringTemplate_SetNumber(stringTemplate, 0, greenCost, 3, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    ov5_021DCC00(menuManager, pl_msg_00000361_00277, 0, (96 + 16));

    menuManager->menuTemplate.window = &menuManager->menuWindow;
    Window_CopyToVRAM(&menuManager->menuWindow);

    return menuManager;
}

void ov5_021DD3A8(GenericMenuManager *menuManager)
{
    Window_EraseStandardFrame(menuManager->menuTemplate.window, FALSE);
    Window_Remove(menuManager->menuTemplate.window);

    for (int i = 0; i < GENERIC_MENU_ENTRIES_MAX; i++) {
        Strbuf_Free(menuManager->choicesStringsBuffers[i]);
    }

    if (menuManager->freeMsgLoaderOnDelete == TRUE) {
        MessageLoader_Free(menuManager->messageLoader);
    }

    Heap_FreeToHeap(menuManager);
}

void ov5_021DD3F4(GenericMenuManager *menuManager, BOOL horizontalAnchor)
{
    menuManager->horizontalAnchor = horizontalAnchor;
}

void ov5_021DD410(GenericMenuManager *menuManager, BOOL verticalAnchor)
{
    menuManager->verticalAnchor = verticalAnchor;
}
