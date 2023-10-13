#include "enums.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/sys_task.h"
#include "struct_decls/struct_02020C44_decl.h"
#include "struct_decls/struct_020216E0_decl.h"
#include "struct_decls/struct_0202298C_decl.h"
#include "struct_decls/struct_02022BD8_2_decl.h"
#include "struct_decls/struct_02022BD8_decl.h"
#include "struct_decls/struct_02061830_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "overlay005/struct_ov5_021F06D8_decl.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"

#include "overlay005/const_ov5_021FD77C.h"
#include "overlay005/const_ov5_021FAF50.h"
#include "overlay005/const_ov5_021FB5BC.h"
#include "overlay005/const_ov5_021FB484.h"
#include "overlay005/const_ov5_021FAF48.h"
#include "overlay005/const_ov5_021FC9B4.h"
#include "overlay005/const_ov5_021FAF40.h"

#include "struct_defs/struct_020217F4.h"
#include "struct_defs/struct_02024184.h"
#include "overlay005/struct_ov5_021DF7F8.h"
#include "overlay005/struct_ov5_021DF84C.h"
#include "overlay005/struct_ov5_021ECD10.h"
#include "overlay005/struct_ov5_021ED01C.h"
#include "overlay005/struct_ov5_021ED0A4.h"
#include "overlay005/struct_ov5_021ED110.h"
#include "overlay005/struct_ov5_021ED2D0.h"
#include "overlay005/struct_ov5_021EDD04.h"
#include "overlay005/struct_ov5_021EDDAC.h"
#include "overlay005/struct_ov5_021EDF3C.h"
#include "overlay005/struct_ov5_021EDFBC.h"
#include "overlay005/struct_ov5_021EE134.h"
#include "overlay005/struct_ov5_021EE294.h"
#include "overlay005/funcptr_ov5_021EE454.h"

#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_02020AEC.h"
#include "unk_0202298C.h"
#include "unk_0202414C.h"
#include "unk_0205DAC8.h"
#include "unk_02061804.h"
#include "unk_02063400.h"
#include "unk_020677F4.h"
#include "unk_020711EC.h"
#include "overlay005/ov5_021D521C.h"
#include "overlay005/ov5_021DF440.h"
#include "overlay005/ov5_021EB1A0.h"
#include "overlay005/ov5_021ECC20.h"
#include "overlay005/ov5_021ECE40.h"
#include "overlay005/ov5_021F067C.h"
#include "overlay005/ov5_021F17B8.h"

typedef enum {
    UnkEnum_ov5_021ED334_00 = 0,
    UnkEnum_ov5_021ED334_01,
    UnkEnum_ov5_021ED334_02,
} UnkEnum_ov5_021ED334;

typedef struct {
    int unk_00;
    s16 unk_04;
    void * unk_08;
    void * unk_0C;
    void * unk_10;
    UnkStruct_02024184 unk_14;
    UnkStruct_020216E0 * unk_24;
    UnkStruct_ov5_021DF84C unk_28;
    UnkStruct_02061AB4 * unk_50;
    UnkStruct_ov101_021D5D90 * unk_54;
    void * unk_58;
    UnkFuncPtr_ov5_021EE454 unk_5C;
} UnkStruct_ov5_021EE698;

static void ov5_021ED094(const UnkStruct_02061AB4 * param0);
static void ov5_021ED0A4(UnkStruct_ov5_021ED0A4 * param0, int param1);
static void ov5_021ED0F0(UnkStruct_ov5_021ED0A4 * param0);
static UnkStruct_ov5_021DF84C * ov5_021ED110(UnkStruct_ov5_021ED0A4 * param0, u32 param1);
static void ov5_021ED184(UnkStruct_ov5_021ED0A4 * param0, u32 param1);
static void ov5_021ED1A4(UnkStruct_ov5_021ED0A4 * param0);
static int ov5_021ED1C8(const UnkStruct_02061830 * param0, const UnkStruct_02061AB4 * param1, int param2);
static void ov5_021ED224(UnkStruct_ov5_021ED0A4 * param0, int param1, int param2, int param3, int param4, int param5, int param6);
static void ov5_021ED2AC(UnkStruct_ov5_021ED0A4 * param0);
static const UnkStruct_ov5_021ED2D0 * ov5_021ED2D0(int param0, int param1, const UnkStruct_ov5_021ED2D0 * param2);
static int ov5_021ED2E8(UnkStruct_ov5_021ED0A4 * param0, UnkStruct_ov5_021F06D8 * param1, int param2, int param3, const UnkStruct_ov5_021ED2D0 * param4);
static UnkEnum_ov5_021ED334 ov5_021ED334(UnkStruct_ov5_021ED0A4 * param0, int param1, int param2, const UnkStruct_ov5_021ED2D0 * param3);
static UnkEnum_ov5_021ED334 ov5_021ED390(UnkStruct_ov5_021ED0A4 * param0, int param1);
static UnkEnum_ov5_021ED334 ov5_021ED3A4(UnkStruct_ov5_021ED0A4 * param0, int param1);
static void ov5_021ED3B8(UnkStruct_ov5_021ED0A4 * param0, const int * param1);
static void ov5_021ED3DC(UnkStruct_ov5_021ED0A4 * param0, int param1);
static void ov5_021ED40C(UnkStruct_ov5_021ED0A4 * param0, int param1);
static void ov5_021ED43C(UnkStruct_ov5_021ED0A4 * param0, const int * param1);
static void ov5_021ED460(UnkStruct_ov5_021ED0A4 * param0, int param1);
static void ov5_021ED490(UnkStruct_ov5_021ED0A4 * param0, int param1);
static void ov5_021ED4C0(UnkStruct_ov5_021ED0A4 * param0, const int * param1);
static void ov5_021ED4E4(UnkStruct_ov5_021ED0A4 * param0, const int * param1, const int * param2, const int * param3);
static void ov5_021ED504(int * param0, int param1, int param2);
static int ov5_021ED50C(int * param0, int param1, int param2, int param3);
static int ov5_021ED528(int * param0, int param1, int param2);
static int ov5_021ED53C(int * param0, int param1, int param2, int param3);
static void ov5_021ED558(UnkStruct_ov5_021ED0A4 * param0);
static void ov5_021ED56C(UnkStruct_ov5_021ED0A4 * param0, int param1);
static int ov5_021ED598(UnkStruct_ov5_021ED0A4 * param0, int param1);
static void ov5_021ED5B4(UnkStruct_ov5_021ED0A4 * param0, int param1);
static int ov5_021ED5E8(UnkStruct_ov5_021ED0A4 * param0, int param1);
static void ov5_021ED610(UnkStruct_ov5_021ED0A4 * param0, int param1);
static void ov5_021ED63C(UnkStruct_02061830 * param0, UnkStruct_ov5_021ED0A4 * param1);
static void ov5_021ED694(UnkStruct_ov5_021ED0A4 * param0);
static void ov5_021ED6A8(UnkStruct_ov5_021ED0A4 * param0, int param1);
static int ov5_021ED6D4(UnkStruct_ov5_021ED0A4 * param0, int param1);
static void ov5_021ED6F0(UnkStruct_ov5_021ED0A4 * param0, int param1);
static void ov5_021ED74C(UnkStruct_ov5_021ED0A4 * param0, int param1);
static void ov5_021ED778(UnkStruct_02061830 * param0, UnkStruct_ov5_021ED0A4 * param1);
static void ov5_021ED7D0(UnkStruct_ov5_021ED0A4 * param0);
static void ov5_021ED7E4(UnkStruct_ov5_021ED0A4 * param0, int param1);
static int ov5_021ED810(UnkStruct_ov5_021ED0A4 * param0, int param1);
static int ov5_021ED82C(UnkStruct_ov5_021ED0A4 * param0, int param1);
static void ov5_021ED858(UnkStruct_ov5_021ED0A4 * param0, int param1);
static void ov5_021ED88C(UnkStruct_ov5_021ED0A4 * param0, int param1);
static void ov5_021ED8B8(UnkStruct_02061830 * param0, UnkStruct_ov5_021ED0A4 * param1);
static int ov5_021ED924(UnkStruct_ov5_021ED0A4 * param0, int param1);
static int ov5_021ED94C(UnkStruct_ov5_021ED0A4 * param0, int param1);
static int ov5_021ED974(UnkStruct_ov5_021ED0A4 * param0, int param1);
static int ov5_021ED99C(UnkStruct_ov5_021ED0A4 * param0, int param1);
static void ov5_021ED9C4(UnkStruct_ov5_021ED0A4 * param0, int param1);
static void ov5_021ED9DC(UnkStruct_ov5_021ED0A4 * param0, int param1);
static void ov5_021ED9F4(UnkStruct_ov5_021ED0A4 * param0, int param1);
static void ov5_021EDA0C(UnkStruct_ov5_021ED0A4 * param0, int param1);
static int ov5_021EDA54(const UnkStruct_02061830 * param0, int param1, const UnkStruct_02061AB4 * param2);
static int ov5_021EDAB4(const UnkStruct_02061830 * param0, int param1, const UnkStruct_02061AB4 * param2);
static int ov5_021EDB3C(const UnkStruct_02061830 * param0, int param1, const UnkStruct_02061AB4 * param2);
static int * ov5_021EDCB8(UnkStruct_ov5_021ED0A4 * param0);
static int * ov5_021EDCBC(UnkStruct_ov5_021ED0A4 * param0);
static int * ov5_021EDCC0(UnkStruct_ov5_021ED0A4 * param0);
static void ov5_021EDCC4(UnkStruct_ov5_021ED0A4 * param0, int param1);
static int ov5_021EDCC8(const UnkStruct_ov5_021ED0A4 * param0);
static void ov5_021EDCCC(UnkStruct_ov5_021ED0A4 * param0, int param1);
static int ov5_021EDCD0(const UnkStruct_ov5_021ED0A4 * param0);
static void ov5_021EDCD4(UnkStruct_ov5_021ED0A4 * param0, int param1);
static int ov5_021EDCD8(const UnkStruct_ov5_021ED0A4 * param0);
static void ov5_021EDCDC(UnkStruct_ov5_021ED0A4 * param0, int param1);
static int ov5_021EDCE0(const UnkStruct_ov5_021ED0A4 * param0);
static void ov5_021EDCE4(UnkStruct_ov5_021ED0A4 * param0, int param1);
static int ov5_021EDCE8(const UnkStruct_ov5_021ED0A4 * param0);
static void ov5_021EDCEC(UnkStruct_ov5_021ED0A4 * param0, int param1);
static int ov5_021EDCF0(const UnkStruct_ov5_021ED0A4 * param0);
static void * ov5_021EDCF4(UnkStruct_ov5_021ED0A4 * param0, u32 param1, int param2);
static const UnkStruct_ov5_021EDD04 * ov5_021EDD04(int param0);
static int ov5_021EDD2C(int param0);
static int ov5_021EDD38(int param0);
static const UnkStruct_020217F4 * ov5_021EDD44(int param0);
static u32 ov5_021EDD50(int param0);
static void ov5_021EDDAC(UnkStruct_ov5_021ED0A4 * param0, int param1);
static void ov5_021EDDD4(UnkStruct_02020C44 * param0);
static UnkStruct_020216E0 * ov5_021EDDDC(UnkStruct_02020C44 * param0, const UnkStruct_ov5_021DF84C * param1, const VecFx32 * param2, u32 param3);
static void ov5_021EDE3C(UnkStruct_ov5_021ED0A4 * param0, u32 param1, UnkStruct_ov5_021DF84C * param2);
static UnkStruct_ov5_021ED0A4 * ov5_021EDEA8(const UnkStruct_02061AB4 * param0);
static int ov5_021EDF3C(UnkStruct_ov5_021ED0A4 * param0, int param1, u32 param2, int param3);
static void ov5_021EDFBC(UnkStruct_ov5_021ED0A4 * param0, int param1);
static int ov5_021EDFF0(UnkStruct_ov5_021ED0A4 * param0, int param1);
static void ov5_021EE030(SysTask * param0, void * param1);
static void ov5_021EE0E8(UnkStruct_ov5_021ED0A4 * param0, int param1, void * param2, int param3);
static void ov5_021EE134(UnkStruct_ov5_021ED0A4 * param0, int param1);
static void ov5_021EE170(UnkStruct_ov5_021ED0A4 * param0, int param1);
static void ov5_021EE1AC(SysTask * param0, void * param1);
static void ov5_021EE1E8(SysTask * param0, void * param1);
static void ov5_021EE228(UnkStruct_ov5_021ED0A4 * param0, UnkStruct_02061AB4 * param1, UnkStruct_020216E0 ** param2, int param3);
static void ov5_021EE264(UnkStruct_ov5_021ED0A4 * param0, const UnkStruct_02061AB4 * param1);
static void ov5_021EE2C4(SysTask * param0, void * param1);
static void ov5_021EE294(UnkStruct_ov5_021ED0A4 * param0);
static void ov5_021EE2D0(UnkStruct_ov5_021ED0A4 * param0, UnkStruct_ov5_021EE294 * param1);
static void ov5_021EE320(UnkStruct_ov5_021ED0A4 * param0, int param1, int param2);
static void ov5_021EE3C4(UnkStruct_ov5_021ED0A4 * param0);
static UnkStruct_020216E0 * ov5_021EE454(UnkStruct_02061AB4 * param0, int param1, UnkFuncPtr_ov5_021EE454 param2, void * param3);
static void ov5_021EE698(SysTask * param0, void * param1);

