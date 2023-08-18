#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_02061830_sub1_decl.h"

#include "overlay005/const_ov5_021FB97C.h"
#include "overlay005/const_ov5_021FB470.h"
#include "constdata/const_020EE3A8.h"

#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_020619DC.h"
#include "struct_defs/struct_02061D3C.h"
#include "functypes/funcptr_020EDF0C.h"
#include "struct_defs/struct_020EDF0C.h"
#include "functypes/funcptr_020EDF0C_1.h"
#include "functypes/funcptr_020EDF0C_2.h"
#include "overlay005/struct_ov5_021ED0A4.h"
#include "overlay005/funcptr_ov5_021FB0F0.h"
#include "overlay005/struct_ov5_021FB0F0.h"
#include "overlay005/funcptr_ov5_021FB0F0_1.h"
#include "overlay005/funcptr_ov5_021FB0F0_2.h"
#include "overlay005/funcptr_ov5_021FB0F0_3.h"
#include "overlay005/funcptr_ov5_021FB0F0_4.h"
#include "overlay005/struct_ov5_021FB97C.h"

#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_0203E880.h"
#include "unk_02061804.h"
#include "unk_02063400.h"
#include "unk_020655F4.h"
#include "unk_020677F4.h"
#include "overlay005/ov5_021ECC20.h"
#include "overlay005/ov5_021ECE40.h"

typedef struct UnkStruct_02061830_t {
    u32 unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    NARC * unk_14;
    UnkStruct_ov5_021ED0A4 unk_18;
    UnkStruct_02061830_sub1 * unk_120;
    UnkStruct_02061AB4 * unk_124;
    UnkStruct_0203CDB0 * unk_128;
} UnkStruct_02061830;

typedef struct UnkStruct_02061AB4_t {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
    u32 unk_0C;
    u32 unk_10;
    u32 unk_14;
    u32 unk_18;
    u32 unk_1C;
    u32 unk_20;
    int unk_24;
    int unk_28;
    int unk_2C;
    int unk_30;
    int unk_34;
    int unk_38;
    int unk_3C;
    int unk_40;
    int unk_44;
    int unk_48;
    int unk_4C;
    int unk_50;
    int unk_54;
    int unk_58;
    int unk_5C;
    int unk_60;
    int unk_64;
    int unk_68;
    int unk_6C;
    VecFx32 unk_70;
    VecFx32 unk_7C;
    VecFx32 unk_88;
    VecFx32 unk_94;
    u32 unk_A0;
    int unk_A4;
    int unk_A8;
    u16 unk_AC;
    u16 unk_AE;
    UnkStruct_0201CD38 * unk_B0;
    const UnkStruct_02061830 * unk_B4;
    UnkFuncPtr_020EDF0C unk_B8;
    UnkFuncPtr_020EDF0C_1 unk_BC;
    UnkFuncPtr_020EDF0C_2 unk_C0;
    UnkFuncPtr_ov5_021FB0F0 unk_C4;
    UnkFuncPtr_ov5_021FB0F0_1 unk_C8;
    UnkFuncPtr_ov5_021FB0F0_2 unk_CC;
    UnkFuncPtr_ov5_021FB0F0_3 unk_D0;
    UnkFuncPtr_ov5_021FB0F0_4 unk_D4;
    u8 unk_D8[16];
    u8 unk_E8[16];
    u8 unk_F8[16];
    u8 unk_108[32];
} UnkStruct_02061AB4;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    const UnkStruct_02061830 * unk_0C;
    UnkStruct_020619DC * unk_10;
} UnkStruct_020620C4;

static UnkStruct_02061830 * sub_020618C8(int param0);
static void sub_02061D3C(UnkStruct_0203CDB0 * param0, UnkStruct_02061AB4 * param1, UnkStruct_02061D3C * param2);
static void sub_02061E80(UnkStruct_02061AB4 * param0, UnkStruct_02061D3C * param1);
static void sub_02061FA8(const UnkStruct_02061830 * param0, UnkStruct_02061AB4 * param1);
static void sub_02061FF0(UnkStruct_02061AB4 * param0);
static void sub_02062010(UnkStruct_02061AB4 * param0);
static void sub_020620C4(UnkStruct_020620C4 * param0);
static UnkStruct_02061AB4 * sub_02062120(const UnkStruct_02061830 * param0);
static UnkStruct_02061AB4 * sub_02062154(const UnkStruct_02061830 * param0, int param1, int param2);
static void sub_020621AC(const UnkStruct_02061830 * param0, UnkStruct_02061AB4 * param1);
static void sub_020621E8(UnkStruct_02061AB4 * param0, const UnkStruct_020619DC * param1, UnkStruct_0203CDB0 * param2);
static void sub_020622B8(UnkStruct_02061AB4 * param0, const UnkStruct_020619DC * param1);
static void sub_0206234C(UnkStruct_02061AB4 * param0, const UnkStruct_02061830 * param1);
static void sub_0206239C(UnkStruct_02061AB4 * param0);
static void sub_020623D4(UnkStruct_02061AB4 * param0);
static void sub_0206243C(UnkStruct_02061AB4 * param0);
static int sub_0206244C(const UnkStruct_02061AB4 * param0, int param1, int param2, const UnkStruct_020619DC * param3);
static UnkStruct_02061AB4 * sub_020624CC(const UnkStruct_02061830 * param0, int param1, int param2);
static void sub_02062604(UnkStruct_02061AB4 * param0);
static void sub_02062618(UnkStruct_02061AB4 * param0);
static void sub_02062628(UnkStruct_02061AB4 * param0);
static int sub_0206262C(UnkStruct_0203CDB0 * param0, int param1);
static void sub_02062648(UnkStruct_02061AB4 * param0);
static void sub_02062660(UnkStruct_02061AB4 * param0);
static void sub_02062670(UnkStruct_02061AB4 * param0);
static void sub_020626D0(UnkStruct_02061AB4 * param0, const UnkStruct_020619DC * param1, int param2);
static void sub_02062714(UnkStruct_02061AB4 * param0, int param1, const UnkStruct_020619DC * param2);
static void sub_020627E8(UnkStruct_0201CD38 * param0, void * param1);
static void sub_02062804(UnkStruct_02061AB4 * param0);
static UnkStruct_02061830 * sub_0206281C(const UnkStruct_02061830 * param0);
static void sub_02062828(UnkStruct_02061830 * param0);
static void sub_02062830(UnkStruct_02061830 * param0);
static UnkStruct_02061AB4 * sub_02062870(const UnkStruct_02061830 * param0);
static UnkStruct_02061830 * sub_02062A48(const UnkStruct_02061AB4 * param0);
static const UnkStruct_020619DC * sub_020631A4(int param0, int param1, const UnkStruct_020619DC * param2);
static int sub_020631D8(const UnkStruct_020619DC * param0);
static int sub_020631F4(const UnkStruct_020619DC * param0);

static const UnkStruct_020EDF0C * sub_0206320C(u32 param0);
static UnkFuncPtr_020EDF0C sub_02063224(const UnkStruct_020EDF0C * param0);
static UnkFuncPtr_020EDF0C_1 sub_02063228(const UnkStruct_020EDF0C * param0);
static UnkFuncPtr_020EDF0C_2 sub_0206322C(const UnkStruct_020EDF0C * param0);
static UnkFuncPtr_ov5_021FB0F0_3 sub_0206323C(const UnkStruct_ov5_021FB0F0 * param0);
static UnkFuncPtr_ov5_021FB0F0_4 sub_02063240(const UnkStruct_ov5_021FB0F0 * param0);

static UnkFuncPtr_ov5_021FB0F0 sub_02063230(const UnkStruct_ov5_021FB0F0 * param0);
static UnkFuncPtr_ov5_021FB0F0_1 sub_02063234(const UnkStruct_ov5_021FB0F0 * param0);
static UnkFuncPtr_ov5_021FB0F0_2 sub_02063238(const UnkStruct_ov5_021FB0F0 * param0);
static const UnkStruct_ov5_021FB0F0 * sub_02063244(u32 param0);

UnkStruct_02061830 * sub_02061804 (UnkStruct_0203CDB0 * param0, int param1, int param2)
{
    UnkStruct_02061830 * v0;

    v0 = sub_020618C8(param1);
    sub_0206288C(v0, param0);
    sub_02062820(v0, param1);
    sub_02062854(v0, param2);

    return v0;
}

void sub_02061830 (UnkStruct_02061830 * param0)
{
    Heap_FreeToHeapExplicit(11, sub_02062878(param0));
    Heap_FreeToHeapExplicit(11, param0);
}

void sub_0206184C (UnkStruct_02061830 * param0, int param1, int param2, int param3, const UnkStruct_020619DC * param4)
{
    int v0, v1 = sub_02062824(param0);
    UnkStruct_02061AB4 * v2 = sub_02062878(param0);

    while (v1) {
        if (sub_02062CF8(v2) == 1) {
            v0 = sub_0206244C(v2, param2, param3, param4);

            switch (v0) {
            case 0:
                if (sub_02062918(v2) != param2) {
                    if (sub_020628D8(
                            v2, (1 << 10)) == 0) {
                        sub_02061AF4(v2);
                    }
                }
                break;
            case 2:
                break;
            case 1:
                break;
            }
        }

        v2++;
        v1--;
    }

    ov5_021EDA38(param0, sub_0206285C(param0));
}

