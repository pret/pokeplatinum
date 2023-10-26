#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02009DC8_decl.h"
#include "struct_decls/struct_02009F38_decl.h"
#include "struct_decls/struct_02022550_decl.h"

#include "struct_defs/struct_02009508.h"
#include "struct_defs/struct_02009CFC.h"
#include "struct_defs/struct_0200D0F4.h"
#include "overlay005/struct_ov5_021D30A8.h"
#include "overlay007/struct_ov7_0224F2EC.h"
#include "overlay007/struct_ov7_0224F358.h"
#include "overlay019/struct_ov19_021DA864.h"
#include "overlay104/struct_ov104_0223F9E0.h"
#include "overlay104/struct_ov104_02241308.h"
#include "overlay115/struct_ov115_02261520.h"

#include "unk_020093B4.h"
#include "unk_02009714.h"
#include "unk_0200A328.h"
#include "unk_02017728.h"
#include "heap.h"
#include "unk_020218BC.h"
#include "overlay005/ov5_021D2F14.h"

static BOOL ov5_021D3478(UnkStruct_02009CFC * param0, UnkStruct_02009DC8 * param1);
static void ov5_021D34AC(UnkStruct_ov5_021D30A8 * param0, int param1, int param2, int param3, int param4, int param5);
static void ov5_021D3518(UnkStruct_ov5_021D30A8 * param0, NARC * param1, int param2, int param3, int param4, int param5);

void ov5_021D2F14 (UnkStruct_ov5_021D30A8 * param0, const UnkStruct_ov7_0224F2EC * param1, u32 param2, u32 param3)
{
    UnkStruct_02009F38 * v0;
    UnkStruct_02009F38 * v1;
    void * v2;
    u32 v3;
    u32 v4;

    param0->unk_00 = sub_020095C4(param2, &param0->unk_04, param3);
    param0->unk_1C6 = param3;

    if (param1->val2.unk_10 == NULL) {
        param0->unk_1C4 = 6 - 2;
    } else {
        param0->unk_1C4 = 6;
    }

    v1 = Heap_AllocFromHeap(param3, sub_02009F34() * param0->unk_1C4);

    for (v4 = 0; v4 < param0->unk_1C4; v4++) {
        v0 = sub_02009F38(v1, v4);
        v2 = sub_02017A40(param3, param1->val1[v4]);

        sub_02009F40(v2, v0, param3);
        Heap_FreeToHeap(v2);
    }

    for (v4 = 0; v4 < param0->unk_1C4; v4++) {
        v0 = sub_02009F38(v1, v4);
        v3 = sub_02009FA4(v0);
        param0->unk_194[v4] = sub_02009714(v3, v4, param3);
    }

    for (v4 = 0; v4 < param0->unk_1C4; v4++) {
        v0 = sub_02009F38(v1, v4);
        v3 = sub_02009FA4(v0);
        param0->unk_1AC[v4] = sub_02009CFC(v3, param3);
        sub_02009C80(param0->unk_194[v4], v0, param0->unk_1AC[v4], param3);
    }

    for (v4 = 0; v4 < param0->unk_1C4; v4++) {
        v0 = sub_02009F38(v1, v4);
        sub_02009F8C(v0);
    }

    Heap_FreeToHeap(v1);
    sub_0200A41C(param0->unk_1AC[0]);
    sub_0200A684(param0->unk_1AC[1]);

    v2 = sub_02017A40(param3, param1->val2.unk_18);
    param0->unk_190 = sub_02009508(v2, param3, param0->unk_194[0], param0->unk_194[1], param0->unk_194[2], param0->unk_194[3], param0->unk_194[4], param0->unk_194[5]);

    Heap_FreeToHeap(v2);
}

void ov5_021D30A8 (UnkStruct_ov5_021D30A8 * param0)
{
    u32 v0;

    sub_02021964(param0->unk_00);
    sub_020095A8(param0->unk_190);
    sub_0200A508(param0->unk_1AC[0]);
    sub_0200A700(param0->unk_1AC[1]);

    for (v0 = 0; v0 < param0->unk_1C4; v0++) {
        sub_02009D20(param0->unk_1AC[v0]);
        sub_02009754(param0->unk_194[v0]);
    }
}

UnkStruct_02022550 * ov5_021D3104 (UnkStruct_ov5_021D30A8 * param0, const UnkStruct_ov7_0224F358 * param1)
{
    UnkStruct_ov115_02261520 v0;
    UnkStruct_02022550 * v1;
    VecFx32 v2 = {FX32_ONE, FX32_ONE, FX32_ONE};
    VecFx32 v3;

    v3.x = param1->unk_04 * FX32_ONE;
    v3.y = param1->unk_06 * FX32_ONE;
    v3.z = param1->unk_08 * FX32_ONE;

    v0.unk_00 = param0->unk_00;
    v0.unk_04 = &param0->unk_190->unk_00[param1->unk_00];
    v0.unk_08 = v3;
    v0.unk_14 = v2;
    v0.unk_20 = 0;
    v0.unk_24 = param1->unk_0C;
    v0.unk_28 = param1->unk_14;
    v0.unk_2C = param0->unk_1C6;

    v1 = sub_02021AA0(&v0);
    GF_ASSERT(v1);

    sub_02021D6C(v1, param1->unk_0A);
    sub_02021EC4(v1, param1->unk_10);

    return v1;
}

