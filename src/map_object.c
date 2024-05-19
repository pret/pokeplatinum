#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/sys_task.h"
#include "struct_decls/struct_02061830_sub1_decl.h"

#include "overlay005/const_ov5_021FB97C.h"
#include "overlay005/const_ov5_021FB470.h"
#include "constdata/const_020EE3A8.h"

#include "field/field_system.h"
#include "struct_defs/struct_020619DC.h"
#include "struct_defs/struct_02061D3C.h"
#include "functypes/funcptr_020EDF0C.h"
#include "struct_defs/struct_020EDF0C.h"
#include "functypes/funcptr_020EDF0C_1.h"
#include "functypes/funcptr_020EDF0C_2.h"
#include "overlay005/struct_ov5_021ED0A4.h"
#include "overlay005/funcptr_ov5_021FB0F0.h"
#include "overlay005/struct_ov5_021FB0F0.h"
#include "overlay005/funcptr_ov5_021FB0F0_1.h"
#include "overlay005/funcptr_ov5_021FB0F0_2.h"
#include "overlay005/funcptr_ov5_021FB0F0_3.h"
#include "overlay005/funcptr_ov5_021FB0F0_4.h"
#include "overlay005/struct_ov5_021FB97C.h"

#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_0203E880.h"
#include "map_object.h"
#include "unk_02063400.h"
#include "unk_020655F4.h"
#include "unk_020677F4.h"
#include "overlay005/ov5_021ECC20.h"
#include "overlay005/ov5_021ECE40.h"

typedef struct UnkStruct_02061830_t {
    u32 unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    NARC * unk_14;
    UnkStruct_ov5_021ED0A4 unk_18;
    UnkStruct_02061830_sub1 * unk_120;
    MapObject * unk_124;
    FieldSystem * unk_128;
} MapObjectManager;

typedef struct UnkStruct_02061AB4_t {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
    u32 unk_0C;
    u32 unk_10;
    u32 unk_14;
    u32 unk_18;
    u32 unk_1C;
    u32 unk_20;
    int unk_24;
    int unk_28;
    int unk_2C;
    int unk_30;
    int unk_34;
    int unk_38;
    int unk_3C;
    int unk_40;
    int unk_44;
    int unk_48;
    int unk_4C;
    int unk_50;
    int unk_54;
    int unk_58;
    int unk_5C;
    int unk_60;
    int unk_64;
    int unk_68;
    int unk_6C;
    VecFx32 unk_70;
    VecFx32 unk_7C;
    VecFx32 unk_88;
    VecFx32 unk_94;
    u32 unk_A0;
    int animationCode;
    int unk_A8;
    u16 unk_AC;
    u16 unk_AE;
    SysTask * unk_B0;
    const MapObjectManager * unk_B4;
    UnkFuncPtr_020EDF0C unk_B8;
    UnkFuncPtr_020EDF0C_1 unk_BC;
    UnkFuncPtr_020EDF0C_2 unk_C0;
    UnkFuncPtr_ov5_021FB0F0 unk_C4;
    UnkFuncPtr_ov5_021FB0F0_1 unk_C8;
    UnkFuncPtr_ov5_021FB0F0_2 unk_CC;
    UnkFuncPtr_ov5_021FB0F0_3 unk_D0;
    UnkFuncPtr_ov5_021FB0F0_4 unk_D4;
    u8 unk_D8[16];
    u8 unk_E8[16];
    u8 unk_F8[16];
    u8 unk_108[32];
} MapObject;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    const MapObjectManager * unk_0C;
    UnkStruct_020619DC * unk_10;
} UnkStruct_020620C4;

static MapObjectManager * sub_020618C8(int param0);
static void sub_02061D3C(FieldSystem * param0, MapObject * param1, UnkStruct_02061D3C * param2);
static void sub_02061E80(MapObject * param0, UnkStruct_02061D3C * param1);
static void sub_02061FA8(const MapObjectManager * param0, MapObject * param1);
static void sub_02061FF0(MapObject * param0);
static void sub_02062010(MapObject * param0);
static void sub_020620C4(UnkStruct_020620C4 * param0);
static MapObject * sub_02062120(const MapObjectManager * param0);
static MapObject * sub_02062154(const MapObjectManager * param0, int param1, int param2);
static void sub_020621AC(const MapObjectManager * param0, MapObject * param1);
static void sub_020621E8(MapObject * param0, const UnkStruct_020619DC * param1, FieldSystem * param2);
static void sub_020622B8(MapObject * param0, const UnkStruct_020619DC * param1);
static void sub_0206234C(MapObject * param0, const MapObjectManager * param1);
static void sub_0206239C(MapObject * param0);
static void sub_020623D4(MapObject * param0);
static void sub_0206243C(MapObject * param0);
static int sub_0206244C(const MapObject * param0, int param1, int param2, const UnkStruct_020619DC * param3);
static MapObject * sub_020624CC(const MapObjectManager * param0, int param1, int param2);
static void sub_02062604(MapObject * param0);
static void sub_02062618(MapObject * param0);
static void sub_02062628(MapObject * param0);
static int sub_0206262C(FieldSystem * param0, int param1);
static void sub_02062648(MapObject * param0);
static void sub_02062660(MapObject * param0);
static void sub_02062670(MapObject * param0);
static void sub_020626D0(MapObject * param0, const UnkStruct_020619DC * param1, int param2);
static void sub_02062714(MapObject * param0, int param1, const UnkStruct_020619DC * param2);
static void sub_020627E8(SysTask * param0, void * param1);
static void sub_02062804(MapObject * param0);
static MapObjectManager * sub_0206281C(const MapObjectManager * param0);
static void sub_02062828(MapObjectManager * param0);
static void sub_02062830(MapObjectManager * param0);
static MapObject * sub_02062870(const MapObjectManager * param0);
static MapObjectManager * sub_02062A48(const MapObject * param0);
static const UnkStruct_020619DC * sub_020631A4(int param0, int param1, const UnkStruct_020619DC * param2);
static int sub_020631D8(const UnkStruct_020619DC * param0);
static int sub_020631F4(const UnkStruct_020619DC * param0);

static const UnkStruct_020EDF0C * sub_0206320C(u32 param0);
static UnkFuncPtr_020EDF0C sub_02063224(const UnkStruct_020EDF0C * param0);
static UnkFuncPtr_020EDF0C_1 sub_02063228(const UnkStruct_020EDF0C * param0);
static UnkFuncPtr_020EDF0C_2 sub_0206322C(const UnkStruct_020EDF0C * param0);
static UnkFuncPtr_ov5_021FB0F0_3 sub_0206323C(const UnkStruct_ov5_021FB0F0 * param0);
static UnkFuncPtr_ov5_021FB0F0_4 sub_02063240(const UnkStruct_ov5_021FB0F0 * param0);

static UnkFuncPtr_ov5_021FB0F0 sub_02063230(const UnkStruct_ov5_021FB0F0 * param0);
static UnkFuncPtr_ov5_021FB0F0_1 sub_02063234(const UnkStruct_ov5_021FB0F0 * param0);
static UnkFuncPtr_ov5_021FB0F0_2 sub_02063238(const UnkStruct_ov5_021FB0F0 * param0);
static const UnkStruct_ov5_021FB0F0 * sub_02063244(u32 param0);

MapObjectManager * sub_02061804 (FieldSystem * fieldSystem, int param1, int param2)
{
    MapObjectManager * v0;

    v0 = sub_020618C8(param1);
    sub_0206288C(v0, fieldSystem);
    sub_02062820(v0, param1);
    sub_02062854(v0, param2);

    return v0;
}

void sub_02061830 (MapObjectManager * mapObjMan)
{
    Heap_FreeToHeapExplicit(11, sub_02062878(mapObjMan));
    Heap_FreeToHeapExplicit(11, mapObjMan);
}

void sub_0206184C (MapObjectManager * mapObjMan, int param1, int param2, int param3, const UnkStruct_020619DC * param4)
{
    int v0, v1 = sub_02062824(mapObjMan);
    MapObject * v2 = sub_02062878(mapObjMan);

    while (v1) {
        if (sub_02062CF8(v2) == 1) {
            v0 = sub_0206244C(v2, param2, param3, param4);

            switch (v0) {
            case 0:
                if (sub_02062918(v2) != param2) {
                    if (sub_020628D8(
                            v2, (1 << 10)) == 0) {
                        MapObject_Delete(v2);
                    }
                }
                break;
            case 2:
                break;
            case 1:
                break;
            }
        }

        v2++;
        v1--;
    }

    ov5_021EDA38(mapObjMan, sub_0206285C(mapObjMan));
}

