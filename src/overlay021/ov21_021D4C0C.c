#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_02012744_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_020218BC_decl.h"
#include "struct_decls/struct_02023790_decl.h"

#include "struct_defs/struct_020127E8.h"
#include "struct_defs/struct_0205AA50.h"
#include "overlay021/struct_ov21_021D1FA4.h"
#include "overlay021/struct_ov21_021D4CA0.h"
#include "overlay021/struct_ov21_021D4CB8.h"

#include "unk_02002B7C.h"
#include "unk_0200AC5C.h"
#include "unk_02012744.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "unk_0201E86C.h"
#include "unk_02023790.h"
#include "overlay021/ov21_021D4C0C.h"

typedef struct UnkStruct_ov21_021D4C0C_t {
    UnkStruct_02012744 * unk_00;
    UnkStruct_020218BC * unk_04;
    UnkStruct_02018340 * unk_08;
    UnkStruct_ov21_021D4CA0 * unk_0C;
    int unk_10;
    int unk_14;
} UnkStruct_ov21_021D4C0C;

static BOOL ov21_021D4EA4(UnkStruct_ov21_021D4CA0 * param0);
static UnkStruct_ov21_021D4CA0 * ov21_021D4EB4(UnkStruct_ov21_021D4C0C * param0);

UnkStruct_ov21_021D4C0C * ov21_021D4C0C (const UnkStruct_ov21_021D1FA4 * param0)
{
    UnkStruct_ov21_021D4C0C * v0;

    v0 = AllocFromHeap(param0->unk_0C, sizeof(UnkStruct_ov21_021D4C0C));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D4C0C));

    v0->unk_00 = sub_02012744(param0->unk_08, param0->unk_0C);
    v0->unk_0C = AllocFromHeap(param0->unk_0C, sizeof(UnkStruct_ov21_021D4CA0) * param0->unk_08);

    GF_ASSERT(v0->unk_0C);
    memset(v0->unk_0C, 0, sizeof(UnkStruct_ov21_021D4CA0) * param0->unk_08);

    v0->unk_10 = param0->unk_08;
    v0->unk_04 = param0->unk_00;
    v0->unk_08 = param0->unk_04;
    v0->unk_14 = param0->unk_0C;

    return v0;
}

void ov21_021D4C6C (UnkStruct_ov21_021D4C0C * param0)
{
    GF_ASSERT(param0);

    ov21_021D4D3C(param0);
    FreeToHeap(param0->unk_0C);
    sub_020127BC(param0->unk_00);

    memset(param0, 0, sizeof(UnkStruct_ov21_021D4C0C));

    FreeToHeap(param0);
}

UnkStruct_ov21_021D4CA0 * ov21_021D4CA0 (const UnkStruct_ov21_021D4CB8 * param0)
{
    int v0;

    v0 = sub_02012898(param0->unk_04, param0->unk_20, param0->unk_24);
    return ov21_021D4CB8(param0, v0);
}

UnkStruct_ov21_021D4CA0 * ov21_021D4CB8 (const UnkStruct_ov21_021D4CB8 * param0, int param1)
{
    UnkStruct_020127E8 v0;
    UnkStruct_ov21_021D4CA0 * v1;

    v1 = ov21_021D4EB4(param0->unk_00);

    GF_ASSERT(v1);
    sub_0201ED94(param1, 1, param0->unk_20, &v1->unk_04);

    v0.unk_00 = param0->unk_00->unk_00;
    v0.unk_04 = param0->unk_04;
    v0.unk_08 = param0->unk_00->unk_04;
    v0.unk_0C = param0->unk_08;
    v0.unk_10 = param0->unk_0C;
    v0.unk_14 = v1->unk_04.unk_04;
    v0.unk_18 = param0->unk_10;
    v0.unk_1C = param0->unk_14;
    v0.unk_20 = param0->unk_18;
    v0.unk_24 = param0->unk_1C;
    v0.unk_28 = param0->unk_20;
    v0.unk_2C = param0->unk_24;

    v1->unk_00 = sub_020127E8(&v0);

    return v1;
}

