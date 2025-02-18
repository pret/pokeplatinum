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
    u8 unk_97_6 : 1;
    u8 unk_97_7 : 1;
    u8 tilemapLeft;
    u8 tilemapTop;
    u8 unk_9A;
    u8 optionsCount;
    u16 *unk_9C;
    u16 *selectedOptionPtr;
    u16 *unk_A4;
    u16 *unk_A8;
    MenuTemplate menuTemplate;
    Menu *menu;
    StringList menuChoicesStrings[GENERIC_MENU_ENTRIES_MAX];
    ListMenuTemplate listMenuTemplate;
    ListMenu *listMenu;
    u16 unk_1C0;
    u16 unk_1C2;
    StringList listMenuChoicesStrings[GENERIC_MENU_ENTRIES_MAX];
    u16 unk_2A4[GENERIC_MENU_ENTRIES_MAX];
    u16 cursorPos;
};

static void ov5_021DC018(FieldSystem *fieldSystem, GenericMenuManager *param1, u8 param2, u8 param3, u8 param4, u8 param5, u16 *param6, StringTemplate *param7, Window *param8, MessageLoader *param9);
static void ov5_021DCE64(GenericMenuManager *param0, u8 param1, u8 param2);
static void ov5_021DC290(GenericMenuManager *param0, u32 param1, u32 param2);
static u32 CalcMenuWidth(GenericMenuManager *param0);
static void ov5_021DC33C(GenericMenuManager *param0);
static void ov5_021DC3B0(SysTask *param0, void *param1);
static void ov5_021DC530(GenericMenuManager *param0, u32 param1);
static void ov5_021DC708(GenericMenuManager *param0, u32 param1, u32 param2, u32 param3);
static u32 CalcListMenuWidth(GenericMenuManager *param0);
static void ov5_021DC7E4(GenericMenuManager *param0);
static void listMenuPrintCallback(ListMenu *param0, u32 param1, u8 param2);
static void listMenuCursorCallback(ListMenu *param0, u32 param1, u8 param2);
static void ov5_021DC95C(SysTask *param0, void *param1);
static void ov5_021DCA28(GenericMenuManager *param0);
static void ov5_021DCA90(GenericMenuManager *param0, u16 param1, u32 param2);
static void ov5_021DCAF4(GenericMenuManager *param0);
static void ov5_021DCC64(SysTask *param0, void *param1);
static void ov5_021DCC00(GenericMenuManager *param0, u16 param1, u8 param2, u8 param3);

static void ov5_021DC018(FieldSystem *fieldSystem, GenericMenuManager *param1, u8 param2, u8 param3, u8 param4, u8 param5, u16 *param6, StringTemplate *stringTemplate, Window *window, MessageLoader *messageLoader)
{
    int i;

    if (messageLoader == NULL) {
        param1->messageLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_COMMON_STRINGS_2, HEAP_ID_FIELD);
        param1->freeMsgLoaderOnDelete = TRUE;
    } else {
        param1->messageLoader = messageLoader;
        param1->freeMsgLoaderOnDelete = FALSE;
    }

    param1->stringTemplate = stringTemplate;
    param1->fieldSystem = fieldSystem;
    param1->selectedOptionPtr = param6;

    *param1->selectedOptionPtr = 0;

    param1->unk_A4 = NULL;
    param1->unk_A8 = NULL;
    param1->canExitWithB = param5;
    param1->initialCursorPos = param4;
    param1->unk_97_6 = FALSE;
    param1->unk_97_7 = FALSE;
    param1->tilemapLeft = param2;
    param1->tilemapTop = param3;
    param1->optionsCount = 0;
    param1->parentWindow = window;
    param1->sysTaskDelay = 3;
    param1->cursorPos = param4;

    for (i = 0; i < GENERIC_MENU_ENTRIES_MAX; i++) {
        param1->menuChoicesStrings[i].entry = NULL;
        param1->menuChoicesStrings[i].index = 0;
    }

    for (i = 0; i < GENERIC_MENU_ENTRIES_MAX; i++) {
        param1->listMenuChoicesStrings[i].entry = NULL;
        param1->listMenuChoicesStrings[i].index = 0;
        param1->unk_2A4[i] = 0xff;
    }

    for (i = 0; i < GENERIC_MENU_ENTRIES_MAX; i++) {
        param1->choicesStringsBuffers[i] = Strbuf_Init((40 * 2), 4);
    }

    *param1->selectedOptionPtr = 0xeeee;
}

