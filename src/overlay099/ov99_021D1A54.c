#include "overlay099/ov99_021D1A54.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/sprite_template.h"
#include "struct_defs/struct_0200D0F4.h"

#include "overlay099/ov99_021D0D80.h"
#include "overlay099/ov99_021D2C08.h"
#include "overlay099/ov99_021D2E28.h"
#include "overlay099/ov99_021D340C.h"
#include "overlay099/ov99_021D3A40.h"
#include "overlay099/ov99_021D3C18.h"
#include "overlay099/ov99_021D3DE0.h"
#include "overlay099/ov99_021D3E78.h"
#include "overlay099/ov99_021D4134.h"
#include "overlay099/struct_ov99_021D2CB0.h"
#include "overlay099/struct_ov99_021D2CB0_sub2.h"
#include "overlay099/struct_ov99_021D3A40.h"

#include "core_sys.h"
#include "easy3d_object.h"
#include "font.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "strbuf.h"
#include "text.h"
#include "unk_02002F38.h"
#include "unk_02006E3C.h"
#include "unk_0200A9DC.h"
#include "unk_0200C6E4.h"
#include "unk_0200F174.h"
#include "unk_02018340.h"

typedef void (*UnkFuncPtr_ov99_021D4A04)(UnkStruct_ov99_021D2CB0 *);
typedef BOOL (*UnkFuncPtr_ov99_021D4A04_1)(UnkStruct_ov99_021D2CB0 *, UnkStruct_ov99_021D3A40 *);

typedef struct {
    UnkFuncPtr_ov99_021D4A04 unk_00;
    UnkFuncPtr_ov99_021D4A04 unk_04;
    UnkFuncPtr_ov99_021D4A04 unk_08;
    UnkFuncPtr_ov99_021D4A04 unk_0C;
    UnkFuncPtr_ov99_021D4A04 unk_10;
    UnkFuncPtr_ov99_021D4A04 unk_14;
    UnkFuncPtr_ov99_021D4A04 unk_18;
    UnkFuncPtr_ov99_021D4A04 unk_1C;
    UnkFuncPtr_ov99_021D4A04 unk_20;
    UnkFuncPtr_ov99_021D4A04 unk_24;
    UnkFuncPtr_ov99_021D4A04 unk_28;
    UnkFuncPtr_ov99_021D4A04 unk_2C;
    UnkFuncPtr_ov99_021D4A04_1 unk_30;
} UnkStruct_ov99_021D4A04;

