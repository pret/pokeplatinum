#ifndef POKEPLATINUM_BOX_MENU_H
#define POKEPLATINUM_BOX_MENU_H

#include "overlay019/box_application.h"

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

#endif // POKEPLATINUM_BOX_MENU_H