static MapObjectManager * sub_020618C8 (int param0)
{
    int v0;
    MapObject * v1;
    MapObjectManager * v2;

    v2 = Heap_AllocFromHeap(11, (sizeof(MapObjectManager)));

    GF_ASSERT(v2 != NULL);
    memset(v2, 0, (sizeof(MapObjectManager)));

    v0 = (sizeof(MapObject)) * param0;
    v1 = Heap_AllocFromHeap(11, v0);

    GF_ASSERT(v1 != NULL);
    memset(v1, 0, v0);

    sub_02062860(v2, v1);

    return v2;
}

MapObject * sub_02061918 (const MapObjectManager * mapObjMan, const UnkStruct_020619DC * param1, int param2)
{
    MapObject * v0;
    UnkStruct_020619DC v1 = *param1;
    UnkStruct_020619DC * v2 = &v1;

    {
        int v3 = sub_020630F4(v2);

        if (sub_020631D8(v2) == 0) {
            v0 = sub_02062154(mapObjMan, v3, param2);

            if (v0 != NULL) {
                sub_020626D0(v0, v2, param2);

                return v0;
            }
        } else {
            v0 = sub_020624CC(mapObjMan, v3, sub_020631F4(v2));

            if (v0 != NULL) {
                sub_02062714(v0, param2, v2);
                return v0;
            }
        }
    }

    v0 = sub_02062120(mapObjMan);

    if (v0 == NULL) {
        return v0;
    }

    sub_020621E8(v0, v2, sub_02062894(mapObjMan));
    sub_0206234C(v0, mapObjMan);
    sub_02062914(v0, param2);
    sub_02062660(v0);
    sub_02062670(v0);
    MapObject_SetStatusFlagOn(v0, MAP_OBJ_STATUS_START_MOVEMENT);
    sub_020621AC(mapObjMan, v0);
    sub_02062828(sub_0206281C(mapObjMan));

    return v0;
}

MapObject * sub_020619DC (const MapObjectManager * mapObjMan, int param1, int param2, int param3, int param4, int param5, int param6)
{
    UnkStruct_020619DC v0;
    MapObject * v1;

    sub_020630F0(&v0, 0);
    sub_020630F8(&v0, param4);
    sub_02063100(&v0, param5);
    sub_02063108(&v0, 0);
    sub_02063110(&v0, 0);
    sub_02063118(&v0, 0);
    sub_02063120(&v0, param3);
    sub_0206312C(&v0, 0, 0);
    sub_0206312C(&v0, 0, 1);
    sub_0206312C(&v0, 0, 2);
    sub_02063174(&v0, 0);
    sub_02063180(&v0, 0);
    sub_0206318C(&v0, param1);
    sub_0206319C(&v0, param2);
    sub_02063194(&v0, 0);

    v1 = sub_02061918(mapObjMan, &v0, param6);

    return v1;
}

MapObject * sub_02061A74 (const MapObjectManager * mapObjMan, int param1, int param2, int param3, const UnkStruct_020619DC * param4)
{
    MapObject * v0 = NULL;
    const UnkStruct_020619DC * v1 = sub_020631A4(param1, param2, param4);

    if (v1 != NULL) {
        int v2 = sub_02063114(v1);
        FieldSystem * v3 = sub_02062894(mapObjMan);

        if (sub_0203F188(v3, v2) == 0) {
            v0 = sub_02061918(mapObjMan, v1, param3);
        }
    }

    return v0;
}

void sub_02061AB4 (MapObject * mapObj, int param1)
{
    sub_0206291C(mapObj, param1);
    sub_02062604(mapObj);
    MapObject_SetStatusFlagOff(mapObj, (1 << 14));
    sub_02062670(mapObj);
}

void sub_02061AD4 (MapObject * mapObj, int param1)
{
    if (sub_02062DFC(mapObj) == 1) {
        sub_02061B48(mapObj);
    }

    sub_02061AB4(mapObj, param1);
}

void MapObject_Delete (MapObject * mapObj)
{
    const MapObjectManager * v0;

    v0 = sub_02062A40(mapObj);

    if (sub_02062CA8(v0) == 1) {
        sub_02062B7C(mapObj);
    }

    sub_02062B28(mapObj);
    sub_02062A2C(mapObj);
    sub_02062830(sub_02062A48(mapObj));
    sub_0206243C(mapObj);
}

void sub_02061B28 (MapObject * mapObj)
{
    int v0;

    v0 = sub_02062958(mapObj);
    sub_0203F19C(MapObject_FieldSystem(mapObj), v0);
    MapObject_Delete(mapObj);
}

void sub_02061B48 (MapObject * mapObj)
{
    const MapObjectManager * v0;

    v0 = sub_02062A40(mapObj);

    if (sub_02062CA8(v0) == 1) {
        if (sub_020628D0(mapObj, (1 << 14))) {
            sub_02062B7C(mapObj);
        }

        MapObject_SetStatusFlagOff(mapObj, (1 << 14));
    }

    sub_0206291C(mapObj, 0xffff);
    sub_02062B4C(mapObj, sub_020633F0);
    sub_02062B60(mapObj, sub_020633F4);
    sub_02062B74(mapObj, sub_020633F4);
    sub_02062B88(mapObj, sub_020633F8);
    sub_02062B9C(mapObj, sub_020633FC);
}

void sub_02061BBC (MapObjectManager * mapObjMan)
{
    int v0, v1;
    MapObject * v2;

    v0 = 0;
    v1 = sub_02062824(mapObjMan);
    v2 = sub_02062878(mapObjMan);

    do {
        if (sub_020628D0(v2, (1 << 0))) {
            MapObject_Delete(v2);
        }

        v2++;
        v0++;
    } while (v0 < v1);
}

void sub_02061BF0 (MapObjectManager * mapObjMan)
{
    GF_ASSERT(sub_02062CA8(mapObjMan) == 1);

    {
        int v0, v1;
        MapObject * v2;

        v0 = 0;
        v1 = sub_02062824(mapObjMan);
        v2 = sub_02062878(mapObjMan);

        do {
            if (sub_020628D0(v2, (1 << 0))) {
                if (sub_020628D0(v2, (1 << 14))) {
                    sub_02062B90(v2);
                    sub_02062628(v2);
                }
            }

            v2++;
            v0++;
        } while (v0 < v1);
    }
}

void sub_02061C48 (MapObjectManager * mapObjMan)
{
    GF_ASSERT(sub_02062CA8(mapObjMan) == 1);

    {
        int v0 = 0;
        int v1 = sub_02062824(mapObjMan);
        MapObject * v2 = sub_02062878(mapObjMan);

        do {
            if (sub_02062CF8(v2) == 1) {
                if (sub_02062D4C(v2) == 1) {
                    sub_02062BA4(v2);
                } else {
                    sub_02062670(v2);
                }

                sub_02062604(v2);
                sub_02064464(v2);
            }

            v2++;
            v0++;
        } while (v0 < v1);
    }
}

void sub_02061CA8 (FieldSystem * fieldSystem, const MapObjectManager * param1, UnkStruct_02061D3C * param2, int param3)
{
    int v0 = 0;
    MapObject * v1;

    while (sub_020625B0(param1, &v1, &v0, (1 << 0))) {
        sub_02061D3C(fieldSystem, v1, param2);
        param2++; param3--;
        GF_ASSERT(param3 > 0);
    }

    if (param3) {
        memset(param2, 0, param3 * (sizeof(UnkStruct_02061D3C)));
    }
}

void sub_02061D04 (const MapObjectManager * mapObjMan, UnkStruct_02061D3C * param1, int param2)
{
    int v0 = 0;
    MapObject * v1;

    while (param2) {
        if ((param1->unk_00 & (1 << 0))) {
            v1 = sub_02062120(mapObjMan);
            GF_ASSERT(v1 != NULL);

            sub_02061E80(v1, param1);
            sub_02061FA8(mapObjMan, v1);
        }

        param1++;
        param2--;
    }
}

