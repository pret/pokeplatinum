#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_0207ADB4_decl.h"
#include "overlay016/struct_ov16_0225BFFC_decl.h"

#include "overlay016/struct_ov16_0225BFFC_t.h"

#include "unk_0200762C.h"
#include "unk_0200D9E8.h"
#include "unk_0201D15C.h"
#include "overlay016/ov16_0223DF00.h"
#include "overlay016/ov16_02264798.h"

static void ov16_02264800(UnkStruct_0201CD38 * param0, void * param1);

void ov16_02264798 (UnkStruct_ov16_0225BFFC * param0, UnkStruct_0207ADB4 * param1)
{
    if (param0->unk_194 != NULL) {
        return;
    }

    if (ov16_0223DF0C(param1) & (0x20 | 0x200)) {
        return;
    }

    param0->unk_198 = 180;
    param0->unk_194 = sub_0200D9E8(ov16_02264800, param0, 1010);
}

void ov16_022647D8 (UnkStruct_ov16_0225BFFC * param0)
{
    if (param0->unk_194 == NULL) {
        return;
    }

    sub_0200DA58(param0->unk_194);

    param0->unk_194 = NULL;
    param0->unk_198 = 0;

    sub_02007DEC(param0->unk_20, 4, 0);
}

static void ov16_02264800 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0225BFFC * v0 = param1;
    int v1;

    v0->unk_198 += 20;

    if (v0->unk_198 >= 360) {
        v0->unk_198 -= 360;
    }

    v1 = FX_Mul(sub_0201D15C(v0->unk_198), 0x1800) / FX32_ONE;
    sub_02007DEC(v0->unk_20, 4, v1);
}
