#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_0202CD88_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "unk_0202CD50.h"
#include "field_script_context.h"
#include "unk_0203E880.h"
#include "unk_0204B64C.h"
#include "unk_02055C50.h"

BOOL ScrCmd_17D (ScriptContext * param0)
{
    LocalMapObject ** v0;
    u16 * v1 = ScriptContext_GetVarPointer(param0);

    v0 = sub_0203F098(param0->fieldSys, 10);
    *v1 = sub_02055F00(param0->fieldSys, *v0);

    return 0;
}

BOOL ScrCmd_17E (ScriptContext * param0)
{
    LocalMapObject ** v0 = sub_0203F098(param0->fieldSys, 10);
    u16 * v1 = ScriptContext_GetVarPointer(param0);

    *v1 = sub_02055F40(param0->fieldSys, *v0);
    return 0;
}

BOOL ScrCmd_17F (ScriptContext * param0)
{
    LocalMapObject ** v0 = sub_0203F098(param0->fieldSys, 10);
    u16 * v1 = ScriptContext_GetVarPointer(param0);

    *v1 = sub_02055F64(param0->fieldSys, *v0);
    return 0;
}

BOOL ScrCmd_180 (ScriptContext * param0)
{
    LocalMapObject ** v0 = sub_0203F098(param0->fieldSys, 10);
    u16 * v1 = ScriptContext_GetVarPointer(param0);

    *v1 = sub_02055F88(param0->fieldSys, *v0);
    return 0;
}

BOOL ScrCmd_181 (ScriptContext * param0)
{
    LocalMapObject ** v0 = sub_0203F098(param0->fieldSys, 10);
    u16 * v1 = ScriptContext_GetVarPointer(param0);

    *v1 = sub_02055FA8(param0->fieldSys, *v0);
    return 0;
}

BOOL ScrCmd_182 (ScriptContext * param0)
{
    LocalMapObject ** v0 = sub_0203F098(param0->fieldSys, 10);
    u16 v1 = ScriptContext_GetVar(param0);

    sub_02055E80(param0->fieldSys, *v0, v1);
    return 0;
}

BOOL ScrCmd_183 (ScriptContext * param0)
{
    LocalMapObject ** v0 = sub_0203F098(param0->fieldSys, 10);
    UnkStruct_0202CD88 * v1 = sub_0202CD88(param0->fieldSys->saveData);
    u16 v2 = ScriptContext_GetVar(param0);

    sub_02055EAC(param0->fieldSys, *v0, v2);
    sub_0202CF28(v1, (1 + 3));

    return 0;
}

BOOL ScrCmd_184 (ScriptContext * param0)
{
    switch (ScriptContext_ReadHalfWord(param0)) {
    case 0:
        sub_020562AC(param0->fieldSys);
        break;
    case 1:
        sub_020562D8(param0->fieldSys);
        break;
    default:
        GF_ASSERT(0);
    }

    return 1;
}

BOOL ScrCmd_185 (ScriptContext * param0)
{
    u16 v0;
    UnkStruct_0202CD88 * v1 = sub_0202CD88(param0->fieldSys->saveData);
    LocalMapObject ** v2 = sub_0203F098(param0->fieldSys, 10);

    sub_02055E00(param0->fieldSys, *v2);
    sub_0202CFEC(v1, 0);

    return 0;
}