static UnkStruct_02061830 * sub_020618C8 (int param0)
{
    int v0;
    UnkStruct_02061AB4 * v1;
    UnkStruct_02061830 * v2;

    v2 = Heap_AllocFromHeap(11, (sizeof(UnkStruct_02061830)));

    GF_ASSERT(v2 != NULL);
    memset(v2, 0, (sizeof(UnkStruct_02061830)));

    v0 = (sizeof(UnkStruct_02061AB4)) * param0;
    v1 = Heap_AllocFromHeap(11, v0);

    GF_ASSERT(v1 != NULL);
    memset(v1, 0, v0);

    sub_02062860(v2, v1);

    return v2;
}

UnkStruct_02061AB4 * sub_02061918 (const UnkStruct_02061830 * param0, const UnkStruct_020619DC * param1, int param2)
{
    UnkStruct_02061AB4 * v0;
    UnkStruct_020619DC v1 = *param1;
    UnkStruct_020619DC * v2 = &v1;

    {
        int v3 = sub_020630F4(v2);

        if (sub_020631D8(v2) == 0) {
            v0 = sub_02062154(param0, v3, param2);

            if (v0 != NULL) {
                sub_020626D0(v0, v2, param2);

                return v0;
            }
        } else {
            v0 = sub_020624CC(param0, v3, sub_020631F4(v2));

            if (v0 != NULL) {
                sub_02062714(v0, param2, v2);
                return v0;
            }
        }
    }

    v0 = sub_02062120(param0);

    if (v0 == NULL) {
        return v0;
    }

    sub_020621E8(v0, v2, sub_02062894(param0));
    sub_0206234C(v0, param0);
    sub_02062914(v0, param2);
    sub_02062660(v0);
    sub_02062670(v0);
    sub_020628BC(v0, (1 << 2));
    sub_020621AC(param0, v0);
    sub_02062828(sub_0206281C(param0));

    return v0;
}

UnkStruct_02061AB4 * sub_020619DC (const UnkStruct_02061830 * param0, int param1, int param2, int param3, int param4, int param5, int param6)
{
    UnkStruct_020619DC v0;
    UnkStruct_02061AB4 * v1;

    sub_020630F0(&v0, 0);
    sub_020630F8(&v0, param4);
    sub_02063100(&v0, param5);
    sub_02063108(&v0, 0);
    sub_02063110(&v0, 0);
    sub_02063118(&v0, 0);
    sub_02063120(&v0, param3);
    sub_0206312C(&v0, 0, 0);
    sub_0206312C(&v0, 0, 1);
    sub_0206312C(&v0, 0, 2);
    sub_02063174(&v0, 0);
    sub_02063180(&v0, 0);
    sub_0206318C(&v0, param1);
    sub_0206319C(&v0, param2);
    sub_02063194(&v0, 0);

    v1 = sub_02061918(param0, &v0, param6);

    return v1;
}

UnkStruct_02061AB4 * sub_02061A74 (const UnkStruct_02061830 * param0, int param1, int param2, int param3, const UnkStruct_020619DC * param4)
{
    UnkStruct_02061AB4 * v0 = NULL;
    const UnkStruct_020619DC * v1 = sub_020631A4(param1, param2, param4);

    if (v1 != NULL) {
        int v2 = sub_02063114(v1);
        UnkStruct_0203CDB0 * v3 = sub_02062894(param0);

        if (sub_0203F188(v3, v2) == 0) {
            v0 = sub_02061918(param0, v1, param3);
        }
    }

    return v0;
}

void sub_02061AB4 (UnkStruct_02061AB4 * param0, int param1)
{
    sub_0206291C(param0, param1);
    sub_02062604(param0);
    sub_020628C4(param0, (1 << 14));
    sub_02062670(param0);
}

void sub_02061AD4 (UnkStruct_02061AB4 * param0, int param1)
{
    if (sub_02062DFC(param0) == 1) {
        sub_02061B48(param0);
    }

    sub_02061AB4(param0, param1);
}

void sub_02061AF4 (UnkStruct_02061AB4 * param0)
{
    const UnkStruct_02061830 * v0;

    v0 = sub_02062A40(param0);

    if (sub_02062CA8(v0) == 1) {
        sub_02062B7C(param0);
    }

    sub_02062B28(param0);
    sub_02062A2C(param0);
    sub_02062830(sub_02062A48(param0));
    sub_0206243C(param0);
}

void sub_02061B28 (UnkStruct_02061AB4 * param0)
{
    int v0;

    v0 = sub_02062958(param0);
    sub_0203F19C(sub_02062C00(param0), v0);
    sub_02061AF4(param0);
}

void sub_02061B48 (UnkStruct_02061AB4 * param0)
{
    const UnkStruct_02061830 * v0;

    v0 = sub_02062A40(param0);

    if (sub_02062CA8(v0) == 1) {
        if (sub_020628D0(param0, (1 << 14))) {
            sub_02062B7C(param0);
        }

        sub_020628C4(param0, (1 << 14));
    }

    sub_0206291C(param0, 0xffff);
    sub_02062B4C(param0, sub_020633F0);
    sub_02062B60(param0, sub_020633F4);
    sub_02062B74(param0, sub_020633F4);
    sub_02062B88(param0, sub_020633F8);
    sub_02062B9C(param0, sub_020633FC);
}

void sub_02061BBC (UnkStruct_02061830 * param0)
{
    int v0, v1;
    UnkStruct_02061AB4 * v2;

    v0 = 0;
    v1 = sub_02062824(param0);
    v2 = sub_02062878(param0);

    do {
        if (sub_020628D0(v2, (1 << 0))) {
            sub_02061AF4(v2);
        }

        v2++;
        v0++;
    } while (v0 < v1);
}

void sub_02061BF0 (UnkStruct_02061830 * param0)
{
    GF_ASSERT(sub_02062CA8(param0) == 1);

    {
        int v0, v1;
        UnkStruct_02061AB4 * v2;

        v0 = 0;
        v1 = sub_02062824(param0);
        v2 = sub_02062878(param0);

        do {
            if (sub_020628D0(v2, (1 << 0))) {
                if (sub_020628D0(v2, (1 << 14))) {
                    sub_02062B90(v2);
                    sub_02062628(v2);
                }
            }

            v2++;
            v0++;
        } while (v0 < v1);
    }
}

void sub_02061C48 (UnkStruct_02061830 * param0)
{
    GF_ASSERT(sub_02062CA8(param0) == 1);

    {
        int v0 = 0;
        int v1 = sub_02062824(param0);
        UnkStruct_02061AB4 * v2 = sub_02062878(param0);

        do {
            if (sub_02062CF8(v2) == 1) {
                if (sub_02062D4C(v2) == 1) {
                    sub_02062BA4(v2);
                } else {
                    sub_02062670(v2);
                }

                sub_02062604(v2);
                sub_02064464(v2);
            }

            v2++;
            v0++;
        } while (v0 < v1);
    }
}

void sub_02061CA8 (UnkStruct_0203CDB0 * param0, const UnkStruct_02061830 * param1, UnkStruct_02061D3C * param2, int param3)
{
    int v0 = 0;
    UnkStruct_02061AB4 * v1;

    while (sub_020625B0(param1, &v1, &v0, (1 << 0))) {
        sub_02061D3C(param0, v1, param2);
        param2++; param3--;
        GF_ASSERT(param3 > 0);
    }

    if (param3) {
        memset(param2, 0, param3 * (sizeof(UnkStruct_02061D3C)));
    }
}

void sub_02061D04 (const UnkStruct_02061830 * param0, UnkStruct_02061D3C * param1, int param2)
{
    int v0 = 0;
    UnkStruct_02061AB4 * v1;

    while (param2) {
        if ((param1->unk_00 & (1 << 0))) {
            v1 = sub_02062120(param0);
            GF_ASSERT(v1 != NULL);

            sub_02061E80(v1, param1);
            sub_02061FA8(param0, v1);
        }

        param1++;
        param2--;
    }
}

