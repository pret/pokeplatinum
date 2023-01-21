#include <nitro.h>
#include <string.h>

#include "overlay115/struct_ov115_02262F50.h"
#include "overlay115/struct_ov115_02265AD0.h"
#include "overlay115/struct_ov115_02265AD4.h"

#include "heap.h"
#include "overlay115/ov115_02260BBC.h"

typedef struct UnkStruct_ov115_02260BE4_t {
    s32 unk_00;
    BOOL unk_04;
    u32 unk_08;
    UnkStruct_ov115_02265AD4 unk_0C;
    u32 unk_1C;
    u32 unk_20[4];
    const UnkStruct_ov115_02262F50 * unk_30;
    u16 unk_34;
    u8 unk_36;
    u8 unk_37;
} UnkStruct_ov115_02260BE4;

static u32 ov115_02260CCC(const UnkStruct_ov115_02260BE4 * param0);

UnkStruct_ov115_02260BE4 * ov115_02260BBC (u32 param0, u32 param1, u32 param2, const UnkStruct_ov115_02262F50 * param3)
{
    UnkStruct_ov115_02260BE4 * v0;

    v0 = AllocFromHeap(param0, sizeof(UnkStruct_ov115_02260BE4));
    memset(v0, 0, sizeof(UnkStruct_ov115_02260BE4));

    v0->unk_00 = param1;
    v0->unk_08 = param2;
    v0->unk_30 = param3;
    v0->unk_04 = 1;

    return v0;
}

void ov115_02260BE4 (UnkStruct_ov115_02260BE4 * param0)
{
    FreeToHeap(param0);
}

BOOL ov115_02260BEC (UnkStruct_ov115_02260BE4 * param0)
{
    int v0;

    if ((param0->unk_00 > 0) && (param0->unk_04 == 1)) {
        param0->unk_00--;
    }

    if (param0->unk_00 <= 0) {
        return 0;
    }

    for (v0 = param0->unk_36; v0 < param0->unk_30->unk_00; v0++) {
        if (param0->unk_30->unk_04[v0].unk_00 >= param0->unk_34) {
            break;
        }
    }

    if (v0 == param0->unk_30->unk_00) {
        v0--;
    }

    if (v0 != param0->unk_36) {
        param0->unk_36 = v0;
        param0->unk_37 = 1;
    }

    return 1;
}

BOOL ov115_02260C54 (const UnkStruct_ov115_02260BE4 * param0)
{
    return param0->unk_37;
}

void ov115_02260C5C (UnkStruct_ov115_02260BE4 * param0)
{
    param0->unk_37 = 0;
}

u32 ov115_02260C64 (const UnkStruct_ov115_02260BE4 * param0)
{
    return param0->unk_36;
}

void ov115_02260C6C (UnkStruct_ov115_02260BE4 * param0, const UnkStruct_ov115_02265AD0 * param1, u32 param2)
{
    if (param1->unk_02) {
        param0->unk_34++;
    }
}

void ov115_02260C7C (UnkStruct_ov115_02260BE4 * param0, u32 param1, u32 param2)
{
    int v0;
    int v1;

    if (param1 > 99999) {
        param1 = 99999;
    }

    if ((param0->unk_1C & (1 << param2)) == 0) {
        param0->unk_0C.unk_00[param2] = param1;
        param0->unk_1C |= (1 << param2);
    }
}

BOOL ov115_02260CA4 (const UnkStruct_ov115_02260BE4 * param0)
{
    int v0;

    v0 = ov115_02260CCC(param0);

    if (v0 >= param0->unk_08) {
        return 1;
    }

    return 0;
}

void ov115_02260CBC (UnkStruct_ov115_02260BE4 * param0, UnkStruct_ov115_02265AD4 * param1)
{
    *param1 = param0->unk_0C;
}

static u32 ov115_02260CCC (const UnkStruct_ov115_02260BE4 * param0)
{
    int v0;
    int v1;

    v1 = 0;

    for (v0 = 0; v0 < 4; v0++) {
        if ((param0->unk_1C & (1 << v0)) != 0) {
            v1++;
        }
    }

    return v1;
}
