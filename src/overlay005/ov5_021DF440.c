#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_02020C44_decl.h"
#include "struct_decls/struct_020216E0_decl.h"
#include "struct_decls/struct_02022BD8_2_decl.h"
#include "struct_decls/struct_02022BD8_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_decls/struct_020711EC_decl.h"
#include "overlay005/struct_ov5_021F06D8_decl.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"

#include "overlay005/const_ov5_021FF85C.h"

#include "struct_defs/struct_020217F4.h"
#include "struct_defs/struct_02024184.h"
#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_02073838.h"
#include "struct_defs/struct_02073974.h"
#include "overlay005/struct_ov5_021DF7F8.h"
#include "overlay005/struct_ov5_021DF84C.h"
#include "overlay005/struct_ov5_021EDDAC.h"
#include "overlay005/struct_ov5_021FF85C.h"
#include "overlay101/struct_ov101_021D86B0.h"

#include "filesystem.h"
#include "unk_0200D9E8.h"
#include "unk_02017E74.h"
#include "unk_02020AEC.h"
#include "unk_0202298C.h"
#include "unk_0202414C.h"
#include "unk_02061804.h"
#include "unk_020711EC.h"
#include "unk_02073838.h"
#include "overlay005/ov5_021D521C.h"
#include "overlay005/ov5_021DF440.h"
#include "overlay005/ov5_021F067C.h"

typedef struct UnkStruct_ov5_021DF6AC_t UnkStruct_ov5_021DF6AC;
typedef struct UnkStruct_ov5_021DF8FC_t UnkStruct_ov5_021DF8FC;
typedef struct UnkStruct_ov5_021DF8C8_t UnkStruct_ov5_021DF8C8;

typedef struct UnkStruct_ov5_021DF47C_t {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
    u32 unk_0C;
    UnkStruct_0203CDB0 * unk_10;
    UnkStruct_ov5_021DF6AC * unk_14;
    NARC * unk_18;
    UnkStruct_020711EC * unk_1C;
    UnkStruct_ov5_021DF8FC * unk_20;
} UnkStruct_ov5_021DF47C;

typedef struct UnkStruct_ov5_021DF6AC_t {
    u32 unk_00;
    void * unk_04;
} UnkStruct_ov5_021DF6AC;

typedef struct UnkStruct_ov5_021DF8FC_t {
    u32 unk_00;
    u16 unk_04;
    u16 unk_06;
    u16 unk_08;
    u16 unk_0A;
    UnkStruct_02020C44 * unk_0C;
    UnkStruct_ov5_021F06D8 * unk_10;
    UnkStruct_ov5_021F06D8 * unk_14;
    UnkStruct_02022BD8 * unk_18;
    UnkStruct_ov5_021DF8C8 * unk_1C;
    UnkStruct_ov5_021DF84C * unk_20;
} UnkStruct_ov5_021DF8FC;

typedef struct UnkStruct_ov5_021DF8C8_t {
    u32 unk_00;
    UnkStruct_ov5_021DF84C * unk_04;
};

typedef struct {
    u32 unk_00;
    u32 unk_04;
    UnkStruct_02022BD8 * unk_08;
} UnkStruct_ov5_021DFA88;