static void sub_02061D3C (UnkStruct_0203CDB0 * param0, UnkStruct_02061AB4 * param1, UnkStruct_02061D3C * param2)
{
    param2->unk_00 = sub_020628B8(param1);
    param2->unk_04 = sub_020628EC(param1);
    param2->unk_08 = sub_02062910(param1);
    param2->unk_10 = sub_02062918(param1);
    param2->unk_12 = sub_02062920(param1);
    param2->unk_09 = sub_02062948(param1);
    param2->unk_14 = sub_02062950(param1);
    param2->unk_16 = sub_02062958(param1);
    param2->unk_18 = sub_02062960(param1);
    param2->unk_0C = sub_02062968(param1);
    param2->unk_0D = sub_0206298C(param1);
    param2->unk_0E = sub_0206299C(param1);
    param2->unk_1A = sub_020629D8(param1, 0);
    param2->unk_1C = sub_020629D8(param1, 1);
    param2->unk_1E = sub_020629D8(param1, 2);
    param2->unk_0A = sub_02062A00(param1);
    param2->unk_0B = sub_02062A08(param1);
    param2->unk_20 = sub_02062FF0(param1);
    param2->unk_22 = sub_02062FF8(param1);
    param2->unk_24 = sub_02063000(param1);
    param2->unk_26 = sub_02063020(param1);
    param2->unk_28 = sub_02063030(param1);
    param2->unk_2A = sub_02063040(param1);

    {
        VecFx32 v0;
        int v1, v2;

        sub_02064450(param2->unk_26, param2->unk_2A, &v0);
        v0.y = sub_02063074(param1);

        v2 = sub_02062FAC(param1);
        v1 = sub_020644D0(param0, &v0, v2);

        if (v1 == 0) {
            param2->unk_2C = sub_02063074(param1);
        } else {
            if (sub_02062E44(param1) == 1) {
                v0.y = sub_02063074(param1);
            }

            param2->unk_2C = v0.y;
        }
    }

    memcpy(param2->unk_30, sub_02062A78(param1), 16);
    memcpy(param2->unk_40, sub_02062AA0(param1), 16);
}

static void sub_02061E80 (UnkStruct_02061AB4 * param0, UnkStruct_02061D3C * param1)
{
    sub_020628B4(param0, param1->unk_00);
    sub_020628E8(param0, param1->unk_04);
    sub_0206290C(param0, param1->unk_08);
    sub_02062914(param0, param1->unk_10);
    sub_0206291C(param0, param1->unk_12);
    sub_02062944(param0, param1->unk_09);
    sub_0206294C(param0, param1->unk_14);
    sub_02062954(param0, param1->unk_16);
    sub_0206295C(param0, param1->unk_18);
    sub_02062964(param0, param1->unk_0C);
    sub_0206296C(param0, param1->unk_0D);
    sub_02062994(param0, param1->unk_0E);
    sub_020629B4(param0, param1->unk_1A, 0);
    sub_020629B4(param0, param1->unk_1C, 1);
    sub_020629B4(param0, param1->unk_1E, 2);
    sub_020629FC(param0, param1->unk_0A);
    sub_02062A04(param0, param1->unk_0B);
    sub_02062FF4(param0, param1->unk_20);
    sub_02062FFC(param0, param1->unk_22);
    sub_02063004(param0, param1->unk_24);
    sub_02063024(param0, param1->unk_26);
    sub_02063034(param0, param1->unk_28);
    sub_02063044(param0, param1->unk_2A);

    {
        VecFx32 v0 = {0, 0, 0};

        v0.y = param1->unk_2C;
        sub_02063060(param0, &v0);
    }

    memcpy(sub_02062A78(param0), param1->unk_30, 16);
    memcpy(sub_02062AA0(param0), param1->unk_40, 16);
}

static void sub_02061FA8 (const UnkStruct_02061830 * param0, UnkStruct_02061AB4 * param1)
{
    sub_02061FF0(param1);
    sub_02062010(param1);
    sub_02062A38(param1, param0);
    sub_0206239C(param1);
    sub_020656DC(param1);
    sub_02062670(param1);
    sub_020621AC(param0, param1);
    sub_02062B34(param1);
    sub_02062828(sub_0206281C(param0));
}

static void sub_02061FF0 (UnkStruct_02061AB4 * param0)
{
    sub_020628BC(param0, (1 << 0) | (1 << 2));
    sub_020628C4(param0, (1 << 6) | (1 << 9) | (1 << 14) | (1 << 16) | (1 << 17) | (1 << 3) | (1 << 18) | (1 << 19) | (1 << 21) | (1 << 22) | (1 << 23));
    sub_02062618(param0);
}

static void sub_02062010 (UnkStruct_02061AB4 * param0)
{
    int v0;
    VecFx32 v1;

    sub_02063050(param0, &v1);

    v0 = sub_02063020(param0);
    v1.x = (((v0) << 4) * FX32_ONE) + (((16 * FX32_ONE) >> 1));

    sub_0206300C(param0, v0);
    v0 = sub_02063030(param0);
    sub_02063014(param0, v0);

    v0 = sub_02063040(param0);
    v1.z = (((v0) << 4) * FX32_ONE) + (((16 * FX32_ONE) >> 1));

    sub_0206301C(param0, v0);
    sub_02063060(param0, &v1);
}

void sub_02062068 (const UnkStruct_02061830 * param0, int param1, int param2, const UnkStruct_020619DC * param3)
{
    int v0;
    UnkStruct_020619DC * v1;
    UnkStruct_020620C4 * v2;

    GF_ASSERT(param2);

    v0 = (sizeof(UnkStruct_020619DC)) * param2;
    v1 = Heap_AllocFromHeapAtEnd(11, v0);

    GF_ASSERT(v1 != NULL);
    memcpy(v1, param3, v0);

    v2 = Heap_AllocFromHeapAtEnd(11, (sizeof(UnkStruct_020620C4)));
    GF_ASSERT(v2 != NULL);

    v2->unk_00 = param1;
    v2->unk_04 = param2;
    v2->unk_08 = 0;
    v2->unk_0C = param0;
    v2->unk_10 = v1;

    sub_020620C4(v2);
}

static void sub_020620C4 (UnkStruct_020620C4 * param0)
{
    UnkStruct_02061AB4 * v0;
    UnkStruct_0203CDB0 * v1;
    const UnkStruct_020619DC * v2;

    v1 = sub_02062894(param0->unk_0C);
    v2 = param0->unk_10;

    do {
        if ((sub_020631D8(v2) == 1) || (sub_0203F188(v1, v2->unk_08) == 0)) {
            v0 = sub_02061918(param0->unk_0C, v2, param0->unk_00);
            GF_ASSERT(v0 != NULL);
        }

        v2++;
        param0->unk_08++;
    } while (param0->unk_08 < param0->unk_04);

    Heap_FreeToHeapExplicit(11, param0->unk_10);
    Heap_FreeToHeapExplicit(11, param0);
}

static UnkStruct_02061AB4 * sub_02062120 (const UnkStruct_02061830 * param0)
{
    int v0, v1;
    UnkStruct_02061AB4 * v2;

    v0 = 0;
    v1 = sub_02062824(param0);
    v2 = sub_02062878(param0);

    do {
        if (sub_020628D0(v2, (1 << 0)) == 0) {
            return v2;
        }

        v2++;
        v0++;
    } while (v0 < v1);

    return NULL;
}

static UnkStruct_02061AB4 * sub_02062154 (const UnkStruct_02061830 * param0, int param1, int param2)
{
    int v0 = 0;
    UnkStruct_02061AB4 * v1;

    while (sub_020625B0(param0, &v1, &v0, (1 << 0)) == 1) {
        if (sub_02062E94(v1) == 1) {
            if (sub_02062910(v1) == param1) {
                if (sub_02062C18(v1) == param2) {
                    return v1;
                }
            }
        }
    }

    return NULL;
}

static void sub_020621AC (const UnkStruct_02061830 * param0, UnkStruct_02061AB4 * param1)
{
    int v0, v1;
    UnkStruct_0201CD38 * v2;

    v0 = sub_02062858(param0);
    v1 = sub_02062948(param1);

    if ((v1 == 0x30) || (v1 == 0x32)) {
        v0 += 2;
    }

    v2 = sub_0200D9E8(sub_020627E8, param1, v0);
    GF_ASSERT(v2 != NULL);

    sub_02062A1C(param1, v2);
}

static void sub_020621E8 (UnkStruct_02061AB4 * param0, const UnkStruct_020619DC * param1, UnkStruct_0203CDB0 * param2)
{
    sub_0206290C(param0, sub_020630F4(param1));
    sub_0206291C(param0, sub_0206262C(param2, sub_020630FC(param1)));
    sub_02062944(param0, sub_02063104(param1));
    sub_0206294C(param0, sub_0206310C(param1));
    sub_02062954(param0, sub_02063114(param1));
    sub_0206295C(param0, sub_0206311C(param1));
    sub_02062964(param0, sub_02063124(param1));
    sub_020629B4(param0, sub_02063150(param1, 0), 0);
    sub_020629B4(param0, sub_02063150(param1, 1), 1);
    sub_020629B4(param0, sub_02063150(param1, 2), 2);
    sub_020629FC(param0, sub_02063178(param1));
    sub_02062A04(param0, sub_02063184(param1));
    sub_020622B8(param0, param1);
}

static void sub_020622B8 (UnkStruct_02061AB4 * param0, const UnkStruct_020619DC * param1)
{
    int v0;
    VecFx32 v1;

    v0 = sub_02063190(param1);
    v1.x = (((v0) << 4) * FX32_ONE) + (((16 * FX32_ONE) >> 1));

    sub_02062FF4(param0, v0);
    sub_0206300C(param0, v0);
    sub_02063024(param0, v0);

    v0 = sub_02063198(param1);
    v1.y = (fx32)v0;
    v0 = (((v0) >> 3) / FX32_ONE);

    sub_02062FFC(param0, v0);
    sub_02063014(param0, v0);
    sub_02063034(param0, v0);

    v0 = sub_020631A0(param1);
    v1.z = (((v0) << 4) * FX32_ONE) + (((16 * FX32_ONE) >> 1));

    sub_02063004(param0, v0);
    sub_0206301C(param0, v0);
    sub_02063044(param0, v0);
    sub_02063060(param0, &v1);
}

