#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02061AB4_decl.h"
#include "overlay005/struct_ov5_021DF47C_decl.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"

#include "struct_defs/struct_02073838.h"
#include "struct_defs/struct_02073974.h"
#include "struct_defs/struct_02073B50.h"
#include "overlay101/struct_ov101_021D86B0.h"

#include "map_object.h"
#include "map_object_move.h"
#include "unk_020711EC.h"
#include "unk_02073838.h"
#include "overlay005/ov5_021DF440.h"
#include "overlay005/ov5_021F2A7C.h"

typedef struct {
    UnkStruct_ov5_021DF47C * unk_00;
    UnkStruct_02073838 unk_04;
    UnkStruct_02073974 unk_18;
} UnkStruct_ov5_021F2AA8;

typedef struct {
    UnkStruct_ov5_021DF47C * unk_00;
    UnkStruct_ov5_021F2AA8 * unk_04;
} UnkStruct_ov5_021F2AE4;

typedef struct {
    UnkStruct_02073974 unk_00;
    UnkStruct_02073B50 unk_24;
    UnkStruct_ov5_021F2AE4 unk_78;
} UnkStruct_ov5_021F2B48;

static void ov5_021F2AA8(UnkStruct_ov5_021F2AA8 * param0);
static void ov5_021F2AD0(UnkStruct_ov5_021F2AA8 * param0);

static const UnkStruct_ov101_021D86B0 Unk_ov5_022004C4;

void * ov5_021F2A7C (UnkStruct_ov5_021DF47C * param0)
{
    UnkStruct_ov5_021F2AA8 * v0;

    v0 = ov5_021DF53C(param0, (sizeof(UnkStruct_ov5_021F2AA8)), 0, 0);
    v0->unk_00 = param0;

    ov5_021F2AA8(v0);
    return v0;
}

void ov5_021F2A98 (void * param0)
{
    UnkStruct_ov5_021F2AA8 * v0 = param0;

    ov5_021F2AD0(v0);
    ov5_021DF554(v0);
}

static void ov5_021F2AA8 (UnkStruct_ov5_021F2AA8 * param0)
{
    ov5_021DFB00(param0->unk_00, &param0->unk_04, 0, 15, 0);
    ov5_021DFB24(param0->unk_00, &param0->unk_18, 0, 160, 0);
}

static void ov5_021F2AD0 (UnkStruct_ov5_021F2AA8 * param0)
{
    sub_0207395C(&param0->unk_04);
    sub_02073AA8(&param0->unk_18);
}

void ov5_021F2AE4 (MapObject * param0, int param1, int param2, int param3)
{
    int v0, v1;
    UnkStruct_ov5_021F2AE4 v2;
    VecFx32 v3;

    v2.unk_00 = ov5_021DF578(param0);
    v2.unk_04 = ov5_021DF55C(v2.unk_00, 17);

    sub_02064450(param1, param3, &v3);

    v3.z += ((param2) << 3) + (FX32_ONE * 1);
    v3.y = (((MapObject_YPosPrev(param0)) << 3) * FX32_ONE) + (-FX32_ONE * 8);

    v1 = 0;
    v0 = sub_02062758(param0, 2);

    ov5_021DF72C(v2.unk_00, &Unk_ov5_022004C4, &v3, v1, &v2, v0);
}

static int ov5_021F2B48 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    UnkStruct_ov5_021F2B48 * v0 = param1;
    const UnkStruct_ov5_021F2AE4 * v1 = sub_020715BC(param0);

    v0->unk_78 = *v1;

    ov5_021DFB40(v0->unk_78.unk_00, &v0->unk_00, &v0->unk_78.unk_04->unk_04, &v0->unk_78.unk_04->unk_18, 0);
    sub_02073B90(&v0->unk_24, &v0->unk_78.unk_04->unk_04, &v0->unk_00);

    return 1;
}

static void ov5_021F2B80 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    UnkStruct_ov5_021F2B48 * v0 = param1;

    sub_02073AA8(&v0->unk_00);
}

static void ov5_021F2B8C (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    UnkStruct_ov5_021F2B48 * v0 = param1;

    if (sub_02073B40(&v0->unk_00) == 1) {
        ov5_021DF74C(param0);
        return;
    }

    sub_02073AC0(&v0->unk_00, FX32_ONE, 0);
}

static void ov5_021F2BB4 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    VecFx32 v0;
    UnkStruct_ov5_021F2B48 * v1 = param1;

    sub_020715E4(param0, &v0);
    sub_02073BB4(&v1->unk_24, &v0);
}

static const UnkStruct_ov101_021D86B0 Unk_ov5_022004C4 = {
    sizeof(UnkStruct_ov5_021F2B48),
    ov5_021F2B48,
    ov5_021F2B80,
    ov5_021F2B8C,
    ov5_021F2BB4
};
