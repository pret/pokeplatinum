#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02009714_decl.h"
#include "struct_decls/struct_02009DC8_decl.h"
#include "struct_decls/struct_020218BC_decl.h"
#include "struct_decls/struct_02022550_decl.h"

#include "struct_defs/struct_0200C738.h"
#include "overlay019/struct_ov19_021DA864.h"
#include "overlay083/struct_ov83_0223D9A8.h"
#include "overlay101/struct_ov101_021D8544.h"

#include "unk_020093B4.h"
#include "unk_02009714.h"
#include "unk_0200A328.h"
#include "heap.h"
#include "unk_0201DBEC.h"
#include "unk_020218BC.h"
#include "overlay101/ov101_021D7E48.h"

typedef struct {
    u16 unk_00;
    u16 unk_02;
    UnkStruct_02009DC8 * unk_04;
} UnkStruct_ov101_021D7E48_sub1;

typedef struct UnkStruct_ov101_021D7E48_t {
    u32 unk_00;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    u8 unk_0B;
    GraphicElementManager * unk_0C;
    UnkStruct_0200C738 unk_10;
    NNSG2dCellTransferState * unk_19C;
    UnkStruct_02009714 * unk_1A0;
    UnkStruct_02009714 * unk_1A4;
    UnkStruct_02009714 * unk_1A8;
    UnkStruct_02009714 * unk_1AC;
    UnkStruct_ov101_021D7E48_sub1 * unk_1B0;
    UnkStruct_ov101_021D7E48_sub1 * unk_1B4;
    UnkStruct_ov101_021D7E48_sub1 * unk_1B8;
    UnkStruct_ov101_021D7E48_sub1 * unk_1BC;
} UnkStruct_ov101_021D7E48;

UnkStruct_ov101_021D7E48 * ov101_021D7E48 (u32 param0, u32 param1, u32 param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8, u32 param9, u32 param10)
{
    UnkStruct_ov101_021D7E48 * v0 = Heap_AllocFromHeap(param0, (sizeof(UnkStruct_ov101_021D7E48)));

    GF_ASSERT(v0 != NULL);

    v0->unk_00 = param0;
    v0->unk_04 = param3;
    v0->unk_05 = param4;
    v0->unk_06 = param5;
    v0->unk_07 = param6;
    v0->unk_08 = param7;
    v0->unk_09 = param8;
    v0->unk_0A = param9;
    v0->unk_0B = param10;
    v0->unk_0C = sub_020095C4(param1, &v0->unk_10, param0);
    v0->unk_19C = sub_0201DCC8(param2, param0);

    sub_0201DBEC(param2, param0);

    v0->unk_1A0 = sub_02009714(param3, 0, param0);
    v0->unk_1A4 = sub_02009714(param4, 1, param0);
    v0->unk_1A8 = sub_02009714(param5, 2, param0);
    v0->unk_1AC = sub_02009714(param6, 3, param0);
    v0->unk_1B0 = Heap_AllocFromHeap(param0, (sizeof(UnkStruct_ov101_021D7E48_sub1)) * param3);
    v0->unk_1B4 = Heap_AllocFromHeap(param0, (sizeof(UnkStruct_ov101_021D7E48_sub1)) * param4);
    v0->unk_1B8 = Heap_AllocFromHeap(param0, (sizeof(UnkStruct_ov101_021D7E48_sub1)) * param5);
    v0->unk_1BC = Heap_AllocFromHeap(param0, (sizeof(UnkStruct_ov101_021D7E48_sub1)) * param6);

    {
        u32 v1;

        for (v1 = 0; v1 < param3; v0->unk_1B0[v1].unk_00 = param7, v1++) {
            (void)0;
        }

        for (v1 = 0; v1 < param4; v0->unk_1B4[v1].unk_00 = param8, v1++) {
            (void)0;
        }

        for (v1 = 0; v1 < param5; v0->unk_1B8[v1].unk_00 = param9, v1++) {
            (void)0;
        }

        for (v1 = 0; v1 < param6; v0->unk_1BC[v1].unk_00 = param10, v1++) {
            (void)0;
        }
    }

    return v0;
}

