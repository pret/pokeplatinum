#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02009714_decl.h"
#include "struct_decls/struct_02009DC8_decl.h"
#include "sys_task_manager.h"

#include "struct_defs/archived_sprite.h"
#include "struct_defs/struct_0200C738.h"

#include "narc.h"
#include "unk_020093B4.h"
#include "unk_02009714.h"
#include "unk_0200A328.h"
#include "sys_task.h"
#include "unk_020131EC.h"
#include "heap.h"
#include "unk_0201D15C.h"
#include "cell_actor.h"
#include "pokemon.h"
#include "overlay006/ov6_022426AC.h"

typedef struct UnkStruct_ov6_022426B8_t {
    UnkStruct_02009714 * unk_00[4];
    UnkStruct_02009DC8 * unk_10[4];
    void * unk_20;
    void * unk_24;
    ArchivedSprite unk_28;
    CellActorCollection * unk_38;
    UnkStruct_0200C738 unk_3C;
    CellActor * unk_1C8;
    BOOL unk_1CC;
    BOOL unk_1D0;
} UnkStruct_ov6_022426B8;

static void ov6_022428F8(UnkStruct_ov6_022426B8 * param0);
static void ov6_02242860(SysTask * param0, void * param1);
static void ov6_02242880(UnkStruct_02009714 * param0, UnkStruct_02009714 * param1, void * param2, void * param3);

static const u8 Unk_ov6_02249030[] = {
    0x1,
    0x1,
    0x1,
    0x1
};

UnkStruct_ov6_022426B8 * ov6_022426AC (const int param0)
{
    UnkStruct_ov6_022426B8 * v0;

    v0 = Heap_AllocFromHeapAtEnd(param0, sizeof(UnkStruct_ov6_022426B8));
    return v0;
}

void ov6_022426B8 (UnkStruct_ov6_022426B8 * param0)
{
    Heap_FreeToHeap(param0);
}

void ov6_022426C0 (UnkStruct_ov6_022426B8 * param0, const int param1)
{
    int v0;
    NARC * v1;

    param0->unk_1CC = 0;

    {
        int v2;
        u8 v3;

        v3 = PokemonPersonalData_GetSpeciesValue(param1, 18);

        switch (v3) {
        case 0:
            v2 = 0;
            break;
        case 254:
            v2 = 1;
            break;
        case 255:
            v2 = 2;
            break;
        default:
            if (LCRNG_Next() % 2) {
                v2 = 0;
            } else {
                v2 = 1;
            }
        }

        BuildArchivedPokemonSprite(&param0->unk_28, param1, v2, 2, 0, NULL, NULL);
    }

    param0->unk_38 = sub_020095C4(1, &param0->unk_3C, 4);
    v1 = NARC_ctor(NARC_INDEX_DATA__FIELD_CUTIN, 4);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_00[v0] = sub_02009714(Unk_ov6_02249030[v0], v0, 4);
    }

    {
        param0->unk_10[0] = sub_02009A4C(param0->unk_00[0], v1, 5, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 4);
        param0->unk_10[1] = sub_02009B04(param0->unk_00[1], v1, 3, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 1, 4);
        param0->unk_10[2] = sub_02009BC4(param0->unk_00[2], v1, 6, 0, 2, 2, 4);
        param0->unk_10[3] = sub_02009BC4(param0->unk_00[3], v1, 12, 0, 3, 3, 4);
    }

    param0->unk_20 = sub_0201363C(param0->unk_28.archive, param0->unk_28.character, 4);
    param0->unk_24 = sub_02013660(param0->unk_28.archive, param0->unk_28.palette, 4);

    ov6_02242880(param0->unk_00[0], param0->unk_00[1], param0->unk_20, param0->unk_24);

    NARC_dtor(v1);
    ov6_022428F8(param0);
}

void ov6_022427F4 (UnkStruct_ov6_022426B8 * param0)
{
    param0->unk_1CC = 1;
    param0->unk_1D0 = 0;

    SysTask_Start(ov6_02242860, param0, 0);
}

void ov6_02242814 (UnkStruct_ov6_022426B8 * param0)
{
    param0->unk_1CC = 0;
}

BOOL ov6_02242820 (UnkStruct_ov6_022426B8 * param0)
{
    return param0->unk_1D0;
}

void ov6_02242828 (UnkStruct_ov6_022426B8 * param0)
{
    u8 v0;

    sub_0200A4E4(param0->unk_10[0]);
    sub_0200A6DC(param0->unk_10[1]);

    for (v0 = 0; v0 < 4; v0++) {
        sub_02009754(param0->unk_00[v0]);
    }

    CellActorCollection_Delete(param0->unk_38);
    Heap_FreeToHeap(param0->unk_20);
    Heap_FreeToHeap(param0->unk_24);
}

static void ov6_02242860 (SysTask * param0, void * param1)
{
    UnkStruct_ov6_022426B8 * v0 = param1;

    if (v0->unk_1CC) {
        CellActorCollection_Update(v0->unk_38);
    } else {
        v0->unk_1D0 = 1;
        SysTask_Done(param0);
    }
}

static void ov6_02242880 (UnkStruct_02009714 * param0, UnkStruct_02009714 * param1, void * param2, void * param3)
{
    int v0;
    u32 v1, v2;
    UnkStruct_02009DC8 * v3;
    UnkStruct_02009DC8 * v4;
    NNSG2dImageProxy * v5;
    const NNSG2dImagePaletteProxy * v6;

    v3 = sub_02009DC8(param0, 0);
    v4 = sub_02009DC8(param1, 1);

    sub_0200A3DC(v3);
    sub_0200A640(v4);

    v5 = sub_0200A534(v3);
    v6 = sub_0200A72C(v4, v5);
    v1 = NNS_G2dGetImageLocation(v5, NNS_G2D_VRAM_TYPE_2DMAIN);
    v2 = NNS_G2dGetImagePaletteLocation(v6, NNS_G2D_VRAM_TYPE_2DMAIN);
    v0 = (32 * 10) * 10;

    DC_FlushRange(param2, v0);
    GX_LoadOBJ(param2, v1, v0);

    v0 = 32;

    DC_FlushRange(param3, v0);
    GX_LoadOBJPltt(param3, v2, v0);
}

static void ov6_022428F8 (UnkStruct_ov6_022426B8 * param0)
{
    int v0;
    CellActorResourceData v1;

    sub_020093B4(&v1, 0, 1, 2, 3, 0xffffffff, 0xffffffff, 0, 0, param0->unk_00[0], param0->unk_00[1], param0->unk_00[2], param0->unk_00[3], NULL, NULL);

    {
        CellActorInitParamsEx v2;

        v2.collection = param0->unk_38;
        v2.resourceData = &v1;
        v2.position.x = 0;
        v2.position.y = 0;
        v2.position.z = 0;
        v2.affineScale.x = FX32_ONE;
        v2.affineScale.y = FX32_ONE;
        v2.affineScale.z = FX32_ONE;
        v2.affineZRotation = 0;
        v2.priority = 0;
        v2.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        v2.heapID = 4;
        v2.position.x = FX32_ONE * (256 / 2);
        v2.position.y = FX32_ONE * (192 / 2);

        param0->unk_1C8 = CellActorCollection_AddEx(&v2);

        CellActor_SetAnimateFlag(param0->unk_1C8, 0);
        CellActor_SetAnim(param0->unk_1C8, 0);
    }
}
