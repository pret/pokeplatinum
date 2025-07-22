#include "unk_0206A780.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0206A844.h"

#include "overlay005/ov5_021D2F14.h"

#include "heap.h"
#include "narc.h"
#include "sprite.h"
#include "sprite_system.h"

static const SpriteTemplate Unk_020EFA04[] = {
    {
        0x50,
        0x10,
        0x0,
        0x0,
        0x0,
        0x0,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        { 0x34D8, 0x34D8, 0x34D8, 0x34D8, 0x0, 0x0 },
        0x0,
        0x0,
    },
    {
        0x50,
        0xE0,
        0x0,
        0x1,
        0x0,
        0x0,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        { 0x34D8, 0x34D8, 0x34D8, 0x34D8, 0x0, 0x0 },
        0x0,
        0x0,
    },
};

UnkStruct_0206A844 *sub_0206A780(int heapID) {
    SpriteResourceCapacities v0 = {
        1, 1, 1, 1, 0, 0
    };
    u32 v1;
    UnkStruct_0206A844 *v2;
    NARC *v3;

    v2 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_0206A844));
    MI_CpuClear8(v2, sizeof(UnkStruct_0206A844));

    ov5_021D3190(&v2->unk_00, &v0, 2, HEAP_ID_FIELDMAP);

    v3 = NARC_ctor(NARC_INDEX_GRAPHIC__FLD_COMACT, heapID);

    ov5_021D32E8(&v2->unk_00, v3, 0, 0, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 13528);
    ov5_021D3374(&v2->unk_00, v3, 2, 0, 13528);
    ov5_021D339C(&v2->unk_00, v3, 3, 0, 13528);
    ov5_021D3414(&v2->unk_00, v3, 1, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 13528);

    for (v1 = 0; v1 < 2; v1++) {
        v2->unk_1C8[v1] = ov5_021D3584(&v2->unk_00, &Unk_020EFA04[v1]);
    }

    NARC_dtor(v3);
    return v2;
}

void sub_0206A844(UnkStruct_0206A844 *param0) {
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        if (param0->unk_1C8[v0] != NULL) {
            Sprite_DeleteAndFreeResources(param0->unk_1C8[v0]);
        }
    }

    ov5_021D375C(&param0->unk_00);
    Heap_Free(param0);
}

void sub_0206A870(UnkStruct_0206A844 *param0) {
    int v0 = 0;

    for (v0 = 0; v0 < 2; v0++) {
        if (param0->unk_1C8[v0] != NULL) {
            Sprite_UpdateAnim(param0->unk_1C8[v0]->sprite, FX32_ONE);
        }
    }

    SpriteList_Update(param0->unk_00.unk_00);
}

void sub_0206A8A0(UnkStruct_0206A844 *param0, s16 param1, s16 param2, s16 param3) {
    ManagedSprite_SetPositionXY(param0->unk_1C8[0], param1, param2);
    ManagedSprite_SetPositionXY(param0->unk_1C8[1], param1, param3);
}

void sub_0206A8C4(UnkStruct_0206A844 *param0, u16 param1, BOOL param2) {
    if (param1 >= 2) {
        return;
    }

    ManagedSprite_SetDrawFlag(param0->unk_1C8[param1], param2);
}
