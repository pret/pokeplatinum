#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"

#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_plstring_decl.h"
#include "struct_decls/struct_02028430_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "struct_decls/struct_02073C74_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_decls/struct_0207D3C0_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "constdata/const_020F1E88.h"

#include "struct_defs/struct_02013A04_t.h"
#include "functypes/funcptr_0201CE28.h"
#include "struct_defs/struct_0202818C.h"
#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0206A844.h"
#include "struct_defs/struct_02097728.h"
#include "struct_defs/struct_02098C44.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_02240FA8.h"

#include "unk_0200112C.h"
#include "unk_02001AF4.h"
#include "unk_02002328.h"
#include "unk_02002B7C.h"
#include "unk_02005474.h"
#include "unk_0200AC5C.h"
#include "unk_0200B358.h"
#include "unk_0200D9E8.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02013A04.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201CCF0.h"
#include "unk_0201D670.h"
#include "plstring.h"
#include "unk_02025E08.h"
#include "unk_020279FC.h"
#include "unk_02028124.h"
#include "unk_0203CC84.h"
#include "unk_0203D1B8.h"
#include "unk_020508D4.h"
#include "unk_0206A780.h"
#include "party.h"
#include "item.h"
#include "unk_0207D3B8.h"
#include "unk_02097624.h"
#include "overlay005/ov5_021D37AC.h"
#include "overlay005/ov5_021D431C.h"
#include "overlay006/ov6_02247078.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u8 unk_05;
    u16 unk_06;
    PLString * unk_08;
} UnkStruct_02072EB8;

typedef struct {
    u32 unk_00;
    u32 unk_04;
} UnkStruct_020F0524;

typedef struct {
    UnkStruct_0200B358 * unk_00;
    PLString * unk_04;
    PLString * unk_08;
    PLString * unk_0C;
    PLString * unk_10[6];
} UnkStruct_02072334_sub1;

typedef struct {
    int unk_00;
    int * unk_04;
    UnkStruct_0201CD38 * unk_08;
    UnkFuncPtr_0201CE28 unk_0C;
    u16 unk_10;
    u16 unk_12;
    u16 unk_14;
    u8 unk_16;
    u8 unk_17;
    u8 unk_18;
    u8 unk_19;
    u8 unk_1A;
    u8 unk_1B;
    UnkStruct_02072EB8 unk_1C[20];
    UnkStruct_0200B144 * unk_10C;
    UnkStruct_02072334_sub1 unk_110;
    u8 unk_138;
    u8 unk_139;
    u8 unk_13A;
    u8 unk_13B_0 : 4;
    u8 unk_13B_4 : 2;
    u8 unk_13B_6 : 2;
    u16 unk_13C;
    u16 unk_13E;
    UnkStruct_ov84_02240FA8 unk_140;
    UnkStruct_0200112C * unk_160;
    UnkStruct_02013A04 * unk_164;
    UnkStruct_02001AF4 * unk_168;
    UnkStruct_0203CDB0 * unk_16C;
    UnkStruct_02018340 * unk_170;
    UnkStruct_0205AA50 unk_174;
    UnkStruct_0205AA50 unk_184;
    UnkStruct_0205AA50 unk_194;
    UnkStruct_0206A844 * unk_1A4;
    UnkStruct_02097728 * unk_1A8;
    UnkStruct_02028430 * unk_1AC;
    UnkStruct_0207D3C0 * unk_1B0;
    UnkStruct_02098C44 * unk_1B4;
} UnkStruct_02072334;

typedef struct {
    int unk_00;
    int unk_04;
} UnkStruct_020736D8;