static void sub_02061D3C (FieldSystem * fieldSystem, MapObject * param1, UnkStruct_02061D3C * param2)
{
    param2->unk_00 = sub_020628B8(param1);
    param2->unk_04 = sub_020628EC(param1);
    param2->unk_08 = sub_02062910(param1);
    param2->unk_10 = sub_02062918(param1);
    param2->unk_12 = sub_02062920(param1);
    param2->unk_09 = sub_02062948(param1);
    param2->unk_14 = sub_02062950(param1);
    param2->unk_16 = sub_02062958(param1);
    param2->unk_18 = sub_02062960(param1);
    param2->unk_0C = sub_02062968(param1);
    param2->unk_0D = MapObject_Dir(param1);
    param2->unk_0E = MapObject_MoveDir(param1);
    param2->unk_1A = sub_020629D8(param1, 0);
    param2->unk_1C = sub_020629D8(param1, 1);
    param2->unk_1E = sub_020629D8(param1, 2);
    param2->unk_0A = sub_02062A00(param1);
    param2->unk_0B = sub_02062A08(param1);
    param2->unk_20 = sub_02062FF0(param1);
    param2->unk_22 = sub_02062FF8(param1);
    param2->unk_24 = sub_02063000(param1);
    param2->unk_26 = MapObject_XPos(param1);
    param2->unk_28 = MapObject_YPos(param1);
    param2->unk_2A = MapObject_ZPos(param1);

    {
        VecFx32 v0;
        int v1, v2;

        sub_02064450(param2->unk_26, param2->unk_2A, &v0);
        v0.y = sub_02063074(param1);

        v2 = sub_02062FAC(param1);
        v1 = sub_020644D0(fieldSystem, &v0, v2);

        if (v1 == 0) {
            param2->unk_2C = sub_02063074(param1);
        } else {
            if (sub_02062E44(param1) == 1) {
                v0.y = sub_02063074(param1);
            }

            param2->unk_2C = v0.y;
        }
    }

    memcpy(param2->unk_30, sub_02062A78(param1), 16);
    memcpy(param2->unk_40, sub_02062AA0(param1), 16);
}

static void sub_02061E80 (MapObject * mapObj, UnkStruct_02061D3C * param1)
{
    sub_020628B4(mapObj, param1->unk_00);
    sub_020628E8(mapObj, param1->unk_04);
    LocalMapObj_SetId(mapObj, param1->unk_08);
    sub_02062914(mapObj, param1->unk_10);
    sub_0206291C(mapObj, param1->unk_12);
    sub_02062944(mapObj, param1->unk_09);
    sub_0206294C(mapObj, param1->unk_14);
    sub_02062954(mapObj, param1->unk_16);
    sub_0206295C(mapObj, param1->unk_18);
    sub_02062964(mapObj, param1->unk_0C);
    sub_0206296C(mapObj, param1->unk_0D);
    sub_02062994(mapObj, param1->unk_0E);
    sub_020629B4(mapObj, param1->unk_1A, 0);
    sub_020629B4(mapObj, param1->unk_1C, 1);
    sub_020629B4(mapObj, param1->unk_1E, 2);
    sub_020629FC(mapObj, param1->unk_0A);
    sub_02062A04(mapObj, param1->unk_0B);
    sub_02062FF4(mapObj, param1->unk_20);
    sub_02062FFC(mapObj, param1->unk_22);
    sub_02063004(mapObj, param1->unk_24);
    LocalMapObj_SetX(mapObj, param1->unk_26);
    sub_02063034(mapObj, param1->unk_28);
    LocalMapObj_SetZ(mapObj, param1->unk_2A);

    {
        VecFx32 v0 = {0, 0, 0};

        v0.y = param1->unk_2C;
        sub_02063060(mapObj, &v0);
    }

    memcpy(sub_02062A78(mapObj), param1->unk_30, 16);
    memcpy(sub_02062AA0(mapObj), param1->unk_40, 16);
}

static void sub_02061FA8 (const MapObjectManager * mapObjMan, MapObject * param1)
{
    sub_02061FF0(param1);
    sub_02062010(param1);
    sub_02062A38(param1, mapObjMan);
    sub_0206239C(param1);
    sub_020656DC(param1);
    sub_02062670(param1);
    sub_020621AC(mapObjMan, param1);
    sub_02062B34(param1);
    sub_02062828(sub_0206281C(mapObjMan));
}

static void sub_02061FF0 (MapObject * mapObj)
{
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_0 | MAP_OBJ_STATUS_START_MOVEMENT);
    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_PAUSE_MOVEMENT | MAP_OBJ_STATUS_HIDE | MAP_OBJ_STATUS_14 | MAP_OBJ_STATUS_16 | MAP_OBJ_STATUS_17 | MAP_OBJ_STATUS_END_MOVEMENT | MAP_OBJ_STATUS_18 | MAP_OBJ_STATUS_19 | MAP_OBJ_STATUS_21 | MAP_OBJ_STATUS_22 | MAP_OBJ_STATUS_23);
    sub_02062618(mapObj);
}

static void sub_02062010 (MapObject * mapObj)
{
    int v0;
    VecFx32 v1;

    MapObject_PosVectorOut(mapObj, &v1);

    v0 = MapObject_XPos(mapObj);
    v1.x = (((v0) << 4) * FX32_ONE) + (((16 * FX32_ONE) >> 1));

    sub_0206300C(mapObj, v0);
    v0 = MapObject_YPos(mapObj);
    sub_02063014(mapObj, v0);

    v0 = MapObject_ZPos(mapObj);
    v1.z = (((v0) << 4) * FX32_ONE) + (((16 * FX32_ONE) >> 1));

    sub_0206301C(mapObj, v0);
    sub_02063060(mapObj, &v1);
}

void sub_02062068 (const MapObjectManager * mapObjMan, int param1, int param2, const UnkStruct_020619DC * param3)
{
    int v0;
    UnkStruct_020619DC * v1;
    UnkStruct_020620C4 * v2;

    GF_ASSERT(param2);

    v0 = (sizeof(UnkStruct_020619DC)) * param2;
    v1 = Heap_AllocFromHeapAtEnd(11, v0);

    GF_ASSERT(v1 != NULL);
    memcpy(v1, param3, v0);

    v2 = Heap_AllocFromHeapAtEnd(11, (sizeof(UnkStruct_020620C4)));
    GF_ASSERT(v2 != NULL);

    v2->unk_00 = param1;
    v2->unk_04 = param2;
    v2->unk_08 = 0;
    v2->unk_0C = mapObjMan;
    v2->unk_10 = v1;

    sub_020620C4(v2);
}

static void sub_020620C4 (UnkStruct_020620C4 * param0)
{
    MapObject * v0;
    FieldSystem * v1;
    const UnkStruct_020619DC * v2;

    v1 = sub_02062894(param0->unk_0C);
    v2 = param0->unk_10;

    do {
        if ((sub_020631D8(v2) == 1) || (sub_0203F188(v1, v2->unk_08) == 0)) {
            v0 = sub_02061918(param0->unk_0C, v2, param0->unk_00);
            GF_ASSERT(v0 != NULL);
        }

        v2++;
        param0->unk_08++;
    } while (param0->unk_08 < param0->unk_04);

    Heap_FreeToHeapExplicit(11, param0->unk_10);
    Heap_FreeToHeapExplicit(11, param0);
}

static MapObject * sub_02062120 (const MapObjectManager * param0)
{
    int v0, v1;
    MapObject * v2;

    v0 = 0;
    v1 = sub_02062824(param0);
    v2 = sub_02062878(param0);

    do {
        if (sub_020628D0(v2, (1 << 0)) == 0) {
            return v2;
        }

        v2++;
        v0++;
    } while (v0 < v1);

    return NULL;
}

static MapObject * sub_02062154 (const MapObjectManager * mapObjMan, int param1, int param2)
{
    int v0 = 0;
    MapObject * v1;

    while (sub_020625B0(mapObjMan, &v1, &v0, (1 << 0)) == 1) {
        if (sub_02062E94(v1) == 1) {
            if (sub_02062910(v1) == param1) {
                if (sub_02062C18(v1) == param2) {
                    return v1;
                }
            }
        }
    }

    return NULL;
}

static void sub_020621AC (const MapObjectManager * mapObjMan, MapObject * param1)
{
    int v0, v1;
    SysTask * v2;

    v0 = sub_02062858(mapObjMan);
    v1 = sub_02062948(param1);

    if ((v1 == 0x30) || (v1 == 0x32)) {
        v0 += 2;
    }

    v2 = SysTask_Start(sub_020627E8, param1, v0);
    GF_ASSERT(v2 != NULL);

    sub_02062A1C(param1, v2);
}

static void sub_020621E8 (MapObject * mapObj, const UnkStruct_020619DC * param1, FieldSystem * param2)
{
    LocalMapObj_SetId(mapObj, sub_020630F4(param1));
    sub_0206291C(mapObj, sub_0206262C(param2, sub_020630FC(param1)));
    sub_02062944(mapObj, sub_02063104(param1));
    sub_0206294C(mapObj, sub_0206310C(param1));
    sub_02062954(mapObj, sub_02063114(param1));
    sub_0206295C(mapObj, sub_0206311C(param1));
    sub_02062964(mapObj, sub_02063124(param1));
    sub_020629B4(mapObj, sub_02063150(param1, 0), 0);
    sub_020629B4(mapObj, sub_02063150(param1, 1), 1);
    sub_020629B4(mapObj, sub_02063150(param1, 2), 2);
    sub_020629FC(mapObj, sub_02063178(param1));
    sub_02062A04(mapObj, sub_02063184(param1));
    sub_020622B8(mapObj, param1);
}

