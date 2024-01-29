#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02009714_decl.h"
#include "struct_decls/struct_02009DC8_decl.h"
#include "struct_decls/sys_task.h"
#include "struct_decls/struct_020218BC_decl.h"
#include "struct_decls/struct_02022550_decl.h"

#include "struct_defs/struct_0200C738.h"
#include "overlay019/struct_ov19_021DA864.h"
#include "overlay022/struct_ov22_022559F8.h"
#include "overlay115/struct_ov115_02261520.h"

#include "unk_020093B4.h"
#include "unk_02009714.h"
#include "unk_0200A328.h"
#include "unk_0200A784.h"
#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_0201D15C.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "gx_layers.h"
#include "unk_020218BC.h"
#include "overlay077/ov77_021D6670.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    GraphicElementData * unk_04;
    SysTask * unk_08;
} UnkStruct_ov77_021D6ADC;

typedef struct UnkStruct_ov77_021D6734_t {
    int unk_00;
    UnkStruct_ov77_021D6ADC * unk_04;
} UnkStruct_ov77_021D6734;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06[2];
} UnkStruct_ov77_021D6B0C;

typedef struct {
    UnkStruct_ov77_021D6B0C unk_00;
    SysTask * unk_08;
    UnkStruct_ov77_021D6ADC * unk_0C;
} UnkStruct_ov77_021D6A0C;

typedef struct {
    GraphicElementManager * unk_00;
    UnkStruct_0200C738 unk_04;
    UnkStruct_02009714 * unk_190[4];
    UnkStruct_02009DC8 * unk_1A0[4];
    UnkStruct_ov77_021D6ADC unk_1B0[10];
} UnkStruct_ov77_021D6800;

typedef struct UnkStruct_ov77_021D670C_t {
    UnkStruct_ov77_021D6800 unk_00;
    UnkStruct_ov77_021D6A0C unk_214[3];
} UnkStruct_ov77_021D670C;

static void ov77_021D6800(UnkStruct_ov77_021D6800 * param0);
static void ov77_021D691C(UnkStruct_ov77_021D6800 * param0);
static void ov77_021D6964(UnkStruct_ov77_021D6800 * param0);
static void ov77_021D69B4(UnkStruct_ov77_021D6800 * param0);
static void ov77_021D6A0C(UnkStruct_ov77_021D6A0C * param0, UnkStruct_ov77_021D670C * param1, const u8 param2, const u8 param3, const u8 param4, const u8 param5);
static void ov77_021D6B0C(SysTask * param0, void * param1);
static UnkStruct_ov77_021D6ADC * ov77_021D6ADC(UnkStruct_ov77_021D6ADC * param0, const int param1);
static void ov77_021D6B48(SysTask * param0, void * param1);
static void ov77_021D6BAC(UnkStruct_ov77_021D6734 * param0, const u8 param1, int param2);
static void ov77_021D6C44(SysTask * param0, void * param1);

static const u8 Unk_ov77_021D7930[4] = {
    0x1,
    0x1,
    0x1,
    0x1
};

static void ov77_021D6670 ()
{
    const int v0 = 76;

    {
        UnkStruct_ov22_022559F8 v1 = {
            1, 0, 0, v0
        };

        sub_0201E86C(&v1);
    }

    sub_0201F834(1, v0);
    sub_0201E994();
    sub_0201F8E4();
}

static void ov77_021D66A0 (UnkStruct_ov77_021D6800 * param0, UnkStruct_ov115_02261520 * param1, UnkStruct_ov19_021DA864 * param2)
{
    sub_020093B4(param2, 0, 0, 0, 0, 0xffffffff, 0xffffffff, 0, 0, param0->unk_190[0], param0->unk_190[1], param0->unk_190[2], param0->unk_190[3], NULL, NULL);

    {
        param1->unk_00 = param0->unk_00;
        param1->unk_04 = param2;
        param1->unk_08.x = 0;
        param1->unk_08.y = 0;
        param1->unk_08.z = 0;
        param1->unk_14.x = FX32_ONE;
        param1->unk_14.y = FX32_ONE;
        param1->unk_14.z = FX32_ONE;
        param1->unk_20 = 0;
        param1->unk_24 = 1;
        param1->unk_28 = NNS_G2D_VRAM_TYPE_2DMAIN;
        param1->unk_2C = 76;
    }
}

UnkStruct_ov77_021D670C * ov77_021D670C (void)
{
    int v0 = sizeof(UnkStruct_ov77_021D670C);
    UnkStruct_ov77_021D670C * v1 = Heap_AllocFromHeap(76, v0);

    memset(v1, 0, v0);

    ov77_021D6800(&v1->unk_00);
    ov77_021D6964(&v1->unk_00);

    return v1;
}

