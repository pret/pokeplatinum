#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"

#include "overlay019/struct_ov19_021DA864.h"
#include "overlay022/struct_ov22_022559F8.h"
#include "overlay071/struct_ov71_0223D238.h"
#include "overlay115/struct_ov115_02261520.h"

#include "narc.h"
#include "unk_020093B4.h"
#include "unk_02009714.h"
#include "unk_0200A328.h"
#include "unk_0200A784.h"
#include "heap.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "gx_layers.h"
#include "unk_020218BC.h"
#include "overlay071/ov71_0223CF0C.h"

typedef struct {
    int unk_00;
    int unk_04;
} UnkStruct_ov71_0223D73C;

static const u8 Unk_ov71_0223D6C8[4] = {
    0x1,
    0x2,
    0x1,
    0x1
};

static const UnkStruct_ov71_0223D73C Unk_ov71_0223D73C[] = {
    {0x18, 0x28},
    {0x50, 0x28},
    {0x88, 0x28},
    {0xC0, 0x28},
    {0x18, 0x48},
    {0x50, 0x48},
    {0x88, 0x48},
    {0xC0, 0x48}
};

static const UnkStruct_ov71_0223D73C Unk_ov71_0223D6FC[] = {
    {0x18, 0x28},
    {0x50, 0x28},
    {0x88, 0x28},
    {0xC0, 0x28},
    {0x18, 0x60},
    {0x50, 0x60},
    {0x88, 0x60},
    {0xC0, 0x60}
};

static void ov71_0223D2F4(void);

void ov71_0223CF0C (UnkStruct_ov71_0223D238 * param0, NARC * param1)
{
    int v0;

    ov71_0223D2F4();
    NNS_G2dInitOamManagerModule();
    sub_0200A784(0, 128, 0, 32, 0, 128, 0, 32, 25);

    param0->unk_00 = sub_020095C4((8 + 8 + 8 + 1), &param0->unk_04, 25);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_190[v0] = sub_02009714(Unk_ov71_0223D6C8[v0], v0, 25);
    }

    param0->unk_1A0[0][0] = sub_02009A4C(param0->unk_190[0], param1, 33, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 25);
    param0->unk_1A0[0][1] = sub_02009B04(param0->unk_190[1], param1, 14, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 9, 25);
    param0->unk_1A0[0][2] = sub_02009BC4(param0->unk_190[2], param1, 44, 0, 1, 2, 25);
    param0->unk_1A0[0][3] = sub_02009BC4(param0->unk_190[3], param1, 46, 0, 1, 3, 25);

    sub_0200A328(param0->unk_1A0[0][0]);
    sub_0200A5C8(param0->unk_1A0[0][1]);

    {
        u8 v1;
        const int v2[8] = {
            16, 17, 18, 19, 20, 21, 22, 23
        };

        for (v1 = 0; v1 < 8; v1++) {
            param0->unk_224[v1] = NARC_AllocAndReadWholeMember(param1, v2[v1], 25);

            if (param0->unk_224[v1] != NULL) {
                if (NNS_G2dGetUnpackedPaletteData(param0->unk_224[v1], &param0->unk_244[v1]) == 0) {
                    Heap_FreeToHeap(param0->unk_244[v1]);
                    GF_ASSERT(0);
                }
            } else {
                GF_ASSERT(0);
            }
        }
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
}

