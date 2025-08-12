#include "overlay019/box_menu.h"

#include <nitro.h>
#include <string.h>

#include "constants/items.h"

#include "struct_decls/pc_boxes_decl.h"

#include "overlay019/box_app_manager.h"
#include "overlay019/box_application.h"
#include "overlay019/pc_mon_preview.h"
#include "overlay019/struct_box_menu.h"

#include "enums.h"
#include "pc_boxes.h"
#include "sound_playback.h"
#include "system.h"

static void BoxMenu_ClearMenuItems(BoxMenu *menu);
static void BoxMenu_AddMenuItem(BoxMenu *menu, enum BoxMenuItem menuItem);

void BoxMenu_FillYesNo(BoxApplication *boxApp, u32 menuItemIndex)
{
    BoxMenu *menu = &boxApp->boxMenu;

    BoxMenu_ClearMenuItems(menu);
    BoxMenu_AddMenuItem(menu, BOX_MENU_YES);
    BoxMenu_AddMenuItem(menu, BOX_MENU_NO);

    menu->selectedMenuItemIndex = menuItemIndex;
    menu->unused = 0;
}

void BoxMenu_FillTopLevelMenuItems(BoxApplication *boxApp)
{
    BoxMenu *menu = &(boxApp->boxMenu);

    BoxMenu_ClearMenuItems(menu);
    menu->unused = 1;

    switch (BoxApp_GetBoxMode(boxApp)) {
    case PC_MODE_MOVE_MONS:
    default:
        if (BoxApp_GetPreviewMonSource(boxApp) == PREVIEW_MON_IN_CURSOR) {
            BoxMenu_AddMenuItem(menu, BoxApp_IsMonUnderCursor(boxApp) ? BOX_MENU_SHIFT : BOX_MENU_PLACE);
        } else {
            BoxMenu_AddMenuItem(menu, BOX_MENU_MOVE);
        }

        BoxMenu_AddMenuItem(menu, BOX_MENU_SUMMARY);

        const PCMonPreview *preview = BoxApp_GetPCMonPreview(boxApp);

        if (preview->isEgg == FALSE) {
            BoxMenu_AddMenuItem(menu, BOX_MENU_ITEM);
        }

        BoxMenu_AddMenuItem(menu, (BoxApp_GetCursorLocation(boxApp) == CURSOR_IN_BOX) ? BOX_MENU_WITHDRAW : BOX_MENU_STORE);
        BoxMenu_AddMenuItem(menu, BOX_MENU_MARK);
        BoxMenu_AddMenuItem(menu, BOX_MENU_RELEASE);
        BoxMenu_AddMenuItem(menu, BOX_MENU_CANCEL);
        break;
    case PC_MODE_DEPOSIT:
        BoxMenu_AddMenuItem(menu, BOX_MENU_STORE);
        BoxMenu_AddMenuItem(menu, BOX_MENU_SUMMARY);
        BoxMenu_AddMenuItem(menu, BOX_MENU_MARK);
        BoxMenu_AddMenuItem(menu, BOX_MENU_RELEASE);
        BoxMenu_AddMenuItem(menu, BOX_MENU_CANCEL);
        break;
    case PC_MODE_WITHDRAW:
        BoxMenu_AddMenuItem(menu, BOX_MENU_WITHDRAW);
        BoxMenu_AddMenuItem(menu, BOX_MENU_SUMMARY);
        BoxMenu_AddMenuItem(menu, BOX_MENU_MARK);
        BoxMenu_AddMenuItem(menu, BOX_MENU_RELEASE);
        BoxMenu_AddMenuItem(menu, BOX_MENU_CANCEL);
        break;
    case PC_MODE_COMPARE:
        BoxMenu_AddMenuItem(menu, (BoxApp_GetCompareMonSlot(boxApp) == 0) ? BOX_MENU_SET_ON_LEFT : BOX_MENU_SET_ON_RIGHT);
        BoxMenu_AddMenuItem(menu, (BoxApp_GetCursorLocation(boxApp) == CURSOR_IN_BOX) ? BOX_MENU_WITHDRAW : BOX_MENU_STORE);
        BoxMenu_AddMenuItem(menu, BOX_MENU_MARK);
        BoxMenu_AddMenuItem(menu, BOX_MENU_CANCEL);
    }
}

