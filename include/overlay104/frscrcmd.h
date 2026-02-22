#ifndef POKEPLATINUM_FRSCRCMD_H
#define POKEPLATINUM_FRSCRCMD_H

#include "overlay104/frontier_script_context.h"

extern const FrontierScrCmdFunc gFrontierScrCmdFuncs[];
extern const u32 gFrontierScrCmdFuncsCount;

u16 *FrontierScriptContext_TryGetVarPointer(FrontierScriptContext *ctx);
u16 FrontierScriptContext_GetVar(FrontierScriptContext *ctx);
u16 *FrontierScriptContext_GetVarPointer(FrontierScriptContext *ctx, u16 varID);
u16 FrontierScriptContext_TryGetVar(FrontierScriptContext *ctx, u16 varID);

#endif // POKEPLATINUM_FRSCRCMD_H