void sub_020736D8(UnkStruct_020508D4 * param0);
void sub_020722AC(void * param0, int * param1);
static void sub_02072334(UnkStruct_02072334 * param0);
static void sub_02072364(UnkStruct_0201CD38 * param0, void * param1);
static void sub_02072370(UnkStruct_0201CD38 * param0, void * param1);
static void sub_02072390(UnkStruct_0201CD38 * param0, void * param1);
static void sub_02072418(UnkStruct_0201CD38 * param0, void * param1);
static void sub_02072470(UnkStruct_0201CD38 * param0, void * param1);
static void sub_02072518(UnkStruct_0201CD38 * param0, void * param1);
static void sub_02072534(UnkStruct_0201CD38 * param0, void * param1);
static void sub_02072550(UnkStruct_0201CD38 * param0, void * param1);
static void sub_020725D0(UnkStruct_0201CD38 * param0, void * param1);
static void sub_020726B4(UnkStruct_0201CD38 * param0, void * param1);
static void sub_02072754(UnkStruct_0201CD38 * param0, void * param1);
static void sub_020727F8(UnkStruct_0201CD38 * param0, void * param1);
static void sub_02072878(UnkStruct_0201CD38 * param0, void * param1);
static void sub_02072EA4(UnkStruct_02072334 * param0, UnkFuncPtr_0201CE28 param1, UnkFuncPtr_0201CE28 param2);
static void sub_02072EB8(UnkStruct_02072EB8 * param0, u8 param1);
static void sub_02072ED0(UnkStruct_02072EB8 * param0, u8 param1, int param2);
static void sub_02072F04(UnkStruct_02072EB8 * param0, u8 param1);
static void sub_020729B4(UnkStruct_02072334 * param0);
static void sub_02072BBC(UnkStruct_0200112C * param0, u32 param1, u8 param2);
static void sub_02072C0C(UnkStruct_0200112C * param0, u32 param1, u8 param2);
static void sub_02072C98(UnkStruct_02072334 * param0, u8 param1, u8 param2);
static void sub_02072DA4(UnkStruct_0200112C * param0, u32 param1, u8 param2);
static void sub_02072DB8(UnkStruct_02072334 * param0);
static void sub_02072E4C(UnkStruct_02072334 * param0);
static void sub_02072F30(UnkStruct_02072334 * param0, UnkStruct_021C0794 * param1, int param2);
static void sub_02073020(UnkStruct_02072334 * param0, u8 param1);
static BOOL sub_02073060(UnkStruct_02072334 * param0);
static void sub_020730B8(UnkStruct_02072334 * param0, u8 param1, BOOL param2);
static void sub_02073130(UnkStruct_02072334 * param0);
static void sub_020731A4(UnkStruct_02072334 * param0);
static void sub_020731F4(UnkStruct_02072334 * param0);
static void sub_02073294(UnkStruct_02072334 * param0);
static void sub_020732C4(UnkStruct_02072334 * param0, int param1, u8 param2, u8 param3, int param4);
static void sub_02073398(UnkStruct_02072334 * param0);
static BOOL sub_020733B4(UnkStruct_02072334 * param0);
static void sub_020733E0(UnkStruct_02072334 * param0);
static int sub_0207340C(UnkStruct_02072334 * param0);
static int sub_02073438(UnkStruct_02072334 * param0, int param1);
static int sub_02073480(UnkStruct_02072334 * param0);
static int sub_020734F4(UnkStruct_02072334 * param0, u8 param1);
static int sub_02073524(UnkStruct_02072334 * param0, int param1);
static int sub_020735E8(UnkStruct_02072334 * param0);

static const UnkStruct_ov84_02240FA8 Unk_020F0504 = {
    NULL,
    NULL,
    NULL,
    NULL,
    0x0,
    0x7,
    0x2,
    0xA,
    0x1,
    0x0,
    0x1,
    0xF,
    0x2,
    0x0,
    0x1,
    0x1,
    0x0,
    0x0,
    NULL
};

static const UnkStruct_020F0524 Unk_020F0524[] = {
    {0x1, 0x0},
    {0x2, 0x1},
    {0x3, 0x2},
    {0x4, 0x3}
};

void sub_020722AC (void * param0, int * param1)
{
    UnkStruct_02072334 * v0 = NULL;
    UnkStruct_021C0794 * v1;

    Heap_Create(3, 43, 0x5000);

    v0 = Heap_AllocFromHeap(43, sizeof(UnkStruct_02072334));
    MI_CpuClear8(v0, sizeof(UnkStruct_02072334));
    v0->unk_04 = param1;

    v1 = sub_0203D174(param0);

    v0->unk_16C = (UnkStruct_0203CDB0 *)param0;
    v0->unk_00 = 43;
    v0->unk_19 = 0;
    v0->unk_1A = 0xFF;
    v0->unk_16 = sub_02027AC0(sub_02025E44(v1));
    v0->unk_14 = sub_02027B50(sub_02025E44(v1));

    sub_02072ED0(v0->unk_1C, 20, v0->unk_00);
    sub_02072F30(v0, v1, v0->unk_00);
    sub_02073130(v0);

    v0->unk_08 = sub_0200D9E8(sub_02072370, v0, 0);
}

void sub_02072334 (UnkStruct_02072334 * param0)
{
    sub_0200DA58(param0->unk_08);
    *(param0->unk_04) = 1;
    sub_020731A4(param0);
    sub_02072F04(param0->unk_1C, 20);
    Heap_FreeToHeap(param0);
    Heap_Destroy(param0->unk_00);
}

static void sub_02072364 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_02072334 * v0 = (UnkStruct_02072334 *)param1;
    sub_02072334(v0);
}

static void sub_02072370 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_02072334 * v0 = (UnkStruct_02072334 *)param1;

    sub_020731F4(v0);
    sub_020729B4(v0);
    sub_0201CECC(param0, sub_02072390);
}

static void sub_02072390 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_02072334 * v0 = (UnkStruct_02072334 *)param1;
    s32 v1;

    v1 = sub_02001288(v0->unk_160);

    if (v0->unk_1A4 != NULL) {
        sub_0206A870(v0->unk_1A4);
    }

    if (Unk_021BF67C.unk_48 & PAD_BUTTON_B) {
        sub_02072EA4(v0, sub_02072518, sub_02072364);
        sub_02005748(1500);
        return;
    }

    if (Unk_021BF67C.unk_48 & PAD_BUTTON_A) {
        sub_02005748(1500);

        switch (v1) {
        case 0xffffffff:
        case 0xfffffffe:
        case 0xFFFF:
            sub_02072EA4(v0, sub_02072518, sub_02072364);
            break;
        default:
            v0->unk_18 = v1;
            sub_02072EA4(v0, sub_02072518, sub_02072418);
            break;
        }
    }

    return;
}

