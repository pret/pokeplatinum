#include "applications/poffin_case/menus.h"

#include <nitro.h>

#include "applications/poffin_case/main.h"
#include "applications/poffin_case/manager.h"

#include "bg_window.h"
#include "font.h"
#include "list_menu.h"
#include "menu.h"
#include "poffin_sprite.h"
#include "poffin_types.h"
#include "render_text.h"
#include "render_window.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_system.h"
#include "string_gf.h"
#include "string_list.h"
#include "string_template.h"
#include "text.h"

#define POFFIN_LIST_VIEW_HEIGHT 6

static void DummyCallback(ListMenu *menu, u32 unused, u8 unused2);
static void UpdateSelectedPoffin(ListMenu *menu, u32 index, u8 onInit);
static void PlaySound(ListMenu *menu, u32 index, u8 onInit);

static const ListMenuTemplate sPoffinMenuTemplate = {
    .choices = NULL,
    .cursorCallback = UpdateSelectedPoffin,
    .printCallback = DummyCallback,
    .window = NULL,
    .count = 0,
    .maxDisplay = POFFIN_LIST_VIEW_HEIGHT,
    .headerXOffset = 0,
    .textXOffset = 8,
    .cursorXOffset = 0,
    .yOffset = 0,
    .textColorFg = 1,
    .textColorBg = 0,
    .textColorShadow = 2,
    .letterSpacing = 0,
    .lineSpacing = 0,
    .pagerMode = PAGER_MODE_LEFT_RIGHT_PAD,
    .fontID = 0,
    .cursorType = 1,
    .parent = NULL
};

static const ListMenuTemplate sActionMenuTemplate = {
    .choices = NULL,
    .cursorCallback = PlaySound,
    .printCallback = NULL,
    .window = NULL,
    .count = 0,
    .maxDisplay = 3,
    .headerXOffset = 0,
    .textXOffset = 8,
    .cursorXOffset = 0,
    .yOffset = 0,
    .textColorFg = 1,
    .textColorBg = 15,
    .textColorShadow = 2,
    .letterSpacing = 0,
    .lineSpacing = 0,
    .pagerMode = PAGER_MODE_NONE,
    .fontID = 0,
    .cursorType = 0,
    .parent = NULL
};

static void ResetPoffinsFilterDetails(PoffinCaseAppItem *poffin)
{
    poffin->isListed = FALSE;
    poffin->prev = poffin->next = POFFIN_LIST_SENTINEL;
}

static void PrintMessageBox(PoffinManager *app, String *string, u8 renderDelay, u8 hasScroll)
{
    u32 color = TEXT_COLOR(1, 2, 15);

    if (hasScroll) {
        Window_DrawMessageBoxWithScrollCursor(&app->windows[2], TRUE, 1, 14);
    }

    Window_FillRectWithColor(&app->windows[2], PIXEL_FILL(15), 0, 0, 216, 32);
    RenderControlFlags_SetCanABSpeedUpPrint(TRUE);
    RenderControlFlags_SetAutoScrollFlags(AUTO_SCROLL_DISABLED);

    app->printerID = Text_AddPrinterWithParamsAndColor(&app->windows[2], FONT_MESSAGE, string, 0, 0, renderDelay, color, NULL);
}

static u16 PoffinManager_FilterPoffins(PoffinCaseAppData *appData, PoffinManager *app)
{
    u16 i, count = 0;
    u8 poffinTypeMask;
    PoffinCaseAppItem *poffin;

    app->lastPoffin = app->firstPoffin = POFFIN_LIST_SENTINEL;

    if (app->flavorFilter == 5) {
        poffinTypeMask = 0x1F;
    } else {
        poffinTypeMask = 1;

        for (i = 0; i < app->flavorFilter; i++) {
            poffinTypeMask <<= 1;
        }
    }

    for (i = 0; i < appData->poffinCount; i++) {
        poffin = &appData->poffins[i];
        ResetPoffinsFilterDetails(poffin);

        if (!poffin->alwaysTrue || poffin->deleted) {
            continue;
        }

        u8 poffinType = poffin->flavors & 0x1F;

        if ((poffinType & poffinTypeMask) == 0) {
            continue;
        }

        poffin->isListed = TRUE;

        if (app->lastPoffin == POFFIN_LIST_SENTINEL) {
            app->lastPoffin = poffin->index;
        } else {
            appData->poffins[app->firstPoffin].prev = poffin->index;
        }

        poffin->next = app->firstPoffin;
        app->firstPoffin = poffin->index;
        ++count;
    }

    count += 1;

    return count;
}

