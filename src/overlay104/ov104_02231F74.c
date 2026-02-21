#include "overlay104/ov104_02231F74.h"

#include <nitro.h>
#include <string.h>

#include "constants/field_base_tiles.h"
#include "constants/narc.h"

#include "struct_defs/sentence.h"

#include "applications/party_menu/main.h"
#include "overlay063/ov63_0222BE18.h"
#include "overlay063/ov63_0222CCE4.h"
#include "overlay063/ov63_0222D77C.h"
#include "overlay063/struct_ov63_0222BEC0_decl.h"
#include "overlay063/struct_ov63_0222CCB8.h"
#include "overlay104/frontier_script_context.h"
#include "overlay104/ov104_0222E63C.h"
#include "overlay104/struct_ov104_0222FEDC.h"
#include "overlay104/struct_ov104_02230BE4.h"
#include "overlay104/struct_ov104_022320B4_decl.h"
#include "overlay104/struct_ov104_022320B4_t.h"
#include "overlay104/struct_ov104_02232B78.h"
#include "overlay104/struct_ov104_0223319C.h"
#include "overlay104/struct_ov104_022331E8.h"
#include "overlay104/struct_ov104_0223C4CC.h"

#include "bg_window.h"
#include "character_sprite.h"
#include "font.h"
#include "game_options.h"
#include "heap.h"
#include "list_menu.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "palette.h"
#include "pltt_transfer.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "render_text.h"
#include "render_window.h"
#include "save_player.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_system.h"
#include "string_gf.h"
#include "string_list.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "unk_02014A84.h"
#include "unk_0209B6F8.h"

#define LIST_MENU_ENTRY_NO_ALT_TEXT 0xFF
#define LIST_MENU_BUILDER_HEADER    0xFA
#define LIST_MENU_MAX_DISPLAY       8
#define CURSOR_MARGIN_SIZE          12

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_ov104_022419A0;

static void OpenMessageBox(UnkStruct_ov104_022320B4 *param0);
static void GetMessage(UnkStruct_ov104_022320B4 *param0, const MessageLoader *msgLoader, u32 entryID);
static void PrintMessage(UnkStruct_ov104_022320B4 *param0, enum Font font, int renderDelay, BOOL canSpeedUp, int autoScroll);
static void FrontierMenuManager_Init(UnkStruct_ov104_022320B4 *param0, FrontierMenuManager *menuManager, u8 anchorX, u8 anchorY, u8 initialCursorPos, u8 canExitWithB, u16 *selectedOptionPtr, StringTemplate *strTemplate, MessageLoader *msgLoader);
static void AddMenuEntry(FrontierMenuManager *menuManager, u32 entryID, u32 altTextEntryID, u32 index);
static u32 CalcMenuWidth(FrontierMenuManager *menuManager);
static void SetupSingleColumnMenu(FrontierMenuManager *menuManager);
static void MenuSysTaskCallback(SysTask *task, void *data);
static void FreeManagerWithMenu(FrontierMenuManager *menuManager);
static void UpdateMenuAltText(FrontierMenuManager *menuManager);
static void PrintListMenuAltText(FrontierMenuManager *menuManager, u16 entryID, u32 printerDelay);
static void ShowSentence(UnkStruct_ov104_022320B4 *param0, u8 renderDelay, u16 sentenceType, u16 sentenceID, u16 word1, s16 word2, u8 canSpeedUp);
static void GetStringFromSentence(String *msgBuf, u16 sentenceType, u16 sentenceID, u16 word1, u16 word2);
static BOOL WaitForFinishedPrinting(FrontierScriptContext *ctx);
static void AddListMenuEntry(FrontierMenuManager *menuManager, u32 entryID, u32 altTextEntryID, u32 index);
static u32 CalcListMenuWidth(FrontierMenuManager *menuManager);
static void InitListMenuTemplate(FrontierMenuManager *menuManager);
static void SetListMenuItemAltColor(ListMenu *listMenu, u32 index, u8 yOffset);
static void ListMenuDummyCursorCallback(ListMenu *listMenu, u32 index, u8 onInit);
static void ListMenuSysTaskCallback(SysTask *task, void *data);
static void FreeManagerWithListMenu(FrontierMenuManager *menuManager, u8 playSound);
static void UpdateListMenuAltText(FrontierMenuManager *menuManager);

void FrontierShowMessage(UnkStruct_ov104_022320B4 *param0, const MessageLoader *msgLoader, u16 messageID, u8 canSpeedUp, FrontierMessageOptions *msgOptions)
{
    u8 renderDelay;
    u8 autoScroll;
    u8 font;

    OpenMessageBox(param0);
    GetMessage(param0, msgLoader, messageID);

    if (msgOptions == NULL) {
        UnkStruct_ov104_0223C4CC *v3 = ov104_0222E924(param0);
        UnkStruct_ov104_02230BE4 *v4 = sub_0209B970(v3->unk_08);

        renderDelay = Options_TextFrameDelay(v4->options);
        autoScroll = AUTO_SCROLL_DISABLED;
        font = FONT_MESSAGE;
    } else {
        renderDelay = msgOptions->renderDelay;
        autoScroll = msgOptions->scrollFlags;
        font = msgOptions->font;
    }

    PrintMessage(param0, font, renderDelay, canSpeedUp, autoScroll);
}