static void sub_0206234C (UnkStruct_02061AB4 * param0, const UnkStruct_02061830 * param1)
{
    sub_020628BC(param0, (1 << 0) | (1 << 12) | (1 << 11));

    if (sub_020626B4(param0) == 1) {
        sub_02062E78(param0, 1);
    }

    sub_02062A38(param0, param1);
    sub_0206296C(param0, sub_02062968(param0));
    sub_02062994(param0, sub_02062968(param0));
    sub_020656DC(param0);
}

static void sub_0206239C (UnkStruct_02061AB4 * param0)
{
    const UnkStruct_020EDF0C * v0;

    v0 = sub_0206320C(sub_02062948(param0));

    sub_02062AF8(param0, sub_02063224(v0));
    sub_02062B0C(param0, sub_02063228(v0));
    sub_02062B20(param0, sub_0206322C(v0));
}

static void sub_020623D4 (UnkStruct_02061AB4 * param0)
{
    const UnkStruct_ov5_021FB0F0 * v0;
    u32 v1 = sub_02062920(param0);

    if (v1 == 0x2000) {
        v0 = &Unk_ov5_021FB470;
    } else {
        v0 = sub_02063244(v1);
    }

    sub_02062B4C(param0, sub_02063230(v0));
    sub_02062B60(param0, sub_02063234(v0));
    sub_02062B74(param0, sub_02063238(v0));
    sub_02062B88(param0, sub_0206323C(v0));
    sub_02062B9C(param0, sub_02063240(v0));
}

static void sub_0206243C (UnkStruct_02061AB4 * param0)
{
    memset(param0, 0, (sizeof(UnkStruct_02061AB4)));
}

static int sub_0206244C (const UnkStruct_02061AB4 * param0, int param1, int param2, const UnkStruct_020619DC * param3)
{
    int v0;
    int v1;

    while (param2) {
        v0 = sub_020630F4(param3);

        if (sub_02062910(param0) == v0) {
            if (sub_020631D8(param3) == 1) {
                v1 = sub_020631F4(param3);

                if (sub_02062E94(param0) == 1) {
                    if (sub_02062C18(param0) == v1) {
                        return 1;
                    }
                } else if (sub_02062918(param0) == v1) {
                    return 2;
                }
            } else {
                if (sub_02062E94(param0) == 1) {
                    if (sub_02062C18(param0) == param1) {
                        return 2;
                    }
                }
            }
        }

        param2--;
        param3++;
    }

    return 0;
}

static UnkStruct_02061AB4 * sub_020624CC (const UnkStruct_02061830 * param0, int param1, int param2)
{
    int v0 = 0;
    UnkStruct_02061AB4 * v1;

    while (sub_020625B0(param0, &v1, &v0, (1 << 0)) == 1) {
        if ((sub_02062910(v1) == param1) && (sub_02062918(v1) == param2)) {
            return v1;
        }
    }

    return NULL;
}

UnkStruct_02061AB4 * sub_0206251C (const UnkStruct_02061830 * param0, int param1)
{
    int v0;
    UnkStruct_02061AB4 * v1;

    GF_ASSERT(param0 != NULL);

    v0 = sub_02062824(param0);
    v1 = sub_02062870(param0);

    do {
        if (sub_020628D8(v1, (1 << 0)) == 1) {
            if (sub_02062E94(v1) == 0) {
                if (sub_02062910(v1) == param1) {
                    return v1;
                }
            }
        }

        v1++;
        v0--;
    } while (v0 > 0);

    return NULL;
}

UnkStruct_02061AB4 * sub_02062570 (const UnkStruct_02061830 * param0, int param1)
{
    int v0;
    UnkStruct_02061AB4 * v1;

    v0 = sub_02062824(param0);
    v1 = sub_02062870(param0);

    do {
        if (sub_020628D8(v1, (1 << 0)) == 1) {
            if (sub_02062948(v1) == param1) {
                return v1;
            }
        }

        v1++;
        v0--;
    } while (v0 > 0);

    return NULL;
}

int sub_020625B0 (const UnkStruct_02061830 * param0, UnkStruct_02061AB4 ** param1, int * param2, u32 param3)
{
    int v0;
    UnkStruct_02061AB4 * v1;

    v0 = sub_02062824(param0);

    if ((*param2) >= v0) {
        return 0;
    }

    v1 = sub_02062870(param0);
    v1 = &v1[(*param2)];

    do {
        (*param2)++;

        if (sub_020628D0(v1, param3) == param3) {
            *param1 = v1;
            return 1;
        }

        v1++;
    } while ((*param2) < v0);

    return 0;
}

static void sub_02062604 (UnkStruct_02061AB4 * param0)
{
    sub_020628BC(param0, (1 << 2));
    sub_02062618(param0);
}

static void sub_02062618 (UnkStruct_02061AB4 * param0)
{
    sub_020628C4(param0, (1 << 15) | (1 << 20) | (1 << 26) | (1 << 24));
}

static void sub_02062628 (UnkStruct_02061AB4 * param0)
{
    (void)0;
}

static int sub_0206262C (UnkStruct_0203CDB0 * param0, int param1)
{
    if ((param1 >= 0x65) && (param1 <= 0x74)) {
        param1 -= 0x65;
        param1 = sub_0203F164(param0, param1);
    }

    return param1;
}

static void sub_02062648 (UnkStruct_02061AB4 * param0)
{
    if (sub_020628D0(param0, (1 << 12))) {
        sub_020642F8(param0);
    }
}

static void sub_02062660 (UnkStruct_02061AB4 * param0)
{
    sub_0206239C(param0);
    sub_02063400(param0);
}

static void sub_02062670 (UnkStruct_02061AB4 * param0)
{
    const UnkStruct_02061830 * v0 = sub_02062A40(param0);

    if (sub_02062CA8(v0) == 0) {
        return;
    }

    sub_02062648(param0);
    sub_02062A0C(param0, 0);
    ov5_021EDD78(param0, 0);

    if (sub_02062D4C(param0) == 0) {
        sub_020623D4(param0);
        sub_02062B54(param0);
        sub_02062D40(param0);
    }
}

int sub_020626B4 (const UnkStruct_02061AB4 * param0)
{
    u16 v0 = (u16)sub_02062960(param0);

    if (v0 == 0xffff) {
        return 1;
    }

    return 0;
}

static void sub_020626D0 (UnkStruct_02061AB4 * param0, const UnkStruct_020619DC * param1, int param2)
{
    GF_ASSERT(sub_02062E94(param0) == 1);

    sub_02062E78(param0, 0);
    sub_02062914(param0, param2);
    sub_0206295C(param0, sub_0206311C(param1));
    sub_02062954(param0, sub_02063114(param1));
}

static void sub_02062714 (UnkStruct_02061AB4 * param0, int param1, const UnkStruct_020619DC * param2)
{
    GF_ASSERT(sub_020631D8(param2) == 1);

    sub_02062E78(param0, 1);
    sub_0206295C(param0, sub_0206311C(param2));
    sub_02062954(param0, sub_020631F4(param2));
    sub_02062914(param0, param1);
}

int sub_02062758 (const UnkStruct_02061AB4 * param0, int param1)
{
    int v0;

    v0 = sub_02062C0C(param0);
    v0 += param1;

    return v0;
}

int sub_02062764 (const UnkStruct_02061AB4 * param0, int param1, int param2)
{
    if (sub_020628D8(param0, (1 << 0)) == 0) {
        return 0;
    }

    if (sub_02062910(param0) != param1) {
        return 0;
    }

    if (sub_02062918(param0) != param2) {
        if (sub_02062E94(param0) == 0) {
            return 0;
        }

        if (sub_02062C18(param0) != param2) {
            return 0;
        }
    }

    return 1;
}

int sub_020627B4 (const UnkStruct_02061AB4 * param0, int param1, int param2, int param3)
{
    if (sub_020628D8(param0, (1 << 0)) == 0) {
        return 0;
    }

    {
        int v0 = sub_02062924(param0);

        if (v0 != param1) {
            return 0;
        }
    }

    return sub_02062764(param0, param2, param3);
}

static void sub_020627E8 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_02061AB4 * v0 = (UnkStruct_02061AB4 *)param1;

    sub_02063410(v0);

    if (sub_02062CF8(v0) == 0) {
        return;
    }

    sub_02062804(v0);
}

static void sub_02062804 (UnkStruct_02061AB4 * param0)
{
    const UnkStruct_02061830 * v0 = sub_02062A40(param0);

    if (sub_02062CA8(v0) == 1) {
        ov5_021ECCC8(param0);
    }
}

static UnkStruct_02061830 * sub_0206281C (const UnkStruct_02061830 * param0)
{
    return (UnkStruct_02061830 * )param0;
}

void sub_02062820 (UnkStruct_02061830 * param0, int param1)
{
    param0->unk_04 = param1;
}

int sub_02062824 (const UnkStruct_02061830 * param0)
{
    return param0->unk_04;
}

