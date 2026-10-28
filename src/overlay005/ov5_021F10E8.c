#include "overlay005/ov5_021F10E8.h"

#include <nitro.h>
#include <string.h>

#include "generated/object_events_gfx.h"

#include "struct_decls/map_object.h"

#include "overlay005/field_effect_manager.h"

#include "map_object.h"
#include "overworld_anim_manager.h"
#include "simple3d.h"

#include "res/graphics/field_effects/field_effects.naix"

typedef struct {
    u32 unk_00;
    Simple3DModel unk_04;
    Simple3DRenderObj unk_18;
} UnkStruct_021F1118;

typedef struct {
    FieldEffectManager *unk_00;
    u32 unk_04;
    UnkStruct_021F1118 *unk_08;
} UnkStruct_021F114C;

typedef struct {
    u32 unk_00;
    FieldEffectManager *unk_04;
    const MapObject *unk_08;
} UnkStruct_021F121C;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    VecFx32 unk_0C;
    Simple3DRenderObj *unk_18;
    UnkStruct_021F121C unk_1C;
} UnkStruct_021F1258;

typedef struct ObjectEventGfxModelEntry {
    u32 id;
    u32 file;
} ObjectEventGfxModelEntry;

#define OBJ_EVENT_MODEL(gfx, model) { .id = OBJ_EVENT_GFX_##gfx, .file = model }

static void ov5_021F1118(UnkStruct_021F1118 *param0, u32 param1, u32 param2, FieldEffectManager *param3);
static void ov5_021F113C(UnkStruct_021F1118 *param0);
static void ov5_021F114C(UnkStruct_021F114C *param0);
static UnkStruct_021F1118 *ov5_021F1174(UnkStruct_021F114C *param0, u32 param1);

static const OverworldAnimManagerFuncs Unk_ov5_0220021C;

// clang-format off
static const ObjectEventGfxModelEntry sObjectEventGfxModelEntries[] = {
    OBJ_EVENT_MODEL(MAP_SIGNPOST,              map_signpost_nsbmd),
    OBJ_EVENT_MODEL(MAILBOX,                   mailbox_nsbmd),
    OBJ_EVENT_MODEL(SIGNBOARD,                 signboard_nsbmd),
    OBJ_EVENT_MODEL(ARROW_SIGNPOST,            arrow_signpost_nsbmd),
    OBJ_EVENT_MODEL(GYM_SIGNPOST,              gym_signpost_nsbmd),
    OBJ_EVENT_MODEL(TRAINER_TIPS_SIGNPOST,     trainer_tips_nsbmd),
    OBJ_EVENT_MODEL(BOOK,                      book_nsbmd),
    OBJ_EVENT_MODEL(ELITE_FOUR_ROOM_DOOR,      elite_four_room_door_nsbmd),
    OBJ_EVENT_MODEL(WALL_BLOCKING_ROTOMS_ROOM, rotom_room_wall_nsbmd),
};
// clang-format on

void *ov5_021F10E8(FieldEffectManager *param0)
{
    UnkStruct_021F114C *v0 = FieldEffectManager_HeapAllocInit(param0, sizeof(UnkStruct_021F114C), 0, 0);
    v0->unk_00 = param0;

    return v0;
}

void ov5_021F10FC(void *param0)
{
    UnkStruct_021F114C *v0 = param0;

    ov5_021F114C(v0);

    if (v0->unk_08 != NULL) {
        FieldEffectManager_HeapFree(v0->unk_08);
    }

    FieldEffectManager_HeapFree(v0);
}

static void ov5_021F1118(UnkStruct_021F1118 *param0, u32 param1, u32 param2, FieldEffectManager *param3)
{
    param0->unk_00 = param1;

    FieldEffectManager_LoadModel(param3, &param0->unk_04, 0, param2, 0);
    Simple3D_CreateRenderObject(&param0->unk_18, &param0->unk_04);
}

static void ov5_021F113C(UnkStruct_021F1118 *param0)
{
    param0->unk_00 = 0xffff;
    Simple3D_FreeModel(&param0->unk_04);
}

static void ov5_021F114C(UnkStruct_021F114C *param0)
{
    u32 v0 = 0, v1 = param0->unk_04;
    UnkStruct_021F1118 *v2 = param0->unk_08;

    while (v0 < v1) {
        if (v2->unk_00 != 0xffff) {
            ov5_021F113C(v2);
        }

        v2++;
        v0++;
    }
}

static UnkStruct_021F1118 *ov5_021F1174(UnkStruct_021F114C *param0, u32 param1)
{
    u32 v0 = param0->unk_04;
    UnkStruct_021F1118 *v1 = param0->unk_08;

    do {
        if (v1->unk_00 == param1) {
            return v1;
        }

        v1++;
        v0--;
    } while (v0);

    return NULL;
}

