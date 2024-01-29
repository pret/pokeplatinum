#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02009714_decl.h"
#include "struct_decls/struct_02009DC8_decl.h"
#include "struct_decls/struct_02009F38_decl.h"
#include "struct_decls/struct_020218BC_decl.h"
#include "struct_decls/struct_02022550_decl.h"

#include "struct_defs/struct_02009508.h"
#include "struct_defs/struct_02009CFC.h"
#include "struct_defs/struct_0200C738.h"
#include "struct_defs/struct_0200D0F4.h"
#include "overlay007/struct_ov7_0224F2EC.h"
#include "overlay007/struct_ov7_0224F358.h"
#include "overlay019/struct_ov19_021DA864.h"
#include "overlay022/struct_ov22_022559F8.h"
#include "overlay104/struct_ov104_0223F9E0.h"
#include "overlay104/struct_ov104_022412F4.h"
#include "overlay104/struct_ov104_02241308.h"
#include "overlay104/struct_ov104_0224133C.h"
#include "overlay115/struct_ov115_02261520.h"

#include "unk_02002F38.h"
#include "unk_020093B4.h"
#include "unk_02009714.h"
#include "unk_0200A328.h"
#include "unk_0200A784.h"
#include "unk_0200C6E4.h"
#include "unk_02017728.h"
#include "heap.h"
#include "unk_0201DBEC.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "unk_020218BC.h"

typedef struct CellTransferStateData_t {
    int unk_00;
    int unk_04;
    int unk_08;
    NNSG2dCellTransferState * unk_0C;
    UnkStruct_0200C738 unk_10;
} CellTransferStateData;

typedef struct AnimationResourceCollection_t {
    GraphicElementManager * unk_00;
    UnkStruct_02009508 * unk_04;
    UnkStruct_02009F38 * unk_08;
    UnkStruct_02009714 * unk_0C[6];
    UnkStruct_02009CFC * unk_24[6];
    int unk_3C[6];
    int unk_54;
} AnimationResourceCollection;

static BOOL sub_0200D11C(CellTransferStateData * param0, AnimationResourceCollection * param1, int param2, int param3, int param4, int param5, int param6);
static BOOL sub_0200D18C(CellTransferStateData * param0, AnimationResourceCollection * param1, NARC * param2, int param3, int param4, int param5, int param6);
static BOOL sub_0200D1FC(UnkStruct_02009CFC * param0, UnkStruct_02009DC8 * param1);
static BOOL sub_0200D27C(UnkStruct_02009714 * param0, UnkStruct_02009CFC * param1, int param2);
static BOOL sub_0200D2D0(UnkStruct_02009714 * param0, UnkStruct_02009CFC * param1, int param2);
static BOOL sub_0200D230(UnkStruct_02009714 * param0, UnkStruct_02009CFC * param1, int param2);

CellTransferStateData * sub_0200C6E4 (int param0)
{
    CellTransferStateData * v0 = NULL;

    v0 = Heap_AllocFromHeap(param0, sizeof(CellTransferStateData));

    if (v0 == NULL) {
        return NULL;
    }

    v0->unk_00 = param0;
    v0->unk_04 = 0;
    v0->unk_08 = 1;

    return v0;
}

AnimationResourceCollection * sub_0200C704 (CellTransferStateData * param0)
{
    int v0;
    AnimationResourceCollection * v1 = NULL;

    GF_ASSERT(param0 != NULL);

    v1 = Heap_AllocFromHeap(param0->unk_00, sizeof(AnimationResourceCollection));

    if (v1 == NULL) {
        return NULL;
    }

    param0->unk_04++;

    for (v0 = 0; v0 < 6; v0++) {
        v1->unk_0C[v0] = NULL;
    }

    return v1;
}

UnkStruct_0200C738 * sub_0200C738 (CellTransferStateData * param0)
{
    return &param0->unk_10;
}

BOOL sub_0200C73C (CellTransferStateData * param0, const UnkStruct_ov104_0224133C * param1, const UnkStruct_ov104_022412F4 * param2, int param3)
{
    GF_ASSERT(param0 != NULL);

    if (param0 == NULL) {
        return 0;
    }

    {
        UnkStruct_ov22_022559F8 v0;

        v0.unk_00 = param2->unk_00;
        v0.unk_04 = param2->unk_04;
        v0.unk_08 = param2->unk_08;
        v0.unk_0C = param0->unk_00;

        sub_0201E88C(&v0, param2->unk_0C, param2->unk_10);
    }

    sub_0201F834(param3, param0->unk_00);
    NNS_G2dInitOamManagerModule();

    if (param0->unk_08 == 1) {
        sub_0200A784(param1->unk_00, param1->unk_04, param1->unk_08, param1->unk_0C, param1->unk_10, param1->unk_14, param1->unk_18, param1->unk_1C, param0->unk_00);
    }

    param0->unk_0C = sub_0201DCC8(32, param0->unk_00);

    sub_0201E994();
    sub_0201F8E4();

    return 1;
}

BOOL sub_0200C7C0 (CellTransferStateData * param0, AnimationResourceCollection * param1, int param2)
{
    if ((param0 == NULL) || (param1 == NULL)) {
        return 0;
    }

    param1->unk_00 = sub_020095C4(param2, &param0->unk_10, param0->unk_00);
    return 1;
}

