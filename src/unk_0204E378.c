#include "unk_0204E378.h"

#include <nitro.h>
#include <string.h>

#include "field_script_context.h"
#include "inlines.h"

BOOL ScrCmd_2A6(ScriptContext *param0)
{
    u16 v0 = ScriptContext_GetVar(param0);
    u16 *v1 = ScriptContext_GetVarPointer(param0);
    u16 *v2 = ScriptContext_GetVarPointer(param0);
    static const u16 v3[][2] = {
        { 0xFB, 0x3E8 },
        { 0x109, 0x3E8 },
        { 0x114, 0x3E8 },
        { 0x115, 0x3E8 },
        { 0x1A1, 0x7D0 },
        { 0x181, 0x7D0 },
        { 0x192, 0xFA0 },
        { 0x167, 0xFA0 },
        { 0x173, 0x1770 },
        { 0x1A0, 0x1770 },
        { 0x151, 0x1770 },
        { 0x162, 0x1F40 },
        { 0x15C, 0x1F40 },
        { 0x16A, 0x2710 },
        { 0x15F, 0x2710 },
        { 0x154, 0x2710 },
        { 0x164, 0x2710 },
        { 0x191, 0x3A98 },
        { 0x18B, 0x4E20 }
    };

    *v1 = v3[v0][0];
    *v2 = v3[v0][1];

    return 0;
}
