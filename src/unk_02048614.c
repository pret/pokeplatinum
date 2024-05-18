#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/sys_task.h"
#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system.h"

#include "unk_020041CC.h"
#include "field_script_context.h"
#include "unk_0203E880.h"
#include "unk_020507CC.h"
#include "unk_02050A74.h"
#include "unk_02051D8C.h"
#include "unk_020528D0.h"
#include "unk_02054884.h"
#include "unk_020553DC.h"
#include "map_object.h"
#include "unk_02067A84.h"
#include "unk_0206A8DC.h"
#include "unk_0206AFE0.h"
#include "party.h"

BOOL ScrCmd_0B6(ScriptContext * param0);
BOOL ScrCmd_0B7(ScriptContext * param0);
BOOL ScrCmd_0B8(ScriptContext * param0);
BOOL ScrCmd_0B9(ScriptContext * param0);
BOOL ScrCmd_0E4(ScriptContext * param0);
BOOL ScrCmd_0E5(ScriptContext * param0);
BOOL ScrCmd_2A0(ScriptContext * param0);
BOOL ScrCmd_0E7(ScriptContext * param0);
BOOL ScrCmd_0E8(ScriptContext * param0);
BOOL ScrCmd_0E9(ScriptContext * param0);
BOOL ScrCmd_0EA(ScriptContext * param0);
BOOL ScrCmd_0EB(ScriptContext * param0);
BOOL ScrCmd_0EC(ScriptContext * param0);
BOOL ScrCmd_0ED(ScriptContext * param0);
BOOL ScrCmd_2BC(ScriptContext * param0);
BOOL ScrCmd_0EE(ScriptContext * param0);
BOOL ScrCmd_0EF(ScriptContext * param0);
BOOL ScrCmd_0F0(ScriptContext * param0);
BOOL ScrCmd_0F1(ScriptContext * param0);
BOOL ScrCmd_314(ScriptContext * param0);

BOOL ScrCmd_0B6 (ScriptContext * param0)
{
    int * v0;
    int * v1;
    int * v2;
    int * v3;
    int * v4;
    SysTask ** v5;
    MapObject ** v6;
    PlayerAvatar * v7;
    FieldSystem * v8 = param0->fieldSys;
    u16 v9 = ScriptContext_GetVar(param0);

    if (v9 == 0) {
        v0 = sub_0203F098(v8, 24);
        v4 = sub_0203F098(v8, 25);
        v1 = sub_0203F098(v8, 26);
        v2 = sub_0203F098(v8, 27);
        v3 = sub_0203F098(v8, 28);
        v6 = sub_0203F098(v8, 29);
        v5 = sub_0203F098(v8, 30);
    } else {
        v0 = sub_0203F098(v8, 31);
        v4 = sub_0203F098(v8, 32);
        v1 = sub_0203F098(v8, 33);
        v2 = sub_0203F098(v8, 34);
        v3 = sub_0203F098(v8, 35);
        v6 = sub_0203F098(v8, 36);
        v5 = sub_0203F098(v8, 37);
    }

    v7 = v8->playerAvatar;
    *v5 = sub_02067FB8(v8, *v6, v7, *v4, *v0, 0, *v3, v9);

    return 0;
}

BOOL ScrCmd_0B7 (ScriptContext * param0)
{
    SysTask ** v0;
    u16 v1 = ScriptContext_GetVar(param0);
    u16 * v2 = ScriptContext_GetVarPointer(param0);

    *v2 = 0;

    if (v1 == 0) {
        v0 = sub_0203F098(param0->fieldSys, 30);
    } else {
        v0 = sub_0203F098(param0->fieldSys, 37);
    }

    if (*v0 == NULL) {
        *v2 = 1;
        return 1;
    }

    if (sub_02067FD4(*v0) == 1) {
        sub_02067FE8(*v0);
        *v0 = NULL;
        *v2 = 1;
    }

    return 1;
}

BOOL ScrCmd_0B8 (ScriptContext * param0)
{
    u16 * v0 = sub_0203F098(param0->fieldSys, 28);
    u16 * v1 = ScriptContext_GetVarPointer(param0);

    *v1 = *v0;
    return 0;
}

BOOL ScrCmd_0B9 (ScriptContext * param0)
{
    u16 * v0 = sub_0203F098(param0->fieldSys, 27);
    u16 * v1 = sub_0203F098(param0->fieldSys, 34);
    u16 v2 = ScriptContext_GetVar(param0);
    u16 * v3 = ScriptContext_GetVarPointer(param0);

    *v3 = (v2 == 0) ? (*v0) : (*v1);
    return 0;
}

BOOL ScrCmd_0E4 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    u16 * v1 = sub_0203F098(v0, 8);
    u16 * v2 = ScriptContext_GetVarPointer(param0);

    *v2 = sub_0203F254(*v1);
    return 0;
}

BOOL ScrCmd_0E5 (ScriptContext * param0)
{
    u32 v0;
    FieldSystem * v1 = param0->fieldSys;
    u16 * v2 = sub_0203F098(v1, 8);
    BOOL * v3 = sub_0203F098(v1, 23);
    u16 v4 = ScriptContext_GetVar(param0);
    u16 v5 = ScriptContext_GetVar(param0);
    u16 v6;

    v6 = 0;

    if (sub_0206A984(SaveData_Events(param0->fieldSys->saveData)) == 1) {
        v6 = sub_0206B034(SaveData_Events(v1->saveData));
    }

    sub_020515CC(param0->taskManager, v4, v5, v6, 11, v3);
    return 1;
}

