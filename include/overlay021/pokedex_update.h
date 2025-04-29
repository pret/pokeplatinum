#ifndef POKEPLATINUM_POKEDEX_UPDATE_H
#define POKEPLATINUM_POKEDEX_UPDATE_H

#include "overlay021/pokedex_data_function.h"
#include "overlay021/pokedex_graphics_function.h"
#include "overlay021/pokedex_updater.h"

#include "heap.h"

typedef struct {
    void *pageData;
    void *pageGraphics;
    const PokedexDataFunction *dataFunc;
    const PokedexGraphicsFunction *graphicsFunc;
} PokedexUpdaterInput;

PokedexUpdater *PokedexUpdate_InitUpdater(enum HeapId heapID);
void PokedexUpdate_PopulateUpdater(PokedexUpdater *pokedexUpdater, const PokedexUpdaterInput *pokedexUpdaterInput);
BOOL PokedexUpdate_UpdateData(PokedexUpdater *pokedexUpdater);
BOOL PokedexUpdate_UpdateGraphics(PokedexUpdater *pokedexUpdater);
void PokedexUpdate_SetDataUnchanged(PokedexUpdater *pokedexUpdater, BOOL unchanged);
void PokedexUpdate_DataExit(PokedexUpdater *pokedexUpdater);
BOOL PokedexUpdate_IsPageExited(PokedexUpdater *pokedexUpdater);
BOOL PokedexUpdate_IsPageDataActive(PokedexUpdater *pokedexUpdater);

#endif // POKEPLATINUM_POKEDEX_UPDATE_H
