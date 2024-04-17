#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "field/field_system.h"
#include "unk_0203E724.h"

#include "unk_0204E240.h"
#include "unk_0207D3B8.h"

const u16 Unk_020EBFFC[7][2] = {
    {0x67, 0x8E},
    {0x65, 0x8A},
    {0x66, 0x8C},
    {0x63, 0x159},
    {0x64, 0x15B},
    {0x68, 0x19A},
    {0x69, 0x198}
};

BOOL sub_0204E240 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    u8 v1;
    u16 v2, v3;
    u16 * v4 = ScriptContext_GetVarPointer(param0);

    for (v1 = 0, v3 = 0; v1 < 7; v1++) {
        v3 += sub_0207D730(sub_0207D990(v0->saveData), Unk_020EBFFC[v1][0], 4);
    }

    *v4 = v3;

    return 0;
}

BOOL sub_0204E28C (ScriptContext * param0)
{
    u16 v0;
    u16 * v1 = ScriptContext_GetVarPointer(param0);
    u16 v2 = ScriptContext_GetVar(param0);

    *v1 = 0;

    for (v0 = 0; v0 < 7; v0++) {
        if (Unk_020EBFFC[v0][0] == v2) {
            *v1 = Unk_020EBFFC[v0][1];
            break;
        }
    }

    return 0;
}

BOOL sub_0204E2E0 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;
    u8 v1;
    u16 v2, v3;
    u16 * v4 = ScriptContext_GetVarPointer(param0);
    u16 * v5 = ScriptContext_GetVarPointer(param0);
    u16 v6 = ScriptContext_GetVar(param0);

    *v4 = 0;
    *v5 = 0;

    for (v1 = 0, v3 = 0; v1 < 7; v1++) {
        v3 += sub_0207D730(sub_0207D990(v0->saveData), Unk_020EBFFC[v1][0], 4);

        if (v3 >= v6) {
            *v4 = Unk_020EBFFC[v1][0];
            *v5 = v1;
            break;
        }
    }

    return 0;
}

BOOL sub_0204E370 (ScriptContext * param0)
{
    return 0;
}

BOOL sub_0204E374 (ScriptContext * param0)
{
    return 0;
}