static void sub_02072418 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_02072334 * v0 = (UnkStruct_02072334 *)param1;

    switch (v0->unk_10) {
    case 0:
        sub_020731F4(v0);
        sub_02072C98(v0, 0, 0);
        sub_020732C4(v0, 0, v0->unk_16, 0, 1);
        ++v0->unk_10;
        break;
    case 1:
        if (!sub_020733B4(v0)) {
            break;
        }

        sub_0201CECC(param0, sub_02072470);
        v0->unk_10 = 0;
        break;
    }

    return;
}

static void sub_02072470 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_02072334 * v0 = (UnkStruct_02072334 *)param1;
    s32 v1;

    v1 = sub_02001288(v0->unk_160);

    if (Unk_021BF67C.unk_48 & PAD_BUTTON_B) {
        sub_02072EA4(v0, sub_02072534, sub_02072370);
        sub_02005748(1500);
        return;
    }

    if (Unk_021BF67C.unk_48 & PAD_BUTTON_A) {
        sub_02005748(1500);

        switch (v1) {
        case 0xffffffff:
        case 0xfffffffe:
        case 3:
            sub_02072EA4(v0, sub_02072534, sub_02072370);
            break;
        case 1:
            sub_02072EA4(v0, sub_020725D0, NULL);
            break;
        case 2:
            sub_02072EA4(v0, sub_02072754, sub_020727F8);
            break;
        case 0:
        default:
            sub_0201CECC(param0, sub_02072550);
            break;
        }
    }

    return;
}

static void sub_02072518 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_02072334 * v0 = (UnkStruct_02072334 *)param1;

    sub_02072DB8(v0);
    sub_02073294(v0);
    sub_0201CECC(param0, v0->unk_0C);
}

static void sub_02072534 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_02072334 * v0 = (UnkStruct_02072334 *)param1;

    sub_02072E4C(v0);
    sub_02073294(v0);
    sub_0201CECC(param0, v0->unk_0C);
}

static void sub_02072550 (UnkStruct_0201CD38 * param0, void * param1)
{
    int v0;
    UnkStruct_02072334 * v1 = (UnkStruct_02072334 *)param1;

    switch (v1->unk_10) {
    case 0:
        if (!sub_02073438(v1, 0)) {
            return;
        }

        sub_020734F4(v1, 1);
        break;
    case 1:
        if (!sub_020735E8(v1)) {
            return;
        }

        break;
    case 2:
        if (!sub_02073480(v1)) {
            return;
        }

        break;
    case 3:
        if (!sub_02073438(v1, 1)) {
            return;
        }

        sub_020731F4(v1);
        sub_020729B4(v1);
        v1->unk_10 = 0;
        sub_0201CECC(param0, sub_02072390);
        return;
    }

    v1->unk_10++;
    return;
}

static void sub_020725D0 (UnkStruct_0201CD38 * param0, void * param1)
{
    int v0;
    UnkStruct_02072334 * v1 = (UnkStruct_02072334 *)param1;

    switch (v1->unk_10) {
    case 0:
        sub_020732C4(v1, 1, v1->unk_16, 0, 1);
        break;
    case 1:
        if (!sub_020733B4(v1)) {
            return;
        }

        sub_020733E0(v1);
        break;
    case 2:
        v0 = sub_0207340C(v1);

        if (v0 < 0) {
            return;
        }

        if (v0) {
            sub_020732C4(v1, 2, v1->unk_16, 0, 0);
            v1->unk_10 = 4;
        } else {
            v1->unk_10 = 3;
        }
        return;
    case 3:
        sub_02073398(v1);
        sub_02072EA4(v1, sub_02072534, sub_02072370);
        v1->unk_10 = 0;
        return;
    case 4:
        if (!sub_020733B4(v1)) {
            return;
        }

        sub_020733E0(v1);
        break;
    case 5:
        v0 = sub_0207340C(v1);

        if (v0 < 0) {
            return;
        }

        if (v0) {
            sub_02072EA4(v1, sub_02072878, NULL);
        } else {
            sub_02072EA4(v1, sub_020726B4, sub_02072534);
        }

        sub_02073398(v1);
        v1->unk_10 = 0;
        return;
    }

    v1->unk_10++;
    return;
}

static void sub_020726B4 (UnkStruct_0201CD38 * param0, void * param1)
{
    int v0;
    UnkStruct_02072334 * v1 = (UnkStruct_02072334 *)param1;

    switch (v1->unk_10) {
    case 0:
        if (v1->unk_0C == NULL) {
            sub_020731F4(v1);
            sub_02072C98(v1, 0, 1);
        }

        if (sub_02073060(v1)) {
            sub_020732C4(v1, 3, v1->unk_16, 0, 1);
        } else {
            sub_020732C4(v1, 4, v1->unk_16, 0, 1);
        }
        break;
    case 1:
        if (!sub_020733B4(v1)) {
            return;
        }
        break;
    case 2:
        if (!(Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B))) {
            return;
        }

        sub_02073398(v1);
        sub_02072EA4(v1, sub_02072534, sub_02072370);

        v1->unk_10 = 0;
        return;
    }

    v1->unk_10++;
    return;
}