void ov5_021ECE40 (UnkStruct_ov5_021ED0A4 * param0, const UnkStruct_02061830 * param1, int param2, int param3, int param4, int param5, const int * param6, int param7)
{
    param0->unk_104 = param1;

    ov5_021EDDAC(param0, param2);
    ov5_021EE320(param0, param2, param7);
    ov5_021ED224(param0, 8, 4, 8, 4, param4, param5);
    ov5_021ED0A4(param0, param2);
    ov5_021ED4E4(param0, param6, Unk_ov5_021FAF50, Unk_ov5_021FAF48);
}

void ov5_021ECE94 (UnkStruct_ov5_021ED0A4 * param0)
{
    ov5_021EE3C4(param0);
    ov5_021ED0F0(param0);
    ov5_021EDDD4(ov5_021EDC8C(param0));
    ov5_021ED2AC(param0);
}

int ov5_021ECEB4 (UnkStruct_02061AB4 * param0, UnkStruct_020216E0 ** param1, int param2)
{
    int v0;
    UnkStruct_ov5_021ED0A4 * v1;

    *param1 = NULL;

    v1 = ov5_021EDEA8(param0);
    v0 = ov5_021ED82C(v1, param2);

    if (v0 == 0) {
        ov5_021ED060(param0, param1, param2);
        return v0;
    }

    if ((v0 == 3) || (v0 == 4)) {
        ov5_021EE228(v1, param0, param1, param2);
        return v0;
    }

    *param1 = ov5_021ECF1C(param0, param2);
    return v0;
}

int ov5_021ECF04 (UnkStruct_02061AB4 * param0, UnkStruct_020216E0 ** param1)
{
    int v0 = sub_02062920(param0);
    int v1 = ov5_021ECEB4(param0, param1, v0);

    return v1;
}

UnkStruct_020216E0 * ov5_021ECF1C (UnkStruct_02061AB4 * param0, int param1)
{
    VecFx32 v0;
    UnkStruct_02020C44 * v1;
    UnkStruct_020216E0 * v2;
    UnkStruct_ov5_021DF84C * v3;
    UnkStruct_ov5_021ED0A4 * v4;

    v4 = ov5_021EDEA8(param0);
    v1 = ov5_021EDC8C(v4);

    ov5_021EDA0C(v4, param1);
    v3 = ov5_021ED110(v4, param1);

    GF_ASSERT(v3 != NULL);

    ov5_021ECDA0(param0, &v0);
    v2 = ov5_021EDDDC(v1, v3, &v0, ov5_021EDD50(param1));

    GF_ASSERT(v2 != NULL);

    return v2;
}

void ov5_021ECF70 (const UnkStruct_02061AB4 * param0, UnkStruct_020216E0 ** param1, int param2)
{
    int v0;

    sub_020211FC(*param1);
    *param1 = NULL;

    v0 = ov5_021ED1C8(sub_02062A40(param0), param0, param2);

    if (v0 == 0) {
        ov5_021ED184(ov5_021EDEA8(param0), param2);
    }
}

void ov5_021ECFA4 (const UnkStruct_02061AB4 * param0, UnkStruct_020216E0 ** param1)
{
    ov5_021ED094(param0);

    if ((*param1) != NULL) {
        int v0 = sub_02062920(param0);

        if (sub_020677F4(v0) == 1) {
            v0 = sub_02067800(param0);
        }

        ov5_021ECF70(param0, param1, v0);
    }
}

