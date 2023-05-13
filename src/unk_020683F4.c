#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"

#include "struct_decls/struct_02023790_decl.h"
#include "struct_decls/struct_020507E4_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "overlay005/struct_ov5_021F0468_decl.h"

#include "constdata/const_020F1E88.h"

#include "struct_defs/struct_020279FC.h"
#include "functypes/funcptr_0203BC5C.h"
#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0203D9B8.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_020684D0.h"
#include "struct_defs/struct_02068630.h"
#include "functypes/funcptr_02069238.h"
#include "struct_defs/struct_020708E0.h"
#include "struct_defs/struct_02097728.h"
#include "struct_defs/struct_02098C44.h"

#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "heap.h"
#include "unk_02018340.h"
#include "strbuf.h"
#include "unk_0202440C.h"
#include "unk_02025E08.h"
#include "unk_0202631C.h"
#include "unk_02028124.h"
#include "map_header.h"
#include "unk_0203A378.h"
#include "unk_0203A9C8.h"
#include "unk_0203C954.h"
#include "unk_0203CC84.h"
#include "unk_0203D1B8.h"
#include "unk_0203E880.h"
#include "unk_020507CC.h"
#include "unk_020508D4.h"
#include "unk_020530C8.h"
#include "unk_02054D00.h"
#include "unk_020553DC.h"
#include "unk_02055C50.h"
#include "unk_0205D8CC.h"
#include "unk_0205DAC8.h"
#include "unk_0205E7D0.h"
#include "unk_0205F180.h"
#include "unk_02061804.h"
#include "unk_02063400.h"
#include "unk_020683F4.h"
#include "unk_0206940C.h"
#include "unk_0206A8DC.h"
#include "unk_0206AFE0.h"
#include "unk_0206B9D8.h"
#include "party.h"
#include "unk_0207CB08.h"
#include "item.h"
#include "unk_0207D3B8.h"
#include "unk_020989DC.h"
#include "overlay005/ov5_021D0D80.h"
#include "overlay005/ov5_021DFB54.h"
#include "overlay005/ov5_021E1D20.h"
#include "overlay005/ov5_021F007C.h"
#include "overlay005/ov5_021F08CC.h"
#include "overlay006/ov6_02247100.h"

typedef void *(* UnkFuncPtr_02068870)(void *);

typedef struct {
    UnkStruct_0203CDB0 * unk_00;
    UnkStruct_020684D0 unk_04;
    UnkFuncPtr_02068870 unk_20;
    void * unk_24;
    u16 unk_28;
    u8 unk_2A;
} UnkStruct_02068870;

typedef BOOL (* UnkFuncPtr_020EF79C)(UnkStruct_02068870 *);

typedef struct {
    UnkFuncPtr_0203BC5C unk_00;
    UnkFuncPtr_020EF79C unk_04;
    UnkFuncPtr_02069238 unk_08;
} UnkStruct_020EF79C;

typedef struct {
    u32 unk_00;
    u16 unk_04;
    u16 unk_06;
    u16 unk_08;
    u16 unk_0A;
} UnkStruct_0206851C;

typedef struct {
    UnkStruct_0205AA50 unk_00;
    Strbuf* unk_10;
    u16 unk_14;
    u16 unk_16;
} UnkStruct_02068EFC;