UnkStruct_ov77_021D6734 * ov77_021D6734 (const int param0)
{
    int v0;
    UnkStruct_ov77_021D6734 * v1;

    v1 = Heap_AllocFromHeap(76, sizeof(UnkStruct_ov77_021D6734));
    v0 = sizeof(UnkStruct_ov77_021D6ADC) * param0;
    v1->unk_04 = Heap_AllocFromHeap(76, v0);

    memset(v1->unk_04, 0, v0);
    v1->unk_00 = param0;

    return v1;
}

void ov77_021D6760 (UnkStruct_ov77_021D6734 * param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_00; v0++) {
        if (param0->unk_04[v0].unk_08 != NULL) {
            SysTask_Done(param0->unk_04[v0].unk_08);
        }
    }

    Heap_FreeToHeap(param0->unk_04);
    Heap_FreeToHeap(param0);
}

GraphicElementData ** ov77_021D6794 (UnkStruct_ov77_021D6734 * param0, const int param1)
{
    GF_ASSERT(param1 < param0->unk_00);
    return &param0->unk_04[param1].unk_04;
}

void ov77_021D67B0 (UnkStruct_ov77_021D670C * param0)
{
    u8 v0;

    ov77_021D691C(&param0->unk_00);

    for (v0 = 0; v0 < 3; v0++) {
        if (param0->unk_214[v0].unk_08 != NULL) {
            SysTask_Done(param0->unk_214[v0].unk_08);
        }
    }

    for (v0 = 0; v0 < 10; v0++) {
        if (param0->unk_00.unk_1B0[v0].unk_08 != NULL) {
            SysTask_Done(param0->unk_00.unk_1B0[v0].unk_08);
        }
    }

    Heap_FreeToHeap(param0);
}

static void ov77_021D6800 (UnkStruct_ov77_021D6800 * param0)
{
    int v0;
    const int v1 = 76;

    GX_SetOBJVRamModeChar(GX_OBJVRAMMODE_CHAR_1D_32K);
    GXS_SetOBJVRamModeChar(GX_OBJVRAMMODE_CHAR_1D_32K);

    ov77_021D6670();

    NNS_G2dInitOamManagerModule();
    sub_0200A784(0, 128, 0, 32, 0, 128, 0, 32, v1);

    param0->unk_00 = sub_020095C4(10, &param0->unk_04, v1);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_190[v0] = sub_02009714(Unk_ov77_021D7930[v0], v0, v1);
    }

    param0->unk_1A0[0] = sub_0200985C(param0->unk_190[0], 128, 4, 0, 0, NNS_G2D_VRAM_TYPE_MAX, v1);
    param0->unk_1A0[1] = sub_020098B8(param0->unk_190[1], 128, 3, 0, 0, NNS_G2D_VRAM_TYPE_MAX, 1, v1);
    param0->unk_1A0[2] = sub_02009918(param0->unk_190[2], 128, 5, 0, 0, 2, v1);
    param0->unk_1A0[3] = sub_02009918(param0->unk_190[3], 128, 6, 0, 0, 3, v1);

    sub_0200A328(param0->unk_1A0[0]);
    sub_0200A5C8(param0->unk_1A0[1]);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov77_021D691C (UnkStruct_ov77_021D6800 * param0)
{
    u8 v0;

    sub_0200A4E4(param0->unk_1A0[0]);
    sub_0200A6DC(param0->unk_1A0[1]);

    for (v0 = 0; v0 < 4; v0++) {
        sub_02009754(param0->unk_190[v0]);
    }

    sub_02021964(param0->unk_00);
    sub_0200A878();
    sub_0201E958();
    sub_0201F8B4();
}

static void ov77_021D6964 (UnkStruct_ov77_021D6800 * param0)
{
    int v0;
    UnkStruct_ov19_021DA864 v1;
    UnkStruct_ov115_02261520 v2;

    for (v0 = 0; v0 < 10; v0++) {
        ov77_021D66A0(param0, &v2, &v1);
        v2.unk_08.x = FX32_ONE * v0 * 2;
        v2.unk_08.y = FX32_ONE * v0 * 2;

        param0->unk_1B0[v0].unk_04 = sub_02021AA0(&v2);

        sub_02021CC8(param0->unk_1B0[v0].unk_04, 0);
        sub_02021CAC(param0->unk_1B0[v0].unk_04, 0);
    }
}

static void ov77_021D69B4 (UnkStruct_ov77_021D6800 * param0)
{
    sub_020219F8(param0->unk_00);
}

void ov77_021D69C0 (UnkStruct_ov77_021D670C * param0, const int param1)
{
    if (param1 == 180) {
        ov77_021D6A0C(&param0->unk_214[0], param0, 3, 3, 3, 0);
    } else if (param1 == 285) {
        ov77_021D6A0C(&param0->unk_214[1], param0, 3, 3, 3, 1);
    }

    ov77_021D69B4(&param0->unk_00);
}

