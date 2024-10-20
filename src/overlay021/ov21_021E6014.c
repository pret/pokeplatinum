#include "overlay021/ov21_021E6014.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/sprite_decl.h"
#include "struct_decls/struct_02006C24_decl.h"

#include "overlay021/ov21_021D0D80.h"
#include "overlay021/ov21_021D1FA4.h"
#include "overlay021/ov21_021D3208.h"
#include "overlay021/ov21_021E29DC.h"
#include "overlay021/struct_ov21_021D0F60_decl.h"
#include "overlay021/struct_ov21_021D13FC.h"
#include "overlay021/struct_ov21_021D3320.h"
#include "overlay021/struct_ov21_021D4660.h"
#include "overlay021/struct_ov21_021E68F4.h"
#include "overlay021/struct_ov21_021E6A68.h"
#include "overlay021/struct_ov21_021E6B20.h"

#include "cell_actor.h"
#include "font.h"
#include "heap.h"
#include "message.h"
#include "message_util.h"
#include "pokedex_data_index.h"
#include "pokedex_heightweight.h"
#include "sprite_resource.h"
#include "strbuf.h"
#include "text.h"
#include "unk_0200762C.h"
#include "unk_020093B4.h"
#include "unk_0200A328.h"
#include "unk_02018340.h"

typedef struct {
    int *unk_00;
    UnkStruct_ov21_021D3320 *unk_04;
    UnkStruct_ov21_021E68F4 *unk_08;
} UnkStruct_ov21_021E6104;

typedef struct {
    UnkStruct_ov21_021D13FC *unk_00;
} UnkStruct_ov21_021E6118;

typedef struct {
    int unk_00;
} UnkStruct_ov21_021E6134;

typedef struct {
    SpriteResource *unk_00[4];
    CellActor *unk_10;
} UnkStruct_ov21_021E6274;