void sub_0200C7E4 (GraphicElementData * param0)
{
    sub_02021BD4(param0);
}

void sub_0200C7EC (AnimationResourceCollection * param0)
{
    GF_ASSERT(param0 != NULL);
    sub_020219F8(param0->unk_00);
}

void sub_0200C800 (void)
{
    sub_0200A858();
}

void sub_0200C808 (void)
{
    sub_0201DCE8();
}

void sub_0200C810 (AnimationResourceCollection * param0)
{
    sub_02021964(param0->unk_00);
}

void sub_0200C81C (AnimationResourceCollection * param0)
{
    if (param0->unk_04 == NULL) {
        return;
    }

    sub_020095A8(param0->unk_04);
}

void sub_0200C82C (AnimationResourceCollection * param0)
{
    int v0;
    UnkStruct_02009F38 * v1;

    for (v0 = 0; v0 < param0->unk_54; v0++) {
        v1 = sub_02009F38(param0->unk_08, v0);
        sub_02009F8C(v1);
    }

    Heap_FreeToHeap(param0->unk_08);
    sub_0200A508(param0->unk_24[0]);
    sub_0200A700(param0->unk_24[1]);

    for (v0 = 0; v0 < param0->unk_54; v0++) {
        sub_02009D20(param0->unk_24[v0]);
        sub_02009754(param0->unk_0C[v0]);
    }
}

void sub_0200C880 (CellTransferStateData * param0)
{
    sub_0201DCF0(param0->unk_0C);
    sub_0201E958();
    sub_0201F8B4();

    if (param0->unk_08 == 1) {
        sub_0200A878();
    }
}

void sub_0200C8A0 (CellTransferStateData * param0, AnimationResourceCollection * param1)
{
    param0->unk_04--;
    Heap_FreeToHeap(param1);
}

void sub_0200C8B0 (CellTransferStateData * param0, AnimationResourceCollection * param1)
{
    sub_0200C810(param1);
    sub_0200C81C(param1);
    sub_0200C82C(param1);
    sub_0200C8A0(param0, param1);
}

void sub_0200C8D4 (CellTransferStateData * param0)
{
    GF_ASSERT(param0->unk_04 == 0);

    sub_0200C880(param0);
    Heap_FreeToHeap(param0);
}

BOOL sub_0200C8F0 (CellTransferStateData * param0, AnimationResourceCollection * param1, const UnkStruct_ov7_0224F2EC * param2)
{
    int v0;
    int v1 = 6;
    int v2;
    UnkStruct_02009F38 * v3;
    void * v4;

    if ((param0 == NULL) || (param1 == NULL)) {
        return 0;
    }

    if (param2->val2.unk_10 == NULL) {
        v1 = 6 - 2;
    }

    param1->unk_54 = v1;
    v2 = sub_02009F34();
    param1->unk_08 = Heap_AllocFromHeap(param0->unk_00, v2 * v1);

    for (v0 = 0; v0 < v1; v0++) {
        v3 = sub_02009F38(param1->unk_08, v0);
        v4 = ReadFileToHeap(param0->unk_00, param2->val1[v0]);

        sub_02009F40(v4, v3, param0->unk_00);
        Heap_FreeToHeap(v4);
    }

    for (v0 = 0; v0 < v1; v0++) {
        v3 = sub_02009F38(param1->unk_08, v0);
        v2 = sub_02009FA4(v3);

        param1->unk_0C[v0] = sub_02009714(v2, v0, param0->unk_00);
    }

    for (v0 = 0; v0 < v1; v0++) {
        v3 = sub_02009F38(param1->unk_08, v0);
        v2 = sub_02009FA4(v3);

        param1->unk_24[v0] = sub_02009CFC(v2, param0->unk_00);
        param1->unk_3C[v0] = sub_02009C80(param1->unk_0C[v0], v3, param1->unk_24[v0], param0->unk_00);
    }

    sub_0200A368(param1->unk_24[0]);
    sub_0200A60C(param1->unk_24[1]);

    v4 = ReadFileToHeap(param0->unk_00, param2->val2.unk_18);
    param1->unk_04 = sub_02009508(v4, param0->unk_00, param1->unk_0C[0], param1->unk_0C[1], param1->unk_0C[2], param1->unk_0C[3], param1->unk_0C[4], param1->unk_0C[5]);

    Heap_FreeToHeap(v4);
    return 1;
}

GraphicElementData * sub_0200CA08 (CellTransferStateData * param0, AnimationResourceCollection * param1, const UnkStruct_ov7_0224F358 * param2)
{
    GraphicElementData * v0 = NULL;

    v0 = sub_0200CA44(param0, param1, param2->unk_00, param2->unk_04, param2->unk_06, param2->unk_04, param2->unk_0A, param2->unk_0C, param2->unk_10, param2->unk_14, param2->unk_18, param2->unk_1C, param2->unk_20, param2->unk_24);
    return v0;
}