static void OpenMessageBox(UnkStruct_ov104_022320B4 *param0)
{
    UnkStruct_ov104_0223C4CC *v0 = ov104_0222E924(param0);

    if (param0->isMsgBoxOpen == FALSE) {
        Window_Add(
            v0->unk_00, &param0->msgWindow, BG_LAYER_MAIN_1, 2, 19, 27, 4, 13, BASE_TILE_STANDARD_WINDOW_FRAME - MESSAGE_WINDOW_TILE_COUNT);
        Window_FillTilemap(&param0->msgWindow, 15);
        Window_DrawMessageBoxWithScrollCursor(&param0->msgWindow, 0, BASE_TILE_SCROLLING_MESSAGE_BOX, 11);

        param0->isMsgBoxOpen = TRUE;
    } else {
        Window_FillTilemap(&param0->msgWindow, 15);
    }
}

static void GetMessage(UnkStruct_ov104_022320B4 *param0, const MessageLoader *msgLoader, u32 entryID)
{
    MessageLoader_GetString(msgLoader, entryID, param0->fmtString);
    StringTemplate_Format(param0->strTemplate, param0->string, param0->fmtString);
}

static void PrintMessage(UnkStruct_ov104_022320B4 *param0, enum Font font, int renderDelay, BOOL canSpeedUp, int autoScroll)
{
    RenderControlFlags_SetCanABSpeedUpPrint(canSpeedUp);
    RenderControlFlags_SetAutoScrollFlags(autoScroll);
    RenderControlFlags_SetSpeedUpOnTouch(FALSE);
    param0->printerID = Text_AddPrinterWithParams(&param0->msgWindow, font, param0->string, 0, 0, renderDelay, NULL);
}

void Frontier_CloseMessage(UnkStruct_ov104_022320B4 *param0)
{
    GF_ASSERT(param0->isMsgBoxOpen == TRUE);

    Window_EraseMessageBox(&param0->msgWindow, FALSE);
    Window_Remove(&param0->msgWindow);

    param0->isMsgBoxOpen = FALSE;
}

static void ShowSentence(UnkStruct_ov104_022320B4 *param0, u8 renderDelay, u16 sentenceType, u16 sentenceID, u16 word1, s16 word2, u8 canSpeedUp)
{
    OpenMessageBox(param0);

    GetStringFromSentence(param0->string, sentenceType, sentenceID, word1, word2);

    if (canSpeedUp != 0xFF) {
        PrintMessage(param0, FONT_MESSAGE, renderDelay, canSpeedUp, AUTO_SCROLL_DISABLED);
    } else {
        PrintMessage(param0, FONT_MESSAGE, TEXT_SPEED_INSTANT, canSpeedUp, AUTO_SCROLL_DISABLED);
    }
}

static void GetStringFromSentence(String *msgBuf, u16 sentenceType, u16 sentenceID, u16 word1, u16 word2)
{
    Sentence sentence;
    String *string;

    sub_02014A84(&sentence);
    sub_02014CE0(&sentence, sentenceType, sentenceID);
    Sentence_SetWord(&sentence, 0, word1);
    Sentence_SetWord(&sentence, 1, word2);

    string = sub_02014B34(&sentence, HEAP_ID_FIELD3);
    String_Copy(msgBuf, string);
    String_Free(string);
}

static void FrontierMenuManager_Init(UnkStruct_ov104_022320B4 *param0, FrontierMenuManager *menuManager, u8 anchorX, u8 anchorY, u8 initialCursorPos, u8 canExitWithB, u16 *selectedOptionPtr, StringTemplate *strTemplate, MessageLoader *msgLoader)
{
    int i;

    if (msgLoader == NULL) {
        menuManager->msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MENU_ENTRIES, param0->heapID);
        menuManager->freeMsgLoaderOnDelete = TRUE;
    } else {
        menuManager->msgLoader = msgLoader;
        menuManager->freeMsgLoaderOnDelete = FALSE;
    }

    menuManager->strTemplate = strTemplate;
    menuManager->unk_00 = param0;
    menuManager->selectedOptionPtr = selectedOptionPtr;

    *menuManager->selectedOptionPtr = 0;

    menuManager->canExitWithB = canExitWithB;
    menuManager->initialCursorPos = initialCursorPos;
    menuManager->anchorX = anchorX;
    menuManager->anchorY = anchorY;
    menuManager->optionCount = 0;
    menuManager->parent = &param0->msgWindow;
    menuManager->sysTaskDelay = 3;
    menuManager->cursorPos = initialCursorPos;

    for (i = 0; i < FRONTIER_MENU_ENTRIES_MAX; i++) {
        menuManager->menuChoiceStrings[i].entry = NULL;
        menuManager->menuChoiceStrings[i].index = 0;
    }

    for (i = 0; i < FRONTIER_MENU_ENTRIES_MAX; i++) {
        menuManager->listMenuChoiceStrings[i].entry = NULL;
        menuManager->listMenuChoiceStrings[i].index = 0;
        menuManager->choicesAltTextEntryIDs[i] = LIST_MENU_ENTRY_NO_ALT_TEXT;
    }

    for (i = 0; i < FRONTIER_MENU_ENTRIES_MAX; i++) {
        menuManager->choiceStringBuffers[i] = String_Init(80, param0->heapID);
    }

    *menuManager->selectedOptionPtr = LIST_MENU_NO_SELECTION_YET;
}

