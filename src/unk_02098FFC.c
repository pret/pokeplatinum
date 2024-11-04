#include "unk_02098FFC.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_0209903C.h"
#include "struct_defs/struct_0209903C_sub1.h"
#include "struct_defs/struct_0209916C.h"

#include "cell_actor.h"
#include "heap.h"
#include "narc.h"
#include "sprite_renderer.h"
#include "sprite_resource.h"
#include "unk_020093B4.h"
#include "unk_0200A328.h"

static void sub_02099058(UnkStruct_0209903C *param0);
static void sub_02099118(UnkStruct_0209903C *param0);
static void sub_020993A8(UnkStruct_0209903C *param0);
static s16 sub_020994B8(UnkStruct_0209903C *param0, u8 param1);

UnkStruct_0209903C *sub_02098FFC(int param0, u16 param1, u16 param2, u16 param3, int param4)
{
    UnkStruct_0209903C *v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_0209903C));
    MI_CpuClear8(v0, sizeof(UnkStruct_0209903C));

    v0->unk_00 = param0;

    if (param1 > 16) {
        v0->unk_0A = 16;
    } else {
        v0->unk_0A = param2;
    }

    v0->unk_0C = param1;
    v0->unk_0E = param3;
    v0->unk_04 = param4;

    sub_02099058(v0);
    return v0;
}

void sub_0209903C(UnkStruct_0209903C *param0)
{
    sub_02099118(param0);
    MI_CpuClear8(param0, sizeof(UnkStruct_0209903C));
    Heap_FreeToHeap(param0);
}

static void sub_02099058(UnkStruct_0209903C *param0)
{
    u32 v0, v1;
    u8 v2[] = { 1, 1, 1, 1 };

    param0->unk_10 = sub_020095C4(param0->unk_0C, &param0->unk_14, param0->unk_00);

    v2[1] = param0->unk_0A;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_1A4[v0] = SpriteResourceCollection_New(v2[v0], v0, param0->unk_00);
        param0->unk_1B4[v0] = SpriteResourceList_New(v2[v0], param0->unk_00);

        for (v1 = 0; v1 < param0->unk_1B4[v0]->capacity; v1++) {
            param0->unk_1B4[v0]->resources[v1] = NULL;
        }
    }

    sub_020993A8(param0);

    param0->unk_1C4 = Heap_AllocFromHeap(param0->unk_00, sizeof(UnkStruct_0209903C_sub1));
    MI_CpuClear8(param0->unk_1C4, sizeof(UnkStruct_0209903C_sub1));
}

static void sub_02099118(UnkStruct_0209903C *param0)
{
    u32 v0;

    Heap_FreeToHeap(param0->unk_1C4);
    CellActorCollection_Delete(param0->unk_10);
    sub_0200A508(param0->unk_1B4[0]);
    sub_0200A700(param0->unk_1B4[1]);

    for (v0 = 0; v0 < 4; v0++) {
        SpriteResourceList_Delete(param0->unk_1B4[v0]);
        SpriteResourceCollection_Delete(param0->unk_1A4[v0]);
    }
}

void sub_02099160(UnkStruct_0209903C *param0)
{
    CellActorCollection_Update(param0->unk_10);
}