static u32 ov5_021DF584(const UnkStruct_ov5_021DF47C * param0);
static void ov5_021DF588(UnkStruct_ov5_021DF47C * param0);
static void ov5_021DF59C(UnkStruct_ov5_021DF47C * param0);
static void ov5_021DF5E8(UnkStruct_ov5_021DF47C * param0);
static void ov5_021DF600(UnkStruct_ov5_021DF47C * param0, u32 param1);
static void ov5_021DF628(UnkStruct_ov5_021DF47C * param0, UnkStruct_ov5_021DF6AC * param1);
static void ov5_021DF644(UnkStruct_ov5_021DF47C * param0);
static UnkStruct_ov5_021DF6AC * ov5_021DF66C(UnkStruct_ov5_021DF47C * param0);
static UnkStruct_ov5_021DF6AC * ov5_021DF694(UnkStruct_ov5_021DF47C * param0, u32 param1);
static void ov5_021DF6AC(UnkStruct_ov5_021DF6AC * param0);
static void ov5_021DF6B8(UnkStruct_ov5_021DF6AC * param0, u32 param1, void * param2);
static int ov5_021DF6C0(const UnkStruct_ov5_021DF6AC * param0);
static const UnkStruct_ov5_021FF85C * ov5_021DF6D0(u32 param0);
static void ov5_021DF6F8(UnkStruct_ov5_021DF47C * param0);
static void ov5_021DF708(UnkStruct_ov5_021DF47C * param0);
static void ov5_021DF71C(UnkStruct_ov5_021DF47C * param0);
static void ov5_021DF754(UnkStruct_ov5_021DF47C * param0, u32 param1, u32 param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8);
static void ov5_021DF7C4(UnkStruct_ov5_021DF47C * param0);
static void ov5_021DF8C8(UnkStruct_ov5_021DF47C * param0, UnkStruct_ov5_021DF8FC * param1, u32 param2);
static void ov5_021DF8FC(UnkStruct_ov5_021DF8FC * param0);
static UnkStruct_ov5_021DF84C * ov5_021DF9B4(UnkStruct_ov5_021DF8FC * param0, u32 param1);
static void ov5_021DF910(UnkStruct_ov5_021DF8FC * param0, u32 param1);
static UnkStruct_ov5_021DF84C * ov5_021DF930(UnkStruct_ov5_021DF8FC * param0, u32 param1, void * param2, UnkStruct_02024184 * param3, void * param4, UnkStruct_02022BD8_2 * param5, const UnkStruct_020217F4 * param6);
static void ov5_021DFA88(UnkStruct_ov5_021DF47C * param0, u32 param1, UnkStruct_02022BD8 * param2);
static void ov5_021DFAC0(UnkStruct_0201CD38 * param0, void * param1);
static void ov5_021DFADC(UnkStruct_0201CD38 * param0, void * param1);

UnkStruct_ov5_021DF47C * ov5_021DF440 (UnkStruct_0203CDB0 * param0, u32 param1, u32 param2)
{
    UnkStruct_ov5_021DF47C * v0;

    v0 = sub_02018144(param2, (sizeof(UnkStruct_ov5_021DF47C)));
    memset(v0, 0, (sizeof(UnkStruct_ov5_021DF47C)));

    v0->unk_00 = param2;
    v0->unk_04 = param1;
    v0->unk_10 = param0;
    v0->unk_14 = sub_02018144(param2, (sizeof(UnkStruct_ov5_021DF6AC)) * param1);

    ov5_021DF5E8(v0);
    ov5_021DF588(v0);

    return v0;
}

void ov5_021DF47C (UnkStruct_ov5_021DF47C * param0, u32 param1)
{
    param0->unk_08 = param1;
    ov5_021DF6F8(param0);
}

void ov5_021DF488 (UnkStruct_ov5_021DF47C * param0, u32 param1, u32 param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8)
{
    ov5_021DF754(param0, param1, param2, param3, param4, param5, param6, param7, param8);
}

void ov5_021DF4A8 (UnkStruct_ov5_021DF47C * param0, u32 param1)
{
    if (ov5_021DF694(param0, param1) != NULL) {
        GF_ASSERT(FALSE);
        return;
    }

    ov5_021DF600(param0, param1);
}

void ov5_021DF4C8 (UnkStruct_ov5_021DF47C * param0, const u32 * param1)
{
    while ((*param1) != 34) {
        ov5_021DF4A8(param0, (*param1));
        param1++;
    }
}

int ov5_021DF4E4 (UnkStruct_ov5_021DF47C * param0, u32 param1)
{
    if (ov5_021DF694(param0, param1) == NULL) {
        return 0;
    }

    return 1;
}

void ov5_021DF4F8 (UnkStruct_ov5_021DF47C * param0)
{
    ov5_021DF71C(param0);
}

void ov5_021DF500 (UnkStruct_ov5_021DF47C * param0)
{
    ov5_021DF708(param0);
    ov5_021DF644(param0);
    ov5_021DF7C4(param0);
    ov5_021DF59C(param0);
    sub_020181C4(param0->unk_14);
    sub_020181C4(param0);
}

void * ov5_021DF528 (const UnkStruct_ov5_021DF47C * param0, u32 param1, int param2)
{
    void * v0;

    if (param2 == 0) {
        v0 = sub_02018144(param0->unk_00, param1);
    } else {
        v0 = sub_02018184(param0->unk_00, param1);
    }

    return v0;
}

void * ov5_021DF53C (const UnkStruct_ov5_021DF47C * param0, u32 param1, int param2, u32 param3)
{
    void * v0 = ov5_021DF528(param0, param1, param2);

    memset(v0, param3, param1);
    return v0;
}

void ov5_021DF554 (void * param0)
{
    sub_020181C4(param0);
}