void ov5_021ECFD8 (const UnkStruct_02061AB4 * param0, UnkStruct_020216E0 ** param1, int param2)
{
    int v0;

    ov5_021ED094(param0);

    if ((*param1) != NULL) {
        sub_020211FC(*param1);
        *param1 = NULL;
    }

    if (param2 != 0xffff) {
        v0 = ov5_021ED1C8(sub_02062A40(param0), param0, param2);

        if (v0 == 0) {
            ov5_021ED184(ov5_021EDEA8(param0), param2);
        }
    }
}

void ov5_021ED01C (UnkStruct_020216E0 * param0, UnkStruct_ov5_021ED01C * param1)
{
    param1->unk_00 = sub_02021334(param0);
    param1->unk_02 = sub_02021358(param0);
    param1->unk_04 = sub_02021394(param0);
}

void ov5_021ED03C (UnkStruct_020216E0 * param0, UnkStruct_ov5_021ED01C * param1)
{
    sub_02021320(param0, param1->unk_00);
    sub_02021344(param0, param1->unk_02);
    sub_02021380(param0, param1->unk_04);
}

void ov5_021ED060 (UnkStruct_02061AB4 * param0, UnkStruct_020216E0 ** param1, int param2)
{
    UnkStruct_ov5_021ED0A4 * v0 = ov5_021EDEA8(param0);

    if (ov5_021ED3A4(v0, param2) == UnkEnum_ov5_021ED334_00) {
        *param1 = ov5_021ECF1C(param0, param2);
    } else {
        ov5_021EE228(v0, param0, param1, param2);
    }
}

static void ov5_021ED094 (const UnkStruct_02061AB4 * param0)
{
    UnkStruct_ov5_021ED0A4 * v0 = ov5_021EDEA8(param0);

    ov5_021EE264(v0, param0);
}

static void ov5_021ED0A4 (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    int v0, v1;
    UnkStruct_ov5_021DF84C * v2;
    UnkStruct_ov5_021ED110 * v3;

    v0 = sizeof(UnkStruct_ov5_021DF84C) * param1;
    v2 = Heap_AllocFromHeap(4, v0);

    param0->unk_E4 = v2;
    GF_ASSERT(v2 != NULL);

    v0 = (sizeof(UnkStruct_ov5_021ED110)) * param1;
    v3 = Heap_AllocFromHeap(4, v0);

    param0->unk_F4 = v3;
    GF_ASSERT(v3 != NULL);

    v1 = sizeof(UnkStruct_ov5_021DF84C);

    do {
        v3->unk_00 = 0xffff;
        v3->unk_04 = v2;
        v3++;
        (u8 *)v2 += v1;
        param1--;
    } while (param1);
}

static void ov5_021ED0F0 (UnkStruct_ov5_021ED0A4 * param0)
{
    ov5_021ED1A4(param0);

    Heap_FreeToHeapExplicit(4, param0->unk_E4);
    Heap_FreeToHeapExplicit(4, param0->unk_F4);
}

static UnkStruct_ov5_021DF84C * ov5_021ED110 (UnkStruct_ov5_021ED0A4 * param0, u32 param1)
{
    int v0;
    UnkStruct_ov5_021ED110 * v1;

    v1 = param0->unk_F4;
    v0 = param0->unk_04;

    do {
        if (v1->unk_00 == param1) {
            return v1->unk_04;
        }

        v1++;
        v0--;
    } while (v0);

    v1 = param0->unk_F4;
    v0 = param0->unk_04;

    do {
        if (v1->unk_00 == 0xffff) {
            v1->unk_00 = param1;
            ov5_021EDE3C(param0, param1, v1->unk_04);
            return v1->unk_04;
        }

        v1++;
        v0--;
    } while (v0);

    return NULL;
}

int ov5_021ED150 (const UnkStruct_02061830 * param0, u32 param1, UnkStruct_ov5_021DF84C * param2)
{
    int v0;
    const UnkStruct_ov5_021ED0A4 * v1;
    UnkStruct_ov5_021ED110 * v2;

    v1 = sub_0206285C(param0);
    v2 = v1->unk_F4;
    v0 = v1->unk_04;

    do {
        if (v2->unk_00 == param1) {
            *param2 = *(v2->unk_04);
            return 1;
        }

        v2++;
        v0--;
    } while (v0);

    return 0;
}

static void ov5_021ED184 (UnkStruct_ov5_021ED0A4 * param0, u32 param1)
{
    int v0;
    UnkStruct_ov5_021ED110 * v1;

    v1 = param0->unk_F4;
    v0 = param0->unk_04;

    do {
        if (v1->unk_00 == param1) {
            v1->unk_00 = 0xffff;

            return;
        }

        v1++;
        v0--;
    } while (v0);
}

static void ov5_021ED1A4 (UnkStruct_ov5_021ED0A4 * param0)
{
    int v0;
    UnkStruct_ov5_021ED110 * v1;

    v1 = param0->unk_F4;
    v0 = param0->unk_04;

    do {
        if (v1->unk_00 != 0xffff) {
            v1->unk_00 = 0xffff;
        }

        v1++;
        v0--;
    } while (v0);
}

static int ov5_021ED1C8 (const UnkStruct_02061830 * param0, const UnkStruct_02061AB4 * param1, int param2)
{
    int v0, v1;
    const UnkStruct_02061AB4 * v2;

    v0 = sub_02062824(param0);
    v2 = sub_02062868(param0);

    do {
        if (v2 != param1) {
            if (sub_02062CF8(v2) == 1) {
                v1 = sub_02062920(v2);

                if (sub_020677F4(v1) == 1) {
                    v1 = sub_02067800(v2);
                }

                if ((v1 != 0xffff) && (v1 == param2)) {
                    return 1;
                }
            }
        }

        sub_02062880(&v2);
        v0--;
    } while (v0);

    return 0;
}

static void ov5_021ED224 (UnkStruct_ov5_021ED0A4 * param0, int param1, int param2, int param3, int param4, int param5, int param6)
{
    {
        param0->unk_F8 = ov5_021F067C(4, 64, 0x1000 * param1, param1);
        ov5_021ED558(param0);
        ov5_021EDCC4(param0, param2);
        ov5_021EDCCC(param0, param1 - param2);
    }

    {
        param0->unk_FC = ov5_021F067C(4, 65, 0x80 * param3, param3);
        ov5_021ED694(param0);
        ov5_021EDCD4(param0, param4);
        ov5_021EDCDC(param0, param3 - param4);
    }

    {
        UnkStruct_02022BD8 * v0;

        v0 = sub_02022BD8(param5, 4);

        ov5_021EDCA8(param0, v0);
        ov5_021ED7D0(param0);
        ov5_021EDCE4(param0, param6);
        ov5_021EDCEC(param0, param5 - param6);
    }
}

static void ov5_021ED2AC (UnkStruct_ov5_021ED0A4 * param0)
{
    ov5_021F06D8(param0->unk_F8);
    ov5_021F06D8(param0->unk_FC);
    sub_02022C1C(ov5_021EDCB0(param0));
}

static const UnkStruct_ov5_021ED2D0 * ov5_021ED2D0 (int param0, int param1, const UnkStruct_ov5_021ED2D0 * param2)
{
    do {
        if (param2->unk_00 == param0) {
            return param2;
        }

        param2++;
    } while (param2->unk_00 != param1);

    return NULL;
}

static int ov5_021ED2E8 (UnkStruct_ov5_021ED0A4 * param0, UnkStruct_ov5_021F06D8 * param1, int param2, int param3, const UnkStruct_ov5_021ED2D0 * param4)
{
    const UnkStruct_ov5_021ED2D0 * v0;

    if (ov5_021F0770(param1, param2) == 1) {
        return 0;
    }

    v0 = ov5_021ED2D0(param2, param3, param4);
    GF_ASSERT(v0 != NULL);

    {
        NARC * v1 = sub_020628A0(param0->unk_104);
        ov5_021F0784(param1, param2, v1, v0->unk_04, 0);
    }

    return 1;
}

static UnkEnum_ov5_021ED334 ov5_021ED334 (UnkStruct_ov5_021ED0A4 * param0, int param1, int param2, const UnkStruct_ov5_021ED2D0 * param3)
{
    UnkStruct_02022BD8 * v0 = param0->unk_F0;

    if (sub_02022C40(v0, param2) == 0) {
        return UnkEnum_ov5_021ED334_00;
    }

    if (ov5_021EDFF0(param0, param2) != 0) {
        return UnkEnum_ov5_021ED334_01;
    }

    {
        UnkStruct_02022BD8_2 * v1;
        const UnkStruct_ov5_021ED2D0 * v2 = ov5_021ED2D0(param2, 0xffff, param3);

        if (v2 == NULL) {
            return UnkEnum_ov5_021ED334_02;
        }

        if (ov5_021EDF3C(param0, param2, v2->unk_04, param1) == 1) {
            return UnkEnum_ov5_021ED334_00;
        }

        return UnkEnum_ov5_021ED334_01;
    }
}