UnkStruct_0209916C *sub_0209916C(UnkStruct_0209903C *param0, int param1, u16 param2, u16 param3, u16 param4, u8 param5, u8 param6, int param7)
{
    u8 v0;
    s16 v1;
    u32 v2;
    UnkStruct_0209916C *v3;
    CellActorData *v4 = NULL;
    CellActorInitParamsEx v5;
    SpriteResource *v6;

    v1 = sub_020994B8(param0, param1);

    if (v1 < 0) {
        GF_ASSERT(FALSE);
        return NULL;
    }

    v3 = Heap_AllocFromHeap(param0->unk_00, sizeof(UnkStruct_0209916C));
    MI_CpuClear8(v3, sizeof(UnkStruct_0209916C));
    v3->unk_00 = v1;

    if (param7 == 0) {
        v0 = NNS_G2D_VRAM_TYPE_2DMAIN;
    } else {
        v0 = NNS_G2D_VRAM_TYPE_2DSUB;
    }

    v6 = param0->unk_1B4[1]->resources[v1];

    SpriteResourceCollection_ModifyPalette(param0->unk_1A4[1], param0->unk_1B4[1]->resources[v1], 88, 3 + param1, 0, param0->unk_00);
    sub_0200A6B8(param0->unk_1B4[1]->resources[v1]);

    v4 = Heap_AllocFromHeap(param0->unk_00, sizeof(CellActorData));

    v4->cellActorResourceList = Heap_AllocFromHeap(param0->unk_00, sizeof(CellActorResourceDataList));
    v4->cellActorResourceList->resourceDataList = Heap_AllocFromHeap(param0->unk_00, sizeof(CellActorResourceData));
    v4->cellActorResource = v4->cellActorResourceList->resourceDataList;

    sub_020093B4(v4->cellActorResource, 0xe000, 0xe000 + v1, 0xe000, 0xe000, 0xffffffff, 0xffffffff, 0, param5, param0->unk_1A4[0], param0->unk_1A4[1], param0->unk_1A4[2], param0->unk_1A4[3], NULL, NULL);

    v5.collection = param0->unk_10;
    v5.resourceData = v4->cellActorResource;
    v5.position.x = FX32_CONST(param2);
    v5.position.y = FX32_CONST(param3);
    v5.position.z = FX32_CONST(param4);

    if (v0 == NNS_G2D_VRAM_TYPE_2DSUB) {
        v5.position.y += (192 << FX32_SHIFT);
    }

    v5.affineScale.x = FX32_ONE;
    v5.affineScale.y = FX32_ONE;
    v5.affineScale.z = FX32_ONE;
    v5.affineZRotation = 0;
    v5.priority = param6;
    v5.vramType = v0;
    v5.heapID = param0->unk_00;

    v4->cellActor = CellActorCollection_AddEx(&v5);

    if (v4->cellActor != NULL) {
        CellActor_SetAnim(v4->cellActor, 0);
        v2 = sub_0200A760(
            v6, v0);
        CellActor_SetExplicitPalette(v4->cellActor, v2);
    } else {
        GF_ASSERT(FALSE);
    }

    v3->unk_04 = v4;
    return v3;
}

void sub_0209933C(UnkStruct_0209903C *param0, UnkStruct_0209916C *param1, int param2)
{
    SpriteResource *v0;

    v0 = param0->unk_1B4[1]->resources[param1->unk_00];

    SpriteResourceCollection_ModifyPalette(param0->unk_1A4[1], v0, 88, 3 + param2, 0, param0->unk_00);
    sub_0200A6B8(v0);
}

void sub_02099370(UnkStruct_0209903C *param0, UnkStruct_0209916C *param1)
{
    CellActorData_Delete(param1->unk_04);

    param0->unk_1C4[param1->unk_00].unk_00 = 0;
    param0->unk_1C4[param1->unk_00].unk_02 = 0;
    param0->unk_1C4[param1->unk_00].unk_01 = 0;

    Heap_FreeToHeap(param1);
}

static void sub_020993A8(UnkStruct_0209903C *param0)
{
    int v0;
    SpriteResourceCollection *v1;
    SpriteResourceList *v2;
    SpriteResource *v3;
    NARC *v4;

    v4 = NARC_ctor(NARC_INDEX_GRAPHIC__PORUACT, param0->unk_00);

    v2 = param0->unk_1B4[0];
    v2->resources[0] = SpriteResourceCollection_AddTilesFrom(param0->unk_1A4[0], v4, 0, 0, 0xe000, param0->unk_0E, param0->unk_00);

    GF_ASSERT(v2->resources[0] != NULL);

    switch (param0->unk_04) {
    case 1:
        sub_0200A3DC(v2->resources[0]);
        break;
    case 2:
        sub_0200A450(v2->resources[0]);
        break;
    case 0:
    default:
        sub_0200A328(v2->resources[0]);
        break;
    }

    for (v0 = 0; v0 < 2; v0++) {
        v2 = param0->unk_1B4[2 + v0];
        v2->resources[0] = SpriteResourceCollection_AddFrom(param0->unk_1A4[2 + v0], v4, 1 + v0, 0, 0xe000, 2 + v0, param0->unk_00);

        GF_ASSERT(v2->resources[0] != NULL);
    }

    v2 = param0->unk_1B4[1];

    for (v0 = 0; v0 < param0->unk_0A; v0++) {
        v2->resources[v0] = SpriteResourceCollection_AddPaletteFrom(param0->unk_1A4[1], v4, 3 + 1, 0, 0xe000 + v0, param0->unk_0E, 1, param0->unk_00);

        GF_ASSERT(v2->resources[v0] != NULL);
        sub_0200A5C8(v2->resources[v0]);
    }

    NARC_dtor(v4);
}

static s16 sub_020994B8(UnkStruct_0209903C *param0, u8 param1)
{
    u16 v0 = 0;

    for (v0 = 0; v0 < param0->unk_0A; v0++) {
        if (!param0->unk_1C4[v0].unk_00) {
            param0->unk_1C4[v0].unk_02 = v0;
            param0->unk_1C4[v0].unk_01 = param1;
            param0->unk_1C4[v0].unk_00 = 1;
            return v0;
        }
    }

    return -1;
}
