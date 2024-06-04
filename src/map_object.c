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
#include "map_object_move.h"
#include "unk_020655F4.h"
#include "unk_020677F4.h"
#include "overlay005/ov5_021ECC20.h"
#include "overlay005/ov5_021ECE40.h"

typedef struct MapObjectMan {
    u32 unk_00;
    int maxObjects;
    int objectCnt;
    int unk_0C;
    int unk_10;
    NARC * unk_14;
    UnkStruct_ov5_021ED0A4 unk_18;
    UnkStruct_02061830_sub1 * unk_120;
    MapObject * unk_124;
    FieldSystem * fieldSystem;
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
    int xInit;
    int yInit;
    int zInit;
    int xPrev;
    int yPrev;
    int zPrev;
    int x;
    int y;
    int z;
    VecFx32 posVec;
    VecFx32 unk_7C;
    VecFx32 unk_88;
    VecFx32 unk_94;
    u32 unk_A0;
    int animationCode;
    int unk_A8;
    u16 unk_AC;
    u16 unk_AE;
    SysTask * unk_B0;
    const MapObjectManager * mapObjMan;
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
    MapObjectHeader * unk_10;
} UnkStruct_020620C4;

static MapObjectManager * MapObjectMan_Alloc(int param0);
static void MapObject_Save(FieldSystem * fieldSystem, MapObject * param1, MapObjectSave * param2);
static void MapObject_LoadSave(MapObject * mapObj, MapObjectSave * param1);
static void sub_02061FA8(const MapObjectManager * param0, MapObject * param1);
static void sub_02061FF0(MapObject * mapObj);
static void sub_02062010(MapObject * mapObj);
static void sub_020620C4(UnkStruct_020620C4 * param0);
static MapObject * sub_02062120(const MapObjectManager * param0);
static MapObject * sub_02062154(const MapObjectManager * param0, int param1, int param2);
static void MapObjectMan_AddMoveTask(const MapObjectManager * param0, MapObject * param1);
static void sub_020621E8(MapObject * param0, const MapObjectHeader * param1, FieldSystem * fieldSystem);
static void sub_020622B8(MapObject * param0, const MapObjectHeader * param1);
static void sub_0206234C(MapObject * param0, const MapObjectManager * param1);
static void sub_0206239C(MapObject * param0);
static void sub_020623D4(MapObject * param0);
static void sub_0206243C(MapObject * param0);
static int sub_0206244C(const MapObject * param0, int param1, int param2, const MapObjectHeader * param3);
static MapObject * sub_020624CC(const MapObjectManager * param0, int param1, int param2);
static void sub_02062604(MapObject * param0);
static void sub_02062618(MapObject * param0);
static void sub_02062628(MapObject * param0);
static int sub_0206262C(FieldSystem * fieldSystem, int param1);
static void sub_02062648(MapObject * param0);
static void sub_02062660(MapObject * param0);
static void sub_02062670(MapObject * param0);
static void sub_020626D0(MapObject * param0, const MapObjectHeader * param1, int param2);
static void sub_02062714(MapObject * param0, int param1, const MapObjectHeader * param2);
static void MapObjectTask_Move(SysTask * param0, void * param1);
static void MapObjectTask_Draw(MapObject * param0);
static MapObjectManager * MapObjectMan_Deconst(const MapObjectManager * param0);
static void MapObjectMan_IncObjectCount(MapObjectManager * param0);
static void MapObjectMan_DecObjectCount(MapObjectManager * param0);
static MapObject * sub_02062870(const MapObjectManager * param0);
static MapObjectManager * sub_02062A48(const MapObject * param0);
static const MapObjectHeader * sub_020631A4(int param0, int param1, const MapObjectHeader * param2);
static int sub_020631D8(const MapObjectHeader * param0);
static int sub_020631F4(const MapObjectHeader * param0);

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

MapObjectManager * MapObjectMan_New (FieldSystem * fieldSystem, int maxObjs, int param2)
{
    MapObjectManager * mapObjMan = MapObjectMan_Alloc(maxObjs);
    MapObjectMan_SetFieldSystem(mapObjMan, fieldSystem);
    MapObjectMan_SetMaxObjects(mapObjMan, maxObjs);
    sub_02062854(mapObjMan, param2);

    return mapObjMan;
}

void MapObjectMan_Delete (MapObjectManager * mapObjMan)
{
    Heap_FreeToHeapExplicit(11, sub_02062878(mapObjMan));
    Heap_FreeToHeapExplicit(11, mapObjMan);
}

void sub_0206184C (MapObjectManager * mapObjMan, int param1, int param2, int param3, const MapObjectHeader * param4)
{
    int v0, v1 = MapObjectMan_GetMaxObjects(mapObjMan);
    MapObject * mapObj = sub_02062878(mapObjMan);

    while (v1) {
        if (sub_02062CF8(mapObj) == 1) {
            v0 = sub_0206244C(mapObj, param2, param3, param4);

            switch (v0) {
            case 0:
                if (sub_02062918(mapObj) != param2) {
                    if (sub_020628D8(mapObj, (1 << 10)) == 0) {
                        MapObject_Delete(mapObj);
                    }
                }
                break;
            case 2:
                break;
            case 1:
                break;
            }
        }

        mapObj++;
        v1--;
    }

    ov5_021EDA38(mapObjMan, sub_0206285C(mapObjMan));
}

static MapObjectManager * MapObjectMan_Alloc (int maxObjs)
{
    int size;
    MapObject * mapObj;
    MapObjectManager * mapObjMan;

    mapObjMan = Heap_AllocFromHeap(11, (sizeof(MapObjectManager)));

    GF_ASSERT(mapObjMan != NULL);
    memset(mapObjMan, 0, (sizeof(MapObjectManager)));

    size = sizeof(MapObject) * maxObjs;
    mapObj = Heap_AllocFromHeap(11, size);

    GF_ASSERT(mapObj != NULL);
    memset(mapObj, 0, size);

    sub_02062860(mapObjMan, mapObj);

    return mapObjMan;
}

MapObject * MapObjectMan_AddMapObjectFromHeader (const MapObjectManager * mapObjMan, const MapObjectHeader * param1, int param2)
{
    MapObject * mapObj;
    MapObjectHeader v1 = *param1;
    MapObjectHeader * v2 = &v1;

    int v3 = sub_020630F4(v2);

    if (sub_020631D8(v2) == 0) {
        mapObj = sub_02062154(mapObjMan, v3, param2);

        if (mapObj != NULL) {
            sub_020626D0(mapObj, v2, param2);

            return mapObj;
        }
    } else {
        mapObj = sub_020624CC(mapObjMan, v3, sub_020631F4(v2));

        if (mapObj != NULL) {
            sub_02062714(mapObj, param2, v2);
            return mapObj;
        }
    }

    mapObj = sub_02062120(mapObjMan);

    if (mapObj == NULL) {
        return mapObj;
    }

    sub_020621E8(mapObj, v2, MapObjectMan_FieldSystem(mapObjMan));
    sub_0206234C(mapObj, mapObjMan);
    sub_02062914(mapObj, param2);
    sub_02062660(mapObj);
    sub_02062670(mapObj);
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_START_MOVEMENT);
    MapObjectMan_AddMoveTask(mapObjMan, mapObj);
    MapObjectMan_IncObjectCount(MapObjectMan_Deconst(mapObjMan));

    return mapObj;
}

