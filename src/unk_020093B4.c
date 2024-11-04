#include "unk_020093B4.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02009508_1.h"

#include "cell_actor.h"
#include "heap.h"
#include "sprite_renderer.h"
#include "sprite_resource.h"
#include "unk_0200A328.h"
#include "unk_0200A784.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "unk_0202309C.h"

void sub_020093B4(CellActorResourceData *param0, int param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8, SpriteResourceCollection *param9, SpriteResourceCollection *param10, SpriteResourceCollection *param11, SpriteResourceCollection *param12, SpriteResourceCollection *param13, SpriteResourceCollection *param14)
{
    SpriteResource *v0;
    SpriteResource *v1;
    SpriteResource *v2;
    SpriteResource *v3 = NULL;
    SpriteResource *v4 = NULL;
    SpriteResource *v5 = NULL;
    NNSG2dImageProxy *v6;

    GF_ASSERT(param9);
    GF_ASSERT(param10);
    GF_ASSERT(param12);
    GF_ASSERT(param11);
    GF_ASSERT(param0);

    v0 = SpriteResourceCollection_Find(param9, param1);
    GF_ASSERT(v0);

    v1 = SpriteResourceCollection_Find(param10, param2);
    GF_ASSERT(v1);

    v2 = SpriteResourceCollection_Find(param11, param3);
    GF_ASSERT(v2);

    if (param12) {
        if (param4 != 0xffffffff) {
            v3 = SpriteResourceCollection_Find(param12, param4);
            GF_ASSERT(v3);
        }
    }

    if (param13 != NULL) {
        if (param5 != 0xffffffff) {
            v4 = SpriteResourceCollection_Find(param13, param5);
        }

        if (param6 != 0xffffffff) {
            v5 = SpriteResourceCollection_Find(param14, param6);
        }
    }

    if (param7) {
        v6 = sub_0200A558(v0, v2);
        GF_ASSERT(v6);

        param0->charData = SpriteResource_GetTileData(v0);
    } else {
        v6 = sub_0200A534(v0);
        GF_ASSERT(v6);
        param0->charData = NULL;
    }

    param0->paletteProxy = sub_0200A72C(v1, v6);
    param0->imageProxy = v6;
    param0->cellBank = SpriteResource_GetSpriteData(v2);

    if (v3) {
        param0->cellAnimBank = SpriteResource_GetSpriteAnimData(v3);
    } else {
        param0->cellAnimBank = NULL;
    }

    if (v4) {
        param0->multiCellBank = SpriteResource_GetMultiSpriteData(v4);
        param0->multiCellAnimBank = SpriteResource_GetMultiSpriteAnimData(v5);
    } else {
        param0->multiCellBank = NULL;
        param0->multiCellAnimBank = NULL;
    }

    param0->isVRamTransfer = param7;
    param0->priority = param8;
}

void sub_020094F0(CellActorResourceData *param0)
{
    sub_0200A5B4(param0->imageProxy);
    memset(param0, 0, sizeof(CellActorResourceData));
}

CellActorResourceDataList *sub_02009508(const UnkStruct_02009508_1 *param0, int param1, SpriteResourceCollection *param2, SpriteResourceCollection *param3, SpriteResourceCollection *param4, SpriteResourceCollection *param5, SpriteResourceCollection *param6, SpriteResourceCollection *param7)
{
    int v0;
    int v1;
    CellActorResourceDataList *v2;
    int v3, v4;

    v1 = 0;

    while (param0[v1].unk_00 != 0xfffffffe) {
        v1++;
    }

    v2 = Heap_AllocFromHeap(param1, sizeof(CellActorResourceDataList));
    v2->resourceDataList = Heap_AllocFromHeap(param1, sizeof(CellActorResourceData) * v1);
    v2->numEntries = v1;

    for (v0 = 0; v0 < v2->numEntries; v0++) {
        sub_020093B4(v2->resourceDataList + v0, param0[v0].unk_00, param0[v0].unk_04, param0[v0].unk_08, param0[v0].unk_0C, param0[v0].unk_10, param0[v0].unk_14, param0[v0].unk_18, param0[v0].unk_1C, param2, param3, param4, param5, param6, param7);
    }

    return v2;
}

