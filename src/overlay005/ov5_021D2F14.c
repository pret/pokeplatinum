#include "overlay005/ov5_021D2F14.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/sprite_template.h"
#include "struct_defs/struct_0200D0F4.h"

#include "overlay005/struct_ov5_021D30A8.h"
#include "overlay007/struct_ov7_0224F2EC.h"
#include "overlay007/struct_ov7_0224F358.h"
#include "overlay104/struct_ov104_02241308.h"

#include "cell_actor.h"
#include "heap.h"
#include "narc.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "unk_02017728.h"

static BOOL ov5_021D3478(SpriteResourceList *param0, SpriteResource *param1);
static void ov5_021D34AC(UnkStruct_ov5_021D30A8 *param0, int param1, int param2, int param3, int param4, int param5);
static void ov5_021D3518(UnkStruct_ov5_021D30A8 *param0, NARC *param1, int param2, int param3, int param4, int param5);

void ov5_021D2F14(UnkStruct_ov5_021D30A8 *param0, const UnkStruct_ov7_0224F2EC *param1, u32 param2, u32 param3)
{
    SpriteResourceTable *v0;
    SpriteResourceTable *v1;
    void *v2;
    u32 v3;
    u32 v4;

    param0->unk_00 = sub_020095C4(param2, &param0->unk_04, param3);
    param0->unk_1C6 = param3;

    if (param1->val2.unk_10 == NULL) {
        param0->unk_1C4 = 6 - 2;
    } else {
        param0->unk_1C4 = 6;
    }

    v1 = Heap_AllocFromHeap(param3, SpriteResourceTable_Size() * param0->unk_1C4);

    for (v4 = 0; v4 < param0->unk_1C4; v4++) {
        v0 = SpriteResourceTable_GetArrayElement(v1, v4);
        v2 = ReadFileToHeap(param3, param1->val1[v4]);

        SpriteResourceTable_LoadFromBinary(v2, v0, param3);
        Heap_FreeToHeap(v2);
    }

    for (v4 = 0; v4 < param0->unk_1C4; v4++) {
        v0 = SpriteResourceTable_GetArrayElement(v1, v4);
        v3 = SpriteResourceTable_GetCount(v0);
        param0->unk_194[v4] = SpriteResourceCollection_New(v3, v4, param3);
    }

    for (v4 = 0; v4 < param0->unk_1C4; v4++) {
        v0 = SpriteResourceTable_GetArrayElement(v1, v4);
        v3 = SpriteResourceTable_GetCount(v0);
        param0->unk_1AC[v4] = SpriteResourceList_New(v3, param3);
        SpriteResourceCollection_Extend(param0->unk_194[v4], v0, param0->unk_1AC[v4], param3);
    }

    for (v4 = 0; v4 < param0->unk_1C4; v4++) {
        v0 = SpriteResourceTable_GetArrayElement(v1, v4);
        SpriteResourceTable_Clear(v0);
    }

    Heap_FreeToHeap(v1);
    SpriteTransfer_RequestCharListAtEnd(param0->unk_1AC[0]);
    SpriteTransfer_RequestPlttFreeSpaceList(param0->unk_1AC[1]);

    v2 = ReadFileToHeap(param3, param1->val2.unk_18);
    param0->unk_190 = sub_02009508(v2, param3, param0->unk_194[0], param0->unk_194[1], param0->unk_194[2], param0->unk_194[3], param0->unk_194[4], param0->unk_194[5]);

    Heap_FreeToHeap(v2);
}

void ov5_021D30A8(UnkStruct_ov5_021D30A8 *param0)
{
    u32 v0;

    CellActorCollection_Delete(param0->unk_00);
    sub_020095A8(param0->unk_190);
    SpriteTransfer_ResetCharTransferList(param0->unk_1AC[0]);
    SpriteTransfer_ResetPlttTransferList(param0->unk_1AC[1]);

    for (v0 = 0; v0 < param0->unk_1C4; v0++) {
        SpriteResourceList_Delete(param0->unk_1AC[v0]);
        SpriteResourceCollection_Delete(param0->unk_194[v0]);
    }
}

