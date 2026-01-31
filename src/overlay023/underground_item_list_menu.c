#include "overlay023/underground_item_list_menu.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/underground.h"

#include "bg_window.h"
#include "colored_arrow.h"
#include "heap.h"
#include "list_menu.h"
#include "menu.h"
#include "sound_playback.h"
#include "string_list.h"
#include "system.h"
#include "unk_0202854C.h"

UndergroundItemListMenu *UndergroundItemListMenu_New(ListMenuTemplate *template, u16 startListPos, u16 startCursorPos, u8 heapID, MoveItemCallback moveItemCallback, Underground *underground, BOOL isDecorationMenu)
{
    UndergroundItemListMenu *menu = (UndergroundItemListMenu *)Heap_Alloc(heapID, sizeof(UndergroundItemListMenu));

    MI_CpuClear8(menu, sizeof(UndergroundItemListMenu));

    menu->moveItemCallback = moveItemCallback;

    if (menu->moveItemCallback) {
        menu->underground = underground;
        menu->isDecorationMenu = isDecorationMenu;
        menu->arrow = ColoredArrow_New(heapID);

        ColoredArrow_SetColor(menu->arrow, TEXT_COLOR(8, 9, 15));

        menu->heapID = heapID;

        StringList *choices = StringList_New(template->count, menu->heapID);

        for (int i = 0; i < template->count; i++) {
            StringList_AddFromEntry(choices, &template->choices[i]);
        }

        template->choices = choices;
        menu->choices = choices;
    }

    menu->trueCursorPos = startListPos + startCursorPos;
    menu->listMenu = ListMenu_New(template, startListPos, startCursorPos, heapID);

    return menu;
}

static void UndergroundItemListMenu_DrawColoredArrow(u16 listPos, u16 cursorPos, UndergroundItemListMenu *menu)
{
    u16 arrowPos = menu->initialListPos + menu->initialCursorPos;
    u16 maxDisplay = ListMenu_GetAttribute(menu->listMenu, LIST_MENU_MAX_DISPLAY);

    if (menu->listPos != listPos || menu->cursorPos != cursorPos) {
        menu->listPos = listPos;
        menu->cursorPos = cursorPos;

        if (listPos + maxDisplay < arrowPos || listPos > arrowPos) {
            return;
        }
    } else {
        return;
    }

    int xOffset = ListMenu_GetAttribute(menu->listMenu, LIST_MENU_CURSOR_X_OFFSET);
    u8 lineHeight = ListMenu_GetAttribute(menu->listMenu, LIST_MENU_LINE_HEIGHT);
    int yOffset = (arrowPos - listPos) * lineHeight + ListMenu_GetAttribute(menu->listMenu, LIST_MENU_Y_OFFSET);
    Window *window = (Window *)ListMenu_GetAttribute(menu->listMenu, LIST_MENU_WINDOW);

    ColoredArrow_Print(menu->arrow, window, xOffset, yOffset);
}

u32 UndergroundItemListMenu_ProcessInput(UndergroundItemListMenu *menu)
{
    ListMenu *listMenu = menu->listMenu;
    u16 listPos, cursorPos;
    int i;

    if (menu->moveItemCallback) {
        int count = ListMenu_GetAttribute(listMenu, LIST_MENU_COUNT);

        ListMenu_GetListAndCursorPos(listMenu, &listPos, &cursorPos);

        if (menu->movingItems) {
            UndergroundItemListMenu_DrawColoredArrow(listPos, cursorPos, menu);

            if (JOY_NEW(PAD_BUTTON_A) || JOY_NEW(PAD_BUTTON_SELECT)) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);

                if (listPos + cursorPos == count - 1) {
                    return LIST_NOTHING_CHOSEN;
                }

                if (listPos + cursorPos == menu->initialListPos + menu->initialCursorPos) {
                    return LIST_NOTHING_CHOSEN;
                }

                menu->moveItemCallback(menu->underground, menu->initialListPos + menu->initialCursorPos, listPos + cursorPos);

                StringList *updatedChoices = StringList_New(count, menu->heapID);
                int originalChoicesIndex = 0;

                for (i = 0; i < count; i++) {
                    if (i == menu->initialListPos + menu->initialCursorPos) {
                        originalChoicesIndex++;
                    } else {
                        StringList_AddFromEntry(updatedChoices, &menu->choices[originalChoicesIndex]);
                        originalChoicesIndex++;
                    }

                    if (i == listPos + cursorPos) {
                        StringList_AddFromEntry(updatedChoices, &menu->choices[menu->initialListPos + menu->initialCursorPos]);
                    }
                }

                if (menu->isDecorationMenu) {
                    for (i = 0; i < count - 1; i++) {
                        BOOL isPlaced = Underground_IsGoodAtSlotPlacedInBase(menu->underground, i);
                        updatedChoices[i].index = (i << 1) + (!isPlaced ? 1 : 0);
                    }

                    updatedChoices[i].index = (i << 1) + 1;
                } else {
                    for (i = 0; i < count - 1; i++) {
                        updatedChoices[i].index = i;
                    }
                }

                Heap_Free(menu->choices);
                menu->choices = updatedChoices;

                ListMenu_SetChoices(listMenu, updatedChoices);
                menu->movingItems = FALSE;

                ListMenu_Draw(listMenu);
                return LIST_NOTHING_CHOSEN;
            }
        } else {
            if (JOY_NEW(PAD_BUTTON_SELECT)) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);

                if (listPos + cursorPos == count - 1) {
                    return LIST_NOTHING_CHOSEN;
                }

                menu->initialListPos = listPos;
                menu->initialCursorPos = cursorPos;
                menu->listPos = listPos;
                menu->cursorPos = cursorPos;
                menu->movingItems = TRUE;

                return LIST_NOTHING_CHOSEN;
            }
        }
    }

    u32 input = ListMenu_ProcessInput(listMenu);
    u16 prevPos = menu->trueCursorPos;

    ListMenu_CalcTrueCursorPos(listMenu, &menu->trueCursorPos);

    if (prevPos != menu->trueCursorPos) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    switch (input) {
    case LIST_NOTHING_CHOSEN:
        break;
    case LIST_CANCEL:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        break;
    default:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        break;
    }

    return input;
}

void UndergroundItemListMenu_Free(UndergroundItemListMenu *menu, u16 *outListPos, u16 *outCursorPos)
{
    ListMenu_Free(menu->listMenu, outListPos, outCursorPos);

    if (menu->moveItemCallback) {
        ColoredArrow_Free(menu->arrow);
        Heap_Free(menu->choices);
    }

    Heap_Free(menu);
}
