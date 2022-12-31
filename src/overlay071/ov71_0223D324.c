#include <nitro.h>
#include <string.h>

#include "overlay071/struct_ov71_0223D324.h"

#include "unk_020041CC.h"
#include "overlay071/ov71_0223D324.h"

static void ov71_0223D370(UnkStruct_ov71_0223D324 * param0);
static BOOL ov71_0223D3A0(UnkStruct_ov71_0223D324 * param0, const int param1, const u8 param2);
static BOOL ov71_0223D3D8(UnkStruct_ov71_0223D324 * param0, const int param1, const u8 param2);
static BOOL ov71_0223D410(UnkStruct_ov71_0223D324 * param0, const int param1, const u8 param2);
static void ov71_0223D454(UnkStruct_ov71_0223D324 * param0);
static void ov71_0223D42C(UnkStruct_ov71_0223D324 * param0, int param1, int param2, int param3);
static void ov71_0223D470(int param0, const int param1, const u8 param2);

static const u16 Unk_ov71_0223D77C[8] = {
    0x0,
    0x80,
    0x100,
    0x140,
    0x1C0,
    0x240,
    0x2C0,
    0x300
};

void ov71_0223D324 (UnkStruct_ov71_0223D324 * param0)
{
    int v0, v1;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_00[v0][0] = v0;
        param0->unk_00[v0][1] = 0xff;
    }

    return;
}

void ov71_0223D338 (UnkStruct_ov71_0223D324 * param0, const int param1, const u8 param2)
{
    int v0;

    ov71_0223D370(param0);

    if (ov71_0223D3A0(param0, param1, param2) == 1) {
        return;
    }

    if (ov71_0223D3D8(param0, param1, param2) == 1) {
        return;
    }

    if (ov71_0223D410(param0, param1, param2) == 1) {
        return;
    }

    return;
}

static void ov71_0223D370 (UnkStruct_ov71_0223D324 * param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_00[v0][1] != 0xff) {
            if (sub_02004B04((3 + param0->unk_00[v0][0])) == 0) {
                param0->unk_00[v0][1] = 0xff;
            }
        }
    }

    ov71_0223D454(param0);
    return;
}

static BOOL ov71_0223D3A0 (UnkStruct_ov71_0223D324 * param0, const int param1, const u8 param2)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_00[v0][1] == param1) {
            ov71_0223D470(param0->unk_00[v0][0], param1, param2);
            ov71_0223D42C(param0, v0, param0->unk_00[v0][0], param1);
            return 1;
        }
    }

    return 0;
}

static BOOL ov71_0223D3D8 (UnkStruct_ov71_0223D324 * param0, const int param1, const u8 param2)
{
    int v0, v1;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_00[v0][1] == 0xff) {
            ov71_0223D470(param0->unk_00[v0][0], param1, param2);

            ov71_0223D42C(param0, v0, param0->unk_00[v0][0], param1);
            return 1;
        }
    }

    return 0;
}

static BOOL ov71_0223D410 (UnkStruct_ov71_0223D324 * param0, const int param1, const u8 param2)
{
    int v0;

    v0 = (4 - 1);

    ov71_0223D470(param0->unk_00[v0][0], param1, param2);
    ov71_0223D42C(param0, v0, param0->unk_00[v0][0], param1);

    return 1;
}

static void ov71_0223D42C (UnkStruct_ov71_0223D324 * param0, int param1, int param2, int param3)
{
    int v0;

    for (v0 = param1; v0 > 0; v0--) {
        param0->unk_00[v0][0] = param0->unk_00[v0 - 1][0];
        param0->unk_00[v0][1] = param0->unk_00[v0 - 1][1];
    }

    param0->unk_00[0][0] = param2;
    param0->unk_00[0][1] = param3;

    return;
}

static void ov71_0223D454 (UnkStruct_ov71_0223D324 * param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_00[v0][0] == 0xff) {
            param0->unk_00[v0][0] = param0->unk_00[v0 + 1][0];
            param0->unk_00[v0 + 1][0] = 0xff;
        }
    }

    return;
}

static void ov71_0223D470 (int param0, const int param1, const u8 param2)
{
    int v0 = 152 * (4 - param2);

    sub_02004AE8((3 + param0), (3 + param0), 1684);
    sub_02004F68((3 + param0), 0xffff, (Unk_ov71_0223D77C[param1] - v0));

    return;
}
