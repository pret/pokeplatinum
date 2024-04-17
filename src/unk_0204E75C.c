#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "field/field_system.h"
#include "unk_0203E724.h"

#include "unk_0204E75C.h"
#include "unk_0205DFC4.h"
#include "item.h"
#include "unk_0207D3B8.h"

BOOL sub_0204E75C (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    u16 v1 = ScriptContext_GetVar(param0);
    u16 v2 = ScriptContext_GetVar(param0);
    u16 * v3 = ScriptContext_GetVarPointer(param0);

    *v3 = sub_0207D570(sub_0207D990(v0->saveData), v1, v2, 4);
    return 0;
}

BOOL sub_0204E7B4 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    u16 v1 = ScriptContext_GetVar(param0);
    u16 v2 = ScriptContext_GetVar(param0);
    u16 * v3 = ScriptContext_GetVarPointer(param0);

    *v3 = Bag_SubtractItem(sub_0207D990(v0->saveData), v1, v2, 4);
    return 0;
}

BOOL sub_0204E80C (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    u16 v1 = ScriptContext_GetVar(param0);
    u16 v2 = ScriptContext_GetVar(param0);
    u16 * v3 = ScriptContext_GetVarPointer(param0);

    *v3 = sub_0207D55C(sub_0207D990(v0->saveData), v1, v2, 4);
    return 0;
}

BOOL sub_0204E864 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    u16 v1 = ScriptContext_GetVar(param0);
    u16 v2 = ScriptContext_GetVar(param0);
    u16 * v3 = ScriptContext_GetVarPointer(param0);

    *v3 = sub_0207D688(sub_0207D990(v0->saveData), v1, v2, 11);
    return 0;
}

BOOL sub_0204E8BC (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    u16 v1 = ScriptContext_GetVar(param0);
    u16 * v2 = ScriptContext_GetVarPointer(param0);

    *v2 = sub_0207D730(sub_0207D990(v0->saveData), v1, 11);
    return 0;
}

BOOL sub_0204E900 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    u16 v1 = ScriptContext_GetVar(param0);
    u16 * v2 = ScriptContext_GetVarPointer(param0);

    *v2 = sub_0205E060(v1);
    return 0;
}

BOOL sub_0204E934 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    u16 v1 = ScriptContext_GetVar(param0);
    u16 * v2 = ScriptContext_GetVarPointer(param0);

    *v2 = (u16)Item_LoadParam(v1, 5, 11);
    return 0;
}

BOOL sub_0204E96C (ScriptContext * param0)
{
    return 0;
}

BOOL sub_0204E970 (ScriptContext * param0)
{
    return 0;
}
