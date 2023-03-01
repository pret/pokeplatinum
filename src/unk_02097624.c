#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020067E8_decl.h"
#include "struct_decls/struct_02028430_decl.h"
#include "struct_decls/struct_02073C74_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_02014A84.h"
#include "struct_defs/struct_0202818C.h"
#include "struct_defs/struct_0208BE5C.h"
#include "struct_defs/struct_02097728.h"
#include "struct_defs/struct_020978D8.h"

#include "unk_020067E8.h"
#include "unk_02014A84.h"
#include "heap.h"
#include "string/strbuf.h"
#include "unk_02025E08.h"
#include "unk_02028124.h"
#include "unk_0202CD50.h"
#include "unk_02073C2C.h"
#include "item.h"
#include "unk_0209747C.h"
#include "overlay020/ov20_021D0D80.h"
#include "overlay075/ov75_021D0D80.h"

FS_EXTERN_OVERLAY(overlay20);
FS_EXTERN_OVERLAY(overlay75);

typedef struct {
    int unk_00;
    u16 unk_04;
    u16 unk_06;
    void * unk_08;
    UnkStruct_020067E8 * unk_0C;
    UnkStruct_020978D8 * unk_10;
    UnkStruct_02014A84 unk_14;
} UnkStruct_02097944;

static int sub_02097944(UnkStruct_020067E8 * param0, int * param1);
static int sub_020979A8(UnkStruct_020067E8 * param0, int * param1);
static int sub_02097AF8(UnkStruct_020067E8 * param0, int * param1);
UnkStruct_02097728 * sub_02097624(UnkStruct_021C0794 * param0, int param1, u8 param2, u8 param3, int param4);
UnkStruct_02097728 * sub_0209767C(UnkStruct_021C0794 * param0, int param1, u16 param2, int param3);
UnkStruct_02097728 * sub_020976BC(UnkStruct_021C0794 * param0, UnkStruct_02073C74 * param1, int param2);
UnkStruct_02097728 * sub_020976F4(UnkStruct_021C0794 * param0, u8 param1, int param2);
BOOL sub_02097728(UnkStruct_02097728 * param0);
int sub_0209772C(UnkStruct_02097728 * param0, int param1, u8 param2);
int sub_02097750(UnkStruct_02097728 * param0, UnkStruct_02073C74 * param1);
void sub_02097770(UnkStruct_02097728 * param0);
int sub_02097788(UnkStruct_02028430 * param0, UnkStruct_02073C74 * param1, int param2);
int sub_020977E4(UnkStruct_02028430 * param0, u16 param1, UnkStruct_02073C74 * param2, int param3);
UnkStruct_020978D8 * sub_02097834(const UnkStruct_0202818C * param0, int param1);
void sub_020978D8(UnkStruct_020978D8 * param0);
void sub_020978F0(UnkStruct_0202818C * param0, UnkStruct_020978D8 * param1);

const UnkStruct_0208BE5C Unk_020F64B0 = {
    sub_02097944,
    sub_020979A8,
    sub_02097AF8,
    0xFFFFFFFF
};

UnkStruct_02097728 * sub_02097624 (UnkStruct_021C0794 * param0, int param1, u8 param2, u8 param3, int param4)
{
    UnkStruct_02097728 * v0;
    UnkStruct_02028430 * v1;
    int v2;

    v1 = sub_02028430(param0);
    v0 = Heap_AllocFromHeapAtEnd(param4, sizeof(UnkStruct_02097728));

    MI_CpuClear8(v0, sizeof(UnkStruct_02097728));

    v0->unk_0F = param3;
    v0->unk_0E = param2;
    v0->unk_18 = v1;
    v0->unk_00 = 1;
    v0->unk_08 = param1;
    v0->unk_0C = 0;
    v0->unk_10 = param0;
    v0->unk_14 = sub_0202818C(param4);

    sub_02028124(v0->unk_14);
    sub_020281AC(v0->unk_14, 0xFFFF, param2, param0);

    return v0;
}

UnkStruct_02097728 * sub_0209767C (UnkStruct_021C0794 * param0, int param1, u16 param2, int param3)
{
    UnkStruct_02097728 * v0;
    UnkStruct_02028430 * v1;

    v0 = Heap_AllocFromHeapAtEnd(param3, sizeof(UnkStruct_02097728));
    MI_CpuClear8(v0, sizeof(UnkStruct_02097728));

    v0->unk_00 = 0;
    v0->unk_08 = param1;
    v0->unk_0C = param2;
    v0->unk_10 = param0;

    v1 = sub_02028430(param0);

    v0->unk_18 = v1;
    v0->unk_14 = sub_020284A8(v1, param1, param2, param3);

    return v0;
}