void * ov5_021DF55C (UnkStruct_ov5_021DF47C * param0, u32 param1)
{
    UnkStruct_ov5_021DF6AC * v0 = ov5_021DF694(param0, param1);

    if (v0 == NULL) {
        GF_ASSERT(0);
        return NULL;
    }

    return v0->unk_04;
}

UnkStruct_0203CDB0 * ov5_021DF574 (const UnkStruct_ov5_021DF47C * param0)
{
    return param0->unk_10;
}

UnkStruct_ov5_021DF47C * ov5_021DF578 (const UnkStruct_02061AB4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02062C00(param0);
    return (UnkStruct_ov5_021DF47C *)v0->unk_40;
}

static u32 ov5_021DF584 (const UnkStruct_ov5_021DF47C * param0)
{
    return param0->unk_00;
}

static void ov5_021DF588 (UnkStruct_ov5_021DF47C * param0)
{
    param0->unk_18 = NARC_ctor(107, ov5_021DF584(param0));
}

static void ov5_021DF59C (UnkStruct_ov5_021DF47C * param0)
{
    NARC_dtor(param0->unk_18);
}

u32 ov5_021DF5A8 (UnkStruct_ov5_021DF47C * param0, u32 param1)
{
    u32 v0 = NARC_GetMemberSize(param0->unk_18, param1);
    return v0;
}

void ov5_021DF5B4 (UnkStruct_ov5_021DF47C * param0, u32 param1, void * param2)
{
    NARC_ReadWholeMember(param0->unk_18, param1, param2);
}

void * ov5_021DF5C0 (UnkStruct_ov5_021DF47C * param0, u32 param1, int param2)
{
    u32 v0 = NARC_GetMemberSize(param0->unk_18, param1);
    void * v1 = ov5_021DF528(param0, v0, param2);

    NARC_ReadWholeMember(param0->unk_18, param1, v1);

    return v1;
}

static void ov5_021DF5E8 (UnkStruct_ov5_021DF47C * param0)
{
    u32 v0 = param0->unk_04;
    UnkStruct_ov5_021DF6AC * v1 = param0->unk_14;

    while (v0) {
        ov5_021DF6AC(v1);
        v1++; v0--;
    }
}

static void ov5_021DF600 (UnkStruct_ov5_021DF47C * param0, u32 param1)
{
    const UnkStruct_ov5_021FF85C * v0 = ov5_021DF6D0(param1);
    void * v1;
    UnkStruct_ov5_021DF6AC * v2;

    v1 = v0->unk_04(param0);
    v2 = ov5_021DF66C(param0);

    ov5_021DF6B8(v2, param1, v1);
}

static void ov5_021DF628 (UnkStruct_ov5_021DF47C * param0, UnkStruct_ov5_021DF6AC * param1)
{
    const UnkStruct_ov5_021FF85C * v0 = ov5_021DF6D0(param1->unk_00);

    v0->unk_08(param1->unk_04);
    ov5_021DF6AC(param1);
}

static void ov5_021DF644 (UnkStruct_ov5_021DF47C * param0)
{
    u32 v0 = param0->unk_04;
    UnkStruct_ov5_021DF6AC * v1 = param0->unk_14;

    while (v0) {
        if (ov5_021DF6C0(v1) == 0) {
            ov5_021DF628(param0, v1);
        }

        v1++; v0--;
    }
}

static UnkStruct_ov5_021DF6AC * ov5_021DF66C (UnkStruct_ov5_021DF47C * param0)
{
    u32 v0 = param0->unk_04;
    UnkStruct_ov5_021DF6AC * v1 = param0->unk_14;

    while (v0) {
        if (ov5_021DF6C0(v1) == 1) {
            return v1;
        }

        v1++; v0--;
    }

    GF_ASSERT(FALSE);
    return NULL;
}

static UnkStruct_ov5_021DF6AC * ov5_021DF694 (UnkStruct_ov5_021DF47C * param0, u32 param1)
{
    u32 v0 = param0->unk_04;
    UnkStruct_ov5_021DF6AC * v1 = param0->unk_14;

    while (v0) {
        if (v1->unk_00 == param1) {
            return v1;
        }

        v1++; v0--;
    }

    return NULL;
}

static void ov5_021DF6AC (UnkStruct_ov5_021DF6AC * param0)
{
    param0->unk_00 = 34;
    param0->unk_04 = NULL;
}

