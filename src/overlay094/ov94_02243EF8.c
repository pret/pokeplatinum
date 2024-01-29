#include <nitro.h>
#include <string.h>
#include <dwc.h>

#include "struct_decls/sys_task.h"
#include "struct_decls/struct_02022550_decl.h"

#include "struct_defs/union_02022594_020225E0.h"
#include "overlay094/struct_ov94_0223FD4C.h"
#include "overlay115/struct_ov115_02261520.h"

#include "unk_02005474.h"
#include "unk_0200679C.h"
#include "unk_02006E3C.h"
#include "heap.h"
#include "unk_0201CCF0.h"
#include "unk_020218BC.h"
#include "unk_02022594.h"
#include "unk_0205C980.h"
#include "overlay094/ov94_0223BCB0.h"
#include "overlay094/ov94_02243EF8.h"

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    UnkStruct_ov94_0223FD4C * unk_0C;
} UnkStruct_ov94_02243FF0;

static void ov94_0224400C(SysTask * param0, void * param1);
static void ov94_022440FC(SysTask * param0, void * param1);
static void ov94_022441A0(GraphicElementData * param0, int param1, int param2);
static void ov94_02243FF0(UnkStruct_ov94_02243FF0 * param0, int param1);
static void ov94_0224432C(UnkStruct_ov94_0223FD4C * param0);
static void ov94_02244378(NNSG2dCharacterData * param0, NNSG2dPaletteData * param1, int param2, int param3, int param4);
static int ov94_022442DC(int param0);

static const u16 Unk_ov94_02246322[][2] = {
    {0x80, 0x36},
    {0x60, 0x37},
    {0xA0, 0x37},
    {0x40, 0x46},
    {0xC0, 0x46},
    {0x30, 0x66},
    {0xD0, 0x66}
};

void ov94_02243EF8 (UnkStruct_ov94_0223FD4C * param0, int param1)
{
    UnkStruct_ov115_02261520 v0;
    int v1;

    ov94_0224432C(param0);
    ov94_0223C300(&v0, param0, &param0->unk_DD8, NNS_G2D_VRAM_TYPE_2DSUB);

    v0.unk_28 = NNS_G2D_VRAM_TYPE_2DSUB;
    v0.unk_08.x = FX32_ONE * 128;
    v0.unk_08.y = FX32_ONE * 130 + (256 * FX32_ONE);

    param0->unk_F34[0] = sub_02021AA0(&v0);

    sub_02021CC8(param0->unk_F34[0], 1);
    sub_02021D6C(param0->unk_F34[0], 3 + param1 * 7);
    sub_02021CAC(param0->unk_F34[0], 1);

    for (v1 = 0; v1 < 7; v1++) {
        param0->unk_F34[v1 + 1] = sub_02021AA0(&v0);

        sub_02021CC8(param0->unk_F34[v1 + 1], 1);
        sub_02021D6C(param0->unk_F34[v1 + 1], 14 + v1 * 4);
        sub_02021CAC(param0->unk_F34[v1 + 1], 0);

        ov94_022441A0(param0->unk_F34[v1 + 1], Unk_ov94_02246322[v1][0], Unk_ov94_02246322[v1][1]);
    }
}

void ov94_02243FA8 (UnkStruct_ov94_0223FD4C * param0, int param1)
{
    ov94_02243EF8(param0, param1);

    {
        UnkStruct_ov94_02243FF0 * v0;

        param0->unk_10EC = sub_0200679C(ov94_0224400C, sizeof(UnkStruct_ov94_02243FF0), 5, 62);

        v0 = sub_0201CED0(param0->unk_10EC);
        v0->unk_00 = 0;
        v0->unk_04 = -40;
        v0->unk_08 = param1;
        v0->unk_0C = param0;

        ov94_02243FF0(v0, 0);
        Sound_PlayEffect(1583);
    }
}

static void ov94_02243FF0 (UnkStruct_ov94_02243FF0 * param0, int param1)
{
    sub_02021D6C(param0->unk_0C->unk_F34[0], param1 + param0->unk_08 * 7);
}

static void ov94_0224400C (SysTask * param0, void * param1)
{
    int v0;
    UnkStruct_ov94_02243FF0 * v1 = (UnkStruct_ov94_02243FF0 *)param1;
    UnkStruct_ov94_0223FD4C * v2 = v1->unk_0C;

    switch (v1->unk_00) {
    case 0:
        if (v1->unk_04 > 160) {
            v1->unk_04 = 160;
            v1->unk_00 = 1;

            ov94_02243FF0(v1, 1);
        }

        v1->unk_04 += 5;
        ov94_022441A0(v2->unk_F34[0], 128, v1->unk_04);
        break;
    case 1:
        if (!sub_02021FD0(v2->unk_F34[0])) {
            ov94_02243FF0(v1, 2);
            v1->unk_00 = 2;
        }
        break;
    case 2:
        if (v1->unk_04 < 130) {
            v1->unk_04 = 130;
            v1->unk_00 = 3;

            ov94_02243FF0(v1, 3);
        }

        v1->unk_04 -= 2;
        ov94_022441A0(v2->unk_F34[0], 128, v1->unk_04);
        break;
    case 3:
        Sound_PlayEffect(1549);
        v1->unk_0C->unk_10F0 = 1;
        sub_020067D0(param0);
        break;
    }
}

