#include "field_script_context.h"

#include <nitro.h>
#include <string.h>

enum FieldScriptState {
    SCRIPT_STATE_STOPPED,
    SCRIPT_STATE_RUNNING,
    SCRIPT_STATE_WAITING,
};

void ScriptContext_Init(ScriptContext *ctx, const ScrCmdFunc *cmdTable, u32 cmdTableSize) {
    ctx->state = SCRIPT_STATE_STOPPED;
    ctx->scriptPtr = NULL;
    ctx->stackPointer = 0;
    ctx->shouldResume = NULL;
    ctx->cmdTable = cmdTable;
    ctx->cmdTableSize = cmdTableSize;

    u32 i;
    for (i = 0; i < NELEMS(ctx->data); i++) {
        ctx->data[i] = 0;
    }

    for (i = 0; i < NELEMS(ctx->stack); i++) {
        ctx->stack[i] = NULL;
    }

    ctx->task = NULL;
}

BOOL ScriptContext_Start(ScriptContext *ctx, const u8 *ptr) {
    ctx->scriptPtr = ptr;
    ctx->state = SCRIPT_STATE_RUNNING;

    return TRUE;
}

void ScriptContext_Pause(ScriptContext *ctx, ShouldResumeScriptFunc shouldResume) {
    ctx->state = SCRIPT_STATE_WAITING;
    ctx->shouldResume = shouldResume;
}

void ScriptContext_Stop(ScriptContext *ctx) {
    ctx->state = SCRIPT_STATE_STOPPED;
    ctx->scriptPtr = NULL;
}

void ScriptContext_SetTask(ScriptContext *ctx, FieldTask *task) {
    ctx->task = task;
}

BOOL ScriptContext_Run(ScriptContext *ctx) {
    if (ctx->state == SCRIPT_STATE_STOPPED) {
        return FALSE;
    }

    switch (ctx->state) {
    case SCRIPT_STATE_STOPPED:
        // this branch is never taken due to the above check
        return FALSE;

    case SCRIPT_STATE_WAITING:
        if (ctx->shouldResume != NULL) {
            if (ctx->shouldResume(ctx) == TRUE) {
                ctx->state = SCRIPT_STATE_RUNNING;
            }
            return TRUE;
        }
        ctx->state = SCRIPT_STATE_RUNNING;
        // fallthrough

    case SCRIPT_STATE_RUNNING:
        while (TRUE) {
            if (ctx->scriptPtr == NULL) {
                ctx->state = SCRIPT_STATE_STOPPED;
                return FALSE;
            }
            u16 cmdCode = ScriptContext_ReadHalfWord(ctx);
            if (cmdCode >= ctx->cmdTableSize) {
                GF_ASSERT(FALSE);
                ctx->state = SCRIPT_STATE_STOPPED;
                return FALSE;
            }
            if (ctx->cmdTable[cmdCode](ctx) == TRUE) {
                break;
            }
        }
    }

    return TRUE;
}

static BOOL ScriptContext_Push(ScriptContext *ctx, const u8 *ptr) {
    if (ctx->stackPointer + 1 >= (int)NELEMS(ctx->stack)) {
        return TRUE;
    }

    ctx->stack[ctx->stackPointer] = ptr;
    ctx->stackPointer++;

    return FALSE;
}

static const u8 *ScriptContext_Pop(ScriptContext *ctx) {
    if (ctx->stackPointer == 0) {
        return NULL;
    }

    return ctx->stack[--ctx->stackPointer];
}

void ScriptContext_Jump(ScriptContext *ctx, const u8 *ptr) {
    ctx->scriptPtr = ptr;
}

void ScriptContext_Call(ScriptContext *ctx, const u8 *ptr) {
    ScriptContext_Push(ctx, ctx->scriptPtr);
    ctx->scriptPtr = ptr;
}

void ScriptContext_Return(ScriptContext *ctx) {
    ctx->scriptPtr = ScriptContext_Pop(ctx);
}

u16 ScriptContext_ReadHalfWord(ScriptContext *ctx) {
    u16 value = ScriptContext_ReadByte(ctx);
    value += ScriptContext_ReadByte(ctx) << 8;

    return value;
}

u32 ScriptContext_ReadWord(ScriptContext *ctx) {
    u8 byte0 = ScriptContext_ReadByte(ctx);
    u8 byte1 = ScriptContext_ReadByte(ctx);
    u8 byte2 = ScriptContext_ReadByte(ctx);
    u8 byte3 = ScriptContext_ReadByte(ctx);
    u32 value = 0;

    value += byte3;
    value <<= 8;
    value += byte2;
    value <<= 8;
    value += byte1;
    value <<= 8;
    value += byte0;

    return value;
}
