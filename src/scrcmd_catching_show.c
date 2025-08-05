#include "scrcmd_catching_show.h"

#include <nitro.h>
#include <string.h>

#include "generated/catching_show_points_category.h"

#include "struct_decls/pc_boxes_decl.h"
#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_02024440_decl.h"

#include "savedata/save_table.h"

#include "catching_show.h"
#include "field_script_context.h"
#include "heap.h"
#include "inlines.h"
#include "pc_boxes.h"
#include "pokedex.h"
#include "pokemon.h"
#include "save_player.h"
#include "system_flags.h"
#include "trainer_info.h"
#include "trainer_memo.h"
#include "unk_0202EEC0.h"
#include "unk_0202F180.h"
#include "vars_flags.h"

BOOL ScrCmd_SetClearInCatchingShowFlag(ScriptContext *ctx)
{
    VarsFlags *varsFlags = SaveData_GetVarsFlags(ctx->fieldSystem->saveData);
    u16 setClear = ScriptContext_GetVar(ctx);

    if (setClear == 0) {
        SystemFlag_SetInPalPark(varsFlags);
        CatchingShow_Start(ctx->fieldSystem);
    } else if (setClear == 1) {
        SystemFlag_ClearInPalPark(varsFlags);
        CatchingShow_End(ctx->fieldSystem);
    } else {
        GF_ASSERT(0);
    }

    return FALSE;
}

BOOL ScrCmd_CheckHasEnoughMonForCatchingShow(ScriptContext *ctx)
{
    PalParkTransfer *transferData = SaveData_GetPalParkTransfer(ctx->fieldSystem->saveData);
    Pokemon *dummy = Pokemon_New(HEAP_ID_FIELD_TASK);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    if (GetPalParkTransferMonCount(transferData) == CATCHING_SHOW_MONS) {
        *destVar = TRUE;
    } else {
        *destVar = FALSE;
    }

    Heap_Free(dummy);
    return FALSE;
}

BOOL ScrCmd_MoveCatchingShowMonsToPCBoxes(ScriptContext *ctx)
{
    PalParkTransfer *transferData = SaveData_GetPalParkTransfer(ctx->fieldSystem->saveData);
    PCBoxes *pcBoxes = SaveData_GetPCBoxes(ctx->fieldSystem->saveData);
    Pokemon *mon = Pokemon_New(HEAP_ID_FIELD_TASK);
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(ctx->fieldSystem->saveData);
    Pokedex *pokedex = SaveData_GetPokedex(ctx->fieldSystem->saveData);
    BOOL success;

    for (int i = 0; i < CATCHING_SHOW_MONS; i++) {
        TransferDataToMon(transferData, i, mon);
        UpdateMonStatusAndTrainerInfo(mon, trainerInfo, 2, 0, HEAP_ID_FIELD_TASK);
        success = PCBoxes_TryStoreBoxMon(pcBoxes, Pokemon_GetBoxPokemon(mon));
        GF_ASSERT(success);
        SaveData_UpdateCatchRecords(ctx->fieldSystem->saveData, mon);
    }

    Heap_Free(mon);
    ClearPalParkTransferPokemonData(transferData);

    return FALSE;
}

BOOL ScrCmd_CalcCatchingShowPoints(ScriptContext *ctx)
{
    u16 pointsCategory = ScriptContext_GetVar(ctx);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    switch (pointsCategory) {
    case CATCHING_SHOW_CATCHING_POINTS:
        *destVar = CatchingShow_CalcCatchingPoints(ctx->fieldSystem);
        break;
    case CATCHING_SHOW_TIME_POINTS:
        *destVar = CatchingShow_GetTimePoints(ctx->fieldSystem);
        break;
    case CATCHING_SHOW_TYPE_POINTS:
        *destVar = CatchingShow_GetTypePoints(ctx->fieldSystem);
        break;
    case CATCHING_SHOW_TOTAL_POINTS:
        *destVar = CatchingShow_CalcCatchingPoints(ctx->fieldSystem) + CatchingShow_GetTypePoints(ctx->fieldSystem) + CatchingShow_GetTimePoints(ctx->fieldSystem);
        break;
    }

    return FALSE;
}