void BoxMenu_FillItemsMenu(BoxApplication *boxApp)
{
    BoxMenu *menu;
    u32 cursorItem, monItem;

    menu = &(boxApp->boxMenu);
    cursorItem = BoxApp_GetCursorItem(boxApp);
    monItem = BoxApp_GetPreviewedMonHeldItem(boxApp);

    BoxMenu_ClearMenuItems(menu);
    menu->unused = 1;

    if (cursorItem != ITEM_NONE) {
        if (monItem != ITEM_NONE) {
            BoxMenu_AddMenuItem(menu, BOX_MENU_SWITCH);
        } else {
            BoxMenu_AddMenuItem(menu, BOX_MENU_GIVE);
        }

        BoxMenu_AddMenuItem(menu, BOX_MENU_BAG);
        BoxMenu_AddMenuItem(menu, BOX_MENU_INFO);
    } else {
        if (monItem != ITEM_NONE) {
            BoxMenu_AddMenuItem(menu, BOX_MENU_TAKE);
            BoxMenu_AddMenuItem(menu, BOX_MENU_BAG);
            BoxMenu_AddMenuItem(menu, BOX_MENU_INFO);
        } else {
            BoxMenu_AddMenuItem(menu, BOX_MENU_GIVE);
        }
    }

    BoxMenu_AddMenuItem(menu, BOX_MENU_ITEMS_CANCEL);
}

void BoxMenu_FillHeaderMenu(BoxApplication *boxApp)
{
    BoxMenu *menu = &(boxApp->boxMenu);
    const PCBoxes *pcBoxes = BoxApp_GetPCBoxes(boxApp);

    BoxMenu_ClearMenuItems(menu);
    BoxMenu_AddMenuItem(menu, BOX_MENU_JUMP);

    if (BoxApp_GetBoxMode(boxApp) != PC_MODE_COMPARE) {
        BoxMenu_AddMenuItem(menu, BOX_MENU_WALLPAPER);
        BoxMenu_AddMenuItem(menu, BOX_MENU_NAME);
    }

    BoxMenu_AddMenuItem(menu, BOX_MENU_HEADER_CANCEL);

    menu->unused = 2;
}

void BoxMenu_FillWallpaperMenu(BoxApplication *boxApp, enum BoxMenuItem menuItem)
{
    BoxMenu *menu = &(boxApp->boxMenu);
    const PCBoxes *pcBoxes = BoxApp_GetPCBoxes(boxApp);
    u32 numUnlockedWallpapers;

    BoxMenu_ClearMenuItems(menu);
    BoxMenu_AddMenuItem(menu, BOX_MENU_SCENERY_1);
    BoxMenu_AddMenuItem(menu, BOX_MENU_SCENERY_2);
    BoxMenu_AddMenuItem(menu, BOX_MENU_SCENERY_3);
    BoxMenu_AddMenuItem(menu, BOX_MENU_ETCETERA);

    numUnlockedWallpapers = PCBoxes_CountUnlockedWallpapers(pcBoxes);

    if (numUnlockedWallpapers > 0) {
        BoxMenu_AddMenuItem(menu, BOX_MENU_FRIENDS_1);
    }

    if (numUnlockedWallpapers > 4) {
        BoxMenu_AddMenuItem(menu, BOX_MENU_FRIENDS_2);
    }

    menu->unused = 3;

    if (menuItem >= BOX_MENU_FIRST_WALLPAPER_PAGE && menuItem <= BOX_MENU_LAST_WALLPAPER_PAGE) {
        menu->selectedMenuItemIndex = menuItem - BOX_MENU_FIRST_WALLPAPER_PAGE;
    } else {
        GF_ASSERT(0);
    }
}

void BoxMenu_FillWallpaperSelectionMenu(BoxApplication *boxApp, enum BoxMenuItem menuItem)
{
    static const u16 sWallpaperPages[][MAX_WALLPAPERS_PER_PAGE] = {
        { BOX_MENU_FOREST, BOX_MENU_CITY, BOX_MENU_DESERT, BOX_MENU_SAVANNA },
        { BOX_MENU_CRAG, BOX_MENU_VOLCANO, BOX_MENU_SNOW, BOX_MENU_CAVE },
        { BOX_MENU_BEACH, BOX_MENU_SEAFLOOR, BOX_MENU_RIVER, BOX_MENU_SKY },
        { BOX_MENU_POKECENTER, BOX_MENU_MACHINE, BOX_MENU_CHECKS, BOX_MENU_SIMPLE },
    };
    BoxMenu *menu = &(boxApp->boxMenu);
    const PCBoxes *pcBoxes = BoxApp_GetPCBoxes(boxApp);
    int i;

    BoxMenu_ClearMenuItems(menu);

    if (menuItem >= BOX_MENU_FIRST_WALLPAPER_PAGE && menuItem <= BOX_MENU_LAST_DEFAULT_WALLPAPER_PAGE) {
        menuItem -= BOX_MENU_FIRST_WALLPAPER_PAGE;

        for (i = 0; i < MAX_WALLPAPERS_PER_PAGE; i++) {
            BoxMenu_AddMenuItem(menu, sWallpaperPages[menuItem][i]);
        }
    } else { // unlockable wallpapers
        int firstUnlockedWallpaperPageCount = 0;
        int addedWallpaperCount = 0;

        if (menuItem == BOX_MENU_FRIENDS_2) {
            firstUnlockedWallpaperPageCount = 4;
        }

        for (i = 0; i < MAX_UNLOCKABLE_WALLPAPERS; i++) {
            if (PCBoxes_CheckHasUnlockedWallpaper(pcBoxes, i)) {
                if (firstUnlockedWallpaperPageCount) {
                    firstUnlockedWallpaperPageCount--;
                } else {
                    BoxMenu_AddMenuItem(menu, BOX_MENU_FIRST_UNLOCKABLE_WALLPAPER + i);

                    if (++addedWallpaperCount >= MAX_WALLPAPERS_PER_PAGE) {
                        break;
                    }
                }
            }
        }
    }

    menu->unused = 3;
}

