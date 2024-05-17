#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02061830_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "overlay005/const_ov5_021FC194.h"

#include "overlay005/struct_ov5_021ECD10.h"
#include "overlay005/struct_ov5_021ED0A4.h"

#include "narc.h"
#include "heap.h"
#include "map_object.h"
#include "overlay005/ov5_021ECC20.h"
#include "overlay005/ov5_021ECE40.h"

static void ov5_021ECCA4(MapObjectManager * param0);
static void ov5_021ECCBC(MapObjectManager * param0);
static const UnkStruct_ov5_021ECD10 * ov5_021ECD10(int param0);

void ov5_021ECC20 (MapObjectManager * param0, int param1, int param2, const int * param3, int param4)
{
    int v0, v1;
    UnkStruct_ov5_021ED0A4 * v2;

    GF_ASSERT(sub_0206284C(param0, (1 << 0)) == 0);

    ov5_021ECCA4(param0);

    v0 = sub_02062824(param0);
    v1 = sub_02062858(param0) - 1;
    v2 = sub_0206285C(param0);

    ov5_021ECE40(v2, param0, v0, v1, param1, param2, param3, param4);
    sub_02062838(param0, (1 << 0));
}

void ov5_021ECC78 (MapObjectManager * param0)
{
    int v0;

    v0 = sub_02062CA8(param0);
    GF_ASSERT(v0 == 1);

    ov5_021ECE94(sub_0206285C(param0));

    sub_02062840(param0, (1 << 0));
    ov5_021ECCBC(param0);
}

static void ov5_021ECCA4 (MapObjectManager * param0)
{
    NARC * v0 = NARC_ctor(NARC_INDEX_DATA__MMODEL__MMODEL, 4);
    sub_0206289C(param0, v0);
}

static void ov5_021ECCBC (MapObjectManager * param0)
{
    NARC * v0 = sub_020628A0(param0);
    NARC_dtor(v0);
}

void ov5_021ECCC8 (MapObject * param0)
{
    const MapObjectManager * v0 = sub_02062A40(param0);

    if (sub_0206284C(v0, (1 << 2))) {
        return;
    }

    if (sub_020628D0(param0, (1 << 14)) == 0) {
        return;
    }

    if ((sub_02062DE8(param0) == 0) || sub_02062F7C(param0)) {
        sub_02062B68(param0);
    }
}

const UnkStruct_ov5_021ECD10 * ov5_021ECD04 (const MapObject * param0)
{
    int v0 = sub_02062920(param0);
    const UnkStruct_ov5_021ECD10 * v1 = ov5_021ECD10(v0);

    return v1;
}

static const UnkStruct_ov5_021ECD10 * ov5_021ECD10 (int param0)
{
    const UnkStruct_ov5_021ECD10 * v0 = Unk_ov5_021FC194;

    do {
        if (v0->unk_00 == param0) {
            return v0;
        }

        v0++;
    } while (v0->unk_00 != 0xffff);

    GF_ASSERT(0);
    return NULL;
}

int ov5_021ECD38 (const MapObject * param0)
{
    if (sub_02062DE8(param0) == 1) {
        if (sub_02062F7C(param0) == 0) {
            return 1;
        }
    }

    if (sub_020628D0(param0, (1 << 8))) {
        return 1;
    }

    return 0;
}

void * ov5_021ECD68 (const MapObjectManager * param0, u32 param1, int param2)
{
    void * v0;
    NARC * v1 = sub_020628A0(param0);
    u32 v2 = NARC_GetMemberSize(v1, param1);

    if (param2 == 1) {
        v0 = Heap_AllocFromHeap(4, v2);
    } else {
        v0 = Heap_AllocFromHeapAtEnd(4, v2);
    }

    NARC_ReadWholeMember(v1, param1, v0);

    return v0;
}

void ov5_021ECDA0 (const MapObject * param0, VecFx32 * param1)
{
    VecFx32 v0, v1, v2, v3;

    sub_02063050(param0, &v0);
    sub_02063078(param0, &v1);
    sub_0206309C(param0, &v2);
    sub_020630BC(param0, &v3);

    param1->x = v0.x + v1.x + v2.x + v3.x;
    param1->y = v0.y + v1.y + v2.y + v3.y;
    param1->z = v0.z + v1.z + v2.z + v3.z;
}

void ov5_021ECDFC (MapObject * param0, int param1)
{
    sub_02062974(param0, param1);

    if (sub_02062D4C(param0) == 1) {
        sub_02062B68(param0);
    }
}

void ov5_021ECE18 (MapObject * param0)
{
    sub_02062D64(param0, 1);
    MapObject_SetStatusFlagOn(param0, (1 << 20));
}

void ov5_021ECE30 (MapObject * param0)
{
    return;
}

void ov5_021ECE34 (MapObject * param0)
{
    return;
}

void ov5_021ECE38 (MapObject * param0)
{
    return;
}

void ov5_021ECE3C (MapObject * param0)
{
    return;
}