MapObject * MapObjectMan_AddMapObject (const MapObjectManager * mapObjMan, int x, int z, int param3, int param4, int param5, int param6)
{
    MapObjectHeader mapObjHeader;
    MapObject * mapObj;

    sub_020630F0(&mapObjHeader, 0);
    sub_020630F8(&mapObjHeader, param4);
    sub_02063100(&mapObjHeader, param5);
    sub_02063108(&mapObjHeader, 0);
    sub_02063110(&mapObjHeader, 0);
    sub_02063118(&mapObjHeader, 0);
    sub_02063120(&mapObjHeader, param3);
    sub_0206312C(&mapObjHeader, 0, 0);
    sub_0206312C(&mapObjHeader, 0, 1);
    sub_0206312C(&mapObjHeader, 0, 2);
    sub_02063174(&mapObjHeader, 0);
    sub_02063180(&mapObjHeader, 0);
    MapObjectHeader_SetXPos(&mapObjHeader, x);
    MapObjectHeader_SetZPos(&mapObjHeader, z);
    sub_02063194(&mapObjHeader, 0);

    mapObj = MapObjectMan_AddMapObjectFromHeader(mapObjMan, &mapObjHeader, param6);

    return mapObj;
}

MapObject * sub_02061A74 (const MapObjectManager * mapObjMan, int param1, int param2, int param3, const MapObjectHeader * param4)
{
    MapObject * mapObj = NULL;
    const MapObjectHeader * v1 = sub_020631A4(param1, param2, param4);

    if (v1 != NULL) {
        int v2 = sub_02063114(v1);
        FieldSystem * fieldSystem = MapObjectMan_FieldSystem(mapObjMan);

        if (sub_0203F188(fieldSystem, v2) == 0) {
            mapObj = MapObjectMan_AddMapObjectFromHeader(mapObjMan, v1, param3);
        }
    }

    return mapObj;
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
    const MapObjectManager * mapObjMan;

    mapObjMan = MapObject_MapObjectManager(mapObj);

    if (MapObjectMan_IsDrawInitialized(mapObjMan) == 1) {
        sub_02062B7C(mapObj);
    }

    sub_02062B28(mapObj);
    sub_02062A2C(mapObj);
    MapObjectMan_DecObjectCount(sub_02062A48(mapObj));
    sub_0206243C(mapObj);
}

void sub_02061B28 (MapObject * mapObj)
{
    int v0 = sub_02062958(mapObj);
    sub_0203F19C(MapObject_FieldSystem(mapObj), v0);
    MapObject_Delete(mapObj);
}

void sub_02061B48 (MapObject * mapObj)
{
    const MapObjectManager * mapObjMan = MapObject_MapObjectManager(mapObj);

    if (MapObjectMan_IsDrawInitialized(mapObjMan) == 1) {
        if (MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_14)) {
            sub_02062B7C(mapObj);
        }

        MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_14);
    }

    sub_0206291C(mapObj, 0xffff);
    sub_02062B4C(mapObj, sub_020633F0);
    sub_02062B60(mapObj, sub_020633F4);
    sub_02062B74(mapObj, sub_020633F4);
    sub_02062B88(mapObj, sub_020633F8);
    sub_02062B9C(mapObj, sub_020633FC);
}

void MapObjectMan_DeleteAll (MapObjectManager * mapObjMan)
{
    int v0, v1;
    MapObject * mapObj;

    v0 = 0;
    v1 = MapObjectMan_GetMaxObjects(mapObjMan);
    mapObj = sub_02062878(mapObjMan);

    do {
        if (MapObject_CheckStatus(mapObj, (1 << 0))) {
            MapObject_Delete(mapObj);
        }

        mapObj++;
        v0++;
    } while (v0 < v1);
}

void sub_02061BF0 (MapObjectManager * mapObjMan)
{
    GF_ASSERT(MapObjectMan_IsDrawInitialized(mapObjMan) == 1);

    int v0, maxObjects;
    MapObject * mapObj;

    v0 = 0;
    maxObjects = MapObjectMan_GetMaxObjects(mapObjMan);
    mapObj = sub_02062878(mapObjMan);

    do {
        if (MapObject_CheckStatus(mapObj, (1 << 0))) {
            if (MapObject_CheckStatus(mapObj, (1 << 14))) {
                sub_02062B90(mapObj);
                sub_02062628(mapObj);
            }
        }

        mapObj++;
        v0++;
    } while (v0 < maxObjects);
}

void sub_02061C48 (MapObjectManager * mapObjMan)
{
    GF_ASSERT(MapObjectMan_IsDrawInitialized(mapObjMan) == 1);

    int v0 = 0;
    int maxObjects = MapObjectMan_GetMaxObjects(mapObjMan);
    MapObject * mapObj = sub_02062878(mapObjMan);

    do {
        if (sub_02062CF8(mapObj) == 1) {
            if (sub_02062D4C(mapObj) == 1) {
                sub_02062BA4(mapObj);
            } else {
                sub_02062670(mapObj);
            }

            sub_02062604(mapObj);
            sub_02064464(mapObj);
        }

        mapObj++;
        v0++;
    } while (v0 < maxObjects);
}

void MapObjectMan_SaveAll (FieldSystem * fieldSystem, const MapObjectManager * param1, MapObjectSave * mapObjSave, int param3)
{
    int v0 = 0;
    MapObject * mapObj;

    while (sub_020625B0(param1, &mapObj, &v0, (1 << 0))) {
        MapObject_Save(fieldSystem, mapObj, mapObjSave);
        mapObjSave++; param3--;
        GF_ASSERT(param3 > 0);
    }

    if (param3) {
        memset(mapObjSave, 0, param3 * (sizeof(MapObjectSave)));
    }
}

void MapObjectMan_LoadAllObjects (const MapObjectManager * mapObjMan, MapObjectSave * mapObjSave, int size)
{
    int v0 = 0;
    MapObject * mapObj;

    while (size) {
        if ((mapObjSave->unk_00 & (1 << 0))) {
            mapObj = sub_02062120(mapObjMan);
            GF_ASSERT(mapObj != NULL);

            MapObject_LoadSave(mapObj, mapObjSave);
            sub_02061FA8(mapObjMan, mapObj);
        }

        mapObjSave++;
        size--;
    }
}

static void MapObject_Save (FieldSystem * fieldSystem, MapObject * mapObj, MapObjectSave * mapObjSave)
{
    mapObjSave->unk_00 = sub_020628B8(mapObj);
    mapObjSave->unk_04 = sub_020628EC(mapObj);
    mapObjSave->unk_08 = MapObject_Id(mapObj);
    mapObjSave->unk_10 = sub_02062918(mapObj);
    mapObjSave->unk_12 = sub_02062920(mapObj);
    mapObjSave->unk_09 = MapObject_GetMoveCode(mapObj);
    mapObjSave->unk_14 = MapObject_GetEventType(mapObj);
    mapObjSave->unk_16 = sub_02062958(mapObj);
    mapObjSave->unk_18 = MapObject_GetEventID(mapObj);
    mapObjSave->unk_0C = sub_02062968(mapObj);
    mapObjSave->unk_0D = MapObject_Dir(mapObj);
    mapObjSave->unk_0E = MapObject_GetMoveDir(mapObj);
    mapObjSave->unk_1A = sub_020629D8(mapObj, 0);
    mapObjSave->unk_1C = sub_020629D8(mapObj, 1);
    mapObjSave->unk_1E = sub_020629D8(mapObj, 2);
    mapObjSave->unk_0A = MapObject_MaxXOffset(mapObj);
    mapObjSave->unk_0B = MapObject_MaxZOffset(mapObj);
    mapObjSave->unk_20 = MapObject_XInitial(mapObj);
    mapObjSave->unk_22 = MapObject_YInitial(mapObj);
    mapObjSave->unk_24 = MapObject_ZInitial(mapObj);
    mapObjSave->unk_26 = MapObject_GetXPos(mapObj);
    mapObjSave->unk_28 = MapObject_GetYPos(mapObj);
    mapObjSave->unk_2A = MapObject_GetZPos(mapObj);

    VecFx32 v0;
    int v1, v2;

    sub_02064450(mapObjSave->unk_26, mapObjSave->unk_2A, &v0);
    v0.y = sub_02063074(mapObj);

    v2 = sub_02062FAC(mapObj);
    v1 = sub_020644D0(fieldSystem, &v0, v2);

    if (v1 == 0) {
        mapObjSave->unk_2C = sub_02063074(mapObj);
    } else {
        if (sub_02062E44(mapObj) == 1) {
            v0.y = sub_02063074(mapObj);
        }

        mapObjSave->unk_2C = v0.y;
    }

    memcpy(mapObjSave->unk_30, sub_02062A78(mapObj), 16);
    memcpy(mapObjSave->unk_40, sub_02062AA0(mapObj), 16);
}