FrontierMenuManager *FrontierMenuManager_New(UnkStruct_ov104_022320B4 *param0, u8 anchorX, u8 anchorY, u8 initalCursorPos, u8 canExitWithB, u16 *selectedOptionPtr, StringTemplate *strTemplate, MessageLoader *msgLoader)
{
    FrontierMenuManager *menuManager = Heap_Alloc(param0->heapID, sizeof(FrontierMenuManager));

    if (menuManager == NULL) {
        return NULL;
    }

    memset(menuManager, 0, sizeof(FrontierMenuManager));

    FrontierMenuManager_Init(param0, menuManager, anchorX, anchorY, initalCursorPos, canExitWithB, selectedOptionPtr, strTemplate, msgLoader);

    return menuManager;
}

void FrontierMenuManager_AddMenuEntry(FrontierMenuManager *menuManager, u32 entryID, u32 altTextEntryID, u32 index)
{
    AddMenuEntry(menuManager, entryID, altTextEntryID, index);
}

void FrontierMenuManager_ShowMenu(FrontierMenuManager *menuManager)
{
    u32 menuWidth;
    UnkStruct_ov104_0223C4CC *v1 = ov104_0222E924(menuManager->unk_00);

    menuWidth = CalcMenuWidth(menuManager);
    if (menuWidth % TILE_WIDTH_PIXELS == 0) {
        menuWidth /= TILE_WIDTH_PIXELS;
    } else {
        menuWidth = menuWidth / TILE_WIDTH_PIXELS + 1;
    }

    if (menuManager->anchorRight) {
        menuManager->anchorX -= menuWidth;
    }
    if (menuManager->anchorBottom) {
        menuManager->anchorY -= menuManager->optionCount * 2;
    }

    Window_Add(v1->unk_00, &menuManager->window, BG_LAYER_MAIN_1, menuManager->anchorX, menuManager->anchorY, menuWidth, menuManager->optionCount * 2, 14, 1);
    Window_DrawStandardFrame(&menuManager->window, TRUE, 985, PLTT_12);
    SetupSingleColumnMenu(menuManager);
    menuManager->menu = Menu_NewSimple(&menuManager->menuTemplate, menuManager->initialCursorPos, menuManager->unk_00->heapID);
    UpdateMenuAltText(menuManager);
    menuManager->sysTask = SysTask_Start(MenuSysTaskCallback, menuManager, 0);
}

static void AddMenuEntry(FrontierMenuManager *menuManager, u32 entryID, u32 altTextEntryID, u32 index)
{
    String *entryBuf = String_Init(80, menuManager->unk_00->heapID);

    MessageLoader_GetString(menuManager->msgLoader, entryID, entryBuf);
    StringTemplate_Format(menuManager->strTemplate, menuManager->choiceStringBuffers[menuManager->optionCount], entryBuf);
    menuManager->menuChoiceStrings[menuManager->optionCount].entry = menuManager->choiceStringBuffers[menuManager->optionCount];
    String_Free(entryBuf);

    menuManager->choicesAltTextEntryIDs[menuManager->optionCount] = altTextEntryID;
    menuManager->menuChoiceStrings[menuManager->optionCount].index = index;
    menuManager->optionCount++;
}

static u32 CalcMenuWidth(FrontierMenuManager *menuManager)
{
    u32 maxWidth = 0;

    for (int i = 0; i < menuManager->optionCount; i++) {
        if (menuManager->menuChoiceStrings[i].entry == NULL) {
            break;
        }

        u32 entryWidth = Font_CalcStringWidth(FONT_SYSTEM, menuManager->menuChoiceStrings[i].entry, 0);

        if (maxWidth < entryWidth) {
            maxWidth = entryWidth;
        }
    }

    return maxWidth + CURSOR_MARGIN_SIZE;
}

static void SetupSingleColumnMenu(FrontierMenuManager *menuManager)
{
    menuManager->menuTemplate.choices = menuManager->menuChoiceStrings;
    menuManager->menuTemplate.window = &menuManager->window;
    menuManager->menuTemplate.fontID = FONT_SYSTEM;
    menuManager->menuTemplate.xSize = 1;
    menuManager->menuTemplate.ySize = menuManager->optionCount;
    menuManager->menuTemplate.lineSpacing = 0;
    menuManager->menuTemplate.suppressCursor = FALSE;

    if (menuManager->optionCount >= 4) {
        menuManager->menuTemplate.loopAround = TRUE;
    } else {
        menuManager->menuTemplate.loopAround = FALSE;
    }
}

static void MenuSysTaskCallback(SysTask *task, void *data)
{
    FrontierMenuManager *menuManager = data;

    if (menuManager->sysTaskDelay != 0) {
        menuManager->sysTaskDelay--;
        return;
    }

    if (!IsScreenFadeDone()) {
        return;
    }

    u32 selectedEntry = Menu_ProcessInput(menuManager->menu);

    if (JOY_REPEAT(PAD_KEY_UP) || JOY_REPEAT(PAD_KEY_DOWN) || JOY_REPEAT(PAD_KEY_LEFT) || JOY_REPEAT(PAD_KEY_RIGHT)) {
        UpdateMenuAltText(menuManager);
    }

    if (*menuManager->selectedOptionPtr == 0xeedd) {
        FreeManagerWithMenu(data);
    } else {
        switch (selectedEntry) {
        case MENU_NOTHING_CHOSEN:
            break;
        case MENU_CANCELED:
            if (menuManager->canExitWithB == TRUE) {
                *menuManager->selectedOptionPtr = MENU_CANCELED;
                FreeManagerWithMenu(data);
            }
            break;
        default:
            *menuManager->selectedOptionPtr = selectedEntry;
            FreeManagerWithMenu(data);
            break;
        }
    }
}