GenericMenuManager *ov5_021DC150(FieldSystem *fieldSystem, u8 param1, u8 param2, u8 param3, u8 param4, u16 *param5, StringTemplate *param6, Window *param7, MessageLoader *param8)
{
    GenericMenuManager *v0 = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(GenericMenuManager));

    if (v0 == NULL) {
        return NULL;
    }

    memset(v0, 0, sizeof(GenericMenuManager));
    ov5_021DC018(fieldSystem, v0, param1, param2, param3, param4, param5, param6, param7, param8);

    return v0;
}

void ov5_021DC1A4(GenericMenuManager *param0, u32 param1, u32 param2) // Add Menu entry
{
    ov5_021DC290(param0, param1, param2);
}

void ov5_021DC1AC(GenericMenuManager *param0)
{
    u32 v0 = CalcMenuWidth(param0);

    if ((v0 % 8) == 0) {
        v0 = (v0 / 8);
    } else {
        v0 = (v0 / 8) + 1;
    }

    if (param0->unk_97_6) {
        param0->tilemapLeft -= v0;
    }

    if (param0->unk_97_7) {
        param0->tilemapTop -= param0->optionsCount * 2;
    }

    Window_Add(param0->fieldSystem->bgConfig, &param0->menuWindow, 3, param0->tilemapLeft, param0->tilemapTop, v0, param0->optionsCount * 2, 13, ((1 + (10 * 4)) + (10 * 2)));
    LoadStandardWindowGraphics(param0->fieldSystem->bgConfig, 3, 1024 - (18 + 12) - 9, 11, 0, 4);
    Window_DrawStandardFrame(&param0->menuWindow, 1, 1024 - (18 + 12) - 9, 11);

    ov5_021DC33C(param0);

    param0->menu = Menu_NewSimple(&param0->menuTemplate, param0->initialCursorPos, HEAP_ID_FIELD);
    param0->sysTask = SysTask_Start(ov5_021DC3B0, param0, 0);
}

static void ov5_021DC290(GenericMenuManager *param0, u32 param1, u32 param2)
{
    {
        Strbuf *v2 = Strbuf_Init((40 * 2), 4);

        MessageLoader_GetStrbuf(param0->messageLoader, param1, v2);
        StringTemplate_Format(param0->stringTemplate, param0->choicesStringsBuffers[param0->optionsCount], v2);
        param0->menuChoicesStrings[param0->optionsCount].entry = (const void *)param0->choicesStringsBuffers[param0->optionsCount];
        Strbuf_Free(v2);
    }

    param0->menuChoicesStrings[param0->optionsCount].index = param2;
    param0->optionsCount++;
}

static u32 CalcMenuWidth(GenericMenuManager *param0)
{
    u32 entryWidth = 0;
    u32 maxWidth = 0;

    for (int i = 0; i < param0->optionsCount; i++) {
        if (param0->menuChoicesStrings[i].entry == NULL) {
            break;
        }

        entryWidth = Font_CalcStringWidthWithCursorControl(FONT_SYSTEM, (Strbuf *)param0->menuChoicesStrings[i].entry);

        if (maxWidth < entryWidth) {
            maxWidth = entryWidth;
        }
    }

    return maxWidth + 12;
}

static void ov5_021DC33C(GenericMenuManager *param0)
{
    param0->menuTemplate.choices = param0->menuChoicesStrings;
    param0->menuTemplate.window = &param0->menuWindow;
    param0->menuTemplate.fontID = FONT_SYSTEM;
    param0->menuTemplate.xSize = 1;
    param0->menuTemplate.ySize = param0->optionsCount;
    param0->menuTemplate.lineSpacing = 0;
    param0->menuTemplate.suppressCursor = FALSE;

    if (param0->optionsCount >= 4) {
        param0->menuTemplate.loopAround = TRUE;
    } else {
        param0->menuTemplate.loopAround = FALSE;
    }
}