static void sub_02072754 (UnkStruct_0201CD38 * param0, void * param1)
{
    u8 v0;
    UnkStruct_02098C44 * v1;
    UnkStruct_02072334 * v2 = (UnkStruct_02072334 *)param1;

    switch (v2->unk_10) {
    case 0:
        if (!sub_02073438(v2, 0)) {
            return;
        }

        sub_020734F4(v2, 1);
        break;
    case 1:
        if (!sub_02073524(v2, 14)) {
            return;
        }
        break;
    case 2:
        if (!sub_02073480(v2)) {
            return;
        }
        break;
    case 3:
        if (!sub_02073438(v2, 1)) {
            return;
        }

        v0 = v2->unk_1B4->unk_22;
        Heap_FreeToHeap(v2->unk_1B4);

        if (v0 == 7) {
            sub_02072EA4(v2, v2->unk_0C, NULL);
            v2->unk_10 = 0;
            return;
        }

        sub_020730B8(v2, v0, 0);
        sub_02072EA4(v2, sub_02072370, NULL);
        v2->unk_10 = 0;
        return;
    }

    v2->unk_10++;
    return;
}

static void sub_020727F8 (UnkStruct_0201CD38 * param0, void * param1)
{
    int v0;
    UnkStruct_02072334 * v1 = (UnkStruct_02072334 *)param1;

    switch (v1->unk_10) {
    case 0:
        sub_020731F4(v1);
        sub_02072C98(v1, 0, 2);
        sub_020732C4(v1, 5, v1->unk_16, 0, 1);
        break;
    case 1:
        if (!sub_020733B4(v1)) {
            return;
        }
        break;
    case 2:
        if (!(Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B))) {
            return;
        }

        sub_02073398(v1);
        sub_02072EA4(v1, sub_02072534, sub_02072370);
        v1->unk_10 = 0;
        return;
    }

    v1->unk_10++;
    return;
}

static void sub_02072878 (UnkStruct_0201CD38 * param0, void * param1)
{
    int v0;
    u8 v1, v2;
    UnkStruct_02098C44 * v3;
    UnkStruct_02072334 * v4 = (UnkStruct_02072334 *)param1;

    switch (v4->unk_10) {
    case 0:
        if (!sub_02073438(v4, 0)) {
            return;
        }

        sub_020734F4(v4, 1);

        if (sub_0207D730(v4->unk_1B0, v4->unk_1C[v4->unk_18].unk_06, v4->unk_00) > 0) {
            v4->unk_13B_6 = 1;
        } else {
            v4->unk_13B_6 = 0;
        }
        break;
    case 1:

        if (!sub_02073524(v4, 9)) {
            return;
        }

        v1 = v4->unk_1B4->unk_22;
        v2 = v4->unk_1B4->unk_23;

        Heap_FreeToHeap(v4->unk_1B4);

        if ((v2 != 6) || (v1 == 7)) {
            v4->unk_0C = sub_020726B4;
            v4->unk_10 = 4;
            return;
        }

        v4->unk_17 = v1;
        v4->unk_1C[v4->unk_18].unk_01 = 0;
        break;
    case 2:
        v0 = sub_020735E8(v4);
        if (!v0) {
            return;
        }

        if (v0 == 1) {
            v4->unk_0C = sub_020726B4;
            v4->unk_10 = 4;
            return;
        }

        v4->unk_0C = sub_02072370;
        break;
    case 3:
        if (!sub_02073524(v4, 11)) {
            return;
        }

        Heap_FreeToHeap(v4->unk_1B4);
        sub_020730B8(v4, v4->unk_17, v4->unk_13B_6);
        v4->unk_13B_6 = 0;
        break;
    case 4:
        if (!sub_02073480(v4)) {
            return;
        }
        break;
    case 5:
        if (!sub_02073438(v4, 1)) {
            return;
        }

        sub_02072EA4(v4, v4->unk_0C, NULL);
        v4->unk_10 = 0;
        return;
    }

    ++v4->unk_10;
}