static void FreeManagerWithMenu(FrontierMenuManager *menuManager)
{
    Sound_PlayEffect(SEQ_SE_CONFIRM);

    Menu_Free(menuManager->menu, NULL);
    Window_EraseStandardFrame(menuManager->menuTemplate.window, FALSE);
    Window_Remove(menuManager->menuTemplate.window);

    for (int i = 0; i < FRONTIER_MENU_ENTRIES_MAX; i++) {
        String_Free(menuManager->choiceStringBuffers[i]);
    }

    if (menuManager->freeMsgLoaderOnDelete == TRUE) {
        MessageLoader_Free(menuManager->msgLoader);
    }

    SysTask_Done(menuManager->sysTask);
    Heap_Free(menuManager);
}

static void UpdateMenuAltText(FrontierMenuManager *menuManager)
{
    u8 cursorPos = Menu_GetCursorPos(menuManager->menu);

    if (menuManager->choicesAltTextEntryIDs[cursorPos] != LIST_MENU_ENTRY_NO_ALT_TEXT) {
        PrintListMenuAltText(menuManager, menuManager->choicesAltTextEntryIDs[cursorPos], TEXT_SPEED_INSTANT);
    }
}

FrontierMenuManager *FrontierMenuManager_New2(UnkStruct_ov104_022320B4 *param0, u8 anchorX, u8 anchorY, u8 initialCursorPos, u8 canExitWithB, u16 *selectedOptionPtr, StringTemplate *strTemplate, MessageLoader *msgLoader)
{
    return FrontierMenuManager_New(param0, anchorX, anchorY, initialCursorPos, canExitWithB, selectedOptionPtr, strTemplate, msgLoader);
}

void FrontierMenuManager_AddListMenuEntry(FrontierMenuManager *menuManager, u32 entry, u32 altTextEntryID, u32 index)
{
    AddListMenuEntry(menuManager, entry, altTextEntryID, index);
}

void FrontierMenuManager_ShowListMenu(FrontierMenuManager *menuManager)
{
    UnkStruct_ov104_0223C4CC *v1 = ov104_0222E924(menuManager->unk_00);

    u32 menuWidth = CalcListMenuWidth(menuManager);
    if (menuWidth % TILE_WIDTH_PIXELS == 0) {
        menuWidth /= TILE_WIDTH_PIXELS;
    } else {
        menuWidth = menuWidth / TILE_WIDTH_PIXELS + 1;
    }

    if (menuManager->anchorRight) {
        menuManager->anchorX -= menuWidth;
    }

    if (menuManager->optionCount > LIST_MENU_MAX_DISPLAY) {
        if (menuManager->anchorBottom) {
            menuManager->anchorY -= LIST_MENU_MAX_DISPLAY * 2;
        }
        Window_Add(v1->unk_00, &menuManager->window, 1, menuManager->anchorX, menuManager->anchorY, menuWidth, 8 * 2, 14, 1);
    } else {
        if (menuManager->anchorBottom) {
            menuManager->anchorY -= menuManager->optionCount * 2;
        }
        Window_Add(v1->unk_00, &menuManager->window, 1, menuManager->anchorX, menuManager->anchorY, menuWidth, menuManager->optionCount * 2, 14, 1);
    }
    Window_DrawStandardFrame(&menuManager->window, 1, 985, PLTT_12);
    InitListMenuTemplate(menuManager);
    menuManager->listMenu = ListMenu_New(&menuManager->listMenuTemplate, 0, menuManager->initialCursorPos, menuManager->unk_00->heapID);
    UpdateListMenuAltText(menuManager);
    menuManager->sysTask = SysTask_Start(ListMenuSysTaskCallback, menuManager, 0);
}

static void AddListMenuEntry(FrontierMenuManager *menuManager, u32 entryID, u32 altTextEntryID, u32 index)
{
    String *fmtStr = String_Init(80, menuManager->unk_00->heapID);

    MessageLoader_GetString(menuManager->msgLoader, entryID, fmtStr);
    StringTemplate_Format(menuManager->strTemplate, menuManager->choiceStringBuffers[menuManager->optionCount], fmtStr);
    menuManager->listMenuChoiceStrings[menuManager->optionCount].entry = menuManager->choiceStringBuffers[menuManager->optionCount];

    String_Free(fmtStr);

    if (index == LIST_MENU_BUILDER_HEADER) {
        menuManager->listMenuChoiceStrings[menuManager->optionCount].index = LIST_HEADER;
    } else {
        menuManager->listMenuChoiceStrings[menuManager->optionCount].index = index;
    }

    menuManager->choicesAltTextEntryIDs[menuManager->optionCount] = altTextEntryID;
    menuManager->optionCount++;
}

