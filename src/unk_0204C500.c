#include "unk_0204C500.h"

#include <nitro.h>
#include <string.h>

#include "generated/catching_show_points_category.h"

#include "struct_decls/pokedexdata_decl.h"
#include "struct_decls/struct_02024440_decl.h"
#include "struct_decls/struct_020797DC_decl.h"

#include "savedata/save_table.h"

#include "catching_show.h"
#include "field_script_context.h"
#include "heap.h"
#include "inlines.h"
#include "pokedex.h"
#include "pokemon.h"
#include "save_player.h"
#include "system_flags.h"
#include "trainer_info.h"
#include "unk_0202EEC0.h"
#include "unk_0202F180.h"
#include "unk_020797C8.h"
#include "unk_02092494.h"
#include "vars_flags.h"

BOOL ScrCmd_253(ScriptContext *param0)
{
    VarsFlags *v0 = SaveData_GetVarsFlags(param0->fieldSystem->saveData);
    u16 v1 = ScriptContext_GetVar(param0);

    if (v1 == 0) {
        SystemFlag_SetInPalPark(v0);
        CatchingShow_Start(param0->fieldSystem);
    } else if (v1 == 1) {
        SystemFlag_ClearInPalPark(v0);
        CatchingShow_End(param0->fieldSystem);
    } else {
        GF_ASSERT(0);
    }

    return 0;
}

BOOL ScrCmd_254(ScriptContext *ctx)
{
    PalParkTransfer *transferData = SaveData_PalParkTransfer(ctx->fieldSystem->saveData);
    Pokemon *v1 = Pokemon_New(HEAP_ID_FIELD_TASK);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    if (GetPalParkTransferMonCount(transferData) == CATCHING_SHOW_MONS) {
        *destVar = 1;
    } else {
        *destVar = 0;
    }

    Heap_FreeToHeap(v1);
    return FALSE;
}

BOOL ScrCmd_255(ScriptContext *param0)
{
    PalParkTransfer *transferData = SaveData_PalParkTransfer(param0->fieldSystem->saveData);
    PCBoxes *v1 = SaveData_PCBoxes(param0->fieldSystem->saveData);
    Pokemon *v2 = Pokemon_New(HEAP_ID_FIELD_TASK);
    TrainerInfo *v3 = SaveData_GetTrainerInfo(param0->fieldSystem->saveData);
    Pokedex *pokedex = SaveData_GetPokedex(param0->fieldSystem->saveData);
    BOOL v5;
    int v6;

    for (v6 = 0; v6 < 6; v6++) {
        TransferDataToMon(transferData, v6, v2);
        sub_0209304C(v2, v3, 2, 0, 32);
        v5 = StorePokemonInPc(v1, Pokemon_GetBoxPokemon(v2));
        GF_ASSERT(v5);
        sub_0202F180(param0->fieldSystem->saveData, v2);
    }

    Heap_FreeToHeap(v2);
    sub_0202EF04(transferData);

    return 0;
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
