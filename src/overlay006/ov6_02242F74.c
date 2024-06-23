#include "overlay006/ov6_02242F74.h"

#include <nitro.h>
#include <string.h>

#include "heap.h"
#include "narc.h"

static u8 ov6_02242FC0(const int param0);

void ov6_02242F74(const int param0, const BOOL param1, const int param2, int *param3, int *param4)
{
    int *v0;
    int v1;
    u8 v2;
    u8 v3 = ov6_02242FC0(param2);

    if (param1) {
        v1 = 9;
    } else {
        v1 = 10;
    }

    v0 = NARC_AllocAtEndAndReadWholeMemberByIndexPair(NARC_INDEX_ARC__ENCDATA_EX, v1, 4);
    v2 = ((param0 >> (5 * v3)) & 0x1f);
    v2 %= 32;

    (*param3) = v0[v2];
    (*param4) = v0[v2];

    Heap_FreeToHeap(v0);
}

static u8 ov6_02242FC0(const int param0)
{
    u8 v0 = 0;

    switch (param0) {
    case 504:
        v0 = 0;
        break;
    case 505:
        v0 = 1;
        break;
    case 506:
        v0 = 2;
        break;
    case 507:
        v0 = 3;
        break;
    case 508:
        v0 = 4;
        break;
    case 509:
        v0 = 5;
        break;
    default:
        GF_ASSERT(FALSE);
    }

    return v0;
}
