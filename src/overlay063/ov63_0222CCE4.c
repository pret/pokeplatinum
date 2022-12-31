#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_020218BC_decl.h"
#include "overlay063/struct_ov63_0222BB38_decl.h"
#include "overlay063/struct_ov63_0222BEC0_decl.h"

#include "overlay063/struct_ov63_0222CC3C.h"
#include "overlay063/struct_ov63_0222CD2C.h"
#include "overlay063/struct_ov63_0222CE44.h"
#include "overlay064/struct_ov64_022302EC.h"

#include "unk_02017E74.h"
#include "unk_020218BC.h"
#include "overlay063/ov63_0222AE60.h"
#include "overlay063/ov63_0222BE18.h"
#include "overlay063/ov63_0222CCE4.h"

static BOOL ov63_0222D07C(const UnkStruct_ov63_0222CE44 * param0);
static UnkStruct_ov63_0222CE44 * ov63_0222D08C(UnkStruct_ov63_0222CD2C * param0);
static int ov63_0222D0C4(const UnkStruct_ov63_0222BB38 * param0, int param1);
static void ov63_0222D0E0(const UnkStruct_ov63_0222CE44 * param0, s16 * param1, s16 * param2);
static void ov63_0222D110(UnkStruct_ov63_0222CE44 * param0, int param1, int param2);

UnkStruct_ov63_0222CD2C * ov63_0222CCE4 (UnkStruct_020218BC * param0, UnkStruct_02002F38 * param1, u32 param2, u32 param3, u32 param4)
{
    UnkStruct_ov63_0222CD2C * v0;

    v0 = sub_02018144(param4, sizeof(UnkStruct_ov63_0222CD2C));
    v0->unk_00 = ov63_0222AE60(param0, param1, param2, param4);
    v0->unk_08 = param2;
    v0->unk_04 = sub_02018144(param4, sizeof(UnkStruct_ov63_0222CE44) * v0->unk_08);

    memset(v0->unk_04, 0, sizeof(UnkStruct_ov63_0222CE44) * v0->unk_08);

    v0->unk_0A = 2;
    v0->unk_0B = param3;

    return v0;
}

UnkStruct_ov63_0222CD2C * ov63_0222CD2C (UnkStruct_020218BC * param0, UnkStruct_02002F38 * param1, u32 param2, u32 param3, int param4, u32 param5, u32 param6)
{
    UnkStruct_ov63_0222CD2C * v0;

    v0 = sub_02018144(param6, sizeof(UnkStruct_ov63_0222CD2C));
    v0->unk_00 = ov63_0222AE60(param0, param1, param2, param6);
    v0->unk_08 = param2;
    v0->unk_04 = sub_02018144(param6, sizeof(UnkStruct_ov63_0222CE44) * v0->unk_08);

    memset(v0->unk_04, 0, sizeof(UnkStruct_ov63_0222CE44) * v0->unk_08);

    v0->unk_0A = 2;
    v0->unk_0B = param5;

    ov63_0222AF94(v0->unk_00, param3, v0->unk_0B, param4, param6);
    ov63_0222B0A0(v0->unk_00, v0->unk_0B, 40001, param6);

    return v0;
}

void ov63_0222CD9C (UnkStruct_ov63_0222CD2C * param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_08; v0++) {
        if (ov63_0222D07C(&param0->unk_04[v0]) == 0) {
            ov63_0222CECC(&param0->unk_04[v0]);
        }
    }

    ov63_0222B0B8(param0->unk_00);
    ov63_0222CE24(param0);
    ov63_0222AF14(param0->unk_00);

    sub_020181C4(param0->unk_04);
    sub_020181C4(param0);
}

void ov63_0222CDE8 (UnkStruct_ov63_0222CD2C * param0, u32 param1, int param2, u32 param3)
{
    if (ov63_0222AFE4(param0->unk_00, param1) == 0) {
        ov63_0222AF94(param0->unk_00, param1, param0->unk_0B, param2, param3);
    }
}