void ov21_021D4D1C (UnkStruct_ov21_021D4CA0 * param0)
{
    sub_02012870(param0->unk_00);
    sub_0201EE28(&param0->unk_04);

    memset(param0, 0, sizeof(UnkStruct_ov21_021D4CA0));
}

void ov21_021D4D3C (UnkStruct_ov21_021D4C0C * param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_10; v0++) {
        if (ov21_021D4EA4(&param0->unk_0C[v0])) {
            ov21_021D4D1C(&param0->unk_0C[v0]);
        }
    }
}

UnkStruct_0205AA50 * ov21_021D4D6C (UnkStruct_ov21_021D4C0C * param0, int param1, int param2)
{
    UnkStruct_0205AA50 * v0;

    v0 = sub_0201A778(param0->unk_14, 1);

    sub_0201A7A0(v0);
    sub_0201A870(param0->unk_08, v0, param1, param2, 0, 0);

    return v0;
}

void ov21_021D4DA0 (UnkStruct_0205AA50 * param0)
{
    sub_0201A928(param0, 1);
}

u32 ov21_021D4DAC (UnkStruct_ov21_021D4C0C * param0, UnkStruct_0205AA50 * param1, u32 param2, u32 param3, int param4, int param5)
{
    UnkStruct_0200B144 * v0;
    UnkStruct_02023790 * v1;
    u32 v2;

    v0 = sub_0200B144(0, 26, param2, param0->unk_14);
    GF_ASSERT(v0);

    v1 = sub_0200B1EC(v0, param3);
    sub_0201D78C(param1, 2, v1, param4, param5, 0xff, ((u32)(((3 & 0xff) << 16) | ((2 & 0xff) << 8) | ((1 & 0xff) << 0))), NULL);
    v2 = sub_02002D7C(2, v1, 0);

    sub_020237BC(v1);
    sub_0200B190(v0);

    return v2;
}

void ov21_021D4E10 (UnkStruct_ov21_021D4C0C * param0, UnkStruct_0205AA50 * param1, u32 param2, u32 param3)
{
    UnkStruct_0200B144 * v0;
    UnkStruct_02023790 * v1;
    int v2;
    int v3;

    v0 = sub_0200B144(0, 26, param2, param0->unk_14);
    GF_ASSERT(v0);

    v1 = sub_0200B1EC(v0, param3);
    v2 = sub_02002D7C(2, v1, 0);
    v3 = sub_0201C294(param1) * 8;
    v3 = v3 - v2;
    v3 /= 2;

    sub_0201D78C(param1, 2, v1, v3, 0, 0xff, ((u32)(((3 & 0xff) << 16) | ((2 & 0xff) << 8) | ((1 & 0xff) << 0))), NULL);
    sub_020237BC(v1);
    sub_0200B190(v0);
}

void ov21_021D4E80 (UnkStruct_ov21_021D4C0C * param0, UnkStruct_0205AA50 * param1, UnkStruct_02023790 * param2, int param3, int param4)
{
    sub_0201D78C(param1, 2, param2, param3, param4, 0xff, ((u32)(((3 & 0xff) << 16) | ((2 & 0xff) << 8) | ((1 & 0xff) << 0))), NULL);
}

static BOOL ov21_021D4EA4 (UnkStruct_ov21_021D4CA0 * param0)
{
    if (param0->unk_00) {
        return 1;
    }

    return 0;
}

static UnkStruct_ov21_021D4CA0 * ov21_021D4EB4 (UnkStruct_ov21_021D4C0C * param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_10; v0++) {
        if (ov21_021D4EA4(&param0->unk_0C[v0]) == 0) {
            return &param0->unk_0C[v0];
        }
    }

    return NULL;
}
