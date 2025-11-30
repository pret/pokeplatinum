#ifndef POKEPLATINUM_SCRCMD_BERRY_H
#define POKEPLATINUM_SCRCMD_BERRY_H

#include "field_script_context.h"

BOOL ScrCmd_GetBerryGrowthStage(ScriptContext *ctx);
BOOL ScrCmd_GetBerryItemID(ScriptContext *ctx);
BOOL ScrCmd_GetBerryMulchType(ScriptContext *ctx);
BOOL ScrCmd_GetBerryMoisture(ScriptContext *ctx);
BOOL ScrCmd_GetBerryYield(ScriptContext *ctx);
BOOL ScrCmd_SetBerryMulch(ScriptContext *ctx);
BOOL ScrCmd_PlantBerry(ScriptContext *ctx);
BOOL ScrCmd_SetBerryWateringState(ScriptContext *ctx);
BOOL ScrCmd_HarvestBerry(ScriptContext *ctx);

#endif // POKEPLATINUM_SCRCMD_BERRY_H