void * sub_0203D8AC(UnkStruct_0203CDB0 * param0);
static void sub_020684D0(UnkStruct_0203CDB0 * param0, UnkStruct_020684D0 * param1);
static void sub_02068630(UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1);
static void sub_020686C8(UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1);
static void sub_02068710(UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1);
static void sub_0206883C(UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1);
static void sub_020689EC(UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1);
static void sub_02068A34(UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1);
static void sub_02068ACC(UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1);
static void sub_02068B1C(UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1);
static void sub_02068B5C(UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1);
static void sub_02068BA8(UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1);
static void sub_02068BF8(UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1);
static void sub_02068C94(UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1);
static void sub_02068CD0(UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1);
static void sub_02068CF0(UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1);
static void sub_02068D48(UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1);
static void sub_02068D80(UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1);
static void sub_02068DDC(UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1);
static void sub_02068E38(UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1);
static void sub_02068FEC(UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1);
static void sub_02069080(UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1);
static void sub_02069110(UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1);
static void sub_02069188(UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1);
static void sub_020691E0(UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1);
static BOOL sub_02068870(UnkStruct_02068870 * param0);
static BOOL sub_02068A18(UnkStruct_02068870 * param0);
static BOOL sub_02068DBC(UnkStruct_02068870 * param0);
static BOOL sub_02068E18(UnkStruct_02068870 * param0);
static BOOL sub_02068E74(UnkStruct_02068870 * param0);
static BOOL sub_02068EFC(UnkStruct_02068870 * param0);
static BOOL sub_020686F8(UnkStruct_02068870 * param0);
static BOOL sub_02068B8C(UnkStruct_02068870 * param0);
static BOOL sub_02068BDC(UnkStruct_02068870 * param0);
static BOOL sub_02068750(UnkStruct_02068870 * param0);
static BOOL sub_02068C38(UnkStruct_02068870 * param0);
static BOOL sub_02068CA4(UnkStruct_02068870 * param0);
static BOOL sub_02068D58(UnkStruct_02068870 * param0);
static BOOL sub_02069120(UnkStruct_02068870 * param0);
static BOOL sub_020691BC(UnkStruct_02068870 * param0);
static BOOL sub_02069218(UnkStruct_02068870 * param0);
static void * sub_02068BEC(void * param0);
static void * sub_02068B9C(void * param0);
static void * sub_02068708(void * param0);
static void * sub_02068A28(void * param0);
static void * sub_020691CC(void * param0);
static void * sub_02069228(void * param0);
static u32 sub_02068948(const UnkStruct_020684D0 * param0);
static u32 sub_0206877C(const UnkStruct_020684D0 * param0);
static u32 sub_02068B18(const UnkStruct_020684D0 * param0);
static u32 sub_02068C5C(const UnkStruct_020684D0 * param0);
static u32 sub_02068CB4(const UnkStruct_020684D0 * param0);
static u32 sub_02068CE0(const UnkStruct_020684D0 * param0);
static u32 sub_02068D68(const UnkStruct_020684D0 * param0);
static u32 sub_02068E94(const UnkStruct_020684D0 * param0);
static u32 sub_020690C4(const UnkStruct_020684D0 * param0);
static u32 sub_02069130(const UnkStruct_020684D0 * param0);
static BOOL sub_02068884(UnkStruct_020508D4 * param0);
static BOOL sub_02068F48(UnkStruct_020508D4 * param0);
static void sub_020693F8(UnkStruct_02068870 * param0, UnkFuncPtr_02068870 param1);
static BOOL sub_0206932C(UnkStruct_020508D4 * param0);
static BOOL sub_020690F0(UnkStruct_020508D4 * param0);
static BOOL sub_020685AC(UnkStruct_020508D4 * param0);
static void sub_020692E4(UnkStruct_02068870 * param0, u32 param1);

static const UnkStruct_020EF79C Unk_020EF79C[] = {
    {NULL, sub_02068EFC, NULL},
    {sub_02068630, NULL, NULL},
    {sub_020686C8, sub_020686F8, NULL},
    {sub_02068710, sub_02068750, sub_0206877C},
    {sub_0206883C, sub_02068870, sub_02068948},
    {sub_020689EC, sub_02068A18, NULL},
    {sub_02068A34, NULL, NULL},
    {sub_02068ACC, NULL, NULL},
    {sub_02068B1C, NULL, sub_02068B18},
    {sub_02068B5C, sub_02068B8C, NULL},
    {sub_02068BA8, sub_02068BDC, NULL},
    {sub_02068BF8, sub_02068C38, sub_02068C5C},
    {sub_02068C94, sub_02068CA4, sub_02068CB4},
    {sub_02068CD0, NULL, sub_02068CE0},
    {sub_02068CF0, NULL, NULL},
    {sub_02068D48, sub_02068D58, sub_02068D68},
    {sub_02068D80, sub_02068DBC, sub_02068E94},
    {sub_02068DDC, sub_02068E18, sub_02068E94},
    {sub_02068E38, sub_02068E74, sub_02068E94},
    {NULL, sub_02068EFC, NULL},
    {sub_02068FEC, NULL, NULL},
    {sub_02069080, NULL, sub_020690C4},
    {sub_02069110, sub_02069120, sub_02069130},
    {sub_02069188, sub_020691BC, NULL},
    {sub_020691E0, sub_02069218, NULL}
};

u32 sub_020683F4 (u16 param0, u16 param1)
{
    if (param0 == 0) {
        return (u32)Unk_020EF79C[param1].unk_00;
    } else if (param0 == 1) {
        return (u32)Unk_020EF79C[param1].unk_04;
    }

    return (u32)Unk_020EF79C[param1].unk_08;
}