void sub_020095A8(CellActorResourceDataList *param0)
{
    GF_ASSERT(param0);

    if (param0->resourceDataList) {
        Heap_FreeToHeap(param0->resourceDataList);
    }

    Heap_FreeToHeap(param0);
}

CellActorCollection *sub_020095C4(int param0, GF_G2dRenderer *param1, int param2)
{
    CellActorCollectionParams v0;
    NNSG2dViewRect v1;

    sub_0202309C(&param1->rendererInstance, -FX32_ONE);

    v1.posTopLeft.x = 0;
    v1.posTopLeft.y = 0;
    v1.sizeView.x = (255 << FX32_SHIFT);
    v1.sizeView.y = (192 << FX32_SHIFT);

    sub_0200A8B0(&param1->renderSurface[0], &v1, NNS_G2D_SURFACETYPE_MAIN2D, &param1->rendererInstance);

    v1.posTopLeft.x = 0;
    v1.posTopLeft.y = (192 << FX32_SHIFT);
    v1.sizeView.x = (255 << FX32_SHIFT);
    v1.sizeView.y = (192 << FX32_SHIFT);

    sub_0200A8B0(&param1->renderSurface[1], &v1, NNS_G2D_SURFACETYPE_SUB2D, &param1->rendererInstance);

    v0.maxElements = param0;
    v0.renderer = &param1->rendererInstance;
    v0.heapID = param2;

    return CellActorCollection_New(&v0);
}

void sub_0200962C(GF_G2dRenderer *param0, fx32 param1, fx32 param2)
{
    NNSG2dViewRect v0;

    v0.posTopLeft.x = param1;
    v0.posTopLeft.y = param2;
    v0.sizeView.x = (255 << FX32_SHIFT);
    v0.sizeView.y = (192 << FX32_SHIFT);

    sub_020230E0(&param0->renderSurface[0], &v0);
}

void sub_0200964C(GF_G2dRenderer *param0, fx32 param1, fx32 param2)
{
    NNSG2dViewRect v0;

    v0.posTopLeft.x = param1;
    v0.posTopLeft.y = param2;
    v0.sizeView.x = (255 << FX32_SHIFT);
    v0.sizeView.y = (192 << FX32_SHIFT);

    sub_020230E0(&param0->renderSurface[1], &v0);
}

void sub_0200966C(u32 param0, GXOBJVRamModeChar param1)
{
    switch (param1) {
    case GX_OBJVRAMMODE_CHAR_1D_32K:
        if ((GX_GetBankForOBJ() == GX_VRAM_OBJ_16_G) || (GX_GetBankForOBJ() == GX_VRAM_OBJ_16_F)) {
            sub_0201E9C0(((512 - 16) * 32), 16 * 32, param0);
        } else {
            sub_0201E9C0(((1024 - 16) * 32), 16 * 32, param0);
        }
        break;
    case GX_OBJVRAMMODE_CHAR_1D_64K:
        sub_0201E9C0(((2048 - 16) * 32), 16 * 32, param0);
        break;
    case GX_OBJVRAMMODE_CHAR_1D_128K:
        if ((GX_GetBankForOBJ() == GX_VRAM_OBJ_80_EF) || (GX_GetBankForOBJ() == GX_VRAM_OBJ_80_EG)) {
            sub_0201E9C0(((2560 - 16) * 32), 16 * 32, param0);
        } else {
            sub_0201E9C0(((4096 - 16) * 32), 16 * 32, param0);
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }
}

void sub_02009704(u32 param0)
{
    sub_0201F890((1 << 14 | 1 << 15), param0);
}