void ov63_0222CE0C (UnkStruct_ov63_0222CD2C * param0, u32 param1)
{
    ov63_0222AFD0(param0->unk_00, param1);
}

BOOL ov63_0222CE18 (const UnkStruct_ov63_0222CD2C * param0, u32 param1)
{
    return ov63_0222AFE4(param0->unk_00, param1);
}

void ov63_0222CE24 (UnkStruct_ov63_0222CD2C * param0)
{
    ov63_0222AFF8(param0->unk_00);
}

void ov63_0222CE30 (UnkStruct_ov63_0222CD2C * param0, int param1, u32 param2)
{
    ov63_0222B02C(param0->unk_00, param0->unk_0B, param1, param2);
}

UnkStruct_ov63_0222CE44 * ov63_0222CE44 (UnkStruct_ov63_0222CD2C * param0, const UnkStruct_ov63_0222BEC0 * param1, BOOL param2, u32 param3)
{
    UnkStruct_ov63_0222CE44 * v0;
    UnkStruct_ov64_022302EC v1;
    s32 v2;

    v0 = ov63_0222D08C(param0);

    v0->unk_08 = ov63_0222BF90(param1, 5);
    v0->unk_0A = ov63_0222BF90(param1, 6);
    v0->unk_0C = ov63_0222BF90(param1, 4);
    v0->unk_00 = param1;
    v0->unk_12 = param2;
    v0->unk_13 = 1;
    v0->unk_0E = 0;
    v0->unk_10 = 0;

    v1.unk_00 = ov63_0222BF90(param1, 0);
    v1.unk_02 = ov63_0222BF90(param1, 1);
    v1.unk_04 = ov63_0222D034(v1.unk_02, v0->unk_12);
    v1.unk_06 = param0->unk_0A;

    v2 = ov63_0222BF90(param1, 7);
    v0->unk_04 = ov63_0222B0C0(param0->unk_00, &v1, v2, param3);

    ov63_0222CF14(v0);

    return v0;
}

void ov63_0222CECC (UnkStruct_ov63_0222CE44 * param0)
{
    ov63_0222B210(param0->unk_04);
    memset(param0, 0, sizeof(UnkStruct_ov63_0222CE44));
}

void ov63_0222CEE4 (UnkStruct_ov63_0222CD2C * param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_08; v0++) {
        if (ov63_0222D07C(&param0->unk_04[v0]) == 0) {
            ov63_0222CF14(&param0->unk_04[v0]);
        }
    }
}

void ov63_0222CF14 (UnkStruct_ov63_0222CE44 * param0)
{
    s32 v0;
    s32 v1;
    s16 v2, v3;
    s16 v4;
    u16 v5;
    int v6;

    if (param0->unk_13 == 0) {
        return;
    }

    v0 = ov63_0222BF90(param0->unk_00, 5);
    v1 = ov63_0222BF90(param0->unk_00, 6);
    v4 = ov63_0222BF90(param0->unk_00, 8);

    if ((param0->unk_08 != v0) || (param0->unk_0A != v1) || (v4 == 0)) {
        param0->unk_08 = v0;
        param0->unk_0A = v1;

        v6 = ov63_0222D0C4(param0->unk_04, v0);
        ov63_0222D110(param0, v6, v1);
    }

    ov63_0222D0E0(param0, &v2, &v3);
    ov63_0222B238(param0->unk_04, v2, v3);

    v5 = ov63_0222D034(v3, param0->unk_12);

    ov63_0222B278(param0->unk_04, v5);
    ov63_0222B33C(param0->unk_04);
}

void ov63_0222CFA4 (UnkStruct_ov63_0222CE44 * param0, BOOL param1)
{
    param0->unk_13 = param1;
}

void ov63_0222CFA8 (UnkStruct_ov63_0222CE44 * param0)
{
    ov63_0222D110(param0, 1, param0->unk_0A);
}

void ov63_0222CFB4 (UnkStruct_ov63_0222CE44 * param0)
{
    ov63_0222B33C(param0->unk_04);
}

