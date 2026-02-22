#include "overlay104/ov104_0222E63C.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0209B75C_decl.h"

#include "overlay104/frontier_script_context.h"
#include "overlay104/frscrcmd.h"
#include "overlay104/ov104_0222EA90.h"
#include "overlay104/ov104_0223D860.h"
#include "overlay104/struct_ov104_0222E8C8.h"
#include "overlay104/struct_ov104_022320B4_decl.h"
#include "overlay104/struct_ov104_022320B4_t.h"
#include "overlay104/struct_ov104_0223C4CC.h"

#include "heap.h"
#include "message.h"
#include "narc.h"
#include "string_gf.h"
#include "string_template.h"
#include "unk_0209B6F8.h"

static BOOL ov104_0222E7CC(UnkStruct_ov104_022320B4 *param0, FrontierScriptContext *param1);
static void ov104_0222E7FC(UnkStruct_ov104_022320B4 *param0, FrontierScriptContext *param1);
static void ov104_0222E82C(UnkStruct_ov104_022320B4 *param0, u16 param1, u32 *param2, void *param3);
static void ov104_0222E830(u8 **param0, MessageLoader **param1, int param2, enum HeapID heapID);
static void ov104_0222E904(FrontierScriptContext *param0, int param1);

UnkStruct_ov104_022320B4 *ov104_0222E63C(UnkStruct_0209B75C *param0, enum HeapID heapID, int param2)
{
    UnkStruct_ov104_022320B4 *v0 = Heap_Alloc(heapID, sizeof(UnkStruct_ov104_022320B4));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov104_022320B4));

    v0->unk_00 = param0;
    v0->heapID = heapID;
    v0->unk_52 = param2;

    ov104_0222E830(&v0->unk_40, &v0->unk_3C, param2, heapID);

    v0->strTemplate = StringTemplate_New(8, 64, heapID);
    v0->string = String_Init(1024, heapID);
    v0->fmtString = String_Init(1024, heapID);

    ov104_0222E82C(v0, param2, NULL, NULL);

    return v0;
}

BOOL ov104_0222E6A8(UnkStruct_ov104_022320B4 *param0)
{
    int v0;
    FrontierScriptContext *v1;

    if (param0->unk_51 == 0) {
        return 1;
    }

    switch (param0->unk_38) {
    case 0:
        for (v0 = 0; v0 < 8; v0++) {
            v1 = param0->unk_04[v0];

            if (v1 != NULL) {
                if (FrontierScriptContext_Run(v1) == 0) {
                    ov104_0222E7FC(param0, v1);
                    param0->unk_04[v0] = NULL;
                    param0->unk_51--;
                }
            }
        }

        ov104_0223D8C4(param0->unk_00);
        break;
    default:
        break;
    }

    if (param0->unk_51 == 0) {
        return 1;
    }

    return 0;
}

void ov104_0222E710(UnkStruct_ov104_022320B4 *param0)
{
    GF_ASSERT(param0->unk_51 == 0);

    StringTemplate_Free(param0->strTemplate);
    String_Free(param0->string);
    String_Free(param0->fmtString);
    Heap_Free(param0->unk_40);
    MessageLoader_Free(param0->unk_3C);

    Heap_Free(param0);
}

void ov104_0222E748(UnkStruct_ov104_022320B4 *param0, int param1, int param2)
{
    FrontierScriptContext *ctx = Heap_Alloc(param0->heapID, sizeof(FrontierScriptContext));
    MI_CpuClear8(ctx, sizeof(FrontierScriptContext));

    FrontierScriptContext_Init(ctx, gFrontierScrCmdFuncs, gFrontierScrCmdFuncsCount);

    ctx->unk_00 = param0;

    if ((param1 == 0xffff) || (param0->unk_52 == param1)) {
        ctx->scripts = param0->unk_40;
        ctx->msgLoader = param0->unk_3C;
    } else {
        ov104_0222E830(&ctx->scripts, &ctx->msgLoader, param1, param0->heapID);
    }

    FrontierScriptContext_Start(ctx, ctx->scripts);
    ov104_0222E904(ctx, param2);
    ov104_0222E7CC(param0, ctx);
}

static BOOL ov104_0222E7CC(UnkStruct_ov104_022320B4 *param0, FrontierScriptContext *param1)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        if (param0->unk_04[v0] == NULL) {
            param0->unk_04[v0] = param1;
            param0->unk_51++;
            return 1;
        }
    }

    GF_ASSERT(FALSE);
    return 0;
}

static void ov104_0222E7FC(UnkStruct_ov104_022320B4 *param0, FrontierScriptContext *param1)
{
    if (param1->msgLoader != param0->unk_3C) {
        MessageLoader_Free(param1->msgLoader);
    }

    if (param1->scripts != param0->unk_40) {
        Heap_Free(param1->scripts);
    }

    Heap_Free(param1);
}

static void ov104_0222E82C(UnkStruct_ov104_022320B4 *param0, u16 param1, u32 *param2, void *param3)
{
    if (param2 != NULL) {
        (void)0;
    }
}

static void ov104_0222E830(u8 **param0, MessageLoader **param1, int param2, enum HeapID heapID)
{
    int scriptID = GetFrontierSceneValue(param2, FR_SCENE_SCRIPT_ID);
    int bankID = GetFrontierSceneValue(param2, FR_SCENE_BANK_ID);

    *param0 = NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_FRONTIER__SCRIPT__FR_SCRIPT, scriptID, heapID);
    *param1 = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, bankID, heapID);
}

void ov104_0222E86C(UnkStruct_ov104_022320B4 *param0, int param1, enum HeapID heapID)
{
    int v0;
    FrontierScriptContext *v1;
    int v2, v3;
    MessageLoader *v4;

    v2 = GetFrontierSceneValue(param0->unk_52, FR_SCENE_BANK_ID);
    v3 = GetFrontierSceneValue(param1, FR_SCENE_BANK_ID);

    if (v2 == v3) {
        return;
    }

    v4 = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, v3, heapID);

    for (v0 = 0; v0 < 8; v0++) {
        v1 = param0->unk_04[v0];

        if (v1 != NULL) {
            if (v1->msgLoader == param0->unk_3C) {
                v1->msgLoader = v4;
            }
        }
    }

    MessageLoader_Free(param0->unk_3C);
    param0->unk_3C = v4;
}

UnkStruct_ov104_0222E8C8 *ov104_0222E8C8(UnkStruct_ov104_022320B4 *param0, enum HeapID heapID)
{
    UnkStruct_ov104_0222E8C8 *v0 = Heap_Alloc(heapID, sizeof(UnkStruct_ov104_0222E8C8));
    *v0 = param0->unk_24;

    return v0;
}

void ov104_0222E8E8(UnkStruct_ov104_022320B4 *param0, UnkStruct_ov104_0222E8C8 *param1)
{
    param0->unk_24 = *param1;
    Heap_Free(param1);
}

static void ov104_0222E904(FrontierScriptContext *param0, int param1)
{
    param0->scriptPtr += (param1 * 4);
    param0->scriptPtr += FrontierScriptContext_ReadWord(param0);
}

u16 *ov104_0222E91C(UnkStruct_ov104_022320B4 *param0, int param1)
{
    return &param0->unk_24.unk_00[param1];
}

UnkStruct_ov104_0223C4CC *ov104_0222E924(UnkStruct_ov104_022320B4 *param0)
{
    return sub_0209B974(param0->unk_00);
}