static void ov5_021DF6B8 (UnkStruct_ov5_021DF6AC * param0, u32 param1, void * param2)
{
    param0->unk_00 = param1;
    param0->unk_04 = param2;
}

static int ov5_021DF6C0 (const UnkStruct_ov5_021DF6AC * param0)
{
    if (param0->unk_00 == 34) {
        return 1;
    }

    return 0;
}

static const UnkStruct_ov5_021FF85C * ov5_021DF6D0 (u32 param0)
{
    const UnkStruct_ov5_021FF85C * v0 = Unk_ov5_021FF85C;

    while (v0->unk_00 != 34) {
        if (v0->unk_00 == param0) {
            return v0;
        }

        v0++;
    }

    GF_ASSERT(FALSE);
    return NULL;
}

static void ov5_021DF6F8 (UnkStruct_ov5_021DF47C * param0)
{
    param0->unk_1C = sub_020711EC(param0->unk_00, param0->unk_08);
}

static void ov5_021DF708 (UnkStruct_ov5_021DF47C * param0)
{
    if (param0->unk_1C != NULL) {
        sub_0207121C(param0->unk_1C);
        param0->unk_1C = NULL;
    }
}

static void ov5_021DF71C (UnkStruct_ov5_021DF47C * param0)
{
    if (param0->unk_1C != NULL) {
        sub_020713D0(param0->unk_1C);
    }
}

UnkStruct_ov101_021D5D90 * ov5_021DF72C (const UnkStruct_ov5_021DF47C * param0, const UnkStruct_ov101_021D86B0 * param1, const VecFx32 * param2, int param3, const void * param4, int param5)
{
    UnkStruct_ov101_021D5D90 * v0;
    UnkStruct_020711EC * v1;

    v1 = param0->unk_1C;
    v0 = sub_02071330(v1, param1, param2, param3, param4, param5);

    GF_ASSERT(v0 != NULL);

    return v0;
}

void ov5_021DF74C (UnkStruct_ov101_021D5D90 * param0)
{
    sub_0207136C(param0);
}

static void ov5_021DF754 (UnkStruct_ov5_021DF47C * param0, u32 param1, u32 param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8)
{
    UnkStruct_ov5_021DF8FC * v0;
    UnkStruct_ov5_021EDDAC v1;

    v0 = ov5_021DF53C(param0, (sizeof(UnkStruct_ov5_021DF8FC)), 0, 0);
    param0->unk_20 = v0;

    v0->unk_00 = param1;
    v0->unk_04 = param2;
    v0->unk_06 = param3;
    v0->unk_08 = param4;
    v0->unk_0A = param5;
    v0->unk_10 = ov5_021F067C(param1, 69, param6, param3);
    v0->unk_14 = ov5_021F067C(param1, 70, param7, param4);
    v0->unk_18 = sub_02022BD8(param5, param1);

    ov5_021DF8C8(param0, v0, param2);

    v1.unk_00 = param2;
    v1.unk_04 = ov5_021DF584(param0);
    v0->unk_0C = sub_02020C44(&v1);
}

static void ov5_021DF7C4 (UnkStruct_ov5_021DF47C * param0)
{
    UnkStruct_ov5_021DF8FC * v0 = param0->unk_20;

    if (v0 != NULL) {
        sub_02020CCC(v0->unk_0C);
        ov5_021DF8FC(v0);
        ov5_021F06D8(v0->unk_10);
        ov5_021F06D8(v0->unk_14);
        sub_02022C1C(v0->unk_18);
        ov5_021DF554(v0);

        param0->unk_20 = NULL;
    }
}

UnkStruct_020216E0 * ov5_021DF7F8 (UnkStruct_ov5_021DF47C * param0, const UnkStruct_ov5_021DF84C * param1, const VecFx32 * param2)
{
    UnkStruct_ov5_021DF7F8 v0;
    UnkStruct_020216E0 * v1;
    UnkStruct_02020C44 * v2;
    VecFx32 v3 = {FX32_ONE, FX32_ONE, FX32_ONE};

    v2 = param0->unk_20->unk_0C;

    v0.unk_00 = v2;
    v0.unk_04 = param1;
    v0.unk_08 = *param2;
    v0.unk_14 = v3;

    v1 = sub_0202119C(&v0);
    GF_ASSERT(v1 != NULL);

    if (v1 != NULL) {
        NNS_G3dMdlSetMdlFogEnableFlagAll(sub_020213F4(v1), 1);
        ov5_021D53A4(sub_020213F4(v1));
    }

    return v1;
}