void ov71_0223D070 (UnkStruct_ov71_0223D238 * param0, const u8 * param1)
{
    int v0;
    UnkStruct_ov19_021DA864 v1;

    sub_020093B4(&v1, 1, 1, 1, 1, 0xffffffff, 0xffffffff, 0, 1, param0->unk_190[0], param0->unk_190[1], param0->unk_190[2], param0->unk_190[3], NULL, NULL);

    {
        u8 v2;
        UnkStruct_ov115_02261520 v3;

        v3.unk_00 = param0->unk_00;
        v3.unk_04 = &v1;
        v3.unk_08.x = 0;
        v3.unk_08.y = 0;
        v3.unk_08.z = 0;
        v3.unk_14.x = FX32_ONE;
        v3.unk_14.y = FX32_ONE;
        v3.unk_14.z = FX32_ONE;
        v3.unk_20 = 0;
        v3.unk_24 = 2;
        v3.unk_28 = NNS_G2D_VRAM_TYPE_2DMAIN;
        v3.unk_2C = 25;

        for (v0 = 0; v0 < 8; v0++) {
            v3.unk_08.x = FX32_ONE * Unk_ov71_0223D73C[v0].unk_00;
            v3.unk_08.y = FX32_ONE * Unk_ov71_0223D73C[v0].unk_04;
            param0->unk_1C0[v0] = sub_02021AA0(&v3);
            sub_02021CC8(param0->unk_1C0[v0], 0);
            SpriteActor_SetSpriteAnimActive(param0->unk_1C0[v0], v0);

            if (!param1[v0]) {
                sub_02021CAC(param0->unk_1C0[v0], 0);
            }
        }

        {
            v2 = 8;

            for (v0 = 0; v0 < 8; v0++) {
                v3.unk_08.x = FX32_ONE * Unk_ov71_0223D6FC[v0].unk_00;
                v3.unk_08.y = FX32_ONE * Unk_ov71_0223D6FC[v0].unk_04;
                v3.unk_24 = 1;
                param0->unk_1C0[v2 + v0] = sub_02021AA0(&v3);
                sub_02021CC8(param0->unk_1C0[v2 + v0], 1);
                SpriteActor_SetSpriteAnimActive(param0->unk_1C0[v2 + v0], 8);
                sub_02021CAC(param0->unk_1C0[v2 + v0], 0);
            }

            v2 += 8;

            for (v0 = 0; v0 < 8; v0++) {
                v3.unk_08.x = FX32_ONE * Unk_ov71_0223D6FC[v0].unk_00;
                v3.unk_08.y = FX32_ONE * Unk_ov71_0223D6FC[v0].unk_04;
                v3.unk_24 = 1;
                param0->unk_1C0[v2 + v0] = sub_02021AA0(&v3);
                sub_02021CC8(param0->unk_1C0[v2 + v0], 1);
                SpriteActor_SetSpriteAnimActive(param0->unk_1C0[v2 + v0], 9);
                sub_02021CAC(param0->unk_1C0[v2 + v0], 0);
            }
        }
        v2 += 8;

        {
            v1.unk_20 = 0;
            v3.unk_08.x = FX32_ONE * (12 * 8);
            v3.unk_08.y = FX32_ONE * (17 * 8);
            v3.unk_24 = 0;
            param0->unk_1C0[v2] = sub_02021AA0(&v3);
            sub_02021CC8(param0->unk_1C0[v2], 0);
            SpriteActor_SetSpriteAnimActive(param0->unk_1C0[v2], 10);
            sub_02021CAC(param0->unk_1C0[v2], 0);
        }
    }
}

void ov71_0223D238 (UnkStruct_ov71_0223D238 * param0)
{
    u8 v0;

    for (v0 = 0; v0 < 8; v0++) {
        Heap_FreeToHeap(param0->unk_224[v0]);
    }

    sub_0200A4E4(param0->unk_1A0[0][0]);
    sub_0200A6DC(param0->unk_1A0[0][1]);

    for (v0 = 0; v0 < 4; v0++) {
        sub_02009754(param0->unk_190[v0]);
    }

    sub_02021964(param0->unk_00);
    sub_0200A878();
    sub_0201E958();
    sub_0201F8B4();
}

void ov71_0223D298 (UnkStruct_ov71_0223D238 * param0, const u8 param1, const u8 param2)
{
    NNSG2dImagePaletteProxy * v0;
    u32 v1;
    u32 v2;
    u8 * v3;

    GF_ASSERT(param1 < 8);
    GF_ASSERT(param2 <= 3);

    v0 = sub_02021F9C(param0->unk_1C0[param1]);
    v1 = NNS_G2dGetImagePaletteLocation(v0, NNS_G2D_VRAM_TYPE_2DMAIN);
    v1 += param1 * (16 * 2);
    v3 = param0->unk_244[param1]->pRawData;

    DC_FlushRange(&v3[param2 * 16 * 2], 16 * 2);
    GX_LoadOBJPltt(&v3[param2 * 16 * 2], v1, 16 * 2);
}

static void ov71_0223D2F4 (void)
{
    {
        UnkStruct_ov22_022559F8 v0 = {
            1, 2048, 0, 25
        };

        sub_0201E86C(&v0);
    }

    sub_0201F834(2, 25);
    sub_0201E994();
    sub_0201F8E4();
}
