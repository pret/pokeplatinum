#ifndef POKEPLATINUM_APPLICATIONS_POFFIN_CASE_MENUS_H
#define POKEPLATINUM_APPLICATIONS_POFFIN_CASE_MENUS_H

#include "applications/poffin_case/manager.h"

#define BUTTON_ACTION_DESELECT         0
#define BUTTON_ACTION_SELECT           1
#define BUTTON_ACTION_RELEASE_SELECTED 2
#define BUTTON_ACTION_REPRESS_SELECTED 3
#define BUTTON_ACTION_SET_AS_ACTIVE    4

void PoffinManager_InitPoffinList(PoffinManager *app);
void PoffinManager_FreePoffinList(PoffinManager *app, BOOL clear);
void PoffinManager_UpdateFilterButton(PoffinManager *app, u8 poffinType, u8 buttonAction);
void PoffinManager_UpdatePoffinFilter(PoffinManager *app, u8 poffinType);
void PoffinManager_CreateActionMenu(PoffinManager *app);
void PoffinManager_FreeActionMenu(PoffinManager *app);
void PoffinManager_ShowDiscardQuestion(PoffinManager *app);
void PoffinManager_ShowThrownOutMessage(PoffinManager *app);
void PoffinManager_CreateYesNoMenu(PoffinManager *app);
void PoffinManager_PrintHeaderandButtons(PoffinManager *app);

#endif // POKEPLATINUM_APPLICATIONS_POFFIN_CASE_MENUS_H