CellActor *ov5_021D3104(UnkStruct_ov5_021D30A8 *param0, const UnkStruct_ov7_0224F358 *param1)
{
    CellActorInitParamsEx v0;
    CellActor *v1;
    VecFx32 v2 = { FX32_ONE, FX32_ONE, FX32_ONE };
    VecFx32 v3;

    v3.x = param1->unk_04 * FX32_ONE;
    v3.y = param1->unk_06 * FX32_ONE;
    v3.z = param1->unk_08 * FX32_ONE;

    v0.collection = param0->unk_00;
    v0.resourceData = &param0->unk_190->headers[param1->unk_00];
    v0.position = v3;
    v0.affineScale = v2;
    v0.affineZRotation = 0;
    v0.priority = param1->unk_0C;
    v0.vramType = param1->unk_14;
    v0.heapID = param0->unk_1C6;

    v1 = CellActorCollection_AddEx(&v0);
    GF_ASSERT(v1);

    CellActor_SetAnim(v1, param1->unk_0A);
    CellActor_SetExplicitPaletteWithOffset(v1, param1->unk_10);

    return v1;
}

void ov5_021D3190(UnkStruct_ov5_021D30A8 *param0, UnkStruct_ov104_02241308 *param1, u32 param2, u32 param3)
{
    SpriteResourceTable *v0;
    SpriteResourceTable *v1;
    void *v2;
    u32 v3;
    u32 v4, v5;

    param0->unk_00 = sub_020095C4(param2, &param0->unk_04, param3);
    param0->unk_1C6 = param3;

    if ((param1->val2.unk_10 == 0) || (param1->val2.unk_14 == 0)) {
        param0->unk_1C4 = 6 - 2;
        param0->unk_194[4] = NULL;
        param0->unk_194[5] = NULL;
    } else {
        param0->unk_1C4 = 6;
    }

    for (v4 = 0; v4 < param0->unk_1C4; v4++) {
        param0->unk_194[v4] = SpriteResourceCollection_New(param1->val1[v4], v4, param3);
    }

    for (v4 = 0; v4 < param0->unk_1C4; v4++) {
        if (param1->val1[v4] == 0) {
            continue;
        }

        param0->unk_1AC[v4] = SpriteResourceList_New(param1->val1[v4], param3);

        for (v5 = 0; v5 < param0->unk_1AC[v4]->capacity; v5++) {
            param0->unk_1AC[v4]->resources[v5] = NULL;
        }
    }
}

void ov5_021D3270(UnkStruct_ov5_021D30A8 *param0, int param1, int param2, int param3, int param4, int param5, int param6)
{
    SpriteResource *v0;
    int v1;

    if (SpriteResourceCollection_IsIDUnused(param0->unk_194[1], param6) == 0) {
        GF_ASSERT(0);
        return;
    }

    v0 = SpriteResourceCollection_AddPalette(param0->unk_194[1], param1, param2, param3, param6, param5, param4, param0->unk_1C6);

    if (v0 != NULL) {
        v1 = SpriteTransfer_RequestPlttFreeSpace(v0);
        GF_ASSERT(v1 == 1);

        ov5_021D3478(param0->unk_1AC[1], v0);
        SpriteTransfer_GetPlttOffset(v0, param5);
        return;
    }

    GF_ASSERT(0);
}

void ov5_021D32E8(UnkStruct_ov5_021D30A8 *param0, NARC *param1, int param2, int param3, int param4, int param5, int param6)
{
    SpriteResource *v0;
    int v1;

    if (SpriteResourceCollection_IsIDUnused(param0->unk_194[1], param6) == 0) {
        GF_ASSERT(0);
        return;
    }

    v0 = SpriteResourceCollection_AddPaletteFrom(param0->unk_194[1], param1, param2, param3, param6, param5, param4, param0->unk_1C6);

    if (v0 != NULL) {
        v1 = SpriteTransfer_RequestPlttFreeSpace(v0);
        GF_ASSERT(v1 == 1);

        ov5_021D3478(param0->unk_1AC[1], v0);
        SpriteTransfer_GetPlttOffset(v0, param5);
        return;
    }

    GF_ASSERT(0);
}

