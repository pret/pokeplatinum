#include "overlay104/frontier_script_manager.h"

#include <nitro.h>

#include "struct_decls/struct_0209B75C_decl.h"

#include "overlay104/defs.h"
#include "overlay104/frontier_script_context.h"
#include "overlay104/frscrcmd.h"
#include "overlay104/ov104_0222EA90.h"
#include "overlay104/ov104_0223D860.h"
#include "overlay104/struct_ov104_0222E8C8.h"

#include "heap.h"
#include "message.h"
#include "narc.h"
#include "string_gf.h"
#include "string_template.h"
#include "unk_0209B6F8.h"

static BOOL FrontierScriptManager_SetContext(FrontierScriptManager *scriptMan, FrontierScriptContext *ctx);
static void FrontierScriptContext_Free(FrontierScriptManager *scriptMan, FrontierScriptContext *ctx);
static void Dummy(FrontierScriptManager *scriptMan, u16 scene, u32 *null1, void *null2);
static void FrontierScriptManager_LoadScriptData(u8 **script, MessageLoader **msgLoader, int scene, enum HeapID heapID);
static void FrontierScriptContext_JumpToOffsetID(FrontierScriptContext *ctx, int offsetID);

FrontierScriptManager *FrontierScriptManager_New(UnkStruct_0209B75C *param0, enum HeapID heapID, int scene)
{
    FrontierScriptManager *scriptMan = Heap_Alloc(heapID, sizeof(FrontierScriptManager));
    MI_CpuClear8(scriptMan, sizeof(FrontierScriptManager));

    scriptMan->unk_00 = param0;
    scriptMan->heapID = heapID;
    scriptMan->scene = scene;

    FrontierScriptManager_LoadScriptData(&scriptMan->script, &scriptMan->msgLoader, scene, heapID);

    scriptMan->strTemplate = StringTemplate_New(8, 64, heapID);
    scriptMan->string = String_Init(1024, heapID);
    scriptMan->fmtString = String_Init(1024, heapID);

    Dummy(scriptMan, scene, NULL, NULL);

    return scriptMan;
}

BOOL ov104_0222E6A8(FrontierScriptManager *scriptMan)
{
    if (scriptMan->numSetContexts == 0) {
        return TRUE;
    }

    if (scriptMan->unk_38 == 0) {
        for (int i = 0; i < (int)NELEMS(scriptMan->ctx); i++) {
            FrontierScriptContext *ctx = scriptMan->ctx[i];

            if (ctx != NULL) {
                if (FrontierScriptContext_Run(ctx) == 0) {
                    FrontierScriptContext_Free(scriptMan, ctx);
                    scriptMan->ctx[i] = NULL;
                    scriptMan->numSetContexts--;
                }
            }
        }

        ov104_0223D8C4(scriptMan->unk_00);
    }

    return scriptMan->numSetContexts == 0;
}

void FrontierScriptManager_Free(FrontierScriptManager *scriptMan)
{
    GF_ASSERT(scriptMan->numSetContexts == 0);

    StringTemplate_Free(scriptMan->strTemplate);
    String_Free(scriptMan->string);
    String_Free(scriptMan->fmtString);
    Heap_Free(scriptMan->script);
    MessageLoader_Free(scriptMan->msgLoader);

    Heap_Free(scriptMan);
}

void FrontierScriptManager_Load(FrontierScriptManager *scriptMan, int scene, int offsetID)
{
    FrontierScriptContext *ctx = Heap_Alloc(scriptMan->heapID, sizeof(FrontierScriptContext));
    MI_CpuClear8(ctx, sizeof(FrontierScriptContext));

    FrontierScriptContext_Init(ctx, gFrontierScrCmdFuncs, gFrontierScrCmdFuncsCount);

    ctx->scriptMan = scriptMan;

    if (scene == 0xffff || scriptMan->scene == scene) {
        ctx->scripts = scriptMan->script;
        ctx->msgLoader = scriptMan->msgLoader;
    } else {
        FrontierScriptManager_LoadScriptData(&ctx->scripts, &ctx->msgLoader, scene, scriptMan->heapID);
    }

    FrontierScriptContext_Start(ctx, ctx->scripts);
    FrontierScriptContext_JumpToOffsetID(ctx, offsetID);
    FrontierScriptManager_SetContext(scriptMan, ctx);
}