BOOL ScrCmd_2A0 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    BOOL * v1 = sub_0203F098(v0, 23);
    u16 v2 = ScriptContext_GetVar(param0);
    u16 v3 = ScriptContext_GetVar(param0);
    u16 v4 = ScriptContext_GetVar(param0);

    sub_020515CC(param0->taskManager, v3, v4, v2, 11, v1);
    return 1;
}

BOOL ScrCmd_0E7 (ScriptContext * param0)
{
    u16 v0, v1, v2, v3, v4;
    u16 * v5 = sub_0203F098(param0->fieldSys, 8);
    u16 * v6 = ScriptContext_GetVarPointer(param0);
    u16 * v7 = ScriptContext_GetVarPointer(param0);
    u16 * v8 = ScriptContext_GetVarPointer(param0);

    v0 = sub_0203F28C(sub_0203F254(*v5));

    if (v0 == 0) {
        v2 = 0;
        v3 = 2;
        v4 = 0;
    } else {
        v1 = sub_0203F278(*v5);

        if (v1 == 0) {
            v2 = 3;
            v3 = 5;
            v4 = 6;
        } else {
            v2 = 7;
            v3 = 9;
            v4 = 10;
        }
    }

    *v6 = v2;
    *v7 = v3;
    *v8 = v4;

    return 0;
}

BOOL ScrCmd_0E8 (ScriptContext * param0)
{
    u16 v0, v1, v2, v3, v4;
    u16 * v5 = sub_0203F098(param0->fieldSys, 8);
    u16 * v6 = ScriptContext_GetVarPointer(param0);
    u16 * v7 = ScriptContext_GetVarPointer(param0);
    u16 * v8 = ScriptContext_GetVarPointer(param0);

    v0 = sub_0203F28C(sub_0203F254(*v5));

    if (v0 == 0) {
        v2 = 17;
        v3 = 0;
        v4 = 0;
    } else {
        v1 = sub_0203F278(*v5);

        if (v1 == 0) {
            v2 = 18;
            v3 = 0;
            v4 = 6;
        } else {
            v2 = 19;
            v3 = 0;
            v4 = 10;
        }
    }

    *v6 = v2;
    *v7 = v3;
    *v8 = v4;

    return 0;
}

BOOL ScrCmd_0E9 (ScriptContext * param0)
{
    u16 * v0 = sub_0203F098(param0->fieldSys, 8);
    u16 * v1 = ScriptContext_GetVarPointer(param0);

    *v1 = sub_0203F28C(sub_0203F254(*v0));
    return 0;
}

BOOL ScrCmd_0EA (ScriptContext * param0)
{
    u16 v0 = ScriptContext_GetVar(param0);

    sub_02004950(sub_0205560C(v0));
    return 1;
}

BOOL ScrCmd_0EB (ScriptContext * param0)
{
    sub_02052C5C(param0->taskManager);
    return 1;
}

BOOL ScrCmd_0EC (ScriptContext * param0)
{
    BOOL * v0 = sub_0203F098(param0->fieldSys, 23);
    u16 * v1 = ScriptContext_GetVarPointer(param0);

    *v1 = sub_02052868(*v0);
    return 1;
}

BOOL ScrCmd_0ED (ScriptContext * param0)
{
    BOOL * v0 = sub_0203F098(param0->fieldSys, 23);
    u16 * v1 = ScriptContext_GetVarPointer(param0);

    *v1 = sub_02052878(*v0);
    return 1;
}

BOOL ScrCmd_2BC (ScriptContext * param0)
{
    BOOL * v0 = sub_0203F098(param0->fieldSys, 23);
    u16 * v1 = ScriptContext_GetVarPointer(param0);

    *v1 = sub_02052888(*v0);
    return 1;
}

BOOL ScrCmd_0EE (ScriptContext * param0)
{
    u16 * v0 = ScriptContext_GetVarPointer(param0);

    *v0 = sub_02054AB0(Party_GetFromSavedata(param0->fieldSys->saveData));
    return 0;
}

BOOL ScrCmd_0EF (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    BOOL * v1 = sub_0203F098(v0, 23);

    sub_020515CC(param0->taskManager, 1, 0, 0, 11, v1);

    return 1;
}

BOOL ScrCmd_0F0 (ScriptContext * param0)
{
    MapObject ** v0;
    FieldSystem * v1 = param0->fieldSys;

    v0 = sub_0203F098(v1, 10);
    sub_0203F2BC(MapObject_FieldSystem(*v0), sub_02062910(*v0));

    return 0;
}

BOOL ScrCmd_0F1 (ScriptContext * param0)
{
    int v0;
    s32 v1;
    MapObject ** v2;
    FieldSystem * v3 = param0->fieldSys;

    v2 = sub_0203F098(v3, 10);
    v1 = (s32)ScriptContext_ReadWord(param0);
    v0 = sub_0203F2A0(MapObject_FieldSystem(*v2), sub_02062910(*v2));

    if (v0 == 1) {
        ScriptContext_Jump(param0, (u8 *)(param0->scriptPtr + v1));
        return 1;
    }

    return 0;
}

BOOL ScrCmd_314 (ScriptContext * param0)
{
    BOOL * v0 = sub_0203F098(param0->fieldSys, 23);
    u16 * v1 = ScriptContext_GetVarPointer(param0);

    *v1 = *v0;
    return 1;
}