GraphicElementData * sub_0200CA44 (CellTransferStateData * param0, AnimationResourceCollection * param1, int param2, s16 param3, s16 param4, s16 param5, u16 param6, int param7, int param8, int param9, int param10, int param11, int param12, int param13)
{
    GraphicElementData * v0 = NULL;
    UnkStruct_ov115_02261520 v1;

    v1.unk_00 = param1->unk_00;
    v1.unk_04 = &param1->unk_04->unk_00[param2];
    v1.unk_08.x = FX32_CONST(param3);
    v1.unk_08.y = FX32_CONST(param4);
    v1.unk_08.z = FX32_CONST(param5);

    if (param9 == NNS_G2D_VRAM_TYPE_2DSUB) {
        v1.unk_08.y += (192 << FX32_SHIFT);
    }

    v1.unk_14.x = FX32_ONE;
    v1.unk_14.y = FX32_ONE;
    v1.unk_14.z = FX32_ONE;
    v1.unk_20 = 0;
    v1.unk_24 = param7;
    v1.unk_28 = param9;
    v1.unk_2C = param0->unk_00;

    v0 = sub_02021AA0(&v1);

    if (v0 != NULL) {
        sub_02021D6C(v0, param6);
        sub_02021E90(v0, param8);
    }

    return v0;
}

BOOL sub_0200CB30 (CellTransferStateData * param0, AnimationResourceCollection * param1, const UnkStruct_ov104_02241308 * param2)
{
    int v0;
    int v1;
    int v2 = 6;
    int v3;
    UnkStruct_02009F38 * v4;

    if ((param0 == NULL) || (param1 == NULL)) {
        return 0;
    }

    if ((param2->val2.unk_10 == 0) || (param2->val2.unk_14 == 0)) {
        v2 = 6 - 2;
    }

    param1->unk_54 = v2;

    for (v0 = 0; v0 < v2; v0++) {
        param1->unk_0C[v0] = sub_02009714(param2->val1[v0], v0, param0->unk_00);
    }

    for (v0 = 0; v0 < v2; v0++) {
        v3 = param2->val1[v0];

        if (v3 == 0) {
            continue;
        }

        param1->unk_24[v0] = sub_02009CFC(v3, param0->unk_00);
        param1->unk_3C[v0] = 0;

        for (v1 = 0; v1 < param1->unk_24[v0]->unk_04; v1++) {
            param1->unk_24[v0]->unk_00[v1] = NULL;
        }
    }

    return 1;
}

BOOL sub_0200CBDC (CellTransferStateData * param0, AnimationResourceCollection * param1, int param2, int param3, BOOL param4, int param5, int param6)
{
    UnkStruct_02009DC8 * v0;

    if (sub_02009D34(param1->unk_0C[0], param6) == 0) {
        return 0;
    }

    v0 = sub_0200985C(param1->unk_0C[0], param2, param3, param4, param6, param5, param0->unk_00);

    if (v0 != NULL) {
        sub_0200A3DC(v0);
        sub_0200D1FC(param1->unk_24[0], v0);

        return 1;
    }

    GF_ASSERT(0);

    return (v0 == NULL) ? 0 : 1;
}

BOOL sub_0200CC3C (CellTransferStateData * param0, AnimationResourceCollection * param1, NARC * param2, int param3, int param4, int param5, int param6)
{
    UnkStruct_02009DC8 * v0;

    if (sub_02009D34(param1->unk_0C[0], param6) == 0) {
        return 0;
    }

    v0 = sub_02009A4C(param1->unk_0C[0], param2, param3, param4, param6, param5, param0->unk_00);

    if (v0 != NULL) {
        sub_0200A3DC(v0);
        sub_0200D1FC(param1->unk_24[0], v0);
        return 1;
    }

    GF_ASSERT(0);

    return (v0 == NULL) ? 0 : 1;
}

s8 sub_0200CC9C (CellTransferStateData * param0, AnimationResourceCollection * param1, int param2, int param3, int param4, int param5, int param6, int param7)
{
    UnkStruct_02009DC8 * v0;
    int v1;

    if (sub_02009D34(param1->unk_0C[1], param7) == 0) {
        return -1;
    }

    v0 = sub_020098B8(param1->unk_0C[1], param2, param3, param4, param7, param6, param5, param0->unk_00);

    if (v0 != NULL) {
        v1 = sub_0200A640(v0);
        GF_ASSERT(v1 == 1);

        sub_0200D1FC(param1->unk_24[1], v0);
        return sub_0200A760(v0, param6);
    }

    GF_ASSERT(0);

    return -1;
}

s8 sub_0200CD0C (CellTransferStateData * param0, AnimationResourceCollection * param1, NARC * param2, int param3, int param4, int param5, int param6, int param7)
{
    UnkStruct_02009DC8 * v0;
    int v1;

    if (sub_02009D34(param1->unk_0C[1], param7) == 0) {
        return -1;
    }

    v0 = sub_02009B04(param1->unk_0C[1], param2, param3, param4, param7, param6, param5, param0->unk_00);

    if (v0 != NULL) {
        v1 = sub_0200A640(v0);
        GF_ASSERT(v1 == 1);
        sub_0200D1FC(param1->unk_24[1], v0);

        return sub_0200A760(v0, param6);
    }

    GF_ASSERT(0);
    return -1;
}

