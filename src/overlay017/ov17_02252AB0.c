#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/sys_task.h"

#include "struct_defs/struct_0200D0F4.h"
#include "overlay104/struct_ov104_0223F9E0.h"

#include "unk_0200C6E4.h"
#include "unk_0200D9E8.h"
#include "heap.h"
#include "overlay017/ov17_02252AB0.h"

typedef struct UnkStruct_ov17_02252B48_t {
    CellActorData * unk_00[5];
    SysTask * unk_14;
} UnkStruct_ov17_02252B48;

static void ov17_02252CB8(SysTask * param0, void * param1);
void ov17_02252AB0(SpriteRenderer * param0, SpriteGfxHandler * param1, PaletteData * param2, u32 param3, u32 param4, u32 param5, u32 param6);
void ov17_02252B20(SpriteGfxHandler * param0, u32 param1, u32 param2, u32 param3, u32 param4);
UnkStruct_ov17_02252B48 * ov17_02252B48(SpriteRenderer * param0, SpriteGfxHandler * param1, int param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8);
void ov17_02252BCC(UnkStruct_ov17_02252B48 * param0);
void ov17_02252C9C(UnkStruct_ov17_02252B48 * param0);

static const UnkStruct_ov104_0223F9E0 Unk_ov17_02254D9C = {
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

void ov17_02252AB0 (SpriteRenderer * param0, SpriteGfxHandler * param1, PaletteData * param2, u32 param3, u32 param4, u32 param5, u32 param6)
{
    sub_0200CD7C(param2, 3, param0, param1, 27, 80, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, param4);
    sub_0200CBDC(param0, param1, 27, 250, 1, NNS_G2D_VRAM_TYPE_2DSUB, param3);
    sub_0200CE0C(param0, param1, 27, 251, 1, param5);
    sub_0200CE3C(param0, param1, 27, 252, 1, param6);
}

void ov17_02252B20 (SpriteGfxHandler * param0, u32 param1, u32 param2, u32 param3, u32 param4)
{
    sub_0200D070(param0, param1);
    sub_0200D080(param0, param2);
    sub_0200D090(param0, param3);
    sub_0200D0A0(param0, param4);
}

UnkStruct_ov17_02252B48 * ov17_02252B48 (SpriteRenderer * param0, SpriteGfxHandler * param1, int param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8)
{
    UnkStruct_ov17_02252B48 * v0;
    UnkStruct_ov104_0223F9E0 v1;
    int v2;

    v1 = Unk_ov17_02254D9C;
    v1.unk_14[0] = param3;
    v1.unk_14[1] = param4;
    v1.unk_14[2] = param5;
    v1.unk_14[3] = param6;
    v1.unk_08 = param7;
    v1.unk_2C = param8;

    v0 = Heap_AllocFromHeap(param2, sizeof(UnkStruct_ov17_02252B48));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov17_02252B48));

    for (v2 = 0; v2 < 5; v2++) {
        v0->unk_00[v2] = sub_0200CE6C(param0, param1, &v1);
        sub_0200D3F4(v0->unk_00[v2], 0);
    }

    v0->unk_14 = SysTask_Start(ov17_02252CB8, v0, 40000);
    return v0;
}

void ov17_02252BCC (UnkStruct_ov17_02252B48 * param0)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        sub_0200D0F4(param0->unk_00[v0]);
    }

    SysTask_Done(param0->unk_14);
    Heap_FreeToHeap(param0);
}

void ov17_02252BF0 (UnkStruct_ov17_02252B48 * param0, int param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8, fx32 param9)
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

void ov17_02252C78 (UnkStruct_ov17_02252B48 * param0, int param1, int param2, int param3, int param4, fx32 param5)
{
    ov17_02252BF0(param0, param1, param3, param2, param3, param1, param4, param2, param4, param5);
}

void ov17_02252C9C (UnkStruct_ov17_02252B48 * param0)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        sub_0200D3F4(param0->unk_00[v0], 0);
    }
}

static void ov17_02252CB8 (SysTask * param0, void * param1)
{
    UnkStruct_ov17_02252B48 * v0 = param1;
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