static UnkStruct_ov21_021E6104 *ov21_021E608C(int param0, UnkStruct_ov21_021D0F60 *param1);
static UnkStruct_ov21_021E6118 *ov21_021E60D8(int param0, UnkStruct_ov21_021D0F60 *param1);
static UnkStruct_ov21_021D4660 *ov21_021E6100(int param0, UnkStruct_ov21_021D0F60 *param1);
static void ov21_021E6104(UnkStruct_ov21_021E6104 *param0);
static void ov21_021E6118(UnkStruct_ov21_021E6118 *param0);
static void ov21_021E612C(UnkStruct_ov21_021D4660 *param0);
static int ov21_021E6130(void);
static int ov21_021E6134(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021E6158(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021E6168(UnkStruct_ov21_021E6A68 *param0, void *param1);
static int ov21_021E617C(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static int ov21_021E6200(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static int ov21_021E6204(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3);
static void ov21_021E6274(UnkStruct_ov21_021E6274 *param0);
static void ov21_021E6280(UnkStruct_ov21_021E6274 *param0);
static void ov21_021E628C(UnkStruct_ov21_021E6274 *param0, UnkStruct_ov21_021E6118 *param1, const UnkStruct_ov21_021E6104 *param2, BOOL param3);
static BOOL ov21_021E62F8(UnkStruct_ov21_021E6274 *param0, UnkStruct_ov21_021E6118 *param1, const UnkStruct_ov21_021E6104 *param2, BOOL param3);
static void ov21_021E6338(UnkStruct_ov21_021E6274 *param0, UnkStruct_ov21_021E6118 *param1, const UnkStruct_ov21_021E6104 *param2, const UnkStruct_ov21_021E6134 *param3, int param4);
static void ov21_021E638C(UnkStruct_ov21_021E6274 *param0, UnkStruct_ov21_021E6118 *param1);
static void ov21_021E63C0(UnkStruct_ov21_021E6118 *param0, const UnkStruct_ov21_021E6104 *param1, int param2);
static void ov21_021E6428(UnkStruct_ov21_021E6274 *param0, UnkStruct_ov21_021E6118 *param1, int param2);
static void ov21_021E64D4(UnkStruct_ov21_021E6274 *param0, UnkStruct_ov21_021E6118 *param1);
static void ov21_021E6518(UnkStruct_ov21_021E6274 *param0, UnkStruct_ov21_021E6118 *param1, const UnkStruct_ov21_021E6104 *param2, int param3);
static void ov21_021E65EC(UnkStruct_ov21_021E6274 *param0);
static void ov21_021E65F8(UnkStruct_ov21_021E6274 *param0, UnkStruct_ov21_021E6118 *param1, const UnkStruct_ov21_021E6104 *param2, int param3);
static void ov21_021E65FC(UnkStruct_ov21_021E6274 *param0);
static void ov21_021E6600(UnkStruct_ov21_021E6118 *param0, int param1);
static void ov21_021E66B0(UnkStruct_ov21_021E6118 *param0, const UnkStruct_ov21_021E6104 *param1, int param2);
static void ov21_021E67C8(UnkStruct_ov21_021E6118 *param0, const UnkStruct_ov21_021E6104 *param1);
static void ov21_021E6844(UnkStruct_ov21_021E6118 *param0);
static void ov21_021E6860(CellActor *param0, short param1);
static void ov21_021E687C(Sprite *param0, short param1);
static void ov21_021E688C(CellActor *param0, short param1);
static void ov21_021E68B0(Sprite *param0, short param1);

void ov21_021E6014(UnkStruct_ov21_021E68F4 *param0, UnkStruct_ov21_021D0F60 *param1, int param2)
{
    UnkStruct_ov21_021E6104 *v0;
    UnkStruct_ov21_021E6118 *v1;
    UnkStruct_ov21_021D4660 *v2;

    v0 = ov21_021E608C(param2, param1);
    v1 = ov21_021E60D8(param2, param1);
    v2 = ov21_021E6100(param2, param1);

    param0->unk_00 = v0;
    param0->unk_04 = v1;
    param0->unk_20 = v2;
    param0->unk_24 = ov21_021E6130();

    param0->unk_08[0] = ov21_021E6134;
    param0->unk_08[1] = ov21_021E6158;
    param0->unk_08[2] = ov21_021E6168;
    param0->unk_14[0] = ov21_021E617C;
    param0->unk_14[1] = ov21_021E6200;
    param0->unk_14[2] = ov21_021E6204;
}

void ov21_021E6074(UnkStruct_ov21_021E68F4 *param0)
{
    ov21_021E6104(param0->unk_00);
    ov21_021E6118(param0->unk_04);
    ov21_021E612C(param0->unk_20);
}

static UnkStruct_ov21_021E6104 *ov21_021E608C(int param0, UnkStruct_ov21_021D0F60 *param1)
{
    UnkStruct_ov21_021E6104 *v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov21_021E6104));
    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021E6104));

    v0->unk_00 = ov21_021D138C(param1);
    v0->unk_04 = ov21_021D13EC(param1);
    v0->unk_08 = ov21_021D1410(param1, 5);

    return v0;
}

UnkStruct_ov21_021E6118 *ov21_021E60D8(int param0, UnkStruct_ov21_021D0F60 *param1)
{
    UnkStruct_ov21_021E6118 *v0;
    UnkStruct_ov21_021E68F4 *v1;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov21_021E6118));
    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021E6118));

    v0->unk_00 = ov21_021D13FC(param1);

    return v0;
}

static UnkStruct_ov21_021D4660 *ov21_021E6100(int param0, UnkStruct_ov21_021D0F60 *param1)
{
    return NULL;
}

static void ov21_021E6104(UnkStruct_ov21_021E6104 *param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static void ov21_021E6118(UnkStruct_ov21_021E6118 *param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0);
}

static void ov21_021E612C(UnkStruct_ov21_021D4660 *param0)
{
    return;
}

static int ov21_021E6130(void)
{
    return 0;
}