u8 sub_0200CD7C (PaletteSys * param0, int param1, CellTransferStateData * param2, AnimationResourceCollection * param3, int param4, int param5, int param6, int param7, int param8, int param9)
{
    int v0;

    v0 = sub_0200CC9C(param2, param3, param4, param5, param6, param7, param8, param9);

    if (v0 != -1) {
        sub_02003070(param0, param1, v0 * 16, param7 * 0x20);
    }

    return v0;
}

u8 sub_0200CDC4 (PaletteSys * param0, int param1, CellTransferStateData * param2, AnimationResourceCollection * param3, NARC * param4, int param5, int param6, int param7, int param8, int param9)
{
    int v0;

    v0 = sub_0200CD0C(param2, param3, param4, param5, param6, param7, param8, param9);

    if (v0 != -1) {
        sub_02003070(param0, param1, v0 * 16, param7 * 0x20);
    }

    return v0;
}

BOOL sub_0200CE0C (CellTransferStateData * param0, AnimationResourceCollection * param1, int param2, int param3, int param4, int param5)
{
    return sub_0200D11C(param0, param1, param2, param3, param4, 2, param5);
}

BOOL sub_0200CE24 (CellTransferStateData * param0, AnimationResourceCollection * param1, NARC * param2, int param3, int param4, int param5)
{
    return sub_0200D18C(param0, param1, param2, param3, param4, 2, param5);
}

BOOL sub_0200CE3C (CellTransferStateData * param0, AnimationResourceCollection * param1, int param2, int param3, int param4, int param5)
{
    return sub_0200D11C(param0, param1, param2, param3, param4, 3, param5);
}

BOOL sub_0200CE54 (CellTransferStateData * param0, AnimationResourceCollection * param1, NARC * param2, int param3, int param4, int param5)
{
    return sub_0200D18C(param0, param1, param2, param3, param4, 3, param5);
}

CellActorData * sub_0200CE6C (CellTransferStateData * param0, AnimationResourceCollection * param1, const UnkStruct_ov104_0223F9E0 * param2)
{
    int v0;
    int v1;
    CellActorData * v2 = NULL;
    UnkStruct_ov115_02261520 v3;
    int v4[6];

    v2 = Heap_AllocFromHeap(param0->unk_00, sizeof(CellActorData));

    if (v2 == NULL) {
        return NULL;
    }

    v2->unk_08 = Heap_AllocFromHeap(param0->unk_00, sizeof(UnkStruct_02009508));

    if (v2->unk_08 == NULL) {
        return NULL;
    }

    v2->unk_08->unk_00 = Heap_AllocFromHeap(param0->unk_00, sizeof(UnkStruct_ov19_021DA864));
    v2->unk_04 = v2->unk_08->unk_00;

    if (v2->unk_08->unk_00 == NULL) {
        if (v2->unk_08) {
            Heap_FreeToHeap(v2->unk_08);
        }

        return NULL;
    }

    for (v0 = 0; v0 < 6; v0++) {
        v4[v0] = param2->unk_14[v0];
    }

    if ((param1->unk_0C[4] == NULL) || (param1->unk_0C[5] == NULL)) {
        v4[4] = 0xffffffff;
        v4[5] = 0xffffffff;
    } else {
        if ((v4[4] != 0xffffffff) && (sub_02009D34(param1->unk_0C[4], v4[4]) == 0)) {
            v4[4] = 0xffffffff;
        }

        if ((v4[5] != 0xffffffff) && (sub_02009D34(param1->unk_0C[5], v4[5]) == 0)) {
            v4[5] = 0xffffffff;
        }
    }

    sub_020093B4(v2->unk_04, v4[0], v4[1], v4[2], v4[3], v4[4], v4[5], param2->unk_30, param2->unk_2C, param1->unk_0C[0], param1->unk_0C[1], param1->unk_0C[2], param1->unk_0C[3], param1->unk_0C[4], param1->unk_0C[5]);

    v3.unk_00 = param1->unk_00;
    v3.unk_04 = v2->unk_04;
    v3.unk_08.x = FX32_CONST(param2->unk_00);
    v3.unk_08.y = FX32_CONST(param2->unk_02);
    v3.unk_08.z = FX32_CONST(param2->unk_04);

    if (param2->unk_10 == NNS_G2D_VRAM_TYPE_2DSUB) {
        v3.unk_08.y += (192 << FX32_SHIFT);
    }

    v3.unk_14.x = FX32_ONE;
    v3.unk_14.y = FX32_ONE;
    v3.unk_14.z = FX32_ONE;
    v3.unk_20 = 0;
    v3.unk_24 = param2->unk_08;
    v3.unk_28 = param2->unk_10;
    v3.unk_2C = param0->unk_00;
    v2->unk_00 = sub_02021AA0(&v3);
    v2->unk_0C = param2->unk_30;

    if (v2->unk_00 != NULL) {
        v1 = sub_02021EE8(v2->unk_00);

        sub_02021D6C(v2->unk_00, param2->unk_06);
        sub_02021E90(v2->unk_00, v1 + param2->unk_0C);
    } else {
        GF_ASSERT(FALSE);
    }

    return v2;
}

const NNSG2dImagePaletteProxy * sub_0200D04C (AnimationResourceCollection * param0, int param1)
{
    UnkStruct_02009DC8 * v0 = sub_02009DC8(param0->unk_0C[1], param1);
    return sub_0200A72C(v0, NULL);
}