static void sub_020622B8 (MapObject * mapObj, const UnkStruct_020619DC * param1)
{
    int v0;
    VecFx32 v1;

    v0 = sub_02063190(param1);
    v1.x = (((v0) << 4) * FX32_ONE) + (((16 * FX32_ONE) >> 1));

    sub_02062FF4(mapObj, v0);
    sub_0206300C(mapObj, v0);
    LocalMapObj_SetX(mapObj, v0);

    v0 = sub_02063198(param1);
    v1.y = (fx32)v0;
    v0 = (((v0) >> 3) / FX32_ONE);

    sub_02062FFC(mapObj, v0);
    sub_02063014(mapObj, v0);
    sub_02063034(mapObj, v0);

    v0 = sub_020631A0(param1);
    v1.z = (((v0) << 4) * FX32_ONE) + (((16 * FX32_ONE) >> 1));

    sub_02063004(mapObj, v0);
    sub_0206301C(mapObj, v0);
    LocalMapObj_SetZ(mapObj, v0);
    sub_02063060(mapObj, &v1);
}

static void sub_0206234C (MapObject * mapObj, const MapObjectManager * param1)
{
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_0 | MAP_OBJ_STATUS_12 | MAP_OBJ_STATUS_11);

    if (sub_020626B4(mapObj) == 1) {
        sub_02062E78(mapObj, 1);
    }

    sub_02062A38(mapObj, param1);
    sub_0206296C(mapObj, sub_02062968(mapObj));
    sub_02062994(mapObj, sub_02062968(mapObj));
    sub_020656DC(mapObj);
}

static void sub_0206239C (MapObject * mapObj)
{
    const UnkStruct_020EDF0C * v0;

    v0 = sub_0206320C(sub_02062948(mapObj));

    sub_02062AF8(mapObj, sub_02063224(v0));
    sub_02062B0C(mapObj, sub_02063228(v0));
    sub_02062B20(mapObj, sub_0206322C(v0));
}

static void sub_020623D4 (MapObject * mapObj)
{
    const UnkStruct_ov5_021FB0F0 * v0;
    u32 v1 = sub_02062920(mapObj);

    if (v1 == 0x2000) {
        v0 = &Unk_ov5_021FB470;
    } else {
        v0 = sub_02063244(v1);
    }

    sub_02062B4C(mapObj, sub_02063230(v0));
    sub_02062B60(mapObj, sub_02063234(v0));
    sub_02062B74(mapObj, sub_02063238(v0));
    sub_02062B88(mapObj, sub_0206323C(v0));
    sub_02062B9C(mapObj, sub_02063240(v0));
}

static void sub_0206243C (MapObject * mapObj)
{
    memset(mapObj, 0, (sizeof(MapObject)));
}

static int sub_0206244C (const MapObject * mapObj, int param1, int param2, const UnkStruct_020619DC * param3)
{
    int v0;
    int v1;

    while (param2) {
        v0 = sub_020630F4(param3);

        if (sub_02062910(mapObj) == v0) {
            if (sub_020631D8(param3) == 1) {
                v1 = sub_020631F4(param3);

                if (sub_02062E94(mapObj) == 1) {
                    if (sub_02062C18(mapObj) == v1) {
                        return 1;
                    }
                } else if (sub_02062918(mapObj) == v1) {
                    return 2;
                }
            } else {
                if (sub_02062E94(mapObj) == 1) {
                    if (sub_02062C18(mapObj) == param1) {
                        return 2;
                    }
                }
            }
        }

        param2--;
        param3++;
    }

    return 0;
}

static MapObject * sub_020624CC (const MapObjectManager * mapObjMan, int param1, int param2)
{
    int v0 = 0;
    MapObject * v1;

    while (sub_020625B0(mapObjMan, &v1, &v0, (1 << 0)) == 1) {
        if ((sub_02062910(v1) == param1) && (sub_02062918(v1) == param2)) {
            return v1;
        }
    }

    return NULL;
}

MapObject * MapObjMan_LocalMapObjByIndex (const MapObjectManager * mapObjMan, int param1)
{
    int v0;
    MapObject * v1;

    GF_ASSERT(mapObjMan != NULL);

    v0 = sub_02062824(mapObjMan);
    v1 = sub_02062870(mapObjMan);

    do {
        if (sub_020628D8(v1, (1 << 0)) == 1) {
            if (sub_02062E94(v1) == 0) {
                if (sub_02062910(v1) == param1) {
                    return v1;
                }
            }
        }

        v1++;
        v0--;
    } while (v0 > 0);

    return NULL;
}

MapObject * sub_02062570 (const MapObjectManager * mapObjMan, int param1)
{
    int v0;
    MapObject * v1;

    v0 = sub_02062824(mapObjMan);
    v1 = sub_02062870(mapObjMan);

    do {
        if (sub_020628D8(v1, (1 << 0)) == 1) {
            if (sub_02062948(v1) == param1) {
                return v1;
            }
        }

        v1++;
        v0--;
    } while (v0 > 0);

    return NULL;
}

int sub_020625B0 (const MapObjectManager * mapObjMan, MapObject ** param1, int * param2, u32 param3)
{
    int v0;
    MapObject * v1;

    v0 = sub_02062824(mapObjMan);

    if ((*param2) >= v0) {
        return 0;
    }

    v1 = sub_02062870(mapObjMan);
    v1 = &v1[(*param2)];

    do {
        (*param2)++;

        if (sub_020628D0(v1, param3) == param3) {
            *param1 = v1;
            return 1;
        }

        v1++;
    } while ((*param2) < v0);

    return 0;
}

static void sub_02062604 (MapObject * mapObj)
{
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_START_MOVEMENT);
    sub_02062618(mapObj);
}

static void sub_02062618 (MapObject * mapObj)
{
    MapObject_SetStatusFlagOff(mapObj, (1 << 15) | (1 << 20) | (1 << 26) | (1 << 24));
}

static void sub_02062628 (MapObject * mapObj)
{
    (void)0;
}

static int sub_0206262C (FieldSystem * fieldSystem, int param1)
{
    if ((param1 >= 0x65) && (param1 <= 0x74)) {
        param1 -= 0x65;
        param1 = sub_0203F164(fieldSystem, param1);
    }

    return param1;
}

static void sub_02062648 (MapObject * mapObj)
{
    if (sub_020628D0(mapObj, (1 << 12))) {
        sub_020642F8(mapObj);
    }
}

static void sub_02062660 (MapObject * mapObj)
{
    sub_0206239C(mapObj);
    sub_02063400(mapObj);
}

static void sub_02062670 (MapObject * mapObj)
{
    const MapObjectManager * v0 = sub_02062A40(mapObj);

    if (sub_02062CA8(v0) == 0) {
        return;
    }

    sub_02062648(mapObj);
    sub_02062A0C(mapObj, 0);
    ov5_021EDD78(mapObj, 0);

    if (sub_02062D4C(mapObj) == 0) {
        sub_020623D4(mapObj);
        sub_02062B54(mapObj);
        sub_02062D40(mapObj);
    }
}

int sub_020626B4 (const MapObject * mapObj)
{
    u16 v0 = (u16)sub_02062960(mapObj);

    if (v0 == 0xffff) {
        return 1;
    }

    return 0;
}

static void sub_020626D0 (MapObject * mapObj, const UnkStruct_020619DC * param1, int param2)
{
    GF_ASSERT(sub_02062E94(mapObj) == 1);

    sub_02062E78(mapObj, 0);
    sub_02062914(mapObj, param2);
    sub_0206295C(mapObj, sub_0206311C(param1));
    sub_02062954(mapObj, sub_02063114(param1));
}

static void sub_02062714 (MapObject * mapObj, int param1, const UnkStruct_020619DC * param2)
{
    GF_ASSERT(sub_020631D8(param2) == 1);

    sub_02062E78(mapObj, 1);
    sub_0206295C(mapObj, sub_0206311C(param2));
    sub_02062954(mapObj, sub_020631F4(param2));
    sub_02062914(mapObj, param1);
}

int sub_02062758 (const MapObject * mapObj, int param1)
{
    int v0;

    v0 = sub_02062C0C(mapObj);
    v0 += param1;

    return v0;
}

int sub_02062764 (const MapObject * mapObj, int param1, int param2)
{
    if (sub_020628D8(mapObj, (1 << 0)) == 0) {
        return 0;
    }

    if (sub_02062910(mapObj) != param1) {
        return 0;
    }

    if (sub_02062918(mapObj) != param2) {
        if (sub_02062E94(mapObj) == 0) {
            return 0;
        }

        if (sub_02062C18(mapObj) != param2) {
            return 0;
        }
    }

    return 1;
}

