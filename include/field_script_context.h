#ifndef POKEPLATINUM_FIELD_SCRIPT_CONTEXT_H
#define POKEPLATINUM_FIELD_SCRIPT_CONTEXT_H

#include "message.h"
#include "field/field_system_decl.h"
#include "struct_decls/struct_020508D4_decl.h"

typedef struct ScriptContext ScriptContext;

typedef BOOL (* ShouldResumeScriptFunc)(ScriptContext *);
typedef BOOL (* ScrCmdFunc)(ScriptContext *);

struct ScriptContext {
    u8 stackPointer;
    u8 state;
    u8 comparisonResult;
    ShouldResumeScriptFunc shouldResume;
    const u8 * scriptPtr;
    const u8 * stack[20];
    const ScrCmdFunc * cmdTable;
    u32 cmdTableSize;
    u32 data[4];
    TaskManager * taskManager;
    MessageLoader * loader;
    const u8 * scripts;
    FieldSystem * fieldSystem;
};

#define ScriptContext_ReadByte(ctx)    (*(ctx->scriptPtr++))

void ScriptContext_Init(ScriptContext * ctx, const ScrCmdFunc * cmdTable, u32 cmdTableSize);
BOOL ScriptContext_Start(ScriptContext * ctx, const u8 * ptr);
void ScriptContext_Pause(ScriptContext * ctx, ShouldResumeScriptFunc shouldResume);
void ScriptContext_Stop(ScriptContext * ctx);
void ScriptContext_SetTaskManager(ScriptContext * ctx, TaskManager * taskManager);
BOOL ScriptContext_Run(ScriptContext * ctx);
void ScriptContext_Jump(ScriptContext * ctx, const u8 * ptr);
void ScriptContext_Call(ScriptContext * ctx, const u8 * ptr);
void ScriptContext_Return(ScriptContext * ctx);
u16 ScriptContext_ReadHalfWord(ScriptContext * ctx);
u32 ScriptContext_ReadWord(ScriptContext * ctx);

#endif // POKEPLATINUM_FIELD_SCRIPT_CONTEXT_H