static void ov5_021DC3B0(SysTask *param0, void *param1)
{
    GenericMenuManager *v1 = (GenericMenuManager *)param1;

    if (v1->sysTaskDelay != 0) {
        v1->sysTaskDelay--;
        return;
    }

    if (IsScreenTransitionDone() == FALSE) {
        return;
    }

    u32 selectedEntry = Menu_ProcessInput(v1->menu);

    switch (selectedEntry) {
    case MENU_NOTHING_CHOSEN:
        break;
    case MENU_CANCELED:
        if (v1->canExitWithB == TRUE) {
            *v1->selectedOptionPtr = MENU_CANCELED;
            ov5_021DC424(param1);
        }
        break;
    default:
        *v1->selectedOptionPtr = selectedEntry;
        ov5_021DC424(param1);
        break;
    }
}

void ov5_021DC424(GenericMenuManager *param0)
{
    Sound_PlayEffect(SEQ_SE_CONFIRM);
    Menu_Free(param0->menu, NULL);
    Window_EraseStandardFrame(param0->menuTemplate.window, FALSE);
    Window_Remove(param0->menuTemplate.window);

    for (int i = 0; i < GENERIC_MENU_ENTRIES_MAX; i++) {
        Strbuf_Free(param0->choicesStringsBuffers[i]);
    }

    if (param0->freeMsgLoaderOnDelete == TRUE) {
        MessageLoader_Free(param0->messageLoader);
    }

    SysTask_Done(param0->sysTask);
    Heap_FreeToHeap(param0);
}

GenericMenuManager *ov5_021DC48C(FieldSystem *fieldSystem, u8 param1, u8 param2, u8 param3, u8 param4, u16 *param5, StringTemplate *param6, Window *param7, MessageLoader *param8)
{
    return ov5_021DC150(fieldSystem, param1, param2, param3, param4, param5, param6, param7, param8);
}

void ov5_021DC4B0(GenericMenuManager *param0, u32 param1, u32 param2, u32 param3) // Add ListMenu Entry
{
    ov5_021DC708(param0, param1, param2, param3);
}

void ov5_021DC4B8(GenericMenuManager *param0)
{
    u32 v0 = CalcListMenuWidth(param0);

    if ((v0 % 8) == 0) {
        v0 = (v0 / 8);
    } else {
        v0 = (v0 / 8) + 1;
    }

    if (param0->unk_97_6) {
        param0->tilemapLeft -= v0;
    }

    if (param0->unk_97_7) {
        if (param0->optionsCount > 8) {
            param0->tilemapTop -= 8 * 2;
        } else {
            param0->tilemapTop -= param0->optionsCount * 2;
        }
    }

    ov5_021DC530(param0, v0);
}

void ov5_021DC528(GenericMenuManager *param0, u16 param1)
{
    ov5_021DC530(param0, param1);
}

static void ov5_021DC530(GenericMenuManager *param0, u32 param1)
{
    if (param0->optionsCount > 8) {
        Window_Add(param0->fieldSystem->bgConfig, &param0->menuWindow, 3, param0->tilemapLeft, param0->tilemapTop, param1, 8 * 2, 13, ((1 + (10 * 4)) + (10 * 2)));
    } else {
        Window_Add(param0->fieldSystem->bgConfig, &param0->menuWindow, 3, param0->tilemapLeft, param0->tilemapTop, param1, param0->optionsCount * 2, 13, ((1 + (10 * 4)) + (10 * 2)));
    }

    LoadStandardWindowGraphics(param0->fieldSystem->bgConfig, 3, 1024 - (18 + 12) - 9, 11, 0, 4);
    Window_DrawStandardFrame(&param0->menuWindow, 1, 1024 - (18 + 12) - 9, 11);

    ov5_021DC7E4(param0);
    param0->listMenu = ListMenu_New((const ListMenuTemplate *)&param0->listMenuTemplate, 0, param0->initialCursorPos, 4);

    ov5_021DCAF4(param0);
    param0->sysTask = SysTask_Start(ov5_021DC95C, param0, 0);
}