void sub_0206842C (UnkStruct_0203CDB0 * param0, UnkStruct_020684D0 * param1)
{
    int v0, v1, v2;
    UnkStruct_02061AB4 * v3;

    if (sub_0205F158(param0->unk_3C) == 1) {
        sub_020684D0(param0, param1);
        return;
    }

    param1->unk_18 = param0;
    param1->unk_00 = param0->unk_1C->unk_00;
    param1->unk_04 = sub_0206A984(sub_020507E4(param0->unk_0C));
    param1->unk_08 = sub_0205EB74(param0->unk_3C);

    v0 = sub_0205EABC(param0->unk_3C);
    v1 = sub_0205EAC8(param0->unk_3C);

    param1->unk_0E = sub_02054F94(param0, v0, v1);

    v2 = sub_0205EA78(param0->unk_3C);

    switch (v2) {
    case 0:
        v1--;
        break;
    case 1:
        v1++;
        break;
    case 3:
        v0++;
        break;
    case 2:
        v0--;
        break;
    }

    param1->unk_0C = sub_02054F94(param0, v0, v1);
    sub_0203C9D4(param0, &v3);

    param1->unk_10 = sub_02055FC8(param0, v3);
    param1->unk_14 = param0->unk_3C;
}

static void sub_020684D0 (UnkStruct_0203CDB0 * param0, UnkStruct_020684D0 * param1)
{
    param1->unk_18 = param0;
    param1->unk_00 = param0->unk_1C->unk_00;
    param1->unk_04 = sub_0206A984(sub_020507E4(param0->unk_0C));
    param1->unk_08 = sub_0205EB74(param0->unk_3C);
    param1->unk_0E = sub_02061760(param0->unk_3C);

    {
        int v0 = sub_0205EAA0(param0->unk_3C);
        param1->unk_0C = sub_020616F0(param0->unk_3C, v0);
    }

    param1->unk_10 = sub_02055FC8(param0, NULL);
    param1->unk_14 = param0->unk_3C;
}

static UnkStruct_0206851C * sub_0206851C (u32 param0, u16 param1, u16 param2, u16 param3, u16 param4)
{
    UnkStruct_0206851C * v0;

    v0 = Heap_AllocFromHeap(32, sizeof(UnkStruct_0206851C));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_06 = param2;
    v0->unk_08 = param3;
    v0->unk_0A = param4;

    return v0;
}

static void sub_02068540 (UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1, u32 param2)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;

    v0 = sub_02050A60(param0->unk_00);
    v1 = sub_02050A64(param0->unk_00);

    sub_020509D4(v0);

    v1->unk_22C = sub_020685AC;
    v1->unk_25C = sub_0206851C(param2, param0->unk_04, 0, 0, 0);
    v1->unk_2A = 10;
}

static void sub_02068584 (UnkStruct_02068870 * param0, u32 param1)
{
    void * v0 = sub_0206851C(param1, param0->unk_28, 0, 0, 0);
    sub_02050904(param0->unk_00, sub_020685AC, v0);
}