void ov5_021D3360(UnkStruct_ov5_021D30A8 *param0, int param1, int param2, int param3, int param4)
{
    ov5_021D34AC(param0, param1, param2, param3, 2, param4);
}

void ov5_021D3374(UnkStruct_ov5_021D30A8 *param0, NARC *param1, int param2, int param3, int param4)
{
    ov5_021D3518(param0, param1, param2, param3, 2, param4);
}

void ov5_021D3388(UnkStruct_ov5_021D30A8 *param0, int param1, int param2, int param3, int param4)
{
    ov5_021D34AC(param0, param1, param2, param3, 3, param4);
}

void ov5_021D339C(UnkStruct_ov5_021D30A8 *param0, NARC *param1, int param2, int param3, int param4)
{
    ov5_021D3518(param0, param1, param2, param3, 3, param4);
}

void ov5_021D33B0(UnkStruct_ov5_021D30A8 *param0, int param1, int param2, BOOL param3, int param4, int param5)
{
    SpriteResource *v0;

    if (SpriteResourceCollection_IsIDUnused(param0->unk_194[0], param5) == 0) {
        GF_ASSERT(0);
        return;
    }

    v0 = SpriteResourceCollection_AddTiles(param0->unk_194[0], param1, param2, param3, param5, param4, param0->unk_1C6);

    if (v0 != NULL) {
        SpriteTransfer_RequestCharAtEnd(v0);
        ov5_021D3478(param0->unk_1AC[0], v0);
        return;
    }

    GF_ASSERT(0);
}

void ov5_021D3414(UnkStruct_ov5_021D30A8 *param0, NARC *param1, int param2, BOOL param3, int param4, int param5)
{
    SpriteResource *v0;

    if (SpriteResourceCollection_IsIDUnused(param0->unk_194[0], param5) == 0) {
        GF_ASSERT(0);
        return;
    }

    v0 = SpriteResourceCollection_AddTilesFrom(param0->unk_194[0], param1, param2, param3, param5, param4, param0->unk_1C6);

    if (v0 != NULL) {
        SpriteTransfer_RequestCharAtEnd(v0);
        ov5_021D3478(param0->unk_1AC[0], v0);

        return;
    }

    GF_ASSERT(0);
}

static BOOL ov5_021D3478(SpriteResourceList *param0, SpriteResource *param1)
{
    int v0;

    for (v0 = 0; v0 < param0->capacity; v0++) {
        if (param0->resources[v0] != NULL) {
            continue;
        }

        param0->resources[v0] = param1;
        param0->count++;

        return 1;
    }

    return 0;
}

static void ov5_021D34AC(UnkStruct_ov5_021D30A8 *param0, int param1, int param2, int param3, int param4, int param5)
{
    SpriteResource *v0;
    int v1;

    if (SpriteResourceCollection_IsIDUnused(param0->unk_194[param4], param5) == 0) {
        GF_ASSERT(0);
        return;
    }

    v0 = SpriteResourceCollection_Add(param0->unk_194[param4], param1, param2, param3, param5, param4, param0->unk_1C6);

    if (v0 != NULL) {
        v1 = ov5_021D3478(param0->unk_1AC[param4], v0);
        GF_ASSERT(v1 == 1);
        return;
    }

    GF_ASSERT(0);
}