void ov5_021DC600(GenericMenuManager *param0, u16 *param1, u16 *param2)
{
    u32 v0 = CalcListMenuWidth(param0);

    if ((v0 % 8) == 0) {
        v0 = (v0 / 8);
    } else {
        v0 = (v0 / 8) + 1;
    }

    if (param0->optionsCount > 8) {
        Window_Add(param0->fieldSystem->bgConfig, &param0->menuWindow, 3, param0->tilemapLeft, param0->tilemapTop, v0, 8 * 2, 13, ((1 + (10 * 4)) + (10 * 2)));
    } else {
        Window_Add(param0->fieldSystem->bgConfig, &param0->menuWindow, 3, param0->tilemapLeft, param0->tilemapTop, v0, param0->optionsCount * 2, 13, ((1 + (10 * 4)) + (10 * 2)));
    }

    LoadStandardWindowGraphics(param0->fieldSystem->bgConfig, 3, 1024 - (18 + 12) - 9, 11, 0, 4);
    Window_DrawStandardFrame(&param0->menuWindow, 1, 1024 - (18 + 12) - 9, 11);

    ov5_021DC7E4(param0);

    param0->unk_A4 = param1;
    param0->unk_A8 = param2;
    param0->cursorPos = ((*param0->unk_A4) + (*param0->unk_A8));
    param0->listMenu = ListMenu_New((const ListMenuTemplate *)&param0->listMenuTemplate, *param1, *param2, 4);

    ov5_021DCAF4(param0);

    param0->sysTask = SysTask_Start(ov5_021DC95C, param0, 0);
}

static void ov5_021DC708(GenericMenuManager *param0, u32 param1, u32 param2, u32 param3)
{
    {
        Strbuf *v2 = Strbuf_Init((40 * 2), 4);

        MessageLoader_GetStrbuf(param0->messageLoader, param1, v2);
        StringTemplate_Format(param0->stringTemplate, param0->choicesStringsBuffers[param0->optionsCount], v2);
        param0->listMenuChoicesStrings[param0->optionsCount].entry = (const void *)param0->choicesStringsBuffers[param0->optionsCount];
        Strbuf_Free(v2);
    }

    if (param3 == 0xfa) {
        param0->listMenuChoicesStrings[param0->optionsCount].index = 0xfffffffd;
    } else {
        param0->listMenuChoicesStrings[param0->optionsCount].index = param3;
    }

    param0->unk_2A4[param0->optionsCount] = param2;
    param0->optionsCount++;
}

static u32 CalcListMenuWidth(GenericMenuManager *param0)
{
    u32 entryWidth = 0;
    u32 maxWidth = 0;

    for (int i = 0; i < param0->optionsCount; i++) {
        if (param0->listMenuChoicesStrings[i].entry == NULL) {
            break;
        }

        entryWidth = Font_CalcStringWidthWithCursorControl(FONT_SYSTEM, (Strbuf *)param0->listMenuChoicesStrings[i].entry);

        if (maxWidth < entryWidth) {
            maxWidth = entryWidth;
        }
    }

    return maxWidth + 12;
}

static void ov5_021DC7E4(GenericMenuManager *param0)
{
    param0->listMenuTemplate.choices = param0->listMenuChoicesStrings;
    param0->listMenuTemplate.cursorCallback = listMenuCursorCallback;
    param0->listMenuTemplate.printCallback = listMenuPrintCallback;
    param0->listMenuTemplate.window = &param0->menuWindow;
    param0->listMenuTemplate.count = param0->optionsCount;
    param0->listMenuTemplate.maxDisplay = 8;
    param0->listMenuTemplate.headerXOffset = 1;
    param0->listMenuTemplate.textXOffset = 12;
    param0->listMenuTemplate.cursorXOffset = 2;
    param0->listMenuTemplate.yOffset = 1;
    param0->listMenuTemplate.textColorFg = 1;
    param0->listMenuTemplate.textColorBg = 15;
    param0->listMenuTemplate.textColorShadow = 2;
    param0->listMenuTemplate.letterSpacing = 0;
    param0->listMenuTemplate.lineSpacing = 0;
    param0->listMenuTemplate.pagerMode = PAGER_MODE_LEFT_RIGHT_PAD;
    param0->listMenuTemplate.fontID = FONT_SYSTEM;
    param0->listMenuTemplate.cursorType = 0;
    param0->listMenuTemplate.parent = (void *)param0;
}

static void listMenuPrintCallback(ListMenu *param0, u32 param1, u8 param2)
{
    if (param1 == 0xfffffffd) {
        ListMenu_SetAltTextColors(param0, 3, 15, 4);
    } else {
        ListMenu_SetAltTextColors(param0, 1, 15, 2);
    }
}