void PoffinManager_InitPoffinList(PoffinManager *app)
{

    app->poffinCount = PoffinManager_FilterPoffins(app->data, app);
    app->poffinList = StringList_New(app->poffinCount, app->heapID);

    u8 next = 0;
    for (u8 i = app->firstPoffin; i != POFFIN_LIST_SENTINEL; i = next) {
        PoffinCaseAppItem *poffin = &app->data->poffins[i];
        next = poffin->next;

        StringTemplate_SetString(app->messages.template, 0, PoffinTypeList_GetString(app->poffinTypes, poffin->type), 0, 0, GAME_LANGUAGE);
        StringTemplate_SetNumber(app->messages.template, 1, poffin->level, 2, PADDING_MODE_ZEROES, CHARSET_MODE_EN);
        StringTemplate_Format(app->messages.template, app->messages.string, app->messages.listItemStr);
        StringList_AddFromString(app->poffinList, app->messages.string, poffin->index);
    }

    StringList_AddFromString(app->poffinList, app->messages.closeStr, POFFIN_LIST_SENTINEL);
    MI_CpuCopy8(&sPoffinMenuTemplate, &app->menuTemplate, sizeof(ListMenuTemplate));

    app->cursorPos = app->data->cursorPos;
    app->listPos = app->data->listPos;

    if (app->data->poffinRemoved) {
        if (app->listPos == 0) {
            if (app->cursorPos != 0 && app->cursorPos >= app->poffinCount - 1) {
                --app->cursorPos;
            }
        } else {
            if (app->listPos + POFFIN_LIST_VIEW_HEIGHT >= app->poffinCount) {
                --app->listPos;
            }
        }

        app->data->poffinRemoved = FALSE;
    }

    app->menuTemplate.window = &app->windows[0];
    app->menuTemplate.choices = app->poffinList;
    app->menuTemplate.parent = app;
    app->menuTemplate.count = app->poffinCount;
    app->dummy2 = 0;
    app->poffinMenu = ListMenu_New(&app->menuTemplate, app->listPos, app->cursorPos, app->heapID);
    app->dummy2 = 1;
}

void PoffinManager_FreePoffinList(PoffinManager *app, BOOL clear)
{
    Window_FillRectWithColor(&app->windows[0], 0, 0, 0, 176, 96);

    if (clear) {
        Window_ClearAndCopyToVRAM(&app->windows[0]);
    }

    ListMenu_Free(app->poffinMenu, &app->listPos, &(app->cursorPos));
    StringList_Free(app->poffinList);

    app->data->listPos = app->listPos;
    app->data->cursorPos = app->cursorPos;

    app->poffinMenu = NULL;
    app->poffinList = NULL;
}

void PoffinManager_UpdateFilterButton(PoffinManager *app, u8 poffinType, u8 buttonAction)
{

    switch (buttonAction) {
    case BUTTON_ACTION_DESELECT:
        Sprite_SetAnim(app->buttonSprites[poffinType], poffinType * 3);
        Sprite_SetAnimateFlag(app->buttonSprites[poffinType], FALSE);
        Window_Scroll(
            &app->windows[7 + poffinType], 1, 2, 0);
        break;
    case BUTTON_ACTION_SELECT:
        Sprite_RestartAnim(app->buttonSprites[poffinType]);
        Sprite_SetAnimateFlag(app->buttonSprites[poffinType], TRUE);
        Window_Scroll(&app->windows[7 + poffinType], 0, 4, 0);
        app->buttonHeld = TRUE;
        break;
    case BUTTON_ACTION_RELEASE_SELECTED:
        Sprite_SetAnim(app->buttonSprites[poffinType], poffinType * 3 + 1);
        Window_Scroll(&app->windows[7 + poffinType], 1, 2, 0);
        app->buttonHeld = FALSE;
        break;
    case BUTTON_ACTION_REPRESS_SELECTED:
        Sprite_SetAnim(app->buttonSprites[poffinType], poffinType * 3 + 2);
        Window_Scroll(&app->windows[7 + poffinType], 0, 2, 0);
        app->buttonHeld = TRUE;
        break;
    case BUTTON_ACTION_SET_AS_ACTIVE:
        Sprite_SetAnim(app->buttonSprites[poffinType], poffinType * 3 + 1);
        Sprite_SetAnimateFlag(app->buttonSprites[poffinType], TRUE);
        Window_Scroll(&app->windows[7 + poffinType], 0, 2, 0);
        app->buttonHeld = FALSE;
        break;
    }

    Window_CopyToVRAM(&app->windows[7 + poffinType]);
}

