#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02027860_decl.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "struct_defs/struct_02071B10.h"
#include "struct_defs/struct_02071B30.h"
#include "struct_defs/struct_02071B6C.h"
#include "struct_defs/struct_02071BD0.h"
#include "struct_defs/struct_02071BF8.h"
#include "struct_defs/struct_02071C18.h"
#include "struct_defs/struct_02071C34.h"
#include "struct_defs/struct_02071C5C.h"

#include "savedata_misc.h"
#include "unk_02027F50.h"
#include "field_system.h"
#include "unk_02071B10.h"

static void sub_02071C80(const u8 param0, const u8 param1, int * param2);

static const u8 Unk_020F04CC[24] = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x1,
    0x1,
    0x1,
    0x0,
    0x1,
    0x1,
    0x0,
    0x0,
    0x0,
    0x0,
    0x1,
    0x0,
    0x1,
    0x1,
    0x0,
    0x1,
    0x0,
    0x1
};

void sub_02071B10 (FieldSystem * fieldSystem)
{
    UnkStruct_02027860 * v0;
    UnkStruct_02071B10 * v1;

    v0 = sub_02027860(FieldSystem_SaveData(fieldSystem));
    sub_02027F5C(v0, 1);

    v1 = (UnkStruct_02071B10 *)sub_02027F6C(v0, 1);
    v1->unk_00 = 1;
}

void sub_02071B30 (FieldSystem * fieldSystem)
{
    UnkStruct_02027860 * v0;
    UnkStruct_02071B30 * v1;

    v0 = sub_02027860(FieldSystem_SaveData(fieldSystem));
    sub_02027F5C(v0, 3);

    v1 = (UnkStruct_02071B30 *)sub_02027F6C(v0, 3);

    {
        int v2;

        for (v2 = 0; v2 < 24; v2++) {
            sub_02071C80(v2, Unk_020F04CC[v2], &v1->unk_00);
        }
    }
}

void sub_02071B6C (FieldSystem * fieldSystem, const u8 param1)
{
    UnkStruct_02027860 * v0;
    UnkStruct_02071B6C * v1;
    u16 v2;

    GF_ASSERT(param1 < 3);

    v0 = sub_02027860(FieldSystem_SaveData(fieldSystem));
    sub_02027F5C(v0, 5);

    v1 = (UnkStruct_02071B6C *)sub_02027F6C(v0, 5);
    v1->unk_04 = param1;

    switch (v1->unk_04) {
    case 0:
        v1->unk_00 = 2;
        v2 = 14;
        break;
    case 1:
        v1->unk_00 = 1;
        v2 = 21;
        break;
    case 2:
        v1->unk_00 = 0;
        v2 = 25;
        break;
    default:
        GF_ASSERT(0);
    }

    if (fieldSystem->location->z == v2) {
        v1->unk_00 = 0;
    }
}

void sub_02071BD0 (FieldSystem * fieldSystem)
{
    UnkStruct_02027860 * v0;
    UnkStruct_02071BD0 * v1;

    v0 = sub_02027860(FieldSystem_SaveData(fieldSystem));
    sub_02027F5C(v0, 8);

    v1 = sub_02027F6C(v0, 8);
    memset(v1, 0, sizeof(8));
}

void sub_02071BF8 (FieldSystem * fieldSystem)
{
    UnkStruct_02027860 * v0;
    UnkStruct_02071BF8 * v1;

    v0 = sub_02027860(FieldSystem_SaveData(fieldSystem));
    sub_02027F5C(v0, 4);
    v1 = (UnkStruct_02071BF8 *)sub_02027F6C(v0, 4);

    v1->unk_00 = 0;
}

void sub_02071C18 (FieldSystem * fieldSystem)
{
    UnkStruct_02027860 * v0;
    UnkStruct_02071C18 * v1;

    v0 = sub_02027860(FieldSystem_SaveData(fieldSystem));
    sub_02027F5C(v0, 2);
    v1 = (UnkStruct_02071C18 *)sub_02027F6C(v0, 2);
}

void sub_02071C34 (FieldSystem * fieldSystem)
{
    UnkStruct_02027860 * v0;
    UnkStruct_02071C34 * v1;

    v0 = sub_02027860(FieldSystem_SaveData(fieldSystem));
    sub_02027F5C(v0, 10);
    v1 = sub_02027F6C(v0, 10);

    memset(v1, 0, sizeof(UnkStruct_02071C34));
}

void sub_02071C5C (FieldSystem * fieldSystem)
{
    UnkStruct_02027860 * v0;
    UnkStruct_02071C5C * v1;

    v0 = sub_02027860(FieldSystem_SaveData(fieldSystem));
    sub_02027F5C(v0, 9);

    v1 = sub_02027F6C(v0, 9);
    memset(v1, 0, sizeof(UnkStruct_02071C5C));
}

static void sub_02071C80 (const u8 param0, const u8 param1, int * param2)
{
    int v0, v1, v2;

    GF_ASSERT((param1 <= 1));

    v0 = (*param2) & (0xffffffff << (param0 + 1));
    v2 = (*param2) & (0xffffffff >> (32 - param0));
    v1 = param1 << param0;

    (*param2) = (v0 | v1 | v2);
}

BOOL sub_02071CB4 (FieldSystem * fieldSystem, int param1)
{
    UnkStruct_02027860 * v0;

    v0 = sub_02027860(FieldSystem_SaveData(fieldSystem));

    if (param1 == sub_02027F80(v0)) {
        return 1;
    }

    return 0;
}