static void listMenuCursorCallback(ListMenu *param0, u32 param1, u8 param2)
{
    u16 v2 = 0;
    u16 v3 = 0;
    GenericMenuManager *v4 = (GenericMenuManager *)ListMenu_GetAttribute(param0, LIST_MENU_PARENT);

    ListMenu_GetListAndCursorPos(param0, &v2, &v3);

    if ((v4->unk_A4 != NULL) && (v4->unk_A8 != NULL)) {
        *v4->unk_A4 = v2;
        *v4->unk_A8 = v3;
    }
}

static void ov5_021DC95C(SysTask *param0, void *param1)
{
    GenericMenuManager *v2 = (GenericMenuManager *)param1;

    if (v2->sysTaskDelay != 0) {
        v2->sysTaskDelay--;
        return;
    }

    if (IsScreenTransitionDone() == 0) {
        return;
    }

    u32 v1 = ListMenu_ProcessInput(v2->listMenu);
    u16 v0 = v2->cursorPos;

    ListMenu_CalcTrueCursorPos(v2->listMenu, &v2->cursorPos);

    if (v0 != v2->cursorPos) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    if ((gSystem.pressedKeysRepeatable & PAD_KEY_UP) || (gSystem.pressedKeysRepeatable & PAD_KEY_DOWN) || (gSystem.pressedKeysRepeatable & PAD_KEY_LEFT) || (gSystem.pressedKeysRepeatable & PAD_KEY_RIGHT)) {
        ov5_021DCAF4(v2);
    }

    switch (v1) {
    case LIST_NOTHING_CHOSEN:
        break;
    case LIST_CANCEL:
        if (v2->canExitWithB == 1) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            *v2->selectedOptionPtr = LIST_CANCEL;
            ov5_021DCA28(param1);
        }
        break;
    default:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        *v2->selectedOptionPtr = v1;
        ov5_021DCA28(param1);
        break;
    }
}

static void ov5_021DCA28(GenericMenuManager *param0)
{
    Sound_PlayEffect(SEQ_SE_CONFIRM);
    ListMenu_Free(param0->listMenu, NULL, NULL);
    Window_EraseStandardFrame(param0->listMenuTemplate.window, FALSE);
    Window_Remove(&param0->menuWindow);

    for (int i = 0; i < GENERIC_MENU_ENTRIES_MAX; i++) {
        Strbuf_Free(param0->choicesStringsBuffers[i]);
    }

    if (param0->freeMsgLoaderOnDelete == TRUE) {
        MessageLoader_Free(param0->messageLoader);
    }

    SysTask_Done(param0->sysTask);
    Heap_FreeToHeap(param0);
}

static void ov5_021DCA90(GenericMenuManager *param0, u16 param1, u32 param2)
{
    Strbuf *v0 = Strbuf_Init((40 * 2), HEAP_ID_FIELD);
    Strbuf *v1 = Strbuf_Init((40 * 2), HEAP_ID_FIELD);

    Window_FillTilemap(param0->parentWindow, 15);
    MessageLoader_GetStrbuf(param0->messageLoader, param1, v0);
    StringTemplate_Format(param0->stringTemplate, v1, v0);
    Text_AddPrinterWithParams(param0->parentWindow, FONT_MESSAGE, v1, 0, 0, param2, NULL);
    Strbuf_Free(v0);
    Strbuf_Free(v1);
}

static void ov5_021DCAF4(GenericMenuManager *param0)
{
    ListMenu_CalcTrueCursorPos(param0->listMenu, &param0->unk_1C2);

    if (param0->unk_2A4[param0->unk_1C2] != 0xff) {
        ov5_021DCA90(param0, param0->unk_2A4[param0->unk_1C2], 0);
    }
}

