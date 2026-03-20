#ifndef POKEPLATINUM_FRONTIER_SCRIPT_CONTEXT_H
#define POKEPLATINUM_FRONTIER_SCRIPT_CONTEXT_H

#include "overlay104/defs.h"

#define FrontierScriptContext_ReadByte(ctx) (*(ctx->scriptPtr++))

void FrontierScriptContext_Init(FrontierScriptContext *ctx, const FrontierScrCmdFunc *cmdTable, u32 cmdTableSize);
BOOL FrontierScriptContext_Start(FrontierScriptContext *ctx, const u8 *ptr);
void FrontierScriptContext_Pause(FrontierScriptContext *ctx, FrontierShouldResumeScriptFunc shouldResume);
void FrontierScriptContext_Stop(FrontierScriptContext *ctx);
BOOL FrontierScriptContext_Run(FrontierScriptContext *ctx);
void FrontierScriptContext_Call(FrontierScriptContext *ctx, const u8 *ptr);
void FrontierScriptContext_Return(FrontierScriptContext *ctx);
u16 FrontierScriptContext_ReadHalfWord(FrontierScriptContext *ctx);
u32 FrontierScriptContext_ReadWord(FrontierScriptContext *ctx);

#endif // POKEPLATINUM_FRONTIER_SCRIPT_CONTEXT_H