int sub_020627B4 (const MapObject * mapObj, int param1, int param2, int param3)
{
    if (sub_020628D8(mapObj, (1 << 0)) == 0) {
        return 0;
    }

    {
        int v0 = sub_02062924(mapObj);

        if (v0 != param1) {
            return 0;
        }
    }

    return sub_02062764(mapObj, param2, param3);
}

static void sub_020627E8 (SysTask * task, void * param1)
{
    MapObject * v0 = (MapObject *)param1;

    sub_02063410(v0);

    if (sub_02062CF8(v0) == 0) {
        return;
    }

    sub_02062804(v0);
}

static void sub_02062804 (MapObject * mapObj)
{
    const MapObjectManager * v0 = sub_02062A40(mapObj);

    if (sub_02062CA8(v0) == 1) {
        ov5_021ECCC8(mapObj);
    }
}

static MapObjectManager * sub_0206281C (const MapObjectManager * mapObjMan)
{
    return (MapObjectManager * )mapObjMan;
}

void sub_02062820 (MapObjectManager * mapObjMan, int param1)
{
    mapObjMan->unk_04 = param1;
}

int sub_02062824 (const MapObjectManager * mapObjMan)
{
    return mapObjMan->unk_04;
}

static void sub_02062828 (MapObjectManager * mapObjMan)
{
    mapObjMan->unk_08++;
}

static void sub_02062830 (MapObjectManager * mapObjMan)
{
    mapObjMan->unk_08--;
}

void sub_02062838 (MapObjectManager * mapObjMan, u32 param1)
{
    mapObjMan->unk_00 |= param1;
}

void sub_02062840 (MapObjectManager * mapObjMan, u32 param1)
{
    mapObjMan->unk_00 &= ~param1;
}

u32 sub_0206284C (const MapObjectManager * mapObjMan, u32 param1)
{
    return(mapObjMan->unk_00 & param1);
}

void sub_02062854 (MapObjectManager * mapObjMan, int param1)
{
    mapObjMan->unk_0C = param1;
}

int sub_02062858 (const MapObjectManager * mapObjMan)
{
    return mapObjMan->unk_0C;
}

UnkStruct_ov5_021ED0A4 * sub_0206285C (const MapObjectManager * mapObjMan)
{
    return &(((MapObjectManager *)mapObjMan)->unk_18);
}

void sub_02062860 (MapObjectManager * mapObjMan, MapObject * param1)
{
    mapObjMan->unk_124 = param1;
}

const MapObject * sub_02062868 (const MapObjectManager * mapObjMan)
{
    return mapObjMan->unk_124;
}

static MapObject * sub_02062870 (const MapObjectManager * mapObjMan)
{
    return mapObjMan->unk_124;
}

MapObject * sub_02062878 (const MapObjectManager * mapObjMan)
{
    return mapObjMan->unk_124;
}

void sub_02062880 (const MapObject ** mapObj)
{
    (*mapObj)++;
}

void sub_0206288C (MapObjectManager * mapObjMan, FieldSystem * param1)
{
    mapObjMan->unk_128 = param1;
}

FieldSystem * sub_02062894 (const MapObjectManager * mapObjMan)
{
    return mapObjMan->unk_128;
}

void sub_0206289C (MapObjectManager * mapObjMan, NARC * param1)
{
    mapObjMan->unk_14 = param1;
}

NARC * sub_020628A0 (const MapObjectManager * mapObjMan)
{
    GF_ASSERT(mapObjMan->unk_14 != NULL);
    return ((MapObjectManager *)mapObjMan)->unk_14;
}

void sub_020628B4 (MapObject * mapObj, u32 param1)
{
    mapObj->unk_00 = param1;
}

u32 sub_020628B8 (const MapObject * mapObj)
{
    return mapObj->unk_00;
}

void MapObject_SetStatusFlagOn (MapObject * mapObj, u32 param1)
{
    mapObj->unk_00 |= param1;
}

void MapObject_SetStatusFlagOff (MapObject * mapObj, u32 param1)
{
    mapObj->unk_00 &= ~param1;
}

u32 sub_020628D0 (const MapObject * mapObj, u32 param1)
{
    return mapObj->unk_00 & param1;
}

u32 sub_020628D8 (const MapObject * mapObj, u32 param1)
{
    if ((mapObj->unk_00 & param1)) {
        return 1;
    }

    return 0;
}

void sub_020628E8 (MapObject * mapObj, u32 param1)
{
    mapObj->unk_04 = param1;
}

u32 sub_020628EC (const MapObject * mapObj)
{
    return mapObj->unk_04;
}

void sub_020628F0 (MapObject * mapObj, u32 param1)
{
    mapObj->unk_04 |= param1;
}

void sub_020628F8 (MapObject * param0, u32 param1)
{
    param0->unk_04 &= ~param1;
}

u32 sub_02062904 (const MapObject * param0, u32 param1)
{
    return(param0->unk_04 & param1);
}

void LocalMapObj_SetId (MapObject * param0, u32 param1)
{
    param0->unk_08 = param1;
}

u32 sub_02062910 (const MapObject * param0)
{
    return param0->unk_08;
}

void sub_02062914 (MapObject * param0, int param1)
{
    param0->unk_0C = param1;
}

int sub_02062918 (const MapObject * param0)
{
    return param0->unk_0C;
}

void sub_0206291C (MapObject * param0, u32 param1)
{
    param0->unk_10 = param1;
}

u32 sub_02062920 (const MapObject * param0)
{
    return param0->unk_10;
}

u32 sub_02062924 (const MapObject * param0)
{
    u32 v0 = sub_02062920(param0);

    if (sub_020677F4(v0) == 1) {
        v0 = sub_02067800(param0);
    }

    return v0;
}

void sub_02062944 (MapObject * param0, u32 param1)
{
    param0->unk_14 = param1;
}

u32 sub_02062948 (const MapObject * param0)
{
    return param0->unk_14;
}

void sub_0206294C (MapObject * param0, u32 param1)
{
    param0->unk_18 = param1;
}

u32 sub_02062950 (const MapObject * param0)
{
    return param0->unk_18;
}

void sub_02062954 (MapObject * param0, u32 param1)
{
    param0->unk_1C = param1;
}

u32 sub_02062958 (const MapObject * param0)
{
    return param0->unk_1C;
}

void sub_0206295C (MapObject * param0, u32 param1)
{
    param0->unk_20 = param1;
}

u32 sub_02062960 (const MapObject * param0)
{
    return param0->unk_20;
}

void sub_02062964 (MapObject * param0, int param1)
{
    param0->unk_24 = param1;
}

u32 sub_02062968 (const MapObject * param0)
{
    return param0->unk_24;
}

void sub_0206296C (MapObject * param0, int param1)
{
    param0->unk_30 = param0->unk_28;
    param0->unk_28 = param1;
}

void MapObject_SetDir (MapObject * param0, int param1)
{
    if (sub_020628D0(param0, (1 << 7)) == 0) {
        param0->unk_30 = param0->unk_28;
        param0->unk_28 = param1;
    }
}

int MapObject_Dir (const MapObject * param0)
{
    return param0->unk_28;
}

int sub_02062990 (const MapObject * param0)
{
    return param0->unk_30;
}

void sub_02062994 (MapObject * param0, int param1)
{
    param0->unk_34 = param0->unk_2C;
    param0->unk_2C = param1;
}

int MapObject_MoveDir (const MapObject * param0)
{
    return param0->unk_2C;
}

void sub_020629A0 (MapObject * param0, int param1)
{
    MapObject_SetDir(param0, param1);
    sub_02062994(param0, param1);
}

void sub_020629B4 (MapObject * param0, int param1, int param2)
{
    switch (param2) {
    case 0:
        param0->unk_38 = param1;
        break;
    case 1:
        param0->unk_3C = param1;
        break;
    case 2:
        param0->unk_40 = param1;
        break;
    default:
        GF_ASSERT(FALSE);
    }
}

int sub_020629D8 (const MapObject * param0, int param1)
{
    switch (param1) {
    case 0:
        return param0->unk_38;
    case 1:
        return param0->unk_3C;
    case 2:
        return param0->unk_40;
    }

    GF_ASSERT(FALSE);
    return 0;
}

void sub_020629FC (MapObject * param0, int param1)
{
    param0->unk_44 = param1;
}

int sub_02062A00 (const MapObject * param0)
{
    return param0->unk_44;
}

void sub_02062A04 (MapObject * param0, int param1)
{
    param0->unk_48 = param1;
}

int sub_02062A08 (const MapObject * param0)
{
    return param0->unk_48;
}

void sub_02062A0C (MapObject * param0, u32 param1)
{
    param0->unk_A0 = param1;
}

u32 sub_02062A14 (const MapObject * param0)
{
    return param0->unk_A0;
}

void sub_02062A1C (MapObject * param0, SysTask * param1)
{
    param0->unk_B0 = param1;
}

