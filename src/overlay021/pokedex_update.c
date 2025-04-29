#include "overlay021/pokedex_update.h"

#include <nitro.h>
#include <string.h>

#include "overlay021/pokedex_updater.h"

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

PokedexUpdater *PokedexUpdate_InitUpdater(enum HeapId heapID)
{
    PokedexUpdater *pokedexUpdater = Heap_AllocFromHeap(heapID, sizeof(PokedexUpdater));

    GF_ASSERT(pokedexUpdater);
    memset(pokedexUpdater, 0, sizeof(PokedexUpdater));

    pokedexUpdater->state = PAGE_STATE_EXIT;
    pokedexUpdater->heapID = heapID;

    return pokedexUpdater;
}

void PokedexUpdate_PopulateUpdater(PokedexUpdater *pokedexUpdater, const PokedexUpdaterInput *pokedexUpdaterInput)
{
    GF_ASSERT(pokedexUpdater);
    GF_ASSERT(pokedexUpdaterInput);
    GF_ASSERT(PokedexUpdate_IsPageExited(pokedexUpdater));

    pokedexUpdater->pageData = pokedexUpdaterInput->pageData;
    pokedexUpdater->pageGraphics = pokedexUpdaterInput->pageGraphics;
    pokedexUpdater->state = PAGE_STATE_ENTER;

    ResetDataMan(&pokedexUpdater->dataMan);
    pokedexUpdater->dataMan.heapID = pokedexUpdater->heapID;

    ResetGraphicsMan(&pokedexUpdater->graphicsMan);
    pokedexUpdater->graphicsMan.heapID = pokedexUpdater->heapID;

    pokedexUpdater->dataFunc[0] = pokedexUpdaterInput->dataFunc[0];
    pokedexUpdater->dataFunc[1] = pokedexUpdaterInput->dataFunc[1];
    pokedexUpdater->dataFunc[2] = pokedexUpdaterInput->dataFunc[2];
    pokedexUpdater->graphicsFunc[0] = pokedexUpdaterInput->graphicsFunc[0];
    pokedexUpdater->graphicsFunc[1] = pokedexUpdaterInput->graphicsFunc[1];
    pokedexUpdater->graphicsFunc[2] = pokedexUpdaterInput->graphicsFunc[2];
}

BOOL PokedexUpdate_UpdateData(PokedexUpdater *pokedexUpdater)
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

BOOL PokedexUpdate_UpdateGraphics(PokedexUpdater *pokedexUpdater)
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

void PokedexUpdate_SetDataUnchanged(PokedexUpdater *pokedexUpdater, BOOL unchanged)
{
    pokedexUpdater->dataMan.unchanged = unchanged;
}

void PokedexUpdate_DataExit(PokedexUpdater *pokedexUpdater)
{
    GF_ASSERT(pokedexUpdater);
    pokedexUpdater->dataMan.exit = TRUE;
}

BOOL PokedexUpdate_IsPageExited(PokedexUpdater *pokedexUpdater)
{
    GF_ASSERT(pokedexUpdater);

    return pokedexUpdater->state == PAGE_STATE_EXIT;
}

BOOL PokedexUpdate_IsPageDataActive(PokedexUpdater *pokedexUpdater)
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
