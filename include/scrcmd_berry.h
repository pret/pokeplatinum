#ifndef POKEPLATINUM_SCRCMD_BERRY_H
#define POKEPLATINUM_SCRCMD_BERRY_H

#include "field_script_context.h"

BOOL ScrCmd_GetBerryGrowthStage(ScriptContext *param0);
BOOL ScrCmd_GetBerryItemID(ScriptContext *param0);
BOOL ScrCmd_GetBerryMulchType(ScriptContext *param0);
BOOL ScrCmd_GetBerryMoisture(ScriptContext *param0);
BOOL ScrCmd_GetBerryYield(ScriptContext *param0);
BOOL ScrCmd_SetBerryMulch(ScriptContext *param0);
BOOL ScrCmd_PlantBerry(ScriptContext *param0);
BOOL ScrCmd_BerryWatering(ScriptContext *param0);
BOOL ScrCmd_HarvestBerry(ScriptContext *param0);

#endif // POKEPLATINUM_SCRCMD_BERRY_H