SysTask * sub_02062A24 (const MapObject * param0)
{
    return param0->unk_B0;
}

void sub_02062A2C (const MapObject * param0)
{
    SysTask_Done(sub_02062A24(param0));
}

void sub_02062A38 (MapObject * param0, const MapObjectManager * param1)
{
    param0->unk_B4 = param1;
}

const MapObjectManager * sub_02062A40 (const MapObject * param0)
{
    return param0->unk_B4;
}

static MapObjectManager * sub_02062A48 (const MapObject * param0)
{
    return sub_0206281C(param0->unk_B4);
}

void * sub_02062A54 (MapObject * param0, int param1)
{
    void * v0;

    GF_ASSERT(param1 <= 16);

    v0 = sub_02062A78(param0);
    memset(v0, 0, param1);

    return v0;
}

void * sub_02062A78 (MapObject * param0)
{
    return param0->unk_D8;
}

void * sub_02062A7C (MapObject * param0, int param1)
{
    u8 * v0;

    GF_ASSERT(param1 <= 16);

    v0 = sub_02062AA0(param0);
    memset(v0, 0, param1);

    return v0;
}

void * sub_02062AA0 (MapObject * param0)
{
    return param0->unk_E8;
}

void * sub_02062AA4 (MapObject * param0, int param1)
{
    u8 * v0;

    GF_ASSERT(param1 <= 16);

    v0 = sub_02062AC8(param0);
    memset(v0, 0, param1);

    return v0;
}

void * sub_02062AC8 (MapObject * param0)
{
    return param0->unk_F8;
}

void * sub_02062ACC (MapObject * param0, int param1)
{
    u8 * v0;

    GF_ASSERT(param1 <= 32);

    v0 = sub_02062AF0(param0);
    memset(v0, 0, param1);

    return v0;
}

void * sub_02062AF0 (MapObject * param0)
{
    return param0->unk_108;
}

void sub_02062AF8 (MapObject * param0, UnkFuncPtr_020EDF0C param1)
{
    param0->unk_B8 = param1;
}

void sub_02062B00 (MapObject * param0)
{
    param0->unk_B8(param0);
}

void sub_02062B0C (MapObject * param0, UnkFuncPtr_020EDF0C_1 param1)
{
    param0->unk_BC = param1;
}

void sub_02062B14 (MapObject * param0)
{
    param0->unk_BC(param0);
}

void sub_02062B20 (MapObject * param0, UnkFuncPtr_020EDF0C_2 param1)
{
    param0->unk_C0 = param1;
}

void sub_02062B28 (MapObject * param0)
{
    param0->unk_C0(param0);
}

void sub_02062B34 (MapObject * param0)
{
    const UnkStruct_020EDF0C * v0 = sub_0206320C(sub_02062948(param0));
    v0->unk_10(param0);
}

void sub_02062B4C (MapObject * param0, UnkFuncPtr_ov5_021FB0F0 param1)
{
    param0->unk_C4 = param1;
}

void sub_02062B54 (MapObject * param0)
{
    param0->unk_C4(param0);
}

void sub_02062B60 (MapObject * param0, UnkFuncPtr_ov5_021FB0F0_1 param1)
{
    param0->unk_C8 = param1;
}

void sub_02062B68 (MapObject * param0)
{
    param0->unk_C8(param0);
}

void sub_02062B74 (MapObject * param0, UnkFuncPtr_ov5_021FB0F0_2 param1)
{
    param0->unk_CC = param1;
}

void sub_02062B7C (MapObject * param0)
{
    param0->unk_CC(param0);
}

void sub_02062B88 (MapObject * param0, UnkFuncPtr_ov5_021FB0F0_3 param1)
{
    param0->unk_D0 = param1;
}

void sub_02062B90 (MapObject * param0)
{
    param0->unk_D0(param0);
}

void sub_02062B9C (MapObject * param0, UnkFuncPtr_ov5_021FB0F0_4 param1)
{
    param0->unk_D4 = param1;
}

void sub_02062BA4 (MapObject * param0)
{
    param0->unk_D4(param0);
}

void MapObject_SetAnimationCode (MapObject * param0, int param1)
{
    param0->animationCode = param1;
}

int MapObject_AnimationCode (const MapObject * param0)
{
    return param0->animationCode;
}

void sub_02062BC0 (MapObject * param0, int param1)
{
    param0->unk_A8 = param1;
}

void sub_02062BC8 (MapObject * param0)
{
    param0->unk_A8++;
}

int sub_02062BD8 (const MapObject * param0)
{
    return param0->unk_A8;
}

void sub_02062BE0 (MapObject * param0, u32 param1)
{
    param0->unk_AC = param1;
}

u32 sub_02062BE8 (const MapObject * param0)
{
    return param0->unk_AC;
}

void sub_02062BF0 (MapObject * param0, u32 param1)
{
    param0->unk_AE = param1;
}

u32 sub_02062BF8 (const MapObject * param0)
{
    return param0->unk_AE;
}

FieldSystem * MapObject_FieldSystem (const MapObject * param0)
{
    MapObjectManager * v0;

    v0 = sub_02062A48(param0);
    return sub_02062894(v0);
}

int sub_02062C0C (const MapObject * param0)
{
    return sub_02062858(sub_02062A40(param0));
}

int sub_02062C18 (const MapObject * param0)
{
    GF_ASSERT(sub_02062E94(param0) == 1);
    return sub_02062958(param0);
}

void sub_02062C30 (MapObjectManager * param0)
{
    sub_02062838(param0, (1 << 1) | (1 << 2));
}

void sub_02062C3C (MapObjectManager * param0)
{
    sub_02062840(param0, (1 << 1) | (1 << 2));
}

void MapObjectMan_PauseAllMovement (MapObjectManager * param0)
{
    int v0 = sub_02062824(param0);
    MapObject * v1 = sub_02062878(param0);

    do {
        if (sub_02062CF8(v1)) {
            sub_02062DD0(v1);
        }

        v1++;
        v0--;
    } while (v0);
}

void MapObjectMan_UnpauseAllMovement (MapObjectManager * param0)
{
    int v0 = sub_02062824(param0);
    MapObject * v1 = sub_02062878(param0);

    do {
        if (sub_02062CF8(v1)) {
            sub_02062DDC(v1);
        }

        v1++;
        v0--;
    } while (v0);
}

int sub_02062CA8 (const MapObjectManager * param0)
{
    if (sub_0206284C(param0, (1 << 0))) {
        return 1;
    }

    return 0;
}

u32 sub_02062CBC (const MapObject * param0, u32 param1)
{
    const MapObjectManager * v0 = sub_02062A40(param0);

    return sub_0206284C(v0, param1);
}

void sub_02062CCC (MapObjectManager * param0, int param1)
{
    if (param1 == 0) {
        sub_02062838(param0, (1 << 3));
    } else {
        sub_02062840(param0, (1 << 3));
    }
}

int sub_02062CE4 (const MapObjectManager * param0)
{
    if (sub_0206284C(param0, (1 << 3))) {
        return 0;
    }

    return 1;
}

int sub_02062CF8 (const MapObject * param0)
{
    return sub_020628D8(param0, (1 << 0));
}

void sub_02062D04 (MapObject * param0)
{
    MapObject_SetStatusFlagOn(param0, (1 << 1));
}

void sub_02062D10 (MapObject * param0)
{
    MapObject_SetStatusFlagOff(param0, (1 << 1));
}

int sub_02062D1C (const MapObject * param0)
{
    return sub_020628D8(param0, (1 << 1));
}

void sub_02062D28 (MapObject * param0)
{
    MapObject_SetStatusFlagOn(param0, (1 << 2));
}

void sub_02062D34 (MapObject * param0)
{
    MapObject_SetStatusFlagOff(param0, (1 << 3));
}

void sub_02062D40 (MapObject * param0)
{
    MapObject_SetStatusFlagOn(param0, (1 << 14));
}

int sub_02062D4C (const MapObject * param0)
{
    return sub_020628D8(param0, (1 << 14));
}

int sub_02062D58 (const MapObject * param0)
{
    return sub_020628D8(param0, (1 << 9));
}

void MapObject_SetHidden (MapObject * param0, int param1)
{
    if (param1 == 1) {
        MapObject_SetStatusFlagOn(param0, MAP_OBJ_STATUS_HIDE);
    } else {
        MapObject_SetStatusFlagOff(param0, MAP_OBJ_STATUS_HIDE);
    }
}

void sub_02062D80 (MapObject * param0, int param1)
{
    if (param1 == 1) {
        MapObject_SetStatusFlagOff(param0, (1 << 18));
    } else {
        MapObject_SetStatusFlagOn(param0, (1 << 18));
    }
}