void ov5_021D3190 (UnkStruct_ov5_021D30A8 * param0, UnkStruct_ov104_02241308 * param1, u32 param2, u32 param3)
{
    UnkStruct_02009F38 * v0;
    UnkStruct_02009F38 * v1;
    void * v2;
    u32 v3;
    u32 v4, v5;

    param0->unk_00 = sub_020095C4(param2, &param0->unk_04, param3);
    param0->unk_1C6 = param3;

    if ((param1->val2.unk_10 == 0) || (param1->val2.unk_14 == 0)) {
        param0->unk_1C4 = 6 - 2;
        param0->unk_194[4] = NULL;
        param0->unk_194[5] = NULL;
    } else {
        param0->unk_1C4 = 6;
    }

    for (v4 = 0; v4 < param0->unk_1C4; v4++) {
        param0->unk_194[v4] = sub_02009714(param1->val1[v4], v4, param3);
    }

    for (v4 = 0; v4 < param0->unk_1C4; v4++) {
        if (param1->val1[v4] == 0) {
            continue;
        }

        param0->unk_1AC[v4] = sub_02009CFC(param1->val1[v4], param3);

        for (v5 = 0; v5 < param0->unk_1AC[v4]->unk_04; v5++) {
            param0->unk_1AC[v4]->unk_00[v5] = NULL;
        }
    }
}

void ov5_021D3270 (UnkStruct_ov5_021D30A8 * param0, int param1, int param2, int param3, int param4, int param5, int param6)
{
    UnkStruct_02009DC8 * v0;
    int v1;

    if (sub_02009D34(param0->unk_194[1], param6) == 0) {
        GF_ASSERT(0);
        return;
    }

    v0 = sub_020098B8(param0->unk_194[1], param1, param2, param3, param6, param5, param4, param0->unk_1C6);

    if (v0 != NULL) {
        v1 = sub_0200A640(v0);
        GF_ASSERT(v1 == 1);

        ov5_021D3478(param0->unk_1AC[1], v0);
        sub_0200A760(v0, param5);
        return;
    }

    GF_ASSERT(0);
}

void ov5_021D32E8 (UnkStruct_ov5_021D30A8 * param0, NARC * param1, int param2, int param3, int param4, int param5, int param6)
{
    UnkStruct_02009DC8 * v0;
    int v1;

    if (sub_02009D34(param0->unk_194[1], param6) == 0) {
        GF_ASSERT(0);
        return;
    }

    v0 = sub_02009B04(param0->unk_194[1], param1, param2, param3, param6, param5, param4, param0->unk_1C6);

    if (v0 != NULL) {
        v1 = sub_0200A640(v0);
        GF_ASSERT(v1 == 1);

        ov5_021D3478(param0->unk_1AC[1], v0);
        sub_0200A760(v0, param5);
        return;
    }

    GF_ASSERT(0);
}

void ov5_021D3360 (UnkStruct_ov5_021D30A8 * param0, int param1, int param2, int param3, int param4)
{
    ov5_021D34AC(param0, param1, param2, param3, 2, param4);
}

void ov5_021D3374 (UnkStruct_ov5_021D30A8 * param0, NARC * param1, int param2, int param3, int param4)
{
    ov5_021D3518(param0, param1, param2, param3, 2, param4);
}

void ov5_021D3388 (UnkStruct_ov5_021D30A8 * param0, int param1, int param2, int param3, int param4)
{
    ov5_021D34AC(param0, param1, param2, param3, 3, param4);
}

void ov5_021D339C (UnkStruct_ov5_021D30A8 * param0, NARC * param1, int param2, int param3, int param4)
{
    ov5_021D3518(param0, param1, param2, param3, 3, param4);
}

void ov5_021D33B0 (UnkStruct_ov5_021D30A8 * param0, int param1, int param2, BOOL param3, int param4, int param5)
{
    UnkStruct_02009DC8 * v0;

    if (sub_02009D34(param0->unk_194[0], param5) == 0) {
        GF_ASSERT(0);
        return;
    }

    v0 = sub_0200985C(param0->unk_194[0], param1, param2, param3, param5, param4, param0->unk_1C6);

    if (v0 != NULL) {
        sub_0200A3DC(v0);
        ov5_021D3478(param0->unk_1AC[0], v0);
        return;
    }

    GF_ASSERT(0);
}

void ov5_021D3414 (UnkStruct_ov5_021D30A8 * param0, NARC * param1, int param2, BOOL param3, int param4, int param5)
{
    UnkStruct_02009DC8 * v0;

    if (sub_02009D34(param0->unk_194[0], param5) == 0) {
        GF_ASSERT(0);
        return;
    }

    v0 = sub_02009A4C(param0->unk_194[0], param1, param2, param3, param5, param4, param0->unk_1C6);

    if (v0 != NULL) {
        sub_0200A3DC(v0);
        ov5_021D3478(param0->unk_1AC[0], v0);

        return;
    }

    GF_ASSERT(0);
}