u32 sub_0200D05C (AnimationResourceCollection * param0, int param1, NNS_G2D_VRAM_TYPE param2)
{
    UnkStruct_02009DC8 * v0 = sub_02009DC8(param0->unk_0C[1], param1);
    return sub_0200A760(v0, param2);
}

BOOL sub_0200D070 (AnimationResourceCollection * param0, int param1)
{
    return sub_0200D27C(param0->unk_0C[0], param0->unk_24[0], param1);
}

BOOL sub_0200D080 (AnimationResourceCollection * param0, int param1)
{
    return sub_0200D2D0(param0->unk_0C[1], param0->unk_24[1], param1);
}

BOOL sub_0200D090 (AnimationResourceCollection * param0, int param1)
{
    return sub_0200D230(param0->unk_0C[2], param0->unk_24[2], param1);
}

BOOL sub_0200D0A0 (AnimationResourceCollection * param0, int param1)
{
    return sub_0200D230(param0->unk_0C[3], param0->unk_24[3], param1);
}

void sub_0200D0B0 (CellTransferStateData * param0, AnimationResourceCollection * param1)
{
    int v0;

    sub_0200C810(param1);
    sub_0200A508(param1->unk_24[0]);
    sub_0200A700(param1->unk_24[1]);

    for (v0 = 0; v0 < param1->unk_54; v0++) {
        sub_02009D20(param1->unk_24[v0]);
        sub_02009754(param1->unk_0C[v0]);
    }

    sub_0200C8A0(param0, param1);
}

void sub_0200D0F4 (CellActorData * param0)
{
    if (param0->unk_0C) {
        sub_0200A5B4(param0->unk_04->unk_00);
    }

    sub_02021BD4(param0->unk_00);
    sub_020095A8(param0->unk_08);
    Heap_FreeToHeap(param0);
}

static BOOL sub_0200D11C (CellTransferStateData * param0, AnimationResourceCollection * param1, int param2, int param3, int param4, int param5, int param6)
{
    UnkStruct_02009DC8 * v0;
    int v1;

    if (sub_02009D34(param1->unk_0C[param5], param6) == 0) {
        return 0;
    }

    v0 = sub_02009918(param1->unk_0C[param5], param2, param3, param4, param6, param5, param0->unk_00);

    if (v0 != NULL) {
        v1 = sub_0200D1FC(param1->unk_24[param5], v0);

        GF_ASSERT(v1 == 1);
        return v1;
    }

    GF_ASSERT(0);
    return (v0 == NULL) ? 0 : 1;
}

static BOOL sub_0200D18C (CellTransferStateData * param0, AnimationResourceCollection * param1, NARC * param2, int param3, int param4, int param5, int param6)
{
    UnkStruct_02009DC8 * v0;
    int v1;

    if (sub_02009D34(param1->unk_0C[param5], param6) == 0) {
        return 0;
    }

    v0 = sub_02009BC4(param1->unk_0C[param5], param2, param3, param4, param6, param5, param0->unk_00);

    if (v0 != NULL) {
        v1 = sub_0200D1FC(param1->unk_24[param5], v0);

        GF_ASSERT(v1 == 1);
        return v1;
    }

    GF_ASSERT(0);

    return (v0 == NULL) ? 0 : 1;
}

static BOOL sub_0200D1FC (UnkStruct_02009CFC * param0, UnkStruct_02009DC8 * param1)
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

static BOOL sub_0200D230 (UnkStruct_02009714 * param0, UnkStruct_02009CFC * param1, int param2)
{
    int v0;
    int v1;

    for (v0 = 0; v0 < param1->unk_04; v0++) {
        if (param1->unk_00[v0] == NULL) {
            continue;
        }

        v1 = sub_02009E08(param1->unk_00[v0]);

        if (v1 == param2) {
            sub_02009D68(param0, param1->unk_00[v0]);

            param1->unk_00[v0] = NULL;
            param1->unk_08--;

            return 1;
        }
    }

    return 0;
}

static BOOL sub_0200D27C (UnkStruct_02009714 * param0, UnkStruct_02009CFC * param1, int param2)
{
    int v0;
    int v1;

    for (v0 = 0; v0 < param1->unk_04; v0++) {
        if (param1->unk_00[v0] == NULL) {
            continue;
        }

        v1 = sub_02009E08(param1->unk_00[v0]);

        if (v1 == param2) {
            sub_0201EB50(param2);
            sub_02009D68(param0, param1->unk_00[v0]);

            param1->unk_00[v0] = NULL;
            param1->unk_08--;

            return 1;
        }
    }

    return 0;
}

static BOOL sub_0200D2D0 (UnkStruct_02009714 * param0, UnkStruct_02009CFC * param1, int param2)
{
    int v0;
    int v1;

    for (v0 = 0; v0 < param1->unk_04; v0++) {
        if (param1->unk_00[v0] == NULL) {
            continue;
        }

        v1 = sub_02009E08(param1->unk_00[v0]);

        if (v1 == param2) {
            sub_0201F9F0(param2);
            sub_02009D68(param0, param1->unk_00[v0]);

            param1->unk_00[v0] = NULL;
            param1->unk_08--;

            return 1;
        }
    }

    return 0;
}

void sub_0200D324 (GraphicElementData * param0)
{
    sub_02021E2C(param0, FX32_ONE);
}

