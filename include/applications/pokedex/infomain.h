#ifndef POKEPLATINUM_POKEDEX_INFOMAIN_H
#define POKEPLATINUM_POKEDEX_INFOMAIN_H

/**
 * Animation modes for Pokedex info screen transitions.
 * Used by both the default language and multi-language info screens.
 */
enum AnimationMode {
    ANIM_POSITION_BLEND = 0, // Animate position and blend transparency
    ANIM_BLEND,              // Animate blend transparency only
    ANIM_POSITION,           // Animate position only
};

#include "applications/pokedex/infomain_state.h"
#include "applications/pokedex/pokedex_app.h"
#include "applications/pokedex/pokedex_text_manager.h"
#include "applications/pokedex/struct_ov21_021E68F4.h"

#include "bg_window.h"
#include "heap.h"

void InfoMain_InitScreen(PokedexScreenManager *screenManager, PokedexApp *pokedexApp, enum HeapID heapID);
void InfoMain_FreeScreen(PokedexScreenManager *screenManager);
BOOL InfoMain_SetDisplayPosition(InfoMainState *displayState, int unused);
BOOL InfoMain_SetEntryOffset(InfoMainState *displayState, int entryOffset);
void InfoMain_RenderHeightWeightEntry(Window *window, int species, enum HeapID heapID, int entryOffset, u32 textColor);
int PokedexGraphics_GetAnimIDfromType(int monType);
Window *InfoMain_CreateCategoryWindow(PokedexTextManager *textMan, int species, int heapID);

#endif // POKEPLATINUM_POKEDEX_INFOMAIN_H
