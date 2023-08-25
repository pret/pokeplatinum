#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"

#include "struct_defs/struct_0200D0F4.h"
#include "overlay104/struct_ov104_0223F9E0.h"

#include "narc.h"
#include "unk_0200C6E4.h"
#include "unk_0200D9E8.h"
#include "heap.h"
#include "overlay016/ov16_0226DB7C.h"

typedef struct UnkStruct_ov16_0226DC24_t {
    UnkStruct_0200D0F4 * unk_00[5];
    UnkStruct_0201CD38 * unk_14;
} UnkStruct_ov16_0226DC24;

static void ov16_0226DE10(UnkStruct_0201CD38 * param0, void * param1);
void ov16_0226DB7C(UnkStruct_0200C6E4 * param0, UnkStruct_0200C704 * param1, UnkStruct_02002F38 * param2, int param3, u32 param4, u32 param5, u32 param6, u32 param7);
void ov16_0226DBFC(UnkStruct_0200C704 * param0, u32 param1, u32 param2, u32 param3, u32 param4);
UnkStruct_ov16_0226DC24 * ov16_0226DC24(UnkStruct_0200C6E4 * param0, UnkStruct_0200C704 * param1, int param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8);
void ov16_0226DCA8(UnkStruct_ov16_0226DC24 * param0);
void ov16_0226DD7C(UnkStruct_ov16_0226DC24 * param0, int param1, int param2, int param3, int param4);
void ov16_0226DDE8(UnkStruct_ov16_0226DC24 * param0);

static const UnkStruct_ov104_0223F9E0 Unk_ov16_02270AA4 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    NNS_G2D_VRAM_TYPE_2DSUB,
    {0x0, 0x0, 0x0, 0x0, 0xFFFFFFFF, 0xFFFFFFFF},
    0x0,
    0x0
};

void ov16_0226DB7C (UnkStruct_0200C6E4 * param0, UnkStruct_0200C704 * param1, UnkStruct_02002F38 * param2, int param3, u32 param4, u32 param5, u32 param6, u32 param7)
{
    NARC * v0;

    v0 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, param3);

    sub_0200CDC4(param2, 3, param0, param1, v0, 80, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, param5);
    sub_0200CC3C(param0, param1, v0, 250, 1, NNS_G2D_VRAM_TYPE_2DSUB, param4);
    sub_0200CE24(param0, param1, v0, 251, 1, param6);
    sub_0200CE54(param0, param1, v0, 252, 1, param7);
    NARC_dtor(v0);
}

void ov16_0226DBFC (UnkStruct_0200C704 * param0, u32 param1, u32 param2, u32 param3, u32 param4)
{
    sub_0200D070(param0, param1);
    sub_0200D080(param0, param2);
    sub_0200D090(param0, param3);
    sub_0200D0A0(param0, param4);
}

UnkStruct_ov16_0226DC24 * ov16_0226DC24 (UnkStruct_0200C6E4 * param0, UnkStruct_0200C704 * param1, int param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8)
{
    UnkStruct_ov16_0226DC24 * v0;
    UnkStruct_ov104_0223F9E0 v1;
    int v2;

    v1 = Unk_ov16_02270AA4;
    v1.unk_14[0] = param3;
    v1.unk_14[1] = param4;
    v1.unk_14[2] = param5;
    v1.unk_14[3] = param6;
    v1.unk_08 = param7;
    v1.unk_2C = param8;

    v0 = Heap_AllocFromHeap(param2, sizeof(UnkStruct_ov16_0226DC24));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov16_0226DC24));

    for (v2 = 0; v2 < 5; v2++) {
        v0->unk_00[v2] = sub_0200CE6C(param0, param1, &v1);
        sub_0200D3F4(v0->unk_00[v2], 0);
    }

    v0->unk_14 = sub_0200D9E8(ov16_0226DE10, v0, 40000);
    return v0;
}

void ov16_0226DCA8 (UnkStruct_ov16_0226DC24 * param0)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        sub_0200D0F4(param0->unk_00[v0]);
    }

    sub_0200DA58(param0->unk_14);
    Heap_FreeToHeap(param0);
}

void ov16_0226DCCC (UnkStruct_ov16_0226DC24 * param0, int param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8, fx32 param9)
{
    int v0;

    sub_0200D500(param0->unk_00[0], param1, param2, param9);
    sub_0200D500(param0->unk_00[1], param3, param4, param9);
    sub_0200D500(param0->unk_00[2], param5, param6, param9);
    sub_0200D500(param0->unk_00[3], param7, param8, param9);

    sub_0200D364(param0->unk_00[0], 0);
    sub_0200D364(param0->unk_00[1], 1);
    sub_0200D364(param0->unk_00[2], 2);
    sub_0200D364(param0->unk_00[3], 3);

    for (v0 = 0; v0 < 4; v0++) {
        sub_0200D3F4(param0->unk_00[v0], 1);
    }
}

void ov16_0226DD54 (UnkStruct_ov16_0226DC24 * param0, int param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8)
{
    ov16_0226DCCC(param0, param1, param2, param3, param4, param5, param6, param7, param8, (192 << FX32_SHIFT));
}

void ov16_0226DD7C (UnkStruct_ov16_0226DC24 * param0, int param1, int param2, int param3, int param4)
{
    ov16_0226DD54(param0, param1, param3, param2, param3, param1, param4, param2, param4);
}

void ov16_0226DD9C (UnkStruct_ov16_0226DC24 * param0, int param1, int param2, int param3, int param4, fx32 param5)
{
    ov16_0226DCCC(param0, param1, param3, param2, param3, param1, param4, param2, param4, param5);
}

void ov16_0226DDC0 (UnkStruct_ov16_0226DC24 * param0, int param1, int param2, int param3, fx32 param4)
{
    sub_0200D500(param0->unk_00[4], param1, param2, param4);
    sub_0200D364(param0->unk_00[4], param3);
    sub_0200D3F4(param0->unk_00[4], 1);
}

void ov16_0226DDE8 (UnkStruct_ov16_0226DC24 * param0)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        sub_0200D3F4(param0->unk_00[v0], 0);
    }
}

void ov16_0226DE04 (UnkStruct_ov16_0226DC24 * param0)
{
    sub_0200D3F4(param0->unk_00[4], 0);
}

static void ov16_0226DE10 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0226DC24 * v0 = param1;
    int v1;

    if (sub_0200D408(v0->unk_00[0]) == 0) {
        return;
    }

    for (v1 = 0; v1 < 4; v1++) {
        sub_0200D330(v0->unk_00[v1]);
    }

    if (sub_0200D408(v0->unk_00[4]) == 1) {
        sub_0200D330(v0->unk_00[4]);
    }
}
