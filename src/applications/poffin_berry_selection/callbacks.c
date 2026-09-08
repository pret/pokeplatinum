#include <nitro.h>
#include <string.h>

#include "applications/bag/application.h"
#include "applications/berry_tag.h"
#include "applications/poffin_berry_selection.h"
#include "overlay083/ov83_0223B5A0.h"

#include "bag.h"
#include "bag_context.h"
#include "berry_tag_data.h"
#include "heap.h"
#include "item.h"
#include "overlay_manager.h"

static int PoffinBerrySelection_LoadBagApp(PoffinBerrySelectionData *data);
static int PoffinBerrySelection_RunBagApp(PoffinBerrySelectionData *data);
static int PoffinBerrySelection_LoadBerryTagApp(PoffinBerrySelectionData *data);
static int PoffinBerrySelection_RunBerryTagApp(PoffinBerrySelectionData *data);

int PoffinBerrySelection_GetBerrySelection(PoffinBerrySelectionData *data, int *subState)
{
    switch (*subState) {
    case SUB_STATE_LOAD_BAG_APP:
        *subState = PoffinBerrySelection_LoadBagApp(data);
        break;
    case SUB_STATE_RUN_BAG_APP:
        *subState = PoffinBerrySelection_RunBagApp(data);
        break;
    case SUB_STATE_LOAD_BERRY_TAG_APP:
        *subState = PoffinBerrySelection_LoadBerryTagApp(data);
        break;
    case SUB_STATE_RUN_BERRY_TAG_APP:
        *subState = PoffinBerrySelection_RunBerryTagApp(data);
        break;
    case SUB_STATE_LOAD_POFFIN_COOKING_APP:
        return MAIN_STATE_LOAD_POFFIN_COOKING_APP;
    case SUB_STATE_EXIT:
        return MAIN_STATE_EXIT;
    }

    return MAIN_STATE_GET_BERRY_SELECTION;
}

int PoffinBerrySelection_LoadPoffinCookingApp(PoffinBerrySelectionData *data, int *subState)
{
    FS_EXTERN_OVERLAY(overlay83);

    const ApplicationManagerTemplate appTemplate = {
        ov83_0223B5B0,
        ov83_0223B65C,
        ov83_0223B710,
        FS_OVERLAY_ID(overlay83)
    };

    data->appMan = ApplicationManager_New(&appTemplate, data, data->heapID);
    return MAIN_STATE_RUN_POFFIN_COOKING_APP;
}

int PoffinBerrySelection_RunPoffinCookingApp(PoffinBerrySelectionData *data, int *subState)
{
    if (!PoffinBerrySelection_RunSubApplication(&data->appMan)) {
        return MAIN_STATE_RUN_POFFIN_COOKING_APP;
    }

    return (data->unk_20 == TRUE) ? MAIN_STATE_GET_BERRY_SELECTION : MAIN_STATE_END;
}

int PoffinBerrySelection_End(PoffinBerrySelectionData *data, int *subState)
{
    return MAIN_STATE_EXIT;
}

static int PoffinBerrySelection_LoadBagApp(PoffinBerrySelectionData *data)
{
    FS_EXTERN_OVERLAY(bag);

    const ApplicationManagerTemplate gBagApplicationTemplate = {
        BagApplication_Init,
        BagApplication_Main,
        BagApplication_Exit,
        FS_OVERLAY_ID(bag)
    };
    static const u8 pockets[] = { POCKET_BERRIES, POCKET_LIST_END };

    BagContext *bagContext = BagContext_CreateWithPockets(data->ctx->bag, pockets, data->heapID);
    enum BagApplicationMode mode = (data->isInGroup == TRUE) ? BAG_MODE_POFFIN_MULTIPLAYER : BAG_MODE_POFFIN_SINGLEPLAYER;
    BagContext_Init(bagContext, data->ctx->saveData, mode, data->bagCursor);

    data->appMan = ApplicationManager_New(&gBagApplicationTemplate, bagContext, data->heapID);
    data->buffer = bagContext;

    return SUB_STATE_RUN_BAG_APP;
}

static int PoffinBerrySelection_RunBagApp(PoffinBerrySelectionData *data)
{
    BagContext *bagCtx = NULL;

    if (!PoffinBerrySelection_RunSubApplication(&data->appMan)) {
        return SUB_STATE_RUN_BAG_APP;
    }

    bagCtx = BagContext_New(data->heapID);
    memcpy(bagCtx, data->buffer, BagContext_GetSize());
    Heap_Free(data->buffer);

    data->buffer = NULL;
    data->item = BagContext_GetItem(bagCtx);

    Heap_Free(bagCtx);

    switch (BagContext_GetExitCode(bagCtx)) {
    case BAG_EXIT_CODE_CHECK_BERRY_TAG:
        return SUB_STATE_LOAD_BERRY_TAG_APP;
    case BAG_EXIT_CODE_USE_ITEM:
    case BAG_EXIT_CODE_GIVE_ITEM:
    case BAG_EXIT_CODE_GIVE_FROM_MON_MENU:
    case BAG_EXIT_CODE_POFFIN_BERRY_CHOSEN:
        break;
    case BAG_EXIT_CODE_DONE:
        return SUB_STATE_EXIT;
    default:
        GF_ASSERT(FALSE);
        data->item = ITEM_CHERI_BERRY;
        break;
    }

    GF_ASSERT(Bag_TryRemoveItem(data->ctx->bag, data->item, 1, data->heapID));

    return SUB_STATE_LOAD_POFFIN_COOKING_APP;
}

static int PoffinBerrySelection_LoadBerryTagApp(PoffinBerrySelectionData *data)
{
    Bag *bag = data->ctx->bag;

    FS_EXTERN_OVERLAY(berry_tag);

    const ApplicationManagerTemplate appTemplate = {
        BerryTag_Init,
        BerryTag_Main,
        BerryTag_Exit,
        FS_OVERLAY_ID(berry_tag)
    };

    data->buffer = BerryTagData_Alloc(data->heapID);
    BerryTagData_Add(data->buffer, data->item, TRUE);

    u8 count = 0;
    for (u8 i = 0; i < NUM_BERRIES; i++) {
        u8 item = Item_ForBerryNumber(i);

        if (Bag_CanRemoveItem(bag, item, 1, data->heapID) == TRUE) {
            BerryTagData_Add(data->buffer, item, FALSE);
            count++;
        }
    }

    u8 scroll, index;
    BagCursor_GetFieldPocketPosition(data->bagCursor, POCKET_BERRIES, &index, &scroll);
    BerryTagData_SetScroll(data->buffer, scroll, index, count + 2);

    data->appMan = ApplicationManager_New(&appTemplate, data->buffer, data->heapID);
    return SUB_STATE_RUN_BERRY_TAG_APP;
}

static int PoffinBerrySelection_RunBerryTagApp(PoffinBerrySelectionData *data)
{
    if (!PoffinBerrySelection_RunSubApplication(&data->appMan)) {
        return SUB_STATE_RUN_BERRY_TAG_APP;
    }

    u8 scroll, index;
    BerryTagData_GetScroll(data->buffer, &scroll, &index);
    BagCursor_SetFieldPocketPosition(data->bagCursor, POCKET_BERRIES, index, scroll);

    Heap_Free(data->buffer);
    data->buffer = NULL;

    return SUB_STATE_LOAD_BAG_APP;
}