void ov94_022440B8 (UnkStruct_ov94_0223FD4C * param0, int param1)
{
    {
        UnkStruct_ov94_02243FF0 * v0;

        param0->unk_10EC = sub_0200679C(ov94_022440FC, sizeof(UnkStruct_ov94_02243FF0), 5, 62);

        v0 = sub_0201CED0(param0->unk_10EC);
        v0->unk_00 = 0;
        v0->unk_04 = 130;
        v0->unk_08 = param1;
        v0->unk_0C = param0;

        ov94_02243FF0(v0, 5);
        Sound_PlayEffect(1550);
    }
}

static void ov94_022440FC (SysTask * param0, void * param1)
{
    int v0;
    UnkStruct_ov94_02243FF0 * v1 = (UnkStruct_ov94_02243FF0 *)param1;
    UnkStruct_ov94_0223FD4C * v2 = v1->unk_0C;

    switch (v1->unk_00) {
    case 0:
        if (v1->unk_04 > 160) {
            v1->unk_04 = 160;
            v1->unk_00 = 1;

            ov94_02243FF0(v1, 6);
        }

        v1->unk_04 += 2;
        ov94_022441A0(v2->unk_F34[0], 128, v1->unk_04);
        break;
    case 1:
        if (!sub_02021FD0(v2->unk_F34[0])) {
            ov94_02243FF0(v1, 0);
            v1->unk_00 = 2;
            Sound_PlayEffect(1584);
        }
        break;
    case 2:
        if (v1->unk_04 < -20) {
            v1->unk_00 = 3;

            ov94_02243FF0(v1, 3);
        }

        v1->unk_04 -= 5;
        ov94_022441A0(v2->unk_F34[0], 128, v1->unk_04);
        break;
    case 3:
        v1->unk_0C->unk_10F0 = 1;
        sub_020067D0(param0);
        break;
    }
}

static void ov94_022441A0 (GraphicElementData * param0, int param1, int param2)
{
    VecFx32 v0;

    v0.x = FX32_CONST(param1);
    v0.y = FX32_CONST(param2 - 8) + (256 * FX32_ONE);
    v0.z = 0;

    sub_02021C50(param0, &v0);
}

static const UnkUnion_02022594 Unk_ov94_0224633E[] = {
    {0x26, 0x46, 0x70, 0x90},
    {0x27, 0x47, 0x50, 0x70},
    {0x27, 0x47, 0x90, 0xB0},
    {0x36, 0x56, 0x30, 0x50},
    {0x36, 0x56, 0xB0, 0xD0},
    {0x56, 0x76, 0x20, 0x40},
    {0x56, 0x76, 0xC0, 0xE0},
    {0xFF, 0x0, 0x0, 0x0}
};

int ov94_02244214 (int param0)
{
    int v0 = sub_02022664(Unk_ov94_0224633E);

    if (v0 != 0xffffffff) {
        if (v0 < param0) {
            return v0;
        }
    }

    return -1;
}

void ov94_02244234 (UnkStruct_ov94_0223FD4C * param0, int param1, int param2)
{
    int v0;

    if ((param1 != 0) && (param2 == 1)) {
        Sound_PlayEffect(1615);
    }

    for (v0 = 0; v0 < 7; v0++) {
        if (v0 < param1) {
            int v1 = param0->unk_250[v0].unk_120;
            int v2 = param0->unk_250[v0].unk_F6;

            ov94_02244378(param0->unk_10F8, param0->unk_1100, v0, v1, v2);

            if (param2) {
                sub_02021D6C(param0->unk_F34[v0 + 1], 14 + v0 * 4);
            } else {
                sub_02021D6C(param0->unk_F34[v0 + 1], 17 + v0 * 4);
            }

            sub_02021CAC(param0->unk_F34[v0 + 1], 1);
        } else {
            sub_02021CAC(param0->unk_F34[v0 + 1], 0);
        }
    }
}

static int ov94_022442DC (int param0)
{
    return 14 + param0 * 4;
}

void ov94_022442E4 (UnkStruct_ov94_0223FD4C * param0)
{
    int v0;

    for (v0 = 0; v0 < 7; v0++) {
        if (sub_02021D34(param0->unk_F34[v0 + 1])) {
            if (sub_02021E24(param0->unk_F34[v0 + 1]) != ov94_022442DC(v0) + 1) {
                sub_02021D6C(param0->unk_F34[v0 + 1], ov94_022442DC(v0) + 1);
            }
        }
    }
}

static void ov94_0224432C (UnkStruct_ov94_0223FD4C * param0)
{
    param0->unk_10FC = sub_02006F88(86, 7, &(param0->unk_1100), 62);
    param0->unk_10F4 = sub_02006F50(86, 9, 1, &(param0->unk_10F8), 62);

    DC_FlushRange(param0->unk_10F8, (256 * 256 / 2));
}

static const u16 Unk_ov94_02246314[] = {
    0x2400,
    0x2600,
    0x2800,
    0x2A00,
    0x2C00,
    0x2E00,
    0x3000
};

static void ov94_02244378 (NNSG2dCharacterData * param0, NNSG2dPaletteData * param1, int param2, int param3, int param4)
{
    int v0;
    u8 * v1, * v2;

    v0 = sub_0205CA0C(param4, param3);
    v1 = (u8 *)param0->pRawData;
    v2 = (u8 *)param1->pRawData;

    GXS_LoadOBJ(&v1[((4 * 4) * 3) * v0 * 0x20], Unk_ov94_02246314[param2], (4 * 4) * 0x20);
    GXS_LoadOBJPltt(&v2[v0 * 32], (param2 + 2) * 32, 32);
}

void ov94_022443B8 (UnkStruct_ov94_0223FD4C * param0)
{
    if (param0->unk_10F0) {
        Heap_FreeToHeap(param0->unk_10FC);
        Heap_FreeToHeap(param0->unk_10F4);
    }
}
