#include "overlay070/ov70_0225C858.h"

#include <nitro.h>
#include <string.h>

#include "overlay063/ov63_0222BCE8.h"
#include "overlay063/struct_ov63_0222BCE8_decl.h"

#include "graphics.h"
#include "heap.h"

typedef struct UnkStruct_ov70_0225C894_t {
    UnkStruct_ov63_0222BCE8 *unk_00;
} UnkStruct_ov70_0225C894;

UnkStruct_ov70_0225C894 *ov70_0225C858(u32 heapID)
{
    UnkStruct_ov70_0225C894 *v0;
    void *v1;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov70_0225C894));
    v0->unk_00 = ov63_0222BCE8(35, 42, heapID);

    v1 = LoadMemberFromNARC(174, 0, 0, heapID, 1);

    ov63_0222BD50(v0->unk_00, v1);
    Heap_FreeToHeap(v1);

    return v0;
}

void ov70_0225C894(UnkStruct_ov70_0225C894 *param0)
{
    ov63_0222BD30(param0->unk_00);
    Heap_FreeToHeap(param0);
}

u16 ov70_0225C8A8(const UnkStruct_ov70_0225C894 *param0)
{
    return 35;
}

BOOL ov70_0225C8AC(const UnkStruct_ov70_0225C894 *param0, u16 param1, u16 param2)
{
    return ov63_0222BDAC(param0->unk_00, param1, param2);
}

u32 ov70_0225C8B8(const UnkStruct_ov70_0225C894 *param0, u16 param1, u16 param2)
{
    u32 v0 = ov63_0222BDE4(param0->unk_00, param1, param2);
    return v0 >> 15;
}

u32 ov70_0225C8C4(const UnkStruct_ov70_0225C894 *param0, u16 param1, u16 param2)
{
    u32 v0 = ov63_0222BDE4(param0->unk_00, param1, param2);
    v0 &= 0x7fff;

    return v0;
}

BOOL ov70_0225C8D8(const UnkStruct_ov70_0225C894 *param0, u32 param1, u16 *param2, u16 *param3, u32 param4)
{
    int v0, v1, v2;
    u32 v3;

    v2 = 0;

    for (v0 = 0; v0 < 42; v0++) {
        for (v1 = 0; v1 < 35; v1++) {
            v3 = ov70_0225C8B8(param0, v1, v0);

            if (v3 == param1) {
                if (v2 >= param4) {
                    *param2 = v1;
                    *param3 = v0;
                    return 1;
                }

                v2++;
            }
        }
    }

    return 0;
}

BOOL ov70_0225C930(u32 param0)
{
    static const u8 v0[] = {
        1,
        6,
        7,
        8,
        9,
        10,
        11,
        12,
        13,
        14,
        15,
        16,
        17,
        18,
        19,
        20,
        21,
        22,
        23,
        24,
        25,
        26,
        27,
        28,
        29,
        30,
        31,
        32,
        33,
        34,
        35,
        44
    };
    int v1;

    for (v1 = 0; v1 < NELEMS(v0); v1++) {
        if (param0 == v0[v1]) {
            return 1;
        }
    }

    return 0;
}

BOOL ov70_0225C950(u32 param0)
{
    static const u8 v0[] = {
        39,
        40,
        41,
    };
    int v1;

    for (v1 = 0; v1 < NELEMS(v0); v1++) {
        if (param0 == v0[v1]) {
            return 1;
        }
    }

    return 0;
}

BOOL ov70_0225C970(u32 param0)
{
    static const u8 v0[] = {
        36, 37, 38, 39, 40, 41, 43
    };
    int v1;

    for (v1 = 0; v1 < NELEMS(v0); v1++) {
        if (param0 == v0[v1]) {
            return 1;
        }
    }

    return 0;
}

BOOL ov70_0225C990(u32 param0)
{
    static const u8 v0[] = {
        2,
        3,
        4,
        5,
    };
    int v1;

    for (v1 = 0; v1 < NELEMS(v0); v1++) {
        if (param0 == v0[v1]) {
            return 1;
        }
    }

    return 0;
}

const UnkStruct_ov63_0222BCE8 *ov70_0225C9B0(const UnkStruct_ov70_0225C894 *param0)
{
    return param0->unk_00;
}
