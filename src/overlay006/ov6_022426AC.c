#include "overlay006/ov6_022426AC.h"

#include <nitro.h>
#include <string.h>

#include "consts/gender.h"

#include "struct_defs/archived_sprite.h"
#include "struct_defs/struct_0200C738.h"

#include "cell_actor.h"
#include "heap.h"
#include "math.h"
#include "narc.h"
#include "pokemon.h"
#include "sprite_resource.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_020093B4.h"
#include "unk_0200A328.h"
#include "unk_020131EC.h"

static void ov6_022428F8(GreatMarshLookout_SpriteResources *param0);
static void ov6_02242860(SysTask *param0, void *param1);
static void ov6_02242880(SpriteResourceCollection *param0, SpriteResourceCollection *param1, void *param2, void *param3);

static const u8 Unk_ov6_02249030[] = {
    0x1,
    0x1,
    0x1,
    0x1
};

GreatMarshLookout_SpriteResources *GreatMarshLookout_AllocSpriteResources(const int heapId)
{
    return Heap_AllocFromHeapAtEnd(heapId, sizeof(GreatMarshLookout_SpriteResources));
}

void GreatMarshLookout_FreeSpriteResources(GreatMarshLookout_SpriteResources *resources)
{
    Heap_FreeToHeap(resources);
}

void GreatMarshLookout_CreateLookoutMonSprite(GreatMarshLookout_SpriteResources *resources, const int species)
{
    int i;
    NARC *v1;

    resources->unk_1CC = 0;

    int gender;
    u8 genderRatio = PokemonPersonalData_GetSpeciesValue(species, MON_DATA_PERSONAL_GENDER);

    switch (genderRatio) {
    case GENDER_RATIO_MALE_ONLY:
        gender = GENDER_MALE;
        break;
    case GENDER_RATIO_FEMALE_ONLY:
        gender = GENDER_FEMALE;
        break;
    case GENDER_RATIO_NO_GENDER:
        gender = GENDER_NONE;
        break;
    default:
        if (LCRNG_Next() % 2) {
            gender = GENDER_MALE;
        } else {
            gender = GENDER_FEMALE;
        }
    }

    BuildArchivedPokemonSprite(&resources->unk_28, species, gender, 2, 0, NULL, NULL);

    resources->unk_38 = sub_020095C4(1, &resources->unk_3C, HEAP_ID_FIELD);
    v1 = NARC_ctor(NARC_INDEX_DATA__FIELD_CUTIN, HEAP_ID_FIELD);

    for (i = 0; i < 4; i++) {
        resources->unk_00[i] = SpriteResourceCollection_New(Unk_ov6_02249030[i], i, HEAP_ID_FIELD);
    }

    resources->unk_10[0] = SpriteResourceCollection_AddTilesFrom(resources->unk_00[0], v1, 5, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_FIELD);
    resources->unk_10[1] = SpriteResourceCollection_AddPaletteFrom(resources->unk_00[1], v1, 3, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 1, HEAP_ID_FIELD);
    resources->unk_10[2] = SpriteResourceCollection_AddFrom(resources->unk_00[2], v1, 6, 0, 2, 2, HEAP_ID_FIELD);
    resources->unk_10[3] = SpriteResourceCollection_AddFrom(resources->unk_00[3], v1, 12, 0, 3, 3, HEAP_ID_FIELD);
    resources->unk_20 = sub_0201363C(resources->unk_28.archive, resources->unk_28.character, HEAP_ID_FIELD);
    resources->unk_24 = sub_02013660(resources->unk_28.archive, resources->unk_28.palette, HEAP_ID_FIELD);

    ov6_02242880(resources->unk_00[0], resources->unk_00[1], resources->unk_20, resources->unk_24);

    NARC_dtor(v1);
    ov6_022428F8(resources);
}

void ov6_022427F4(GreatMarshLookout_SpriteResources *param0)
{
    param0->unk_1CC = 1;
    param0->unk_1D0 = 0;

    SysTask_Start(ov6_02242860, param0, 0);
}

void ov6_02242814(GreatMarshLookout_SpriteResources *param0)
{
    param0->unk_1CC = 0;
}

BOOL ov6_02242820(GreatMarshLookout_SpriteResources *param0)
{
    return param0->unk_1D0;
}

void ov6_02242828(GreatMarshLookout_SpriteResources *param0)
{
    u8 v0;

    sub_0200A4E4(param0->unk_10[0]);
    sub_0200A6DC(param0->unk_10[1]);

    for (v0 = 0; v0 < 4; v0++) {
        SpriteResourceCollection_Delete(param0->unk_00[v0]);
    }

    CellActorCollection_Delete(param0->unk_38);
    Heap_FreeToHeap(param0->unk_20);
    Heap_FreeToHeap(param0->unk_24);
}

static void ov6_02242860(SysTask *param0, void *param1)
{
    GreatMarshLookout_SpriteResources *v0 = param1;

    if (v0->unk_1CC) {
        CellActorCollection_Update(v0->unk_38);
    } else {
        v0->unk_1D0 = 1;
        SysTask_Done(param0);
    }
}

static void ov6_02242880(SpriteResourceCollection *param0, SpriteResourceCollection *param1, void *param2, void *param3)
{
    int v0;
    u32 v1, v2;
    SpriteResource *v3;
    SpriteResource *v4;
    NNSG2dImageProxy *v5;
    const NNSG2dImagePaletteProxy *v6;

    v3 = SpriteResourceCollection_Find(param0, 0);
    v4 = SpriteResourceCollection_Find(param1, 1);

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

static void ov6_022428F8(GreatMarshLookout_SpriteResources *param0)
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
        v2.heapID = HEAP_ID_FIELD;
        v2.position.x = FX32_ONE * (256 / 2);
        v2.position.y = FX32_ONE * (192 / 2);

        param0->unk_1C8 = CellActorCollection_AddEx(&v2);

        CellActor_SetAnimateFlag(param0->unk_1C8, 0);
        CellActor_SetAnim(param0->unk_1C8, 0);
    }
}