static UnkEnum_ov5_021ED334 ov5_021ED390 (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    return ov5_021ED334(param0, 0, param1, Unk_ov5_021FC9B4);
}

static UnkEnum_ov5_021ED334 ov5_021ED3A4 (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    return ov5_021ED334(param0, 1, param1, Unk_ov5_021FC9B4);
}

static void ov5_021ED3B8 (UnkStruct_ov5_021ED0A4 * param0, const int * param1)
{
    while ((*param1) != 0xffff) {
        ov5_021ED390(param0, (*param1));
        param1++;
    }
}

static void ov5_021ED3DC (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    UnkStruct_0202298C * v0;

    v0 = ov5_021EDC98(param0);

    ov5_021ED2E8(param0, param0->unk_F8, param1, 0xffff, Unk_ov5_021FB484);
    ov5_021ED56C(param0, param1);
}

static void ov5_021ED40C (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    UnkStruct_0202298C * v0;

    v0 = ov5_021EDC98(param0);

    ov5_021ED2E8(param0, param0->unk_F8, param1, 0xffff, Unk_ov5_021FB484);
    ov5_021ED5B4(param0, param1);
}

static void ov5_021ED43C (UnkStruct_ov5_021ED0A4 * param0, const int * param1)
{
    while ((*param1) != 0xffff) {
        ov5_021ED3DC(param0, (*param1));
        param1++;
    }
}

static void ov5_021ED460 (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    UnkStruct_0202298C * v0;

    v0 = ov5_021EDCA0(param0);

    ov5_021ED2E8(param0, param0->unk_FC, param1, 0xffff, Unk_ov5_021FB5BC);
    ov5_021ED6A8(param0, param1);
}

static void ov5_021ED490 (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    UnkStruct_0202298C * v0;

    v0 = ov5_021EDCA0(param0);

    ov5_021ED2E8(param0, param0->unk_FC, param1, 0xffff, Unk_ov5_021FB5BC);
    ov5_021ED6F0(param0, param1);
}

static void ov5_021ED4C0 (UnkStruct_ov5_021ED0A4 * param0, const int * param1)
{
    while ((*param1) != 0xffff) {
        ov5_021ED460(param0, (*param1));
        param1++;
    }
}

static void ov5_021ED4E4 (UnkStruct_ov5_021ED0A4 * param0, const int * param1, const int * param2, const int * param3)
{
    ov5_021ED3B8(param0, param1);
    ov5_021ED43C(param0, param2);
    ov5_021ED4C0(param0, param3);
}

static void ov5_021ED504 (int * param0, int param1, int param2)
{
    do {
        *param0 = param1;
        param0++;
        param2--;
    } while (param2);
}

static int ov5_021ED50C (int * param0, int param1, int param2, int param3)
{
    do {
        if ((*param0) == param2) {
            *param0 = param1;
            return 1;
        }

        param0++;
        param3--;
    } while (param3);

    return 0;
}

static int ov5_021ED528 (int * param0, int param1, int param2)
{
    do {
        if ((*param0) == param1) {
            return 1;
        }

        param0++;
        param2--;
    } while (param2);

    return 0;
}

static int ov5_021ED53C (int * param0, int param1, int param2, int param3)
{
    do {
        if ((*param0) == param1) {
            *param0 = param2;
            return 1;
        }

        param0++;
        param3--;
    } while (param3);

    return 0;
}

static void ov5_021ED558 (UnkStruct_ov5_021ED0A4 * param0)
{
    int * v0;

    v0 = ov5_021EDCBC(param0);
    ov5_021ED504(v0, 0xffff, 8);
}

static void ov5_021ED56C (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    int v0, v1;
    int * v2;

    v0 = ov5_021EDCC8(param0);
    v2 = ov5_021EDCBC(param0);

    v1 = ov5_021ED50C(v2, param1, 0xffff, v0);
    GF_ASSERT(v1 != 0);
}

static int ov5_021ED598 (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    int v0;
    int * v1;

    v0 = ov5_021EDCC8(param0);
    v1 = ov5_021EDCBC(param0);

    return ov5_021ED528(v1, param1, v0);
}

static void ov5_021ED5B4 (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    int v0, v1;
    int * v2;

    v2 = ov5_021EDCBC(param0);
    v2 = &v2[ov5_021EDCC8(param0)];
    v1 = ov5_021EDCD0(param0);
    v0 = ov5_021ED50C(v2, param1, 0xffff, v1);

    GF_ASSERT(v0 != 0);
}

static int ov5_021ED5E8 (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    int v0;
    int * v1;

    v1 = ov5_021EDCBC(param0);
    v1 = &v1[ov5_021EDCC8(param0)];
    v0 = ov5_021EDCD0(param0);

    return ov5_021ED528(v1, param1, v0);
}

static void ov5_021ED610 (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    int v0;
    int * v1;

    v1 = ov5_021EDCBC(param0);
    v1 = &v1[ov5_021EDCC8(param0)];
    v0 = ov5_021EDCD0(param0);

    ov5_021ED53C(v1, param1, 0xffff, v0);
}

static void ov5_021ED63C (UnkStruct_02061830 * param0, UnkStruct_ov5_021ED0A4 * param1)
{
    int v0;
    int * v1;
    UnkStruct_0202298C * v2;

    v2 = ov5_021EDC98(param1);
    v1 = ov5_021EDCBC(param1);
    v1 = &v1[ov5_021EDCC8(param1)];
    v0 = ov5_021EDCD0(param1);

    do {
        if ((*v1) != 0xffff) {
            if (ov5_021EDAB4(param0, (*v1), NULL) == 0) {
                ov5_021F0740(param1->unk_F8, *v1);
                *v1 = 0xffff;
            }
        }

        v1++;
        v0--;
    } while (v0);
}

static void ov5_021ED694 (UnkStruct_ov5_021ED0A4 * param0)
{
    int * v0;

    v0 = ov5_021EDCC0(param0);
    ov5_021ED504(v0, 0xffff, 8);
}

static void ov5_021ED6A8 (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    int v0, v1;
    int * v2;

    v0 = ov5_021EDCD8(param0);
    v2 = ov5_021EDCC0(param0);
    v1 = ov5_021ED50C(v2, param1, 0xffff, v0);

    GF_ASSERT(v1 != 0);
}

static int ov5_021ED6D4 (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    int v0;
    int * v1;

    v0 = ov5_021EDCD8(param0);
    v1 = ov5_021EDCC0(param0);

    return ov5_021ED528(v1, param1, v0);
}

static void ov5_021ED6F0 (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    int v0, v1;
    int * v2;

    v2 = ov5_021EDCC0(param0);
    v2 = &v2[ov5_021EDCD8(param0)];
    v1 = ov5_021EDCE0(param0);
    v0 = ov5_021ED50C(v2, param1, 0xffff, v1);

    GF_ASSERT(v0 != 0);
}

static int ov5_021ED724 (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    int v0;
    int * v1;

    v1 = ov5_021EDCC0(param0);
    v1 = &v1[ov5_021EDCD8(param0)];
    v0 = ov5_021EDCE0(param0);

    return ov5_021ED528(v1, param1, v0);
}

static void ov5_021ED74C (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    int v0;
    int * v1;

    v1 = ov5_021EDCC0(param0);
    v1 = &v1[ov5_021EDCD8(param0)];
    v0 = ov5_021EDCE0(param0);

    ov5_021ED53C(v1, param1, 0xffff, v0);
}

static void ov5_021ED778 (UnkStruct_02061830 * param0, UnkStruct_ov5_021ED0A4 * param1)
{
    int v0;
    int * v1;
    UnkStruct_0202298C * v2;

    v2 = ov5_021EDCA0(param1);
    v1 = ov5_021EDCC0(param1);
    v1 = &v1[ov5_021EDCD8(param1)];
    v0 = ov5_021EDCE0(param1);

    do {
        if ((*v1) != 0xffff) {
            if (ov5_021EDB3C(param0, (*v1), NULL) == 0) {
                ov5_021F0740(param1->unk_FC, *v1);
                *v1 = 0xffff;
            }
        }

        v1++;
        v0--;
    } while (v0);
}

static void ov5_021ED7D0 (UnkStruct_ov5_021ED0A4 * param0)
{
    int * v0;

    v0 = ov5_021EDCB8(param0);
    ov5_021ED504(v0, 0xffff, 32);
}

