#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020216E0_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "overlay005/const_ov5_021FB67C.h"

#include "overlay005/struct_ov5_021ED01C.h"
#include "overlay005/struct_ov5_021FB67C.h"

#include "unk_02020AEC.h"
#include "unk_02055C50.h"
#include "map_header_data.h"
#include "map_object.h"
#include "unk_020677F4.h"
#include "overlay005/ov5_021ECC20.h"
#include "overlay005/ov5_021ECE40.h"
#include "overlay005/ov5_021F204C.h"

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_02067800;

typedef struct {
    int unk_00;
    int unk_04;
    UnkStruct_020216E0 * unk_08;
    UnkStruct_ov5_021ED01C unk_0C;
} UnkStruct_02067870;

static int sub_020679FC(int param0, int param1);

int sub_020677F4 (int param0)
{
    if (param0 == 0x64) {
        return 1;
    }

    return 0;
}

int sub_02067800 (const MapObject * param0)
{
    {
        UnkStruct_02067800 * v0 = sub_02062A78((MapObject *)param0);

        if (v0->unk_00 == 0) {
            return 0xffff;
        }
    }

    if (sub_02062DFC(param0) == 1) {
        UnkStruct_02067870 * v1 = sub_02062AF0((MapObject *)param0);

        if (v1->unk_04 != 0) {
            return v1->unk_00;
        }
    }

    return 0xffff;
}

void sub_02067834 (MapObject * param0)
{
    UnkStruct_02067800 * v0 = sub_02062A78(param0);
    v0->unk_02 = 1;
}

void sub_02067840 (MapObject * param0)
{
    UnkStruct_02067800 * v0;

    v0 = sub_02062A54(param0, (sizeof(UnkStruct_02067800)));
    v0->unk_00 = 0;
}

void sub_02067850 (MapObject * param0)
{
    UnkStruct_02067800 * v0;

    v0 = sub_02062A78(param0);
    v0->unk_00 = sub_02055F00(MapObject_FieldSystem(param0), param0);
}

void sub_0206786C (MapObject * param0)
{
    return;
}

void sub_02067870 (MapObject * param0)
{
    UnkStruct_02067870 * v0 = sub_02062ACC(param0, (sizeof(UnkStruct_02067870)));

    v0->unk_00 = 0xffff;
    v0->unk_04 = 0;

    ov5_021F20D4(param0);
}

void sub_02067890 (MapObject * param0)
{
    UnkStruct_02067800 * v0 = sub_02062A78(param0);
    UnkStruct_02067870 * v1 = sub_02062AF0(param0);
    u32 v2 = sub_02055F00(MapObject_FieldSystem(param0), param0);

    if (ov5_021EDD94(param0) == 1) {
        return;
    }

    if (v2 != v1->unk_04) {
        ov5_021ECFD8(param0, &v1->unk_08, v1->unk_00);

        v1->unk_00 = sub_020679FC(
            sub_02055F20(MapObject_FieldSystem(param0), param0), v2);

        if (v1->unk_00 != 0xffff) {
            if (v1->unk_04 != 0) {
                ov5_021F22BC(param0);
            }

            ov5_021ECEB4(param0, &v1->unk_08, v1->unk_00);
        } else {
            if ((v1->unk_04 != 0) && (v0->unk_02 == 0)) {
                ov5_021F22BC(param0);
            }
        }

        v0->unk_02 = 0;
    }

    v1->unk_04 = v2;

    if (ov5_021EDD94(param0) == 1) {
        return;
    }

    if (v1->unk_08 != NULL) {
        ov5_021EDEB4(param0, v1->unk_08);

        if (ov5_021ECD38(param0) == 0) {
            sub_02021368(v1->unk_08, (FX32_ONE));
        }

        ov5_021EDED8(param0, v1->unk_08);
    }
}

void sub_02067950 (MapObject * param0)
{
    UnkStruct_02067870 * v0 = sub_02062AF0(param0);
    ov5_021ECFD8(param0, &v0->unk_08, v0->unk_00);
}

void sub_02067968 (MapObject * param0)
{
    UnkStruct_02067870 * v0 = sub_02062AF0(param0);

    if (v0->unk_08 != NULL) {
        ov5_021ED01C(v0->unk_08, &v0->unk_0C);
    }

    ov5_021ECFD8(param0, &v0->unk_08, v0->unk_00);
    MapObject_SetStatusFlagOn(param0, (1 << 21));
}

void sub_02067998 (MapObject * param0)
{
    UnkStruct_02067870 * v0 = sub_02062AF0(param0);

    if (ov5_021EDD94(param0) == 1) {
        return;
    }

    if (v0->unk_08 == NULL) {
        if (v0->unk_00 != 0xffff) {
            ov5_021ECEB4(param0, &v0->unk_08, v0->unk_00);
        } else {
            MapObject_SetStatusFlagOff(param0, (1 << 21));
        }

        ov5_021F20D4(param0);
    }

    if (v0->unk_08 != NULL) {
        ov5_021ED03C(v0->unk_08, &v0->unk_0C);
        ov5_021EDEB4(param0, v0->unk_08);
        MapObject_SetStatusFlagOff(param0, (1 << 21));
    }
}

static int sub_020679FC (int param0, int param1)
{
    switch (param1) {
    case 0:
        return 0xffff;
    case 1:
        return 0xffff;
    default:
    {
        param0--;

        {
            const UnkStruct_ov5_021FB67C * v0 = &Unk_ov5_021FB67C[param0];

            switch (param1) {
            case 2:
                return(0x1000 + 0x0);
            case 3:
                return v0->unk_00;
            case 4:
                return v0->unk_04;
            case 5:
                return v0->unk_08;
            }
        }
    }
    }

    GF_ASSERT(FALSE);
    return 0xffff;
}

UnkStruct_020216E0 * sub_02067A58 (MapObject * param0)
{
    UnkStruct_020216E0 * v0 = NULL;

    GF_ASSERT(sub_020677F4(sub_02062920(param0)));

    if (sub_02062D4C(param0) == 1) {
        UnkStruct_02067870 * v1 = sub_02062AF0(param0);

        v0 = v1->unk_08;
    }

    return v0;
}