static BOOL sub_020685AC (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_0206851C * v1 = sub_02050A64(param0);
    int * v2 = sub_02050A68(param0);
    UnkStruct_02061AB4 * v3;

    switch (*v2) {
    case 0:
        sub_0203C9D4(v0, &v3);
        sub_0203E8E0(param0, v1->unk_00, v3, NULL);

        *(u16 *)(sub_0203F098(v0, 41)) = v1->unk_04;
        *(u16 *)(sub_0203F098(v0, 42)) = v1->unk_06;
        *(u16 *)(sub_0203F098(v0, 43)) = v1->unk_08;
        *(u16 *)(sub_0203F098(v0, 44)) = v1->unk_0A;

        (*v2)++;
        break;
    case 1:
        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}

static void sub_02068630 (UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;
    UnkStruct_02098C44 * v2;

    v0 = sub_02050A60(param0->unk_00);
    v1 = sub_02050A64(param0->unk_00);
    v2 = Heap_AllocFromHeap(11, sizeof(UnkStruct_02098C44));

    memset(v2, 0, sizeof(UnkStruct_02098C44));

    v2->unk_00 = Party_GetFromSavedata(v0->unk_0C);
    v2->unk_04 = sub_0207D990(v0->unk_0C);
    v2->unk_08 = sub_02028430(v0->unk_0C);
    v2->unk_0C = sub_02025E44(v0->unk_0C);
    v2->unk_10 = sub_0202440C(v0->unk_0C);
    v2->unk_18 = &v1->unk_24C;
    v2->unk_21 = 0;
    v2->unk_20 = 5;
    v2->unk_1C = v0;
    v2->unk_24 = param0->unk_04;
    v2->unk_22 = param0->unk_06;

    sub_0203CD84(v0, &Unk_020F1E88, v2);
    v1->unk_25C = v2;
    sub_0203B674(v1, sub_0203B7C0);
}

static void sub_020686C8 (UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;

    v0 = sub_02050A60(param0->unk_00);
    v1 = sub_02050A64(param0->unk_00);

    v1->unk_25C = sub_0203D8AC(v0);
    sub_0203B674(v1, sub_0203C3F4);
}

static BOOL sub_020686F8 (UnkStruct_02068870 * param0)
{
    sub_020693F8(param0, sub_02068708);
    return 1;
}

static void * sub_02068708 (void * param0)
{
    return sub_0203D8AC(param0);
}

static void sub_02068710 (UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;

    v0 = sub_02050A60(param0->unk_00);
    v1 = sub_02050A64(param0->unk_00);

    sub_020509D4(v0);

    v1->unk_22C = sub_02054084;
    v1->unk_25C = sub_02053FAC(v0);
    v1->unk_2A = 10;

    v0->unk_90 = 0;
}

static BOOL sub_02068750 (UnkStruct_02068870 * param0)
{
    void * v0 = sub_02053FAC(param0->unk_00);

    sub_02062C48(param0->unk_00->unk_38);
    sub_02050904(param0->unk_00, sub_02054084, v0);

    param0->unk_00->unk_90 = 0;
    return 0;
}

static u32 sub_0206877C (const UnkStruct_020684D0 * param0)
{
    if (sub_0203A138(param0->unk_00) == 0) {
        return -1;
    }

    if (!(MapHeader_IsOnMainMatrix(param0->unk_00))) {
        return -1;
    }

    if (sub_0205EFDC(param0->unk_14) == 1) {
        return -1;
    }

    if ((sub_0206AE5C(sub_020507E4(param0->unk_18->unk_0C)) == 1) || (sub_0206AE8C(sub_020507E4(param0->unk_18->unk_0C)) == 1)) {
        return -1;
    }

    if (sub_0205EB74(param0->unk_14) == 0x2) {
        return -1;
    }

    if (sub_0205DEFC(param0->unk_0E) == 1) {
        return -1;
    }

    if (sub_0205DFB8(param0->unk_0E) == 1) {
        return -1;
    }

    {
        u16 v0, v1;

        v0 = sub_0205EABC(param0->unk_18->unk_3C);
        v1 = sub_0205EAC8(param0->unk_18->unk_3C);

        if (sub_0203A6A4(param0->unk_18, v0, v1) == 0) {
            return -1;
        }
    }

    return 0;
}

static void sub_0206883C (UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;

    v0 = sub_02050A60(param0->unk_00);
    v1 = sub_02050A64(param0->unk_00);

    sub_020509D4(v0);

    v1->unk_22C = sub_02068884;
    v1->unk_25C = NULL;
    v1->unk_2A = 10;
}

static BOOL sub_02068870 (UnkStruct_02068870 * param0)
{
    sub_02050904(param0->unk_00, sub_02068884, NULL);
    return 0;
}

static BOOL sub_02068884 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    int * v1;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A68(param0);

    switch (*v1) {
    case 0:
        (*v1)++;
        break;
    case 1:
        if (sub_0205EB74(v0->unk_3C) == 0x1) {
            sub_02062DDC(sub_0205EB3C(v0->unk_3C));
            ov5_021DFB54(v0->unk_3C, (1 << 0));
            ov5_021DFB5C(v0->unk_3C);

            sub_020553F0(v0, 0);
            sub_02055554(
                v0, sub_02055428(v0, v0->unk_1C->unk_00), 1);
        } else {
            sub_020553F0(v0, 1152);
            sub_02055554(v0, 1152, 1);
            sub_02062DDC(sub_0205EB3C(v0->unk_3C));

            ov5_021DFB54(v0->unk_3C, (1 << 1));
            ov5_021DFB5C(v0->unk_3C);

            sub_02069434(v0->unk_94);
        }

        (*v1)++;
        break;
    case 2:
        (*v1)++;
        break;
    case 3:
        sub_02062C78(v0->unk_38);
        return 1;
    }

    return 0;
}

static u32 sub_02068948 (const UnkStruct_020684D0 * param0)
{
    UnkStruct_020507E4 * v0 = sub_020507E4(param0->unk_18->unk_0C);

    if (param0->unk_04 == 1) {
        return 2;
    }

    if (sub_0206AF1C(v0, 2) == 1) {
        return 1;
    }

    if (sub_0205EFDC(param0->unk_14) == 1) {
        return 1;
    }

    {
        UnkStruct_02061AB4 * v1 = sub_0205EB3C(param0->unk_14);

        if ((sub_0206415C(v1, param0->unk_0E) == 1) || (sub_0206417C(v1, param0->unk_0E) == 1)) {
            return 1;
        }
    }

    if ((sub_0205DAD4(param0->unk_0E) == 1) || (sub_0205DCE0(param0->unk_0E) == 1) || (sub_0205DCFC(param0->unk_0E) == 1)) {
        return -1;
    }

    if (MapHeader_IsBikeAllowed(param0->unk_00) == 0) {
        return -1;
    }

    if (param0->unk_08 == 0x2) {
        return -1;
    }

    return 0;
}

static void sub_020689EC (UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;

    v0 = sub_02050A60(param0->unk_00);
    v1 = sub_02050A64(param0->unk_00);

    sub_0203D30C(v0, NULL);
    sub_0203B674(v1, sub_0203C50C);
}