static u32 CalcListMenuWidth(FrontierMenuManager *param0)
{
    u32 maxWidth = 0;

    for (int i = 0; i < param0->optionCount; i++) {
        if (param0->listMenuChoiceStrings[i].entry == NULL) {
            break;
        }

        u32 entryWidth = Font_CalcStringWidth(FONT_SYSTEM, param0->listMenuChoiceStrings[i].entry, 0);

        if (maxWidth < entryWidth) {
            maxWidth = entryWidth;
        }
    }

    return maxWidth + CURSOR_MARGIN_SIZE;
}

static void InitListMenuTemplate(FrontierMenuManager *menuManager)
{
    menuManager->listMenuTemplate.choices = menuManager->listMenuChoiceStrings;
    menuManager->listMenuTemplate.cursorCallback = ListMenuDummyCursorCallback;
    menuManager->listMenuTemplate.printCallback = SetListMenuItemAltColor;
    menuManager->listMenuTemplate.window = &menuManager->window;
    menuManager->listMenuTemplate.count = menuManager->optionCount;
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
    menuManager->listMenuTemplate.pagerMode = PAGER_MODE_NONE;
    menuManager->listMenuTemplate.fontID = FONT_SYSTEM;
    menuManager->listMenuTemplate.cursorType = 0;
    menuManager->listMenuTemplate.parent = menuManager;
}

static void SetListMenuItemAltColor(ListMenu *listMenu, u32 index, u8 yOffset)
{
    if (index == LIST_HEADER) {
        ListMenu_SetAltTextColors(listMenu, 3, 15, 4);
    } else {
        ListMenu_SetAltTextColors(listMenu, 1, 15, 2);
    }
}

static void ListMenuDummyCursorCallback(ListMenu *listMenu, u32 index, u8 onInit)
{
    ListMenu_GetAttribute(listMenu, LIST_MENU_PARENT);
}

static void ListMenuSysTaskCallback(SysTask *task, void *data)
{
    FrontierMenuManager *menuManager = data;

    if (menuManager->sysTaskDelay != 0) {
        menuManager->sysTaskDelay--;
        return;
    }

    if (!IsScreenFadeDone()) {
        return;
    }

    u32 selectedEntry = ListMenu_ProcessInput(menuManager->listMenu);
    u16 cursorPos = menuManager->cursorPos;

    ListMenu_CalcTrueCursorPos(menuManager->listMenu, &menuManager->cursorPos);

    if (cursorPos != menuManager->cursorPos) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    if (JOY_REPEAT(PAD_KEY_UP) || JOY_REPEAT(PAD_KEY_DOWN) || JOY_REPEAT(PAD_KEY_LEFT) || JOY_REPEAT(PAD_KEY_RIGHT)) {
        UpdateListMenuAltText(menuManager);
    }

    if (*menuManager->selectedOptionPtr == 0xeedd) {
        FreeManagerWithListMenu(data, FALSE);
    } else {
        switch (selectedEntry) {
        case LIST_NOTHING_CHOSEN:
            break;
        case LIST_CANCEL:
            if (menuManager->canExitWithB == TRUE) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                *menuManager->selectedOptionPtr = LIST_CANCEL;

                FreeManagerWithListMenu(data, TRUE);
            }

            break;
        default:
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            *menuManager->selectedOptionPtr = selectedEntry;

            FreeManagerWithListMenu(data, TRUE);
            break;
        }
    }
}

static void FreeManagerWithListMenu(FrontierMenuManager *menuManager, u8 playSound)
{
    if (playSound == TRUE) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    ListMenu_Free(menuManager->listMenu, NULL, NULL);
    Window_EraseStandardFrame(menuManager->listMenuTemplate.window, FALSE);
    Window_Remove(&menuManager->window);

    for (int i = 0; i < FRONTIER_MENU_ENTRIES_MAX; i++) {
        String_Free(menuManager->choiceStringBuffers[i]);
    }

    if (menuManager->freeMsgLoaderOnDelete == TRUE) {
        MessageLoader_Free(menuManager->msgLoader);
    }

    SysTask_Done(menuManager->sysTask);
    Heap_Free(menuManager);
}

static void PrintListMenuAltText(FrontierMenuManager *menuManager, u16 entryID, u32 printerDelay)
{
    String *fmtStr = String_Init(80, menuManager->unk_00->heapID);
    String *displayStr = String_Init(80, menuManager->unk_00->heapID);

    Window_FillTilemap(menuManager->parent, 15);

    MessageLoader_GetString(menuManager->msgLoader, entryID, fmtStr);
    StringTemplate_Format(menuManager->strTemplate, displayStr, fmtStr);

    Text_AddPrinterWithParams(menuManager->parent, FONT_MESSAGE, displayStr, 0, 0, printerDelay, NULL);

    String_Free(fmtStr);
    String_Free(displayStr);
}

static void UpdateListMenuAltText(FrontierMenuManager *menuManager)
{
    ListMenu_CalcTrueCursorPos(menuManager->listMenu, &menuManager->listMenuAltTextIndex);

    if (menuManager->choicesAltTextEntryIDs[menuManager->listMenuAltTextIndex] != LIST_MENU_ENTRY_NO_ALT_TEXT) {
        PrintListMenuAltText(menuManager, menuManager->choicesAltTextEntryIDs[menuManager->listMenuAltTextIndex], TEXT_SPEED_INSTANT);
    }
}