static void ov5_021ED7E4 (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    int v0, v1;
    int * v2;

    v0 = ov5_021EDCE8(param0);
    v2 = ov5_021EDCB8(param0);
    v1 = ov5_021ED50C(v2, param1, 0xffff, v0);
    GF_ASSERT(v1 != 0);
}

static int ov5_021ED810 (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    int v0;
    int * v1;

    v0 = ov5_021EDCE8(param0);
    v1 = ov5_021EDCB8(param0);
    return ov5_021ED528(v1, param1, v0);
}

static int ov5_021ED82C (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    if (ov5_021ED810(param0, param1) == 1) {
        return 1;
    }

    if (ov5_021ED924(param0, param1) == 1) {
        return 2;
    }

    return ov5_021EDFF0(param0, param1);
}

static void ov5_021ED858 (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    int v0, v1;
    int * v2;

    v2 = ov5_021EDCB8(param0);
    v2 = &v2[ov5_021EDCE8(param0)];
    v1 = ov5_021EDCF0(param0);
    v0 = ov5_021ED50C(v2, param1, 0xffff, v1);

    GF_ASSERT(v0 != 0);
}

static void ov5_021ED88C (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    int v0;
    int * v1;

    v1 = ov5_021EDCB8(param0);
    v1 = &v1[ov5_021EDCE8(param0)];
    v0 = ov5_021EDCF0(param0);

    ov5_021ED53C(v1, param1, 0xffff, v0);
}

static void ov5_021ED8B8 (UnkStruct_02061830 * param0, UnkStruct_ov5_021ED0A4 * param1)
{
    int v0, v1;
    int * v2;
    UnkStruct_02022BD8 * v3;

    v3 = ov5_021EDCB0(param1);
    v2 = ov5_021EDCB8(param1);
    v2 = &v2[ov5_021EDCE8(param1)];
    v0 = ov5_021EDCF0(param1);

    do {
        v1 = *v2;

        if (v1 != 0xffff) {
            if (ov5_021EDA54(param0, v1, NULL) == 0) {
                sub_02022D38(v3, v1);
                ov5_021EDFBC(param1, v1);
                ov5_021EE170(param1, v1);

                *v2 = 0xffff;
            }
        }

        v2++;
        v0--;
    } while (v0);
}

static int ov5_021ED924 (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    int v0;
    int * v1;

    v1 = ov5_021EDCB8(param0);
    v1 = &v1[ov5_021EDCE8(param0)];
    v0 = ov5_021EDCF0(param0);

    return ov5_021ED528(v1, param1, v0);
}

static int ov5_021ED94C (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    if (ov5_021ED810(param0, param1) == 1) {
        return 0;
    }

    if (ov5_021ED924(param0, param1) == 1) {
        return 1;
    }

    return 2;
}

static int ov5_021ED974 (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    if (ov5_021ED598(param0, param1) == 1) {
        return 0;
    }

    if (ov5_021ED5E8(param0, param1) == 1) {
        return 1;
    }

    return 2;
}

static int ov5_021ED99C (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    if (ov5_021ED6D4(param0, param1) == 1) {
        return 0;
    }

    if (ov5_021ED724(param0, param1) == 1) {
        return 1;
    }

    return 2;
}

static void ov5_021ED9C4 (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    int v0 = ov5_021ED82C(param0, param1);

    if (v0 == 0) {
        ov5_021ED3A4(param0, param1);
    }
}

static void ov5_021ED9DC (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    if (ov5_021ED974(param0, param1) == 2) {
        ov5_021ED40C(param0, param1);
    }
}

static void ov5_021ED9F4 (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    if (ov5_021ED99C(param0, param1) == 2) {
        ov5_021ED490(param0, param1);
    }
}

static void ov5_021EDA0C (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    int v0;

    v0 = ov5_021EDD2C(param1);
    ov5_021ED9DC(param0, v0);

    v0 = ov5_021EDD38(param1);
    ov5_021ED9F4(param0, v0);
    ov5_021ED9C4(param0, param1);
}

void ov5_021EDA38 (UnkStruct_02061830 * param0, UnkStruct_ov5_021ED0A4 * param1)
{
    ov5_021ED63C(param0, param1);
    ov5_021ED778(param0, param1);
    ov5_021ED8B8(param0, param1);
}

static int ov5_021EDA54 (const UnkStruct_02061830 * param0, int param1, const UnkStruct_02061AB4 * param2)
{
    int v0 = 0, v1;
    UnkStruct_02061AB4 * v2 = NULL;

    while (sub_020625B0(param0, &v2, &v0, (1 << 0)) == 1) {
        if ((param2 != NULL) && (param2 == v2)) {
            continue;
        }

        v1 = sub_02062920(v2);

        if (sub_020677F4(v1) == 1) {
            v1 = sub_02067800(v2);
        }

        if (v1 == param1) {
            return 1;
        }
    }

    return 0;
}

static int ov5_021EDAB4 (const UnkStruct_02061830 * param0, int param1, const UnkStruct_02061AB4 * param2)
{
    int v0, v1 = 0;
    UnkStruct_02061AB4 * v2 = NULL;

    while (sub_020625B0(param0, &v2, &v1, (1 << 0)) == 1) {
        if ((param2 != NULL) && (param2 == v2)) {
            continue;
        }

        v0 = sub_02062920(v2);

        if (v0 == 0xffff) {
            continue;
        }

        {
            const UnkStruct_ov5_021ECD10 * v3 = ov5_021ECD04(v2);

            if (v3->unk_04_0 != 1) {
                continue;
            }
        }

        if (sub_020677F4(v0) == 1) {
            v0 = sub_02067800(v2);
        }

        if (v0 != 0xffff) {
            if (ov5_021EDD2C(v0) == param1) {
                return 1;
            }
        }
    }

    return 0;
}

static int ov5_021EDB3C (const UnkStruct_02061830 * param0, int param1, const UnkStruct_02061AB4 * param2)
{
    int v0, v1 = 0;
    UnkStruct_02061AB4 * v2 = NULL;

    while (sub_020625B0(param0, &v2, &v1, (1 << 0)) == 1) {
        if ((param2 != NULL) && (v2 == param2)) {
            continue;
        }

        if (v0 == 0xffff) {
            continue;
        }

        {
            const UnkStruct_ov5_021ECD10 * v3 = ov5_021ECD04(v2);

            if (v3->unk_04_0 != 1) {
                continue;
            }
        }

        v0 = sub_02062920(v2);

        if (sub_020677F4(v0) == 1) {
            v0 = sub_02067800(v2);
        }

        if (v0 != 0xffff) {
            if (ov5_021EDD38(v0) == param1) {
                return 1;
            }
        }
    }

    return 0;
}

void ov5_021EDBC4 (const UnkStruct_02061830 * param0, int param1, UnkStruct_02061AB4 * param2)
{
    int v0;
    UnkStruct_ov5_021ED0A4 * v1 = sub_0206285C(param0);

    v0 = ov5_021EDD2C(param1);

    if (ov5_021ED974(v1, v0) == 1) {
        if (ov5_021EDAB4(param0, v0, param2) == 0) {
            ov5_021F0740(v1->unk_F8, v0);
            ov5_021ED610(v1, v0);
        }
    }

    v0 = ov5_021EDD38(param1);

    if (ov5_021ED99C(v1, v0) == 1) {
        if (ov5_021EDB3C(param0, v0, param2) == 0) {
            ov5_021F0740(v1->unk_FC, v0);
            ov5_021ED74C(v1, v0);
        }
    }

    if (ov5_021ED94C(v1, param1) == 1) {
        if (ov5_021EDA54(param0, param1, param2) == 0) {
            UnkStruct_02022BD8 * v2 = ov5_021EDCB0(v1);

            sub_02022D38(v2, param1);
            ov5_021ED88C(v1, param1);
            ov5_021EDFBC(v1, param1);
            ov5_021EE170(v1, param1);
        }
    }
}

void ov5_021EDC84 (UnkStruct_ov5_021ED0A4 * param0, UnkStruct_02020C44 * param1)
{
    param0->unk_E0 = param1;
}

UnkStruct_02020C44 * ov5_021EDC8C (UnkStruct_ov5_021ED0A4 * param0)
{
    return param0->unk_E0;
}

void ov5_021EDC94 (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    param0->unk_04 = param1;
}

UnkStruct_0202298C * ov5_021EDC98 (const UnkStruct_ov5_021ED0A4 * param0)
{
    return param0->unk_E8;
}

UnkStruct_0202298C * ov5_021EDCA0 (const UnkStruct_ov5_021ED0A4 * param0)
{
    return param0->unk_EC;
}

