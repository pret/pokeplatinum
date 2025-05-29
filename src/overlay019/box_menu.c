#include "overlay019/box_menu.h"

#include <nitro.h>
#include <string.h>

#include "constants/items.h"

#include "struct_decls/pc_boxes_decl.h"

#include "overlay019/ov19_021D0D80.h"
#include "overlay019/pc_mon_preview.h"
#include "overlay019/struct_box_menu.h"
#include "overlay019/struct_ov19_021D4DF0.h"

#include "enums.h"
#include "pc_boxes.h"
#include "sound_playback.h"
#include "system.h"

static void BoxMenu_ClearMenuItems(BoxMenu *menu);
static void BoxMenu_AddMenuItem(BoxMenu *menu, BoxMenuItem menuItem);

void BoxMenu_FillYesNo(UnkStruct_ov19_021D4DF0 *param0, u32 menuItemIndex)
{
    BoxMenu *menu = &(param0->boxMenu);

    BoxMenu_ClearMenuItems(menu);
    BoxMenu_AddMenuItem(menu, BOX_MENU_YES);
    BoxMenu_AddMenuItem(menu, BOX_MENU_NO);

    menu->selectedMenuItemIndex = menuItemIndex;
    menu->unk_23 = 0;
}

void BoxMenu_FillTopLevelMenuItems(UnkStruct_ov19_021D4DF0 *param0)
{
    BoxMenu *menu = &(param0->boxMenu);

    BoxMenu_ClearMenuItems(menu);
    menu->unk_23 = 1;

    switch (ov19_GetBoxMode(param0)) {
    case PC_MODE_MOVE_MONS:
    default:
        if (ov19_GetPreviewMonSource(param0) == PREVIEW_MON_IN_CURSOR) {
            BoxMenu_AddMenuItem(menu, ov19_IsMonUnderCursor(param0) ? BOX_MENU_SHIFT : BOX_MENU_PLACE);
        } else {
            BoxMenu_AddMenuItem(menu, BOX_MENU_MOVE);
        }

        BoxMenu_AddMenuItem(menu, BOX_MENU_SUMMARY);

        {
            const PCMonPreview *preview = ov19_GetPCMonPreview(param0);

            if (preview->isEgg == FALSE) {
                BoxMenu_AddMenuItem(menu, BOX_MENU_ITEM);
            }
        }

        BoxMenu_AddMenuItem(menu, (ov19_GetCursorLocation(param0) == CURSOR_IN_BOX) ? BOX_MENU_WITHDRAW : BOX_MENU_STORE);
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
        BoxMenu_AddMenuItem(menu, (ov19_GetCompareMonSlot(param0) == 0) ? BOX_MENU_SET_ON_LEFT : BOX_MENU_SET_ON_RIGHT);
        BoxMenu_AddMenuItem(menu, (ov19_GetCursorLocation(param0) == CURSOR_IN_BOX) ? BOX_MENU_WITHDRAW : BOX_MENU_STORE);
        BoxMenu_AddMenuItem(menu, BOX_MENU_MARK);
        BoxMenu_AddMenuItem(menu, BOX_MENU_CANCEL);
    }
}