void sub_0200D330 (CellActorData * param0)
{
    sub_0200D324(param0->unk_00);
}

void sub_0200D33C (CellActorData * param0)
{
    sub_02021E2C(param0->unk_00, FX32_CONST(2));
}

void sub_0200D34C (CellActorData * param0, fx32 param1)
{
    sub_02021E2C(param0->unk_00, param1);
}

u32 sub_0200D358 (CellActorData * param0)
{
    return sub_02021D44(param0->unk_00);
}

void sub_0200D364 (CellActorData * param0, u32 param1)
{
    sub_02021D6C(param0->unk_00, param1);
}

void sub_0200D370 (CellActorData * param0, u32 param1)
{
    sub_02021DCC(param0->unk_00, param1);
}

u32 sub_0200D37C (CellActorData * param0)
{
    return sub_02021E24(param0->unk_00);
}

void sub_0200D388 (GraphicElementData * param0, int param1)
{
    sub_02021CC8(param0, param1);
}

void sub_0200D390 (CellActorData * param0, int param1)
{
    sub_0200D388(param0->unk_00, param1);
}

void sub_0200D39C (GraphicElementData * param0, fx32 param1)
{
    sub_02021CE4(param0, param1);
}

void sub_0200D3A4 (CellActorData * param0, fx32 param1)
{
    sub_0200D39C(param0->unk_00, param1);
}

BOOL sub_0200D3B0 (GraphicElementData * param0)
{
    return sub_02021FD0(param0);
}

BOOL sub_0200D3B8 (CellActorData * param0)
{
    return sub_0200D3B0(param0->unk_00);
}

void sub_0200D3C4 (GraphicElementData * param0, u16 param1)
{
    sub_02021E50(param0, param1);
}

void sub_0200D3CC (CellActorData * param0, u16 param1)
{
    sub_0200D3C4(param0->unk_00, param1);
}

u16 sub_0200D3D8 (GraphicElementData * param0)
{
    return sub_02021E74(param0);
}

u16 sub_0200D3E0 (CellActorData * param0)
{
    return sub_0200D3D8(param0->unk_00);
}

void sub_0200D3EC (GraphicElementData * param0, int param1)
{
    sub_02021CAC(param0, param1);
}

void sub_0200D3F4 (CellActorData * param0, int param1)
{
    sub_0200D3EC(param0->unk_00, param1);
}

int sub_0200D400 (GraphicElementData * param0)
{
    return sub_02021D34(param0);
}

int sub_0200D408 (CellActorData * param0)
{
    return sub_0200D400(param0->unk_00);
}

void sub_0200D414 (GraphicElementData * param0, int param1)
{
    sub_02021E90(param0, param1);
}

void sub_0200D41C (CellActorData * param0, int param1)
{
    sub_0200D414(param0->unk_00, param1);
}

void sub_0200D428 (GraphicElementData * param0, int param1)
{
    sub_02021EF0(param0, param1);
}

void sub_0200D430 (CellActorData * param0, int param1)
{
    sub_0200D428(param0->unk_00, param1);
}

int sub_0200D43C (CellActorData * param0)
{
    return sub_02021F48(param0->unk_00);
}

void sub_0200D448 (GraphicElementData * param0, int param1)
{
    sub_02021E80(param0, param1);
}

int sub_0200D454 (CellActorData * param0)
{
    return sub_02021E88(param0->unk_00);
}

void sub_0200D460 (CellActorData * param0, int param1)
{
    sub_0200D448(param0->unk_00, param1);
}

void sub_0200D46C (GraphicElementData * param0, int param1)
{
    sub_02021F58(param0, param1);
}

void sub_0200D474 (CellActorData * param0, int param1)
{
    sub_0200D46C(param0->unk_00, param1);
}

u32 sub_0200D480 (GraphicElementData * param0)
{
    return sub_02021F74(param0);
}

u32 sub_0200D488 (CellActorData * param0)
{
    return sub_0200D480(param0->unk_00);
}

void sub_0200D494 (GraphicElementData * param0, s16 param1, s16 param2)
{
    VecFx32 v0;

    v0.x = param1 * FX32_ONE;
    v0.y = param2 * FX32_ONE;

    if (sub_02021FC8(param0) == NNS_G2D_VRAM_TYPE_2DSUB) {
        v0.y += (192 << FX32_SHIFT);
    }

    v0.z = 0;

    sub_02021C50(param0, &v0);
}

void sub_0200D4C4 (CellActorData * param0, s16 param1, s16 param2)
{
    sub_0200D494(param0->unk_00, param1, param2);
}

void sub_0200D4D0 (GraphicElementData * param0, s16 param1, s16 param2, fx32 param3)
{
    VecFx32 v0;

    v0.x = param1 * FX32_ONE;
    v0.y = param2 * FX32_ONE;

    if (sub_02021FC8(param0) == NNS_G2D_VRAM_TYPE_2DSUB) {
        v0.y += param3;
    }

    v0.z = 0;

    sub_02021C50(param0, &v0);
}

void sub_0200D500 (CellActorData * param0, s16 param1, s16 param2, fx32 param3)
{
    sub_0200D4D0(param0->unk_00, param1, param2, param3);
}