static void ov5_021D3518(UnkStruct_ov5_021D30A8 *param0, NARC *param1, int param2, int param3, int param4, int param5)
{
    SpriteResource *v0;
    int v1;

    if (SpriteResourceCollection_IsIDUnused(param0->unk_194[param4], param5) == 0) {
        GF_ASSERT(0);
        return;
    }

    v0 = SpriteResourceCollection_AddFrom(param0->unk_194[param4], param1, param2, param3, param5, param4, param0->unk_1C6);

    if (v0 != NULL) {
        v1 = ov5_021D3478(param0->unk_1AC[param4], v0);

        GF_ASSERT(v1 == 1);
        return;
    }

    GF_ASSERT(0);
}

CellActorData *ov5_021D3584(UnkStruct_ov5_021D30A8 *param0, const SpriteTemplate *param1)
{
    int v0;
    int v1;
    CellActorData *v2 = NULL;
    CellActorInitParamsEx v3;
    int v4[6];

    v2 = Heap_AllocFromHeap(param0->unk_1C6, sizeof(CellActorData));

    v2->unk_08 = Heap_AllocFromHeap(param0->unk_1C6, sizeof(SpriteResourcesHeaderList));
    v2->unk_08->headers = Heap_AllocFromHeap(param0->unk_1C6, sizeof(CellActorResourceData));
    v2->unk_04 = v2->unk_08->headers;

    for (v0 = 0; v0 < 6; v0++) {
        v4[v0] = param1->resources[v0];
    }

    if ((param0->unk_194[4] == NULL) || (param0->unk_194[5] == NULL)) {
        v4[4] = 0xffffffff;
        v4[5] = 0xffffffff;
    } else {
        if ((v4[4] != 0xffffffff) && (SpriteResourceCollection_IsIDUnused(param0->unk_194[4], v4[4]) == 0)) {
            v4[4] = 0xffffffff;
        }

        if ((v4[5] != 0xffffffff) && (SpriteResourceCollection_IsIDUnused(param0->unk_194[5], v4[5]) == 0)) {
            v4[5] = 0xffffffff;
        }
    }

    sub_020093B4(v2->unk_04, v4[0], v4[1], v4[2], v4[3], v4[4], v4[5], param1->transferToVRAM, param1->bgPriority, param0->unk_194[0], param0->unk_194[1], param0->unk_194[2], param0->unk_194[3], param0->unk_194[4], param0->unk_194[5]);

    v3.collection = param0->unk_00;
    v3.resourceData = v2->unk_04;
    v3.position.x = FX32_CONST(param1->x);
    v3.position.y = FX32_CONST(param1->y);
    v3.position.z = FX32_CONST(param1->z);

    if (param1->vramType == NNS_G2D_VRAM_TYPE_2DSUB) {
        v3.position.y += (192 << FX32_SHIFT);
    }

    v3.affineScale.x = FX32_ONE;
    v3.affineScale.y = FX32_ONE;
    v3.affineScale.z = FX32_ONE;
    v3.affineZRotation = 0;
    v3.priority = param1->priority;
    v3.vramType = param1->vramType;
    v3.heapID = param0->unk_1C6;

    v2->unk_00 = CellActorCollection_AddEx(&v3);

    if (v2->unk_00 != NULL) {
        v1 = CellActor_GetExplicitPalette(v2->unk_00);
        CellActor_SetAnim(v2->unk_00, param1->animIdx);
        CellActor_SetExplicitPalette(v2->unk_00, v1 + param1->plttIdx);
    } else {
        GF_ASSERT(FALSE);
    }

    return v2;
}

void ov5_021D375C(UnkStruct_ov5_021D30A8 *param0)
{
    u32 v0;

    CellActorCollection_Delete(param0->unk_00);
    SpriteTransfer_ResetCharTransferList(param0->unk_1AC[0]);
    SpriteTransfer_ResetPlttTransferList(param0->unk_1AC[1]);

    for (v0 = 0; v0 < param0->unk_1C4; v0++) {
        SpriteResourceList_Delete(param0->unk_1AC[v0]);
        SpriteResourceCollection_Delete(param0->unk_194[v0]);
    }
}
