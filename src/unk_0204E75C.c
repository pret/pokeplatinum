#include "unk_0204E75C.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"

#include "bag.h"
#include "field_script_context.h"
#include "inlines.h"
#include "item.h"
#include "unk_0205DFC4.h"

BOOL ScrCmd_AddItem(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 item = ScriptContext_GetVar(ctx);
    u16 count = ScriptContext_GetVar(ctx);
    u16 *resultVar = ScriptContext_GetVarPointer(ctx);

    *resultVar = Bag_TryAddItem(SaveData_GetBag(fieldSystem->saveData), item, count, HEAP_ID_FIELD);
    return FALSE;
}

BOOL ScrCmd_RemoveItem(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 item = ScriptContext_GetVar(ctx);
    u16 count = ScriptContext_GetVar(ctx);
    u16 *resultVar = ScriptContext_GetVarPointer(ctx);

    *resultVar = Bag_TryRemoveItem(SaveData_GetBag(fieldSystem->saveData), item, count, HEAP_ID_FIELD);
    return FALSE;
}

BOOL ScrCmd_07D(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    u16 v1 = ScriptContext_GetVar(param0);
    u16 v2 = ScriptContext_GetVar(param0);
    u16 *v3 = ScriptContext_GetVarPointer(param0);

    *v3 = Bag_CanFitItem(SaveData_GetBag(fieldSystem->saveData), v1, v2, 4);
    return 0;
}

BOOL ScrCmd_CheckItem(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 item = ScriptContext_GetVar(ctx);
    u16 count = ScriptContext_GetVar(ctx);
    u16 *resultVar = ScriptContext_GetVarPointer(ctx);

    *resultVar = Bag_CanRemoveItem(SaveData_GetBag(fieldSystem->saveData), item, count, 11);
    return FALSE;
}

BOOL ScrCmd_2FE(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    u16 v1 = ScriptContext_GetVar(param0);
    u16 *v2 = ScriptContext_GetVarPointer(param0);

    *v2 = Bag_GetItemQuantity(SaveData_GetBag(fieldSystem->saveData), v1, 11);
    return 0;
}

BOOL ScrCmd_07F(ScriptContext *param0)
{
    FieldSystem *fieldSystem = param0->fieldSystem;
    u16 v1 = ScriptContext_GetVar(param0);
    u16 *v2 = ScriptContext_GetVarPointer(param0);

    *v2 = sub_0205E060(v1);
    return 0;
}

BOOL ScrCmd_GetItemPocket(ScriptContext *ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 item = ScriptContext_GetVar(ctx);
    u16 *pocket = ScriptContext_GetVarPointer(ctx);

    *pocket = (u16)Item_LoadParam(item, ITEM_PARAM_FIELD_POCKET, 11);
    return FALSE;
}

BOOL ScrCmd_081(ScriptContext *param0)
{
    return 0;
}

BOOL ScrCmd_082(ScriptContext *param0)
{
    return 0;
}