UnkStruct_020216E0 * ov5_021DF84C (UnkStruct_ov5_021DF47C * param0, u32 param1, const VecFx32 * param2)
{
    UnkStruct_ov5_021DF84C * v0;

    v0 = ov5_021DF9B4(param0->unk_20, param1);
    return ov5_021DF7F8(param0, v0, param2);
}

UnkStruct_ov5_021DF84C * ov5_021DF864 (UnkStruct_ov5_021DF47C * param0, u32 param1, u32 param2, u32 param3, u32 param4, int param5, const UnkStruct_020217F4 * param6)
{
    void * v0, * v1, * v2;
    UnkStruct_02024184 v3;
    UnkStruct_02022BD8_2 * v4;
    UnkStruct_ov5_021DF84C * v5;
    UnkStruct_ov5_021DF8FC * v6;

    v6 = param0->unk_20;
    v0 = ov5_021F075C(v6->unk_10, param2);
    v2 = ov5_021F075C(v6->unk_14, param3);

    sub_02024184(v2, &v3);

    v4 = sub_02022D98(v6->unk_18, param4);
    GF_ASSERT(v4 != NULL);
    v1 = sub_02022DF4(v4);

    if (param5 == 1) {
        v4 = NULL;
    }

    v5 = ov5_021DF930(v6, param1, v0, &v3, v1, v4, param6);
    GF_ASSERT(v5 != NULL);

    return v5;
}

static void ov5_021DF8C8 (UnkStruct_ov5_021DF47C * param0, UnkStruct_ov5_021DF8FC * param1, u32 param2)
{
    UnkStruct_ov5_021DF84C * v0;
    UnkStruct_ov5_021DF8C8 * v1;

    v0 = ov5_021DF528(param0, sizeof(UnkStruct_ov5_021DF84C) * param2, 0);
    param1->unk_20 = v0;

    v1 = ov5_021DF528(param0, (sizeof(UnkStruct_ov5_021DF8C8)) * param2, 0);
    param1->unk_1C = v1;

    do {
        v1->unk_00 = 17;
        v1->unk_04 = v0;
        v1++;
        v0++;
        param2--;
    } while (param2);
}

static void ov5_021DF8FC (UnkStruct_ov5_021DF8FC * param0)
{
    ov5_021DF554(param0->unk_1C);
    ov5_021DF554(param0->unk_20);
}

static void ov5_021DF910 (UnkStruct_ov5_021DF8FC * param0, u32 param1)
{
    u32 v0 = param0->unk_04;
    UnkStruct_ov5_021DF8C8 * v1 = param0->unk_1C;

    do {
        if (v1->unk_00 == param1) {
            v1->unk_00 = 17; return;
        }

        v1++; v0--;
    } while (v0);

    GF_ASSERT(FALSE);
}

static UnkStruct_ov5_021DF84C * ov5_021DF930 (UnkStruct_ov5_021DF8FC * param0, u32 param1, void * param2, UnkStruct_02024184 * param3, void * param4, UnkStruct_02022BD8_2 * param5, const UnkStruct_020217F4 * param6)
{
    UnkStruct_ov5_021DF84C * v0;

    v0 = NULL;

    {
        u32 v1 = param0->unk_04;
        UnkStruct_ov5_021DF8C8 * v2 = param0->unk_1C;

        do {
            if (v2->unk_00 == param1) {
                return v2->unk_04;
            }

            v2++;
            v1--;
        } while (v1);

        v2 = param0->unk_1C;
        v1 = param0->unk_04;

        do {
            if (v2->unk_00 == 17) {
                v2->unk_00 = param1;
                v0 = v2->unk_04;
                break;
            }

            v2++;
            v1--;
        } while (v1);
    }

    GF_ASSERT(v0 != NULL);
    memset(v0, 0, sizeof(UnkStruct_ov5_021DF84C));

    v0->unk_00 = param2;
    v0->unk_0C = *param3;
    v0->unk_04 = param4;

    if (param5 != NULL) {
        v0->unk_1C = sub_02022EF4(param5);
        v0->unk_20 = sub_02022F04(param5);
        v0->unk_24 = sub_02022F14(param5);
    }

    v0->unk_08 = param6;
    return v0;
}

static UnkStruct_ov5_021DF84C * ov5_021DF9B4 (UnkStruct_ov5_021DF8FC * param0, u32 param1)
{
    u32 v0 = param0->unk_04;
    UnkStruct_ov5_021DF8C8 * v1 = param0->unk_1C;

    do {
        if (v1->unk_00 == param1) {
            return v1->unk_04;
        }

        v1++;
        v0--;
    } while (v0);

    GF_ASSERT(FALSE);
    return NULL;
}

