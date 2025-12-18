#ifndef POKEPLATINUM_APPLICATIONS_POFFIN_CASE_SPRITES_H
#define POKEPLATINUM_APPLICATIONS_POFFIN_CASE_SPRITES_H

#include "applications/poffin_case/manager.h"

void PoffinManager_InitSpriteSystem(PoffinManager *app);
void PoffinManager_FreeSpriteSystem(PoffinManager *app);
void PoffinManager_UpdateSprites(PoffinManager *app);
void PoffinCaseApp_UpdateListSprites(PoffinManager *app, BOOL actionMenuOpen);

#endif // POKEPLATINUM_APPLICATIONS_POFFIN_CASE_SPRITES_H
