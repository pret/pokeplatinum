#ifndef POKEPLATINUM_SCRCMD_BERRY_H
#define POKEPLATINUM_SCRCMD_BERRY_H

#include "field_script_context.h"

enum BerryWateringCommand {
    BERRY_WATERING_START = 0, // Start berry watering mode
    BERRY_WATERING_END = 1, // End berry watering mode
};

BOOL ScrCmd_GetBerryGrowthStage(ScriptContext *ctx);
BOOL ScrCmd_GetBerryItemID(ScriptContext *ctx);
BOOL ScrCmd_GetBerryMulchType(ScriptContext *ctx);
BOOL ScrCmd_GetBerryMoisture(ScriptContext *ctx);
BOOL ScrCmd_GetBerryYield(ScriptContext *ctx);
BOOL ScrCmd_SetBerryMulch(ScriptContext *ctx);
BOOL ScrCmd_PlantBerry(ScriptContext *ctx);
BOOL ScrCmd_BerryWatering(ScriptContext *ctx);
BOOL ScrCmd_HarvestBerry(ScriptContext *ctx);

#endif // POKEPLATINUM_SCRCMD_BERRY_H
