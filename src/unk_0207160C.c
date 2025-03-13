#include "unk_0207160C.h"

#include <nitro.h>
#include <string.h>

#include "constants/map_prop.h"

#include "struct_decls/struct_02027860_decl.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay005/map_prop.h"
#include "overlay005/ov5_021EF250.h"

#include "field_system.h"
#include "field_task.h"
#include "heap.h"
#include "player_avatar.h"
#include "savedata_misc.h"
#include "unk_02005474.h"
#include "unk_02027F50.h"
#include "unk_02054D00.h"

typedef struct {
    fx32 unk_00[2];
    int unk_08;
    int unk_0C;
    BOOL unk_10;
    BOOL unk_14;
} UnkStruct_020F03F4;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    BOOL unk_04;
    int unk_08;
} UnkStruct_020716D4;

typedef struct {
    int unk_00;
    fx32 unk_04;
    BOOL unk_08;
    int unk_0C;
} UnkStruct_020718D8;

static BOOL sub_020718D8(FieldTask *taskMan);
static BOOL sub_020719D8(FieldTask *taskMan);
static void sub_02071ACC(const int param0);
static void sub_02071AEC(const int param0);

static const UnkStruct_020F03F4 Unk_020F03F4[9] = {
    {
        { (FX32_ONE * 16 * 1), (FX32_ONE * 16 * 9) },
        0xA,
        0x17,
        0x0,
        0x0,
    },
    {
        { (FX32_ONE * 16 * 1), (FX32_ONE * 16 * 9) },
        0x12,
        0x2C,
        0x0,
        0x1,
    },
    {
        { (FX32_ONE * 16 * 1), (FX32_ONE * 16 * 9) },
        0x8,
        0xB,
        0x0,
        0x0,
    },
    {
        { 0x0, (FX32_ONE * 16 * 10) },
        0x3,
        0xB,
        0x1,
        0x0,
    },
    {
        { 0x0, (FX32_ONE * 16 * 5) },
        0x3,
        0xB,
        0x1,
        0x0,
    },
    {
        { 0x0, (FX32_ONE * 16 * 5) },
        0x3,
        0xB,
        0x1,
        0x0,
    },
    {
        { 0x0, (FX32_ONE * 16 * 5) },
        0x3,
        0xB,
        0x1,
        0x0,
    },
    {
        { 0x0, (FX32_ONE * 16 * 5) },
        0x3,
        0x13,
        0x1,
        0x0,
    },
    {
        { 0x0, (FX32_ONE * 16 * 15) },
        0x7,
        0x8,
        0x1,
        0x0,
    }
};

void sub_0207160C(FieldSystem *fieldSystem)
{
    BOOL v0;
    MapProp *v1;
    UnkStruct_02027860 *v2;
    UnkStruct_020716D4 *v3;
    const UnkStruct_020F03F4 *v4;
    fx32 v5;

    v2 = sub_02027860(FieldSystem_GetSaveData(fieldSystem));
    v3 = (UnkStruct_020716D4 *)sub_02027F6C(v2, 7);
    v4 = &Unk_020F03F4[v3->unk_02];
    v5 = v4->unk_00[v3->unk_00];

    if (v4->unk_14) {
        VecFx32 v6 = {
            (FX32_ONE * (16 * 19 + 8)),
            0,
            (FX32_ONE * (16 * (32 + 12) + 8))
        };

        v6.y = v5;
        MapPropManager_LoadOne(fieldSystem->mapPropManager, fieldSystem->areaDataManager, MAP_PROP_MODEL_IRON_ISLAND_LIFT_PLATFORM, &v6, NULL, fieldSystem->mapPropAnimMan);
        v1 = MapPropManager_FindLoadedPropByModelID(fieldSystem->mapPropManager, MAP_PROP_MODEL_IRON_ISLAND_LIFT_PLATFORM);
    } else {
        const int v7[2] = { 258, 502 };

        v0 = sub_02055324(fieldSystem, v7, 2, &v1, NULL);
        GF_ASSERT(v0);
    }

    {
        VecFx32 v8;

        v8 = MapProp_GetPosition(v1);
        v8.y = v5;

        MapProp_SetPosition(v1, &v8);
    }

    ov5_021EF2CC(0, v4->unk_08, v4->unk_0C, 3, 2, v5, fieldSystem->unk_A0);
}