static void ov77_021D6A0C (UnkStruct_ov77_021D6A0C * param0, UnkStruct_ov77_021D670C * param1, const u8 param2, const u8 param3, const u8 param4, const u8 param5)
{
    param0->unk_00.unk_00 = param2;
    param0->unk_00.unk_01 = param3;
    param0->unk_00.unk_02 = param4;
    param0->unk_00.unk_04 = 0;
    param0->unk_00.unk_03 = 0;
    param0->unk_0C = param1->unk_00.unk_1B0;
    param0->unk_00.unk_05 = param5;
    param0->unk_08 = SysTask_Start(ov77_021D6B0C, param0, 10);
}

static void ov77_021D6A44 (UnkStruct_ov77_021D6ADC * param0, const u8 param1, const u8 param2)
{
    u8 v0;
    UnkStruct_ov77_021D6ADC * v1;
    int v2;

    if (param2 == 0) {
        v2 = 64;
    } else {
        v2 = 32;
    }

    for (v0 = 0; v0 < param1; v0++) {
        v1 = ov77_021D6ADC(param0, 10);

        {
            VecFx32 v3;

            v3 = *sub_02021D28(v1->unk_04);
            v3.x = FX32_ONE * (64 + (LCRNG_Next() % 128));
            v3.y = FX32_ONE * (v2 + (LCRNG_Next() % 64));

            sub_02021C50(v1->unk_04, &v3);
        }

        sub_02021CC8(v1->unk_04, 1);
        sub_02021CAC(v1->unk_04, 1);

        v1->unk_08 = SysTask_Start(ov77_021D6B48, v1, 20);
    }
}

static UnkStruct_ov77_021D6ADC * ov77_021D6ADC (UnkStruct_ov77_021D6ADC * param0, const int param1)
{
    u8 v0;
    UnkStruct_ov77_021D6ADC * v1;

    for (v0 = 0; v0 < 10; v0++) {
        if (!param0[v0].unk_00) {
            v1 = &param0[v0];
            v1->unk_00 = 1;
            v1->unk_01 = 0;
            return v1;
        }
    }

    GF_ASSERT(FALSE);
    return NULL;
}

static void ov77_021D6B0C (SysTask * param0, void * param1)
{
    UnkStruct_ov77_021D6A0C * v0 = param1;
    UnkStruct_ov77_021D6B0C * v1 = &v0->unk_00;

    if (v1->unk_04++ >= v1->unk_01) {
        ov77_021D6A44(v0->unk_0C, v1->unk_00, v1->unk_05);
        v1->unk_04 = 0;

        if (++v1->unk_03 >= v1->unk_02) {
            SysTask_Done(param0);
            v0->unk_08 = NULL;
        }
    }
}

static void ov77_021D6B48 (SysTask * param0, void * param1)
{
    UnkStruct_ov77_021D6ADC * v0 = param1;

    {
        VecFx32 v1;

        v1 = *sub_02021D28(v0->unk_04);
        v1.y += (FX32_ONE * 3);

        sub_02021C50(v0->unk_04, &v1);
    }

    v0->unk_01++;

    if (v0->unk_01 >= 80) {
        SysTask_Done(param0);
        v0->unk_08 = NULL;
        v0->unk_00 = 0;
        sub_02021CC8(v0->unk_04, 0);
        sub_02021CAC(v0->unk_04, 0);
    }
}

void ov77_021D6BA0 (UnkStruct_ov77_021D6734 * param0, int param1)
{
    ov77_021D6BAC(param0, 2, param1);
}

static void ov77_021D6BAC (UnkStruct_ov77_021D6734 * param0, const u8 param1, int param2)
{
    u8 v0;
    UnkStruct_ov77_021D6ADC * v1;
    UnkStruct_ov77_021D6ADC * v2;

    v1 = param0->unk_04;

    for (v0 = 0; v0 < param1; v0++) {
        v2 = ov77_021D6ADC(v1, param0->unk_00);

        {
            VecFx32 v3;

            v3 = *sub_02021D28(v2->unk_04);
            v3.x = FX32_ONE * ((16 - 6) + (LCRNG_Next() % 224));
            v3.y = FX32_ONE * (192 + (64 - 6) + (LCRNG_Next() % 56));

            sub_02021C50(v2->unk_04, &v3);
        }

        sub_02021CC8(v2->unk_04, 1);

        if (param2 == 0) {
            sub_02021CAC(v2->unk_04, 1);
        } else {
            sub_02021CAC(v2->unk_04, 0);
        }

        v2->unk_08 = SysTask_Start(ov77_021D6C44, v2, 20);
    }
}

static void ov77_021D6C44 (SysTask * param0, void * param1)
{
    UnkStruct_ov77_021D6ADC * v0 = param1;

    v0->unk_01++;

    if (v0->unk_01 >= 8) {
        SysTask_Done(param0);
        v0->unk_08 = NULL;
        v0->unk_00 = 0;
        sub_02021CC8(v0->unk_04, 0);
        sub_02021CAC(v0->unk_04, 0);
    }
}