void FrontierMenuManager_FreeListMenu(FrontierMenuManager *menuManager)
{
    if (menuManager == NULL) {
        return;
    }

    *menuManager->selectedOptionPtr = MENU_CANCELED;
    FreeManagerWithListMenu(menuManager, FALSE);
}

__attribute__((aligned(4))) static const u8 Unk_ov104_0223F9A4[] = {
    0x1,
    0x2,
    0x4,
    0x8,
    0xF,
    0x10,
    0x20
};

static UnkStruct_ov104_022419A0 Unk_ov104_022419A0[] = {
    { 0x0, 0x0 },
    { 0x0, 0x1 },
    { 0x0, 0x2 },
    { 0x0, 0x3 },
    { 0x2, 0x0 },
    { 0x2, 0x1 },
    { 0x2, 0x2 },
    { 0x2, 0x3 },
    { 0x6, 0x0 },
    { 0x6, 0x1 },
    { 0x6, 0x2 },
    { 0x6, 0x3 },
    { 0x7, 0x0 },
    { 0x7, 0x1 },
    { 0x7, 0x2 },
    { 0x7, 0x3 },
    { 0xA, 0x0 },
    { 0xA, 0x1 },
    { 0xA, 0x2 },
    { 0xA, 0x3 },
    { 0xB, 0x0 },
    { 0xB, 0x1 },
    { 0xB, 0x2 },
    { 0xB, 0x3 },
    { 0x8, 0x0 },
    { 0x8, 0x1 },
    { 0x8, 0x2 },
    { 0x8, 0x3 },
    { 0x9, 0x0 },
    { 0x9, 0x1 },
    { 0x9, 0x2 },
    { 0x9, 0x3 }
};

void ov104_02232B78(SysTask *param0, void *param1)
{
    UnkStruct_ov104_02232B78 *v0 = param1;
    UnkStruct_ov63_0222CCB8 v1;
    u16 v2 = v0->unk_0C->unk_00;
    u16 v3 = v0->unk_0C->unk_02;

    switch (v0->unk_00) {
    case 0:
        if (v2 == 0xFD13) {
            v0->unk_00 = 2;
            break;
        }
    case 1:
        if (ov63_0222BF90(v0->unk_14->unk_00, 5) == 0) {
            if ((v2 >= (32 + 0)) && (v2 <= (32 + 6))) {
                v0->unk_02++;

                if (v0->unk_02 >= Unk_ov104_0223F9A4[v2 - (32 + 0)]) {
                    v0->unk_02 = 0;
                    v0->unk_0C++;
                }
                break;
            } else if ((v2 >= (32 + 7)) && (v2 < ((32 + 7) + 2))) {
                switch (v2) {
                case ((32 + 7) + 0):
                    ov63_0222D008(v0->unk_14->unk_04, 1);
                    break;
                case ((32 + 7) + 1):
                    ov63_0222D008(v0->unk_14->unk_04, 0);
                    break;
                default:
                    GF_ASSERT(0);
                    break;
                }

                v0->unk_0C++;
                break;
            }

            ov104_02232C80(&v1, v0->unk_14->unk_00, v0->unk_04, v2);
            ov63_0222D7C8(v0->unk_10, &v1);

            v0->unk_01++;

            if (v0->unk_01 >= v3) {
                v0->unk_01 = 0;
                v0->unk_0C++;
            }

            v0->unk_00 = 0;
        }
        break;
    case 2:
        if (ov63_0222BF90(v0->unk_14->unk_00, 5) == 0) {
            (*(v0->unk_08))--;
            v0->unk_14->unk_38 = NULL;
            Heap_Free(v0);
            SysTask_Done(param0);
            return;
        }
        break;
    }
}

void ov104_02232C80(UnkStruct_ov63_0222CCB8 *param0, UnkStruct_ov63_0222BEC0 *param1, int param2, int param3)
{
    param0->unk_07 = param2;
    param0->unk_06 = Unk_ov104_022419A0[param3].unk_02;
    param0->unk_04 = Unk_ov104_022419A0[param3].unk_00;

    if ((param0->unk_04 == 2) || (param0->unk_04 == 3) || (param0->unk_04 == 6)) {
        param0->unk_00 = ov63_0222C0F0(param1);
    } else {
        param0->unk_00 = ov63_0222C0E4(param1);
    }
}