static void sub_020729B4 (UnkStruct_02072334 * param0)
{
    u8 v0 = 0, v1 = 0;
    UnkStruct_02072EB8 * v2;
    static const UnkStruct_ov61_0222C884 v3[2] = {
        {0x3, 0x13, 0x1, 0xC, 0x10, 0xD, 0x295},
        {0x3, 0x1, 0x1, 0x9, 0x2, 0xD, 0x283}
    };

    param0->unk_1A4 = sub_0206A780(param0->unk_00);

    sub_0206A8A0(param0->unk_1A4, 200, 10, 138);
    sub_0206A8C4(param0->unk_1A4, 0, 1);
    sub_0206A8C4(param0->unk_1A4, 1, 1);
    sub_0201A8D4(param0->unk_170, &(param0->unk_174), &v3[0]);
    sub_0201A8D4(param0->unk_170, &(param0->unk_194), &v3[1]);
    sub_0201ADA4(&param0->unk_174, ((15 << 4) | 15));
    sub_0201ADA4(&param0->unk_194, ((15 << 4) | 15));

    param0->unk_164 = sub_02013A04(param0->unk_1B + 1, param0->unk_00);

    for (v0 = 0; v0 < 20; v0++) {
        v2 = &(param0->unk_1C[v0]);

        if (!v2->unk_01) {
            continue;
        }

        sub_02013A6C(param0->unk_164, v2->unk_08, v2->unk_00);
        v1++;
    }

    sub_02013A6C(param0->unk_164, param0->unk_110.unk_08, 0xFFFF);
    v1++;

    MI_CpuCopy8((void *)&Unk_020F0504, (void *)&(param0->unk_140), sizeof(UnkStruct_ov84_02240FA8));

    param0->unk_140.unk_0C = &(param0->unk_174);
    param0->unk_140.unk_00 = param0->unk_164;
    param0->unk_140.unk_1C = (void *)param0;
    param0->unk_140.unk_10 = v1;
    param0->unk_140.unk_17_0 = 6;
    param0->unk_140.unk_04 = sub_02072C0C;
    param0->unk_140.unk_08 = sub_02072BBC;

    if (param0->unk_13B_4) {
        if (param0->unk_13C == 0) {
            if ((param0->unk_13E != 0) && (param0->unk_13E >= (v1 - 1))) {
                --param0->unk_13E;
            }
        } else {
            if (param0->unk_13C + 7 >= v1) {
                --param0->unk_13C;
            }
        }

        param0->unk_13B_4 = 0;
    }

    param0->unk_160 = sub_0200112C(&(param0->unk_140), param0->unk_13C, param0->unk_13E, param0->unk_00);

    sub_0200DC48(&param0->unk_174, 0, (1024 - (18 + 12) - 9), 11);
    sub_0201D78C(&param0->unk_194, 0, param0->unk_110.unk_0C, 2, 0, 0, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | (((15 & 0xff) << 0)))), NULL);
    sub_0200DC48(&param0->unk_194, 0, (1024 - (18 + 12) - 9), 11);
    sub_0201C3C0(param0->unk_170, 3);

    param0->unk_13B_0 = 0;
}

static void sub_02072BBC (UnkStruct_0200112C * param0, u32 param1, u8 param2)
{
    UnkStruct_02072334 * v0 = (UnkStruct_02072334 *)sub_02001504(param0, 19);

    if (param1 == 0xFFFF) {
        sub_0200147C(param0, 1, 15, 2);
    } else {
        if (v0->unk_1C[param1].unk_04) {
            sub_0200147C(param0, 3, 15, 4);
        } else {
            sub_0200147C(param0, 7, 15, 8);
        }
    }
}

static void sub_02072C0C (UnkStruct_0200112C * param0, u32 param1, u8 param2)
{
    u16 v0, v1, v2;
    UnkStruct_02072334 * v3 = (UnkStruct_02072334 *)sub_02001504(param0, 19);

    sub_020014DC(param0, &v0, &v1);
    v2 = sub_02001504(param0, 2);

    if (!param2) {
        sub_02005748(1500);
    }

    if (v0 == 0) {
        sub_0206A8C4(v3->unk_1A4, 0, 0);
    } else {
        sub_0206A8C4(v3->unk_1A4, 0, 1);
    }

    if (v0 < (v2 - 7)) {
        sub_0206A8C4(v3->unk_1A4, 1, 1);
    } else {
        sub_0206A8C4(v3->unk_1A4, 1, 0);
    }
}

static void sub_02072C98 (UnkStruct_02072334 * param0, u8 param1, u8 param2)
{
    u8 v0 = 0, v1 = 0;
    static const UnkStruct_ov61_0222C884 v2 = {
        0x3,
        0x1,
        0x1,
        0xE,
        0x8,
        0xD,
        0x295
    };

    v1 = NELEMS(Unk_020F0524);
    param0->unk_164 = sub_02013A04(v1, param0->unk_00);

    sub_0201A8D4(param0->unk_170, &(param0->unk_174), &v2);
    sub_0201ADA4(&param0->unk_174, ((15 << 4) | 15));

    for (v0 = 0; v0 < v1; v0++) {
        sub_02013A4C(param0->unk_164, param0->unk_10C, Unk_020F0524[v0].unk_00, Unk_020F0524[v0].unk_04);
    }

    MI_CpuCopy8((void *)&Unk_020F0504, (void *)&(param0->unk_140), sizeof(UnkStruct_ov84_02240FA8));

    param0->unk_140.unk_0C = &(param0->unk_174);
    param0->unk_140.unk_00 = param0->unk_164;
    param0->unk_140.unk_1C = (void *)param0;
    param0->unk_140.unk_10 = v1;
    param0->unk_140.unk_12 = 4;
    param0->unk_140.unk_1A_7 = 0;
    param0->unk_140.unk_04 = sub_02072DA4;
    param0->unk_160 = sub_0200112C(&(param0->unk_140), param1, param2, param0->unk_00);

    sub_0200DC48(&param0->unk_174, 0, (1024 - (18 + 12) - 9), 11);
    sub_0201C3C0(param0->unk_170, 3);

    param0->unk_13B_0 = 1;
}

