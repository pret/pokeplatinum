#include "overlay101/ov101_021D7E48.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0200C738.h"

#include "overlay101/struct_ov101_021D8544.h"

#include "cell_actor.h"
#include "cell_transfer.h"
#include "heap.h"
#include "narc.h"
#include "sprite_resource.h"
#include "unk_020093B4.h"
#include "unk_0200A328.h"
#include "vram_transfer.h"

typedef struct {
    u16 unk_00;
    u16 unk_02;
    SpriteResource *unk_04;
} UnkStruct_ov101_021D7E48_sub1;

typedef struct UnkStruct_ov101_021D7E48_t {
    u32 unk_00;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    u8 unk_0B;
    CellActorCollection *unk_0C;
    UnkStruct_0200C738 unk_10;
    NNSG2dCellTransferState *unk_19C;
    SpriteResourceCollection *unk_1A0;
    SpriteResourceCollection *unk_1A4;
    SpriteResourceCollection *unk_1A8;
    SpriteResourceCollection *unk_1AC;
    UnkStruct_ov101_021D7E48_sub1 *unk_1B0;
    UnkStruct_ov101_021D7E48_sub1 *unk_1B4;
    UnkStruct_ov101_021D7E48_sub1 *unk_1B8;
    UnkStruct_ov101_021D7E48_sub1 *unk_1BC;
} UnkStruct_ov101_021D7E48;

UnkStruct_ov101_021D7E48 *ov101_021D7E48(u32 param0, u32 param1, u32 param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8, u32 param9, u32 param10)
{
    UnkStruct_ov101_021D7E48 *v0 = Heap_AllocFromHeap(param0, (sizeof(UnkStruct_ov101_021D7E48)));

    GF_ASSERT(v0 != NULL);

    v0->unk_00 = param0;
    v0->unk_04 = param3;
    v0->unk_05 = param4;
    v0->unk_06 = param5;
    v0->unk_07 = param6;
    v0->unk_08 = param7;
    v0->unk_09 = param8;
    v0->unk_0A = param9;
    v0->unk_0B = param10;
    v0->unk_0C = sub_020095C4(param1, &v0->unk_10, param0);
    v0->unk_19C = CellTransfer_New(param2, param0);

    VramTransfer_New(param2, param0);

    v0->unk_1A0 = SpriteResourceCollection_New(param3, 0, param0);
    v0->unk_1A4 = SpriteResourceCollection_New(param4, 1, param0);
    v0->unk_1A8 = SpriteResourceCollection_New(param5, 2, param0);
    v0->unk_1AC = SpriteResourceCollection_New(param6, 3, param0);
    v0->unk_1B0 = Heap_AllocFromHeap(param0, (sizeof(UnkStruct_ov101_021D7E48_sub1)) * param3);
    v0->unk_1B4 = Heap_AllocFromHeap(param0, (sizeof(UnkStruct_ov101_021D7E48_sub1)) * param4);
    v0->unk_1B8 = Heap_AllocFromHeap(param0, (sizeof(UnkStruct_ov101_021D7E48_sub1)) * param5);
    v0->unk_1BC = Heap_AllocFromHeap(param0, (sizeof(UnkStruct_ov101_021D7E48_sub1)) * param6);

    {
        u32 v1;

        for (v1 = 0; v1 < param3; v0->unk_1B0[v1].unk_00 = param7, v1++) {
            (void)0;
        }

        for (v1 = 0; v1 < param4; v0->unk_1B4[v1].unk_00 = param8, v1++) {
            (void)0;
        }

        for (v1 = 0; v1 < param5; v0->unk_1B8[v1].unk_00 = param9, v1++) {
            (void)0;
        }

        for (v1 = 0; v1 < param6; v0->unk_1BC[v1].unk_00 = param10, v1++) {
            (void)0;
        }
    }

    return v0;
}