static int ov21_021E6134(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    UnkStruct_ov21_021E6104 *v0 = param1;
    UnkStruct_ov21_021E6134 *v1;

    v1 = Heap_AllocFromHeap(param0->unk_04, sizeof(UnkStruct_ov21_021E6134));

    GF_ASSERT(v1);
    memset(v1, 0, sizeof(UnkStruct_ov21_021E6134));

    param0->unk_08 = v1;

    return 1;
}

static int ov21_021E6158(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    UnkStruct_ov21_021E6104 *v0 = param1;
    UnkStruct_ov21_021E6134 *v1 = param0->unk_08;

    if (param0->unk_0C == 1) {
        return 1;
    }

    if (param0->unk_10 == 1) {
        return 0;
    }

    return 0;
}

static int ov21_021E6168(UnkStruct_ov21_021E6A68 *param0, void *param1)
{
    UnkStruct_ov21_021E6104 *v0 = param1;
    UnkStruct_ov21_021E6134 *v1 = param0->unk_08;

    Heap_FreeToHeap(v1);
    param0->unk_08 = NULL;

    return 1;
}

static int ov21_021E617C(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const UnkStruct_ov21_021E6104 *v0 = param2;
    const UnkStruct_ov21_021E6134 *v1 = param3->unk_08;
    UnkStruct_ov21_021E6118 *v2 = param0;
    UnkStruct_ov21_021E6274 *v3 = param1->unk_08;

    switch (param1->unk_00) {
    case 0:
        param1->unk_08 = Heap_AllocFromHeap(param1->unk_04, sizeof(UnkStruct_ov21_021E6274));
        memset(param1->unk_08, 0, sizeof(UnkStruct_ov21_021E6274));
        param1->unk_00++;
        break;
    case 1:
        ov21_021E6338(v3, v2, v0, v1, param1->unk_04);
        ov21_021E628C(v3, v2, v0, 1);
        param1->unk_00++;
        break;
    case 2:
        if (ov21_021E62F8(v3, v2, v0, 1)) {
            param1->unk_00++;
        }
        break;
    case 3:
        return 1;
    }

    return 0;
}

static int ov21_021E6200(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const UnkStruct_ov21_021E6104 *v0 = param2;
    const UnkStruct_ov21_021E6134 *v1 = param3->unk_08;
    UnkStruct_ov21_021E6118 *v2 = param0;
    UnkStruct_ov21_021E6274 *v3 = param1->unk_08;

    return 0;
}

static int ov21_021E6204(void *param0, UnkStruct_ov21_021E6B20 *param1, const void *param2, const UnkStruct_ov21_021E6A68 *param3)
{
    const UnkStruct_ov21_021E6104 *v0 = param2;
    const UnkStruct_ov21_021E6134 *v1 = param3->unk_08;
    UnkStruct_ov21_021E6118 *v2 = param0;
    UnkStruct_ov21_021E6274 *v3 = param1->unk_08;

    switch (param1->unk_00) {
    case 0:
        ov21_021E628C(v3, v2, param2, 0);
        param1->unk_00++;
        break;
    case 1:
        if (ov21_021E62F8(v3, v2, param2, 0)) {
            param1->unk_00++;
        }
        break;
    case 2:
        ov21_021E638C(v3, v2);
        param1->unk_00++;
        break;
    case 3:
        Heap_FreeToHeap(param1->unk_08);
        param1->unk_08 = NULL;
        param1->unk_00++;
        break;
    case 4:
        return 1;
    }

    return 0;
}

static void ov21_021E6274(UnkStruct_ov21_021E6274 *param0)
{
    CellActor_SetExplicitOAMMode(param0->unk_10, GX_OAM_MODE_XLU);
}

static void ov21_021E6280(UnkStruct_ov21_021E6274 *param0)
{
    CellActor_SetExplicitOAMMode(param0->unk_10, GX_OAM_MODE_NORMAL);
}

