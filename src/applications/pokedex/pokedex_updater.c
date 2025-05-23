#include "applications/pokedex/pokedex_updater.h"

#include <nitro.h>
#include <string.h>

enum pageState {
    PAGE_STATE_ENTER = 0,
    PAGE_STATE_TRANSITION_IN,
    PAGE_STATE_PAGE_DATA,
    PAGE_STATE_PAGE_GRAPHICS,
    PAGE_STATE_TRANSITION_OUT,
    PAGE_STATE_EXIT
};

static void ResetDataMan(PokedexDataManager *dataMan);
static void ResetGraphicsMan(PokedexGraphicsManager *graphicsMan);
static BOOL RunDataFunction(PokedexDataFunction dataFunc, PokedexDataManager *dataMan, void *data);
static BOOL RunGraphicsFunction(PokedexGraphicsFunction graphicsFunc, void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan);

PokedexUpdater *PokedexUpdater_New(enum HeapId heapID)
{
    PokedexUpdater *pokedexUpdater = Heap_AllocFromHeap(heapID, sizeof(PokedexUpdater));

    GF_ASSERT(pokedexUpdater);
    memset(pokedexUpdater, 0, sizeof(PokedexUpdater));

    pokedexUpdater->state = PAGE_STATE_EXIT;
    pokedexUpdater->heapID = heapID;

    return pokedexUpdater;
}

void PokedexUpdater_PopulateUpdater(PokedexUpdater *pokedexUpdater, const PokedexUpdaterTemplate *pokedexUpdaterTemplate)
{
    GF_ASSERT(pokedexUpdater);
    GF_ASSERT(pokedexUpdaterTemplate);
    GF_ASSERT(PokedexUpdater_IsPageExited(pokedexUpdater));

    pokedexUpdater->pageData = pokedexUpdaterTemplate->pageData;
    pokedexUpdater->pageGraphics = pokedexUpdaterTemplate->pageGraphics;
    pokedexUpdater->state = PAGE_STATE_ENTER;

    ResetDataMan(&pokedexUpdater->dataMan);
    pokedexUpdater->dataMan.heapID = pokedexUpdater->heapID;

    ResetGraphicsMan(&pokedexUpdater->graphicsMan);
    pokedexUpdater->graphicsMan.heapID = pokedexUpdater->heapID;

    pokedexUpdater->dataFunc[0] = pokedexUpdaterTemplate->dataFunc[0];
    pokedexUpdater->dataFunc[1] = pokedexUpdaterTemplate->dataFunc[1];
    pokedexUpdater->dataFunc[2] = pokedexUpdaterTemplate->dataFunc[2];
    pokedexUpdater->graphicsFunc[0] = pokedexUpdaterTemplate->graphicsFunc[0];
    pokedexUpdater->graphicsFunc[1] = pokedexUpdaterTemplate->graphicsFunc[1];
    pokedexUpdater->graphicsFunc[2] = pokedexUpdaterTemplate->graphicsFunc[2];
}