static void sub_02072DA4 (UnkStruct_0200112C * param0, u32 param1, u8 param2)
{
    if (!param2) {
        sub_02005748(1500);
    }
}

static void sub_02072DB8 (UnkStruct_02072334 * param0)
{
    u16 v0, v1;

    sub_02001384(param0->unk_160, &v0, &v1);
    sub_02013A3C(param0->unk_164);

    sub_0201ACF4(&(param0->unk_194));
    sub_0200DC9C(&(param0->unk_194), 0);
    sub_0201A8FC(&(param0->unk_194));

    sub_0201ACF4(&(param0->unk_174));
    sub_0200DC9C(&(param0->unk_174), 0);
    sub_0201A8FC(&(param0->unk_174));

    param0->unk_13C = v0;
    param0->unk_13E = v1;

    if (param0->unk_1A4 != NULL) {
        sub_0206A844(param0->unk_1A4);
        param0->unk_1A4 = NULL;
    }

    sub_0201C3C0(param0->unk_170, 3);
}

static void sub_02072E4C (UnkStruct_02072334 * param0)
{
    u16 v0, v1;

    sub_0201ACF4(&(param0->unk_174));
    sub_0200DC9C(&(param0->unk_174), 0);
    sub_02001384(param0->unk_160, &v0, &v1);
    sub_02013A3C(param0->unk_164);
    sub_0201A8FC(&(param0->unk_174));
    sub_02073398(param0);
    sub_0201C3C0(param0->unk_170, 3);
}

static void sub_02072EA4 (UnkStruct_02072334 * param0, UnkFuncPtr_0201CE28 param1, UnkFuncPtr_0201CE28 param2)
{
    sub_0201CECC(param0->unk_08, param1);

    param0->unk_10 = 0;
    param0->unk_0C = param2;
}

static void sub_02072EB8 (UnkStruct_02072EB8 * param0, u8 param1)
{
    param0->unk_00 = param1;
    param0->unk_01 = 0;
    param0->unk_02 = 0;
    param0->unk_03 = 0;

    if (param0->unk_08 != NULL) {
        PLString_Zero(param0->unk_08);
    }
}

static void sub_02072ED0 (UnkStruct_02072EB8 * param0, u8 param1, int param2)
{
    u8 v0 = 0;

    for (v0 = 0; v0 < param1; v0++) {
        param0[v0].unk_08 = PLString_AllocFromHeap(8, param2);
        sub_02072EB8(param0, v0);
    }
}

static void sub_02072F04 (UnkStruct_02072EB8 * param0, u8 param1)
{
    u8 v0 = 0;

    for (v0 = 0; v0 < param1; v0++) {
        if (param0[v0].unk_08 != NULL) {
            PLString_FreeToHeap(param0[v0].unk_08);
        }
    }
}

static void sub_02072F30 (UnkStruct_02072334 * param0, UnkStruct_021C0794 * param1, int param2)
{
    u8 v0 = 0, v1 = 0, v2 = 0xFF, v3 = 0;
    int v4;
    UnkStruct_02028430 * v5;
    UnkStruct_0202818C * v6;
    UnkStruct_02072EB8 * v7, * v8;

    v5 = sub_02028430(param1);

    param0->unk_1AC = v5;
    param0->unk_1B0 = sub_0207D990(param1);

    v6 = sub_0202818C(param2);

    for (v0 = 0; v0 < 20; v0++) {
        sub_020284CC(v5, 0, v0, v6);

        v7 = &(param0->unk_1C[v0]);
        v8 = &(param0->unk_1C[param0->unk_19]);

        sub_02072EB8(v7, v0);

        v7->unk_00 = v0;

        if (!sub_0202817C(v6)) {
            continue;
        }

        v7->unk_01 = 1;
        v7->unk_04 = sub_02028310(v6);
        v7->unk_05 = sub_02028314(v6);
        v7->unk_06 = sub_0207D310(v7->unk_05);

        PLString_ImportChars(v7->unk_08, sub_0202830C(v6));

        v7->unk_02 = param0->unk_19;
        v8->unk_03 = v7->unk_00;

        param0->unk_19 = v7->unk_00;
        param0->unk_1B++;

        if (param0->unk_1A == 0xFF) {
            param0->unk_1A = v0;
        }
    }

    param0->unk_1C[param0->unk_19].unk_03 = param0->unk_1A;
    param0->unk_1C[param0->unk_1A].unk_02 = param0->unk_19;

    Heap_FreeToHeap(v6);
}

static void sub_02073020 (UnkStruct_02072334 * param0, u8 param1)
{
    UnkStruct_02072EB8 * v0;

    v0 = &(param0->unk_1C[param1]);

    param0->unk_1C[v0->unk_02].unk_03 = v0->unk_03;
    param0->unk_1C[v0->unk_03].unk_02 = v0->unk_02;
    param0->unk_1C[param1].unk_01 = 0;
    param0->unk_13B_4 = 1;
}