static BOOL ov5_021D3478 (UnkStruct_02009CFC * param0, UnkStruct_02009DC8 * param1)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        if (param0->unk_00[v0] != NULL) {
            continue;
        }

        param0->unk_00[v0] = param1;
        param0->unk_08++;

        return 1;
    }

    return 0;
}

static void ov5_021D34AC (UnkStruct_ov5_021D30A8 * param0, int param1, int param2, int param3, int param4, int param5)
{
    UnkStruct_02009DC8 * v0;
    int v1;

    if (sub_02009D34(param0->unk_194[param4], param5) == 0) {
        GF_ASSERT(0);
        return;
    }

    v0 = sub_02009918(param0->unk_194[param4], param1, param2, param3, param5, param4, param0->unk_1C6);

    if (v0 != NULL) {
        v1 = ov5_021D3478(param0->unk_1AC[param4], v0);
        GF_ASSERT(v1 == 1);
        return;
    }

    GF_ASSERT(0);
}

static void ov5_021D3518 (UnkStruct_ov5_021D30A8 * param0, NARC * param1, int param2, int param3, int param4, int param5)
{
    UnkStruct_02009DC8 * v0;
    int v1;

    if (sub_02009D34(param0->unk_194[param4], param5) == 0) {
        GF_ASSERT(0);
        return;
    }

    v0 = sub_02009BC4(param0->unk_194[param4], param1, param2, param3, param5, param4, param0->unk_1C6);

    if (v0 != NULL) {
        v1 = ov5_021D3478(param0->unk_1AC[param4], v0);

        GF_ASSERT(v1 == 1);
        return;
    }

    GF_ASSERT(0);
}

CellActorData * ov5_021D3584 (UnkStruct_ov5_021D30A8 * param0, const UnkStruct_ov104_0223F9E0 * param1)
{
    int v0;
    int v1;
    CellActorData * v2 = NULL;
    UnkStruct_ov115_02261520 v3;
    int v4[6];

    v2 = Heap_AllocFromHeap(param0->unk_1C6, sizeof(CellActorData));

    v2->unk_08 = Heap_AllocFromHeap(param0->unk_1C6, sizeof(UnkStruct_02009508));
    v2->unk_08->unk_00 = Heap_AllocFromHeap(param0->unk_1C6, sizeof(UnkStruct_ov19_021DA864));
    v2->unk_04 = v2->unk_08->unk_00;

    for (v0 = 0; v0 < 6; v0++) {
        v4[v0] = param1->unk_14[v0];
    }

    if ((param0->unk_194[4] == NULL) || (param0->unk_194[5] == NULL)) {
        v4[4] = 0xffffffff;
        v4[5] = 0xffffffff;
    } else {
        if ((v4[4] != 0xffffffff) && (sub_02009D34(param0->unk_194[4], v4[4]) == 0)) {
            v4[4] = 0xffffffff;
        }

        if ((v4[5] != 0xffffffff) && (sub_02009D34(param0->unk_194[5], v4[5]) == 0)) {
            v4[5] = 0xffffffff;
        }
    }

    sub_020093B4(v2->unk_04, v4[0], v4[1], v4[2], v4[3], v4[4], v4[5], param1->unk_30, param1->unk_2C, param0->unk_194[0], param0->unk_194[1], param0->unk_194[2], param0->unk_194[3], param0->unk_194[4], param0->unk_194[5]);

    v3.unk_00 = param0->unk_00;
    v3.unk_04 = v2->unk_04;
    v3.unk_08.x = FX32_CONST(param1->unk_00);
    v3.unk_08.y = FX32_CONST(param1->unk_02);
    v3.unk_08.z = FX32_CONST(param1->unk_04);

    if (param1->unk_10 == NNS_G2D_VRAM_TYPE_2DSUB) {
        v3.unk_08.y += (192 << FX32_SHIFT);
    }

    v3.unk_14.x = FX32_ONE;
    v3.unk_14.y = FX32_ONE;
    v3.unk_14.z = FX32_ONE;
    v3.unk_20 = 0;
    v3.unk_24 = param1->unk_08;
    v3.unk_28 = param1->unk_10;
    v3.unk_2C = param0->unk_1C6;

    v2->unk_00 = sub_02021AA0(&v3);

    if (v2->unk_00 != NULL) {
        v1 = sub_02021EE8(v2->unk_00);
        sub_02021D6C(v2->unk_00, param1->unk_06);
        sub_02021E90(v2->unk_00, v1 + param1->unk_0C);
    } else {
        GF_ASSERT(FALSE);
    }

    return v2;
}

void ov5_021D375C (UnkStruct_ov5_021D30A8 * param0)
{
    u32 v0;

    sub_02021964(param0->unk_00);
    sub_0200A508(param0->unk_1AC[0]);
    sub_0200A700(param0->unk_1AC[1]);

    for (v0 = 0; v0 < param0->unk_1C4; v0++) {
        sub_02009D20(param0->unk_1AC[v0]);
        sub_02009754(param0->unk_194[v0]);
    }
}
