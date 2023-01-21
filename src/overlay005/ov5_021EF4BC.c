#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02013B10_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "overlay005/struct_ov5_021EF3BC_decl.h"
#include "overlay005/struct_ov5_021EF43C_decl.h"

#include "unk_02005474.h"
#include "unk_0200D9E8.h"
#include "unk_02013B10.h"
#include "heap.h"
#include "overlay005/ov5_021EF3A8.h"
#include "overlay005/ov5_021EF4BC.h"

typedef struct UnkStruct_ov5_021EF4F8_t {
    u32 unk_00;
    int unk_04;
    int unk_08;
    u16 unk_0C[192];
    u16 unk_18C[192];
    UnkStruct_02013B10 * unk_30C;
    UnkStruct_ov5_021EF3BC * unk_310;
    UnkStruct_ov5_021EF43C * unk_314;
    BOOL unk_318;
    UnkStruct_0201CD38 * unk_31C;
    UnkStruct_0201CD38 * unk_320;
    UnkStruct_0201CD38 * unk_324;
} UnkStruct_ov5_021EF4F8;

static void ov5_021EF5A8(UnkStruct_0201CD38 * param0, void * param1);
static void ov5_021EF6B0(UnkStruct_0201CD38 * param0, void * param1);
static void ov5_021EF6E4(UnkStruct_0201CD38 * param0, void * param1);
static void ov5_021EF634(UnkStruct_ov5_021EF4F8 * param0);
static void ov5_021EF66C(u16 * param0, int param1, int param2);
static void ov5_021EF6C0(UnkStruct_ov5_021EF43C * param0, void * param1);
static void ov5_021EF6CC(UnkStruct_ov5_021EF4F8 * param0);
static void ov5_021EF6F0(UnkStruct_ov5_021EF4F8 * param0);
static void ov5_021EF710(UnkStruct_ov5_021EF4F8 * param0);

UnkStruct_ov5_021EF4F8 * ov5_021EF4BC (u32 param0, UnkStruct_ov5_021EF3BC * param1)
{
    UnkStruct_ov5_021EF4F8 * v0;

    v0 = AllocFromHeap(param0, sizeof(UnkStruct_ov5_021EF4F8));
    memset(v0, 0, sizeof(UnkStruct_ov5_021EF4F8));

    v0->unk_00 = 0;
    v0->unk_30C = sub_02013B10(param0, v0->unk_0C, v0->unk_18C);
    v0->unk_310 = param1;

    return v0;
}

void ov5_021EF4F8 (UnkStruct_ov5_021EF4F8 * param0)
{
    if (param0->unk_00 == 1) {
        ov5_021EF710(param0);
    }

    sub_02013B40(param0->unk_30C);
    FreeToHeap(param0);
}

void ov5_021EF518 (UnkStruct_ov5_021EF4F8 * param0)
{
    GF_ASSERT(param0->unk_00 == 0);

    param0->unk_314 = ov5_021EF418(param0->unk_310, ov5_021EF6C0, param0);
    param0->unk_31C = sub_0200D9E8(ov5_021EF5A8, param0, 1024);
    param0->unk_320 = sub_0200DA04(ov5_021EF6B0, param0, 1024);
    param0->unk_324 = sub_0200DA04(ov5_021EF6E4, param0, 1024);

    memset(param0->unk_0C, 0, sizeof(u16) * 192);
    memset(param0->unk_18C, 0, sizeof(u16) * 192);

    param0->unk_00 = 1;
    param0->unk_08 = 0;

    sub_02005748(1552);
}

static void ov5_021EF5A8 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov5_021EF4F8 * v0 = param1;
    u16 * v1;

    switch (v0->unk_08) {
    case 0:
        v0->unk_04 = 3;
        v0->unk_08++;
        break;
    case 1:
        v0->unk_04--;
        v1 = sub_02013B54(v0->unk_30C);

        ov5_021EF66C(v1, 3 - v0->unk_04, 3);

        if (v0->unk_04 <= 0) {
            v0->unk_04 = 3;
            v0->unk_08++;
        }
        break;
    case 2:
        v0->unk_04--;
        v1 = sub_02013B54(v0->unk_30C);

        ov5_021EF66C(v1, v0->unk_04, 3);

        if (v0->unk_04 <= 0) {
            v0->unk_08++;
        }
        break;
    case 3:
        ov5_021EF710(v0);
        G3X_SetHOffset(0);
        break;
    }
}

static void ov5_021EF634 (UnkStruct_ov5_021EF4F8 * param0)
{
    const u16 * v0;
    int v1;

    v1 = GX_GetVCount();
    v0 = sub_02013B68(param0->unk_30C);

    if (v1 < 192) {
        v1++;

        if (v1 >= 192) {
            v1 -= 192;
        }

        if (GX_IsHBlank()) {
            G3X_SetHOffset(v0[v1]);
        }
    }
}

static void ov5_021EF66C (u16 * param0, int param1, int param2)
{
    int v0;
    int v1;
    BOOL v2 = 1;

    v1 = 3 * param1;
    v1 = v1 / param2;

    for (v0 = 0; v0 < 192; v0++) {
        if ((v0 % 10) == 0) {
            v2 ^= 1;
        }

        if (v2) {
            param0[v0] = v1;
        } else {
            param0[v0] = -v1;
        }
    }
}

static void ov5_021EF6B0 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov5_021EF4F8 * v0 = param1;

    v0->unk_318 = 0;
    G3X_SetHOffset(0);
}

static void ov5_021EF6C0 (UnkStruct_ov5_021EF43C * param0, void * param1)
{
    UnkStruct_ov5_021EF4F8 * v0 = param1;
    ov5_021EF6CC(v0);
}

static void ov5_021EF6CC (UnkStruct_ov5_021EF4F8 * param0)
{
    if (param0->unk_00 == 1) {
        if (param0->unk_318 == 1) {
            ov5_021EF634(param0);
        }
    }
}

static void ov5_021EF6E4 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov5_021EF4F8 * v0 = param1;
    ov5_021EF6F0(v0);
}

static void ov5_021EF6F0 (UnkStruct_ov5_021EF4F8 * param0)
{
    if (param0->unk_00 == 1) {
        sub_02013B94(param0->unk_30C);
        param0->unk_318 = 1;
    }
}

static void ov5_021EF710 (UnkStruct_ov5_021EF4F8 * param0)
{
    ov5_021EF43C(param0->unk_314);
    param0->unk_314 = NULL;

    sub_0200DA58(param0->unk_31C);
    param0->unk_31C = NULL;

    sub_0200DA58(param0->unk_320);
    param0->unk_320 = NULL;

    sub_0200DA58(param0->unk_324);
    param0->unk_324 = NULL;
    param0->unk_00 = 0;
}
