#ifndef POKEPLATINUM_POKEDEX_INFOMAIN_H
#define POKEPLATINUM_POKEDEX_INFOMAIN_H

/**
 * Animation modes for Pokedex info screen transitions.
 * Used by both the default language and multi-language info screens.
 */
enum AnimationMode {
    ANIM_POSITION_BLEND = 0, // Animate position and blend transparency
    ANIM_BLEND, // Animate blend transparency only
    ANIM_POSITION, // Animate position only
};

#include "applications/pokedex/pokedex_app.h"
#include "applications/pokedex/pokedex_sort_data.h"
#include "applications/pokedex/pokedex_text_manager.h"
#include "applications/pokedex/struct_ov21_021E68F4.h"

#include "bg_window.h"
#include "heap.h"

/**
 * State information for the Pokedex info main screen.
 */
typedef struct InfoMainState {
    int *displayWorkData; // Work data pointer set from ov21_021D138C
    PokedexSortData *sortData; // Pokemon sort/listing data
    int displayPositionX; // X coordinate for display position animation
    int displayPositionY; // Y coordinate for display position animation
    const PokedexScreenManager *screenManager; // Screen manager reference
    enum AnimationMode animationMode;
    int entryOffset; // Dex entry offset (0 = current entry)
    BOOL playCry; // Flag to play Pokemon cry
} InfoMainState;

void InfoMain_InitScreen(PokedexScreenManager *screenManager, PokedexApp *pokedexApp, enum HeapID heapID);
void InfoMain_FreeScreen(PokedexScreenManager *screenManager);
BOOL InfoMain_SetDisplayPosition(InfoMainState *displayState, int unused);
BOOL InfoMain_SetEntryOffset(InfoMainState *displayState, int entryOffset);
void InfoMain_RenderHeightWeightEntry(Window *window, int species, enum HeapID heapID, int entryOffset, u32 textColor);
int PokedexGraphics_GetAnimIDfromType(int monType);
Window *InfoMain_CreateCategoryWindow(PokedexTextManager *textMan, enum Species species, enum HeapID heapID);

#endif // POKEPLATINUM_POKEDEX_INFOMAIN_H
