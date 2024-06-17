#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "overlay115/camera_angle.h"

#include "camera.h"
#include "overlay005/ov5_021D5B40.h"

typedef struct {
    fx32 unk_00;
    CameraAngle cameraAngle;
    u8 unk_0C;
    u16 unk_0E;
    fx32 unk_10;
    fx32 unk_14;
} UnkStruct_ov5_021F8AE4;

static const UnkStruct_ov5_021F8AE4 Unk_ov5_021F8AE4[] = {
    {
        0x29aec1,
        {
            -0x29fe, 0, 0
        },
        0,
        0x5c1,
        FX32_ONE * 150,
        FX32_ONE * 900
    },
    {
        0x29aec1,
        {
            -0x309e, 0, 0
        },
        0,
        0x5c1,
        FX32_ONE * 150,
        FX32_ONE * 900
    },
    {
        0x20374c,
        {
            -0x26de, 0, 0
        },
        0,
        0x770,
        FX32_ONE * 150,
        FX32_ONE * 900
    },
    {
        0x29aec1,
        {
            -0x29fe, 0, 0
        },
        0,
        0x5c1,
        FX32_ONE * 150,
        FX32_ONE * 900
    },
    {
        0x61b89b,
        {
            -0x239e, 0, 0
        },
        1,
        0x281,
        FX32_ONE * 150,
        FX32_ONE * 1735
    },

    {
        0x13c805,
        {
            -0x29fd, 0, 0
        },
        0,
        0xc01,
        FX32_ONE * 10,
        FX32_ONE * 1008
    },

    {
        0x3628df,
        {
            -0x33fd, 0, 0
        },
        0,
        0x481,
        FX32_ONE * 115,
        FX32_ONE * 1221
    },

    {
        0x29aec1,
        {
            -0x29fd, 0, 0
        },
        0,
        0x5c1,
        FX32_ONE * 153,
        FX32_ONE * 1031
    },

    {
        0x296ec1,
        {
            -0x321d, 0, 0
        },
        0,
        0x701,
        FX32_ONE * 150,
        FX32_ONE * 1034
    },

    {
        0x1659ac,
        {
            -0x1cdd, 0, 0
        },
        0,
        0xab0,
        FX32_ONE * 150,
        FX32_ONE * 900
    },

    {
        0x4b25b1,
        {
            -0x2b3d, 0, 0
        },
        0,
        0x341,
        FX32_ONE * 150,
        FX32_ONE * 1746
    },

    {
        0x2a3d55,
        {
            -0x291d, 0, 0
        },
        0,
        0x5c1,
        FX32_ONE * 230,
        FX32_ONE * 1127
    },

    {
        0x23e93f,
        {
            -0x2cfd, 0, 0
        },
        0,
        0x6c1,
        FX32_ONE * 150,
        FX32_ONE * 900
    },

    {
        0x20374c,
        {
            -0x21fd, 0, 0
        },
        0,
        0x770,
        FX32_ONE * 150,
        FX32_ONE * 900
    },

    {
        0xa9765,
        {
            -0x37bc, 0, 0
        },
        0,
        0x1501,
        FX32_ONE * 10,
        FX32_ONE * 1008
    },

    {
        0x28dedf,
        {
            -0x26de, 0, 0
        },
        0,
        0x5f0,
        FX32_ONE * 150,
        FX32_ONE * 900
    },

    {
        0x14aec0,
        {
            -(0x10000 - 0xd602), 0, 0
        },
        0,
        0xb01,
        FX32_ONE * 150,
        FX32_ONE * 900
    },
};

void ov5_021D5B40 (const VecFx32 * param0, FieldSystem * fieldSystem, const int param2, const BOOL param3)
{
    const VecFx32 * v0 = param0;
    const UnkStruct_ov5_021F8AE4 * v1 = &Unk_ov5_021F8AE4[param2];

    GF_ASSERT(param2 < NELEMS(Unk_ov5_021F8AE4));

    fieldSystem->camera = Camera_Alloc(4);

    sub_020206D0(v0, v1->unk_00, &v1->cameraAngle, v1->unk_0E, v1->unk_0C, 1, fieldSystem->camera);
    Camera_SetAsActive(fieldSystem->camera);
    Camera_SetClipping(v1->unk_10, v1->unk_14, fieldSystem->camera);

    if (param3) {
        sub_02020304((6 + 1), 6, 2, 4, fieldSystem->camera);
    }
}

void ov5_021D5BA8 (FieldSystem * fieldSystem)
{
    Camera_ClearActive();
    sub_02020390(fieldSystem->camera);
    Camera_Delete(fieldSystem->camera);
}
