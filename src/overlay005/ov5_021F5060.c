#include "overlay005/ov5_021F5060.h"

#include <nitro.h>
#include <string.h>

#include "overlay005/field_effect_manager.h"

#include "simple3d.h"

typedef struct {
    FieldEffectManager *unk_00;
    Simple3DModel unk_04;
    Simple3DRenderObj unk_18;
} UnkStruct_021F508C;

static void ov5_021F508C(UnkStruct_021F508C *param0);
static void ov5_021F50B0(UnkStruct_021F508C *param0);

void *ov5_021F5060(FieldEffectManager *param0)
{
    UnkStruct_021F508C *v0 = FieldEffectManager_HeapAllocInit(param0, (sizeof(UnkStruct_021F508C)), 0, 0);
    v0->unk_00 = param0;

    ov5_021F508C(v0);

    return v0;
}

void ov5_021F507C(void *param0)
{
    UnkStruct_021F508C *v0 = param0;

    ov5_021F50B0(v0);
    FieldEffectManager_HeapFree(v0);
}

static void ov5_021F508C(UnkStruct_021F508C *param0)
{
    FieldEffectManager_LoadModel(param0->unk_00, &param0->unk_04, 0, 21, 0);
    Simple3D_CreateRenderObject(&param0->unk_18, &param0->unk_04);
}

static void ov5_021F50B0(UnkStruct_021F508C *param0)
{
    Simple3D_FreeModel(&param0->unk_04);
}