void ov101_021D7FB4(UnkStruct_ov101_021D7E48 *param0)
{
    u32 v0;

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        if (param0->unk_1B0[v0].unk_00 != param0->unk_08) {
            sub_0200A4E4(param0->unk_1B0[v0].unk_04);
        }
    }

    for (v0 = 0; v0 < param0->unk_05; v0++) {
        if (param0->unk_1B4[v0].unk_00 != param0->unk_09) {
            sub_0200A6DC(param0->unk_1B4[v0].unk_04);
        }
    }

    for (v0 = 0; v0 < param0->unk_06; v0++) {
        if (param0->unk_1B8[v0].unk_00 != param0->unk_0A) {
            SpriteResource_ReleaseData(param0->unk_1B8[v0].unk_04);
        }
    }

    for (v0 = 0; v0 < param0->unk_07; v0++) {
        if (param0->unk_1BC[v0].unk_00 != param0->unk_0B) {
            SpriteResource_ReleaseData(param0->unk_1BC[v0].unk_04);
        }
    }

    SpriteResourceCollection_Delete(param0->unk_1A0);
    SpriteResourceCollection_Delete(param0->unk_1A4);
    SpriteResourceCollection_Delete(param0->unk_1A8);
    SpriteResourceCollection_Delete(param0->unk_1AC);
    Heap_FreeToHeap(param0->unk_1B0);
    Heap_FreeToHeap(param0->unk_1B4);
    Heap_FreeToHeap(param0->unk_1B8);
    Heap_FreeToHeap(param0->unk_1BC);
    VramTransfer_Free();
    CellTransfer_Free(param0->unk_19C);
    CellActorCollection_DeleteAll(param0->unk_0C);
    CellActorCollection_Delete(param0->unk_0C);
    Heap_FreeToHeap(param0);
}

void ov101_021D80D4(UnkStruct_ov101_021D7E48 *param0)
{
    CellActorCollection_Update(param0->unk_0C);
    CellTransfer_Update();
}