void sub_020716D4(FieldSystem *fieldSystem)
{
    UnkStruct_02027860 *v0;
    UnkStruct_020716D4 *v1;

    v0 = sub_02027860(FieldSystem_GetSaveData(fieldSystem));
    sub_02027F5C(v0, 7);

    v1 = (UnkStruct_020716D4 *)sub_02027F6C(v0, 7);

    v1->unk_04 = 1;
    v1->unk_08 = 0;

    switch (fieldSystem->location->mapId) {
    case 291:
        if (fieldSystem->location->z == 26) {
            v1->unk_00 = 0;
        } else {
            v1->unk_00 = 1;
        }

        v1->unk_02 = 0;
        break;
    case 293:
        if (fieldSystem->location->z == (32 * 1 + 16)) {
            v1->unk_00 = 0;
        } else {
            v1->unk_00 = 1;
        }

        v1->unk_02 = 1;
        break;
    case 294:
        if (fieldSystem->location->z == 15) {
            v1->unk_00 = 0;
        } else {
            v1->unk_00 = 1;
        }

        v1->unk_02 = 2;
        break;
    case 176:
        if (fieldSystem->location->z == 15) {
            v1->unk_00 = 0;
        } else {
            v1->unk_00 = 1;
            v1->unk_04 = 0;
        }

        v1->unk_02 = 3;
        v1->unk_08 = 1;
        break;
    case 178:
        if (fieldSystem->location->z == 15) {
            v1->unk_00 = 0;
        } else {
            v1->unk_00 = 1;
            v1->unk_04 = 0;
        }

        v1->unk_02 = 4;
        v1->unk_08 = 1;
        break;
    case 180:
        if (fieldSystem->location->z == 15) {
            v1->unk_00 = 0;
        } else {
            v1->unk_00 = 1;
            v1->unk_04 = 0;
        }

        v1->unk_02 = 5;
        v1->unk_08 = 1;
        break;
    case 182:
        if (fieldSystem->location->z == 15) {
            v1->unk_00 = 0;
        } else {
            v1->unk_00 = 1;
            v1->unk_04 = 0;
        }

        v1->unk_02 = 6;
        v1->unk_08 = 1;
        break;
    case 184:
        if (fieldSystem->location->z == 23) {
            v1->unk_00 = 0;
        } else {
            v1->unk_00 = 1;
            v1->unk_04 = 0;
        }

        v1->unk_02 = 7;
        v1->unk_08 = 1;
        break;
    case 185:
        if (fieldSystem->location->z == 18) {
            v1->unk_00 = 0;
        } else {
            v1->unk_00 = 1;
            v1->unk_04 = 0;
        }

        v1->unk_02 = 8;
        v1->unk_08 = 1;
        break;
    default:
        GF_ASSERT(0);
    }
}

u8 sub_02071818(FieldSystem *fieldSystem)
{
    UnkStruct_02027860 *v0;
    UnkStruct_020716D4 *v1;

    v0 = sub_02027860(FieldSystem_GetSaveData(fieldSystem));
    v1 = (UnkStruct_020716D4 *)sub_02027F6C(v0, 7);

    if (v1->unk_04) {
        return 1;
    } else {
        return 0;
    }
}

void sub_0207183C(FieldSystem *fieldSystem)
{
    UnkStruct_02027860 *v0;
    UnkStruct_020716D4 *v1;
    UnkStruct_020718D8 *v2;

    v0 = sub_02027860(FieldSystem_GetSaveData(fieldSystem));
    v1 = (UnkStruct_020716D4 *)sub_02027F6C(v0, 7);

    if ((Unk_020F03F4[v1->unk_02].unk_10) && (v1->unk_00 == 1)) {
        return;
    }

    v2 = Heap_AllocFromHeapAtEnd(11, sizeof(UnkStruct_020718D8));
    v2->unk_00 = 0;

    {
        v2->unk_08 = Unk_020F03F4[v1->unk_02].unk_14;
        v2->unk_0C = v1->unk_08;

        if (v1->unk_00 == 0) {
            v2->unk_04 = Unk_020F03F4[v1->unk_02].unk_00[1];
            FieldTask_InitCall(fieldSystem->task, sub_020718D8, v2);
            v1->unk_00 = 1;
        } else {
            v2->unk_04 = Unk_020F03F4[v1->unk_02].unk_00[0];
            FieldTask_InitCall(fieldSystem->task, sub_020719D8, v2);
            v1->unk_00 = 0;
        }
    }
}