int sub_02062D9C (MapObject * param0)
{
    if (sub_020628D8(param0, (1 << 19)) == 1) {
        return 0;
    }

    return 1;
}

void sub_02062DB4 (MapObject * param0, int param1)
{
    if (param1 == 1) {
        MapObject_SetStatusFlagOn(param0, (1 << 19));
    } else {
        MapObject_SetStatusFlagOff(param0, (1 << 19));
    }
}

void sub_02062DD0 (MapObject * param0)
{
    MapObject_SetStatusFlagOn(param0, (1 << 6));
}

void sub_02062DDC (MapObject * param0)
{
    MapObject_SetStatusFlagOff(param0, (1 << 6));
}

int sub_02062DE8 (const MapObject * param0)
{
    if (sub_020628D8(param0, (1 << 6)) == 1) {
        return 1;
    }

    return 0;
}

int sub_02062DFC (const MapObject * param0)
{
    const MapObjectManager * v0;

    v0 = sub_02062A40(param0);

    if (sub_02062CA8(v0) == 0) {
        return 0;
    }

    if (sub_020628D0(param0, (1 << 14)) == 0) {
        return 0;
    }

    return 1;
}

void sub_02062E28 (MapObject * param0, int param1)
{
    if (param1 == 1) {
        MapObject_SetStatusFlagOn(param0, (1 << 23));
    } else {
        MapObject_SetStatusFlagOff(param0, (1 << 23));
    }
}

int sub_02062E44 (const MapObject * param0)
{
    if (sub_020628D0(param0, (1 << 23))) {
        return 1;
    }

    return 0;
}

void sub_02062E5C (MapObject * param0, int param1)
{
    if (param1 == 1) {
        MapObject_SetStatusFlagOn(param0, (1 << 10));
    } else {
        MapObject_SetStatusFlagOff(param0, (1 << 10));
    }
}

void sub_02062E78 (MapObject * param0, int param1)
{
    if (param1 == 1) {
        MapObject_SetStatusFlagOn(param0, (1 << 25));
    } else {
        MapObject_SetStatusFlagOff(param0, (1 << 25));
    }
}

int sub_02062E94 (const MapObject * param0)
{
    if (sub_020628D0(param0, (1 << 25))) {
        return 1;
    }

    return 0;
}

void sub_02062EAC (MapObject * param0, int param1)
{
    if (param1 == 1) {
        MapObject_SetStatusFlagOn(param0, (1 << 26));
    } else {
        MapObject_SetStatusFlagOff(param0, (1 << 26));
    }
}

int sub_02062EC8 (const MapObject * param0)
{
    if (sub_020628D0(param0, (1 << 26))) {
        return 1;
    }

    return 0;
}

void sub_02062EE0 (MapObject * param0, int param1)
{
    if (param1 == 1) {
        MapObject_SetStatusFlagOn(param0, (1 << 27));
    } else {
        MapObject_SetStatusFlagOff(param0, (1 << 27));
    }
}

int sub_02062EFC (const MapObject * param0)
{
    if (sub_020628D0(param0, (1 << 27))) {
        return 1;
    }

    return 0;
}

void sub_02062F14 (MapObject * param0, int param1)
{
    if (param1 == 1) {
        MapObject_SetStatusFlagOn(param0, (1 << 28));
    } else {
        MapObject_SetStatusFlagOff(param0, (1 << 28));
    }
}

int sub_02062F30 (const MapObject * param0)
{
    if (sub_020628D0(param0, (1 << 28))) {
        return 1;
    }

    return 0;
}

void sub_02062F48 (MapObject * param0, int param1)
{
    if (param1 == 1) {
        MapObject_SetStatusFlagOn(param0, (1 << 24));
    } else {
        MapObject_SetStatusFlagOff(param0, (1 << 24));
    }
}

int sub_02062F64 (const MapObject * param0)
{
    if (sub_020628D0(param0, (1 << 24))) {
        return 1;
    }

    return 0;
}

int sub_02062F7C (const MapObject * param0)
{
    if (sub_020628D0(param0, (1 << 4))) {
        return 1;
    }

    return 0;
}

void sub_02062F90 (MapObject * param0, int param1)
{
    if (param1 == 1) {
        MapObject_SetStatusFlagOn(param0, (1 << 29));
    } else {
        MapObject_SetStatusFlagOff(param0, (1 << 29));
    }
}

int sub_02062FAC (const MapObject * param0)
{
    if (sub_020628D0(param0, (1 << 29))) {
        return 1;
    }

    return 0;
}

void sub_02062FC4 (MapObject * param0, int param1)
{
    if (param1 == 1) {
        sub_020628F0(param0, (1 << 2));
    } else {
        sub_020628F8(param0, (1 << 2));
    }
}

int sub_02062FDC (const MapObject * param0)
{
    if (sub_02062904(param0, (1 << 2))) {
        return 1;
    }

    return 0;
}

int sub_02062FF0 (const MapObject * param0)
{
    return param0->unk_4C;
}

void sub_02062FF4 (MapObject * param0, int param1)
{
    param0->unk_4C = param1;
}

int sub_02062FF8 (const MapObject * param0)
{
    return param0->unk_50;
}

void sub_02062FFC (MapObject * param0, int param1)
{
    param0->unk_50 = param1;
}

int sub_02063000 (const MapObject * param0)
{
    return param0->unk_54;
}

void sub_02063004 (MapObject * param0, int param1)
{
    param0->unk_54 = param1;
}

int MapObject_XPosPrev (const MapObject * param0)
{
    return param0->unk_58;
}

void sub_0206300C (MapObject * param0, int param1)
{
    param0->unk_58 = param1;
}

int sub_02063010 (const MapObject * param0)
{
    return param0->unk_5C;
}

void sub_02063014 (MapObject * param0, int param1)
{
    param0->unk_5C = param1;
}

int MapObject_ZPosPrev (const MapObject * param0)
{
    return param0->unk_60;
}

void sub_0206301C (MapObject * param0, int param1)
{
    param0->unk_60 = param1;
}

int MapObject_XPos (const MapObject * param0)
{
    return param0->unk_64;
}

void LocalMapObj_SetX (MapObject * param0, int param1)
{
    param0->unk_64 = param1;
}

void sub_02063028 (MapObject * param0, int param1)
{
    param0->unk_64 += param1;
}

int MapObject_YPos (const MapObject * param0)
{
    return param0->unk_68;
}

void sub_02063034 (MapObject * param0, int param1)
{
    param0->unk_68 = param1;
}

void sub_02063038 (MapObject * param0, int param1)
{
    param0->unk_68 += param1;
}

int MapObject_ZPos (const MapObject * param0)
{
    return param0->unk_6C;
}

void LocalMapObj_SetZ (MapObject * param0, int param1)
{
    param0->unk_6C = param1;
}

void sub_02063048 (MapObject * param0, int param1)
{
    param0->unk_6C += param1;
}

void MapObject_PosVectorOut (const MapObject * param0, VecFx32 * param1)
{
    *param1 = param0->unk_70;
}

void sub_02063060 (MapObject * param0, const VecFx32 * param1)
{
    param0->unk_70 = *param1;
}

const VecFx32 * MapObject_PosVector (const MapObject * param0)
{
    return &param0->unk_70;
}

fx32 sub_02063074 (const MapObject * param0)
{
    return param0->unk_70.y;
}

void sub_02063078 (const MapObject * param0, VecFx32 * param1)
{
    *param1 = param0->unk_7C;
}

void sub_02063088 (MapObject * param0, const VecFx32 * param1)
{
    param0->unk_7C = *param1;
}

VecFx32 * sub_02063098 (MapObject * param0)
{
    return &param0->unk_7C;
}

void sub_0206309C (const MapObject * param0, VecFx32 * param1)
{
    *param1 = param0->unk_88;
}

void sub_020630AC (MapObject * param0, const VecFx32 * param1)
{
    param0->unk_88 = *param1;
}

void sub_020630BC (const MapObject * param0, VecFx32 * param1)
{
    *param1 = param0->unk_94;
}

void sub_020630CC (MapObject * param0, const VecFx32 * param1)
{
    param0->unk_94 = *param1;
}

int sub_020630DC (const MapObject * param0)
{
    fx32 v0 = sub_02063074(param0);
    int v1 = (((v0) >> 3) / FX32_ONE);

    return v1;
}

void sub_020630F0 (UnkStruct_020619DC * param0, int param1)
{
    param0->unk_00 = param1;
}

int sub_020630F4 (const UnkStruct_020619DC * param0)
{
    return param0->unk_00;
}

void sub_020630F8 (UnkStruct_020619DC * param0, int param1)
{
    param0->unk_02 = param1;
}

int sub_020630FC (const UnkStruct_020619DC * param0)
{
    return param0->unk_02;
}