static BOOL sub_02068A18 (UnkStruct_02068870 * param0)
{
    sub_020693F8(param0, sub_02068A28);
    return 1;
}

static void * sub_02068A28 (void * param0)
{
    sub_0203D30C(param0, NULL);
    return NULL;
}

static void sub_02068A34 (UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;
    UnkStruct_02098C44 * v2;

    v0 = sub_02050A60(param0->unk_00);
    v1 = sub_02050A64(param0->unk_00);
    v2 = Heap_AllocFromHeap(11, sizeof(UnkStruct_02098C44));

    memset(v2, 0, sizeof(UnkStruct_02098C44));

    v2->unk_00 = Party_GetFromSavedata(v0->unk_0C);
    v2->unk_04 = sub_0207D990(v0->unk_0C);
    v2->unk_08 = sub_02028430(v0->unk_0C);
    v2->unk_0C = sub_02025E44(v0->unk_0C);
    v2->unk_18 = &v1->unk_24C;
    v2->unk_21 = 0;
    v2->unk_20 = 6;
    v2->unk_1C = v0;
    v2->unk_24 = param0->unk_04;
    v2->unk_22 = param0->unk_06;
    v2->unk_26 = GetMoveFromTMOrHMItemID(param0->unk_04);

    sub_0203CD84(v0, &Unk_020F1E88, v2);
    v1->unk_25C = v2;
    sub_0203B674(v1, sub_0203B7C0);
}

static void sub_02068ACC (UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;
    UnkStruct_02097728 * v2;

    v0 = sub_02050A60(param0->unk_00);
    v1 = sub_02050A64(param0->unk_00);
    v2 = sub_0203D94C(v0, 3, sub_0207D2F0(param0->unk_04), 11);

    v1->unk_260 = sub_0203C540(param0->unk_04, 3, 0);
    v1->unk_25C = v2;

    sub_0203B674(v1, sub_0203C558);
}

static u32 sub_02068B18 (const UnkStruct_020684D0 * param0)
{
    return 0;
}

static void sub_02068B1C (UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;
    UnkStruct_02061AB4 * v2;

    v0 = sub_02050A60(param0->unk_00);
    v1 = sub_02050A64(param0->unk_00);

    if (param1->unk_10 & 0x1) {
        sub_02068540(param0, param1, 2801);
    } else {
        sub_02068630(param0, param1);
    }
}

BOOL sub_02068B50 (const UnkStruct_020684D0 * param0)
{
    if (param0->unk_10 & 0x1) {
        return 1;
    }

    return 0;
}

static void sub_02068B5C (UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;
    UnkStruct_0203D9B8 * v2;

    v0 = sub_02050A60(param0->unk_00);
    v1 = sub_02050A64(param0->unk_00);
    v2 = sub_0203D9B8(v0, 11);

    v1->unk_25C = v2;
    sub_0203B674(v1, sub_0203C710);
}

static BOOL sub_02068B8C (UnkStruct_02068870 * param0)
{
    sub_020693F8(param0, sub_02068B9C);
    return 1;
}

static void * sub_02068B9C (void * param0)
{
    return sub_0203D9B8(param0, 11);
}

static void sub_02068BA8 (UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;

    v0 = sub_02050A60(param0->unk_00);
    v1 = sub_02050A64(param0->unk_00);

    sub_0203DE78(v0, v0->unk_0C);
    v1->unk_25C = NULL;
    sub_0203B674(v1, sub_0203C750);
}

static BOOL sub_02068BDC (UnkStruct_02068870 * param0)
{
    sub_020693F8(param0, sub_02068BEC);
    return 1;
}

static void * sub_02068BEC (void * param0)
{
    sub_0203DE78(param0, ((UnkStruct_0203CDB0 *)param0)->unk_0C);
    return NULL;
}

static void sub_02068BF8 (UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;
    int * v2;

    v0 = sub_02050A60(param0->unk_00);
    v1 = sub_02050A64(param0->unk_00);
    v2 = Heap_AllocFromHeapAtEnd(11, sizeof(int));

    (*v2) = 0;
    sub_020509D4(v0);

    v1->unk_22C = sub_02069A00;
    v1->unk_25C = v2;
    v1->unk_2A = 10;
}

static BOOL sub_02068C38 (UnkStruct_02068870 * param0)
{
    int * v0 = Heap_AllocFromHeapAtEnd(11, sizeof(int));

    *v0 = 0;
    sub_02050904(param0->unk_00, sub_02069A00, v0);

    return 0;
}

static u32 sub_02068C5C (const UnkStruct_020684D0 * param0)
{
    if (param0->unk_04 == 1) {
        return 2;
    }

    if (sub_0205EB74(param0->unk_18->unk_3C) == 0x1) {
        return -1;
    }

    if (!sub_0205DAC8(param0->unk_0E)) {
        return -1;
    }

    return 0;
}