void PoffinManager_UpdatePoffinFilter(PoffinManager *app, u8 poffinType)
{
    Sound_PlayEffect(SEQ_SE_DP_BUTTON9);

    if (app->buttonHeld != 0xffff) {
        if (poffinType == app->flavorFilter) {
            PoffinManager_UpdateFilterButton(app, poffinType, BUTTON_ACTION_REPRESS_SELECTED);
            return;
        }

        PoffinManager_UpdateFilterButton(app, app->flavorFilter, BUTTON_ACTION_DESELECT);
    }

    PoffinManager_UpdateFilterButton(app, poffinType, BUTTON_ACTION_SELECT);
    app->flavorFilter = poffinType;

    PoffinManager_FreePoffinList(app, 0);
    app->listPos = app->cursorPos = 0;
    app->data->listPos = app->data->cursorPos = 0;

    PoffinManager_InitPoffinList(app);
    Window_FillRectWithColor(&app->windows[6], 0, 0, 0, 160, 24);

    if (app->flavorFilter == FLAVOR_MAX) {
        Window_CopyToVRAM(&app->windows[6]);
        return;
    }

    int width = 160 - Font_CalcStringWidth(FONT_SYSTEM, app->messages.flavorDescs[app->flavorFilter], 0);
    TextColor color = TEXT_COLOR(1, 2, 0);

    Text_AddPrinterWithParamsAndColor(&app->windows[6], FONT_SYSTEM, app->messages.flavorDescs[app->flavorFilter], width / 2, 3, TEXT_SPEED_INSTANT, color, NULL);
}

static void PoffinManager_UpdateFlavorSprites(PoffinManager *app, PoffinCaseAppItem *poffin)
{
    u8 poffinTypeMask = 1;

    if (poffin == NULL) {
        for (u8 i = 0; i < FLAVOR_MAX; i++) {
            Sprite_SetDrawFlag(app->flavorSprites[i], FALSE);
        }
        return;
    }

    for (u8 i = 0; i < FLAVOR_MAX; i++) {
        if (poffin->flavors & poffinTypeMask) {
            Sprite_SetDrawFlag(app->flavorSprites[i], TRUE);
        } else {
            Sprite_SetDrawFlag(app->flavorSprites[i], FALSE);
        }

        poffinTypeMask <<= 1;
    }
}

static void DummyCallback(ListMenu *menu, u32 unused, u8 unused2)
{
    ListMenu_GetAttribute(menu, LIST_MENU_PARENT);
}

