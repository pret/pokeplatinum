#ifndef POKEPLATINUM_UNK_0204CDDC_H
#define POKEPLATINUM_UNK_0204CDDC_H

#include "field_script_context.h"

#define NUM_FINDABLE_ACCESSORY_POOLS    6
#define NUM_ACCESSORIES_FINDABLE_BY_MON 10

BOOL ScrCmd_ClearAmitySquareStepCount(ScriptContext *ctx);
BOOL ScrCmd_GetAmitySquareStepCount(ScriptContext *ctx);
BOOL ScrCmd_CalcAmitySquareFoundAccessory(ScriptContext *ctx);
BOOL ScrCmd_CalcAmitySquareBerryAndAccessoryManOptionID(ScriptContext *ctx);
BOOL ScrCmd_2E0(ScriptContext *param0);
BOOL ScrCmd_GetAmitySquareBerryOrAccessoryIDFromMan(ScriptContext *ctx);

#endif // POKEPLATINUM_UNK_0204CDDC_H