void ov101_021D80E4(UnkStruct_ov101_021D7E48 *param0, u32 param1, NARC *param2, u32 param3, u32 param4)
{
    u32 v0;

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        if (param0->unk_1B0[v0].unk_00 == param0->unk_08) {
            param0->unk_1B0[v0].unk_00 = param4;
            param0->unk_1B0[v0].unk_02 = 0;
            param0->unk_1B0[v0].unk_04 = SpriteResourceCollection_AddTilesFrom(
                param0->unk_1A0, param2, param3, 0, param4, param1, param0->unk_00);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

void ov101_021D814C(UnkStruct_ov101_021D7E48 *param0, u32 param1)
{
    u32 v0;

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        if (param0->unk_1B0[v0].unk_00 == param1) {
            sub_0200A3DC(param0->unk_1B0[v0].unk_04);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

void ov101_021D8180(UnkStruct_ov101_021D7E48 *param0, u32 param1)
{
    u32 v0;

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        if (param0->unk_1B0[v0].unk_00 == param1) {
            SpriteResource_ReleaseData(param0->unk_1B0[v0].unk_04);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

void ov101_021D81B4(UnkStruct_ov101_021D7E48 *param0, u32 param1, NARC *param2, u32 param3, u32 param4)
{
    u32 v0;

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        if (param0->unk_1B4[v0].unk_00 == param0->unk_09) {
            param0->unk_1B4[v0].unk_00 = param4;
            param0->unk_1B4[v0].unk_02 = 0;
            param0->unk_1B4[v0].unk_04 = SpriteResourceCollection_AddPaletteFrom(param0->unk_1A4, param2, param3, 0, param4, param1, 1, param0->unk_00);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

void ov101_021D8220(UnkStruct_ov101_021D7E48 *param0, u32 param1)
{
    u32 v0;

    for (v0 = 0; v0 < param0->unk_05; v0++) {
        if (param0->unk_1B4[v0].unk_00 == param1) {
            sub_0200A640(param0->unk_1B4[v0].unk_04);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

void ov101_021D8254(UnkStruct_ov101_021D7E48 *param0, u32 param1)
{
    u32 v0;

    for (v0 = 0; v0 < param0->unk_05; v0++) {
        if (param0->unk_1B4[v0].unk_00 == param1) {
            SpriteResource_ReleaseData(param0->unk_1B4[v0].unk_04);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

void ov101_021D8288(UnkStruct_ov101_021D7E48 *param0, NARC *param1, u32 param2, u32 param3)
{
    u32 v0;

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        if (param0->unk_1B8[v0].unk_00 == param0->unk_0A) {
            param0->unk_1B8[v0].unk_00 = param3;
            param0->unk_1B8[v0].unk_02 = 0;
            param0->unk_1B8[v0].unk_04 = SpriteResourceCollection_AddFrom(param0->unk_1A8, param1, param2, 0, param3, 2, param0->unk_00);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

void ov101_021D82F0(UnkStruct_ov101_021D7E48 *param0, NARC *param1, u32 param2, u32 param3)
{
    u32 v0;

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        if (param0->unk_1BC[v0].unk_00 == param0->unk_0B) {
            param0->unk_1BC[v0].unk_00 = param3;
            param0->unk_1BC[v0].unk_02 = 0;
            param0->unk_1BC[v0].unk_04 = SpriteResourceCollection_AddFrom(
                param0->unk_1AC, param1, param2, 0, param3, 3, param0->unk_00);
            return;
        }
    }

    GF_ASSERT(FALSE);
}

void ov101_021D8358(UnkStruct_ov101_021D7E48 *param0, u32 param1, u32 param2, u32 param3, u32 param4)
{
    u32 v0;

    if (param1 != param0->unk_08) {
        for (v0 = 0; v0 < param0->unk_04; v0++) {
            if (param0->unk_1B0[v0].unk_00 == param1) {
                sub_0200A4E4(param0->unk_1B0[v0].unk_04);
                SpriteResourceCollection_Remove(param0->unk_1A0, param0->unk_1B0[v0].unk_04);
                param0->unk_1B0[v0].unk_00 = param0->unk_08;
                break;
            }
        }
    }

    if (param2 != param0->unk_09) {
        for (v0 = 0; v0 < param0->unk_05; v0++) {
            if (param0->unk_1B4[v0].unk_00 == param2) {
                sub_0200A6DC(param0->unk_1B4[v0].unk_04);
                SpriteResourceCollection_Remove(param0->unk_1A4, param0->unk_1B4[v0].unk_04);
                param0->unk_1B4[v0].unk_00 = param0->unk_09;
                break;
            }
        }
    }

    if (param3 != param0->unk_0A) {
        for (v0 = 0; v0 < param0->unk_06; v0++) {
            if (param0->unk_1B8[v0].unk_00 == param3) {
                SpriteResource_ReleaseData(param0->unk_1B8[v0].unk_04);
                SpriteResourceCollection_Remove(param0->unk_1A8, param0->unk_1B8[v0].unk_04);
                param0->unk_1B8[v0].unk_00 = param0->unk_0A;
                break;
            }
        }
    }

    if (param4 != param0->unk_0B) {
        for (v0 = 0; v0 < param0->unk_07; v0++) {
            if (param0->unk_1BC[v0].unk_00 == param4) {
                SpriteResource_ReleaseData(param0->unk_1BC[v0].unk_04);
                SpriteResourceCollection_Remove(param0->unk_1AC, param0->unk_1BC[v0].unk_04);
                param0->unk_1BC[v0].unk_00 = param0->unk_0B;
                break;
            }
        }
    }
}

void ov101_021D84A4(UnkStruct_ov101_021D7E48 *param0, UnkStruct_ov101_021D8544 *param1, const VecFx32 *param2, u32 param3, int param4, u32 param5, u32 param6, u32 param7, u32 param8, int param9, int param10)
{
    CellActorResourceData v0;
    CellActorInitParams v1;
    CellActor *v2;

    if (param8 == param0->unk_0B) {
        param8 = 0xffffffff;
    }

    sub_020093B4(
        &v0, param5, param6, param7, param8, 0xffffffff, 0xffffffff, param4, param9, param0->unk_1A0, param0->unk_1A4, param0->unk_1A8, param0->unk_1AC, NULL, NULL);

    if (param4 == 1) {
        param1->unk_08 = v0.imageProxy;
        param1->unk_00 = 1;
    } else {
        param1->unk_00 = 0;
    }

    v1.collection = param0->unk_0C;
    v1.resourceData = &v0;
    v1.position = *param2;
    v1.priority = param10;
    v1.vramType = param3;
    v1.heapID = param0->unk_00;

    param1->unk_04 = CellActorCollection_Add(&v1);
    GF_ASSERT(param1->unk_04 != NULL);
}

void ov101_021D8544(UnkStruct_ov101_021D8544 *param0)
{
    if (param0->unk_00 == 1) {
        sub_0200A5B4(param0->unk_08);
    }

    CellActor_Delete(param0->unk_04);
    param0->unk_04 = NULL;
}

void ov101_021D8560(CellActor *param0, VecFx32 *param1)
{
    const VecFx32 *v0 = CellActor_GetPosition(param0);
    *param1 = *v0;
}

void ov101_021D8574(CellActor *param0, VecFx32 *param1)
{
    const VecFx32 *v0 = CellActor_GetAffineScale(param0);
    *param1 = *v0;
}