void ov5_021F1188(FieldEffectManager *param0, u32 param1)
{
    UnkStruct_021F1118 *v0;
    UnkStruct_021F114C *v1 = FieldEffectManager_GetRendererContext(param0, 29);

    GF_ASSERT(param1);

    v1->unk_04 = param1;
    v0 = FieldEffectManager_HeapAllocInit(param0, sizeof(UnkStruct_021F1118) * param1, 0, 0);
    v1->unk_08 = v0;

    do {
        v0->unk_00 = 0xffff;
        v0++;
        param1--;
    } while (param1);
}

void ov5_021F11C0(FieldEffectManager *param0, u32 param1, u32 param2)
{
    UnkStruct_021F1118 *v0;
    UnkStruct_021F114C *v1 = FieldEffectManager_GetRendererContext(param0, 29);

    v0 = ov5_021F1174(v1, param1);

    if (v0 != NULL) {
        return;
    }

    v0 = ov5_021F1174(v1, 0xffff);

    if (v0 == NULL) {
        GF_ASSERT(FALSE);
        return;
    }

    ov5_021F1118(v0, param1, param2, param0);
}

Simple3DRenderObj *ov5_021F11FC(FieldEffectManager *param0, u32 param1)
{
    UnkStruct_021F114C *v0 = FieldEffectManager_GetRendererContext(param0, 29);
    UnkStruct_021F1118 *v1 = ov5_021F1174(v0, param1);

    GF_ASSERT(v1 != NULL);
    return &v1->unk_18;
}

OverworldAnimManager *ov5_021F121C(const MapObject *param0, const VecFx32 *param1)
{
    int v0;
    OverworldAnimManager *v1;
    UnkStruct_021F121C v2;
    FieldEffectManager *v3 = MapObject_GetFieldEffectManager(param0);

    v2.unk_00 = MapObject_GetGraphicsID(param0);
    v2.unk_04 = v3;
    v2.unk_08 = param0;

    v0 = MapObject_CalculateTaskPriority(param0, 2);
    v1 = FieldEffectManager_InitAnimManager(v3, &Unk_ov5_0220021C, param1, 0, &v2, v0);

    return v1;
}

static int ov5_021F1258(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_021F1258 *v0 = param1;
    const UnkStruct_021F121C *v1 = OverworldAnimManager_GetUserData(param0);

    v0->unk_1C = *v1;
    v0->unk_04 = MapObject_GetLocalID(v0->unk_1C.unk_08);
    v0->unk_18 = ov5_021F11FC(v0->unk_1C.unk_04, v0->unk_1C.unk_00);

    if (sub_02062E94(v0->unk_1C.unk_08) == 1) {
        v0->unk_08 = sub_02062C18(v0->unk_1C.unk_08);
    } else {
        v0->unk_08 = MapObject_GetMapHeaderID(v0->unk_1C.unk_08);
    }

    OverworldAnimManager_GetPosition(param0, &v0->unk_0C);
    return 1;
}

static void ov5_021F12A8(OverworldAnimManager *param0, void *param1)
{
    return;
}

static void ov5_021F12AC(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_021F1258 *v0 = param1;
    const MapObject *v1 = v0->unk_1C.unk_08;

    if (sub_02062764(v1, v0->unk_04, v0->unk_08) == 0) {
        FieldEffectManager_FinishAnimManager(param0);
        return;
    }

    {
        VecFx32 v2, v3;

        MapObject_GetPosPtr(v1, &v2);
        MapObject_GetSpriteJumpOffset(v1, &v3);

        v2.x += v3.x + v0->unk_0C.x;
        v2.y += v3.y + v0->unk_0C.y;
        v2.z += v3.z + v0->unk_0C.z;

        OverworldAnimManager_SetPosition(param0, &v2);
    }
}

static void ov5_021F1310(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_021F1258 *v0 = param1;
    VecFx32 v1;

    OverworldAnimManager_GetPosition(param0, &v1);
    Simple3D_DrawRenderObjWithPos(v0->unk_18, &v1);
}

static const OverworldAnimManagerFuncs Unk_ov5_0220021C = {
    sizeof(UnkStruct_021F1258),
    ov5_021F1258,
    ov5_021F12A8,
    ov5_021F12AC,
    ov5_021F1310
};

void FieldEffect_InitRenderObject(FieldEffectManager *param0)
{
    const ObjectEventGfxModelEntry *v0 = sObjectEventGfxModelEntries;
    u32 v1 = NELEMS(sObjectEventGfxModelEntries);

    ov5_021F1188(param0, v1);

    do {
        ov5_021F11C0(param0, v0->id, v0->file);
        v0++;
        v1--;
    } while (v1);
}
