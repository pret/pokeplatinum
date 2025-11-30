#include "scrcmd_berry.h"

#include <nitro.h>
#include <string.h>

#include "constants/scrcmd.h"
#include "generated/game_records.h"
#include "generated/trainer_score_events.h"

#include "struct_decls/struct_02061AB4_decl.h"

#include "berry_patch_manager.h"
#include "field_script_context.h"
#include "game_records.h"
#include "inlines.h"
#include "script_manager.h"

BOOL ScrCmd_GetBerryGrowthStage(ScriptContext *ctx)
{
    MapObject **targetObject;
    u16 *varPointer = ScriptContext_GetVarPointer(ctx);

    targetObject = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);
    *varPointer = BerryPatches_GetGrowthStage(ctx->fieldSystem, *targetObject);

    return FALSE;
}

BOOL ScrCmd_GetBerryItemID(ScriptContext *ctx)
{
    MapObject **targetObject = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);
    u16 *varPointer = ScriptContext_GetVarPointer(ctx);

    *varPointer = BerryPatches_GetItemID(ctx->fieldSystem, *targetObject);
    return FALSE;
}

BOOL ScrCmd_GetBerryMulchType(ScriptContext *ctx)
{
    MapObject **targetObject = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);
    u16 *varPointer = ScriptContext_GetVarPointer(ctx);

    *varPointer = BerryPatches_GetMulchItemID(ctx->fieldSystem, *targetObject);
    return FALSE;
}

BOOL ScrCmd_GetBerryMoisture(ScriptContext *ctx)
{
    MapObject **targetObject = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);
    u16 *varPointer = ScriptContext_GetVarPointer(ctx);

    *varPointer = BerryPatches_GetMoisture(ctx->fieldSystem, *targetObject);
    return FALSE;
}

BOOL ScrCmd_GetBerryYield(ScriptContext *ctx)
{
    MapObject **targetObject = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);
    u16 *varPointer = ScriptContext_GetVarPointer(ctx);

    *varPointer = BerryPatches_GetYield(ctx->fieldSystem, *targetObject);
    return FALSE;
}

BOOL ScrCmd_SetBerryMulch(ScriptContext *ctx)
{
    MapObject **targetObject = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);
    u16 mulchItemID = ScriptContext_GetVar(ctx);

    BerryPatches_SetMulchType(ctx->fieldSystem, *targetObject, mulchItemID);
    return FALSE;
}

BOOL ScrCmd_PlantBerry(ScriptContext *ctx)
{
    MapObject **targetObject = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);
    GameRecords *gameRecords = SaveData_GetGameRecords(ctx->fieldSystem->saveData);
    u16 berryItemID = ScriptContext_GetVar(ctx);

    BerryPatches_PlantBerry(ctx->fieldSystem, *targetObject, berryItemID);
    GameRecords_IncrementRecordValue(gameRecords, RECORD_BERRIES_PLANTED);

    return FALSE;
}

BOOL ScrCmd_SetBerryWateringState(ScriptContext *ctx)
{
    switch (ScriptContext_ReadHalfWord(ctx)) {
    case BERRY_WATERING_START:
        BerryPatches_StartWatering(ctx->fieldSystem);
        break;
    case BERRY_WATERING_END:
        BerryPatches_EndWatering(ctx->fieldSystem);
        break;
    default:
        GF_ASSERT(FALSE);
    }

    return TRUE;
}

BOOL ScrCmd_HarvestBerry(ScriptContext *ctx)
{
    GameRecords *gameRecords = SaveData_GetGameRecords(ctx->fieldSystem->saveData);
    MapObject **targetObject = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);

    BerryPatches_HarvestBerry(ctx->fieldSystem, *targetObject);
    GameRecords_IncrementTrainerScore(gameRecords, TRAINER_SCORE_EVENT_BERRY_HARVESTED);

    return FALSE;
}
