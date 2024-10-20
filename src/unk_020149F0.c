#include "unk_020149F0.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020149F0_decl.h"
#include "struct_defs/struct_0205AA50.h"

#include "heap.h"
#include "strbuf.h"
#include "text.h"
#include "unk_02018340.h"

struct UnkStruct_020149F0_t {
    TextColor unk_00;
    Strbuf *unk_04;
};

UnkStruct_020149F0 *sub_020149F0(u32 param0)
{
    static const u16 v0[] = {
        0x11f,
        0xffff
    };
    UnkStruct_020149F0 *v1 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_020149F0));

    if (v1) {
        v1->unk_00 = TEXT_COLOR(1, 2, 15);
        v1->unk_04 = Strbuf_Init(4, param0);
        Strbuf_CopyChars(v1->unk_04, v0);
    }

    return v1;
}

void sub_02014A20(UnkStruct_020149F0 *param0)
{
    GF_ASSERT(param0 != NULL);

    if (param0) {
        if (param0->unk_04) {
            Strbuf_Free(param0->unk_04);
        }

        Heap_FreeToHeap(param0);
    }
}

void sub_02014A40(UnkStruct_020149F0 *param0, TextColor param1)
{
    GF_ASSERT(param0 != NULL);

    if (param0) {
        param0->unk_00 = param1;
    }
}

void sub_02014A58(const UnkStruct_020149F0 *param0, Window *param1, u32 param2, u32 param3)
{
    Text_AddPrinterWithParamsAndColor(param1, FONT_SYSTEM, param0->unk_04, param2, param3, TEXT_SPEED_NO_TRANSFER, param0->unk_00, NULL);
    sub_0201ACCC(param1);
}