void ov63_0222CFC0 (UnkStruct_ov63_0222CE44 * param0)
{
    int v0;

    v0 = ov63_0222D0C4(param0->unk_04, param0->unk_08);

    ov63_0222D110(param0, v0, param0->unk_0A);
    ov63_0222CF14(param0);
}

void ov63_0222CFE0 (UnkStruct_ov63_0222CE44 * param0, UnkStruct_ov63_0222CC3C param1)
{
    ov63_0222B238(param0->unk_04, param1.unk_00, param1.unk_02);
}

BOOL ov63_0222CFFC (const UnkStruct_ov63_0222CE44 * param0)
{
    return ov63_0222B2B0(param0->unk_04);
}

void ov63_0222D008 (UnkStruct_ov63_0222CE44 * param0, BOOL param1)
{
    ov63_0222B294(param0->unk_04, param1);
}

u16 ov63_0222D014 (const UnkStruct_ov63_0222CE44 * param0)
{
    return ov63_0222B284(param0->unk_04);
}

void ov63_0222D020 (UnkStruct_ov63_0222CE44 * param0, int param1)
{
    ov63_0222D110(param0, 0, param1);
    ov63_0222B33C(param0->unk_04);
}

u32 ov63_0222D034 (s16 param0, BOOL param1)
{
    if (param1 == 1) {
        return(20000 - (param0 * 2) + 20000);
    }

    return((20000 - (param0 * 2) + 20000) + 1);
}

u32 ov63_0222D050 (const UnkStruct_ov63_0222CE44 * param0)
{
    return sub_02021F48(ov63_0222B234(param0->unk_04));
}

void ov63_0222D060 (UnkStruct_ov63_0222CE44 * param0, UnkStruct_ov63_0222CC3C param1)
{
    ov63_0222B2E0(param0->unk_04, param1.unk_00, param1.unk_02);
}

static BOOL ov63_0222D07C (const UnkStruct_ov63_0222CE44 * param0)
{
    if (param0->unk_04 == NULL) {
        return 1;
    }

    return 0;
}

static UnkStruct_ov63_0222CE44 * ov63_0222D08C (UnkStruct_ov63_0222CD2C * param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_08; v0++) {
        if (ov63_0222D07C(&param0->unk_04[v0]) == 1) {
            return &param0->unk_04[v0];
        }
    }

    GF_ASSERT(0);
    return NULL;
}

static int ov63_0222D0C4 (const UnkStruct_ov63_0222BB38 * param0, int param1)
{
    static const u8 v0[12] = {
        0, 3, 2, 4, 0, 5, 6, 8, 7, 8, 2, 6,
    };
    int v1;

    v1 = ov63_0222B2BC(param0);

    if (v1 == 2) {
        return 0;
    }

    return v0[param1];
}

static void ov63_0222D0E0 (const UnkStruct_ov63_0222CE44 * param0, s16 * param1, s16 * param2)
{
    UnkStruct_ov63_0222CC3C v0;

    v0 = ov63_0222C0FC(param0->unk_00);

    *param1 = v0.unk_00;
    *param2 = v0.unk_02;
}

static void ov63_0222D110 (UnkStruct_ov63_0222CE44 * param0, int param1, int param2)
{
    u16 v0;
    u16 v1;
    static const u8 v2[10] = {
        0, 0, 1, 0, 1, 1, 1, 1, 1, 0,
    };

    v0 = ov63_0222B2D4(param0->unk_04);
    v1 = ov63_0222B2C4(param0->unk_04);

    ov63_0222B308(param0->unk_04, param1, param2);

    if (v1 != param1) {
        if (v2[param1] == 1) {
            if (param0->unk_10 == param1) {
                ov63_0222B2C8(param0->unk_04, param0->unk_0E);
            }
        }

        if (v2[v1] == 1) {
            param0->unk_10 = v1;
            param0->unk_0E = v0;
        }
    }
}