static void ov21_021E628C(UnkStruct_ov21_021E6274 *param0, UnkStruct_ov21_021E6118 *param1, const UnkStruct_ov21_021E6104 *param2, BOOL param3)
{
    ov21_021E6274(param0);

    if (ov21_021E2A54(param2->unk_08)) {
        if (param3) {
            ov21_021D23F8(&param1->unk_00->unk_168, 1, -16, 0, 0, 16, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        } else {
            ov21_021D23F8(&param1->unk_00->unk_168, 1, 0, -16, 16, 0, (GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), 0);
        }
    }
}

static BOOL ov21_021E62F8(UnkStruct_ov21_021E6274 *param0, UnkStruct_ov21_021E6118 *param1, const UnkStruct_ov21_021E6104 *param2, BOOL param3)
{
    BOOL v0;

    if (ov21_021E2A54(param2->unk_08)) {
        v0 = ov21_021D2424(&param1->unk_00->unk_168);
    } else {
        v0 = ov21_021D24EC(&param1->unk_00->unk_168);
    }

    if (v0) {
        if (param3) {
            ov21_021E6280(param0);
        }

        return 1;
    }

    return 0;
}

static void ov21_021E6338(UnkStruct_ov21_021E6274 *param0, UnkStruct_ov21_021E6118 *param1, const UnkStruct_ov21_021E6104 *param2, const UnkStruct_ov21_021E6134 *param3, int param4)
{
    ov21_021E63C0(param1, param2, param4);
    ov21_021E6600(param1, param4);
    ov21_021E66B0(param1, param2, param4);
    ov21_021E6428(param0, param1, param4);
    ov21_021E6518(param0, param1, param2, param4);
    ov21_021E65F8(param0, param1, param2, param4);
    ov21_021E67C8(param1, param2);
}

static void ov21_021E638C(UnkStruct_ov21_021E6274 *param0, UnkStruct_ov21_021E6118 *param1)
{
    ov21_021E65FC(param0);
    ov21_021E65EC(param0);
    ov21_021E64D4(param0, param1);

    BGL_FillWindow(&param1->unk_00->unk_04, 0);
    sub_02019EBC(param1->unk_00->unk_00, 1);

    ov21_021E6844(param1);
}

static void ov21_021E63C0(UnkStruct_ov21_021E6118 *param0, const UnkStruct_ov21_021E6104 *param1, int param2)
{
    void *v0;
    NNSG2dScreenData *v1;

    ov21_021D2724(param0->unk_00, 33, param0->unk_00->unk_00, 3, 0, 0, 1, param2);

    v0 = ov21_021D27B8(param0->unk_00, 74, 1, &v1, param2);

    sub_020198C0(param0->unk_00->unk_00, 3, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);
    sub_0201C3C0(param0->unk_00->unk_00, 3);
}

static void ov21_021E6428(UnkStruct_ov21_021E6274 *param0, UnkStruct_ov21_021E6118 *param1, int param2)
{
    UnkStruct_ov21_021D13FC *v0 = param1->unk_00;
    NARC *v1 = ov21_021D26E0(v0);

    param0->unk_00[0] = SpriteResourceCollection_AddTilesFrom(v0->unk_13C[0], v1, 93, 1, 93 + 7000, NNS_G2D_VRAM_TYPE_2DMAIN, param2);

    sub_0200A3DC(param0->unk_00[0]);
    SpriteResource_ReleaseData(param0->unk_00[0]);

    param0->unk_00[1] = SpriteResourceCollection_AddPaletteFrom(v0->unk_13C[1], v1, 14, 0, 14 + 7000, NNS_G2D_VRAM_TYPE_2DMAIN, 5, param2);

    sub_0200A640(param0->unk_00[1]);
    SpriteResource_ReleaseData(param0->unk_00[1]);

    param0->unk_00[2] = SpriteResourceCollection_AddFrom(v0->unk_13C[2], v1, 91, 1, 91 + 7000, 2, param2);
    param0->unk_00[3] = SpriteResourceCollection_AddFrom(v0->unk_13C[3], v1, 92, 1, 92 + 7000, 3, param2);
}

static void ov21_021E64D4(UnkStruct_ov21_021E6274 *param0, UnkStruct_ov21_021E6118 *param1)
{
    UnkStruct_ov21_021D13FC *v0 = param1->unk_00;

    sub_0200A4E4(param0->unk_00[0]);
    sub_0200A6DC(param0->unk_00[1]);
    SpriteResourceCollection_Remove(v0->unk_13C[0], param0->unk_00[0]);
    SpriteResourceCollection_Remove(v0->unk_13C[1], param0->unk_00[1]);
    SpriteResourceCollection_Remove(v0->unk_13C[2], param0->unk_00[2]);
    SpriteResourceCollection_Remove(v0->unk_13C[3], param0->unk_00[3]);
}

static void ov21_021E6518(UnkStruct_ov21_021E6274 *param0, UnkStruct_ov21_021E6118 *param1, const UnkStruct_ov21_021E6104 *param2, int param3)
{
    CellActorResourceData v0;
    CellActorInitParams v1;
    UnkStruct_ov21_021D13FC *v2 = param1->unk_00;
    VecFx32 v3;
    short v4;
    short v5;
    int v6 = ov21_021D37BC(param2->unk_04);

    sub_020093B4(&v0, 93 + 7000, 14 + 7000, 91 + 7000, 92 + 7000, 0xffffffff, 0xffffffff, 0, 1, v2->unk_13C[0], v2->unk_13C[1], v2->unk_13C[2], v2->unk_13C[3], NULL, NULL);

    v1.collection = v2->unk_138;
    v1.resourceData = &v0;
    v1.priority = 31;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.heapID = param3;

    v4 = Pokedex_HeightWeightData_TrainerPos(param2->unk_04->unk_1748, v6);
    v5 = Pokedex_HeightWeightData_TrainerScale(param2->unk_04->unk_1748, v6);

    v1.position.x = 168 << FX32_SHIFT;
    v1.position.y = (88 + v4) << FX32_SHIFT;

    param0->unk_10 = CellActorCollection_Add(&v1);

    if (ov21_021D3920(param2->unk_04) == 0) {
        CellActor_SetAnim(param0->unk_10, 5);
    } else {
        CellActor_SetAnim(param0->unk_10, 6);
    }

    ov21_021E6860(param0->unk_10, v4);
    ov21_021E688C(param0->unk_10, v5);
}

static void ov21_021E65EC(UnkStruct_ov21_021E6274 *param0)
{
    CellActor_Delete(param0->unk_10);
}

static void ov21_021E65F8(UnkStruct_ov21_021E6274 *param0, UnkStruct_ov21_021E6118 *param1, const UnkStruct_ov21_021E6104 *param2, int param3)
{
    return;
}

static void ov21_021E65FC(UnkStruct_ov21_021E6274 *param0)
{
    return;
}

static void ov21_021E6600(UnkStruct_ov21_021E6118 *param0, int param1)
{
    Strbuf *v0 = Strbuf_Init(32, param1);
    MessageLoader *v1 = MessageLoader_Init(0, 26, 697, param1);

    MessageLoader_GetStrbuf(v1, 43, v0);

    {
        u32 v2 = Font_CalcCenterAlignment(FONT_SYSTEM, v0, 0, 256);
        Text_AddPrinterWithParamsAndColor(&param0->unk_00->unk_04, FONT_SYSTEM, v0, v2, 24, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    }

    MessageLoader_GetStrbuf(v1, 9, v0);
    Text_AddPrinterWithParamsAndColor(&param0->unk_00->unk_04, FONT_SYSTEM, v0, 32, 168, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    MessageLoader_GetStrbuf(v1, 9, v0);
    Text_AddPrinterWithParamsAndColor(&param0->unk_00->unk_04, FONT_SYSTEM, v0, 152, 168, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    Strbuf_Free(v0);
    MessageLoader_Free(v1);
}

static void ov21_021E66B0(UnkStruct_ov21_021E6118 *param0, const UnkStruct_ov21_021E6104 *param1, int param2)
{
    Strbuf *v0 = Strbuf_Init(32, param2);
    int v2 = ov21_021D37BC(param1->unk_04);
    Strbuf *v3 = MessageUtil_SpeciesName(v2, param2);

    int heightMessageBankIndex = Height_Message_Bank_Index();
    MessageLoader *v1 = MessageLoader_Init(0, 26, heightMessageBankIndex, param2);

    Text_AddPrinterWithParamsAndColor(&param0->unk_00->unk_04, FONT_SYSTEM, v3, 26, 152, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    MessageLoader_GetStrbuf(v1, v2, v0);

    {
        u32 v5 = 32 + 78 - Font_CalcStrbufWidth(FONT_SYSTEM, v0, 0);
        Text_AddPrinterWithParamsAndColor(&param0->unk_00->unk_04, FONT_SYSTEM, v0, v5, 168, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    }

    Strbuf_Free(v3);
    MessageLoader_Free(v1);

    v1 = MessageLoader_Init(0, 26, 697, param2);

    Text_AddPrinterWithParamsAndColor(&param0->unk_00->unk_04, FONT_SYSTEM, ov21_021D3914(param1->unk_04), 146, 152, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);

    if (ov21_021D3920(param1->unk_04) == 0) {
        MessageLoader_GetStrbuf(v1, 95, v0);
    } else {
        MessageLoader_GetStrbuf(v1, 96, v0);
    }

    {
        u32 v6 = 152 + 78 - Font_CalcStrbufWidth(FONT_SYSTEM, v0, 0);
        Text_AddPrinterWithParamsAndColor(&param0->unk_00->unk_04, FONT_SYSTEM, v0, v6, 168, TEXT_SPEED_INSTANT, TEXT_COLOR(2, 1, 0), NULL);
    }

    Strbuf_Free(v0);
    MessageLoader_Free(v1);
}

static void ov21_021E67C8(UnkStruct_ov21_021E6118 *param0, const UnkStruct_ov21_021E6104 *param1)
{
    Sprite *v0 = ov21_021D2170(param0->unk_00);
    short v1;
    short v2;
    int v3 = ov21_021D37BC(param1->unk_04);

    v1 = Pokedex_HeightWeightData_PokemonPos(param1->unk_04->unk_1748, v3);
    v2 = Pokedex_HeightWeightData_PokemonScale(param1->unk_04->unk_1748, v3);

    ov21_021D1890(param0->unk_00, param1->unk_04, v3, 2, 88, 88 + v1);

    sub_02007DEC(v0, 6, 0);
    sub_020086FC(v0, 15, 15, 0, 0);

    ov21_021E687C(v0, v1);
    ov21_021E68B0(v0, v2);
}

static void ov21_021E6844(UnkStruct_ov21_021E6118 *param0)
{
    Sprite *v0 = ov21_021D2170(param0->unk_00);

    sub_02007DEC(v0, 6, 1);
    sub_02008780(v0);
}

static void ov21_021E6860(CellActor *param0, short param1)
{
    VecFx32 v0;

    v0.x = 168 << FX32_SHIFT;
    v0.y = (88 + param1) << FX32_SHIFT;

    CellActor_SetPosition(param0, &v0);
}

static void ov21_021E687C(Sprite *param0, short param1)
{
    sub_02007DEC(param0, 1, 88 + param1);
}

static void ov21_021E688C(CellActor *param0, short param1)
{
    VecFx32 v0;

    v0.x = FX_Div(0x100 << FX32_SHIFT, param1 << FX32_SHIFT);
    v0.y = v0.x;

    CellActor_SetAffineScaleEx(param0, &v0, 2);
}

static void ov21_021E68B0(Sprite *param0, short param1)
{
    fx32 v0;

    v0 = FX_Div(0x100 << FX32_SHIFT, param1 << FX32_SHIFT);
    param1 = FX_Mul(v0, 0x100 << FX32_SHIFT) >> FX32_SHIFT;

    sub_02007DEC(param0, 12, param1);
    sub_02007DEC(param0, 13, param1);
}
