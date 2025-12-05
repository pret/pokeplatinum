#include "overlay005/ov5_021F4DAC.h"

#include <nitro.h>
#include <string.h>

#include "overlay005/ov5_021DF440.h"
#include "overlay005/struct_ov5_021DF47C_decl.h"

#include "simple3d.h"

typedef struct {
    UnkStruct_ov5_021DF47C *unk_00;
    Simple3DModel unk_04;
    Simple3DRenderObj unk_18;
} UnkStruct_ov5_021F4DD8;

static void ov5_021F4DD8(UnkStruct_ov5_021F4DD8 *param0);
static void ov5_021F4DFC(UnkStruct_ov5_021F4DD8 *param0);

void *ov5_021F4DAC(UnkStruct_ov5_021DF47C *param0)
{
    UnkStruct_ov5_021F4DD8 *v0 = ov5_021DF53C(param0, (sizeof(UnkStruct_ov5_021F4DD8)), 0, 0);
    v0->unk_00 = param0;

    ov5_021F4DD8(v0);

    return v0;
}

void ov5_021F4DC8(void *param0)
{
    UnkStruct_ov5_021F4DD8 *v0 = param0;

    ov5_021F4DFC(v0);
    ov5_021DF554(v0);
}

static void ov5_021F4DD8(UnkStruct_ov5_021F4DD8 *param0)
{
    ov5_021DFB00(param0->unk_00, &param0->unk_04, 0, 17, 0);
    Simple3D_CreateRenderObject(&param0->unk_18, &param0->unk_04);
}

static void ov5_021F4DFC(UnkStruct_ov5_021F4DD8 *param0)
{
    Simple3D_FreeModel(&param0->unk_04);
}