UnkStruct_02097728 * sub_020976BC (UnkStruct_021C0794 * param0, UnkStruct_02073C74 * param1, int param2)
{
    UnkStruct_02097728 * v0;

    v0 = Heap_AllocFromHeapAtEnd(param2, sizeof(UnkStruct_02097728));
    MI_CpuClear8(v0, sizeof(UnkStruct_02097728));

    v0->unk_00 = 0;
    v0->unk_10 = param0;
    v0->unk_14 = sub_0202818C(param2);

    sub_02074470(param1, 170, v0->unk_14);
    return v0;
}

UnkStruct_02097728 * sub_020976F4 (UnkStruct_021C0794 * param0, u8 param1, int param2)
{
    UnkStruct_02097728 * v0;

    v0 = Heap_AllocFromHeapAtEnd(param2, sizeof(UnkStruct_02097728));
    MI_CpuClear8(v0, sizeof(UnkStruct_02097728));

    v0->unk_00 = 0;
    v0->unk_10 = param0;
    v0->unk_14 = sub_0202818C(param2);

    sub_02028318(v0->unk_14, param1);
    return v0;
}

BOOL sub_02097728 (UnkStruct_02097728 * param0)
{
    return param0->unk_04;
}

int sub_0209772C (UnkStruct_02097728 * param0, int param1, u8 param2)
{
    if (!sub_02097728(param0)) {
        return 0;
    }

    sub_02028480(param0->unk_18, param1, param2, param0->unk_14);
    return 1;
}

int sub_02097750 (UnkStruct_02097728 * param0, UnkStruct_02073C74 * param1)
{
    if (!sub_02097728(param0)) {
        return 0;
    }

    sub_02074B30(param1, 170, param0->unk_14);
    return 1;
}

void sub_02097770 (UnkStruct_02097728 * param0)
{
    if (param0->unk_14 != NULL) {
        Heap_FreeToHeap(param0->unk_14);
    }

    Heap_FreeToHeap(param0);
}

int sub_02097788 (UnkStruct_02028430 * param0, UnkStruct_02073C74 * param1, int param2)
{
    int v0;
    int v1 = 0;
    UnkStruct_0202818C * v2 = NULL;

    v0 = sub_0202845C(param0, 0);

    if (v0 == 0xFFFFFFFF) {
        return 0xFFFFFFFF;
    }

    v2 = sub_0202818C(param2);

    sub_02074470(param1, 170, v2);
    sub_02028480(param0, 0, v0, v2);
    sub_02028124(v2);
    sub_02074B30(param1, 170, v2);
    sub_02074B30(param1, 6, &v1);
    Heap_FreeToHeap(v2);

    return v0;
}

int sub_020977E4 (UnkStruct_02028430 * param0, u16 param1, UnkStruct_02073C74 * param2, int param3)
{
    int v0 = 0;
    UnkStruct_0202818C * v1 = NULL;

    v1 = sub_020284A8(param0, 0, param1, param3);

    if (v1 == NULL) {
        return 0xFFFFFFFF;
    }

    v0 = sub_0207D310(sub_02028314(v1));

    sub_02074B30(param2, 170, v1);
    sub_02074B30(param2, 6, &v0);
    sub_02028470(param0, 0, param1);
    Heap_FreeToHeap(v1);

    return param1;
}

UnkStruct_020978D8 * sub_02097834 (const UnkStruct_0202818C * param0, int param1)
{
    u16 v0;
    UnkStruct_020978D8 * v1;

    v1 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_020978D8));
    MI_CpuClear8(v1, sizeof(UnkStruct_020978D8));

    v1->unk_00 = 0;
    v1->unk_08 = sub_02028308(param0);
    v1->unk_10 = PLString_Init(8, param1);

    PLString_FillWithChars(v1->unk_10, sub_0202830C((UnkStruct_0202818C *)param0));

    v1->unk_0F = sub_02028314(param0);
    v1->unk_0D = sub_02028320(param0);
    v1->unk_0E = sub_02028324(param0);

    for (v0 = 0; v0 < 3; v0++) {
        v1->unk_14[v0].val2 = sub_02028328(param0, v0, 2, sub_02028408(param0));
    }

    for (v0 = 0; v0 < 3; v0++) {
        sub_02014CC0(&v1->unk_1A[v0], sub_0202840C((UnkStruct_0202818C *)param0, v0));
    }

    return v1;
}