void sub_0200D50C (GraphicElementData * param0, s16 * param1, s16 * param2)
{
    const VecFx32 * v0;

    v0 = sub_02021D28(param0);
    *param1 = v0->x / FX32_ONE;

    if (sub_02021FC8(param0) == NNS_G2D_VRAM_TYPE_2DSUB) {
        *param2 = (v0->y - (192 << FX32_SHIFT)) / FX32_ONE;
    } else {
        *param2 = v0->y / FX32_ONE;
    }
}

void sub_0200D550 (CellActorData * param0, s16 * param1, s16 * param2)
{
    sub_0200D50C(param0->unk_00, param1, param2);
}

void sub_0200D55C (GraphicElementData * param0, s16 * param1, s16 * param2, fx32 param3)
{
    const VecFx32 * v0;

    v0 = sub_02021D28(param0);
    *param1 = v0->x / FX32_ONE;

    if (sub_02021FC8(param0) == NNS_G2D_VRAM_TYPE_2DSUB) {
        *param2 = (v0->y - param3) / FX32_ONE;
    } else {
        *param2 = v0->y / FX32_ONE;
    }
}

void sub_0200D5A0 (CellActorData * param0, s16 * param1, s16 * param2, fx32 param3)
{
    sub_0200D55C(param0->unk_00, param1, param2, param3);
}

void sub_0200D5AC (GraphicElementData * param0, s16 param1, s16 param2)
{
    const VecFx32 * v0;
    VecFx32 v1;

    v0 = sub_02021D28(param0);

    v1.x = v0->x + (param1 * FX32_ONE);
    v1.y = v0->y + (param2 * FX32_ONE);
    v1.z = v0->z;

    sub_02021C50(param0, &v1);
}

void sub_0200D5DC (CellActorData * param0, s16 param1, s16 param2)
{
    sub_0200D5AC(param0->unk_00, param1, param2);
}

void sub_0200D5E8 (CellActorData * param0, fx32 param1, fx32 param2)
{
    const VecFx32 * v0;
    VecFx32 v1;

    v0 = sub_02021D28(param0->unk_00);

    v1.x = v0->x + param1;
    v1.y = v0->y + param2;
    v1.z = v0->z;

    sub_02021C50(param0->unk_00, &v1);
}

void sub_0200D614 (CellActorData * param0, fx32 param1, fx32 param2)
{
    const VecFx32 * v0;
    VecFx32 v1;

    v0 = sub_02021D28(param0->unk_00);

    v1.x = param1;
    v1.y = param2;
    v1.z = v0->z;

    sub_02021C50(param0->unk_00, &v1);
}

void sub_0200D638 (CellActorData * param0, fx32 * param1, fx32 * param2)
{
    const VecFx32 * v0;
    VecFx32 v1;

    v0 = sub_02021D28(param0->unk_00);

    *param1 = v0->x;
    *param2 = v0->y;
}

void sub_0200D650 (CellActorData * param0, fx32 param1, fx32 param2, fx32 param3)
{
    if (sub_02021FC8(param0->unk_00) == NNS_G2D_VRAM_TYPE_2DSUB) {
        sub_0200D614(param0, param1, param2 + param3);
    } else {
        sub_0200D614(param0, param1, param2);
    }
}

void sub_0200D67C (CellActorData * param0, fx32 * param1, fx32 * param2, fx32 param3)
{
    sub_0200D638(param0, param1, param2);

    if (sub_02021FC8(param0->unk_00) == NNS_G2D_VRAM_TYPE_2DSUB) {
        *param2 = *param2 - param3;
    }
}

void sub_0200D69C (GraphicElementData * param0, int param1)
{
    sub_02021CF8(param0, param1);
}

void sub_0200D6A4 (CellActorData * param0, int param1)
{
    sub_0200D69C(param0->unk_00, param1);
}

void sub_0200D6B0 (GraphicElementData * param0, f32 param1, f32 param2)
{
    const VecFx32 * v0;
    VecFx32 * v1;

    v0 = sub_02021D2C(param0);
    v1 = (VecFx32 *)v0;

    v1->x = (param1 * FX32_ONE);
    v1->y = (param2 * FX32_ONE);

    sub_02021C70(param0, v1);
}

void sub_0200D6E8 (CellActorData * param0, f32 param1, f32 param2)
{
    sub_0200D6B0(param0->unk_00, param1, param2);
}

void sub_0200D6F4 (GraphicElementData * param0, f32 param1, f32 param2)
{
    const VecFx32 * v0;
    VecFx32 * v1;

    v0 = sub_02021D2C(param0);
    v1 = (VecFx32 *)v0;

    v1->x = v0->x + (param1 * FX32_ONE);
    v1->y = v0->y + (param2 * FX32_ONE);

    sub_02021C70(param0, v1);
}

void sub_0200D74C (CellActorData * param0, f32 param1, f32 param2)
{
    sub_0200D6F4(param0->unk_00, param1, param2);
}

void sub_0200D758 (GraphicElementData * param0, f32 * param1, f32 * param2)
{
    const VecFx32 * v0;
    VecFx32 * v1;

    v0 = sub_02021D2C(param0);

    *param1 = FX_FX32_TO_F32(v0->x);
    *param2 = FX_FX32_TO_F32(v0->y);
}