void ov5_021DCB24(FieldSystem *fieldSystem, u8 param1, u8 param2, u16 *param3, StringTemplate *param4, u16 param5)
{
    u32 width; // forward declaration required to match

    GenericMenuManager *v3 = ov5_021DC150(fieldSystem, param1, param2, 0, 0, param3, param4, NULL, NULL);
    width = 8 * Font_GetAttribute(FONT_SYSTEM, FONTATTR_MAX_LETTER_WIDTH);

    if ((width % 8) == 0) {
        width = (width / 8);
    } else {
        width = (width / 8) + 1;
    }

    Window_Add(v3->fieldSystem->bgConfig, &v3->menuWindow, 3, v3->tilemapLeft, v3->tilemapTop, width, 4, 13, ((1 + (10 * 4)) + (10 * 2)) + (16 * 10));
    LoadStandardWindowGraphics(v3->fieldSystem->bgConfig, 3, 1024 - (18 + 12) - 9, 11, 0, 4);
    Window_DrawStandardFrame(&v3->menuWindow, TRUE, 1024 - (18 + 12) - 9, 11);
    Window_FillRectWithColor(&v3->menuWindow, 15, 0, 0, (width * 8), (4 * 8));

    ov5_021DCC00(v3, 15, 0, 0);
    ov5_021DCC00(v3, 16, (8 * 4), 16);

    v3->menuTemplate.window = &v3->menuWindow;
    Window_CopyToVRAM(&v3->menuWindow);
    v3->sysTask = SysTask_Start(ov5_021DCC64, v3, 0);
}