void BoxMenu_FillMarkingsMenu(BoxApplication *boxApp)
{
    BoxMenu *menu = &(boxApp->boxMenu);
    BoxMenu_ClearMenuItems(menu);

    menu->unused = 4;
    menu->markings = boxApp->pcMonPreview.markings;

    BoxMenu_AddMenuItem(menu, BOX_MENU_CIRCLE);
    BoxMenu_AddMenuItem(menu, BOX_MENU_TRIANGLE);
    BoxMenu_AddMenuItem(menu, BOX_MENU_SQUARE);
    BoxMenu_AddMenuItem(menu, BOX_MENU_HEART);
    BoxMenu_AddMenuItem(menu, BOX_MENU_STAR);
    BoxMenu_AddMenuItem(menu, BOX_MENU_DIAMOND);
    BoxMenu_AddMenuItem(menu, BOX_MENU_CONFIRM);
    BoxMenu_AddMenuItem(menu, BOX_MENU_MARK_CANCEL);
}

void BoxMenu_ToggleMarking(BoxApplication *boxApp, u32 marking)
{
    BoxMenu *menu = &(boxApp->boxMenu);
    menu->markings ^= (1 << marking);
}

static void BoxMenu_ClearMenuItems(BoxMenu *menu)
{
    menu->totalMenuItems = 0;
    menu->selectedMenuItemIndex = 0;
}

static void BoxMenu_AddMenuItem(BoxMenu *menu, enum BoxMenuItem menuItem)
{
    if (menu->totalMenuItems < MAX_MENU_ITEMS) {
        menu->menuItems[menu->totalMenuItems++] = menuItem;
    }
}

enum BoxMenuItem BoxMenu_GetMenuNavigation(BoxApplication *boxApp)
{
    BoxMenu *menu = &(boxApp->boxMenu);

    if (JOY_NEW(PAD_KEY_UP)) {
        if (menu->selectedMenuItemIndex) {
            menu->selectedMenuItemIndex--;
            return BOX_MENU_NAVIGATION_UP_DOWN;
        } else if (menu->totalMenuItems >= 3) {
            menu->selectedMenuItemIndex = menu->totalMenuItems - 1;
            return BOX_MENU_NAVIGATION_UP_DOWN;
        }
    }

    if (JOY_NEW(PAD_KEY_DOWN)) {
        if (menu->selectedMenuItemIndex < (menu->totalMenuItems - 1)) {
            menu->selectedMenuItemIndex++;
            return BOX_MENU_NAVIGATION_UP_DOWN;
        } else if (menu->totalMenuItems >= 3) {
            menu->selectedMenuItemIndex = 0;
            return BOX_MENU_NAVIGATION_UP_DOWN;
        }
    }

    if (JOY_NEW(PAD_BUTTON_B)) {
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        return BOX_MENU_NAVIGATION_B;
    }

    if (JOY_NEW(PAD_BUTTON_A)) {
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        return menu->menuItems[menu->selectedMenuItemIndex];
    }

    return BOX_MENU_NAVIGATION_NONE;
}

enum BoxMenuItem BoxMenu_GetSelectedMenuItem(BoxApplication *boxApp)
{
    BoxMenu *menu = &(boxApp->boxMenu);
    return menu->menuItems[menu->selectedMenuItemIndex];
}

enum BoxMenuItem BoxMenu_GetDefaultMenuItem(BoxApplication *boxApp)
{
    BoxMenu *menu = &(boxApp->boxMenu);
    return menu->menuItems[0];
}
