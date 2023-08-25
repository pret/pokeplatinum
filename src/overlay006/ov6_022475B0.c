#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_021C0794_decl.h"

#include "narc.h"
#include "heap.h"
#include "unk_0202D7A8.h"
#include "overlay006/ov6_022475B0.h"

void ov6_022475B0 (UnkStruct_021C0794 * param0)
{
    u16 v0;
    u16 v1, v2;
    int v3[2];
    int * v4;

    v4 = NARC_AllocAtEndAndReadWholeMemberByIndexPair(NARC_INDEX_ARC__ENCDATA_EX, 8, 4);

    sub_0202DA10(param0, &v1, &v2);

    if (v1 != 0xffff) {
        v3[0] = v4[v1];
    } else {
        v3[0] = 0;
    }

    if (v2 != 0xffff) {
        v3[1] = v4[v2];
    } else {
        v3[1] = 0;
    }

    while (TRUE) {
        v0 = inline_020564D0(16);

        if ((v3[0] != v4[v0]) && (v3[1] != v4[v0])) {
            sub_0202DA24(param0, v0);
            break;
        }
    }

    Heap_FreeToHeap(v4);
}

int ov6_02247624 (UnkStruct_021C0794 * param0)
{
    int v0;
    int * v1;
    u16 v2, v3;

    sub_0202DA10(param0, &v2, &v3);

    GF_ASSERT(v2 != 0xffff);

    v1 = NARC_AllocAtEndAndReadWholeMemberByIndexPair(NARC_INDEX_ARC__ENCDATA_EX, 8, 4);
    v0 = v1[v2];

    Heap_FreeToHeap(v1);

    return v0;
}
