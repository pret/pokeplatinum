#ifndef POKEPLATINUM_OV104_0222FBE4_H
#define POKEPLATINUM_OV104_0222FBE4_H

#include "overlay104/frontier_script_context.h"

extern const FrontierScrCmdFunc Unk_ov104_0223F674[];
extern const u32 Unk_ov104_0223F63C;

u16 *FrontierScriptContext_TryGetVarPointer(FrontierScriptContext *ctx);
u16 FrontierScriptContext_GetVar(FrontierScriptContext *ctx);
u16 *FrontierScriptContext_GetVarPointer(FrontierScriptContext *ctx, u16 varID);
u16 FrontierScriptContext_TryGetVar(FrontierScriptContext *ctx, u16 varID);

#endif // POKEPLATINUM_OV104_0222FBE4_H