static void sub_02062828 (UnkStruct_02061830 * param0)
{
    param0->unk_08++;
}

static void sub_02062830 (UnkStruct_02061830 * param0)
{
    param0->unk_08--;
}

void sub_02062838 (UnkStruct_02061830 * param0, u32 param1)
{
    param0->unk_00 |= param1;
}

void sub_02062840 (UnkStruct_02061830 * param0, u32 param1)
{
    param0->unk_00 &= ~param1;
}

u32 sub_0206284C (const UnkStruct_02061830 * param0, u32 param1)
{
    return(param0->unk_00 & param1);
}

void sub_02062854 (UnkStruct_02061830 * param0, int param1)
{
    param0->unk_0C = param1;
}

int sub_02062858 (const UnkStruct_02061830 * param0)
{
    return param0->unk_0C;
}

UnkStruct_ov5_021ED0A4 * sub_0206285C (const UnkStruct_02061830 * param0)
{
    return &(((UnkStruct_02061830 *)param0)->unk_18);
}

void sub_02062860 (UnkStruct_02061830 * param0, UnkStruct_02061AB4 * param1)
{
    param0->unk_124 = param1;
}

const UnkStruct_02061AB4 * sub_02062868 (const UnkStruct_02061830 * param0)
{
    return param0->unk_124;
}

static UnkStruct_02061AB4 * sub_02062870 (const UnkStruct_02061830 * param0)
{
    return param0->unk_124;
}

UnkStruct_02061AB4 * sub_02062878 (const UnkStruct_02061830 * param0)
{
    return param0->unk_124;
}

void sub_02062880 (const UnkStruct_02061AB4 ** param0)
{
    (*param0)++;
}

void sub_0206288C (UnkStruct_02061830 * param0, UnkStruct_0203CDB0 * param1)
{
    param0->unk_128 = param1;
}

UnkStruct_0203CDB0 * sub_02062894 (const UnkStruct_02061830 * param0)
{
    return param0->unk_128;
}

void sub_0206289C (UnkStruct_02061830 * param0, NARC * param1)
{
    param0->unk_14 = param1;
}

NARC * sub_020628A0 (const UnkStruct_02061830 * param0)
{
    GF_ASSERT(param0->unk_14 != NULL);
    return ((UnkStruct_02061830 *)param0)->unk_14;
}

void sub_020628B4 (UnkStruct_02061AB4 * param0, u32 param1)
{
    param0->unk_00 = param1;
}

u32 sub_020628B8 (const UnkStruct_02061AB4 * param0)
{
    return param0->unk_00;
}

void sub_020628BC (UnkStruct_02061AB4 * param0, u32 param1)
{
    param0->unk_00 |= param1;
}

void sub_020628C4 (UnkStruct_02061AB4 * param0, u32 param1)
{
    param0->unk_00 &= ~param1;
}

u32 sub_020628D0 (const UnkStruct_02061AB4 * param0, u32 param1)
{
    return param0->unk_00 & param1;
}

u32 sub_020628D8 (const UnkStruct_02061AB4 * param0, u32 param1)
{
    if ((param0->unk_00 & param1)) {
        return 1;
    }

    return 0;
}

void sub_020628E8 (UnkStruct_02061AB4 * param0, u32 param1)
{
    param0->unk_04 = param1;
}

u32 sub_020628EC (const UnkStruct_02061AB4 * param0)
{
    return param0->unk_04;
}

void sub_020628F0 (UnkStruct_02061AB4 * param0, u32 param1)
{
    param0->unk_04 |= param1;
}

void sub_020628F8 (UnkStruct_02061AB4 * param0, u32 param1)
{
    param0->unk_04 &= ~param1;
}

u32 sub_02062904 (const UnkStruct_02061AB4 * param0, u32 param1)
{
    return(param0->unk_04 & param1);
}

void sub_0206290C (UnkStruct_02061AB4 * param0, u32 param1)
{
    param0->unk_08 = param1;
}

u32 sub_02062910 (const UnkStruct_02061AB4 * param0)
{
    return param0->unk_08;
}

void sub_02062914 (UnkStruct_02061AB4 * param0, int param1)
{
    param0->unk_0C = param1;
}

int sub_02062918 (const UnkStruct_02061AB4 * param0)
{
    return param0->unk_0C;
}

void sub_0206291C (UnkStruct_02061AB4 * param0, u32 param1)
{
    param0->unk_10 = param1;
}

u32 sub_02062920 (const UnkStruct_02061AB4 * param0)
{
    return param0->unk_10;
}

u32 sub_02062924 (const UnkStruct_02061AB4 * param0)
{
    u32 v0 = sub_02062920(param0);

    if (sub_020677F4(v0) == 1) {
        v0 = sub_02067800(param0);
    }

    return v0;
}

void sub_02062944 (UnkStruct_02061AB4 * param0, u32 param1)
{
    param0->unk_14 = param1;
}

u32 sub_02062948 (const UnkStruct_02061AB4 * param0)
{
    return param0->unk_14;
}

void sub_0206294C (UnkStruct_02061AB4 * param0, u32 param1)
{
    param0->unk_18 = param1;
}

u32 sub_02062950 (const UnkStruct_02061AB4 * param0)
{
    return param0->unk_18;
}

void sub_02062954 (UnkStruct_02061AB4 * param0, u32 param1)
{
    param0->unk_1C = param1;
}

u32 sub_02062958 (const UnkStruct_02061AB4 * param0)
{
    return param0->unk_1C;
}

void sub_0206295C (UnkStruct_02061AB4 * param0, u32 param1)
{
    param0->unk_20 = param1;
}

u32 sub_02062960 (const UnkStruct_02061AB4 * param0)
{
    return param0->unk_20;
}

void sub_02062964 (UnkStruct_02061AB4 * param0, int param1)
{
    param0->unk_24 = param1;
}

u32 sub_02062968 (const UnkStruct_02061AB4 * param0)
{
    return param0->unk_24;
}

void sub_0206296C (UnkStruct_02061AB4 * param0, int param1)
{
    param0->unk_30 = param0->unk_28;
    param0->unk_28 = param1;
}

void sub_02062974 (UnkStruct_02061AB4 * param0, int param1)
{
    if (sub_020628D0(param0, (1 << 7)) == 0) {
        param0->unk_30 = param0->unk_28;
        param0->unk_28 = param1;
    }
}

int sub_0206298C (const UnkStruct_02061AB4 * param0)
{
    return param0->unk_28;
}

int sub_02062990 (const UnkStruct_02061AB4 * param0)
{
    return param0->unk_30;
}

void sub_02062994 (UnkStruct_02061AB4 * param0, int param1)
{
    param0->unk_34 = param0->unk_2C;
    param0->unk_2C = param1;
}

int sub_0206299C (const UnkStruct_02061AB4 * param0)
{
    return param0->unk_2C;
}

void sub_020629A0 (UnkStruct_02061AB4 * param0, int param1)
{
    sub_02062974(param0, param1);
    sub_02062994(param0, param1);
}

void sub_020629B4 (UnkStruct_02061AB4 * param0, int param1, int param2)
{
    switch (param2) {
    case 0:
        param0->unk_38 = param1;
        break;
    case 1:
        param0->unk_3C = param1;
        break;
    case 2:
        param0->unk_40 = param1;
        break;
    default:
        GF_ASSERT(FALSE);
    }
}

int sub_020629D8 (const UnkStruct_02061AB4 * param0, int param1)
{
    switch (param1) {
    case 0:
        return param0->unk_38;
    case 1:
        return param0->unk_3C;
    case 2:
        return param0->unk_40;
    }

    GF_ASSERT(FALSE);
    return 0;
}

void sub_020629FC (UnkStruct_02061AB4 * param0, int param1)
{
    param0->unk_44 = param1;
}

int sub_02062A00 (const UnkStruct_02061AB4 * param0)
{
    return param0->unk_44;
}

void sub_02062A04 (UnkStruct_02061AB4 * param0, int param1)
{
    param0->unk_48 = param1;
}

int sub_02062A08 (const UnkStruct_02061AB4 * param0)
{
    return param0->unk_48;
}

void sub_02062A0C (UnkStruct_02061AB4 * param0, u32 param1)
{
    param0->unk_A0 = param1;
}

u32 sub_02062A14 (const UnkStruct_02061AB4 * param0)
{
    return param0->unk_A0;
}

void sub_02062A1C (UnkStruct_02061AB4 * param0, UnkStruct_0201CD38 * param1)
{
    param0->unk_B0 = param1;
}

UnkStruct_0201CD38 * sub_02062A24 (const UnkStruct_02061AB4 * param0)
{
    return param0->unk_B0;
}

void sub_02062A2C (const UnkStruct_02061AB4 * param0)
{
    sub_0200DA58(sub_02062A24(param0));
}

void sub_02062A38 (UnkStruct_02061AB4 * param0, const UnkStruct_02061830 * param1)
{
    param0->unk_B4 = param1;
}

const UnkStruct_02061830 * sub_02062A40 (const UnkStruct_02061AB4 * param0)
{
    return param0->unk_B4;
}

static UnkStruct_02061830 * sub_02062A48 (const UnkStruct_02061AB4 * param0)
{
    return sub_0206281C(param0->unk_B4);
}