void sub_0200D788 (CellActorData * param0, f32 * param1, f32 * param2)
{
    sub_0200D758(param0->unk_00, param1, param2);
}

void sub_0200D794 (GraphicElementData * param0, u16 param1)
{
    sub_02021C94(param0, param1);
}

void sub_0200D79C (CellActorData * param0, u16 param1)
{
    sub_0200D794(param0->unk_00, param1);
}

void sub_0200D7A8 (GraphicElementData * param0, s32 param1)
{
    u16 v0;

    v0 = sub_02021D30(param0);
    v0 += param1;

    sub_02021C94(param0, v0);
}

void sub_0200D7C0 (CellActorData * param0, s32 param1)
{
    sub_0200D7A8(param0->unk_00, param1);
}

void sub_0200D7CC (GraphicElementData * param0, int param1)
{
    sub_02021D0C(param0, param1);
}

void sub_0200D7D4 (CellActorData * param0, int param1)
{
    sub_0200D7CC(param0->unk_00, param1);
}

void sub_0200D7E0 (CellActorData * param0, s16 param1, s16 param2)
{
    VecFx32 v0;

    v0.x = param1 << FX32_SHIFT;
    v0.y = param2 << FX32_SHIFT;
    v0.z = 0;

    sub_02021C60(param0->unk_00, &v0);
}

void sub_0200D7FC (CellActorData * param0, BOOL param1)
{
    sub_02021FA0(param0->unk_00, param1);
}

void sub_0200D808 (GraphicElementData * param0, GXOamMode param1)
{
    sub_02021FE0(param0, param1);
}

void sub_0200D810 (CellActorData * param0, GXOamMode param1)
{
    sub_0200D808(param0->unk_00, param1);
}

u32 sub_0200D81C (CellActorData * param0)
{
    return sub_020220F4(param0->unk_00);
}

BOOL sub_0200D828 (CellTransferStateData * param0, AnimationResourceCollection * param1, int param2, int param3, BOOL param4, int param5, int param6)
{
    UnkStruct_02009DC8 * v0;

    if (sub_02009D34(param1->unk_0C[0], param6) == 0) {
        return 0;
    }

    v0 = sub_0200985C(param1->unk_0C[0], param2, param3, param4, param6, param5, param0->unk_00);

    if (v0 != NULL) {
        sub_0200A39C(v0);
        sub_0200D1FC(param1->unk_24[0], v0);

        return 1;
    }

    GF_ASSERT(0);

    return (v0 == NULL) ? 0 : 1;
}

BOOL sub_0200D888 (CellTransferStateData * param0, AnimationResourceCollection * param1, int param2, int param3, BOOL param4, int param5, int param6)
{
    UnkStruct_02009DC8 * v0;

    if (sub_02009D34(param1->unk_0C[0], param6) == 0) {
        return 0;
    }

    v0 = sub_0200985C(param1->unk_0C[0], param2, param3, param4, param6, param5, param0->unk_00);

    if (v0 != NULL) {
        sub_0200A450(v0);
        sub_0200D1FC(param1->unk_24[0], v0);

        return 1;
    }

    GF_ASSERT(0);

    return (v0 == NULL) ? 0 : 1;
}

BOOL sub_0200D8E8 (CellTransferStateData * param0, AnimationResourceCollection * param1, NARC * param2, int param3, BOOL param4, int param5, int param6)
{
    UnkStruct_02009DC8 * v0;

    if (sub_02009D34(param1->unk_0C[0], param6) == 0) {
        return 0;
    }

    v0 = sub_02009A4C(param1->unk_0C[0], param2, param3, param4, param6, param5, param0->unk_00);

    if (v0 != NULL) {
        sub_0200A450(v0);
        sub_0200D1FC(param1->unk_24[0], v0);

        return 1;
    }

    GF_ASSERT(0);

    return (v0 == NULL) ? 0 : 1;
}

void sub_0200D948 (CellTransferStateData * param0, AnimationResourceCollection * param1, int param2, int param3, BOOL param4, int param5)
{
    UnkStruct_02009DC8 * v0;

    v0 = sub_02009DC8(param1->unk_0C[0], param5);

    sub_02009968(param1->unk_0C[0], v0, param2, param3, param4, param0->unk_00);
    sub_0200A4C0(v0);
}

void sub_0200D97C (CellTransferStateData * param0, AnimationResourceCollection * param1, int param2, int param3, BOOL param4, int param5)
{
    UnkStruct_02009DC8 * v0;

    v0 = sub_02009DC8(param1->unk_0C[1], param5);

    sub_020099D4(param1->unk_0C[1], v0, param2, param3, param4, param0->unk_00);
    sub_0200A6B8(v0);
}

GraphicElementManager * sub_0200D9B0 (AnimationResourceCollection * param0)
{
    return param0->unk_00;
}

void sub_0200D9B4 (CellTransferStateData * param0, AnimationResourceCollection * param1, NARC * param2, int param3, BOOL param4, int param5)
{
    UnkStruct_02009DC8 * v0;

    v0 = sub_02009DC8(param1->unk_0C[0], param5);

    sub_02009C14(param1->unk_0C[0], v0, param2, param3, param4, param0->unk_00);
    sub_0200A4C0(v0);
}