static void sub_02068C94 (UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1)
{
    sub_02068540(param0, param1, 2802);
}

static BOOL sub_02068CA4 (UnkStruct_02068870 * param0)
{
    sub_02068584(param0, 2802);
    return 0;
}

static u32 sub_02068CB4 (const UnkStruct_020684D0 * param0)
{
    if (param0->unk_04 == 1) {
        return 2;
    }

    if (param0->unk_10 & 0x4) {
        return 0;
    } else {
        return -1;
    }
}

static void sub_02068CD0 (UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1)
{
    sub_02068540(param0, param1, 2803);
}

static u32 sub_02068CE0 (const UnkStruct_020684D0 * param0)
{
    if (param0->unk_10 & 0x2) {
        return 0;
    } else {
        return -1;
    }
}

static void sub_02068CF0 (UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;
    UnkStruct_ov5_021F0468 * v2;
    int v3;

    v0 = sub_02050A60(param0->unk_00);
    v1 = sub_02050A64(param0->unk_00);

    sub_020509D4(v0);

    v3 = ov5_021F0484();
    v2 = Heap_AllocFromHeapAtEnd(11, v3);

    memset(v2, 0, v3);

    v1->unk_22C = ov5_021F0488;
    v1->unk_25C = v2;
    v1->unk_2A = 10;

    sub_0207D60C(sub_0207D990(v0->unk_0C), param0->unk_04, 1, 11);
}

static void sub_02068D48 (UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1)
{
    sub_02068540(param0, param1, 8950);
}

static BOOL sub_02068D58 (UnkStruct_02068870 * param0)
{
    sub_02068584(param0, 8950);
    return 0;
}

static u32 sub_02068D68 (const UnkStruct_020684D0 * param0)
{
    if (MapHeader_IsOnMainMatrix(param0->unk_00)) {
        return 0;
    }

    return -1;
}

static void sub_02068D80 (UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;

    v0 = sub_02050A60(param0->unk_00);
    v1 = sub_02050A64(param0->unk_00);

    sub_020509D4(v0);

    v1->unk_22C = ov5_021F08F8;
    v1->unk_25C = ov5_021F08CC(v0, 11, 0);
    v1->unk_2A = 10;
}

static BOOL sub_02068DBC (UnkStruct_02068870 * param0)
{
    void * v0 = ov5_021F08CC(param0->unk_00, 4, 0);

    sub_02050904(param0->unk_00, ov5_021F08F8, v0);
    return 0;
}

static void sub_02068DDC (UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;

    v0 = sub_02050A60(param0->unk_00);
    v1 = sub_02050A64(param0->unk_00);

    sub_020509D4(v0);

    v1->unk_22C = ov5_021F08F8;
    v1->unk_25C = ov5_021F08CC(v0, 11, 1);
    v1->unk_2A = 10;
}

static BOOL sub_02068E18 (UnkStruct_02068870 * param0)
{
    void * v0 = ov5_021F08CC(param0->unk_00, 4, 1);

    sub_02050904(param0->unk_00, ov5_021F08F8, v0);
    return 0;
}

static void sub_02068E38 (UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;

    v0 = sub_02050A60(param0->unk_00);
    v1 = sub_02050A64(param0->unk_00);

    sub_020509D4(v0);

    v1->unk_22C = ov5_021F08F8;
    v1->unk_25C = ov5_021F08CC(v0, 11, 2);
    v1->unk_2A = 10;
}

static BOOL sub_02068E74 (UnkStruct_02068870 * param0)
{
    void * v0 = ov5_021F08CC(param0->unk_00, 4, 2);

    sub_02050904(param0->unk_00, ov5_021F08F8, v0);
    return 0;
}

static u32 sub_02068E94 (const UnkStruct_020684D0 * param0)
{
    if (param0->unk_04 == 1) {
        return 2;
    }

    if ((param0->unk_00 == 573) || (param0->unk_00 == 574) || (param0->unk_00 == 575) || (param0->unk_00 == 576) || (param0->unk_00 == 577) || (param0->unk_00 == 578) || (param0->unk_00 == 579) || (param0->unk_00 == 580) || (param0->unk_00 == 581) || (param0->unk_00 == 582) || (param0->unk_00 == 583)) {
        return 3;
    }

    if (sub_0205DB58(param0->unk_0C) == 1) {
        if ((sub_0205DEFC(param0->unk_0E) == 1) || (sub_0205DEF0(param0->unk_0E) == 1)) {
            UnkStruct_02061AB4 * v0 = sub_0205EB3C(param0->unk_14);

            if (sub_02062F30(v0) == 1) {
                return -1;
            }
        }

        return 0;
    }

    return -1;
}