void * sub_02062A54 (UnkStruct_02061AB4 * param0, int param1)
{
    void * v0;

    GF_ASSERT(param1 <= 16);

    v0 = sub_02062A78(param0);
    memset(v0, 0, param1);

    return v0;
}

void * sub_02062A78 (UnkStruct_02061AB4 * param0)
{
    return param0->unk_D8;
}

void * sub_02062A7C (UnkStruct_02061AB4 * param0, int param1)
{
    u8 * v0;

    GF_ASSERT(param1 <= 16);

    v0 = sub_02062AA0(param0);
    memset(v0, 0, param1);

    return v0;
}

void * sub_02062AA0 (UnkStruct_02061AB4 * param0)
{
    return param0->unk_E8;
}

void * sub_02062AA4 (UnkStruct_02061AB4 * param0, int param1)
{
    u8 * v0;

    GF_ASSERT(param1 <= 16);

    v0 = sub_02062AC8(param0);
    memset(v0, 0, param1);

    return v0;
}

void * sub_02062AC8 (UnkStruct_02061AB4 * param0)
{
    return param0->unk_F8;
}

void * sub_02062ACC (UnkStruct_02061AB4 * param0, int param1)
{
    u8 * v0;

    GF_ASSERT(param1 <= 32);

    v0 = sub_02062AF0(param0);
    memset(v0, 0, param1);

    return v0;
}

void * sub_02062AF0 (UnkStruct_02061AB4 * param0)
{
    return param0->unk_108;
}

void sub_02062AF8 (UnkStruct_02061AB4 * param0, UnkFuncPtr_020EDF0C param1)
{
    param0->unk_B8 = param1;
}

void sub_02062B00 (UnkStruct_02061AB4 * param0)
{
    param0->unk_B8(param0);
}

void sub_02062B0C (UnkStruct_02061AB4 * param0, UnkFuncPtr_020EDF0C_1 param1)
{
    param0->unk_BC = param1;
}

void sub_02062B14 (UnkStruct_02061AB4 * param0)
{
    param0->unk_BC(param0);
}

void sub_02062B20 (UnkStruct_02061AB4 * param0, UnkFuncPtr_020EDF0C_2 param1)
{
    param0->unk_C0 = param1;
}

void sub_02062B28 (UnkStruct_02061AB4 * param0)
{
    param0->unk_C0(param0);
}

void sub_02062B34 (UnkStruct_02061AB4 * param0)
{
    const UnkStruct_020EDF0C * v0 = sub_0206320C(sub_02062948(param0));
    v0->unk_10(param0);
}

void sub_02062B4C (UnkStruct_02061AB4 * param0, UnkFuncPtr_ov5_021FB0F0 param1)
{
    param0->unk_C4 = param1;
}

void sub_02062B54 (UnkStruct_02061AB4 * param0)
{
    param0->unk_C4(param0);
}

void sub_02062B60 (UnkStruct_02061AB4 * param0, UnkFuncPtr_ov5_021FB0F0_1 param1)
{
    param0->unk_C8 = param1;
}

void sub_02062B68 (UnkStruct_02061AB4 * param0)
{
    param0->unk_C8(param0);
}

void sub_02062B74 (UnkStruct_02061AB4 * param0, UnkFuncPtr_ov5_021FB0F0_2 param1)
{
    param0->unk_CC = param1;
}

void sub_02062B7C (UnkStruct_02061AB4 * param0)
{
    param0->unk_CC(param0);
}

void sub_02062B88 (UnkStruct_02061AB4 * param0, UnkFuncPtr_ov5_021FB0F0_3 param1)
{
    param0->unk_D0 = param1;
}

void sub_02062B90 (UnkStruct_02061AB4 * param0)
{
    param0->unk_D0(param0);
}

void sub_02062B9C (UnkStruct_02061AB4 * param0, UnkFuncPtr_ov5_021FB0F0_4 param1)
{
    param0->unk_D4 = param1;
}

void sub_02062BA4 (UnkStruct_02061AB4 * param0)
{
    param0->unk_D4(param0);
}

void sub_02062BB0 (UnkStruct_02061AB4 * param0, int param1)
{
    param0->unk_A4 = param1;
}

int sub_02062BB8 (const UnkStruct_02061AB4 * param0)
{
    return param0->unk_A4;
}

void sub_02062BC0 (UnkStruct_02061AB4 * param0, int param1)
{
    param0->unk_A8 = param1;
}

void sub_02062BC8 (UnkStruct_02061AB4 * param0)
{
    param0->unk_A8++;
}

int sub_02062BD8 (const UnkStruct_02061AB4 * param0)
{
    return param0->unk_A8;
}

void sub_02062BE0 (UnkStruct_02061AB4 * param0, u32 param1)
{
    param0->unk_AC = param1;
}

u32 sub_02062BE8 (const UnkStruct_02061AB4 * param0)
{
    return param0->unk_AC;
}

void sub_02062BF0 (UnkStruct_02061AB4 * param0, u32 param1)
{
    param0->unk_AE = param1;
}

u32 sub_02062BF8 (const UnkStruct_02061AB4 * param0)
{
    return param0->unk_AE;
}

UnkStruct_0203CDB0 * sub_02062C00 (const UnkStruct_02061AB4 * param0)
{
    UnkStruct_02061830 * v0;

    v0 = sub_02062A48(param0);
    return sub_02062894(v0);
}

int sub_02062C0C (const UnkStruct_02061AB4 * param0)
{
    return sub_02062858(sub_02062A40(param0));
}

int sub_02062C18 (const UnkStruct_02061AB4 * param0)
{
    GF_ASSERT(sub_02062E94(param0) == 1);
    return sub_02062958(param0);
}

void sub_02062C30 (UnkStruct_02061830 * param0)
{
    sub_02062838(param0, (1 << 1) | (1 << 2));
}

void sub_02062C3C (UnkStruct_02061830 * param0)
{
    sub_02062840(param0, (1 << 1) | (1 << 2));
}

void sub_02062C48 (UnkStruct_02061830 * param0)
{
    int v0 = sub_02062824(param0);
    UnkStruct_02061AB4 * v1 = sub_02062878(param0);

    do {
        if (sub_02062CF8(v1)) {
            sub_02062DD0(v1);
        }

        v1++;
        v0--;
    } while (v0);
}

void sub_02062C78 (UnkStruct_02061830 * param0)
{
    int v0 = sub_02062824(param0);
    UnkStruct_02061AB4 * v1 = sub_02062878(param0);

    do {
        if (sub_02062CF8(v1)) {
            sub_02062DDC(v1);
        }

        v1++;
        v0--;
    } while (v0);
}

int sub_02062CA8 (const UnkStruct_02061830 * param0)
{
    if (sub_0206284C(param0, (1 << 0))) {
        return 1;
    }

    return 0;
}

u32 sub_02062CBC (const UnkStruct_02061AB4 * param0, u32 param1)
{
    const UnkStruct_02061830 * v0 = sub_02062A40(param0);

    return sub_0206284C(v0, param1);
}

void sub_02062CCC (UnkStruct_02061830 * param0, int param1)
{
    if (param1 == 0) {
        sub_02062838(param0, (1 << 3));
    } else {
        sub_02062840(param0, (1 << 3));
    }
}

int sub_02062CE4 (const UnkStruct_02061830 * param0)
{
    if (sub_0206284C(param0, (1 << 3))) {
        return 0;
    }

    return 1;
}

int sub_02062CF8 (const UnkStruct_02061AB4 * param0)
{
    return sub_020628D8(param0, (1 << 0));
}

void sub_02062D04 (UnkStruct_02061AB4 * param0)
{
    sub_020628BC(param0, (1 << 1));
}

void sub_02062D10 (UnkStruct_02061AB4 * param0)
{
    sub_020628C4(param0, (1 << 1));
}

int sub_02062D1C (const UnkStruct_02061AB4 * param0)
{
    return sub_020628D8(param0, (1 << 1));
}

void sub_02062D28 (UnkStruct_02061AB4 * param0)
{
    sub_020628BC(param0, (1 << 2));
}

void sub_02062D34 (UnkStruct_02061AB4 * param0)
{
    sub_020628C4(param0, (1 << 3));
}

void sub_02062D40 (UnkStruct_02061AB4 * param0)
{
    sub_020628BC(param0, (1 << 14));
}

int sub_02062D4C (const UnkStruct_02061AB4 * param0)
{
    return sub_020628D8(param0, (1 << 14));
}

int sub_02062D58 (const UnkStruct_02061AB4 * param0)
{
    return sub_020628D8(param0, (1 << 9));
}

void sub_02062D64 (UnkStruct_02061AB4 * param0, int param1)
{
    if (param1 == 1) {
        sub_020628BC(param0, (1 << 9));
    } else {
        sub_020628C4(param0, (1 << 9));
    }
}

void sub_02062D80 (UnkStruct_02061AB4 * param0, int param1)
{
    if (param1 == 1) {
        sub_020628C4(param0, (1 << 18));
    } else {
        sub_020628BC(param0, (1 << 18));
    }
}

int sub_02062D9C (UnkStruct_02061AB4 * param0)
{
    if (sub_020628D8(param0, (1 << 19)) == 1) {
        return 0;
    }

    return 1;
}