void ov104_02232CE0(UnkStruct_ov104_0223C4CC *param0, Pokemon *param1, enum HeapID heapID, int param3, int param4, int param5, int param6, int param7, int param8, u16 param9)
{
    SpriteSystem *v0 = param0->unk_34.unk_00;
    SpriteManager *v1 = param0->unk_34.unk_04;
    PaletteData *v2 = param0->unk_04;
    PokemonSpriteTemplate v3;
    void *v4;
    ManagedSprite *v5;

    {
        NARC *v6;

        v6 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, heapID);

        SpriteSystem_LoadCharResObjFromOpenNarc(v0, v1, v6, 112, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, param3);
        SpriteSystem_LoadPaletteBufferFromOpenNarc(v2, PLTTBUF_MAIN_OBJ, v0, v1, v6, 111, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 1, param3);
        SpriteSystem_LoadCellResObjFromOpenNarc(v0, v1, v6, 113, FALSE, param3);
        SpriteSystem_LoadAnimResObjFromOpenNarc(v0, v1, v6, 114, FALSE, param3);
        NARC_dtor(v6);
    }

    {
        int v7;
        SpriteTemplate v8;

        MI_CpuClear8(&v8, sizeof(SpriteTemplate));

        v8.x = param4;
        v8.y = param5;
        v8.z = 0;
        v8.animIdx = 0;
        v8.priority = param6;
        v8.plttIdx = 0;
        v8.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        v8.bgPriority = param7;
        v8.vramTransfer = FALSE;

        for (v7 = 0; v7 < 6; v7++) {
            v8.resources[v7] = param3;
        }

        v5 = SpriteSystem_NewSprite(v0, v1, &v8);
        ManagedSprite_TickFrame(v5);
    }

    {
        u32 personality, species;

        v4 = Heap_Alloc(heapID, 10 * 10 * ((8 / 2) * 8));
        personality = Pokemon_GetValue(param1, MON_DATA_PERSONALITY, NULL);
        species = Pokemon_GetValue(param1, MON_DATA_SPECIES, NULL);

        Pokemon_BuildSpriteTemplate(&v3, param1, 2);
        CharacterSprite_LoadPokemonSpriteRect(v3.narcID, v3.character, heapID, 0, 0, 10, 10, v4, personality, FALSE, 2, species);
    }

    {
        NNSG2dImageProxy *v11;
        NNSG2dImagePaletteProxy *v12;
        int v13;

        v11 = Sprite_GetImageProxy(v5->sprite);
        DC_FlushRange(v4, sizeof(10 * 10 * ((8 / 2) * 8)));
        GX_LoadOBJ(v4, v11->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN], 10 * 10 * ((8 / 2) * 8));

        v12 = Sprite_GetPaletteProxy(v5->sprite);
        v13 = PlttTransfer_GetPlttOffset(v12, NNS_G2D_VRAM_TYPE_2DMAIN);

        PaletteData_LoadBufferFromFileStart(v2, v3.narcID, v3.palette, heapID, 2, 0x20, v13 * 16);

        if (param8 > 0) {
            PaletteData_Blend(v2, 2, v13 * 16, 16, param8, param9);
        }
    }

    Heap_Free(v4);

    GF_ASSERT(param0->unk_80[param3 - 50000] == NULL);
    param0->unk_80[param3 - 50000] = v5;
}

void ov104_02232E80(UnkStruct_ov104_0223C4CC *param0, int param1)
{
    Sprite_DeleteAndFreeResources(param0->unk_80[param1 - 50000]);

    param0->unk_80[param1 - 50000] = NULL;

    SpriteManager_UnloadCharObjById(param0->unk_34.unk_04, param1);
    SpriteManager_UnloadPlttObjById(param0->unk_34.unk_04, param1);
    SpriteManager_UnloadCellObjById(param0->unk_34.unk_04, param1);
    SpriteManager_UnloadAnimObjById(param0->unk_34.unk_04, param1);
}

static const SpriteTemplate Unk_ov104_0223F9E0 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x64,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x7D0, 0x7D0, 0x7D0, 0x7D0, 0xffffffff, 0xffffffff },
    0x1,
    0x0
};

static const SpriteTemplate Unk_ov104_0223F9AC = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x63,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x7D9, 0x7D1, 0x7D1, 0x7D1, 0xffffffff, 0xffffffff },
    0x1,
    0x0
};

void ov104_02232EC0(UnkStruct_ov104_0223C4CC *param0)
{
    SpriteSystem_LoadPaletteBuffer(param0->unk_04, PLTTBUF_MAIN_OBJ, param0->unk_34.unk_00, param0->unk_34.unk_04, NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, PokeIconPalettesFileIndex(), FALSE, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 2000);
    SpriteSystem_LoadCellResObj(param0->unk_34.unk_00, param0->unk_34.unk_04, NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, PokeIcon32KCellsFileIndex(), FALSE, 2000);
    SpriteSystem_LoadAnimResObj(param0->unk_34.unk_00, param0->unk_34.unk_04, NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, PokeIcon32KAnimationFileIndex(), FALSE, 2000);
}

void ov104_02232F28(UnkStruct_ov104_0223C4CC *param0)
{
    SpriteManager_UnloadCellObjById(param0->unk_34.unk_04, 2000);
    SpriteManager_UnloadAnimObjById(param0->unk_34.unk_04, 2000);
    SpriteManager_UnloadPlttObjById(param0->unk_34.unk_04, 2000);
}

ManagedSprite *ov104_02232F4C(UnkStruct_ov104_0223C4CC *param0, Pokemon *param1, int param2, int param3, int param4)
{
    ManagedSprite *v0;
    SpriteTemplate v1;

    GF_ASSERT(param2 < (2008 - 2000));

    SpriteSystem_LoadCharResObjAtEndWithHardwareMappingType(
        param0->unk_34.unk_00, param0->unk_34.unk_04, NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, Pokemon_IconSpriteIndex(param1), FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 2000 + param2);

    v1 = Unk_ov104_0223F9E0;

    v1.resources[0] += param2;
    v1.x = param3;
    v1.y = param4;
    v1.priority = 200;

    v0 = SpriteSystem_NewSprite(param0->unk_34.unk_00, param0->unk_34.unk_04, &v1);

    Sprite_SetExplicitPaletteOffsetAutoAdjust(v0->sprite, Pokemon_IconPaletteIndex(param1));
    ManagedSprite_TickFrame(v0);

    return v0;
}