static BOOL sub_020718D8(FieldTask *taskMan)
{
    MapProp *v0;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    UnkStruct_020718D8 *v2 = FieldTask_GetEnv(taskMan);

    switch (v2->unk_00) {
    case 0:
        sub_0205ED2C(fieldSystem->playerAvatar, 0);
        sub_02071ACC(v2->unk_0C);
        (v2->unk_00)++;
        break;
    case 1: {
        if (v2->unk_08) {
            v0 = MapPropManager_FindLoadedPropByModelID(fieldSystem->mapPropManager, MAP_PROP_MODEL_IRON_ISLAND_LIFT_PLATFORM);
        } else {
            const int v3[2] = { 258, 502 };
            BOOL v4 = sub_02055324(fieldSystem, v3, 2, &v0, NULL);

            GF_ASSERT(v4);
        }

        {
            fx32 v5;
            VecFx32 v6;

            v6 = MapProp_GetPosition(v0);

            if (v2->unk_0C == 0) {
                v5 = (FX32_ONE);
            } else {
                v5 = (FX32_ONE * 2);
            }

            v6.y += v5;

            if (v6.y >= v2->unk_04) {
                v6.y = v2->unk_04;

                sub_02071AEC(v2->unk_0C);
                (v2->unk_00)++;
            }

            sub_0205ED0C(fieldSystem->playerAvatar, v6.y);
            MapProp_SetPosition(v0, &v6);
        }
    } break;
    case 2:
        ov5_021EF388(0, v2->unk_04, fieldSystem->unk_A0);
        sub_0205ED48(fieldSystem->playerAvatar, 1);
        Sound_PlayEffect(SEQ_SE_DP_KI_GASYAN);
        (v2->unk_00)++;
        break;
    case 3:
        Heap_FreeToHeap(v2);
        return 1;
    }

    return 0;
}

static BOOL sub_020719D8(FieldTask *taskMan)
{
    MapProp *v0;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    UnkStruct_020718D8 *v2 = FieldTask_GetEnv(taskMan);

    switch (v2->unk_00) {
    case 0:
        sub_0205ED2C(fieldSystem->playerAvatar, 0);
        sub_02071ACC(v2->unk_0C);
        (v2->unk_00)++;
        break;
    case 1: {
        if (v2->unk_08) {
            v0 = MapPropManager_FindLoadedPropByModelID(fieldSystem->mapPropManager, MAP_PROP_MODEL_IRON_ISLAND_LIFT_PLATFORM);
        } else {
            const int v3[2] = { 258, 502 };
            BOOL v4 = sub_02055324(fieldSystem, v3, 2, &v0, NULL);

            GF_ASSERT(v4);
        }

        {
            VecFx32 v5;

            v5 = MapProp_GetPosition(v0);
            v5.y -= (FX32_ONE);

            if (v5.y <= v2->unk_04) {
                v5.y = v2->unk_04;

                sub_02071AEC(v2->unk_0C);
                (v2->unk_00)++;
            }

            sub_0205ED0C(fieldSystem->playerAvatar, v5.y);
            MapProp_SetPosition(v0, &v5);
        }
    } break;
    case 2:
        ov5_021EF388(0, v2->unk_04, fieldSystem->unk_A0);
        sub_0205ED48(fieldSystem->playerAvatar, 1);
        Sound_PlayEffect(SEQ_SE_DP_KI_GASYAN);
        (v2->unk_00)++;
        break;
    case 3:
        Heap_FreeToHeap(v2);
        return 1;
    }

    return 0;
}

static void sub_02071ACC(const int param0)
{
    if (param0 == 0) {
        Sound_PlayEffect(SEQ_SE_DP_ELEBETA);
    } else {
        Sound_PlayEffect(SEQ_SE_DP_ELEBETA4);
    }
}

static void sub_02071AEC(const int param0)
{
    if (param0 == 0) {
        Sound_StopEffect(1553, 0);
    } else {
        Sound_StopEffect(1556, 0);
    }
}