static BOOL sub_02073060 (UnkStruct_02072334 * param0)
{
    UnkStruct_02072EB8 * v0;
    BOOL v1;

    v0 = &(param0->unk_1C[param0->unk_18]);
    v1 = sub_0207D55C(param0->unk_1B0, v0->unk_06, 1, param0->unk_00);

    if (v1) {
        sub_0207D570(param0->unk_1B0, v0->unk_06, 1, param0->unk_00);
    }

    sub_02028470(param0->unk_1AC, 0, param0->unk_18);
    sub_02073020(param0, param0->unk_18);
    sub_02072EB8(v0, param0->unk_18);

    return v1;
}

static void sub_020730B8 (UnkStruct_02072334 * param0, u8 param1, BOOL param2)
{
    UnkStruct_02072EB8 * v0;
    Party * v1;
    UnkStruct_02073C74 * v2;

    v0 = &(param0->unk_1C[param0->unk_18]);

    if (!v0->unk_01) {
        return;
    }

    v1 = Party_GetFromSavedata(sub_0203D174(param0->unk_16C));
    v2 = Party_GetPokemonBySlotIndex(v1, param1);

    sub_020977E4(param0->unk_1AC, param0->unk_18, v2, param0->unk_00);

    if (param2) {
        if (sub_0207D55C(param0->unk_1B0, v0->unk_06, 1, param0->unk_00)) {
            sub_0207D570(param0->unk_1B0, v0->unk_06, 1, param0->unk_00);
        }
    }

    sub_02073020(param0, param0->unk_18);
    sub_02072EB8(v0, param0->unk_18);
}

static void sub_02073130 (UnkStruct_02072334 * param0)
{
    UnkStruct_0200B144 * v0;
    int v1;
    PLString * v2;

    param0->unk_10C = sub_0200B144(1, 26, 408, param0->unk_00);
    param0->unk_110.unk_00 = sub_0200B368(1, 128, param0->unk_00);
    param0->unk_110.unk_04 = PLString_AllocFromHeap(128, param0->unk_00);
    param0->unk_110.unk_08 = sub_0200B1EC(param0->unk_10C, 4);
    param0->unk_110.unk_0C = sub_0200B1EC(param0->unk_10C, 0);

    for (v1 = 0; v1 < 6; v1++) {
        param0->unk_110.unk_10[v1] = sub_0200B1EC(param0->unk_10C, 6 + v1);
    }
}

static void sub_020731A4 (UnkStruct_02072334 * param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        PLString_FreeToHeap(param0->unk_110.unk_10[v0]);
    }

    PLString_FreeToHeap(param0->unk_110.unk_0C);
    PLString_FreeToHeap(param0->unk_110.unk_08);
    PLString_FreeToHeap(param0->unk_110.unk_04);
    sub_0200B3F0(param0->unk_110.unk_00);
    sub_0200B190(param0->unk_10C);
}

static void sub_020731F4 (UnkStruct_02072334 * param0)
{
    param0->unk_170 = sub_0203D170(param0->unk_16C);

    sub_0200DD0C(param0->unk_170, 3, (1024 - (18 + 12)), 10, param0->unk_14, param0->unk_00);
    sub_0200DAA4(param0->unk_170, 3, (1024 - (18 + 12) - 9), 11, 0, param0->unk_00);

    sub_02002E7C(0, 13 * 32, param0->unk_00);
    sub_02002E98(0, 12 * 32, param0->unk_00);

    sub_0201A7E8(param0->unk_170, &param0->unk_184, 3, 2, 19, 27, 4, 12, ((1024 - (18 + 12) - 9) - 27 * 4));
    sub_0201ADA4(&param0->unk_184, 0);
}

static void sub_02073294 (UnkStruct_02072334 * param0)
{
    sub_0201ACF4(&param0->unk_184);
    sub_0201A8FC(&param0->unk_184);

    MI_CpuClear8(&param0->unk_184, sizeof(UnkStruct_0205AA50));
    param0->unk_170 = NULL;
}

static void sub_020732C4 (UnkStruct_02072334 * param0, int param1, u8 param2, u8 param3, int param4)
{
    PLString * v0;

    if (param4) {
        sub_0200E060(&param0->unk_184, 1, (1024 - (18 + 12)), 10);
    }

    sub_0201AE78(&param0->unk_184, ((15 << 4) | 15), 0, 0, 27 * 8, 4 * 8);
    sub_02002AC8(1);
    sub_02002AE4(0);

    if (param1 == 0) {
        PLString_Zero(param0->unk_110.unk_04);
        sub_0200B48C(param0->unk_110.unk_00, 0, param0->unk_1C[param0->unk_18].unk_08, 2, 1, GAME_LANGUAGE);
        sub_0200C388(param0->unk_110.unk_00, param0->unk_110.unk_04, param0->unk_110.unk_10[param1]);

        v0 = param0->unk_110.unk_04;
    } else {
        v0 = param0->unk_110.unk_10[param1];
    }

    param0->unk_138 = sub_0201D78C(&param0->unk_184, 1, v0, 0, 0, param2, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | (((15 & 0xff) << 0)))), NULL);
    sub_0201A954(&param0->unk_184);
    param0->unk_139 = param3;
}

static void sub_02073398 (UnkStruct_02072334 * param0)
{
    sub_0200E084(&param0->unk_184, 1);
    sub_0201ACF4(&param0->unk_184);
}