void BoxMenu_FillItemsMenu(UnkStruct_ov19_021D4DF0 *param0)
{
    BoxMenu *menu;
    u32 cursorItem, monItem;

    menu = &(param0->boxMenu);
    cursorItem = ov19_GetCursorItem(param0);
    monItem = ov19_GetPreviewedMonHeldItem(param0);

    BoxMenu_ClearMenuItems(menu);
    menu->unk_23 = 1;

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

void BoxMenu_FillHeaderMenu(UnkStruct_ov19_021D4DF0 *param0)
{
    BoxMenu *menu = &(param0->boxMenu);
    const PCBoxes *unused = ov19_GetPCBoxes(param0);

    BoxMenu_ClearMenuItems(menu);
    BoxMenu_AddMenuItem(menu, BOX_MENU_JUMP);

    if (ov19_GetBoxMode(param0) != PC_MODE_COMPARE) {
        BoxMenu_AddMenuItem(menu, BOX_MENU_WALLPAPER);
        BoxMenu_AddMenuItem(menu, BOX_MENU_NAME);
    }

    BoxMenu_AddMenuItem(menu, BOX_MENU_HEADER_CANCEL);

    menu->unk_23 = 2;
}

void BoxMenu_FillWallpaperMenu(UnkStruct_ov19_021D4DF0 *param0, BoxMenuItem menuItem)
{
    BoxMenu *menu = &(param0->boxMenu);
    const PCBoxes *pcBoxes = ov19_GetPCBoxes(param0);
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

    menu->unk_23 = 3;

    if ((menuItem >= BOX_MENU_SCENERY_1) && (menuItem <= BOX_MENU_FRIENDS_2)) {
        menu->selectedMenuItemIndex = menuItem - BOX_MENU_SCENERY_1;
    } else {
        GF_ASSERT(0);
    }
}

void BoxMenu_FillWallpaperSelectionMenu(UnkStruct_ov19_021D4DF0 *param0, BoxMenuItem menuItem)
{
    static const u16 v0[][4] = {
        { BOX_MENU_FOREST, BOX_MENU_CITY, BOX_MENU_DESERT, BOX_MENU_SAVANNA },
        { BOX_MENU_CRAG, BOX_MENU_VOLCANO, BOX_MENU_SNOW, BOX_MENU_CAVE },
        { BOX_MENU_BEACH, BOX_MENU_SEAFLOOR, BOX_MENU_RIVER, BOX_MENU_SKY },
        { BOX_MENU_POKECENTER, BOX_MENU_MACHINE, BOX_MENU_CHECKS, BOX_MENU_SIMPLE },
    };
    BoxMenu *menu = &(param0->boxMenu);
    const PCBoxes *pcBoxes = ov19_GetPCBoxes(param0);
    int i;

    BoxMenu_ClearMenuItems(menu);

    if ((menuItem >= BOX_MENU_SCENERY_1) && (menuItem <= BOX_MENU_ETCETERA)) {
        menuItem -= BOX_MENU_SCENERY_1;

        for (i = 0; i < 4; i++) {
            BoxMenu_AddMenuItem(menu, v0[menuItem][i]);
        }
    } else {
        int v4 = 0;
        int v5 = 0;

        if (menuItem == BOX_MENU_FRIENDS_2) {
            v4 = 4;
        }

        for (i = 0; i < 8; i++) {
            if (PCBoxes_CheckHasUnlockedWallpaper(pcBoxes, i)) {
                if (v4) {
                    v4--;
                } else {
                    BoxMenu_AddMenuItem(menu, BOX_MENU_DISTORTION + i);

                    if (++v5 >= 4) {
                        break;
                    }
                }
            }
        }
    }

    menu->unk_23 = 3;
}

void BoxMenu_FillMarkingsMenu(UnkStruct_ov19_021D4DF0 *param0)
{
    BoxMenu *menu = &(param0->boxMenu);
    BoxMenu_ClearMenuItems(menu);

    menu->unk_23 = 4;
    menu->markings = param0->pcMonPreview.markings;

    BoxMenu_AddMenuItem(menu, BOX_MENU_CIRCLE);
    BoxMenu_AddMenuItem(menu, BOX_MENU_TRIANGLE);
    BoxMenu_AddMenuItem(menu, BOX_MENU_SQUARE);
    BoxMenu_AddMenuItem(menu, BOX_MENU_HEART);
    BoxMenu_AddMenuItem(menu, BOX_MENU_STAR);
    BoxMenu_AddMenuItem(menu, BOX_MENU_DIAMOND);
    BoxMenu_AddMenuItem(menu, BOX_MENU_CONFIRM);
    BoxMenu_AddMenuItem(menu, BOX_MENU_MARK_CANCEL);
}

void BoxMenu_ToggleMarking(UnkStruct_ov19_021D4DF0 *param0, u32 marking)
{
    BoxMenu *menu = &(param0->boxMenu);
    menu->markings ^= (1 << marking);
}

static void BoxMenu_ClearMenuItems(BoxMenu *menu)
{
    menu->totalMenuItems = 0;
    menu->selectedMenuItemIndex = 0;
}

static void BoxMenu_AddMenuItem(BoxMenu *menu, BoxMenuItem menuItem)
{
    if (menu->totalMenuItems < MAX_MENU_ITEMS) {
        menu->menuItems[menu->totalMenuItems++] = menuItem;
    }
}

BoxMenuItem BoxMenu_GetMenuNavigation(UnkStruct_ov19_021D4DF0 *param0)
{
    BoxMenu *menu = &(param0->boxMenu);

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

BoxMenuItem BoxMenu_GetSelectedMenuItem(UnkStruct_ov19_021D4DF0 *param0)
{
    BoxMenu *menu = &(param0->boxMenu);
    return menu->menuItems[menu->selectedMenuItemIndex];
}

BoxMenuItem BoxMenu_GetDefaultMenuItem(UnkStruct_ov19_021D4DF0 *param0)
{
    BoxMenu *menu = &(param0->boxMenu);
    return menu->menuItems[0];
}