void ov5_021EDCA8 (UnkStruct_ov5_021ED0A4 * param0, UnkStruct_02022BD8 * param1)
{
    param0->unk_F0 = param1;
}

UnkStruct_02022BD8 * ov5_021EDCB0 (const UnkStruct_ov5_021ED0A4 * param0)
{
    return param0->unk_F0;
}

static int * ov5_021EDCB8 (UnkStruct_ov5_021ED0A4 * param0)
{
    return param0->unk_60;
}

static int * ov5_021EDCBC (UnkStruct_ov5_021ED0A4 * param0)
{
    return param0->unk_20;
}

static int * ov5_021EDCC0 (UnkStruct_ov5_021ED0A4 * param0)
{
    return param0->unk_40;
}

static void ov5_021EDCC4 (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    param0->unk_08 = param1;
}

static int ov5_021EDCC8 (const UnkStruct_ov5_021ED0A4 * param0)
{
    return param0->unk_08;
}

static void ov5_021EDCCC (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    param0->unk_0C = param1;
}

static int ov5_021EDCD0 (const UnkStruct_ov5_021ED0A4 * param0)
{
    return param0->unk_0C;
}

static void ov5_021EDCD4 (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    param0->unk_10 = param1;
}

static int ov5_021EDCD8 (const UnkStruct_ov5_021ED0A4 * param0)
{
    return param0->unk_10;
}

static void ov5_021EDCDC (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    param0->unk_14 = param1;
}

static int ov5_021EDCE0 (const UnkStruct_ov5_021ED0A4 * param0)
{
    return param0->unk_14;
}

static void ov5_021EDCE4 (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    param0->unk_18 = param1;
}

static int ov5_021EDCE8 (const UnkStruct_ov5_021ED0A4 * param0)
{
    return param0->unk_18;
}

static void ov5_021EDCEC (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    param0->unk_1C = param1;
}

static int ov5_021EDCF0 (const UnkStruct_ov5_021ED0A4 * param0)
{
    return param0->unk_1C;
}

static void * ov5_021EDCF4 (UnkStruct_ov5_021ED0A4 * param0, u32 param1, int param2)
{
    return ov5_021ECD68(param0->unk_104, param1, param2);
}

static const UnkStruct_ov5_021EDD04 * ov5_021EDD04 (int param0)
{
    const UnkStruct_ov5_021EDD04 * v0 = Unk_ov5_021FD77C;

    do {
        if (v0->unk_00 == param0) {
            return v0;
        }

        v0++;
    } while (v0->unk_00 != 0xffff);

    GF_ASSERT(FALSE);
    return NULL;
}

static int ov5_021EDD2C (int param0)
{
    const UnkStruct_ov5_021EDD04 * v0;

    v0 = ov5_021EDD04(param0);
    return v0->unk_04;
}

static int ov5_021EDD38 (int param0)
{
    const UnkStruct_ov5_021EDD04 * v0;

    v0 = ov5_021EDD04(param0);
    return v0->unk_06;
}

static const UnkStruct_020217F4 * ov5_021EDD44 (int param0)
{
    const UnkStruct_ov5_021EDD04 * v0;

    v0 = ov5_021EDD04(param0);
    return v0->unk_08;
}

static u32 ov5_021EDD50 (int param0)
{
    int v0 = ov5_021EDD2C(param0);
    const int * v1 = Unk_ov5_021FAF40;

    do {
        if (*v1 == v0) {
            return 0;
        }
    } while (*(++v1) != 0xffff);

    return 1;
}

void ov5_021EDD78 (UnkStruct_02061AB4 * param0, int param1)
{
    if (param1 == 1) {
        sub_020628BC(param0, (1 << 22));
    } else {
        sub_020628C4(param0, (1 << 22));
    }
}

int ov5_021EDD94 (UnkStruct_02061AB4 * param0)
{
    if (sub_020628D0(param0, (1 << 22))) {
        return 1;
    }

    return 0;
}

static void ov5_021EDDAC (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    UnkStruct_ov5_021EDDAC v0;
    UnkStruct_02020C44 * v1;

    v0.unk_00 = param1;
    v0.unk_04 = 4;

    v1 = sub_02020C44(&v0);
    ov5_021EDC84(param0, v1);
    ov5_021EDC94(param0, param1);
}

static void ov5_021EDDD4 (UnkStruct_02020C44 * param0)
{
    sub_02020CCC(param0);
}

static UnkStruct_020216E0 * ov5_021EDDDC (UnkStruct_02020C44 * param0, const UnkStruct_ov5_021DF84C * param1, const VecFx32 * param2, u32 param3)
{
    int v0;
    UnkStruct_ov5_021DF7F8 v1;
    UnkStruct_020216E0 * v2;
    VecFx32 v3 = {FX32_ONE, FX32_ONE, FX32_ONE};

    v1.unk_00 = param0;
    v1.unk_04 = param1;
    v1.unk_08 = *param2;
    v1.unk_14 = v3;

    v2 = sub_0202119C(&v1);

    if (v2 != NULL) {
        sub_02021320(v2, 0);
        sub_02021344(v2, 0);
        sub_020213A4(v2, 0);
        NNS_G3dMdlSetMdlFogEnableFlagAll(sub_020213F4(v2), param3);
        ov5_021D53A4(sub_020213F4(v2));
    }

    return v2;
}

static void ov5_021EDE3C (UnkStruct_ov5_021ED0A4 * param0, u32 param1, UnkStruct_ov5_021DF84C * param2)
{
    {
        int v0 = ov5_021EDD2C(param1);
        void * v1 = ov5_021F075C(param0->unk_F8, v0);

        param2->unk_00 = v1;
    }

    {
        int v2 = ov5_021EDD38(param1);
        void * v3 = ov5_021F075C(param0->unk_FC, v2);

        sub_02024184(v3, &param2->unk_0C);
    }

    {
        UnkStruct_02022BD8 * v4 = ov5_021EDCB0(param0);
        UnkStruct_02022BD8_2 * v5 = sub_02022D98(v4, param1);

        param2->unk_04 = sub_02022DF4(v5);

        {
            param2->unk_1C = sub_02022EF4(v5);
            param2->unk_20 = sub_02022F04(v5);
            param2->unk_24 = sub_02022F14(v5);
        }
    }

    {
        param2->unk_08 = ov5_021EDD44(param1);
    }
}

static UnkStruct_ov5_021ED0A4 * ov5_021EDEA8 (const UnkStruct_02061AB4 * param0)
{
    const UnkStruct_02061830 * v0;

    v0 = sub_02062A40(param0);
    return (UnkStruct_ov5_021ED0A4 *)sub_0206285C(v0);
}

BOOL ov5_021EDEB4 (UnkStruct_02061AB4 * param0, UnkStruct_020216E0 * param1)
{
    BOOL v0;
    VecFx32 v1;

    ov5_021ECDA0(param0, &v1);

    v1.x += 0;
    v1.y += 0;
    v1.z += (FX32_ONE * 6);

    sub_020212A8(param1, &v1);

    return 0;
}

void ov5_021EDED8 (UnkStruct_02061AB4 * param0, UnkStruct_020216E0 * param1)
{
    int v0 = 1;

    if (sub_020628D8(param0, (1 << 9)) == 1) {
        v0 = 0;
    }

    if (sub_020628D8(param0, (1 << 12)) == 1) {
        if (sub_020628D8(param0, (1 << 13)) == 0) {
            v0 = 0;
        }
    }

    sub_02021320(param1, v0);
}

static const int Unk_ov5_021FF4C0[] = {0, 1, 2, 3};

int ov5_021EDF18 (int param0)
{
    return Unk_ov5_021FF4C0[param0];
}

static const int Unk_ov5_021FF4D0[] = {4, 5, 6, 7};

int ov5_021EDF24 (int param0)
{
    return Unk_ov5_021FF4D0[param0];
}

static const int Unk_ov5_021FF4E0[] = {4, 5, 4, 5};

int ov5_021EDF30 (int param0)
{
    return Unk_ov5_021FF4E0[param0];
}

static int ov5_021EDF3C (UnkStruct_ov5_021ED0A4 * param0, int param1, u32 param2, int param3)
{
    UnkStruct_ov5_021EDF3C * v0 = param0->unk_100;

    if ((v0->unk_04 >= v0->unk_02) || (sub_02020D50(param0->unk_E0) == 1)) {
        int v1 = 0;
        UnkStruct_ov5_021EDFBC * v2 = v0->unk_0C;

        while (v1 < v0->unk_00) {
            if (v2->unk_0C == NULL) {
                v2->unk_0C = param0->unk_F0;
                v2->unk_08 = param3;
                v2->unk_04 = param1;
                v2->unk_00 = param2;
                return 0;
            }

            v1++;
            v2++;
        }

        GF_ASSERT(FALSE);
        return 0;
    }

    {
        void * v3 = ov5_021EDCF4(param0, param2, 0);

        ov5_021EE0E8(param0, param1, v3, param3);
        v0->unk_04++;
        return 1;
    }
}

