#ifndef POKEPLATINUM_POKEDEX_UPDATER_H
#define POKEPLATINUM_POKEDEX_UPDATER_H

#include "applications/pokedex/pokedex_data_manager.h"
#include "applications/pokedex/pokedex_graphics_manager.h"

#include "heap.h"

typedef BOOL (*PokedexDataFunction)(PokedexDataManager *dataMan, void *data);

typedef BOOL (*PokedexGraphicsFunction)(void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);

typedef struct PokedexUpdater {
    void *pageData;
    void *pageGraphics;
    int state;
    PokedexDataManager dataMan;
    PokedexDataFunction dataFunc[3];
    PokedexGraphicsManager graphicsMan;
    PokedexGraphicsFunction graphicsFunc[3];
    enum HeapID heapID;
} PokedexUpdater;

typedef struct PokedexUpdaterTemplate {
    void *pageData;
    void *pageGraphics;
    const PokedexDataFunction *dataFunc;
    const PokedexGraphicsFunction *graphicsFunc;
} PokedexUpdaterTemplate;

PokedexUpdater *PokedexUpdater_New(enum HeapID heapID);
void PokedexUpdater_PopulateUpdater(PokedexUpdater *pokedexUpdater, const PokedexUpdaterTemplate *pokedexUpdaterTemplate);
BOOL PokedexUpdater_UpdateData(PokedexUpdater *pokedexUpdater);
BOOL PokedexUpdater_UpdateGraphics(PokedexUpdater *pokedexUpdater);
void PokedexUpdater_SetDataUnchanged(PokedexUpdater *pokedexUpdater, BOOL unchanged);
void PokedexUpdater_DataExit(PokedexUpdater *pokedexUpdater);
BOOL PokedexUpdater_IsPageExited(PokedexUpdater *pokedexUpdater);
BOOL PokedexUpdater_IsPageDataActive(PokedexUpdater *pokedexUpdater);

#endif // POKEPLATINUM_POKEDEX_UPDATER_H
