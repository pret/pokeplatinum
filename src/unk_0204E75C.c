#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "field/field_system.h"
#include "field_script_context.h"

#include "unk_0204E75C.h"
#include "unk_0205DFC4.h"
#include "item.h"
#include "bag.h"

BOOL ScrCmd_07B (ScriptContext * param0)
{
    FieldSystem * fieldSystem = param0->fieldSystem;
    u16 v1 = ScriptContext_GetVar(param0);
    u16 v2 = ScriptContext_GetVar(param0);
    u16 * v3 = ScriptContext_GetVarPointer(param0);

    *v3 = sub_0207D570(sub_0207D990(fieldSystem->saveData), v1, v2, 4);
    return 0;
}

BOOL ScrCmd_07C (ScriptContext * param0)
{
    FieldSystem * fieldSystem = param0->fieldSystem;
    u16 v1 = ScriptContext_GetVar(param0);
    u16 v2 = ScriptContext_GetVar(param0);
    u16 * v3 = ScriptContext_GetVarPointer(param0);

    *v3 = Bag_SubtractItem(sub_0207D990(fieldSystem->saveData), v1, v2, 4);
    return 0;
}

BOOL ScrCmd_07D (ScriptContext * param0)
{
    FieldSystem * fieldSystem = param0->fieldSystem;
    u16 v1 = ScriptContext_GetVar(param0);
    u16 v2 = ScriptContext_GetVar(param0);
    u16 * v3 = ScriptContext_GetVarPointer(param0);

    *v3 = sub_0207D55C(sub_0207D990(fieldSystem->saveData), v1, v2, 4);
    return 0;
}

BOOL ScrCmd_07E (ScriptContext * param0)
{
    FieldSystem * fieldSystem = param0->fieldSystem;
    u16 v1 = ScriptContext_GetVar(param0);
    u16 v2 = ScriptContext_GetVar(param0);
    u16 * v3 = ScriptContext_GetVarPointer(param0);

    *v3 = sub_0207D688(sub_0207D990(fieldSystem->saveData), v1, v2, 11);
    return 0;
}

BOOL ScrCmd_2FE (ScriptContext * param0)
{
    FieldSystem * fieldSystem = param0->fieldSystem;
    u16 v1 = ScriptContext_GetVar(param0);
    u16 * v2 = ScriptContext_GetVarPointer(param0);

    *v2 = sub_0207D730(sub_0207D990(fieldSystem->saveData), v1, 11);
    return 0;
}

BOOL ScrCmd_07F (ScriptContext * param0)
{
    FieldSystem * fieldSystem = param0->fieldSystem;
    u16 v1 = ScriptContext_GetVar(param0);
    u16 * v2 = ScriptContext_GetVarPointer(param0);

    *v2 = sub_0205E060(v1);
    return 0;
}

BOOL ScrCmd_GetItemPocket (ScriptContext * ctx)
{
    FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 item = ScriptContext_GetVar(ctx);
    u16 *pocket = ScriptContext_GetVarPointer(ctx);

    *pocket = (u16)Item_LoadParam(item, ITEM_PARAM_FIELD_POCKET, 11);
    return FALSE;
}

BOOL ScrCmd_081 (ScriptContext * param0)
{
    return 0;
}

BOOL ScrCmd_082 (ScriptContext * param0)
{
    return 0;
}