void ov101_021D7FB4 (UnkStruct_ov101_021D7E48 * param0)
{
    u32 v0;

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        if (param0->unk_1B0[v0].unk_00 != param0->unk_08) {
            sub_0200A4E4(param0->unk_1B0[v0].unk_04);
        }
    }

    for (v0 = 0; v0 < param0->unk_05; v0++) {
        if (param0->unk_1B4[v0].unk_00 != param0->unk_09) {
            sub_0200A6DC(param0->unk_1B4[v0].unk_04);
        }
    }

    for (v0 = 0; v0 < param0->unk_06; v0++) {
        if (param0->unk_1B8[v0].unk_00 != param0->unk_0A) {
            sub_02009D4C(param0->unk_1B8[v0].unk_04);
        }
    }

    for (v0 = 0; v0 < param0->unk_07; v0++) {
        if (param0->unk_1BC[v0].unk_00 != param0->unk_0B) {
            sub_02009D4C(param0->unk_1BC[v0].unk_04);
        }
    }

    sub_02009754(param0->unk_1A0);
    sub_02009754(param0->unk_1A4);
    sub_02009754(param0->unk_1A8);
    sub_02009754(param0->unk_1AC);
    Heap_FreeToHeap(param0->unk_1B0);
    Heap_FreeToHeap(param0->unk_1B4);
    Heap_FreeToHeap(param0->unk_1B8);
    Heap_FreeToHeap(param0->unk_1BC);
    sub_0201DC3C();
    sub_0201DCF0(param0->unk_19C);
    GraphicElementManager_DeleteAll(param0->unk_0C);
    GraphicElementManager_Delete(param0->unk_0C);
    Heap_FreeToHeap(param0);
}

void ov101_021D80D4 (UnkStruct_ov101_021D7E48 * param0)
{
    sub_020219F8(param0->unk_0C);
    sub_0201DCE8();
}

