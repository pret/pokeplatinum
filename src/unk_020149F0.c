#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020149F0_decl.h"
#include "struct_decls/struct_strbuf_decl.h"

#include "struct_defs/struct_0205AA50.h"

#include "unk_020149F0.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "string/strbuf.h"

struct UnkStruct_020149F0_t {
    u32 unk_00;
    Strbuf * unk_04;
};

UnkStruct_020149F0 * sub_020149F0 (u32 param0)
{
    static const u16 v0[] = {
        0x11f,
        0xffff
    };
    UnkStruct_020149F0 * v1 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_020149F0));

    if (v1) {
        v1->unk_00 = (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((15 & 0xff) << 0));
        v1->unk_04 = PLString_Init(4, param0);
        PLString_FillWithChars(v1->unk_04, v0);
    }

    return v1;
}

void sub_02014A20 (UnkStruct_020149F0 * param0)
{
    GF_ASSERT(param0 != NULL);

    if (param0) {
        if (param0->unk_04) {
            PLString_Free(param0->unk_04);
        }

        Heap_FreeToHeap(param0);
    }
}

void sub_02014A40 (UnkStruct_020149F0 * param0, u32 param1)
{
    GF_ASSERT(param0 != NULL);

    if (param0) {
        param0->unk_00 = param1;
    }
}

void sub_02014A58 (const UnkStruct_020149F0 * param0, UnkStruct_0205AA50 * param1, u32 param2, u32 param3)
{
    sub_0201D78C(param1, 0, param0->unk_04, param2, param3, 0xff, param0->unk_00, NULL);
    sub_0201ACCC(param1);
}