static void UpdateSelectedPoffin(ListMenu *menu, u32 index, u8 onInit)
{
    PoffinManager *app = (PoffinManager *)ListMenu_GetAttribute(menu, LIST_MENU_PARENT);

    if (!onInit) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    u16 listPos, cursorPos;
    ListMenu_GetListAndCursorPos(menu, &listPos, &cursorPos);
    Sprite_SetPositionXY(app->listSprites[LIST_SPRITE_SELECT_BOX], 105, cursorPos * 16 + 40);

    if (listPos == 0) {
        Sprite_SetDrawFlag(app->listSprites[LIST_SPRITE_UP_ARROW], FALSE);
    } else {
        Sprite_SetDrawFlag(app->listSprites[LIST_SPRITE_UP_ARROW], TRUE);
    }

    if (listPos < (app->poffinCount - 6)) {
        Sprite_SetDrawFlag(app->listSprites[LIST_SPRITE_DOWN_ARROW], TRUE);
    } else {
        Sprite_SetDrawFlag(app->listSprites[LIST_SPRITE_DOWN_ARROW], FALSE);
    }

    Window_FillRectWithColor(&app->windows[1], 0, 0, 0, 80, 16);

    if (index == POFFIN_LIST_SENTINEL) {
        PoffinManager_UpdateFlavorSprites(app, NULL);
        Window_CopyToVRAM(&app->windows[1]);
        ManagedSprite_SetDrawFlag(app->poffinSprite->sprite, FALSE);
        return;
    }

    PoffinManager_UpdateFlavorSprites(app, &app->data->poffins[index]);
    String_Clear(app->messages.string);

    u8 smoothness = app->data->poffins[index].smoothness;

    if (smoothness > 99) {
        smoothness = 99;
    }

    TextColor color = TEXT_COLOR(1, 2, 0);
    StringTemplate_SetNumber(app->messages.template, 0, smoothness, 2, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(app->messages.template, app->messages.string, app->messages.smoothStr);
    Text_AddPrinterWithParamsAndColor(&app->windows[1], FONT_SYSTEM, app->messages.string, 8, 0, TEXT_SPEED_INSTANT, color, NULL);
    PoffinSprite_UpdateType(app->poffinSpriteMan, app->poffinSprite, app->data->poffins[index].type);
    ManagedSprite_SetDrawFlag(app->poffinSprite->sprite, TRUE);
}

void PoffinManager_CreateActionMenu(PoffinManager *app)
{
    app->actionList = StringList_New(3, app->heapID);

    for (u8 i = 0; i < 3; i++) {
        StringList_AddFromMessageBank(app->actionList, app->msgLoader, 1 + i, i);
    }

    MI_CpuCopy8(&sActionMenuTemplate, &app->actionMenuTemplate, sizeof(ListMenuTemplate));

    app->actionMenuTemplate.window = &app->windows[3];
    app->actionMenuTemplate.choices = app->actionList;
    app->actionMenuTemplate.parent = app;
    app->actionMenuTemplate.count = 3;

    Window_DrawStandardFrame(&app->windows[3], 1, 31, 15);

    app->actionMenu = ListMenu_New(&app->actionMenuTemplate, 0, 0, app->heapID);
}

void PoffinManager_FreeActionMenu(PoffinManager *app)
{
    Window_EraseStandardFrame(&app->windows[3], FALSE);
    Window_ClearAndCopyToVRAM(&app->windows[3]);

    u16 cursorPos, listPos;
    ListMenu_Free(app->actionMenu, &listPos, &cursorPos);
    StringList_Free(app->actionList);

    app->actionMenu = NULL;
    app->actionList = NULL;
}

static void PlaySound(ListMenu *menu, u32 index, u8 onInit)
{
    if (!onInit) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }
}

void PoffinManager_ShowDiscardQuestion(PoffinManager *app)
{
    String_Clear(app->messages.string);
    StringTemplate_SetString(app->messages.template, 0, PoffinTypeList_GetString(app->poffinTypes, app->data->poffins[app->selectedPoffin].type), 2, TRUE, GAME_LANGUAGE);
    StringTemplate_Format(app->messages.template, app->messages.string, app->messages.discardStr);

    PrintMessageBox(app, app->messages.string, app->messages.textDelay, TRUE);
}

void PoffinManager_ShowThrownOutMessage(PoffinManager *app)
{
    String_Clear(app->messages.string);
    StringTemplate_SetString(app->messages.template, 0, PoffinTypeList_GetString(app->poffinTypes, app->data->poffins[app->selectedPoffin].type), 2, TRUE, GAME_LANGUAGE);
    StringTemplate_Format(app->messages.template, app->messages.string, app->messages.thrownOutStr);

    PrintMessageBox(app, app->messages.string, app->messages.textDelay, FALSE);
}

void PoffinManager_CreateYesNoMenu(PoffinManager *app)
{
    static const WindowTemplate winTemplate = {
        1, 26, 13, 5, 4, 13, 463
    };

    app->yesNoMenu = Menu_MakeYesNoChoice(app->bgConfig, &winTemplate, 31, 15, app->heapID);
}

void PoffinManager_PrintHeaderandButtons(PoffinManager *app)
{
    Text_AddPrinterWithParamsAndColor(
        &app->windows[5],
        FONT_SYSTEM,
        app->messages.headerStr,
        4,
        0,
        TEXT_SPEED_INSTANT,
        TEXT_COLOR(1, 2, 0),
        NULL);

    TextColor buttonTextColor = TEXT_COLOR(2, 3, 1);
    for (int i = 0; i < FLAVOR_MAX + 1; i++) {
        static const u8 yOffsets[] = { 2, 10, 4, 6, 10, 6 };

        int width = 64 - Font_CalcStringWidth(FONT_SUBSCREEN, app->messages.flavorStrs[i], 0);
        Text_AddPrinterWithParamsAndColor(
            &app->windows[7 + i],
            FONT_SUBSCREEN,
            app->messages.flavorStrs[i],
            width / 2,
            yOffsets[i],
            TEXT_SPEED_INSTANT,
            buttonTextColor,
            NULL);
    }
}