void sub_02062DB4 (UnkStruct_02061AB4 * param0, int param1)
{
    if (param1 == 1) {
        sub_020628BC(param0, (1 << 19));
    } else {
        sub_020628C4(param0, (1 << 19));
    }
}

void sub_02062DD0 (UnkStruct_02061AB4 * param0)
{
    sub_020628BC(param0, (1 << 6));
}

void sub_02062DDC (UnkStruct_02061AB4 * param0)
{
    sub_020628C4(param0, (1 << 6));
}

int sub_02062DE8 (const UnkStruct_02061AB4 * param0)
{
    if (sub_020628D8(param0, (1 << 6)) == 1) {
        return 1;
    }

    return 0;
}

int sub_02062DFC (const UnkStruct_02061AB4 * param0)
{
    const UnkStruct_02061830 * v0;

    v0 = sub_02062A40(param0);

    if (sub_02062CA8(v0) == 0) {
        return 0;
    }

    if (sub_020628D0(param0, (1 << 14)) == 0) {
        return 0;
    }

    return 1;
}

void sub_02062E28 (UnkStruct_02061AB4 * param0, int param1)
{
    if (param1 == 1) {
        sub_020628BC(param0, (1 << 23));
    } else {
        sub_020628C4(param0, (1 << 23));
    }
}

int sub_02062E44 (const UnkStruct_02061AB4 * param0)
{
    if (sub_020628D0(param0, (1 << 23))) {
        return 1;
    }

    return 0;
}

void sub_02062E5C (UnkStruct_02061AB4 * param0, int param1)
{
    if (param1 == 1) {
        sub_020628BC(param0, (1 << 10));
    } else {
        sub_020628C4(param0, (1 << 10));
    }
}

void sub_02062E78 (UnkStruct_02061AB4 * param0, int param1)
{
    if (param1 == 1) {
        sub_020628BC(param0, (1 << 25));
    } else {
        sub_020628C4(param0, (1 << 25));
    }
}

int sub_02062E94 (const UnkStruct_02061AB4 * param0)
{
    if (sub_020628D0(param0, (1 << 25))) {
        return 1;
    }

    return 0;
}

void sub_02062EAC (UnkStruct_02061AB4 * param0, int param1)
{
    if (param1 == 1) {
        sub_020628BC(param0, (1 << 26));
    } else {
        sub_020628C4(param0, (1 << 26));
    }
}

int sub_02062EC8 (const UnkStruct_02061AB4 * param0)
{
    if (sub_020628D0(param0, (1 << 26))) {
        return 1;
    }

    return 0;
}

void sub_02062EE0 (UnkStruct_02061AB4 * param0, int param1)
{
    if (param1 == 1) {
        sub_020628BC(param0, (1 << 27));
    } else {
        sub_020628C4(param0, (1 << 27));
    }
}

int sub_02062EFC (const UnkStruct_02061AB4 * param0)
{
    if (sub_020628D0(param0, (1 << 27))) {
        return 1;
    }

    return 0;
}

void sub_02062F14 (UnkStruct_02061AB4 * param0, int param1)
{
    if (param1 == 1) {
        sub_020628BC(param0, (1 << 28));
    } else {
        sub_020628C4(param0, (1 << 28));
    }
}

int sub_02062F30 (const UnkStruct_02061AB4 * param0)
{
    if (sub_020628D0(param0, (1 << 28))) {
        return 1;
    }

    return 0;
}

void sub_02062F48 (UnkStruct_02061AB4 * param0, int param1)
{
    if (param1 == 1) {
        sub_020628BC(param0, (1 << 24));
    } else {
        sub_020628C4(param0, (1 << 24));
    }
}

int sub_02062F64 (const UnkStruct_02061AB4 * param0)
{
    if (sub_020628D0(param0, (1 << 24))) {
        return 1;
    }

    return 0;
}

int sub_02062F7C (const UnkStruct_02061AB4 * param0)
{
    if (sub_020628D0(param0, (1 << 4))) {
        return 1;
    }

    return 0;
}

void sub_02062F90 (UnkStruct_02061AB4 * param0, int param1)
{
    if (param1 == 1) {
        sub_020628BC(param0, (1 << 29));
    } else {
        sub_020628C4(param0, (1 << 29));
    }
}

int sub_02062FAC (const UnkStruct_02061AB4 * param0)
{
    if (sub_020628D0(param0, (1 << 29))) {
        return 1;
    }

    return 0;
}

void sub_02062FC4 (UnkStruct_02061AB4 * param0, int param1)
{
    if (param1 == 1) {
        sub_020628F0(param0, (1 << 2));
    } else {
        sub_020628F8(param0, (1 << 2));
    }
}

int sub_02062FDC (const UnkStruct_02061AB4 * param0)
{
    if (sub_02062904(param0, (1 << 2))) {
        return 1;
    }

    return 0;
}

int sub_02062FF0 (const UnkStruct_02061AB4 * param0)
{
    return param0->unk_4C;
}

void sub_02062FF4 (UnkStruct_02061AB4 * param0, int param1)
{
    param0->unk_4C = param1;
}

int sub_02062FF8 (const UnkStruct_02061AB4 * param0)
{
    return param0->unk_50;
}

void sub_02062FFC (UnkStruct_02061AB4 * param0, int param1)
{
    param0->unk_50 = param1;
}

int sub_02063000 (const UnkStruct_02061AB4 * param0)
{
    return param0->unk_54;
}

void sub_02063004 (UnkStruct_02061AB4 * param0, int param1)
{
    param0->unk_54 = param1;
}

int sub_02063008 (const UnkStruct_02061AB4 * param0)
{
    return param0->unk_58;
}

void sub_0206300C (UnkStruct_02061AB4 * param0, int param1)
{
    param0->unk_58 = param1;
}

int sub_02063010 (const UnkStruct_02061AB4 * param0)
{
    return param0->unk_5C;
}

void sub_02063014 (UnkStruct_02061AB4 * param0, int param1)
{
    param0->unk_5C = param1;
}

int sub_02063018 (const UnkStruct_02061AB4 * param0)
{
    return param0->unk_60;
}

void sub_0206301C (UnkStruct_02061AB4 * param0, int param1)
{
    param0->unk_60 = param1;
}

int sub_02063020 (const UnkStruct_02061AB4 * param0)
{
    return param0->unk_64;
}

void sub_02063024 (UnkStruct_02061AB4 * param0, int param1)
{
    param0->unk_64 = param1;
}

void sub_02063028 (UnkStruct_02061AB4 * param0, int param1)
{
    param0->unk_64 += param1;
}

int sub_02063030 (const UnkStruct_02061AB4 * param0)
{
    return param0->unk_68;
}

void sub_02063034 (UnkStruct_02061AB4 * param0, int param1)
{
    param0->unk_68 = param1;
}

void sub_02063038 (UnkStruct_02061AB4 * param0, int param1)
{
    param0->unk_68 += param1;
}

int sub_02063040 (const UnkStruct_02061AB4 * param0)
{
    return param0->unk_6C;
}

void sub_02063044 (UnkStruct_02061AB4 * param0, int param1)
{
    param0->unk_6C = param1;
}

void sub_02063048 (UnkStruct_02061AB4 * param0, int param1)
{
    param0->unk_6C += param1;
}

void sub_02063050 (const UnkStruct_02061AB4 * param0, VecFx32 * param1)
{
    *param1 = param0->unk_70;
}

void sub_02063060 (UnkStruct_02061AB4 * param0, const VecFx32 * param1)
{
    param0->unk_70 = *param1;
}

const VecFx32 * sub_02063070 (const UnkStruct_02061AB4 * param0)
{
    return &param0->unk_70;
}

fx32 sub_02063074 (const UnkStruct_02061AB4 * param0)
{
    return param0->unk_70.y;
}

void sub_02063078 (const UnkStruct_02061AB4 * param0, VecFx32 * param1)
{
    *param1 = param0->unk_7C;
}

void sub_02063088 (UnkStruct_02061AB4 * param0, const VecFx32 * param1)
{
    param0->unk_7C = *param1;
}

VecFx32 * sub_02063098 (UnkStruct_02061AB4 * param0)
{
    return &param0->unk_7C;
}

void sub_0206309C (const UnkStruct_02061AB4 * param0, VecFx32 * param1)
{
    *param1 = param0->unk_88;
}

void sub_020630AC (UnkStruct_02061AB4 * param0, const VecFx32 * param1)
{
    param0->unk_88 = *param1;
}

void sub_020630BC (const UnkStruct_02061AB4 * param0, VecFx32 * param1)
{
    *param1 = param0->unk_94;
}

void sub_020630CC (UnkStruct_02061AB4 * param0, const VecFx32 * param1)
{
    param0->unk_94 = *param1;
}

int sub_020630DC (const UnkStruct_02061AB4 * param0)
{
    fx32 v0 = sub_02063074(param0);
    int v1 = (((v0) >> 3) / FX32_ONE);

    return v1;
}

void sub_020630F0 (UnkStruct_020619DC * param0, int param1)
{
    param0->unk_00 = param1;
}