void ov101_021D80E4 (UnkStruct_ov101_021D7E48 * param0, u32 param1, NARC * param2, u32 param3, u32 param4)
{
    u32 v0;

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        if (param0->unk_1B0[v0].unk_00 == param0->unk_08) {
            param0->unk_1B0[v0].unk_00 = param4;
            param0->unk_1B0[v0].unk_02 = 0;
            param0->unk_1B0[v0].unk_04 = sub_02009A4C(
                param0->unk_1A0, param2, param3, 0, param4, param1, param0->unk_00);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

void ov101_021D814C (UnkStruct_ov101_021D7E48 * param0, u32 param1)
{
    u32 v0;

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        if (param0->unk_1B0[v0].unk_00 == param1) {
            sub_0200A3DC(param0->unk_1B0[v0].unk_04);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

void ov101_021D8180 (UnkStruct_ov101_021D7E48 * param0, u32 param1)
{
    u32 v0;

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        if (param0->unk_1B0[v0].unk_00 == param1) {
            sub_02009D4C(param0->unk_1B0[v0].unk_04);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

void ov101_021D81B4 (UnkStruct_ov101_021D7E48 * param0, u32 param1, NARC * param2, u32 param3, u32 param4)
{
    u32 v0;

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        if (param0->unk_1B4[v0].unk_00 == param0->unk_09) {
            param0->unk_1B4[v0].unk_00 = param4;
            param0->unk_1B4[v0].unk_02 = 0;
            param0->unk_1B4[v0].unk_04 = sub_02009B04(param0->unk_1A4, param2, param3, 0, param4, param1, 1, param0->unk_00);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

void ov101_021D8220 (UnkStruct_ov101_021D7E48 * param0, u32 param1)
{
    u32 v0;

    for (v0 = 0; v0 < param0->unk_05; v0++) {
        if (param0->unk_1B4[v0].unk_00 == param1) {
            sub_0200A640(param0->unk_1B4[v0].unk_04);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

void ov101_021D8254 (UnkStruct_ov101_021D7E48 * param0, u32 param1)
{
    u32 v0;

    for (v0 = 0; v0 < param0->unk_05; v0++) {
        if (param0->unk_1B4[v0].unk_00 == param1) {
            sub_02009D4C(param0->unk_1B4[v0].unk_04);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

void ov101_021D8288 (UnkStruct_ov101_021D7E48 * param0, NARC * param1, u32 param2, u32 param3)
{
    u32 v0;

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        if (param0->unk_1B8[v0].unk_00 == param0->unk_0A) {
            param0->unk_1B8[v0].unk_00 = param3;
            param0->unk_1B8[v0].unk_02 = 0;
            param0->unk_1B8[v0].unk_04 = sub_02009BC4(param0->unk_1A8, param1, param2, 0, param3, 2, param0->unk_00);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

void ov101_021D82F0 (UnkStruct_ov101_021D7E48 * param0, NARC * param1, u32 param2, u32 param3)
{
    u32 v0;

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        if (param0->unk_1BC[v0].unk_00 == param0->unk_0B) {
            param0->unk_1BC[v0].unk_00 = param3;
            param0->unk_1BC[v0].unk_02 = 0;
            param0->unk_1BC[v0].unk_04 = sub_02009BC4(
                param0->unk_1AC, param1, param2, 0, param3, 3, param0->unk_00);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

void ov101_021D8358 (UnkStruct_ov101_021D7E48 * param0, u32 param1, u32 param2, u32 param3, u32 param4)
{
    u32 v0;

    if (param1 != param0->unk_08) {
        for (v0 = 0; v0 < param0->unk_04; v0++) {
            if (param0->unk_1B0[v0].unk_00 == param1) {
                sub_0200A4E4(param0->unk_1B0[v0].unk_04);
                sub_02009D68(param0->unk_1A0, param0->unk_1B0[v0].unk_04);
                param0->unk_1B0[v0].unk_00 = param0->unk_08;
                break;
            }
        }
    }

    if (param2 != param0->unk_09) {
        for (v0 = 0; v0 < param0->unk_05; v0++) {
            if (param0->unk_1B4[v0].unk_00 == param2) {
                sub_0200A6DC(param0->unk_1B4[v0].unk_04);
                sub_02009D68(param0->unk_1A4, param0->unk_1B4[v0].unk_04);
                param0->unk_1B4[v0].unk_00 = param0->unk_09;
                break;
            }
        }
    }

    if (param3 != param0->unk_0A) {
        for (v0 = 0; v0 < param0->unk_06; v0++) {
            if (param0->unk_1B8[v0].unk_00 == param3) {
                sub_02009D4C(param0->unk_1B8[v0].unk_04);
                sub_02009D68(param0->unk_1A8, param0->unk_1B8[v0].unk_04);
                param0->unk_1B8[v0].unk_00 = param0->unk_0A;
                break;
            }
        }
    }

    if (param4 != param0->unk_0B) {
        for (v0 = 0; v0 < param0->unk_07; v0++) {
            if (param0->unk_1BC[v0].unk_00 == param4) {
                sub_02009D4C(param0->unk_1BC[v0].unk_04);
                sub_02009D68(param0->unk_1AC, param0->unk_1BC[v0].unk_04);
                param0->unk_1BC[v0].unk_00 = param0->unk_0B;
                break;
            }
        }
    }
}

void ov101_021D84A4 (UnkStruct_ov101_021D7E48 * param0, UnkStruct_ov101_021D8544 * param1, const VecFx32 * param2, u32 param3, int param4, u32 param5, u32 param6, u32 param7, u32 param8, int param9, int param10)
{
    UnkStruct_ov19_021DA864 v0;
    UnkStruct_ov83_0223D9A8 v1;
    GraphicElementData * v2;

    if (param8 == param0->unk_0B) {
        param8 = 0xffffffff;
    }

    sub_020093B4(
        &v0, param5, param6, param7, param8, 0xffffffff, 0xffffffff, param4, param9, param0->unk_1A0, param0->unk_1A4, param0->unk_1A8, param0->unk_1AC, NULL, NULL);

    if (param4 == 1) {
        param1->unk_08 = v0.unk_00;
        param1->unk_00 = 1;
    } else {
        param1->unk_00 = 0;
    }

    v1.unk_00 = param0->unk_0C;
    v1.unk_04 = &v0;
    v1.unk_08 = *param2;
    v1.unk_14 = param10;
    v1.unk_18 = param3;
    v1.unk_1C = param0->unk_00;

    param1->unk_04 = sub_02021B90(&v1);
    GF_ASSERT(param1->unk_04 != NULL);
}

void ov101_021D8544 (UnkStruct_ov101_021D8544 * param0)
{
    if (param0->unk_00 == 1) {
        sub_0200A5B4(param0->unk_08);
    }

    GraphicElementData_Delete(param0->unk_04);
    param0->unk_04 = NULL;
}

void ov101_021D8560 (GraphicElementData * param0, VecFx32 * param1)
{
    const VecFx32 * v0 = sub_02021D28(param0);
    *param1 = *v0;
}

void ov101_021D8574 (GraphicElementData * param0, VecFx32 * param1)
{
    const VecFx32 * v0 = sub_02021D2C(param0);
    *param1 = *v0;
}