static void ov5_021DCC00(GenericMenuManager *param0, u16 param1, u8 param2, u8 param3)
{
    Strbuf *v0 = Strbuf_Init((40 * 2), 4);
    Strbuf *v1 = Strbuf_Init((40 * 2), 4);

    MessageLoader_GetStrbuf(param0->messageLoader, param1, v0);
    StringTemplate_Format(param0->stringTemplate, v1, v0);
    Text_AddPrinterWithParams(&param0->menuWindow, FONT_SYSTEM, v1, param2, param3, TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(v0);
    Strbuf_Free(v1);
}

static void ov5_021DCC64(SysTask *param0, void *param1)
{
    GenericMenuManager *v1 = (GenericMenuManager *)param1;

    if (*v1->selectedOptionPtr == 0xffff) {
        Window_EraseStandardFrame(v1->menuTemplate.window, 0);
        Window_Remove(v1->menuTemplate.window);

        for (int i = 0; i < GENERIC_MENU_ENTRIES_MAX; i++) {
            Strbuf_Free(v1->choicesStringsBuffers[i]);
        }

        if (v1->freeMsgLoaderOnDelete == 1) {
            MessageLoader_Free(v1->messageLoader);
        }

        SysTask_Done(v1->sysTask);
        Heap_FreeToHeap(v1);
    }
}

u16 ov5_021DCCC8(int param0)
{
    u16 v0;

    switch (param0) {
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

void ov5_021DCD94(GenericMenuManager *param0, u8 columnsCount)
{
    u32 menuWidth = CalcMenuWidth(param0);

    if ((menuWidth % 8) == 0) {
        menuWidth = (menuWidth / 8);
    } else {
        menuWidth = (menuWidth / 8) + 1;
    }

    u8 rowsCount = (param0->optionsCount / columnsCount);

    if ((param0->optionsCount % columnsCount) != 0) {
        rowsCount++;
    }

    Window_Add(param0->fieldSystem->bgConfig, &param0->menuWindow, 3, param0->tilemapLeft, param0->tilemapTop, (menuWidth * columnsCount), rowsCount * 2, 13, ((1 + (10 * 4)) + (10 * 2)));
    LoadStandardWindowGraphics(param0->fieldSystem->bgConfig, 3, 1024 - (18 + 12) - 9, 11, 0, 4);
    Window_DrawStandardFrame(&param0->menuWindow, 1, 1024 - (18 + 12) - 9, 11);

    ov5_021DCE64(param0, columnsCount, rowsCount);

    param0->menu = Menu_NewSimple(&param0->menuTemplate, param0->initialCursorPos, HEAP_ID_FIELD);
    param0->sysTask = SysTask_Start(ov5_021DC3B0, param0, 0);
}

static void ov5_021DCE64(GenericMenuManager *param0, u8 param1, u8 param2)
{
    param0->menuTemplate.choices = param0->menuChoicesStrings;
    param0->menuTemplate.window = &param0->menuWindow;
    param0->menuTemplate.fontID = FONT_SYSTEM;
    param0->menuTemplate.xSize = param1;
    param0->menuTemplate.ySize = param2;
    param0->menuTemplate.lineSpacing = 0;
    param0->menuTemplate.suppressCursor = FALSE;
}

Window *ov5_021DCEB0(FieldSystem *fieldSystem, u8 param1, u8 param2)
{
    Window *v0 = Window_New(4, 1);

    Window_Add(fieldSystem->bgConfig, v0, 3, param1, param2, 10, 4, 13, 1);
    LoadStandardWindowGraphics(fieldSystem->bgConfig, 3, 1024 - (18 + 12) - 9, 11, 0, 4);
    Window_DrawStandardFrame(v0, 1, 1024 - (18 + 12) - 9, 11);
    Window_FillTilemap(v0, 15);

    {
        MessageLoader *v1 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0543, HEAP_ID_FIELD);
        Strbuf *v2 = MessageLoader_GetNewStrbuf(v1, pl_msg_00000543_00018);

        Text_AddPrinterWithParams(v0, FONT_SYSTEM, v2, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
        MessageLoader_Free(v1);
        Strbuf_Free(v2);
    }

    ov5_021DCF6C(fieldSystem, v0);

    return v0;
}

void ov5_021DCF58(Window *param0)
{
    Window_EraseStandardFrame(param0, 0);
    Windows_Delete(param0, 1);
}

void ov5_021DCF6C(FieldSystem *fieldSystem, Window *param1) // Money
{
    Window_FillRectWithColor(param1, 15, 0, 16, 10 * 8, 4 * 8 - 16);

    MessageLoader *v0 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0543, HEAP_ID_FIELD);
    StringTemplate *v1 = StringTemplate_Default(HEAP_ID_FIELD);
    Strbuf *v2 = Strbuf_Init(16, HEAP_ID_FIELD);
    Strbuf *v3 = MessageLoader_GetNewStrbuf(v0, pl_msg_00000543_00019);
    u32 v4 = TrainerInfo_Money(SaveData_GetTrainerInfo(fieldSystem->saveData));

    StringTemplate_SetNumber(v1, 0, v4, 6, 1, 1);
    StringTemplate_Format(v1, v2, v3);

    u32 v5 = (10 * 8) - Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);

    Text_AddPrinterWithParams(param1, FONT_SYSTEM, v2, v5, 16, TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(v3);
    Strbuf_Free(v2);
    StringTemplate_Free(v1);
    MessageLoader_Free(v0);
    Window_ScheduleCopyToVRAM(param1);
}

Window *ov5_021DD020(FieldSystem *fieldSystem, u8 param1, u8 param2)
{
    Window *v0 = Window_New(HEAP_ID_FIELD, 1);

    Window_Add(fieldSystem->bgConfig, v0, 3, param1, param2, 10, 2, 13, (1 + (10 * 4)));
    LoadStandardWindowGraphics(fieldSystem->bgConfig, 3, 1024 - (18 + 12) - 9, 11, 0, 4);
    Window_DrawStandardFrame(v0, 1, 1024 - (18 + 12) - 9, 11);

    ov5_021DD098(fieldSystem, v0);

    return v0;
}

void ov5_021DD084(Window *param0)
{
    Window_EraseStandardFrame(param0, FALSE);
    Windows_Delete(param0, 1);
}

void ov5_021DD098(FieldSystem *fieldSystem, Window *param1) // Coins count
{
    Window_FillTilemap(param1, 15);

    MessageLoader *v0 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_COMMON_STRINGS_2, HEAP_ID_FIELD);
    StringTemplate *v1 = StringTemplate_Default(HEAP_ID_FIELD);
    Strbuf *v2 = Strbuf_Init(16, HEAP_ID_FIELD);
    Strbuf *v3 = MessageLoader_GetNewStrbuf(v0, pl_msg_00000361_00197);
    u32 v4 = Coins_GetValue(SaveData_GetCoins(fieldSystem->saveData));

    StringTemplate_SetNumber(v1, 0, v4, 5, 1, 1);
    StringTemplate_Format(v1, v2, v3);

    u32 v5 = (10 * 8) - Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);

    Text_AddPrinterWithParams(param1, FONT_SYSTEM, v2, v5, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(v3);
    Strbuf_Free(v2);
    StringTemplate_Free(v1);
    MessageLoader_Free(v0);
    Window_ScheduleCopyToVRAM(param1);
}

Window *ov5_021DD140(FieldSystem *fieldSystem, u8 param1, u8 param2)
{
    Window *v0 = Window_New(4, 1);

    Window_Add(fieldSystem->bgConfig, v0, 3, param1, param2, 10, 2, 13, (1 + (10 * 4)));
    LoadStandardWindowGraphics(fieldSystem->bgConfig, 3, 1024 - (18 + 12) - 9, 11, 0, 4);
    Window_DrawStandardFrame(v0, 1, 1024 - (18 + 12) - 9, 11);

    ov5_021DD1A4(fieldSystem, v0);

    return v0;
}

void ov5_021DD1A4(FieldSystem *fieldSystem, Window *param1) // BP count
{
    Window_FillTilemap(param1, 15);

    MessageLoader *v0 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_COMMON_STRINGS_2, HEAP_ID_FIELD);
    StringTemplate *v1 = StringTemplate_Default(HEAP_ID_FIELD);
    Strbuf *v2 = Strbuf_Init(16, HEAP_ID_FIELD);
    Strbuf *v3 = MessageLoader_GetNewStrbuf(v0, pl_msg_00000361_00230);
    u16 v4 = sub_0202D230(sub_0202D750(fieldSystem->saveData), 0, 0);

    StringTemplate_SetNumber(v1, 0, v4, 5, 1, 1);
    StringTemplate_Format(v1, v2, v3);

    u32 v5 = (10 * 8) - Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);

    Text_AddPrinterWithParams(param1, FONT_SYSTEM, v2, v5, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(v3);
    Strbuf_Free(v2);
    StringTemplate_Free(v1);
    MessageLoader_Free(v0);
    Window_ScheduleCopyToVRAM(param1);
}