static BOOL FrontierScriptManager_SetContext(FrontierScriptManager *scriptMan, FrontierScriptContext *ctx)
{
    for (int i = 0; i < (int)NELEMS(scriptMan->ctx); i++) {
        if (scriptMan->ctx[i] == NULL) {
            scriptMan->ctx[i] = ctx;
            scriptMan->numSetContexts++;
            return TRUE;
        }
    }

    GF_ASSERT(FALSE);
    return FALSE;
}

static void FrontierScriptContext_Free(FrontierScriptManager *scriptMan, FrontierScriptContext *ctx)
{
    if (ctx->msgLoader != scriptMan->msgLoader) {
        MessageLoader_Free(ctx->msgLoader);
    }

    if (ctx->scripts != scriptMan->script) {
        Heap_Free(ctx->scripts);
    }

    Heap_Free(ctx);
}

static void Dummy(FrontierScriptManager *scriptMan, u16 scene, u32 *null1, void *null2)
{
}

static void FrontierScriptManager_LoadScriptData(u8 **script, MessageLoader **msgLoader, int scene, enum HeapID heapID)
{
    int scriptID = GetFrontierSceneValue(scene, FR_SCENE_SCRIPT_ID);
    int bankID = GetFrontierSceneValue(scene, FR_SCENE_BANK_ID);

    *script = NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_FRONTIER__SCRIPT__FR_SCRIPT, scriptID, heapID);
    *msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, bankID, heapID);
}

void FrontierScriptManager_UpdateMessageLoader(FrontierScriptManager *scriptMan, int scene, enum HeapID heapID)
{
    int currentBankID = GetFrontierSceneValue(scriptMan->scene, FR_SCENE_BANK_ID);
    int newBankID = GetFrontierSceneValue(scene, FR_SCENE_BANK_ID);

    if (currentBankID == newBankID) {
        return;
    }

    MessageLoader *msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, newBankID, heapID);

    for (int i = 0; i < (int)NELEMS(scriptMan->ctx); i++) {
        FrontierScriptContext *ctx = scriptMan->ctx[i];

        if (ctx != NULL) {
            if (ctx->msgLoader == scriptMan->msgLoader) {
                ctx->msgLoader = msgLoader;
            }
        }
    }

    MessageLoader_Free(scriptMan->msgLoader);
    scriptMan->msgLoader = msgLoader;
}

UnkStruct_ov104_0222E8C8 *ov104_0222E8C8(FrontierScriptManager *param0, enum HeapID heapID)
{
    UnkStruct_ov104_0222E8C8 *v0 = Heap_Alloc(heapID, sizeof(UnkStruct_ov104_0222E8C8));
    *v0 = param0->unk_24;

    return v0;
}

void ov104_0222E8E8(FrontierScriptManager *param0, UnkStruct_ov104_0222E8C8 *param1)
{
    param0->unk_24 = *param1;
    Heap_Free(param1);
}

static void FrontierScriptContext_JumpToOffsetID(FrontierScriptContext *ctx, int offsetID)
{
    ctx->scriptPtr += offsetID * 4;
    ctx->scriptPtr += FrontierScriptContext_ReadWord(ctx);
}

u16 *ov104_0222E91C(FrontierScriptManager *param0, int param1)
{
    return &param0->unk_24.unk_00[param1];
}

FrontierGraphics *FrontierScriptManager_GetGraphics(FrontierScriptManager *scriptMan)
{
    return sub_0209B974(scriptMan->unk_00);
}