static void MapObject_LoadSave (MapObject * mapObj, MapObjectSave * mapObjSave)
{
    sub_020628B4(mapObj, mapObjSave->unk_00);
    sub_020628E8(mapObj, mapObjSave->unk_04);
    MapObject_SetId(mapObj, mapObjSave->unk_08);
    sub_02062914(mapObj, mapObjSave->unk_10);
    sub_0206291C(mapObj, mapObjSave->unk_12);
    sub_02062944(mapObj, mapObjSave->unk_09);
    sub_0206294C(mapObj, mapObjSave->unk_14);
    sub_02062954(mapObj, mapObjSave->unk_16);
    sub_0206295C(mapObj, mapObjSave->unk_18);
    sub_02062964(mapObj, mapObjSave->unk_0C);
    sub_0206296C(mapObj, mapObjSave->unk_0D);
    sub_02062994(mapObj, mapObjSave->unk_0E);
    sub_020629B4(mapObj, mapObjSave->unk_1A, 0);
    sub_020629B4(mapObj, mapObjSave->unk_1C, 1);
    sub_020629B4(mapObj, mapObjSave->unk_1E, 2);
    sub_020629FC(mapObj, mapObjSave->unk_0A);
    sub_02062A04(mapObj, mapObjSave->unk_0B);
    MapObject_SetXInitial(mapObj, mapObjSave->unk_20);
    MapObject_SetYInitial(mapObj, mapObjSave->unk_22);
    MapObject_SetZInitial(mapObj, mapObjSave->unk_24);
    MapObject_SetX(mapObj, mapObjSave->unk_26);
    MapObject_SetY(mapObj, mapObjSave->unk_28);
    MapObject_SetZ(mapObj, mapObjSave->unk_2A);

    VecFx32 v0 = {0, 0, 0};

    v0.y = mapObjSave->unk_2C;
    MapObject_SetPosVec(mapObj, &v0);

    memcpy(sub_02062A78(mapObj), mapObjSave->unk_30, 16);
    memcpy(sub_02062AA0(mapObj), mapObjSave->unk_40, 16);
}

static void sub_02061FA8 (const MapObjectManager * mapObjMan, MapObject * mapObj)
{
    sub_02061FF0(mapObj);
    sub_02062010(mapObj);
    MapObject_SetMapObjectManager(mapObj, mapObjMan);
    sub_0206239C(mapObj);
    sub_020656DC(mapObj);
    sub_02062670(mapObj);
    MapObjectMan_AddMoveTask(mapObjMan, mapObj);
    sub_02062B34(mapObj);
    MapObjectMan_IncObjectCount(MapObjectMan_Deconst(mapObjMan));
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

    v0 = MapObject_GetXPos(mapObj);
    v1.x = (((v0) << 4) * FX32_ONE) + (((16 * FX32_ONE) >> 1));

    MapObject_SetXPosPrev(mapObj, v0);
    v0 = MapObject_GetYPos(mapObj);
    MapObject_SetYPosPrev(mapObj, v0);

    v0 = MapObject_GetZPos(mapObj);
    v1.z = (((v0) << 4) * FX32_ONE) + (((16 * FX32_ONE) >> 1));

    MapObject_SetZPosPrev(mapObj, v0);
    MapObject_SetPosVec(mapObj, &v1);
}

void sub_02062068 (const MapObjectManager * mapObjMan, int param1, int param2, const MapObjectHeader * param3)
{
    int v0;
    MapObjectHeader * v1;
    UnkStruct_020620C4 * v2;

    GF_ASSERT(param2);

    v0 = (sizeof(MapObjectHeader)) * param2;
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
    MapObject * mapObj;
    FieldSystem * fieldSystem;
    const MapObjectHeader * v2;

    fieldSystem = MapObjectMan_FieldSystem(param0->unk_0C);
    v2 = param0->unk_10;

    do {
        if ((sub_020631D8(v2) == 1) || (sub_0203F188(fieldSystem, v2->unk_08) == 0)) {
            mapObj = MapObjectMan_AddMapObjectFromHeader(param0->unk_0C, v2, param0->unk_00);
            GF_ASSERT(mapObj != NULL);
        }

        v2++;
        param0->unk_08++;
    } while (param0->unk_08 < param0->unk_04);

    Heap_FreeToHeapExplicit(11, param0->unk_10);
    Heap_FreeToHeapExplicit(11, param0);
}

static MapObject * sub_02062120 (const MapObjectManager * mapObjMan)
{
    int v0, v1;
    MapObject * mapObj;

    v0 = 0;
    v1 = MapObjectMan_GetMaxObjects(mapObjMan);
    mapObj = sub_02062878(mapObjMan);

    do {
        if (MapObject_CheckStatus(mapObj, (1 << 0)) == 0) {
            return mapObj;
        }

        mapObj++;
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
            if (MapObject_Id(v1) == param1) {
                if (sub_02062C18(v1) == param2) {
                    return v1;
                }
            }
        }
    }

    return NULL;
}

static void MapObjectMan_AddMoveTask (const MapObjectManager * mapObjMan, MapObject * mapObj)
{
    int v0, code;
    SysTask * task;

    v0 = sub_02062858(mapObjMan);
    code = MapObject_GetMoveCode(mapObj);

    if ((code == 0x30) || (code == 0x32)) {
        v0 += 2;
    }

    task = SysTask_Start(MapObjectTask_Move, mapObj, v0);
    GF_ASSERT(task != NULL);

    sub_02062A1C(mapObj, task);
}

static void sub_020621E8 (MapObject * mapObj, const MapObjectHeader * mapObjHeader, FieldSystem * fieldSystem)
{
    MapObject_SetId(mapObj, sub_020630F4(mapObjHeader));
    sub_0206291C(mapObj, sub_0206262C(fieldSystem, sub_020630FC(mapObjHeader)));
    sub_02062944(mapObj, sub_02063104(mapObjHeader));
    sub_0206294C(mapObj, sub_0206310C(mapObjHeader));
    sub_02062954(mapObj, sub_02063114(mapObjHeader));
    sub_0206295C(mapObj, sub_0206311C(mapObjHeader));
    sub_02062964(mapObj, sub_02063124(mapObjHeader));
    sub_020629B4(mapObj, sub_02063150(mapObjHeader, 0), 0);
    sub_020629B4(mapObj, sub_02063150(mapObjHeader, 1), 1);
    sub_020629B4(mapObj, sub_02063150(mapObjHeader, 2), 2);
    sub_020629FC(mapObj, sub_02063178(mapObjHeader));
    sub_02062A04(mapObj, sub_02063184(mapObjHeader));
    sub_020622B8(mapObj, mapObjHeader);
}