static void ov99_021D1A54(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D1B98(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D1BC4(UnkStruct_ov99_021D2CB0 *param0, CellActorData **param1, CellActorData **param2);
static void ov99_021D1C9C(UnkStruct_ov99_021D2CB0 *param0, CellActorData *param1, CellActorData *param2);
static void ov99_021D1D68(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D1E6C(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D1E90(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D1E98(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D1EA0(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D1EB4(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D1EC8(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D1F44(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D1F70(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D1FB8(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D1FD8(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D20F8(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D211C(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D214C(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2158(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D215C(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2160(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2164(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2168(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D216C(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2170(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2174(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2178(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D217C(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2180(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D22AC(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D22D0(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D22D8(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D22E0(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D22F4(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2308(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2384(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D23B0(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D23F0(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2410(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D24CC(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D24F0(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2640(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2664(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D26E4(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2714(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D275C(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2780(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D27FC(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2828(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D288C(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D28AC(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2A14(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2A38(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2A70(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2A84(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2A88(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2A8C(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2A90(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2A94(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2A98(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2A9C(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2AA0(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2AA4(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2AA8(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2AAC(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2BBC(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2BE0(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2BE4(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2BE8(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2BEC(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2BF0(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2BF4(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2BF8(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2BFC(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2C00(UnkStruct_ov99_021D2CB0 *param0);
static void ov99_021D2C04(UnkStruct_ov99_021D2CB0 *param0);

static const UnkStruct_ov99_021D4A04 Unk_ov99_021D4A04[] = {
    {
        ov99_021D1D68,
        ov99_021D1FD8,
        ov99_021D1E90,
        ov99_021D1EC8,
        ov99_021D1EA0,
        ov99_021D1F70,
        ov99_021D1E6C,
        ov99_021D20F8,
        ov99_021D1E98,
        ov99_021D1F44,
        ov99_021D1EB4,
        ov99_021D1FB8,
        ov99_021D2C08,
    },
    {
        ov99_021D211C,
        ov99_021D2178,
        ov99_021D2158,
        ov99_021D2168,
        ov99_021D2160,
        ov99_021D2170,
        ov99_021D214C,
        ov99_021D217C,
        ov99_021D215C,
        ov99_021D216C,
        ov99_021D2164,
        ov99_021D2174,
        ov99_021D3A40,
    },
    {
        ov99_021D2180,
        ov99_021D2410,
        ov99_021D22D0,
        ov99_021D2308,
        ov99_021D22E0,
        ov99_021D23B0,
        ov99_021D22AC,
        ov99_021D24CC,
        ov99_021D22D8,
        ov99_021D2384,
        ov99_021D22F4,
        ov99_021D23F0,
        ov99_021D2E28,
    },
    {
        ov99_021D211C,
        ov99_021D2178,
        ov99_021D2158,
        ov99_021D2168,
        ov99_021D2160,
        ov99_021D2170,
        ov99_021D214C,
        ov99_021D217C,
        ov99_021D215C,
        ov99_021D216C,
        ov99_021D2164,
        ov99_021D2174,
        ov99_021D3B2C,
    },
    {
        ov99_021D24F0,
        ov99_021D28AC,
        ov99_021D2664,
        ov99_021D2780,
        ov99_021D2714,
        ov99_021D2828,
        ov99_021D2640,
        ov99_021D2A14,
        ov99_021D26E4,
        ov99_021D27FC,
        ov99_021D275C,
        ov99_021D288C,
        ov99_021D340C,
    },
    {
        ov99_021D2A38,
        ov99_021D2AA4,
        ov99_021D2A84,
        ov99_021D2A94,
        ov99_021D2A8C,
        ov99_021D2A9C,
        ov99_021D2A70,
        ov99_021D2AA8,
        ov99_021D2A88,
        ov99_021D2A98,
        ov99_021D2A90,
        ov99_021D2AA0,
        ov99_021D3C18,
    },
    {
        ov99_021D2AAC,
        ov99_021D2C00,
        ov99_021D2BE0,
        ov99_021D2BF0,
        ov99_021D2BE8,
        ov99_021D2BF8,
        ov99_021D2BBC,
        ov99_021D2C04,
        ov99_021D2BE4,
        ov99_021D2BF4,
        ov99_021D2BEC,
        ov99_021D2BFC,
        ov99_021D3DE0,
    },
};

static const SpriteTemplate Unk_ov99_021D499C = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x96,
    0x1,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x2713, 0x2713, 0x2713, 0x2713, 0xffffffff, 0xffffffff },
    0x2,
    0x0
};

static const SpriteTemplate Unk_ov99_021D4968 = {
    0x0,
    0x0,
    0x0,
    0x1,
    0x96,
    0x0,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x2714, 0x2714, 0x2714, 0x2714, 0xffffffff, 0xffffffff },
    0x2,
    0x0
};

static const SpriteTemplate Unk_ov99_021D4934 = {
    0x0,
    0x0,
    0x0,
    0x2,
    0x96,
    0x2,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x2715, 0x2715, 0x2715, 0x2715, 0xffffffff, 0xffffffff },
    0x2,
    0x0
};

static const SpriteTemplate Unk_ov99_021D49D0 = {
    0x0,
    0x0,
    0x0,
    0x3,
    0xC8,
    0x3,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x2712, 0x2712, 0x2712, 0x2712, 0xffffffff, 0xffffffff },
    0x3,
    0x0
};

static const SpriteTemplate Unk_ov99_021D48CC = {
    0x0,
    0x0,
    0x0,
    0x3,
    0xC8,
    0x3,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x2715, 0x2715, 0x2715, 0x2715, 0xffffffff, 0xffffffff },
    0x3,
    0x0
};

static const SpriteTemplate Unk_ov99_021D4900 = {
    0xC0,
    0xA0,
    0x0,
    0x0,
    0x33,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x2711, 0x2711, 0x2711, 0x2711, 0xffffffff, 0xffffffff },
    0x1,
    0x1
};

static void ov99_021D1A54(UnkStruct_ov99_021D2CB0 *param0)
{
    u8 v0;

    if (param0->unk_00->unk_00 == 0) {
        v0 = SpriteRenderer_LoadPalette(param0->unk_0C, 2, param0->unk_18, param0->unk_1C, param0->unk_10F8, 31, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 10001);
        SpriteRenderer_LoadCharResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param0->unk_10F8, 28, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 10001);
        SpriteRenderer_LoadCellResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param0->unk_10F8, 29, 0, 10001);
        SpriteRenderer_LoadAnimResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param0->unk_10F8, 30, 0, 10001);
    } else {
        v0 = SpriteRenderer_LoadPalette(param0->unk_0C, 2, param0->unk_18, param0->unk_1C, param0->unk_10F8, 36, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 10001);
        SpriteRenderer_LoadCharResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param0->unk_10F8, 33, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 10001);
        SpriteRenderer_LoadCellResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param0->unk_10F8, 34, 0, 10001);
        SpriteRenderer_LoadAnimResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param0->unk_10F8, 35, 0, 10001);
    }

    switch (param0->unk_1101) {
    case 0:
        sub_020039B0(param0->unk_0C, 2, v0 * 16, 16, 4, GX_RGB(28, 12, 6));
        break;
    case 2:
        break;
    case 4:
        sub_020039B0(param0->unk_0C, 2, v0 * 16, 16, 4, GX_RGB(11, 11, 16));
        break;
    }
}

static void ov99_021D1B98(UnkStruct_ov99_021D2CB0 *param0)
{
    SpriteGfxHandler_UnloadCharObjById(param0->unk_1C, 10001);
    SpriteGfxHandler_UnloadPlttObjById(param0->unk_1C, 10001);
    SpriteGfxHandler_UnloadCellObjById(param0->unk_1C, 10001);
    SpriteGfxHandler_UnloadAnimObjById(param0->unk_1C, 10001);
}

static void ov99_021D1BC4(UnkStruct_ov99_021D2CB0 *param0, CellActorData **param1, CellActorData **param2)
{
    CellActorData *v0;
    CellActorData *v1;
    SpriteTemplate v2 = Unk_ov99_021D4900;

    MI_CpuClear8(&param0->unk_1114, sizeof(UnkStruct_ov99_021D2CB0_sub2));

    v0 = SpriteActor_LoadResources(param0->unk_18, param0->unk_1C, &v2);

    sub_0200D390(v0, 1);
    SpriteActor_UpdateObject(v0->unk_00);

    *param1 = v0;
    v2.priority = 60;
    v1 = SpriteActor_LoadResources(param0->unk_18, param0->unk_1C, &v2);

    sub_0200D364(v1, 2);
    sub_0200D390(v1, 1);
    SpriteActor_UpdateObject(v1->unk_00);

    *param2 = v1;

    {
        void *v3;
        NNSG2dCharacterData *v4;
        u32 v5;

        GF_ASSERT(param0->unk_10F4 == NULL);

        if (param0->unk_00->unk_00 == 0) {
            v5 = 27;
        } else {
            v5 = 32;
        }

        param0->unk_10F4 = Heap_AllocFromHeap(75, (0x20 * 8));
        v3 = sub_020071B4(param0->unk_10F8, v5, 0, &v4, 75);

        MI_CpuCopy32(v4->pRawData, param0->unk_10F4, (0x20 * 8));
        Heap_FreeToHeap(v3);
        DC_FlushRange(param0->unk_10F4, (0x20 * 8));
    }
}

static void ov99_021D1C9C(UnkStruct_ov99_021D2CB0 *param0, CellActorData *param1, CellActorData *param2)
{
    sub_0200D0F4(param1);
    sub_0200D0F4(param2);

    if (param0->unk_10F4 != NULL) {
        Heap_FreeToHeap(param0->unk_10F4);
        param0->unk_10F4 = NULL;
    }
}

void ov99_021D1CC8(UnkStruct_ov99_021D2CB0 *param0, int param1)
{
    const UnkStruct_ov99_021D4A04 *v0;

    v0 = &Unk_ov99_021D4A04[param1];

    v0->unk_00(param0);
    v0->unk_04(param0);
    v0->unk_08(param0);
    v0->unk_0C(param0);
    v0->unk_10(param0);
    v0->unk_14(param0);
}

void ov99_021D1CFC(UnkStruct_ov99_021D2CB0 *param0, int param1)
{
    const UnkStruct_ov99_021D4A04 *v0;

    v0 = &Unk_ov99_021D4A04[param1];

    v0->unk_18(param0);
    v0->unk_1C(param0);
    v0->unk_20(param0);
    v0->unk_24(param0);
    v0->unk_28(param0);
    v0->unk_2C(param0);
}

BOOL ov99_021D1D30(UnkStruct_ov99_021D2CB0 *param0, int param1)
{
    BOOL v0;

    v0 = Unk_ov99_021D4A04[param1].unk_30(param0, &param0->unk_FA4);

    if (v0 == 1) {
        MI_CpuClear8(&param0->unk_FA4, sizeof(UnkStruct_ov99_021D3A40));
    }

    return v0;
}

static void ov99_021D1D68(UnkStruct_ov99_021D2CB0 *param0)
{
    BGL *v0 = param0->unk_08;

    PaletteSys_LoadPalette(param0->unk_0C, 127, 18, 75, 0, 0, 0);
    sub_020070E8(param0->unk_10F8, 9, param0->unk_08, 2, 0, 0, 0, 75);
    sub_0200710C(param0->unk_10F8, 3, param0->unk_08, 2, 0, 0, 0, 75);

    PaletteSys_LoadPalette(param0->unk_0C, 127, 21, 75, 1, 0, 0);
    sub_020070E8(param0->unk_10F8, 12, param0->unk_08, 7, 0, 0, 0, 75);
    sub_0200710C(param0->unk_10F8, 6, param0->unk_08, 7, 0, 0, 0, 75);

    sub_02019184(v0, 2, 0, 0);
    sub_02019184(v0, 2, 3, 0);
    sub_02019184(v0, 7, 0, 0);
    sub_02019184(v0, 7, 3, 0);

    sub_02019120(2, 1);
    sub_02019120(7, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

    sub_0201C3C0(param0->unk_08, 2);
    sub_0201C3C0(param0->unk_08, 7);
}

static void ov99_021D1E6C(UnkStruct_ov99_021D2CB0 *param0)
{
    sub_02019120(2, 0);
    sub_02019120(7, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 0);
}

static void ov99_021D1E90(UnkStruct_ov99_021D2CB0 *param0)
{
    ov99_021D1A54(param0);
}

static void ov99_021D1E98(UnkStruct_ov99_021D2CB0 *param0)
{
    ov99_021D1B98(param0);
}

static void ov99_021D1EA0(UnkStruct_ov99_021D2CB0 *param0)
{
    ov99_021D1BC4(param0, &param0->unk_10E0[0], &param0->unk_10E0[1]);
}

static void ov99_021D1EB4(UnkStruct_ov99_021D2CB0 *param0)
{
    ov99_021D1C9C(param0, param0->unk_10E0[0], param0->unk_10E0[1]);
}

static void ov99_021D1EC8(UnkStruct_ov99_021D2CB0 *param0)
{
    SpriteRenderer_LoadPalette(param0->unk_0C, 3, param0->unk_18, param0->unk_1C, param0->unk_10F8, 15, 0, 10, NNS_G2D_VRAM_TYPE_2DSUB, 10003);
    SpriteRenderer_LoadCharResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param0->unk_10F8, 0, 0, NNS_G2D_VRAM_TYPE_2DSUB, 10003);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param0->unk_10F8, 1, 0, 10003);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param0->unk_10F8, 2, 0, 10003);
}

static void ov99_021D1F44(UnkStruct_ov99_021D2CB0 *param0)
{
    SpriteGfxHandler_UnloadCharObjById(param0->unk_1C, 10003);
    SpriteGfxHandler_UnloadPlttObjById(param0->unk_1C, 10003);
    SpriteGfxHandler_UnloadCellObjById(param0->unk_1C, 10003);
    SpriteGfxHandler_UnloadAnimObjById(param0->unk_1C, 10003);
}

static void ov99_021D1F70(UnkStruct_ov99_021D2CB0 *param0)
{
    int v0;

    for (v0 = 2; v0 <= 4; v0++) {
        param0->unk_10E0[v0] = SpriteActor_LoadResources(param0->unk_18, param0->unk_1C, &Unk_ov99_021D499C);

        sub_0200D6A4(param0->unk_10E0[v0], 2);
        sub_0200D390(param0->unk_10E0[v0], 1);
        SpriteActor_UpdateObject(param0->unk_10E0[v0]->unk_00);
    }
}

static void ov99_021D1FB8(UnkStruct_ov99_021D2CB0 *param0)
{
    int v0;

    for (v0 = 2; v0 <= 4; v0++) {
        sub_0200D0F4(param0->unk_10E0[v0]);
    }
}

static void ov99_021D1FD8(UnkStruct_ov99_021D2CB0 *param0)
{
    int v0;

    Easy3DModel_LoadFrom(&param0->unk_2C[0], param0->unk_10F8, 80, 75);

    NNS_G3dMdlUseGlbDiff(param0->unk_2C[0].model);
    NNS_G3dMdlUseGlbAmb(param0->unk_2C[0].model);
    NNS_G3dMdlUseGlbSpec(param0->unk_2C[0].model);
    NNS_G3dMdlUseGlbEmi(param0->unk_2C[0].model);

    Easy3DModel_LoadFrom(&param0->unk_2C[1], param0->unk_10F8, 81, 75);

    NNS_G3dMdlUseGlbDiff(param0->unk_2C[1].model);
    NNS_G3dMdlUseGlbAmb(param0->unk_2C[1].model);
    NNS_G3dMdlUseGlbSpec(param0->unk_2C[1].model);
    NNS_G3dMdlUseGlbEmi(param0->unk_2C[1].model);

    for (v0 = 0; v0 < 16; v0++) {
        Easy3DObject_Init(&param0->unk_6C[0][v0], &param0->unk_2C[0]);
        Easy3DObject_SetPosition(&param0->unk_6C[0][v0], 0, 0, 0);
        Easy3DObject_SetScale(&param0->unk_6C[0][v0], FX32_ONE, FX32_ONE, FX32_ONE);
        Easy3DObject_SetVisibility(&param0->unk_6C[0][v0], 1);
    }

    for (v0 = 0; v0 < 16; v0++) {
        Easy3DObject_Init(&param0->unk_6C[1][v0], &param0->unk_2C[1]);
        Easy3DObject_SetPosition(&param0->unk_6C[1][v0], 0, 0, 0);
        Easy3DObject_SetScale(&param0->unk_6C[1][v0], FX32_ONE, FX32_ONE, FX32_ONE);
        Easy3DObject_SetVisibility(&param0->unk_6C[1][v0], 1);
    }

    param0->unk_1104 = 2;

    ov99_021D4134(param0, 0);
    ov99_021D4170(param0);

    param0->unk_1103 = 1;
}

static void ov99_021D20F8(UnkStruct_ov99_021D2CB0 *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        Easy3DModel_Release(&param0->unk_2C[v0]);
    }

    param0->unk_1103 = 0;
}

static void ov99_021D211C(UnkStruct_ov99_021D2CB0 *param0)
{
    BGL *v0 = param0->unk_08;

    ov99_021D439C(param0, param0->unk_1105, 3, 0);
    param0->unk_1105++;

    sub_02019120(3, 1);
    sub_0201C3C0(param0->unk_08, 2);
}

static void ov99_021D214C(UnkStruct_ov99_021D2CB0 *param0)
{
    sub_02019120(3, 0);
}

static void ov99_021D2158(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D215C(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2160(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2164(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2168(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D216C(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2170(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2174(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2178(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D217C(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2180(UnkStruct_ov99_021D2CB0 *param0)
{
    BGL *v0 = param0->unk_08;

    PaletteSys_LoadPalette(param0->unk_0C, 127, 19, 75, 0, 0, 0);
    sub_020070E8(param0->unk_10F8, 10, param0->unk_08, 2, 0, 0, 0, 75);
    sub_0200710C(param0->unk_10F8, 4, param0->unk_08, 2, 0, 0, 0, 75);

    PaletteSys_LoadPalette(param0->unk_0C, 127, 22, 75, 1, 0, 0);
    sub_020070E8(param0->unk_10F8, 13, param0->unk_08, 7, 0, 0, 0, 75);
    sub_0200710C(param0->unk_10F8, 7, param0->unk_08, 7, 0, 0, 0, 75);

    {
        NNSG2dPaletteData *v1;
        void *v2;

        v2 = sub_020071EC(param0->unk_10F8, 16, &v1, 75);
        MI_CpuCopy16(v1->pRawData, param0->unk_FA4.unk_08_val2.unk_08, 0x20 * 4);
        Heap_FreeToHeap(v2);
    }

    sub_02019184(v0, 2, 0, 0);
    sub_02019184(v0, 2, 3, 0);
    sub_02019184(v0, 7, 0, 0);
    sub_02019184(v0, 7, 3, 0);

    sub_02019120(2, 1);
    sub_02019120(7, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

    sub_0201C3C0(param0->unk_08, 2);
    sub_0201C3C0(param0->unk_08, 7);
}

static void ov99_021D22AC(UnkStruct_ov99_021D2CB0 *param0)
{
    sub_02019120(2, 0);
    sub_02019120(7, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 0);
}

static void ov99_021D22D0(UnkStruct_ov99_021D2CB0 *param0)
{
    ov99_021D1A54(param0);
}

static void ov99_021D22D8(UnkStruct_ov99_021D2CB0 *param0)
{
    ov99_021D1B98(param0);
}

static void ov99_021D22E0(UnkStruct_ov99_021D2CB0 *param0)
{
    ov99_021D1BC4(param0, &param0->unk_10E0[0], &param0->unk_10E0[1]);
}

static void ov99_021D22F4(UnkStruct_ov99_021D2CB0 *param0)
{
    ov99_021D1C9C(param0, param0->unk_10E0[0], param0->unk_10E0[1]);
}

static void ov99_021D2308(UnkStruct_ov99_021D2CB0 *param0)
{
    SpriteRenderer_LoadPalette(param0->unk_0C, 3, param0->unk_18, param0->unk_1C, param0->unk_10F8, 15, 0, 10, NNS_G2D_VRAM_TYPE_2DSUB, 10004);
    SpriteRenderer_LoadCharResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param0->unk_10F8, 0, 0, NNS_G2D_VRAM_TYPE_2DSUB, 10004);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param0->unk_10F8, 1, 0, 10004);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param0->unk_10F8, 2, 0, 10004);
}

static void ov99_021D2384(UnkStruct_ov99_021D2CB0 *param0)
{
    SpriteGfxHandler_UnloadCharObjById(param0->unk_1C, 10004);
    SpriteGfxHandler_UnloadPlttObjById(param0->unk_1C, 10004);
    SpriteGfxHandler_UnloadCellObjById(param0->unk_1C, 10004);
    SpriteGfxHandler_UnloadAnimObjById(param0->unk_1C, 10004);
}

static void ov99_021D23B0(UnkStruct_ov99_021D2CB0 *param0)
{
    int v0;

    for (v0 = 2; v0 <= 3; v0++) {
        param0->unk_10E0[v0] = SpriteActor_LoadResources(param0->unk_18, param0->unk_1C, &Unk_ov99_021D4968);
        sub_0200D390(param0->unk_10E0[v0], 1);
        SpriteActor_UpdateObject(param0->unk_10E0[v0]->unk_00);
    }
}

static void ov99_021D23F0(UnkStruct_ov99_021D2CB0 *param0)
{
    int v0;

    for (v0 = 2; v0 <= 3; v0++) {
        sub_0200D0F4(param0->unk_10E0[v0]);
    }
}

static void ov99_021D2410(UnkStruct_ov99_021D2CB0 *param0)
{
    int v0;

    Easy3DModel_LoadFrom(&param0->unk_2C[0], param0->unk_10F8, 78, 75);

    NNS_G3dMdlUseGlbDiff(param0->unk_2C[0].model);
    NNS_G3dMdlUseGlbAmb(param0->unk_2C[0].model);
    NNS_G3dMdlUseGlbSpec(param0->unk_2C[0].model);
    NNS_G3dMdlUseGlbEmi(param0->unk_2C[0].model);

    for (v0 = 0; v0 < 16; v0++) {
        Easy3DObject_Init(&param0->unk_6C[0][v0], &param0->unk_2C[0]);
        Easy3DObject_SetPosition(&param0->unk_6C[0][v0], 0, 0, 0);
        Easy3DObject_SetScale(&param0->unk_6C[0][v0], FX32_ONE, FX32_ONE, FX32_ONE);
        Easy3DObject_SetVisibility(&param0->unk_6C[0][v0], 1);
    }

    for (v0 = 0; v0 < 16; v0++) {
        Easy3DObject_SetVisibility(&param0->unk_6C[1][v0], 0);
    }

    param0->unk_1104 = 1;

    ov99_021D4134(param0, 1);
    ov99_021D4170(param0);

    param0->unk_1103 = 1;
}

static void ov99_021D24CC(UnkStruct_ov99_021D2CB0 *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        Easy3DModel_Release(&param0->unk_2C[v0]);
    }

    param0->unk_1103 = 0;
}

static void ov99_021D24F0(UnkStruct_ov99_021D2CB0 *param0)
{
    BGL *v0 = param0->unk_08;

    PaletteSys_LoadPalette(param0->unk_0C, 127, 20, 75, 0, 0, 0);
    sub_020070E8(param0->unk_10F8, 11, param0->unk_08, 2, 0, 0, 0, 75);
    sub_0200710C(param0->unk_10F8, 5, param0->unk_08, 2, 0, 0, 0, 75);

    PaletteSys_LoadPalette(param0->unk_0C, 127, 23, 75, 1, 0, 0);
    sub_020070E8(param0->unk_10F8, 14, param0->unk_08, 7, 0, 0, 0, 75);
    sub_0200710C(param0->unk_10F8, 8, param0->unk_08, 7, 0, 0, 0, 75);

    {
        NNSG2dPaletteData *v1;
        void *v2;

        v2 = sub_020071EC(param0->unk_10F8, 17, &v1, 75);
        MI_CpuCopy16(v1->pRawData, param0->unk_FA4.unk_08_val3.unk_08, 0x20 * 8);
        Heap_FreeToHeap(v2);

        sub_02002FBC(param0->unk_0C, param0->unk_FA4.unk_08_val3.unk_08, 0, 16 * 1, 0x20);
        sub_02002FBC(param0->unk_0C, param0->unk_FA4.unk_08_val3.unk_08, 1, 16 * 1, 0x20);
    }

    sub_02019184(v0, 2, 0, 0);
    sub_02019184(v0, 2, 3, 0);
    sub_02019184(v0, 7, 0, 0);
    sub_02019184(v0, 7, 3, 0);

    sub_02019120(2, 1);
    sub_02019120(7, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);

    sub_0201C3C0(param0->unk_08, 2);
    sub_0201C3C0(param0->unk_08, 7);
}

static void ov99_021D2640(UnkStruct_ov99_021D2CB0 *param0)
{
    sub_02019120(2, 0);
    sub_02019120(7, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 0);
}

static void ov99_021D2664(UnkStruct_ov99_021D2CB0 *param0)
{
    ov99_021D1A54(param0);

    SpriteRenderer_LoadPalette(param0->unk_0C, 2, param0->unk_18, param0->unk_1C, param0->unk_10F8, 15, 0, 4, NNS_G2D_VRAM_TYPE_2DMAIN, 10002);
    SpriteRenderer_LoadCharResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param0->unk_10F8, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 10002);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param0->unk_10F8, 1, 0, 10002);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param0->unk_10F8, 2, 0, 10002);
}

static void ov99_021D26E4(UnkStruct_ov99_021D2CB0 *param0)
{
    SpriteGfxHandler_UnloadCharObjById(param0->unk_1C, 10002);
    SpriteGfxHandler_UnloadPlttObjById(param0->unk_1C, 10002);
    SpriteGfxHandler_UnloadCellObjById(param0->unk_1C, 10002);
    SpriteGfxHandler_UnloadAnimObjById(param0->unk_1C, 10002);

    ov99_021D1B98(param0);
}

static void ov99_021D2714(UnkStruct_ov99_021D2CB0 *param0)
{
    ov99_021D1BC4(param0, &param0->unk_10E0[0], &param0->unk_10E0[1]);

    param0->unk_10E0[3] = SpriteActor_LoadResources(param0->unk_18, param0->unk_1C, &Unk_ov99_021D49D0);

    sub_0200D390(param0->unk_10E0[3], 1);
    SpriteActor_EnableObject(param0->unk_10E0[3], 0);
    SpriteActor_UpdateObject(param0->unk_10E0[3]->unk_00);
}

static void ov99_021D275C(UnkStruct_ov99_021D2CB0 *param0)
{
    ov99_021D1C9C(param0, param0->unk_10E0[0], param0->unk_10E0[1]);
    sub_0200D0F4(param0->unk_10E0[3]);
}

static void ov99_021D2780(UnkStruct_ov99_021D2CB0 *param0)
{
    SpriteRenderer_LoadPalette(param0->unk_0C, 3, param0->unk_18, param0->unk_1C, param0->unk_10F8, 15, 0, 10, NNS_G2D_VRAM_TYPE_2DSUB, 10005);
    SpriteRenderer_LoadCharResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param0->unk_10F8, 0, 0, NNS_G2D_VRAM_TYPE_2DSUB, 10005);
    SpriteRenderer_LoadCellResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param0->unk_10F8, 1, 0, 10005);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param0->unk_10F8, 2, 0, 10005);
}

static void ov99_021D27FC(UnkStruct_ov99_021D2CB0 *param0)
{
    SpriteGfxHandler_UnloadCharObjById(param0->unk_1C, 10005);
    SpriteGfxHandler_UnloadPlttObjById(param0->unk_1C, 10005);
    SpriteGfxHandler_UnloadCellObjById(param0->unk_1C, 10005);
    SpriteGfxHandler_UnloadAnimObjById(param0->unk_1C, 10005);
}

static void ov99_021D2828(UnkStruct_ov99_021D2CB0 *param0)
{
    int v0;

    for (v0 = 2; v0 <= 2; v0++) {
        param0->unk_10E0[v0] = SpriteActor_LoadResources(param0->unk_18, param0->unk_1C, &Unk_ov99_021D4934);
        sub_0200D390(param0->unk_10E0[v0], 1);
        SpriteActor_UpdateObject(param0->unk_10E0[v0]->unk_00);
    }

    param0->unk_10E0[4] = SpriteActor_LoadResources(param0->unk_18, param0->unk_1C, &Unk_ov99_021D48CC);

    sub_0200D390(param0->unk_10E0[4], 1);
    SpriteActor_EnableObject(param0->unk_10E0[4], 0);
    SpriteActor_UpdateObject(param0->unk_10E0[4]->unk_00);
}

static void ov99_021D288C(UnkStruct_ov99_021D2CB0 *param0)
{
    int v0;

    for (v0 = 2; v0 <= 2; v0++) {
        sub_0200D0F4(param0->unk_10E0[v0]);
    }

    sub_0200D0F4(param0->unk_10E0[4]);
}

static void ov99_021D28AC(UnkStruct_ov99_021D2CB0 *param0)
{
    int v0;

    Easy3DModel_LoadFrom(&param0->unk_2C[0], param0->unk_10F8, 82, 75);

    NNS_G3dMdlUseGlbDiff(param0->unk_2C[0].model);
    NNS_G3dMdlUseGlbAmb(param0->unk_2C[0].model);
    NNS_G3dMdlUseGlbSpec(param0->unk_2C[0].model);
    NNS_G3dMdlUseGlbEmi(param0->unk_2C[0].model);

    Easy3DModel_LoadFrom(&param0->unk_2C[1], param0->unk_10F8, 83, 75);

    NNS_G3dMdlUseGlbDiff(param0->unk_2C[1].model);
    NNS_G3dMdlUseGlbAmb(param0->unk_2C[1].model);
    NNS_G3dMdlUseGlbSpec(param0->unk_2C[1].model);
    NNS_G3dMdlUseGlbEmi(param0->unk_2C[1].model);

    Easy3DModel_LoadFrom(&param0->unk_2C[2], param0->unk_10F8, 84, 75);

    NNS_G3dMdlUseGlbDiff(param0->unk_2C[2].model);
    NNS_G3dMdlUseGlbAmb(param0->unk_2C[2].model);
    NNS_G3dMdlUseGlbSpec(param0->unk_2C[2].model);
    NNS_G3dMdlUseGlbEmi(param0->unk_2C[2].model);

    Easy3DModel_LoadFrom(&param0->unk_2C[3], param0->unk_10F8, 79, 75);

    for (v0 = 0; v0 < 16; v0++) {
        Easy3DObject_Init(&param0->unk_6C[0][v0], &param0->unk_2C[0]);

        Easy3DObject_SetPosition(&param0->unk_6C[0][v0], 0, 0, 0);
        Easy3DObject_SetScale(&param0->unk_6C[0][v0], FX32_ONE, FX32_ONE, FX32_ONE);
        Easy3DObject_SetVisibility(&param0->unk_6C[0][v0], 1);
    }

    for (v0 = 0; v0 < 16; v0++) {
        Easy3DObject_Init(&param0->unk_6C[1][v0], &param0->unk_2C[2]);

        Easy3DObject_SetPosition(&param0->unk_6C[1][v0], 0, 0, 0);
        Easy3DObject_SetScale(&param0->unk_6C[1][v0], FX32_ONE, FX32_ONE, FX32_ONE);
        Easy3DObject_SetVisibility(&param0->unk_6C[1][v0], 1);
    }

    param0->unk_1104 = 2;

    ov99_021D4134(param0, 2);
    ov99_021D4170(param0);

    param0->unk_1103 = 1;
}

static void ov99_021D2A14(UnkStruct_ov99_021D2CB0 *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        Easy3DModel_Release(&param0->unk_2C[v0]);
    }

    param0->unk_1103 = 0;
}

static void ov99_021D2A38(UnkStruct_ov99_021D2CB0 *param0)
{
    BGL *v0 = param0->unk_08;

    ov99_021D12F0(param0);

    param0->unk_1105 = 0;
    ov99_021D439C(param0, param0->unk_1105, 2, 1);
    param0->unk_1105++;

    sub_02019120(2, 1);
    sub_0201C3C0(param0->unk_08, 2);
}

static void ov99_021D2A70(UnkStruct_ov99_021D2CB0 *param0)
{
    sub_02019120(2, 0);
    sub_02019120(3, 0);
}

static void ov99_021D2A84(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2A88(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2A8C(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2A90(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2A94(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2A98(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2A9C(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2AA0(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2AA4(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2AA8(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2AAC(UnkStruct_ov99_021D2CB0 *param0)
{
    BGL *v0 = param0->unk_08;

    gCoreSys.unk_65 = 0;

    GXLayers_SwapDisplay();
    sub_020038B0(param0->unk_0C, 0, 2, 0x0, 0, 1);

    {
        Strbuf *v1;
        int v2;

        param0->unk_24 = sub_0201A778(75, 1);

        BGL_AddWindow(v0, param0->unk_24, 7, 0, 0, 32, 32, 15, 0);
        BGL_FillWindow(param0->unk_24, 15);
        sub_0201A9F4(param0->unk_24);

        v1 = MessageLoader_GetNewStrbuf(param0->unk_20, ov99_021D4130());
        v2 = (256 - Font_CalcStrbufWidth(FONT_SYSTEM, v1, 0)) / 2;

        Text_AddPrinterWithParamsColorAndSpacing(param0->unk_24, FONT_SYSTEM, v1, v2, 80, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 15), 3, 0, NULL);
        sub_0201ACCC(param0->unk_24);
        Strbuf_Free(v1);
    }

    sub_02019184(v0, 7, 0, 0);
    sub_02019184(v0, 7, 3, 0);
    sub_02019120(7, 1);

    GX_SetVisibleWnd(GX_WNDMASK_NONE);
    GXS_SetVisibleWnd(GX_WNDMASK_NONE);

    sub_0200F44C(0, -16);
    sub_0200F44C(1, -16);
    sub_0200AB4C(0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 3);
    sub_0201C3C0(param0->unk_08, 7);
}

static void ov99_021D2BBC(UnkStruct_ov99_021D2CB0 *param0)
{
    sub_02019120(7, 0);

    if (param0->unk_24 != NULL) {
        BGL_DeleteWindow(param0->unk_24);
        Heap_FreeToHeap(param0->unk_24);
        param0->unk_24 = NULL;
    }
}

static void ov99_021D2BE0(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2BE4(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2BE8(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2BEC(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2BF0(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2BF4(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2BF8(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2BFC(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2C00(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}

static void ov99_021D2C04(UnkStruct_ov99_021D2CB0 *param0)
{
    return;
}