static BOOL sub_02068EFC (UnkStruct_02068870 * param0)
{
    UnkStruct_02068EFC * v0 = Heap_AllocFromHeap(11, sizeof(UnkStruct_02068EFC));

    v0->unk_16 = 0;
    v0->unk_10 = Strbuf_Init(128, 11);

    sub_0207CC10(param0->unk_00->unk_0C, v0->unk_10, sub_0207D3FC(sub_0207D990(param0->unk_00->unk_0C)), 11);
    sub_02050904(param0->unk_00, sub_02068F48, v0);

    return 0;
}

static BOOL sub_02068F48 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_02068EFC * v1;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);

    switch (v1->unk_16) {
    case 0:
        sub_02062C48(v0->unk_38);
        sub_0205D8F4(v0->unk_08, &v1->unk_00, 3);

        {
            const UnkStruct_020279FC * v2 = sub_02025E44(v0->unk_0C);

            sub_0205D944(&v1->unk_00, v2);
            v1->unk_14 = sub_0205D994(&v1->unk_00, v1->unk_10, v2, 1);
        }
        v1->unk_16++;
        break;
    case 1:
        if (sub_0205DA04(v1->unk_14) == 1) {
            if (Unk_021BF67C.unk_48 & (PAD_KEY_UP | PAD_KEY_DOWN | PAD_KEY_LEFT | PAD_KEY_RIGHT | PAD_BUTTON_A | PAD_BUTTON_B)) {
                sub_0200E084(&v1->unk_00, 0);
                v1->unk_16++;
            }
        }
        break;
    case 2:
        sub_02062C78(v0->unk_38);
        sub_0201A8FC(&v1->unk_00);
        Strbuf_Free(v1->unk_10);
        Heap_FreeToHeap(v1);

        return 1;
    }

    return 0;
}

static void sub_02068FEC (UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;
    UnkStruct_02098C44 * v2;

    v0 = sub_02050A60(param0->unk_00);
    v1 = sub_02050A64(param0->unk_00);
    v2 = Heap_AllocFromHeap(11, sizeof(UnkStruct_02098C44));

    memset(v2, 0, sizeof(UnkStruct_02098C44));

    v2->unk_00 = Party_GetFromSavedata(v0->unk_0C);
    v2->unk_04 = sub_0207D990(v0->unk_0C);
    v2->unk_08 = sub_02028430(v0->unk_0C);
    v2->unk_0C = sub_02025E44(v0->unk_0C);
    v2->unk_10 = sub_0202440C(v0->unk_0C);
    v2->unk_18 = &v1->unk_24C;
    v2->unk_21 = 0;
    v2->unk_20 = 16;
    v2->unk_24 = param0->unk_04;
    v2->unk_22 = param0->unk_06;

    sub_0203CD84(v0, &Unk_020F1E88, v2);
    v1->unk_25C = v2;
    sub_0203B674(v1, sub_0203B7C0);
}

static void sub_02069080 (UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;

    v0 = sub_02050A60(param0->unk_00);
    v1 = sub_02050A64(param0->unk_00);

    sub_020509D4(v0);

    v1->unk_22C = sub_020690F0;
    v1->unk_25C = NULL;
    v1->unk_2A = 10;

    sub_0207D60C(sub_0207D990(v0->unk_0C), param0->unk_04, 1, 11);
}

static u32 sub_020690C4 (const UnkStruct_020684D0 * param0)
{
    if (param0->unk_04 == 1) {
        return 2;
    }

    if ((MapHeader_IsCave(param0->unk_00) == 1) && (MapHeader_IsEscapeRopeAllowed(param0->unk_00) == 1)) {
        return 0;
    }

    return -1;
}

static BOOL sub_020690F0 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    void * v1 = ov6_02247100(v0, 11);

    sub_02050924(param0, ov6_02247120, v1);
    return 0;
}

static void sub_02069110 (UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1)
{
    sub_02068540(param0, param1, 2039);
}

static BOOL sub_02069120 (UnkStruct_02068870 * param0)
{
    sub_02068584(param0, 2039);
    return 0;
}

static u32 sub_02069130 (const UnkStruct_020684D0 * param0)
{
    UnkStruct_020507E4 * v0 = sub_020507E4(param0->unk_18->unk_0C);

    if (sub_0206A954(v0) == 0) {
        return -1;
    }

    if (sub_0206B16C(v0, 2) == 0) {
        return -1;
    }

    if (sub_02027474(sub_02027560(param0->unk_18->unk_0C)) == 0) {
        return -1;
    }

    if (!MapHeader_IsAzureFluteAllowed(param0->unk_00)) {
        return -1;
    }

    return 0;
}