static void sub_020622B8 (MapObject * mapObj, const MapObjectHeader * mapObjHeader)
{
    int v0;
    VecFx32 v1;

    v0 = sub_02063190(mapObjHeader);
    v1.x = (((v0) << 4) * FX32_ONE) + (((16 * FX32_ONE) >> 1));

    MapObject_SetXInitial(mapObj, v0);
    MapObject_SetXPosPrev(mapObj, v0);
    MapObject_SetX(mapObj, v0);

    v0 = sub_02063198(mapObjHeader);
    v1.y = (fx32)v0;
    v0 = (((v0) >> 3) / FX32_ONE);

    MapObject_SetYInitial(mapObj, v0);
    MapObject_SetYPosPrev(mapObj, v0);
    MapObject_SetY(mapObj, v0);

    v0 = sub_020631A0(mapObjHeader);
    v1.z = (((v0) << 4) * FX32_ONE) + (((16 * FX32_ONE) >> 1));

    MapObject_SetZInitial(mapObj, v0);
    MapObject_SetZPosPrev(mapObj, v0);
    MapObject_SetZ(mapObj, v0);
    MapObject_SetPosVec(mapObj, &v1);
}

static void sub_0206234C (MapObject * mapObj, const MapObjectManager * param1)
{
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_0 | MAP_OBJ_STATUS_12 | MAP_OBJ_STATUS_11);

    if (sub_020626B4(mapObj) == 1) {
        sub_02062E78(mapObj, 1);
    }

    MapObject_SetMapObjectManager(mapObj, param1);
    sub_0206296C(mapObj, sub_02062968(mapObj));
    sub_02062994(mapObj, sub_02062968(mapObj));
    sub_020656DC(mapObj);
}

