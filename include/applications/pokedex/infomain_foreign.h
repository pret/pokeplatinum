#ifndef POKEPLATINUM_POKEDEX_INFOMAIN_FOREIGN_H
#define POKEPLATINUM_POKEDEX_INFOMAIN_FOREIGN_H

#include "applications/pokedex/pokedex_app.h"
#include "applications/pokedex/struct_ov21_021E68F4.h"

#include "heap.h"

enum AnimationMode {
    ANIM_MODE_POSITION_BLEND = 0,
    ANIM_MODE_BLEND = 1,
    ANIM_MODE_POSITION = 2,
};

void InfoMainForeign_InitScreen(PokedexScreenManager *screenManager, PokedexApp *pokedexApp, enum HeapID heapID);
void InfoMainForeign_FreeScreen(PokedexScreenManager *screenManager);
void InfoMainForeign_SetDisplayPosition(PokedexScreenManager *screenManager, int posX, int posY);
void InfoMainForeign_SetAnimationMode(PokedexScreenManager *screenManager, enum AnimationMode animationMode);
int InfoMainForeign_GetScreenStateCount(PokedexScreenManager *screenManager);
BOOL InfoMainForeign_SetEntryOffset(PokedexScreenManager *screenManager, int entryOffset);
void InfoMainForeign_SetLanguage(PokedexScreenManager *screenManager, int languageID);

#endif // POKEPLATINUM_POKEDEX_INFOMAIN_FOREIGN_H
