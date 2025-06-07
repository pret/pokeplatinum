#ifndef POKEPLATINUM_BOX_MENU_H
#define POKEPLATINUM_BOX_MENU_H

#include "overlay019/struct_ov19_021D4DF0.h"

void BoxMenu_FillYesNo(UnkStruct_ov19_021D4DF0 *param0, u32 menuItemIndex);
void BoxMenu_FillTopLevelMenuItems(UnkStruct_ov19_021D4DF0 *param0);
void BoxMenu_FillItemsMenu(UnkStruct_ov19_021D4DF0 *param0);
void BoxMenu_FillHeaderMenu(UnkStruct_ov19_021D4DF0 *param0);
void BoxMenu_FillWallpaperMenu(UnkStruct_ov19_021D4DF0 *param0, enum BoxMenuItem menuItem);
void BoxMenu_FillWallpaperSelectionMenu(UnkStruct_ov19_021D4DF0 *param0, enum BoxMenuItem menuItem);
void BoxMenu_FillMarkingsMenu(UnkStruct_ov19_021D4DF0 *param0);
void BoxMenu_ToggleMarking(UnkStruct_ov19_021D4DF0 *param0, u32 marking);
enum BoxMenuItem BoxMenu_GetMenuNavigation(UnkStruct_ov19_021D4DF0 *param0);
enum BoxMenuItem BoxMenu_GetSelectedMenuItem(UnkStruct_ov19_021D4DF0 *param0);
enum BoxMenuItem BoxMenu_GetDefaultMenuItem(UnkStruct_ov19_021D4DF0 *param0);

#endif // POKEPLATINUM_BOX_MENU_H