void sub_020978D8 (UnkStruct_020978D8 * param0)
{
    if (param0->unk_10 != NULL) {
        PLString_Free(param0->unk_10);
    }

    Heap_FreeToHeap(param0);
}

void sub_020978F0 (UnkStruct_0202818C * param0, UnkStruct_020978D8 * param1)
{
    u16 v0;

    for (v0 = 0; v0 < 3; v0++) {
        sub_0202841C(param0, &param1->unk_1A[v0], v0);
    }

    sub_02028318(param0, param1->unk_0F);
}

static BOOL sub_02097920 (UnkStruct_020067E8 ** param0)
{
    if (*param0) {
        if (sub_02006844(*param0)) {
            sub_02006814(*param0);
            *param0 = NULL;
            return 1;
        }
    }

    return 0;
}

static int sub_02097944 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_02097944 * v0 = NULL;
    UnkStruct_02097728 * v1 = (UnkStruct_02097728 *)sub_02006840(param0);

    Heap_Create(3, 40, 0x1000);
    v0 = sub_0200681C(param0, sizeof(UnkStruct_02097944), 40);
    MI_CpuClear8(v0, sizeof(UnkStruct_02097944));

    v0->unk_00 = 40;
    v0->unk_10 = sub_02097834(v1->unk_14, v0->unk_00);
    v0->unk_10->unk_04 = sub_02025E44(v1->unk_10);

    if (v1->unk_00 == 1) {
        v0->unk_10->unk_0F = v1->unk_0F;
    }

    if (v0->unk_10->unk_0F >= 12) {
        v0->unk_10->unk_0F = 0;
    }

    v0->unk_10->unk_00 = v1->unk_00;

    return 1;
}

static int sub_020979A8 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_02097944 * v0 = sub_0200682C(param0);
    UnkStruct_02097728 * v1 = (UnkStruct_02097728 *)sub_02006840(param0);

    FS_EXTERN_OVERLAY(overlay75);
    FS_EXTERN_OVERLAY(overlay20);

    static const UnkStruct_0208BE5C v2 = {
        ov75_021D0D80, ov75_021D0DF8, ov75_021D0E10, FS_OVERLAY_ID(overlay75),
    };
    static const UnkStruct_0208BE5C v3 = {
        ov20_021D0D80, ov20_021D0DF8, ov20_021D0EA8, FS_OVERLAY_ID(overlay20),
    };

    switch (*param1) {
    case 0:
        v0->unk_10->unk_00 = v1->unk_00;
        v0->unk_0C = sub_020067E8(&v2, v0->unk_10, v0->unk_00);
        *param1 = 1;
        break;
    case 1:
        if (!sub_02097920(&v0->unk_0C)) {
            break;
        }

        switch (v0->unk_10->unk_00) {
        case 0xFFFF:
            *param1 = 2;
            break;
        case 3:
            *param1 = 2;
            break;
        default:
            *param1 = 3;
            break;
        }
        break;
    case 2:
        if (v1->unk_00 == 1) {
            if (v0->unk_10->unk_00 == 3) {
                sub_020978F0(v1->unk_14, v0->unk_10);

                sub_0202CFEC(sub_0202CD88(v1->unk_10), 2);
                sub_0202CF28(sub_0202CD88(v1->unk_10), (1 + 44));
                v1->unk_04 = 1;
            } else {
                v1->unk_04 = 0;
            }
        }

        return 1;
    case 3:
        v0->unk_08 = sub_0209747C(2, 0, v1->unk_10, v0->unk_00);

        if (sub_02014BBC(&(v0->unk_10->unk_1A[v0->unk_10->unk_02]))) {
            sub_02014CC0(&(v0->unk_14), &(v0->unk_10->unk_1A[v0->unk_10->unk_02]));
        } else {
            sub_02014A9C(&(v0->unk_14), 3);
        }

        sub_02097500(v0->unk_08, &(v0->unk_14));
        v0->unk_0C = sub_020067E8(&v3, v0->unk_08, v0->unk_00);
        *param1 = 4;
        break;
    case 4:
        if (!sub_02097920(&v0->unk_0C)) {
            break;
        }

        if (sub_02097528(v0->unk_08) == 0) {
            sub_02097540(v0->unk_08, &(v0->unk_10->unk_1A[v0->unk_10->unk_02]));
        }

        sub_020974EC(v0->unk_08);
        *param1 = 0;
        break;
    }

    return 0;
}

static int sub_02097AF8 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_02097944 * v0 = sub_0200682C(param0);

    sub_020978D8(v0->unk_10);
    sub_02006830(param0);
    Heap_Destroy(v0->unk_00);

    return 1;
}
