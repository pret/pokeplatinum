#ifndef POKEPLATINUM_APPLICATIONS_PC_BOXES_MENU_H
#define POKEPLATINUM_APPLICATIONS_PC_BOXES_MENU_H

#include "applications/pc_boxes/defs.h"

#define BOX_YES_NO_DEFAULT_YES 0
#define BOX_YES_NO_DEFAULT_NO  1

void BoxMenu_FillYesNo(BoxApplication *boxApp, u32 menuItemIndex);
void BoxMenu_FillTopLevelMenuItems(BoxApplication *boxApp);
void BoxMenu_FillItemsMenu(BoxApplication *boxApp);
void BoxMenu_FillHeaderMenu(BoxApplication *boxApp);
void BoxMenu_FillWallpaperMenu(BoxApplication *boxApp, enum BoxMenuItem menuItem);
void BoxMenu_FillWallpaperSelectionMenu(BoxApplication *boxApp, enum BoxMenuItem menuItem);
void BoxMenu_FillMarkingsMenu(BoxApplication *boxApp);
void BoxMenu_ToggleMarking(BoxApplication *boxApp, u32 marking);
enum BoxMenuItem BoxMenu_GetMenuNavigation(BoxApplication *boxApp);
enum BoxMenuItem BoxMenu_GetSelectedMenuItem(BoxApplication *boxApp);
enum BoxMenuItem BoxMenu_GetDefaultMenuItem(BoxApplication *boxApp);

#endif // POKEPLATINUM_APPLICATIONS_PC_BOXES_MENU_H