static BOOL sub_020733B4 (UnkStruct_02072334 * param0)
{
    if (sub_0201D724(param0->unk_138)) {
        return 0;
    }

    if (param0->unk_139) {
        sub_02073398(param0);
    }

    return 1;
}

static void sub_020733E0 (UnkStruct_02072334 * param0)
{
    static const UnkStruct_ov61_0222C884 v0 = {
        0x3,
        0x19,
        0xD,
        0x6,
        0x4,
        0xD,
        0x355
    };

    param0->unk_168 = sub_02002100(param0->unk_170, &v0, (1024 - (18 + 12) - 9), 11, param0->unk_00);
}

static int sub_0207340C (UnkStruct_02072334 * param0)
{
    switch (sub_02002114(param0->unk_168, param0->unk_00)) {
    case 0:
        return 1;
    case 0xfffffffe:
        return 0;
    }

    return -1;
}

static int sub_02073438 (UnkStruct_02072334 * param0, int param1)
{
    switch (param0->unk_12) {
    case 0:
        sub_0200F174(0, param1, param1, 0x0, 6, 1, param0->unk_00);
        param0->unk_12++;
        break;
    case 1:
        if (!sub_0200F2AC()) {
            break;
        }

        param0->unk_12 = 0;
        return 1;
    }

    return 0;
}

static int sub_02073480 (UnkStruct_02072334 * param0)
{
    switch (param0->unk_12) {
    case 0:
        sub_020509D4(param0->unk_16C);
        param0->unk_12++;
        break;
    case 1:
        if (!sub_020509DC(param0->unk_16C)) {
            break;
        }

        ov6_02247078(param0->unk_16C, 90);
        ov6_022470E8(param0->unk_16C, 90);
        param0->unk_12++;
        break;
    case 2:
        if (!ov5_021D42F0(param0->unk_16C->unk_54, 90)) {
            break;
        }

        param0->unk_12 = 0;
        return 1;
    }

    return 0;
}

static int sub_020734F4 (UnkStruct_02072334 * param0, u8 param1)
{
    ov5_021D4D68(param0->unk_16C, 90);

    if (param1 == 0) {
        sub_02072DB8(param0);
    } else {
        sub_02072E4C(param0);
    }

    sub_02073294(param0);
    return 1;
}

static int sub_02073524 (UnkStruct_02072334 * param0, int param1)
{
    UnkStruct_02098C44 * v0;

    switch (param0->unk_12) {
    case 0:
        v0 = Heap_AllocFromHeap(param0->unk_00, sizeof(UnkStruct_02098C44));
        MI_CpuClear8(v0, sizeof(UnkStruct_02098C44));

        v0->unk_00 = Party_GetFromSavedata(sub_0203D174(param0->unk_16C));
        v0->unk_04 = sub_0207D990(sub_0203D174(param0->unk_16C));
        v0->unk_0C = sub_02025E44(sub_0203D174(param0->unk_16C));
        v0->unk_08 = sub_02028430(param0->unk_16C->unk_0C);
        v0->unk_21 = 0;
        v0->unk_20 = param1;
        v0->unk_24 = param0->unk_1C[param0->unk_18].unk_06;

        if (param1 == 11) {
            v0->unk_22 = param0->unk_17;
        }

        sub_0203CD84(param0->unk_16C, &Unk_020F1E88, v0);
        param0->unk_1B4 = v0;
        param0->unk_12++;
        break;
    case 1:
        if (sub_020509B4(param0->unk_16C)) {
            break;
        }

        param0->unk_12 = 0;
        return 1;
    }

    return 0;
}

static int sub_020735E8 (UnkStruct_02072334 * param0)
{
    int v0 = 0;

    switch (param0->unk_12) {
    case 0:
        if (param0->unk_1C[param0->unk_18].unk_01) {
            param0->unk_1A8 = sub_0203D94C(param0->unk_16C, 0, param0->unk_18, param0->unk_00);
        } else {
            param0->unk_1A8 = sub_0203D920(param0->unk_16C, 0, param0->unk_17, param0->unk_1C[param0->unk_18].unk_05, param0->unk_00);
        }

        param0->unk_12++;
        break;
    case 1:
        if (sub_020509B4(param0->unk_16C)) {
            break;
        }

        if (sub_02097728(param0->unk_1A8)) {
            param0->unk_1C[param0->unk_18].unk_01 = 1;
            sub_0209772C(param0->unk_1A8, 0, param0->unk_1C[param0->unk_18].unk_00);

            v0 = 2;
        } else {
            v0 = 1;
        }

        sub_02097770(param0->unk_1A8);
        param0->unk_12 = 0;
        return v0;
    }

    return 0;
}

static BOOL sub_02073694 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_020736D8 * v1 = sub_02050A64(param0);

    switch (v1->unk_04) {
    case 0:
        sub_020722AC(v0, &(v1->unk_00));
        v1->unk_04++;
        break;
    case 1:
        if (!v1->unk_00) {
            return 0;
        }

        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}

void sub_020736D8 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_020736D8 * v1 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_020736D8));

    v1->unk_00 = 0;
    v1->unk_04 = 0;

    sub_02050944(v0->unk_10, sub_02073694, v1);
}