static void ov5_021EDFBC (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    int v0 = 0;
    UnkStruct_ov5_021EDF3C * v1 = param0->unk_100;
    UnkStruct_ov5_021EDFBC * v2 = v1->unk_0C;

    while (v0 < v1->unk_00) {
        if ((v2->unk_04 == param1) && (v2->unk_0C != NULL)) {
            v2->unk_0C = NULL;
            return;
        }

        v0++;
        v2++;
    }
}

static int ov5_021EDFF0 (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    int v0 = 0;
    UnkStruct_ov5_021EDF3C * v1 = param0->unk_100;
    UnkStruct_ov5_021EDFBC * v2 = v1->unk_0C;

    while (v0 < v1->unk_00) {
        if ((v2->unk_04 == param1) && (v2->unk_0C != NULL)) {
            if (v2->unk_08 == 0) {
                return 3;
            }

            return 4;
        }

        v0++;
        v2++;
    }

    return 0;
}

static void ov5_021EE030 (SysTask * param0, void * param1)
{
    int v0 = 0;
    UnkStruct_ov5_021ED0A4 * v1 = param1;
    UnkStruct_ov5_021EDF3C * v2 = v1->unk_100;
    UnkStruct_ov5_021EDFBC * v3 = v2->unk_0C;

    {
        if (sub_02020D50(v1->unk_E0) == 1) {
            return;
        }
    }

    while ((v2->unk_04 < v2->unk_02) && v0 < v2->unk_00) {
        if (v3->unk_0C != NULL) {
            void * v4 = ov5_021EDCF4(v1, v3->unk_00, 0);

            ov5_021EE0E8(v1, v3->unk_04, v4, v3->unk_08);
            v3->unk_0C = NULL;
            v2->unk_04++;
        }

        v3++;
        v0++;
    }

    {
        int v5;

        v3 = v2->unk_0C;

        for (v0 = 0; v0 < (v2->unk_00 - 1); v0++) {
            if (v3[v0].unk_0C == NULL) {
                for (v5 = v0 + 1; v5 < v2->unk_00; v5++) {
                    if (v3[v5].unk_0C != NULL) {
                        v3[v0] = v3[v5];
                        v3[v5].unk_0C = NULL;
                        break;
                    }
                }
            }
        }
    }

    v2->unk_04 = 0;
}

static void ov5_021EE0E8 (UnkStruct_ov5_021ED0A4 * param0, int param1, void * param2, int param3)
{
    UnkStruct_02022BD8_2 * v0 = sub_02022C9C(param0->unk_F0, param2, param1, 1, 4);

    GF_ASSERT(v0 != NULL);
    ov5_021EE134(param0, param1);

    if (param3 == 0) {
        ov5_021ED7E4(param0, param1);
    } else {
        ov5_021ED858(param0, param1);
    }
}

static void ov5_021EE134 (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    int v0 = 0;
    UnkStruct_ov5_021EDF3C * v1 = param0->unk_100;
    UnkStruct_ov5_021EE134 * v2 = v1->unk_10;

    v1->unk_06 = 1;

    while (v0 < v1->unk_00) {
        if (v2->unk_08 == NULL) {
            v2->unk_08 = param0->unk_F0;
            v2->unk_04 = param1;
            v2->unk_00 = 0;

            v1->unk_06 = 0;
            return;
        }

        v2++;
        v0++;
    }

    GF_ASSERT(FALSE);
}

static void ov5_021EE170 (UnkStruct_ov5_021ED0A4 * param0, int param1)
{
    int v0 = 0;
    UnkStruct_ov5_021EDF3C * v1 = param0->unk_100;
    UnkStruct_ov5_021EE134 * v2 = v1->unk_10;

    v1->unk_06 = 1;

    while (v0 < v1->unk_00) {
        if ((v2->unk_08 != NULL) && (v2->unk_04 == param1)) {
            v2->unk_08 = NULL;
            v2->unk_00 = 0;
            break;
        }

        v2++;
        v0++;
    }

    v1->unk_06 = 0;
}

static void ov5_021EE1AC (SysTask * param0, void * param1)
{
    UnkStruct_ov5_021ED0A4 * v0 = param1;
    UnkStruct_ov5_021EDF3C * v1 = v0->unk_100;

    if (v1->unk_06 == 1) {
        return;
    }

    {
        int v2 = 0;
        UnkStruct_ov5_021EE134 * v3 = v1->unk_10;

        while (v2 < v1->unk_00) {
            if ((v3->unk_00 == 0) && (v3->unk_08 != NULL)) {
                sub_02022E38(v3->unk_08, v3->unk_04);
                v3->unk_00 = 1;
            }

            v3++;
            v2++;
        }
    }
}

static void ov5_021EE1E8 (SysTask * param0, void * param1)
{
    int v0 = 0;
    UnkStruct_ov5_021ED0A4 * v1 = param1;
    UnkStruct_ov5_021EDF3C * v2 = v1->unk_100;
    UnkStruct_ov5_021EE134 * v3 = v2->unk_10;

    v2->unk_06 = 1;

    while (v0 < v2->unk_00) {
        if ((v3->unk_00 == 1) && (v3->unk_08 != NULL)) {
            sub_02022EA0(v3->unk_08, v3->unk_04);
            v3->unk_00 = 0;
            v3->unk_08 = NULL;
        }

        v3++;
        v0++;
    }

    v2->unk_06 = 0;
}

static void ov5_021EE228 (UnkStruct_ov5_021ED0A4 * param0, UnkStruct_02061AB4 * param1, UnkStruct_020216E0 ** param2, int param3)
{
    int v0 = 0;
    UnkStruct_ov5_021EDF3C * v1 = param0->unk_100;
    UnkStruct_ov5_021EE294 * v2 = v1->unk_08;

    while (v0 < v1->unk_00) {
        if (v2->unk_04 == NULL) {
            v2->unk_04 = param1;
            v2->unk_08 = param2;
            v2->unk_00 = param3;

            *(v2->unk_08) = NULL;
            ov5_021EDD78(param1, 1);
            return;
        }

        v2++;
        v0++;
    }

    GF_ASSERT(FALSE);
}

static void ov5_021EE264 (UnkStruct_ov5_021ED0A4 * param0, const UnkStruct_02061AB4 * param1)
{
    int v0 = 0;
    UnkStruct_ov5_021EDF3C * v1 = param0->unk_100;
    UnkStruct_ov5_021EE294 * v2 = v1->unk_08;

    while (v0 < v1->unk_00) {
        if (v2->unk_04 == param1) {
            v2->unk_04 = NULL;
            v2->unk_08 = NULL;

            return;
        }

        v2++;
        v0++;
    }
}

static void ov5_021EE294 (UnkStruct_ov5_021ED0A4 * param0)
{
    int v0 = 0;
    UnkStruct_ov5_021EDF3C * v1 = param0->unk_100;
    UnkStruct_ov5_021EE294 * v2 = v1->unk_08;

    while (v0 < v1->unk_00) {
        if (v2->unk_04 != NULL) {
            ov5_021EE2D0(param0, v2);
        }

        v2++;
        v0++;
    }
}

static void ov5_021EE2C4 (SysTask * param0, void * param1)
{
    UnkStruct_ov5_021ED0A4 * v0 = param1;
    ov5_021EE294(v0);
}

static void ov5_021EE2D0 (UnkStruct_ov5_021ED0A4 * param0, UnkStruct_ov5_021EE294 * param1)
{
    if (ov5_021ED94C(param0, param1->unk_00) != 2) {
        *(param1->unk_08) = ov5_021ECF1C(param1->unk_04, param1->unk_00);
        GF_ASSERT(*(param1->unk_08) != NULL);

        ov5_021EDD78(param1->unk_04, 0);

        if (sub_020628D8(param1->unk_04, (1 << 21)) == 1) {
            sub_02062BA4(param1->unk_04);
        } else {
            sub_02062B68(param1->unk_04);
        }

        param1->unk_04 = NULL;
        param1->unk_08 = NULL;
    }
}

