#ifndef POKEPLATINUM_FRONTIER_SCRIPT_CONTEXT_H
#define POKEPLATINUM_FRONTIER_SCRIPT_CONTEXT_H

#include "overlay104/struct_ov104_022320B4_decl.h"

#include "message.h"

typedef struct FrontierScriptContext FrontierScriptContext;

typedef BOOL (*FrontierScrCmdFunc)(FrontierScriptContext *);
typedef BOOL (*FrontierShouldResumeScriptFunc)(FrontierScriptContext *);

struct FrontierScriptContext {
    UnkStruct_ov104_022320B4 *unk_00;
    u32 unk_04;
    u16 unk_08[8];
    u8 stackPointer;
    u8 state;
    const u8 *scriptPtr;
    const u8 *stack[20];
    const FrontierScrCmdFunc *cmdTable;
    u32 cmdTableSize;
    u16 data[4];
    MessageLoader *msgLoader;
    u8 *scripts;
    FrontierShouldResumeScriptFunc shouldResume;
    u8 comparisonResult;
};

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