void sub_02063100 (UnkStruct_020619DC * param0, int param1)
{
    param0->unk_04 = param1;
}

int sub_02063104 (const UnkStruct_020619DC * param0)
{
    return param0->unk_04;
}

void sub_02063108 (UnkStruct_020619DC * param0, int param1)
{
    param0->unk_06 = param1;
}

int sub_0206310C (const UnkStruct_020619DC * param0)
{
    return param0->unk_06;
}

void sub_02063110 (UnkStruct_020619DC * param0, int param1)
{
    param0->unk_08 = param1;
}

int sub_02063114 (const UnkStruct_020619DC * param0)
{
    return param0->unk_08;
}

void sub_02063118 (UnkStruct_020619DC * param0, int param1)
{
    param0->unk_0A = param1;
}

int sub_0206311C (const UnkStruct_020619DC * param0)
{
    return param0->unk_0A;
}

void sub_02063120 (UnkStruct_020619DC * param0, int param1)
{
    param0->unk_0C = param1;
}

int sub_02063124 (const UnkStruct_020619DC * param0)
{
    return param0->unk_0C;
}

void sub_0206312C (UnkStruct_020619DC * param0, int param1, int param2)
{
    switch (param2) {
    case 0:
        param0->unk_0E = param1;
        break;
    case 1:
        param0->unk_10 = param1;
        break;
    case 2:
        param0->unk_12 = param1;
        break;
    default: GF_ASSERT(FALSE);
    }
}

int sub_02063150 (const UnkStruct_020619DC * param0, int param1)
{
    switch (param1) {
    case 0:
        return param0->unk_0E;
    case 1:
        return param0->unk_10;
    case 2:
        return param0->unk_12;
    }

    GF_ASSERT(FALSE);
    return 0;
}

void sub_02063174 (UnkStruct_020619DC * param0, int param1)
{
    param0->unk_14 = param1;
}

int sub_02063178 (const UnkStruct_020619DC * param0)
{
    return param0->unk_14;
}

void sub_02063180 (UnkStruct_020619DC * param0, int param1)
{
    param0->unk_18 = param1;
}

int sub_02063184 (const UnkStruct_020619DC * param0)
{
    return param0->unk_18;
}

void sub_0206318C (UnkStruct_020619DC * param0, int param1)
{
    param0->unk_1A = param1;
}

int sub_02063190 (const UnkStruct_020619DC * param0)
{
    return param0->unk_1A;
}

void sub_02063194 (UnkStruct_020619DC * param0, int param1)
{
    param0->unk_1E = param1;
}

int sub_02063198 (const UnkStruct_020619DC * param0)
{
    return param0->unk_1E;
}

void sub_0206319C (UnkStruct_020619DC * param0, int param1)
{
    param0->unk_1C = param1;
}

int sub_020631A0 (const UnkStruct_020619DC * param0)
{
    return param0->unk_1C;
}

static const UnkStruct_020619DC * sub_020631A4 (int param0, int param1, const UnkStruct_020619DC * param2)
{
    int v0 = 0;

    do {
        if (sub_020631D8(&param2[v0]) == 0) {
            if (sub_020630F4(&param2[v0]) == param0) {
                return &param2[v0];
            }
        }

        v0++;
    } while (v0 < param1);

    return NULL;
}

static int sub_020631D8 (const UnkStruct_020619DC * param0)
{
    u16 v0 = (u16)sub_0206311C(param0);

    if (v0 == 0xffff) {
        return 1;
    }

    return 0;
}

static int sub_020631F4 (const UnkStruct_020619DC * param0)
{
    GF_ASSERT(sub_020631D8(param0) == 1);
    return sub_02063114(param0);
}

static const UnkStruct_020EDF0C * sub_0206320C (u32 param0)
{
    GF_ASSERT(param0 < 0x44);
    return Unk_020EE3A8[param0];
}

static UnkFuncPtr_020EDF0C sub_02063224 (const UnkStruct_020EDF0C * param0)
{
    return param0->unk_04;
}

static UnkFuncPtr_020EDF0C_1 sub_02063228 (const UnkStruct_020EDF0C * param0)
{
    return param0->unk_08;
}

static UnkFuncPtr_020EDF0C_2 sub_0206322C (const UnkStruct_020EDF0C * param0)
{
    return param0->unk_0C;
}

static UnkFuncPtr_ov5_021FB0F0 sub_02063230 (const UnkStruct_ov5_021FB0F0 * param0)
{
    return param0->unk_00;
}

static UnkFuncPtr_ov5_021FB0F0_1 sub_02063234 (const UnkStruct_ov5_021FB0F0 * param0)
{
    return param0->unk_04;
}

static UnkFuncPtr_ov5_021FB0F0_2 sub_02063238 (const UnkStruct_ov5_021FB0F0 * param0)
{
    return param0->unk_08;
}

static UnkFuncPtr_ov5_021FB0F0_3 sub_0206323C (const UnkStruct_ov5_021FB0F0 * param0)
{
    return param0->unk_0C;
}

static UnkFuncPtr_ov5_021FB0F0_4 sub_02063240 (const UnkStruct_ov5_021FB0F0 * param0)
{
    return param0->unk_10;
}

static const UnkStruct_ov5_021FB0F0 * sub_02063244 (u32 param0)
{
    const UnkStruct_ov5_021FB97C * v0 = Unk_ov5_021FB97C;

    do {
        if (v0->unk_00 == param0) {
            return v0->unk_04;
        }

        v0++;
    } while (v0->unk_00 != 0xffff);

    GF_ASSERT(FALSE);
    return NULL;
}

MapObject * sub_0206326C (const MapObjectManager * param0, int param1, int param2, int param3)
{
    int v0;
    MapObject * v1;

    v0 = sub_02062824(param0);
    v1 = sub_02062878(param0);

    do {
        if (sub_020628D0(v1, (1 << 0))) {
            if (param3) {
                if ((MapObject_XPosPrev(v1) == param1) && (MapObject_ZPosPrev(v1) == param2)) {
                    return v1;
                }
            }

            if ((MapObject_XPos(v1) == param1) && (MapObject_ZPos(v1) == param2)) {
                return v1;
            }
        }

        v1++;
        v0--;
    } while (v0);

    return NULL;
}

void sub_020632D4 (MapObject * param0, const VecFx32 * param1, int param2)
{
    int v0, v1, v2;

    v0 = (((param1->x) >> 4) / FX32_ONE);
    LocalMapObj_SetX(param0, v0);

    v1 = (((param1->y) >> 3) / FX32_ONE);
    sub_02063034(param0, v1);

    v2 = (((param1->z) >> 4) / FX32_ONE);
    LocalMapObj_SetZ(param0, v2);

    sub_02063060(param0, param1);
    sub_02064208(param0);

    sub_0206296C(param0, param2);

    sub_020656DC(param0);
    MapObject_SetStatusFlagOn(param0, (1 << 2));
    MapObject_SetStatusFlagOff(param0, (1 << 1) | (1 << 3));
}

void LocalMapObj_SetPosDir (MapObject * param0, int param1, int param2, int param3, int param4)
{
    VecFx32 v0;

    v0.x = (((param1) << 4) * FX32_ONE) + (((16 * FX32_ONE) >> 1));
    LocalMapObj_SetX(param0, param1);

    v0.y = (((param2) << 3) * FX32_ONE) + 0;
    sub_02063034(param0, param2);

    v0.z = (((param3) << 4) * FX32_ONE) + (((16 * FX32_ONE) >> 1));
    LocalMapObj_SetZ(param0, param3);

    sub_02063060(param0, &v0);
    sub_02064208(param0);

    sub_0206296C(param0, param4);

    MapObject_SetStatusFlagOn(param0, (1 << 2));
    MapObject_SetStatusFlagOff(param0, (1 << 1) | (1 << 3));

    sub_020656DC(param0);
}

void sub_020633A8 (MapObject * param0, u32 param1)
{
    sub_02062B28(param0);
    sub_02062944(param0, param1);
    sub_0206239C(param0);
    sub_02063400(param0);
}

void sub_020633C8 (MapObject * param0, int param1)
{
    LocalMapObj_SetId(param0, param1);

    sub_02062D28(param0);
    sub_02062618(param0);
}

void sub_020633E0 (MapObject * param0)
{
    return;
}

void sub_020633E4 (MapObject * param0)
{
    return;
}

void sub_020633E8 (MapObject * param0)
{
    return;
}

void sub_020633EC (MapObject * param0)
{
    return;
}

void sub_020633F0 (MapObject * param0)
{
    return;
}

void sub_020633F4 (MapObject * param0)
{
    return;
}

void sub_020633F8 (MapObject * param0)
{
    return;
}

void sub_020633FC (MapObject * param0)
{
    return;
}