GenericMenuManager *ov5_021DD250(FieldSystem *fieldSystem, u8 param1, u8 param2, u16 *param3, StringTemplate *param4, u8 param5, u8 param6, u8 param7, u8 param8) // Move tutor shard cost
{
    GenericMenuManager *v0 = ov5_021DC150(fieldSystem, param1, param2, 0, 0, param3, param4, NULL, NULL);

    Window_Add(v0->fieldSystem->bgConfig, &v0->menuWindow, 3, v0->tilemapLeft, v0->tilemapTop, 10, 16, 13, ((1 + (10 * 4)) + (10 * 2)));
    LoadStandardWindowGraphics(v0->fieldSystem->bgConfig, 3, 1024 - (18 + 12) - 9, 11, 0, 4);
    Window_DrawStandardFrame(&v0->menuWindow, 1, 1024 - (18 + 12) - 9, 11);
    Window_FillRectWithColor(&v0->menuWindow, 15, 0, 0, (10 * 8), (16 * 8));

    ov5_021DCC00(v0, 273, 0, 0);
    StringTemplate_SetNumber(param4, 0, param5, 3, 1, 1);
    ov5_021DCC00(v0, 277, 0, (0 + 16));

    ov5_021DCC00(v0, 274, 0, 32);
    StringTemplate_SetNumber(param4, 0, param6, 3, 1, 1);
    ov5_021DCC00(v0, 277, 0, (32 + 16));

    ov5_021DCC00(v0, 275, 0, 64);
    StringTemplate_SetNumber(param4, 0, param7, 3, 1, 1);
    ov5_021DCC00(v0, 277, 0, (64 + 16));

    ov5_021DCC00(v0, 276, 0, 96);
    StringTemplate_SetNumber(param4, 0, param8, 3, 1, 1);
    ov5_021DCC00(v0, 277, 0, (96 + 16));

    v0->menuTemplate.window = &v0->menuWindow;
    Window_CopyToVRAM(&v0->menuWindow);

    return v0;
}

void ov5_021DD3A8(GenericMenuManager *param0)
{
    Window_EraseStandardFrame(param0->menuTemplate.window, FALSE);
    Window_Remove(param0->menuTemplate.window);

    for (int i = 0; i < GENERIC_MENU_ENTRIES_MAX; i++) {
        Strbuf_Free(param0->choicesStringsBuffers[i]);
    }

    if (param0->freeMsgLoaderOnDelete == TRUE) {
        MessageLoader_Free(param0->messageLoader);
    }

    Heap_FreeToHeap(param0);
}

void ov5_021DD3F4(GenericMenuManager *param0, BOOL param1)
{
    param0->unk_97_6 = param1;
}

void ov5_021DD410(GenericMenuManager *param0, BOOL param1)
{
    param0->unk_97_7 = param1;
}
