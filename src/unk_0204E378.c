#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_0203E724_decl.h"

#include "struct_defs/struct_0203E724_t.h"

#include "unk_0204E378.h"

BOOL sub_0204E378 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);
    u16 * v1 = inline_0204FCAC(param0);
    u16 * v2 = inline_0204FCAC(param0);
    static const u16 v3[][2] = {
        {0xFB, 0x3E8},
        {0x109, 0x3E8},
        {0x114, 0x3E8},
        {0x115, 0x3E8},
        {0x1A1, 0x7D0},
        {0x181, 0x7D0},
        {0x192, 0xFA0},
        {0x167, 0xFA0},
        {0x173, 0x1770},
        {0x1A0, 0x1770},
        {0x151, 0x1770},
        {0x162, 0x1F40},
        {0x15C, 0x1F40},
        {0x16A, 0x2710},
        {0x15F, 0x2710},
        {0x154, 0x2710},
        {0x164, 0x2710},
        {0x191, 0x3A98},
        {0x18B, 0x4E20}
    };

    *v1 = v3[v0][0];
    *v2 = v3[v0][1];

    return 0;
}