static void ov5_021EE320 (UnkStruct_ov5_021ED0A4 * param0, int param1, int param2)
{
    u32 v0, v1, v2, v3, v4;
    UnkStruct_ov5_021EDF3C * v5;

    v4 = (sizeof(UnkStruct_ov5_021EE294)) * param1;
    v3 = (sizeof(UnkStruct_ov5_021EDFBC)) * param1;
    v2 = (sizeof(UnkStruct_ov5_021EE134)) * param1;
    v1 = (sizeof(UnkStruct_ov5_021EDF3C)) + v2 + v3 + v4;
    v5 = Heap_AllocFromHeap(4, v1);

    GF_ASSERT(v5 != NULL);
    memset(v5, 0, v1);

    v5->unk_00 = param1;
    v5->unk_02 = param2;

    v0 = (u32)v5 + (sizeof(UnkStruct_ov5_021EDF3C));
    v5->unk_08 = (void *)v0;

    v0 += v4;
    v5->unk_0C = (void *)v0;

    v0 += v3;
    v5->unk_10 = (void *)v0;

    param0->unk_100 = v5;

    v0 = sub_02062858(param0->unk_104);
    v5->unk_18 = SysTask_Start(ov5_021EE030, param0, v0 + 1);
    v5->unk_1C = SysTask_Start(ov5_021EE2C4, param0, v0 + 2);
    v5->unk_20 = sub_0200DA04(ov5_021EE1AC, param0, 0xff);
    v5->unk_24 = sub_0200DA3C(ov5_021EE1E8, param0, 0xff);
}

static void ov5_021EE3C4 (UnkStruct_ov5_021ED0A4 * param0)
{
    UnkStruct_ov5_021EDF3C * v0 = param0->unk_100;

    v0->unk_06 = 1;

    sub_0200DA58(v0->unk_18);
    sub_0200DA58(v0->unk_1C);
    sub_0200DA58(v0->unk_20);
    sub_0200DA58(v0->unk_24);
    Heap_FreeToHeap(v0);

    param0->unk_100 = NULL;
}

UnkStruct_020216E0 * ov5_021EE3FC (UnkStruct_02061AB4 * param0, int param1, UnkFuncPtr_ov5_021EE454 param2, void * param3)
{
    if ((ov5_021EDD94(param0) == 1) || (ov5_021EB1A0(param0) == NULL)) {
        int v0 = sub_02062920(param0);
        const UnkStruct_02061830 * v1 = sub_02062A40(param0);

        sub_02061B48(param0);
        ov5_021EDBC4(v1, v0, param0);
        sub_02061AB4(param0, param1);
        return NULL;
    }

    return ov5_021EE454(param0, param1, param2, param3);
}

static UnkStruct_020216E0 * ov5_021EE454 (UnkStruct_02061AB4 * param0, int param1, UnkFuncPtr_ov5_021EE454 param2, void * param3)
{
    VecFx32 v0;
    int v1, v2, v3, v4;
    UnkStruct_02022BD8_2 * v5;
    UnkStruct_020216E0 * v6;
    const UnkStruct_ov5_021ED2D0 * v7;
    UnkStruct_ov5_021ED0A4 * v8 = ov5_021EDEA8(param0);
    UnkStruct_02020C44 * v9 = ov5_021EDC8C(v8);
    UnkStruct_020216E0 * v10 = ov5_021EB1A0(param0);
    UnkStruct_ov5_021EE698 * v11 = Heap_AllocFromHeapAtEnd(4, sizeof(UnkStruct_ov5_021EE698));

    memset(v11, 0, sizeof(UnkStruct_ov5_021EE698));

    v11->unk_00 = param1;
    v11->unk_50 = param0;

    v2 = sub_02062920(param0);

    {
        v1 = 0;
        v3 = ov5_021EDD2C(v2);
        v7 = Unk_ov5_021FB484;

        do {
            if (v7->unk_00 == v3) {
                break;
            }

            v7++; v1++;
        } while (v7->unk_00 != 0xffff);

        GF_ASSERT(v7->unk_00 != 0xffff);
        v11->unk_08 = ov5_021EDCF4(v8, v7->unk_04, 0);
    }

    {
        v1 = 0;
        v3 = ov5_021EDD38(v2);
        v7 = Unk_ov5_021FB5BC;

        do {
            if (v7->unk_00 == v3) {
                break;
            }

            v7++; v1++;
        } while (v7->unk_00 != 0xffff);

        GF_ASSERT(v7->unk_00 != 0xffff);
        v11->unk_0C = ov5_021EDCF4(v8, v7->unk_04, 0);
        sub_02024184(v11->unk_0C, &v11->unk_14);
    }

    {
        v1 = 0;
        v3 = v2;
        v7 = Unk_ov5_021FC9B4;

        do {
            if (v7->unk_00 == v3) {
                break;
            }

            v7++; v1++;
        } while (v7->unk_00 != 0xffff);

        GF_ASSERT(v7->unk_00 != 0xffff);
        v11->unk_10 = ov5_021EDCF4(v8, v7->unk_04, 0);
    }

    sub_02021284(&v11->unk_28, v11->unk_08, NNS_G3dGetTex(v11->unk_10), ov5_021EDD44(v2), &v11->unk_14);

    {
        const VecFx32 * v8 = sub_020212C0(v10);

        v0 = *v8;
        v11->unk_24 = ov5_021EDDDC(v9, &v11->unk_28, &v0, ov5_021EDD50(v2));
        GF_ASSERT(v11->unk_24 != NULL);
        v6 = v11->unk_24;
    }

    sub_020212FC(v11->unk_24, sub_02021310(v10));
    sub_02021344(v11->unk_24, sub_02021358(v10));
    sub_020213A4(v11->unk_24, sub_020213D4(v10));
    sub_02021380(v11->unk_24, sub_02021394(v10));
    sub_02021368(v11->unk_24, 0);
    sub_02021320(v11->unk_24, 1);
    sub_02021414(v11->unk_24);

    {
        if (sub_02062F64(param0) == 1) {
            VecFx32 v12;
            int v13;
            int v14 = sub_02062758(param0, 2);
            u8 v15 = sub_02064238(param0, 1);

            if (sub_0205DF9C(v15) == 1) {
                v13 = 2;
            } else if (sub_0205DE5C(v15) == 1) {
                v13 = 0;
            } else {
                v13 = 1;
            }

            sub_02063050(param0, &v12);
            v11->unk_54 = ov5_021F1BA4(ov5_021DF578(param0), &v11->unk_28, v11->unk_24, &v12, v13, v14);
        }
    }

    sub_02061B48(param0);
    ov5_021EDBC4(v8->unk_104, v2, param0);
    sub_02061AB4(param0, param1);

    {
        int v16 = sub_02062858(v8->unk_104);
        SysTask * v17 = sub_0200DA3C(ov5_021EE698, v11, 0xff);

        GF_ASSERT(v17 != NULL);
        ov5_021EE698(v17, v11);
    }

    if (sub_02021404(v11->unk_24) == 0) {
        v6 = NULL;
    } else {
        v11->unk_58 = param3;
        v11->unk_5C = param2;
    }

    return v6;
}

static void ov5_021EE698 (SysTask * param0, void * param1)
{
    UnkStruct_ov5_021EE698 * v0 = param1;
    UnkStruct_02061AB4 * v1 = v0->unk_50;

    switch (v0->unk_04) {
    case 0:
        if ((sub_02062CF8(v1) == 0) || (ov5_021EDD94(v1) == 0)) {
            if (v0->unk_5C != NULL) {
                v0->unk_5C(
                    v0->unk_58, v0->unk_24);
            }

            if (v0->unk_54 != NULL) {
                sub_0207136C(v0->unk_54);
            }

            sub_020211FC(v0->unk_24);
            Heap_FreeToHeap(v0->unk_08);
            Heap_FreeToHeap(v0->unk_0C);
            Heap_FreeToHeap(v0->unk_10);
            Heap_FreeToHeap(v0);
            sub_0200DA58(param0);
            return;
        }

        if (sub_02062920(v1) != v0->unk_00) {
            v0->unk_04++;
        }
        break;
    case 1:
        if (ov5_021EDD94(v1) == 0) {
            if (v0->unk_5C != NULL) {
                v0->unk_5C(
                    v0->unk_58, v0->unk_24);
            }

            if (v0->unk_54 != NULL) {
                sub_0207136C(v0->unk_54);
            }

            sub_020211FC(v0->unk_24);
            Heap_FreeToHeap(v0->unk_08);
            Heap_FreeToHeap(v0->unk_0C);
            Heap_FreeToHeap(v0->unk_10);
            Heap_FreeToHeap(v0);
            sub_0200DA58(param0);
        }
    }
}