void ov5_021DF9D4 (UnkStruct_ov5_021DF47C * param0, u32 param1)
{
    UnkStruct_ov5_021DF8FC * v0 = param0->unk_20;
    ov5_021DF910(v0, param1);
}

void ov5_021DF9E0 (UnkStruct_ov5_021DF47C * param0, u32 param1, u32 param2)
{
    UnkStruct_ov5_021DF8FC * v0 = param0->unk_20;

    ov5_021F0784(v0->unk_10, param1, param0->unk_18, param2, 0);
}

void * ov5_021DF9FC (UnkStruct_ov5_021DF47C * param0, u32 param1)
{
    UnkStruct_ov5_021DF8FC * v0 = param0->unk_20;
    void * v1 = ov5_021F075C(v0->unk_10, param1);

    return v1;
}

void ov5_021DFA08 (UnkStruct_ov5_021DF47C * param0, u32 param1)
{
    UnkStruct_ov5_021DF8FC * v0 = param0->unk_20;
    ov5_021F0740(v0->unk_10, param1);
}

void ov5_021DFA14 (UnkStruct_ov5_021DF47C * param0, u32 param1, u32 param2)
{
    UnkStruct_ov5_021DF8FC * v0 = param0->unk_20;
    ov5_021F0784(v0->unk_14, param1, param0->unk_18, param2, 0);
}

void ov5_021DFA30 (UnkStruct_ov5_021DF47C * param0, u32 param1)
{
    UnkStruct_ov5_021DF8FC * v0 = param0->unk_20;
    ov5_021F0740(v0->unk_14, param1);
}

void ov5_021DFA3C (UnkStruct_ov5_021DF47C * param0, u32 param1, u32 param2, u32 param3)
{
    UnkStruct_ov5_021DF8FC * v0 = param0->unk_20;
    void * v1 = ov5_021DF5C0(param0, param2, 1);
    UnkStruct_02022BD8_2 * v2 = sub_02022C9C(v0->unk_18, v1, param1, param3, ov5_021DF584(param0));

    GF_ASSERT(v2 != NULL);
    ov5_021DFA88(param0, param1, v0->unk_18);
}

void ov5_021DFA7C (UnkStruct_ov5_021DF47C * param0, u32 param1)
{
    UnkStruct_ov5_021DF8FC * v0 = param0->unk_20;
    sub_02022D38(v0->unk_18, param1);
}

static void ov5_021DFA88 (UnkStruct_ov5_021DF47C * param0, u32 param1, UnkStruct_02022BD8 * param2)
{
    UnkStruct_ov5_021DFA88 * v0 = ov5_021DF528(param0, (sizeof(UnkStruct_ov5_021DFA88)), 1);

    v0->unk_00 = 1;
    v0->unk_04 = param1;
    v0->unk_08 = param2;

    sub_0200DA04(ov5_021DFAC0, v0, 0xff);
    sub_0200DA3C(ov5_021DFADC, v0, 0xff);
}

static void ov5_021DFAC0 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov5_021DFA88 * v0 = param1;

    sub_02022E38(v0->unk_08, v0->unk_04);
    v0->unk_00 = 1;
    sub_0200DA58(param0);
}

static void ov5_021DFADC (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov5_021DFA88 * v0 = param1;

    if (v0->unk_00 == 1) {
        sub_02022EA0(v0->unk_08, v0->unk_04);
        ov5_021DF554(v0);
        sub_0200DA58(param0);
    }
}

void ov5_021DFB00 (UnkStruct_ov5_021DF47C * param0, UnkStruct_02073838 * param1, u32 param2, u32 param3, int param4)
{
    sub_0207389C(param1, param2, param0->unk_18, param3, param0->unk_00, param4);
    sub_020738EC(param1);
}

void ov5_021DFB24 (UnkStruct_ov5_021DF47C * param0, UnkStruct_02073974 * param1, u32 param2, u32 param3, u32 param4)
{
    sub_020739B4(param1, param2, param0->unk_18, param3, param0->unk_00, param4);
}

void ov5_021DFB40 (UnkStruct_ov5_021DF47C * param0, UnkStruct_02073974 * param1, const UnkStruct_02073838 * param2, UnkStruct_02073974 * param3, u32 param4)
{
    sub_02073A6C(param1, param2, param3, param4, param0->unk_00);
}
