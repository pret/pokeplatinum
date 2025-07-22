#include "overlay005/ov5_021F3284.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020216E0_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/struct_020217F4.h"

#include "field/field_system.h"
#include "overlay005/ov5_021DF440.h"
#include "overlay005/struct_ov5_021DF47C_decl.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"
#include "overlay101/struct_ov101_021D86B0.h"

#include "map_object.h"
#include "unk_02020AEC.h"
#include "unk_020711EC.h"

typedef struct {
    UnkStruct_ov5_021DF47C *unk_00;
} UnkStruct_ov5_021F32B0;

typedef struct {
    FieldSystem *fieldSystem;
    UnkStruct_ov5_021DF47C *unk_04;
    UnkStruct_ov5_021F32B0 *unk_08;
    MapObject *unk_0C;
} UnkStruct_ov5_021F331C;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    UnkStruct_ov5_021F331C unk_14;
    UnkStruct_020216E0 *unk_24;
} UnkStruct_ov5_021F336C;

static void ov5_021F32B0(UnkStruct_ov5_021F32B0 *param0);
static void ov5_021F32F4(UnkStruct_ov5_021F32B0 *param0);

static const UnkStruct_ov101_021D86B0 Unk_ov5_02200588;
const UnkStruct_020217F4 Unk_ov5_0220059C[];

void *ov5_021F3284(UnkStruct_ov5_021DF47C *param0) {
    UnkStruct_ov5_021F32B0 *v0 = ov5_021DF53C(param0, (sizeof(UnkStruct_ov5_021F32B0)), 0, 0);
    v0->unk_00 = param0;

    ov5_021F32B0(v0);
    return v0;
}

void ov5_021F32A0(void *param0) {
    UnkStruct_ov5_021F32B0 *v0 = param0;

    ov5_021F32F4(v0);
    ov5_021DF554(v0);
}

static void ov5_021F32B0(UnkStruct_ov5_021F32B0 *param0) {
    ov5_021DF9E0(param0->unk_00, 3, 86);
    ov5_021DFA14(param0->unk_00, 2, 174);
    ov5_021DFA3C(param0->unk_00, 2, 5, 1);
    ov5_021DF864(param0->unk_00, 3, 3, 2, 2, 0, Unk_ov5_0220059C);
}

static void ov5_021F32F4(UnkStruct_ov5_021F32B0 *param0) {
    ov5_021DFA08(param0->unk_00, 3);
    ov5_021DFA30(param0->unk_00, 2);
    ov5_021DFA7C(param0->unk_00, 2);
    ov5_021DF9D4(param0->unk_00, 3);
}

void ov5_021F331C(MapObject *param0, int param1) {
    UnkStruct_ov5_021F331C v0;
    UnkStruct_ov5_021DF47C *v1;
    UnkStruct_ov101_021D5D90 *v2;

    v1 = ov5_021DF578(param0);

    v0.fieldSystem = MapObject_FieldSystem(param0);
    v0.unk_04 = v1;
    v0.unk_08 = ov5_021DF55C(v1, 21);
    v0.unk_0C = param0;

    {
        VecFx32 v3 = { 0, 0, 0 };
        int v4 = sub_02062758(param0, 2);

        v2 = ov5_021DF72C(v1, &Unk_ov5_02200588, &v3, param1, &v0, v4);
    }
}

static int ov5_021F336C(UnkStruct_ov101_021D5D90 *param0, void *param1) {
    VecFx32 v0 = { 0, 0, 0 };
    UnkStruct_ov5_021F336C *v1;
    const UnkStruct_ov5_021F331C *v2;

    v1 = param1;
    v2 = sub_020715BC(param0);

    v1->unk_14 = *v2;
    v1->unk_04 = sub_02062924(v1->unk_14.unk_0C);
    v1->unk_08 = MapObject_GetLocalID(v1->unk_14.unk_0C);
    v1->unk_0C = sub_02062918(v1->unk_14.unk_0C);

    sub_020715D4(param0, &v0);
    v1->unk_24 = ov5_021DF84C(v1->unk_14.unk_04, 3, &v0);

    return 1;
}

static void ov5_021F33C4(UnkStruct_ov101_021D5D90 *param0, void *param1) {
    UnkStruct_ov5_021F336C *v0 = param1;
    sub_020211FC(v0->unk_24);
}

static void ov5_021F33D0(UnkStruct_ov101_021D5D90 *param0, void *param1) {
    int v0, v1;
    UnkStruct_ov5_021F336C *v2 = param1;
    MapObject *v3 = v2->unk_14.unk_0C;

    if (sub_020627B4(v3, v2->unk_04, v2->unk_08, v2->unk_0C) == 0) {
        ov5_021DF74C(param0);
        return;
    }

    v1 = sub_020715B4(param0);

    if (v1 == 1) {
        if (sub_02062EC8(v3) == 0) {
            ov5_021DF74C(param0);
            return;
        }
    }

    switch (v2->unk_00) {
    case 0:
        sub_02021368(v2->unk_24, FX32_ONE);
        v0 = sub_020213D4(v2->unk_24) / FX32_ONE;

        if (v0 >= 12) {
            if (v1 == 0) {
                ov5_021DF74C(param0);
                return;
            } else {
                sub_02021380(v2->unk_24, 0);
            }
        }
        break;
    }
}

static void ov5_021F3448(UnkStruct_ov101_021D5D90 *param0, void *param1) {
    VecFx32 v0;
    UnkStruct_ov5_021F336C *v1 = param1;
    MapObject *v2 = v1->unk_14.unk_0C;

    if (sub_020627B4(v2, v1->unk_04, v1->unk_08, v1->unk_0C) == 0) {
        ov5_021DF74C(param0);
        return;
    }

    MapObject_GetPosPtr(v2, &v0);

    v0.z += FX32_ONE * 8;
    sub_020212A8(v1->unk_24, &v0);
}

static const UnkStruct_ov101_021D86B0 Unk_ov5_02200588 = {
    (sizeof(UnkStruct_ov5_021F336C)),
    ov5_021F336C,
    ov5_021F33C4,
    ov5_021F33D0,
    ov5_021F3448
};

static const UnkStruct_020217F4 Unk_ov5_0220059C[] = {
    { 0x0, 0xC, 0x1 },
    { 0x0, 0x0, 0x2 }
};