void ov104_02232FD4(UnkStruct_ov104_0223C4CC *param0, ManagedSprite *param1, int param2)
{
    SpriteManager_UnloadCharObjById(param0->unk_34.unk_04, 2000 + param2);
    Sprite_DeleteAndFreeResources(param1);
}

void ov104_02232FEC(UnkStruct_ov104_0223C4CC *param0)
{
    NARC *v0 = NARC_ctor(NARC_INDEX_GRAPHIC__PL_PLIST_GRA, HEAP_ID_94);

    SpriteSystem_LoadPaletteBufferFromOpenNarc(param0->unk_04, PLTTBUF_MAIN_OBJ, param0->unk_34.unk_00, param0->unk_34.unk_04, v0, sub_02081934(), FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 2001);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0->unk_34.unk_00, param0->unk_34.unk_04, v0, sub_02081938(), FALSE, 2001);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->unk_34.unk_00, param0->unk_34.unk_04, v0, sub_0208193C(), FALSE, 2001);
    SpriteSystem_LoadCharResObjAtEndWithHardwareMappingType(param0->unk_34.unk_00, param0->unk_34.unk_04, 20, sub_02081930(), FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 2009);
    NARC_dtor(v0);
}

void ov104_0223307C(UnkStruct_ov104_0223C4CC *param0)
{
    SpriteManager_UnloadCharObjById(param0->unk_34.unk_04, 2009);
    SpriteManager_UnloadCellObjById(param0->unk_34.unk_04, 2001);
    SpriteManager_UnloadAnimObjById(param0->unk_34.unk_04, 2001);
    SpriteManager_UnloadPlttObjById(param0->unk_34.unk_04, 2001);
}

ManagedSprite *ov104_022330AC(UnkStruct_ov104_0223C4CC *param0, int param1, int param2)
{
    ManagedSprite *v0;
    SpriteTemplate v1;

    v1 = Unk_ov104_0223F9AC;

    v1.x = param1;
    v1.y = param2;
    v1.priority = 300;

    v0 = SpriteSystem_NewSprite(param0->unk_34.unk_00, param0->unk_34.unk_04, &v1);
    ManagedSprite_TickFrame(v0);

    return v0;
}

void ov104_022330F0(UnkStruct_ov104_0223C4CC *param0, ManagedSprite *param1)
{
    Sprite_DeleteAndFreeResources(param1);
}

void ov104_022330FC(FrontierScriptContext *ctx, u16 *args)
{
    ov104_0223310C(ctx, args, TEXT_BANK_FRONTIER_TRAINER_MESSAGES);
}

void ov104_0223310C(FrontierScriptContext *ctx, u16 *args, u32 bankID)
{
    MessageLoader *msgLoader;
    UnkStruct_ov104_02230BE4 *v2 = sub_0209B970(ctx->unk_00->unk_00);

    if (args[0] == 0xFFFF) {
        msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, bankID, HEAP_ID_FIELD3);

        FrontierShowMessage(ctx->unk_00, msgLoader, args[1], 1, NULL);
        MessageLoader_Free(msgLoader);
    } else {
        u8 frameDelay = Options_TextFrameDelay(SaveData_GetOptions(v2->saveData));
        ShowSentence(ctx->unk_00, frameDelay, args[0], args[1], args[2], args[3], TRUE);
    }

    FrontierScriptContext_Pause(ctx, WaitForFinishedPrinting);
}

static BOOL WaitForFinishedPrinting(FrontierScriptContext *ctx)
{
    if (!Text_IsPrinterActive(ctx->unk_00->printerID)) {
        return TRUE;
    }

    return FALSE;
}

void ov104_0223319C(SysTask *param0, void *param1)
{
    UnkStruct_ov104_0223319C *v0 = param1;

    v0->unk_08++;

    if (v0->unk_08 > v0->unk_09) {
        v0->unk_08 = 0;
        v0->unk_0A--;

        if (v0->unk_0A < 0) {
            SysTask_Done(param0);
            MI_CpuClear8(v0, sizeof(UnkStruct_ov104_0223319C));
            return;
        }

        v0->unk_04 = -v0->unk_04;
        v0->unk_06 = -v0->unk_06;
    }
}

void ov104_022331E8(SysTask *param0, void *param1)
{
    UnkStruct_ov104_022331E8 *v0 = param1;

    if (v0->unk_08 <= 0) {
        if (v0->unk_0A == 1) {
            G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3, 1);
            G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
            G2_SetWnd0Position(v0->unk_04, v0->unk_05, v0->unk_06, v0->unk_07);
            GX_SetVisibleWnd(GX_WNDMASK_W0);
        } else {
            GX_SetVisibleWnd(GX_WNDMASK_NONE);
        }

        SysTask_Done(param0);
        MI_CpuClear8(v0, sizeof(UnkStruct_ov104_022331E8));
        return;
    } else {
        v0->unk_08--;
    }
}

void FrontierMenuManager_SetHorizontalAnchor(FrontierMenuManager *menuManager, BOOL anchorRight)
{
    menuManager->anchorRight = anchorRight;
}

void FrontierMenuManager_SetVerticalAnchor(FrontierMenuManager *menuManager, BOOL anchorBottom)
{
    menuManager->anchorBottom = anchorBottom;
}