int sub_020630F4 (const UnkStruct_020619DC * param0)
{
    return param0->unk_00;
}

void sub_020630F8 (UnkStruct_020619DC * param0, int param1)
{
    param0->unk_02 = param1;
}

int sub_020630FC (const UnkStruct_020619DC * param0)
{
    return param0->unk_02;
}

void sub_02063100 (UnkStruct_020619DC * param0, int param1)
{
    param0->unk_04 = param1;
}

int sub_02063104 (const UnkStruct_020619DC * param0)
{
    return param0->unk_04;
}

void sub_02063108 (UnkStruct_020619DC * param0, int param1)
{
    param0->unk_06 = param1;
}

int sub_0206310C (const UnkStruct_020619DC * param0)
{
    return param0->unk_06;
}

void sub_02063110 (UnkStruct_020619DC * param0, int param1)
{
    param0->unk_08 = param1;
}

int sub_02063114 (const UnkStruct_020619DC * param0)
{
    return param0->unk_08;
}

void sub_02063118 (UnkStruct_020619DC * param0, int param1)
{
    param0->unk_0A = param1;
}

int sub_0206311C (const UnkStruct_020619DC * param0)
{
    return param0->unk_0A;
}

void sub_02063120 (UnkStruct_020619DC * param0, int param1)
{
    param0->unk_0C = param1;
}

int sub_02063124 (const UnkStruct_020619DC * param0)
{
    return param0->unk_0C;
}

void sub_0206312C (UnkStruct_020619DC * param0, int param1, int param2)
{
    switch (param2) {
    case 0:
        param0->unk_0E = param1;
        break;
    case 1:
        param0->unk_10 = param1;
        break;
    case 2:
        param0->unk_12 = param1;
        break;
    default: GF_ASSERT(FALSE);
    }
}

int sub_02063150 (const UnkStruct_020619DC * param0, int param1)
{
    switch (param1) {
    case 0:
        return param0->unk_0E;
    case 1:
        return param0->unk_10;
    case 2:
        return param0->unk_12;
    }

    GF_ASSERT(FALSE);
    return 0;
}

void sub_02063174 (UnkStruct_020619DC * param0, int param1)
{
    param0->unk_14 = param1;
}

int sub_02063178 (const UnkStruct_020619DC * param0)
{
    return param0->unk_14;
}

void sub_02063180 (UnkStruct_020619DC * param0, int param1)
{
    param0->unk_18 = param1;
}

int sub_02063184 (const UnkStruct_020619DC * param0)
{
    return param0->unk_18;
}

void sub_0206318C (UnkStruct_020619DC * param0, int param1)
{
    param0->unk_1A = param1;
}

int sub_02063190 (const UnkStruct_020619DC * param0)
{
    return param0->unk_1A;
}

void sub_02063194 (UnkStruct_020619DC * param0, int param1)
{
    param0->unk_1E = param1;
}

int sub_02063198 (const UnkStruct_020619DC * param0)
{
    return param0->unk_1E;
}

void sub_0206319C (UnkStruct_020619DC * param0, int param1)
{
    param0->unk_1C = param1;
}

int sub_020631A0 (const UnkStruct_020619DC * param0)
{
    return param0->unk_1C;
}

static const UnkStruct_020619DC * sub_020631A4 (int param0, int param1, const UnkStruct_020619DC * param2)
{
    int v0 = 0;

    do {
        if (sub_020631D8(&param2[v0]) == 0) {
            if (sub_020630F4(&param2[v0]) == param0) {
                return &param2[v0];
            }
        }

        v0++;
    } while (v0 < param1);

    return NULL;
}

static int sub_020631D8 (const UnkStruct_020619DC * param0)
{
    u16 v0 = (u16)sub_0206311C(param0);

    if (v0 == 0xffff) {
        return 1;
    }

    return 0;
}

static int sub_020631F4 (const UnkStruct_020619DC * param0)
{
    GF_ASSERT(sub_020631D8(param0) == 1);
    return sub_02063114(param0);
}

static const UnkStruct_020EDF0C * sub_0206320C (u32 param0)
{
    GF_ASSERT(param0 < 0x44);
    return Unk_020EE3A8[param0];
}

static UnkFuncPtr_020EDF0C sub_02063224 (const UnkStruct_020EDF0C * param0)
{
    return param0->unk_04;
}

static UnkFuncPtr_020EDF0C_1 sub_02063228 (const UnkStruct_020EDF0C * param0)
{
    return param0->unk_08;
}

static UnkFuncPtr_020EDF0C_2 sub_0206322C (const UnkStruct_020EDF0C * param0)
{
    return param0->unk_0C;
}

static UnkFuncPtr_ov5_021FB0F0 sub_02063230 (const UnkStruct_ov5_021FB0F0 * param0)
{
    return param0->unk_00;
}

static UnkFuncPtr_ov5_021FB0F0_1 sub_02063234 (const UnkStruct_ov5_021FB0F0 * param0)
{
    return param0->unk_04;
}

static UnkFuncPtr_ov5_021FB0F0_2 sub_02063238 (const UnkStruct_ov5_021FB0F0 * param0)
{
    return param0->unk_08;
}

static UnkFuncPtr_ov5_021FB0F0_3 sub_0206323C (const UnkStruct_ov5_021FB0F0 * param0)
{
    return param0->unk_0C;
}

static UnkFuncPtr_ov5_021FB0F0_4 sub_02063240 (const UnkStruct_ov5_021FB0F0 * param0)
{
    return param0->unk_10;
}

static const UnkStruct_ov5_021FB0F0 * sub_02063244 (u32 param0)
{
    const UnkStruct_ov5_021FB97C * v0 = Unk_ov5_021FB97C;

    do {
        if (v0->unk_00 == param0) {
            return v0->unk_04;
        }

        v0++;
    } while (v0->unk_00 != 0xffff);

    GF_ASSERT(FALSE);
    return NULL;
}

UnkStruct_02061AB4 * sub_0206326C (const UnkStruct_02061830 * param0, int param1, int param2, int param3)
{
    int v0;
    UnkStruct_02061AB4 * v1;

    v0 = sub_02062824(param0);
    v1 = sub_02062878(param0);

    do {
        if (sub_020628D0(v1, (1 << 0))) {
            if (param3) {
                if ((sub_02063008(v1) == param1) && (sub_02063018(v1) == param2)) {
                    return v1;
                }
            }

            if ((sub_02063020(v1) == param1) && (sub_02063040(v1) == param2)) {
                return v1;
            }
        }

        v1++;
        v0--;
    } while (v0);

    return NULL;
}

void sub_020632D4 (UnkStruct_02061AB4 * param0, const VecFx32 * param1, int param2)
{
    int v0, v1, v2;

    v0 = (((param1->x) >> 4) / FX32_ONE);
    sub_02063024(param0, v0);

    v1 = (((param1->y) >> 3) / FX32_ONE);
    sub_02063034(param0, v1);

    v2 = (((param1->z) >> 4) / FX32_ONE);
    sub_02063044(param0, v2);

    sub_02063060(param0, param1);
    sub_02064208(param0);

    sub_0206296C(param0, param2);

    sub_020656DC(param0);
    sub_020628BC(param0, (1 << 2));
    sub_020628C4(param0, (1 << 1) | (1 << 3));
}

void sub_02063340 (UnkStruct_02061AB4 * param0, int param1, int param2, int param3, int param4)
{
    VecFx32 v0;

    v0.x = (((param1) << 4) * FX32_ONE) + (((16 * FX32_ONE) >> 1));
    sub_02063024(param0, param1);

    v0.y = (((param2) << 3) * FX32_ONE) + 0;
    sub_02063034(param0, param2);

    v0.z = (((param3) << 4) * FX32_ONE) + (((16 * FX32_ONE) >> 1));
    sub_02063044(param0, param3);

    sub_02063060(param0, &v0);
    sub_02064208(param0);

    sub_0206296C(param0, param4);

    sub_020628BC(param0, (1 << 2));
    sub_020628C4(param0, (1 << 1) | (1 << 3));

    sub_020656DC(param0);
}

void sub_020633A8 (UnkStruct_02061AB4 * param0, u32 param1)
{
    sub_02062B28(param0);
    sub_02062944(param0, param1);
    sub_0206239C(param0);
    sub_02063400(param0);
}

void sub_020633C8 (UnkStruct_02061AB4 * param0, int param1)
{
    sub_0206290C(param0, param1);

    sub_02062D28(param0);
    sub_02062618(param0);
}

void sub_020633E0 (UnkStruct_02061AB4 * param0)
{
    return;
}

void sub_020633E4 (UnkStruct_02061AB4 * param0)
{
    return;
}

void sub_020633E8 (UnkStruct_02061AB4 * param0)
{
    return;
}

void sub_020633EC (UnkStruct_02061AB4 * param0)
{
    return;
}

void sub_020633F0 (UnkStruct_02061AB4 * param0)
{
    return;
}

void sub_020633F4 (UnkStruct_02061AB4 * param0)
{
    return;
}

void sub_020633F8 (UnkStruct_02061AB4 * param0)
{
    return;
}

void sub_020633FC (UnkStruct_02061AB4 * param0)
{
    return;
}