BOOL PokedexUpdater_UpdateData(PokedexUpdater *pokedexUpdater)
{
    BOOL processDone;

    GF_ASSERT(pokedexUpdater);

    switch (pokedexUpdater->state) {
    case PAGE_STATE_ENTER:
        processDone = RunDataFunction(pokedexUpdater->dataFunc[0], &pokedexUpdater->dataMan, pokedexUpdater->pageData);

        if (processDone == TRUE) {
            pokedexUpdater->state++;
            pokedexUpdater->dataMan.state = PAGE_STATE_ENTER;
        }
        break;
    case PAGE_STATE_TRANSITION_IN:
        break;
    case PAGE_STATE_PAGE_DATA:
        processDone = RunDataFunction(pokedexUpdater->dataFunc[1], &pokedexUpdater->dataMan, pokedexUpdater->pageData);

        if (processDone == TRUE) {
            pokedexUpdater->state++;
            pokedexUpdater->dataMan.state = PAGE_STATE_ENTER;
            pokedexUpdater->graphicsMan.state = PAGE_STATE_ENTER;
        }
        break;
    case PAGE_STATE_PAGE_GRAPHICS:
        break;
    case PAGE_STATE_TRANSITION_OUT:
        processDone = RunDataFunction(pokedexUpdater->dataFunc[2], &pokedexUpdater->dataMan, pokedexUpdater->pageData);

        if (processDone == TRUE) {
            pokedexUpdater->state++;
        }
        break;
    case PAGE_STATE_EXIT:
        return TRUE;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    return FALSE;
}

BOOL PokedexUpdater_UpdateGraphics(PokedexUpdater *pokedexUpdater)
{
    BOOL processDone;

    GF_ASSERT(pokedexUpdater);

    switch (pokedexUpdater->state) {
    case PAGE_STATE_ENTER:
        break;
    case PAGE_STATE_TRANSITION_IN:
        processDone = RunGraphicsFunction(pokedexUpdater->graphicsFunc[0], pokedexUpdater->pageGraphics, &pokedexUpdater->graphicsMan, pokedexUpdater->pageData, &pokedexUpdater->dataMan);

        if (processDone == TRUE) {
            pokedexUpdater->state++;
            pokedexUpdater->graphicsMan.state = PAGE_STATE_ENTER;
        }
        break;
    case PAGE_STATE_PAGE_DATA:
        RunGraphicsFunction(pokedexUpdater->graphicsFunc[1], pokedexUpdater->pageGraphics, &pokedexUpdater->graphicsMan, pokedexUpdater->pageData, &pokedexUpdater->dataMan);
        break;
    case PAGE_STATE_PAGE_GRAPHICS:
        processDone = RunGraphicsFunction(pokedexUpdater->graphicsFunc[2], pokedexUpdater->pageGraphics, &pokedexUpdater->graphicsMan, pokedexUpdater->pageData, &pokedexUpdater->dataMan);

        if (processDone == TRUE) {
            pokedexUpdater->state++;
        }
        break;
    case PAGE_STATE_TRANSITION_OUT:
        break;
    case PAGE_STATE_EXIT:
        return TRUE;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    return FALSE;
}

void PokedexUpdater_SetDataUnchanged(PokedexUpdater *pokedexUpdater, BOOL unchanged)
{
    pokedexUpdater->dataMan.unchanged = unchanged;
}

void PokedexUpdater_DataExit(PokedexUpdater *pokedexUpdater)
{
    GF_ASSERT(pokedexUpdater);
    pokedexUpdater->dataMan.exit = TRUE;
}

BOOL PokedexUpdater_IsPageExited(PokedexUpdater *pokedexUpdater)
{
    GF_ASSERT(pokedexUpdater);

    return pokedexUpdater->state == PAGE_STATE_EXIT;
}

BOOL PokedexUpdater_IsPageDataActive(PokedexUpdater *pokedexUpdater)
{
    GF_ASSERT(pokedexUpdater);

    return pokedexUpdater->state == PAGE_STATE_PAGE_DATA;
}

static void ResetDataMan(PokedexDataManager *dataMan)
{
    dataMan->state = PAGE_STATE_ENTER;
    dataMan->pageData = NULL;
    dataMan->exit = FALSE;
}

static void ResetGraphicsMan(PokedexGraphicsManager *graphicsMan)
{
    graphicsMan->state = PAGE_STATE_ENTER;
    graphicsMan->pageGraphics = NULL;
}

static BOOL RunDataFunction(PokedexDataFunction dataFunc, PokedexDataManager *dataMan, void *data)
{
    GF_ASSERT(dataFunc);
    GF_ASSERT(dataMan);

    return dataFunc(dataMan, data);
}

static BOOL RunGraphicsFunction(PokedexGraphicsFunction graphicsFunc, void *graphics, PokedexGraphicsManager *graphicsMan, const void *data, const PokedexDataManager *dataMan)
{
    GF_ASSERT(graphicsFunc);
    GF_ASSERT(graphicsMan);
    GF_ASSERT(dataMan);

    return graphicsFunc(graphics, graphicsMan, data, dataMan);
}