static void sub_02069188 (UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;

    v0 = sub_02050A60(param0->unk_00);
    v1 = sub_02050A64(param0->unk_00);

    sub_0203DE88(v0, v0->unk_0C);
    v1->unk_25C = NULL;
    sub_0203B674(v1, sub_0203C784);
}

static BOOL sub_020691BC (UnkStruct_02068870 * param0)
{
    sub_020693F8(param0, sub_020691CC);
    return 1;
}

static void * sub_020691CC (void * param0)
{
    ov5_021E2064(param0);
    sub_0203DE88(param0, ((UnkStruct_0203CDB0 *)param0)->unk_0C);

    return NULL;
}

static void sub_020691E0 (UnkStruct_02068630 * param0, const UnkStruct_020684D0 * param1)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_020708E0 * v1;
    UnkStruct_02098C44 * v2;

    v0 = sub_02050A60(param0->unk_00);
    v1 = sub_02050A64(param0->unk_00);

    v1->unk_25C = sub_0203E598(v0, 11, 466);

    sub_0203B674(v1, sub_0203B7C0);
}

static BOOL sub_02069218 (UnkStruct_02068870 * param0)
{
    sub_020693F8(param0, sub_02069228);
    return 1;
}

static void * sub_02069228 (void * param0)
{
    return sub_0203E598(param0, 11, 466);
}

BOOL sub_02069238 (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_02068870 * v0;
    UnkFuncPtr_020EF79C v1;
    UnkFuncPtr_02069238 v2;
    u16 v3;
    u16 v4;
    BOOL v5;

    if (sub_0206C0D0(param0) == 1) {
        return 0;
    }

    if (sub_0206AE8C(sub_020507E4(param0->unk_0C)) == 1) {
        return 0;
    }

    v3 = (u16)sub_0207D3FC(sub_0207D990(param0->unk_0C));
    v4 = (u16)Item_GetAttribute(v3, 6, 11);
    v2 = (UnkFuncPtr_02069238)sub_020683F4(2, v4);
    v1 = (UnkFuncPtr_020EF79C)sub_020683F4(1, v4);

    if (v1 == NULL) {
        return 0;
    }

    v0 = Heap_AllocFromHeap(11, sizeof(UnkStruct_02068870));
    memset(v0, 0, sizeof(UnkStruct_02068870));

    v0->unk_00 = param0;
    v0->unk_28 = v3;

    sub_0206842C(param0, &v0->unk_04);

    v5 = 0;

    if (v2 == NULL) {
        v5 = v1(v0);
    } else {
        u32 v6 = v2(&v0->unk_04);

        if (v6 == 0) {
            v5 = v1(v0);
        } else {
            sub_020692E4(v0, v6);
        }
    }

    if (v5 == 0) {
        Heap_FreeToHeap(v0);
    }

    return 1;
}

static void sub_020692E4 (UnkStruct_02068870 * param0, u32 param1)
{
    UnkStruct_02068EFC * v0 = Heap_AllocFromHeap(11, sizeof(UnkStruct_02068EFC));

    v0->unk_16 = 0;
    v0->unk_10 = Strbuf_Init(128, 11);

    sub_0207CD34(sub_02025E38(param0->unk_00->unk_0C), v0->unk_10, param0->unk_28, param1, 11);
    sub_02050904(param0->unk_00, sub_02068F48, v0);
}

static BOOL sub_0206932C (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0;
    UnkStruct_02068870 * v1;

    v0 = sub_02050A60(param0);
    v1 = sub_02050A64(param0);

    switch (v1->unk_2A) {
    case 0:
        sub_02062C48(v0->unk_38);
        ov5_021D1744(0);
        v1->unk_2A = 1;
        break;
    case 1:
        if (sub_0200F2AC()) {
            v1->unk_24 = v1->unk_20(v0);
            v1->unk_2A = 2;
        }
        break;
    case 2:
        if (sub_020509B4(v0)) {
            break;
        }

        if (v1->unk_24 != NULL) {
            if (v1->unk_20 == sub_02068B9C) {
                sub_02098AF0(v1->unk_24);
            } else {
                Heap_FreeToHeap(v1->unk_24);
            }
        }

        sub_020509D4(v0);
        v1->unk_2A = 3;
        break;
    case 3:
        if (sub_020509DC(v0)) {
            sub_02062C48(v0->unk_38);
            ov5_021D1744(1);
            v1->unk_2A = 4;
        }
        break;
    case 4:
        if (sub_0200F2AC()) {
            sub_02062C78(v0->unk_38);
            Heap_FreeToHeap(v1);
            return 1;
        }
        break;
    }

    return 0;
}

static void sub_020693F8 (UnkStruct_02068870 * param0, UnkFuncPtr_02068870 param1)
{
    param0->unk_20 = param1;
    sub_02050904(param0->unk_00, sub_0206932C, param0);
}