static void sub_0206239C (MapObject * mapObj)
{
    const UnkStruct_020EDF0C * v0;

    v0 = sub_0206320C(MapObject_GetMoveCode(mapObj));

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

static int sub_0206244C (const MapObject * mapObj, int param1, int param2, const MapObjectHeader * param3)
{
    int v0;
    int v1;

    while (param2) {
        v0 = sub_020630F4(param3);

        if (MapObject_Id(mapObj) == v0) {
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
        if ((MapObject_Id(v1) == param1) && (sub_02062918(v1) == param2)) {
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

    v0 = MapObjectMan_GetMaxObjects(mapObjMan);
    v1 = sub_02062870(mapObjMan);

    do {
        if (sub_020628D8(v1, (1 << 0)) == 1) {
            if (sub_02062E94(v1) == 0) {
                if (MapObject_Id(v1) == param1) {
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

    v0 = MapObjectMan_GetMaxObjects(mapObjMan);
    v1 = sub_02062870(mapObjMan);

    do {
        if (sub_020628D8(v1, (1 << 0)) == 1) {
            if (MapObject_GetMoveCode(v1) == param1) {
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

    v0 = MapObjectMan_GetMaxObjects(mapObjMan);

    if ((*param2) >= v0) {
        return 0;
    }

    v1 = sub_02062870(mapObjMan);
    v1 = &v1[(*param2)];

    do {
        (*param2)++;

        if (MapObject_CheckStatus(v1, param3) == param3) {
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
    if (MapObject_CheckStatus(mapObj, (1 << 12))) {
        sub_020642F8(mapObj);
    }
}

static void sub_02062660 (MapObject * mapObj)
{
    sub_0206239C(mapObj);
    MapObject_InitMove(mapObj);
}

static void sub_02062670 (MapObject * mapObj)
{
    const MapObjectManager * v0 = MapObject_MapObjectManager(mapObj);

    if (MapObjectMan_IsDrawInitialized(v0) == 0) {
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
    u16 v0 = (u16)MapObject_GetEventID(mapObj);

    if (v0 == 0xffff) {
        return 1;
    }

    return 0;
}

static void sub_020626D0 (MapObject * mapObj, const MapObjectHeader * param1, int param2)
{
    GF_ASSERT(sub_02062E94(mapObj) == 1);

    sub_02062E78(mapObj, 0);
    sub_02062914(mapObj, param2);
    sub_0206295C(mapObj, sub_0206311C(param1));
    sub_02062954(mapObj, sub_02063114(param1));
}

static void sub_02062714 (MapObject * mapObj, int param1, const MapObjectHeader * param2)
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

    if (MapObject_Id(mapObj) != param1) {
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

static void MapObjectTask_Move (SysTask * task, void * _mapObject)
{
    MapObject * mapObj = (MapObject *)_mapObject;

    MapObject_Move(mapObj);

    if (sub_02062CF8(mapObj) == FALSE) {
        return;
    }

    MapObjectTask_Draw(mapObj);
}

static void MapObjectTask_Draw (MapObject * mapObj)
{
    const MapObjectManager * mapObjMan = MapObject_MapObjectManager(mapObj);

    if (MapObjectMan_IsDrawInitialized(mapObjMan) == TRUE) {
        MapObject_Draw(mapObj);
    }
}

static MapObjectManager * MapObjectMan_Deconst (const MapObjectManager * mapObjMan)
{
    return (MapObjectManager * )mapObjMan;
}

void MapObjectMan_SetMaxObjects (MapObjectManager * mapObjMan, int maxObjs)
{
    mapObjMan->maxObjects = maxObjs;
}

int MapObjectMan_GetMaxObjects (const MapObjectManager * mapObjMan)
{
    return mapObjMan->maxObjects;
}

static void MapObjectMan_IncObjectCount (MapObjectManager * mapObjMan)
{
    mapObjMan->objectCnt++;
}

static void MapObjectMan_DecObjectCount (MapObjectManager * mapObjMan)
{
    mapObjMan->objectCnt--;
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

void MapObjectMan_SetFieldSystem (MapObjectManager * mapObjMan, FieldSystem * fieldSystem)
{
    mapObjMan->fieldSystem = fieldSystem;
}

FieldSystem * MapObjectMan_FieldSystem (const MapObjectManager * mapObjMan)
{
    return mapObjMan->fieldSystem;
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

u32 MapObject_CheckStatus (const MapObject * mapObj, u32 param1)
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

void sub_020628F8 (MapObject * mapObj, u32 param1)
{
    mapObj->unk_04 &= ~param1;
}

u32 sub_02062904 (const MapObject * mapObj, u32 param1)
{
    return(mapObj->unk_04 & param1);
}

void MapObject_SetId (MapObject * mapObj, u32 param1)
{
    mapObj->unk_08 = param1;
}

u32 MapObject_Id (const MapObject * mapObj)
{
    return mapObj->unk_08;
}

void sub_02062914 (MapObject * mapObj, int param1)
{
    mapObj->unk_0C = param1;
}

int sub_02062918 (const MapObject * mapObj)
{
    return mapObj->unk_0C;
}

void sub_0206291C (MapObject * mapObj, u32 param1)
{
    mapObj->unk_10 = param1;
}

u32 sub_02062920 (const MapObject * mapObj)
{
    return mapObj->unk_10;
}

u32 sub_02062924 (const MapObject * mapObj)
{
    u32 v0 = sub_02062920(mapObj);

    if (sub_020677F4(v0) == 1) {
        v0 = sub_02067800(mapObj);
    }

    return v0;
}

void sub_02062944 (MapObject * mapObj, u32 param1)
{
    mapObj->unk_14 = param1;
}

u32 MapObject_GetMoveCode (const MapObject * mapObj)
{
    return mapObj->unk_14;
}

void sub_0206294C (MapObject * mapObj, u32 param1)
{
    mapObj->unk_18 = param1;
}

u32 MapObject_GetEventType (const MapObject * mapObj)
{
    return mapObj->unk_18;
}

void sub_02062954 (MapObject * mapObj, u32 param1)
{
    mapObj->unk_1C = param1;
}

u32 sub_02062958 (const MapObject * mapObj)
{
    return mapObj->unk_1C;
}

void sub_0206295C (MapObject * mapObj, u32 param1)
{
    mapObj->unk_20 = param1;
}

u32 MapObject_GetEventID (const MapObject * mapObj)
{
    return mapObj->unk_20;
}

void sub_02062964 (MapObject * mapObj, int param1)
{
    mapObj->unk_24 = param1;
}

u32 sub_02062968 (const MapObject * mapObj)
{
    return mapObj->unk_24;
}

void sub_0206296C (MapObject * mapObj, int param1)
{
    mapObj->unk_30 = mapObj->unk_28;
    mapObj->unk_28 = param1;
}

void MapObject_SetDir (MapObject * mapObj, int param1)
{
    if (MapObject_CheckStatus(mapObj, (1 << 7)) == 0) {
        mapObj->unk_30 = mapObj->unk_28;
        mapObj->unk_28 = param1;
    }
}

int MapObject_Dir (const MapObject * mapObj)
{
    return mapObj->unk_28;
}

int sub_02062990 (const MapObject * mapObj)
{
    return mapObj->unk_30;
}

void sub_02062994 (MapObject * mapObj, int param1)
{
    mapObj->unk_34 = mapObj->unk_2C;
    mapObj->unk_2C = param1;
}

int MapObject_GetMoveDir (const MapObject * mapObj)
{
    return mapObj->unk_2C;
}

void sub_020629A0 (MapObject * mapObj, int param1)
{
    MapObject_SetDir(mapObj, param1);
    sub_02062994(mapObj, param1);
}

void sub_020629B4 (MapObject * mapObj, int param1, int param2)
{
    switch (param2) {
    case 0:
        mapObj->unk_38 = param1;
        break;
    case 1:
        mapObj->unk_3C = param1;
        break;
    case 2:
        mapObj->unk_40 = param1;
        break;
    default:
        GF_ASSERT(FALSE);
    }
}

int sub_020629D8 (const MapObject * mapObj, int param1)
{
    switch (param1) {
    case 0:
        return mapObj->unk_38;
    case 1:
        return mapObj->unk_3C;
    case 2:
        return mapObj->unk_40;
    }

    GF_ASSERT(FALSE);
    return 0;
}

void sub_020629FC (MapObject * mapObj, int param1)
{
    mapObj->unk_44 = param1;
}

int MapObject_MaxXOffset (const MapObject * mapObj)
{
    return mapObj->unk_44;
}

void sub_02062A04 (MapObject * mapObj, int param1)
{
    mapObj->unk_48 = param1;
}

int MapObject_MaxZOffset (const MapObject * mapObj)
{
    return mapObj->unk_48;
}

void sub_02062A0C (MapObject * mapObj, u32 param1)
{
    mapObj->unk_A0 = param1;
}

u32 sub_02062A14 (const MapObject * mapObj)
{
    return mapObj->unk_A0;
}

void sub_02062A1C (MapObject * mapObj, SysTask * param1)
{
    mapObj->unk_B0 = param1;
}

SysTask * sub_02062A24 (const MapObject * mapObj)
{
    return mapObj->unk_B0;
}

void sub_02062A2C (const MapObject * mapObj)
{
    SysTask_Done(sub_02062A24(mapObj));
}

void MapObject_SetMapObjectManager (MapObject * mapObj, const MapObjectManager * mapObjMan)
{
    mapObj->mapObjMan = mapObjMan;
}

const MapObjectManager * MapObject_MapObjectManager (const MapObject * mapObj)
{
    return mapObj->mapObjMan;
}

static MapObjectManager * sub_02062A48 (const MapObject * mapObj)
{
    return MapObjectMan_Deconst(mapObj->mapObjMan);
}

void * sub_02062A54 (MapObject * mapObj, int param1)
{
    void * v0;

    GF_ASSERT(param1 <= 16);

    v0 = sub_02062A78(mapObj);
    memset(v0, 0, param1);

    return v0;
}

void * sub_02062A78 (MapObject * mapObj)
{
    return mapObj->unk_D8;
}

void * sub_02062A7C (MapObject * mapObj, int param1)
{
    u8 * v0;

    GF_ASSERT(param1 <= 16);

    v0 = sub_02062AA0(mapObj);
    memset(v0, 0, param1);

    return v0;
}

void * sub_02062AA0 (MapObject * mapObj)
{
    return mapObj->unk_E8;
}

void * sub_02062AA4 (MapObject * mapObj, int param1)
{
    u8 * v0;

    GF_ASSERT(param1 <= 16);

    v0 = sub_02062AC8(mapObj);
    memset(v0, 0, param1);

    return v0;
}

void * sub_02062AC8 (MapObject * mapObj)
{
    return mapObj->unk_F8;
}

void * sub_02062ACC (MapObject * mapObj, int param1)
{
    u8 * v0;

    GF_ASSERT(param1 <= 32);

    v0 = sub_02062AF0(mapObj);
    memset(v0, 0, param1);

    return v0;
}

void * sub_02062AF0 (MapObject * mapObj)
{
    return mapObj->unk_108;
}

void sub_02062AF8 (MapObject * mapObj, UnkFuncPtr_020EDF0C param1)
{
    mapObj->unk_B8 = param1;
}

void sub_02062B00 (MapObject * mapObj)
{
    mapObj->unk_B8(mapObj);
}

void sub_02062B0C (MapObject * mapObj, UnkFuncPtr_020EDF0C_1 param1)
{
    mapObj->unk_BC = param1;
}

void sub_02062B14 (MapObject * mapObj)
{
    mapObj->unk_BC(mapObj);
}

void sub_02062B20 (MapObject * mapObj, UnkFuncPtr_020EDF0C_2 param1)
{
    mapObj->unk_C0 = param1;
}

void sub_02062B28 (MapObject * mapObj)
{
    mapObj->unk_C0(mapObj);
}

void sub_02062B34 (MapObject * mapObj)
{
    const UnkStruct_020EDF0C * v0 = sub_0206320C(MapObject_GetMoveCode(mapObj));
    v0->unk_10(mapObj);
}

void sub_02062B4C (MapObject * mapObj, UnkFuncPtr_ov5_021FB0F0 param1)
{
    mapObj->unk_C4 = param1;
}

void sub_02062B54 (MapObject * mapObj)
{
    mapObj->unk_C4(mapObj);
}

void sub_02062B60 (MapObject * mapObj, UnkFuncPtr_ov5_021FB0F0_1 param1)
{
    mapObj->unk_C8 = param1;
}

void sub_02062B68 (MapObject * mapObj)
{
    mapObj->unk_C8(mapObj);
}

void sub_02062B74 (MapObject * mapObj, UnkFuncPtr_ov5_021FB0F0_2 param1)
{
    mapObj->unk_CC = param1;
}

void sub_02062B7C (MapObject * mapObj)
{
    mapObj->unk_CC(mapObj);
}

void sub_02062B88 (MapObject * mapObj, UnkFuncPtr_ov5_021FB0F0_3 param1)
{
    mapObj->unk_D0 = param1;
}

void sub_02062B90 (MapObject * mapObj)
{
    mapObj->unk_D0(mapObj);
}

void sub_02062B9C (MapObject * mapObj, UnkFuncPtr_ov5_021FB0F0_4 param1)
{
    mapObj->unk_D4 = param1;
}

void sub_02062BA4 (MapObject * mapObj)
{
    mapObj->unk_D4(mapObj);
}

void MapObject_SetAnimationCode (MapObject * mapObj, int param1)
{
    mapObj->animationCode = param1;
}

int MapObject_AnimationCode (const MapObject * mapObj)
{
    return mapObj->animationCode;
}

void sub_02062BC0 (MapObject * mapObj, int param1)
{
    mapObj->unk_A8 = param1;
}

void sub_02062BC8 (MapObject * mapObj)
{
    mapObj->unk_A8++;
}

int sub_02062BD8 (const MapObject * mapObj)
{
    return mapObj->unk_A8;
}

void sub_02062BE0 (MapObject * mapObj, u32 param1)
{
    mapObj->unk_AC = param1;
}

u32 sub_02062BE8 (const MapObject * mapObj)
{
    return mapObj->unk_AC;
}

void sub_02062BF0 (MapObject * mapObj, u32 param1)
{
    mapObj->unk_AE = param1;
}

u32 sub_02062BF8 (const MapObject * mapObj)
{
    return mapObj->unk_AE;
}

FieldSystem * MapObject_FieldSystem (const MapObject * mapObj)
{
    MapObjectManager * v0;

    v0 = sub_02062A48(mapObj);
    return MapObjectMan_FieldSystem(v0);
}

int sub_02062C0C (const MapObject * mapObj)
{
    return sub_02062858(MapObject_MapObjectManager(mapObj));
}

int sub_02062C18 (const MapObject * mapObj)
{
    GF_ASSERT(sub_02062E94(mapObj) == 1);
    return sub_02062958(mapObj);
}

void MapObjectMan_StopAllMovement (MapObjectManager * mapObjMan)
{
    sub_02062838(mapObjMan, (1 << 1) | (1 << 2));
}

void sub_02062C3C (MapObjectManager * mapObjMan)
{
    sub_02062840(mapObjMan, (1 << 1) | (1 << 2));
}

void MapObjectMan_PauseAllMovement (MapObjectManager * mapObjMan)
{
    int v0 = MapObjectMan_GetMaxObjects(mapObjMan);
    MapObject * v1 = sub_02062878(mapObjMan);

    do {
        if (sub_02062CF8(v1)) {
            sub_02062DD0(v1);
        }

        v1++;
        v0--;
    } while (v0);
}

void MapObjectMan_UnpauseAllMovement (MapObjectManager * mapObjMan)
{
    int v0 = MapObjectMan_GetMaxObjects(mapObjMan);
    MapObject * v1 = sub_02062878(mapObjMan);

    do {
        if (sub_02062CF8(v1)) {
            sub_02062DDC(v1);
        }

        v1++;
        v0--;
    } while (v0);
}

int MapObjectMan_IsDrawInitialized (const MapObjectManager * mapObjMan)
{
    if (sub_0206284C(mapObjMan, (1 << 0))) {
        return 1;
    }

    return 0;
}

u32 sub_02062CBC (const MapObject * mapObj, u32 param1)
{
    const MapObjectManager * v0 = MapObject_MapObjectManager(mapObj);

    return sub_0206284C(v0, param1);
}

void sub_02062CCC (MapObjectManager * mapObjMan, int param1)
{
    if (param1 == 0) {
        sub_02062838(mapObjMan, (1 << 3));
    } else {
        sub_02062840(mapObjMan, (1 << 3));
    }
}

int sub_02062CE4 (const MapObjectManager * mapObjMan)
{
    if (sub_0206284C(mapObjMan, (1 << 3))) {
        return 0;
    }

    return 1;
}

int sub_02062CF8 (const MapObject * mapObj)
{
    return sub_020628D8(mapObj, (1 << 0));
}

void sub_02062D04 (MapObject * mapObj)
{
    MapObject_SetStatusFlagOn(mapObj, (1 << 1));
}

void sub_02062D10 (MapObject * mapObj)
{
    MapObject_SetStatusFlagOff(mapObj, (1 << 1));
}

int MapObject_IsMoving(const MapObject *mapObj)
{
    return sub_020628D8(mapObj, (1 << 1));
}

void sub_02062D28 (MapObject * mapObj)
{
    MapObject_SetStatusFlagOn(mapObj, (1 << 2));
}

void sub_02062D34 (MapObject * mapObj)
{
    MapObject_SetStatusFlagOff(mapObj, (1 << 3));
}

void sub_02062D40 (MapObject * mapObj)
{
    MapObject_SetStatusFlagOn(mapObj, (1 << 14));
}

int sub_02062D4C (const MapObject * mapObj)
{
    return sub_020628D8(mapObj, (1 << 14));
}

int sub_02062D58 (const MapObject * mapObj)
{
    return sub_020628D8(mapObj, (1 << 9));
}

void MapObject_SetHidden (MapObject * mapObj, int param1)
{
    if (param1 == 1) {
        MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_HIDE);
    } else {
        MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_HIDE);
    }
}

void sub_02062D80 (MapObject * mapObj, int param1)
{
    if (param1 == 1) {
        MapObject_SetStatusFlagOff(mapObj, (1 << 18));
    } else {
        MapObject_SetStatusFlagOn(mapObj, (1 << 18));
    }
}

int sub_02062D9C (MapObject * mapObj)
{
    if (sub_020628D8(mapObj, (1 << 19)) == 1) {
        return 0;
    }

    return 1;
}

void sub_02062DB4 (MapObject * mapObj, int param1)
{
    if (param1 == 1) {
        MapObject_SetStatusFlagOn(mapObj, (1 << 19));
    } else {
        MapObject_SetStatusFlagOff(mapObj, (1 << 19));
    }
}

void sub_02062DD0 (MapObject * mapObj)
{
    MapObject_SetStatusFlagOn(mapObj, (1 << 6));
}

void sub_02062DDC (MapObject * mapObj)
{
    MapObject_SetStatusFlagOff(mapObj, (1 << 6));
}

int MapObject_IsMovementPaused (const MapObject * mapObj)
{
    if (sub_020628D8(mapObj, (1 << 6)) == 1) {
        return 1;
    }

    return 0;
}

int sub_02062DFC (const MapObject * mapObj)
{
    const MapObjectManager * v0;

    v0 = MapObject_MapObjectManager(mapObj);

    if (MapObjectMan_IsDrawInitialized(v0) == 0) {
        return 0;
    }

    if (MapObject_CheckStatus(mapObj, (1 << 14)) == 0) {
        return 0;
    }

    return 1;
}

void sub_02062E28 (MapObject * mapObj, int param1)
{
    if (param1 == 1) {
        MapObject_SetStatusFlagOn(mapObj, (1 << 23));
    } else {
        MapObject_SetStatusFlagOff(mapObj, (1 << 23));
    }
}

int sub_02062E44 (const MapObject * mapObj)
{
    if (MapObject_CheckStatus(mapObj, (1 << 23))) {
        return 1;
    }

    return 0;
}

void sub_02062E5C (MapObject * mapObj, int param1)
{
    if (param1 == 1) {
        MapObject_SetStatusFlagOn(mapObj, (1 << 10));
    } else {
        MapObject_SetStatusFlagOff(mapObj, (1 << 10));
    }
}

void sub_02062E78 (MapObject * mapObj, int param1)
{
    if (param1 == 1) {
        MapObject_SetStatusFlagOn(mapObj, (1 << 25));
    } else {
        MapObject_SetStatusFlagOff(mapObj, (1 << 25));
    }
}

int sub_02062E94 (const MapObject * mapObj)
{
    if (MapObject_CheckStatus(mapObj, (1 << 25))) {
        return 1;
    }

    return 0;
}

void sub_02062EAC (MapObject * mapObj, int param1)
{
    if (param1 == 1) {
        MapObject_SetStatusFlagOn(mapObj, (1 << 26));
    } else {
        MapObject_SetStatusFlagOff(mapObj, (1 << 26));
    }
}

int sub_02062EC8 (const MapObject * mapObj)
{
    if (MapObject_CheckStatus(mapObj, (1 << 26))) {
        return 1;
    }

    return 0;
}

void sub_02062EE0 (MapObject * mapObj, int param1)
{
    if (param1 == 1) {
        MapObject_SetStatusFlagOn(mapObj, (1 << 27));
    } else {
        MapObject_SetStatusFlagOff(mapObj, (1 << 27));
    }
}

int sub_02062EFC (const MapObject * mapObj)
{
    if (MapObject_CheckStatus(mapObj, (1 << 27))) {
        return 1;
    }

    return 0;
}

void sub_02062F14 (MapObject * mapObj, int param1)
{
    if (param1 == 1) {
        MapObject_SetStatusFlagOn(mapObj, (1 << 28));
    } else {
        MapObject_SetStatusFlagOff(mapObj, (1 << 28));
    }
}

int sub_02062F30 (const MapObject * mapObj)
{
    if (MapObject_CheckStatus(mapObj, (1 << 28))) {
        return 1;
    }

    return 0;
}

void sub_02062F48 (MapObject * mapObj, int param1)
{
    if (param1 == 1) {
        MapObject_SetStatusFlagOn(mapObj, (1 << 24));
    } else {
        MapObject_SetStatusFlagOff(mapObj, (1 << 24));
    }
}

int sub_02062F64 (const MapObject * mapObj)
{
    if (MapObject_CheckStatus(mapObj, (1 << 24))) {
        return 1;
    }

    return 0;
}

int sub_02062F7C (const MapObject * mapObj)
{
    if (MapObject_CheckStatus(mapObj, (1 << 4))) {
        return 1;
    }

    return 0;
}

void sub_02062F90 (MapObject * mapObj, int param1)
{
    if (param1 == 1) {
        MapObject_SetStatusFlagOn(mapObj, (1 << 29));
    } else {
        MapObject_SetStatusFlagOff(mapObj, (1 << 29));
    }
}

int sub_02062FAC (const MapObject * mapObj)
{
    if (MapObject_CheckStatus(mapObj, (1 << 29))) {
        return 1;
    }

    return 0;
}

void sub_02062FC4 (MapObject * mapObj, int param1)
{
    if (param1 == 1) {
        sub_020628F0(mapObj, (1 << 2));
    } else {
        sub_020628F8(mapObj, (1 << 2));
    }
}

int sub_02062FDC (const MapObject * mapObj)
{
    if (sub_02062904(mapObj, (1 << 2))) {
        return 1;
    }

    return 0;
}

int MapObject_XInitial (const MapObject * mapObj)
{
    return mapObj->xInit;
}

void MapObject_SetXInitial (MapObject * mapObj, int x)
{
    mapObj->xInit = x;
}

int MapObject_YInitial (const MapObject * mapObj)
{
    return mapObj->yInit;
}

void MapObject_SetYInitial (MapObject * mapObj, int y)
{
    mapObj->yInit = y;
}

int MapObject_ZInitial (const MapObject * mapObj)
{
    return mapObj->zInit;
}

void MapObject_SetZInitial (MapObject * mapObj, int z)
{
    mapObj->zInit = z;
}

int MapObject_XPosPrev (const MapObject * mapObj)
{
    return mapObj->xPrev;
}

void MapObject_SetXPosPrev (MapObject * mapObj, int x)
{
    mapObj->xPrev = x;
}

int MapObject_YPosPrev (const MapObject * mapObj)
{
    return mapObj->yPrev;
}

void MapObject_SetYPosPrev (MapObject * mapObj, int y)
{
    mapObj->yPrev = y;
}

int MapObject_ZPosPrev (const MapObject * mapObj)
{
    return mapObj->zPrev;
}

void MapObject_SetZPosPrev (MapObject * mapObj, int z)
{
    mapObj->zPrev = z;
}

int MapObject_GetXPos (const MapObject * mapObj)
{
    return mapObj->x;
}

void MapObject_SetX (MapObject * mapObj, int x)
{
    mapObj->x = x;
}

void MapObject_AddX (MapObject * mapObj, int dx)
{
    mapObj->x += dx;
}

int MapObject_GetYPos (const MapObject * mapObj)
{
    return mapObj->y;
}

void MapObject_SetY (MapObject * mapObj, int y)
{
    mapObj->y = y;
}

void MapObject_AddY (MapObject * mapObj, int dy)
{
    mapObj->y += dy;
}

int MapObject_GetZPos (const MapObject * mapObj)
{
    return mapObj->z;
}

void MapObject_SetZ (MapObject * mapObj, int z)
{
    mapObj->z = z;
}

void MapObject_AddZ (MapObject * mapObj, int dz)
{
    mapObj->z += dz;
}

void MapObject_PosVectorOut (const MapObject * mapObj, VecFx32 * vec)
{
    *vec = mapObj->posVec;
}

void MapObject_SetPosVec (MapObject * mapObj, const VecFx32 * vec)
{
    mapObj->posVec = *vec;
}

const VecFx32 * MapObject_PosVector (const MapObject * mapObj)
{
    return &mapObj->posVec;
}

fx32 sub_02063074 (const MapObject * mapObj)
{
    return mapObj->posVec.y;
}

void sub_02063078 (const MapObject * mapObj, VecFx32 * vec)
{
    *vec = mapObj->unk_7C;
}

void sub_02063088 (MapObject * mapObj, const VecFx32 * vec)
{
    mapObj->unk_7C = *vec;
}

VecFx32 * sub_02063098 (MapObject * mapObj)
{
    return &mapObj->unk_7C;
}

void sub_0206309C (const MapObject * mapObj, VecFx32 * vec)
{
    *vec = mapObj->unk_88;
}

void sub_020630AC (MapObject * mapObj, const VecFx32 * vec)
{
    mapObj->unk_88 = *vec;
}

void sub_020630BC (const MapObject * mapObj, VecFx32 * vec)
{
    *vec = mapObj->unk_94;
}

void sub_020630CC (MapObject * mapObj, const VecFx32 * vec)
{
    mapObj->unk_94 = *vec;
}

int sub_020630DC (const MapObject * mapObj)
{
    fx32 v0 = sub_02063074(mapObj);
    int v1 = (((v0) >> 3) / FX32_ONE);

    return v1;
}

void sub_020630F0 (MapObjectHeader * mapObjHeader, int param1)
{
    mapObjHeader->unk_00 = param1;
}

int sub_020630F4 (const MapObjectHeader * mapObjHeader)
{
    return mapObjHeader->unk_00;
}

void sub_020630F8 (MapObjectHeader * mapObjHeader, int param1)
{
    mapObjHeader->unk_02 = param1;
}

int sub_020630FC (const MapObjectHeader * mapObjHeader)
{
    return mapObjHeader->unk_02;
}

void sub_02063100 (MapObjectHeader * mapObjHeader, int param1)
{
    mapObjHeader->unk_04 = param1;
}

int sub_02063104 (const MapObjectHeader * mapObjHeader)
{
    return mapObjHeader->unk_04;
}

void sub_02063108 (MapObjectHeader * mapObjHeader, int param1)
{
    mapObjHeader->unk_06 = param1;
}

int sub_0206310C (const MapObjectHeader * mapObjHeader)
{
    return mapObjHeader->unk_06;
}

void sub_02063110 (MapObjectHeader * mapObjHeader, int param1)
{
    mapObjHeader->unk_08 = param1;
}

int sub_02063114 (const MapObjectHeader * mapObjHeader)
{
    return mapObjHeader->unk_08;
}

void sub_02063118 (MapObjectHeader * mapObjHeader, int param1)
{
    mapObjHeader->unk_0A = param1;
}

int sub_0206311C (const MapObjectHeader * mapObjHeader)
{
    return mapObjHeader->unk_0A;
}

void sub_02063120 (MapObjectHeader * mapObjHeader, int param1)
{
    mapObjHeader->unk_0C = param1;
}

int sub_02063124 (const MapObjectHeader * mapObjHeader)
{
    return mapObjHeader->unk_0C;
}

void sub_0206312C (MapObjectHeader * mapObjHeader, int param1, int param2)
{
    switch (param2) {
    case 0:
        mapObjHeader->unk_0E = param1;
        break;
    case 1:
        mapObjHeader->unk_10 = param1;
        break;
    case 2:
        mapObjHeader->unk_12 = param1;
        break;
    default: GF_ASSERT(FALSE);
    }
}

int sub_02063150 (const MapObjectHeader * mapObjHeader, int param1)
{
    switch (param1) {
    case 0:
        return mapObjHeader->unk_0E;
    case 1:
        return mapObjHeader->unk_10;
    case 2:
        return mapObjHeader->unk_12;
    }

    GF_ASSERT(FALSE);
    return 0;
}

void sub_02063174 (MapObjectHeader * mapObjHeader, int param1)
{
    mapObjHeader->unk_14 = param1;
}

int sub_02063178 (const MapObjectHeader * mapObjHeader)
{
    return mapObjHeader->unk_14;
}

void sub_02063180 (MapObjectHeader * mapObjHeader, int param1)
{
    mapObjHeader->unk_18 = param1;
}

int sub_02063184 (const MapObjectHeader * mapObjHeader)
{
    return mapObjHeader->unk_18;
}

void MapObjectHeader_SetXPos (MapObjectHeader * mapObjHeader, int param1)
{
    mapObjHeader->unk_1A = param1;
}

int sub_02063190 (const MapObjectHeader * mapObjHeader)
{
    return mapObjHeader->unk_1A;
}

void sub_02063194 (MapObjectHeader * mapObjHeader, int param1)
{
    mapObjHeader->unk_1E = param1;
}

int sub_02063198 (const MapObjectHeader * mapObjHeader)
{
    return mapObjHeader->unk_1E;
}

void MapObjectHeader_SetZPos (MapObjectHeader * mapObjHeader, int param1)
{
    mapObjHeader->unk_1C = param1;
}

int sub_020631A0 (const MapObjectHeader * mapObjHeader)
{
    return mapObjHeader->unk_1C;
}

static const MapObjectHeader * sub_020631A4 (int param0, int param1, const MapObjectHeader * param2)
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

static int sub_020631D8 (const MapObjectHeader * mapObjHeader)
{
    u16 v0 = (u16)sub_0206311C(mapObjHeader);

    if (v0 == 0xffff) {
        return 1;
    }

    return 0;
}

static int sub_020631F4 (const MapObjectHeader * mapObjHeader)
{
    GF_ASSERT(sub_020631D8(mapObjHeader) == 1);
    return sub_02063114(mapObjHeader);
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

    v0 = MapObjectMan_GetMaxObjects(param0);
    v1 = sub_02062878(param0);

    do {
        if (MapObject_CheckStatus(v1, (1 << 0))) {
            if (param3) {
                if ((MapObject_XPosPrev(v1) == param1) && (MapObject_ZPosPrev(v1) == param2)) {
                    return v1;
                }
            }

            if ((MapObject_GetXPos(v1) == param1) && (MapObject_GetZPos(v1) == param2)) {
                return v1;
            }
        }

        v1++;
        v0--;
    } while (v0);

    return NULL;
}

void sub_020632D4 (MapObject * mapObj, const VecFx32 * param1, int param2)
{
    int v0, v1, v2;

    v0 = (((param1->x) >> 4) / FX32_ONE);
    MapObject_SetX(mapObj, v0);

    v1 = (((param1->y) >> 3) / FX32_ONE);
    MapObject_SetY(mapObj, v1);

    v2 = (((param1->z) >> 4) / FX32_ONE);
    MapObject_SetZ(mapObj, v2);

    MapObject_SetPosVec(mapObj, param1);
    sub_02064208(mapObj);

    sub_0206296C(mapObj, param2);

    sub_020656DC(mapObj);
    MapObject_SetStatusFlagOn(mapObj, (1 << 2));
    MapObject_SetStatusFlagOff(mapObj, (1 << 1) | (1 << 3));
}

void MapObject_SetPosDir (MapObject * mapObj, int param1, int param2, int param3, int param4)
{
    VecFx32 v0;

    v0.x = (((param1) << 4) * FX32_ONE) + (((16 * FX32_ONE) >> 1));
    MapObject_SetX(mapObj, param1);

    v0.y = (((param2) << 3) * FX32_ONE) + 0;
    MapObject_SetY(mapObj, param2);

    v0.z = (((param3) << 4) * FX32_ONE) + (((16 * FX32_ONE) >> 1));
    MapObject_SetZ(mapObj, param3);

    MapObject_SetPosVec(mapObj, &v0);
    sub_02064208(mapObj);

    sub_0206296C(mapObj, param4);

    MapObject_SetStatusFlagOn(mapObj, (1 << 2));
    MapObject_SetStatusFlagOff(mapObj, (1 << 1) | (1 << 3));

    sub_020656DC(mapObj);
}

void sub_020633A8 (MapObject * mapObj, u32 param1)
{
    sub_02062B28(mapObj);
    sub_02062944(mapObj, param1);
    sub_0206239C(mapObj);
    MapObject_InitMove(mapObj);
}

void sub_020633C8 (MapObject * mapObj, int param1)
{
    MapObject_SetId(mapObj, param1);

    sub_02062D28(mapObj);
    sub_02062618(mapObj);
}

void sub_020633E0 (MapObject * mapObj)
{
    return;
}

void sub_020633E4 (MapObject * mapObj)
{
    return;
}

void sub_020633E8 (MapObject * mapObj)
{
    return;
}

void sub_020633EC (MapObject * mapObj)
{
    return;
}

void sub_020633F0 (MapObject * mapObj)
{
    return;
}

void sub_020633F4 (MapObject * mapObj)
{
    return;
}

void sub_020633F8 (MapObject * mapObj)
{
    return;
}

void sub_020633FC (MapObject * mapObj)
{
    return;
}
