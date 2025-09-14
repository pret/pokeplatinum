#include "unk_0204B64C.h"

#include <nitro.h>
#include <string.h>

#include "generated/game_records.h"
#include "generated/trainer_score_events.h"

#include "struct_decls/struct_02061AB4_decl.h"

#include "field_script_context.h"
#include "game_records.h"
#include "inlines.h"
#include "script_manager.h"
#include "unk_02055C50.h"

BOOL ScrCmd_GetBerryGrowthStage(ScriptContext *param0)
{
    MapObject **targetObject;
    u16 *varPointer = ScriptContext_GetVarPointer(param0);

    targetObject = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);
    *varPointer = BerryPatches_GetGrowthStage(param0->fieldSystem, *targetObject);

    return 0;
}

BOOL ScrCmd_GetBerryItemID(ScriptContext *param0)
{
    MapObject **targetObject = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);
    u16 *varPointer = ScriptContext_GetVarPointer(param0);

    *varPointer = BerryPatches_GetItemID(param0->fieldSystem, *targetObject);
    return 0;
}

BOOL ScrCmd_GetBerryMulchType(ScriptContext *param0)
{
    MapObject **targetObject = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);
    u16 *varPointer = ScriptContext_GetVarPointer(param0);

    *varPointer = BerryPatches_GetMulchItemID(param0->fieldSystem, *targetObject);
    return 0;
}

BOOL ScrCmd_GetBerryMoisture(ScriptContext *param0)
{
    MapObject **targetObject = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);
    u16 *varPointer = ScriptContext_GetVarPointer(param0);

    *varPointer = BerryPatches_GetMoisture(param0->fieldSystem, *targetObject);
    return 0;
}

BOOL ScrCmd_GetBerryYield(ScriptContext *param0)
{
    MapObject **targetObject = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);
    u16 *varPointer = ScriptContext_GetVarPointer(param0);

    *varPointer = BerryPatches_GetYield(param0->fieldSystem, *targetObject);
    return 0;
}

BOOL ScrCmd_SetBerryMulch(ScriptContext *param0)
{
    MapObject **targetObject = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);
    u16 mulchItemID = ScriptContext_GetVar(param0);

    BerryPatches_SetMulchType(param0->fieldSystem, *targetObject, mulchItemID);
    return 0;
}

BOOL ScrCmd_PlantBerry(ScriptContext *param0)
{
    MapObject **targetObject = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);
    GameRecords *gameRecords = SaveData_GetGameRecords(param0->fieldSystem->saveData);
    u16 berryItemID = ScriptContext_GetVar(param0);

    BerryPatches_PlantBerry(param0->fieldSystem, *targetObject, berryItemID);
    GameRecords_IncrementRecordValue(gameRecords, RECORD_UNK_004);

    return 0;
}

BOOL ScrCmd_BerryWatering(ScriptContext *param0)
{
    switch (ScriptContext_ReadHalfWord(param0)) {
    case 0:
        BerryPatches_StartWatering(param0->fieldSystem);
        break;
    case 1:
        BerryPatches_EndWatering(param0->fieldSystem);
        break;
    default:
        GF_ASSERT(0);
    }

    return 1;
}

BOOL ScrCmd_HarvestBerry(ScriptContext *param0)
{
    GameRecords *gameRecords = SaveData_GetGameRecords(param0->fieldSystem->saveData);
    MapObject **targetObject = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_TARGET_OBJECT);

    BerryPatches_HarvestBerry(param0->fieldSystem, *targetObject);
    GameRecords_IncrementTrainerScore(gameRecords, TRAINER_SCORE_EVENT_UNK_00);

    return 0;
}
