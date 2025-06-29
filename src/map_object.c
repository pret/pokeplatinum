#include "map_object.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02061830_sub1_decl.h"
#include "struct_defs/struct_020EDF0C.h"

#include "field/field_system.h"
#include "functypes/funcptr_020EDF0C.h"
#include "functypes/funcptr_020EDF0C_1.h"
#include "functypes/funcptr_020EDF0C_2.h"
#include "overlay005/const_ov5_021FB470.h"
#include "overlay005/const_ov5_021FB97C.h"
#include "overlay005/funcptr_ov5_021FB0F0.h"
#include "overlay005/funcptr_ov5_021FB0F0_1.h"
#include "overlay005/funcptr_ov5_021FB0F0_2.h"
#include "overlay005/funcptr_ov5_021FB0F0_3.h"
#include "overlay005/funcptr_ov5_021FB0F0_4.h"
#include "overlay005/ov5_021ECC20.h"
#include "overlay005/ov5_021ECE40.h"
#include "overlay005/struct_ov5_021ED0A4.h"
#include "overlay005/struct_ov5_021FB0F0.h"
#include "overlay005/struct_ov5_021FB97C.h"

#include "heap.h"
#include "map_header_data.h"
#include "map_object_move.h"
#include "narc.h"
#include "script_manager.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_020655F4.h"
#include "unk_020677F4.h"
#include "unk_020EDBAC.h"

typedef struct MapObjectMan {
    u32 status;
    int maxObjects;
    int objectCnt;
    int unk_0C;
    int unk_10;
    NARC *narc;
    UnkStruct_ov5_021ED0A4 unk_18;
    UnkStruct_02061830_sub1 *unk_120;
    MapObject *mapObj;
    FieldSystem *fieldSystem;
} MapObjectManager;

typedef struct MapObject {
    u32 status;
    u32 unk_04;
    u32 localID;
    u32 unk_0C;
    u32 graphicsID;
    u32 movementType;
    u32 trainerType;
    u32 flag;
    u32 script;
    int initialDir;
    int facingDir;
    int movingDir;
    int prevFacingDir;
    int prevMovingDir;
    int data[3];
    int movementRangeX;
    int movementRangeZ;
    int xInitial;
    int yInitial;
    int zInitial;
    int xPrev;
    int yPrev;
    int zPrev;
    int x;
    int y;
    int z;
    VecFx32 pos;
    VecFx32 unk_7C;
    VecFx32 unk_88;
    VecFx32 unk_94;
    u32 unk_A0;
    enum MovementAction movementAction;
    int movementStep;
    u16 currTileBehavior;
    u16 prevTileBehavior;
    SysTask *task;
    const MapObjectManager *mapObjMan;
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
    u8 movementData[16];
    u8 unk_108[32];
} MapObject;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    const MapObjectManager *mapObjMan;
    ObjectEvent *objectEvent;
} UnkStruct_020620C4;

static MapObjectManager *MapObjectMan_Alloc(int param0);
static void MapObject_Save(FieldSystem *fieldSystem, MapObject *mapObj, MapObjectSave *mapObjSave);
static void MapObject_LoadSave(MapObject *mapObj, MapObjectSave *mapObjSave);
static void sub_02061FA8(const MapObjectManager *mapObjMan, MapObject *mapObj);
static void sub_02061FF0(MapObject *mapObj);
static void sub_02062010(MapObject *mapObj);
static void sub_020620C4(UnkStruct_020620C4 *param0);
static MapObject *sub_02062120(const MapObjectManager *mapObjMan);
static MapObject *sub_02062154(const MapObjectManager *mapObjMan, int param1, int param2);
static void MapObjectMan_AddMoveTask(const MapObjectManager *mapObjMan, MapObject *mapObj);
static void sub_020621E8(MapObject *mapObj, const ObjectEvent *objectEvent, FieldSystem *fieldSystem);
static void sub_020622B8(MapObject *mapObj, const ObjectEvent *objectEvent);
static void sub_0206234C(MapObject *mapObj, const MapObjectManager *mapObjMan);
static void sub_0206239C(MapObject *mapObj);
static void sub_020623D4(MapObject *mapObj);
static void sub_0206243C(MapObject *mapObj);
static int sub_0206244C(const MapObject *mapObj, int param1, int objEventCount, const ObjectEvent *objectEvent);
static MapObject *sub_020624CC(const MapObjectManager *mapObjMan, int localID, int flag);
static void sub_02062604(MapObject *mapObj);
static void sub_02062618(MapObject *mapObj);
static void sub_02062628(MapObject *mapObj);
static int sub_0206262C(FieldSystem *fieldSystem, int param1);
static void sub_02062648(MapObject *mapObj);
static void sub_02062660(MapObject *mapObj);
static void sub_02062670(MapObject *mapObj);
static void sub_020626D0(MapObject *mapObj, const ObjectEvent *objectEvent, int mapID);
static void sub_02062714(MapObject *mapObj, int mapID, const ObjectEvent *objectEvent);
static void MapObjectTask_Move(SysTask *task, void *param1);
static void MapObjectTask_Draw(MapObject *mapObj);
static MapObjectManager *MapObjectMan_Deconst(const MapObjectManager *mapObjMan);
static void MapObjectMan_IncObjectCount(MapObjectManager *mapObjMan);
static void MapObjectMan_DecObjectCount(MapObjectManager *mapObjMan);
static MapObject *MapObjectMan_GetMapObjectStatic(const MapObjectManager *mapObjMan);
static MapObjectManager *sub_02062A48(const MapObject *mapObj);
static const ObjectEvent *sub_020631A4(int param0, int param1, const ObjectEvent *objectEvent);
static int ObjectEvent_HasNoScript(const ObjectEvent *objectEvent);
static int ObjectEvent_GetFlagNoScript(const ObjectEvent *objectEvent);

static const UnkStruct_020EDF0C *sub_0206320C(u32 param0);
static UnkFuncPtr_020EDF0C sub_02063224(const UnkStruct_020EDF0C *param0);
static UnkFuncPtr_020EDF0C_1 sub_02063228(const UnkStruct_020EDF0C *param0);
static UnkFuncPtr_020EDF0C_2 sub_0206322C(const UnkStruct_020EDF0C *param0);
static UnkFuncPtr_ov5_021FB0F0_3 sub_0206323C(const UnkStruct_ov5_021FB0F0 *param0);
static UnkFuncPtr_ov5_021FB0F0_4 sub_02063240(const UnkStruct_ov5_021FB0F0 *param0);

static UnkFuncPtr_ov5_021FB0F0 sub_02063230(const UnkStruct_ov5_021FB0F0 *param0);
static UnkFuncPtr_ov5_021FB0F0_1 sub_02063234(const UnkStruct_ov5_021FB0F0 *param0);
static UnkFuncPtr_ov5_021FB0F0_2 sub_02063238(const UnkStruct_ov5_021FB0F0 *param0);
static const UnkStruct_ov5_021FB0F0 *sub_02063244(u32 param0);

MapObjectManager *MapObjectMan_New(FieldSystem *fieldSystem, int maxObjs, int param2)
{
    MapObjectManager *mapObjMan = MapObjectMan_Alloc(maxObjs);
    MapObjectMan_SetFieldSystem(mapObjMan, fieldSystem);
    MapObjectMan_SetMaxObjects(mapObjMan, maxObjs);
    sub_02062854(mapObjMan, param2);

    return mapObjMan;
}

void MapObjectMan_Delete(MapObjectManager *mapObjMan)
{
    Heap_FreeExplicit(HEAP_ID_FIELDMAP, MapObjectMan_GetMapObject(mapObjMan));
    Heap_FreeExplicit(HEAP_ID_FIELDMAP, mapObjMan);
}

void sub_0206184C(MapObjectManager *mapObjMan, int mapID, int param2, int objEventCount, const ObjectEvent *objectEvent)
{
    int v0, maxObjects = MapObjectMan_GetMaxObjects(mapObjMan);
    MapObject *mapObj = MapObjectMan_GetMapObject(mapObjMan);

    while (maxObjects) {
        if (sub_02062CF8(mapObj) == TRUE) {
            v0 = sub_0206244C(mapObj, param2, objEventCount, objectEvent);

            switch (v0) {
            case 0:
                if (sub_02062918(mapObj) != param2 && !MapObject_CheckStatusFlag(mapObj, MAP_OBJ_STATUS_10)) {
                    MapObject_Delete(mapObj);
                }
                break;
            case 2:
                break;
            case 1:
                break;
            }
        }

        mapObj++;
        maxObjects--;
    }

    ov5_021EDA38(mapObjMan, sub_0206285C(mapObjMan));
}

static MapObjectManager *MapObjectMan_Alloc(int maxObjs)
{
    int size;
    MapObject *mapObj;
    MapObjectManager *mapObjMan = Heap_AllocFromHeap(HEAP_ID_FIELDMAP, sizeof(MapObjectManager));

    GF_ASSERT(mapObjMan != NULL);
    memset(mapObjMan, 0, sizeof(MapObjectManager));

    size = sizeof(MapObject) * maxObjs;
    mapObj = Heap_AllocFromHeap(HEAP_ID_FIELDMAP, size);

    GF_ASSERT(mapObj != NULL);
    memset(mapObj, 0, size);

    MapObjectMan_SetMapObject(mapObjMan, mapObj);

    return mapObjMan;
}

MapObject *MapObjectMan_AddMapObjectFromHeader(const MapObjectManager *mapObjMan, const ObjectEvent *objectEvent, int mapID)
{
    MapObject *mapObj;
    ObjectEvent v1 = *objectEvent;
    ObjectEvent *v2 = &v1;

    int localID = ObjectEvent_GetLocalID(v2);

    if (ObjectEvent_HasNoScript(v2) == FALSE) {
        mapObj = sub_02062154(mapObjMan, localID, mapID);

        if (mapObj != NULL) {
            sub_020626D0(mapObj, v2, mapID);

            return mapObj;
        }
    } else {
        mapObj = sub_020624CC(mapObjMan, localID, ObjectEvent_GetFlagNoScript(v2));

        if (mapObj != NULL) {
            sub_02062714(mapObj, mapID, v2);
            return mapObj;
        }
    }

    mapObj = sub_02062120(mapObjMan);

    if (mapObj == NULL) {
        return mapObj;
    }

    sub_020621E8(mapObj, v2, MapObjectMan_FieldSystem(mapObjMan));
    sub_0206234C(mapObj, mapObjMan);
    sub_02062914(mapObj, mapID);
    sub_02062660(mapObj);
    sub_02062670(mapObj);
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_START_MOVEMENT);
    MapObjectMan_AddMoveTask(mapObjMan, mapObj);
    MapObjectMan_IncObjectCount(MapObjectMan_Deconst(mapObjMan));

    return mapObj;
}

MapObject *MapObjectMan_AddMapObject(const MapObjectManager *mapObjMan, int x, int z, int initialDir, int graphicsID, int movementType, int mapID)
{
    ObjectEvent objectEvent;
    MapObject *mapObj;

    ObjectEvent_SetLocalID(&objectEvent, 0);
    ObjectEvent_SetGraphicsID(&objectEvent, graphicsID);
    ObjectEvent_SetMovementType(&objectEvent, movementType);
    ObjectEvent_SetTrainerType(&objectEvent, 0);
    ObjectEvent_SetFlag(&objectEvent, 0);
    ObjectEvent_SetScript(&objectEvent, 0);
    ObjectEvent_SetInitialDir(&objectEvent, initialDir);
    ObjectEvent_SetDataAt(&objectEvent, 0, 0);
    ObjectEvent_SetDataAt(&objectEvent, 0, 1);
    ObjectEvent_SetDataAt(&objectEvent, 0, 2);
    ObjectEvent_SetMovementRangeX(&objectEvent, 0);
    ObjectEvent_SetMovementRangeZ(&objectEvent, 0);
    ObjectEvent_SetX(&objectEvent, x);
    ObjectEvent_SetZ(&objectEvent, z);
    ObjectEvent_SetY(&objectEvent, 0);

    mapObj = MapObjectMan_AddMapObjectFromHeader(mapObjMan, &objectEvent, mapID);

    return mapObj;
}

MapObject *MapObjectMan_AddMapObjectFromLocalID(const MapObjectManager *mapObjMan, int localID, int objEventCount, int mapID, const ObjectEvent *objectEvent)
{
    MapObject *mapObj = NULL;
    const ObjectEvent *v1 = sub_020631A4(localID, objEventCount, objectEvent);

    if (v1 != NULL) {
        int flag = ObjectEvent_GetFlag(v1);
        FieldSystem *fieldSystem = MapObjectMan_FieldSystem(mapObjMan);

        if (!FieldSystem_CheckFlag(fieldSystem, flag)) {
            mapObj = MapObjectMan_AddMapObjectFromHeader(mapObjMan, v1, mapID);
        }
    }

    return mapObj;
}

void sub_02061AB4(MapObject *mapObj, int graphicsID)
{
    MapObject_SetGraphicsID(mapObj, graphicsID);
    sub_02062604(mapObj);
    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_14);
    sub_02062670(mapObj);
}

void sub_02061AD4(MapObject *mapObj, int param1)
{
    if (sub_02062DFC(mapObj) == TRUE) {
        sub_02061B48(mapObj);
    }

    sub_02061AB4(mapObj, param1);
}

void MapObject_Delete(MapObject *mapObj)
{
    const MapObjectManager *mapObjMan = MapObject_MapObjectManager(mapObj);

    if (MapObjectMan_IsDrawInitialized(mapObjMan) == TRUE) {
        sub_02062B7C(mapObj);
    }

    sub_02062B28(mapObj);
    sub_02062A2C(mapObj);
    MapObjectMan_DecObjectCount(sub_02062A48(mapObj));
    sub_0206243C(mapObj);
}

void MapObject_SetFlagAndDeleteObject(MapObject *mapObj)
{
    int flag = MapObject_GetFlag(mapObj);
    FieldSystem_SetFlag(MapObject_FieldSystem(mapObj), flag);
    MapObject_Delete(mapObj);
}

void sub_02061B48(MapObject *mapObj)
{
    const MapObjectManager *mapObjMan = MapObject_MapObjectManager(mapObj);

    if (MapObjectMan_IsDrawInitialized(mapObjMan) == TRUE) {
        if (MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_14)) {
            sub_02062B7C(mapObj);
        }

        MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_14);
    }

    MapObject_SetGraphicsID(mapObj, 0xffff);
    sub_02062B4C(mapObj, sub_020633F0);
    sub_02062B60(mapObj, sub_020633F4);
    sub_02062B74(mapObj, sub_020633F4);
    sub_02062B88(mapObj, sub_020633F8);
    sub_02062B9C(mapObj, sub_020633FC);
}

void MapObjectMan_DeleteAll(MapObjectManager *mapObjMan)
{
    int i = 0;
    int maxObjects = MapObjectMan_GetMaxObjects(mapObjMan);
    MapObject *mapObj = MapObjectMan_GetMapObject(mapObjMan);

    do {
        if (MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_0)) {
            MapObject_Delete(mapObj);
        }

        mapObj++;
        i++;
    } while (i < maxObjects);
}

void sub_02061BF0(MapObjectManager *mapObjMan)
{
    GF_ASSERT(MapObjectMan_IsDrawInitialized(mapObjMan) == TRUE);

    int i = 0;
    int maxObjects = MapObjectMan_GetMaxObjects(mapObjMan);
    MapObject *mapObj = MapObjectMan_GetMapObject(mapObjMan);

    do {
        if (MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_0) && MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_14)) {
            sub_02062B90(mapObj);
            sub_02062628(mapObj);
        }

        mapObj++;
        i++;
    } while (i < maxObjects);
}

void sub_02061C48(MapObjectManager *mapObjMan)
{
    GF_ASSERT(MapObjectMan_IsDrawInitialized(mapObjMan) == TRUE);

    int i = 0;
    int maxObjects = MapObjectMan_GetMaxObjects(mapObjMan);
    MapObject *mapObj = MapObjectMan_GetMapObject(mapObjMan);

    do {
        if (sub_02062CF8(mapObj) == TRUE) {
            if (sub_02062D4C(mapObj) == TRUE) {
                sub_02062BA4(mapObj);
            } else {
                sub_02062670(mapObj);
            }

            sub_02062604(mapObj);
            sub_02064464(mapObj);
        }

        mapObj++;
        i++;
    } while (i < maxObjects);
}

void MapObjectMan_SaveAll(FieldSystem *fieldSystem, const MapObjectManager *mapObjMan, MapObjectSave *mapObjSave, int param3)
{
    int v0 = 0;
    MapObject *mapObj;

    while (sub_020625B0(mapObjMan, &mapObj, &v0, MAP_OBJ_STATUS_0)) {
        MapObject_Save(fieldSystem, mapObj, mapObjSave);
        mapObjSave++;
        param3--;
        GF_ASSERT(param3 > 0);
    }

    if (param3) {
        memset(mapObjSave, 0, param3 * sizeof(MapObjectSave));
    }
}

void MapObjectMan_LoadAllObjects(const MapObjectManager *mapObjMan, MapObjectSave *mapObjSave, int size)
{
    int v0 = 0;
    MapObject *mapObj;

    while (size) {
        if (mapObjSave->status & MAP_OBJ_STATUS_0) {
            mapObj = sub_02062120(mapObjMan);
            GF_ASSERT(mapObj != NULL);

            MapObject_LoadSave(mapObj, mapObjSave);
            sub_02061FA8(mapObjMan, mapObj);
        }

        mapObjSave++;
        size--;
    }
}

static void MapObject_Save(FieldSystem *fieldSystem, MapObject *mapObj, MapObjectSave *mapObjSave)
{
    mapObjSave->status = MapObject_GetStatus(mapObj);
    mapObjSave->unk_04 = sub_020628EC(mapObj);
    mapObjSave->localID = MapObject_GetLocalID(mapObj);
    mapObjSave->unk_10 = sub_02062918(mapObj);
    mapObjSave->graphicsID = MapObject_GetGraphicsID(mapObj);
    mapObjSave->movementType = MapObject_GetMovementType(mapObj);
    mapObjSave->trainerType = MapObject_GetTrainerType(mapObj);
    mapObjSave->flag = MapObject_GetFlag(mapObj);
    mapObjSave->script = MapObject_GetScript(mapObj);
    mapObjSave->initialDir = MapObject_GetInitialDir(mapObj);
    mapObjSave->facingDir = MapObject_GetFacingDir(mapObj);
    mapObjSave->movingDir = MapObject_GetMovingDir(mapObj);
    mapObjSave->unk_1A = MapObject_GetDataAt(mapObj, 0);
    mapObjSave->unk_1C = MapObject_GetDataAt(mapObj, 1);
    mapObjSave->unk_1E = MapObject_GetDataAt(mapObj, 2);
    mapObjSave->movementRangeX = MapObject_GetMovementRangeX(mapObj);
    mapObjSave->movementRangeZ = MapObject_GetMovementRangeZ(mapObj);
    mapObjSave->xInitial = MapObject_GetXInitial(mapObj);
    mapObjSave->yInitial = MapObject_GetYInitial(mapObj);
    mapObjSave->zInitial = MapObject_GetZInitial(mapObj);
    mapObjSave->x = MapObject_GetX(mapObj);
    mapObjSave->y = MapObject_GetY(mapObj);
    mapObjSave->z = MapObject_GetZ(mapObj);

    VecFx32 v0;
    int v1, v2;

    sub_02064450(mapObjSave->x, mapObjSave->z, &v0);
    v0.y = MapObject_GetPosY(mapObj);

    v2 = sub_02062FAC(mapObj);
    v1 = sub_020644D0(fieldSystem, &v0, v2);

    if (v1 == 0) {
        mapObjSave->unk_2C = MapObject_GetPosY(mapObj);
    } else {
        if (MapObject_IsHeightCalculationDisabled(mapObj) == TRUE) {
            v0.y = MapObject_GetPosY(mapObj);
        }

        mapObjSave->unk_2C = v0.y;
    }

    memcpy(mapObjSave->unk_30, sub_02062A78(mapObj), 16);
    memcpy(mapObjSave->unk_40, sub_02062AA0(mapObj), 16);
}

static void MapObject_LoadSave(MapObject *mapObj, MapObjectSave *mapObjSave)
{
    MapObject_SetStatus(mapObj, mapObjSave->status);
    sub_020628E8(mapObj, mapObjSave->unk_04);
    MapObject_SetLocalID(mapObj, mapObjSave->localID);
    sub_02062914(mapObj, mapObjSave->unk_10);
    MapObject_SetGraphicsID(mapObj, mapObjSave->graphicsID);
    MapObject_SetMovementType(mapObj, mapObjSave->movementType);
    MapObject_SetTrainerType(mapObj, mapObjSave->trainerType);
    MapObject_SetFlag(mapObj, mapObjSave->flag);
    MapObject_SetScript(mapObj, mapObjSave->script);
    MapObject_SetInitialDir(mapObj, mapObjSave->initialDir);
    MapObject_Face(mapObj, mapObjSave->facingDir);
    MapObject_Turn(mapObj, mapObjSave->movingDir);
    MapObject_SetDataAt(mapObj, mapObjSave->unk_1A, 0);
    MapObject_SetDataAt(mapObj, mapObjSave->unk_1C, 1);
    MapObject_SetDataAt(mapObj, mapObjSave->unk_1E, 2);
    MapObject_SetMovementRangeX(mapObj, mapObjSave->movementRangeX);
    MapObject_SetMovementRangeZ(mapObj, mapObjSave->movementRangeZ);
    MapObject_SetXInitial(mapObj, mapObjSave->xInitial);
    MapObject_SetYInitial(mapObj, mapObjSave->yInitial);
    MapObject_SetZInitial(mapObj, mapObjSave->zInitial);
    MapObject_SetX(mapObj, mapObjSave->x);
    MapObject_SetY(mapObj, mapObjSave->y);
    MapObject_SetZ(mapObj, mapObjSave->z);

    VecFx32 v0 = { 0, 0, 0 };

    v0.y = mapObjSave->unk_2C;
    MapObject_SetPos(mapObj, &v0);

    memcpy(sub_02062A78(mapObj), mapObjSave->unk_30, 16);
    memcpy(sub_02062AA0(mapObj), mapObjSave->unk_40, 16);
}

static void sub_02061FA8(const MapObjectManager *mapObjMan, MapObject *mapObj)
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

static void sub_02061FF0(MapObject *mapObj)
{
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_0 | MAP_OBJ_STATUS_START_MOVEMENT);
    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_PAUSE_MOVEMENT | MAP_OBJ_STATUS_HIDE | MAP_OBJ_STATUS_14 | MAP_OBJ_STATUS_START_JUMP | MAP_OBJ_STATUS_END_JUMP | MAP_OBJ_STATUS_END_MOVEMENT | MAP_OBJ_STATUS_18 | MAP_OBJ_STATUS_19 | MAP_OBJ_STATUS_21 | MAP_OBJ_STATUS_22 | MAP_OBJ_HEIGHT_CALCULATION_DISABLED);
    sub_02062618(mapObj);
}

static void sub_02062010(MapObject *mapObj)
{
    int v0;
    VecFx32 v1;

    MapObject_GetPosPtr(mapObj, &v1);

    v0 = MapObject_GetX(mapObj);
    v1.x = (((v0) << 4) * FX32_ONE) + ((16 * FX32_ONE) >> 1);

    MapObject_SetXPrev(mapObj, v0);
    v0 = MapObject_GetY(mapObj);
    MapObject_SetYPrev(mapObj, v0);

    v0 = MapObject_GetZ(mapObj);
    v1.z = (((v0) << 4) * FX32_ONE) + ((16 * FX32_ONE) >> 1);

    MapObject_SetZPrev(mapObj, v0);
    MapObject_SetPos(mapObj, &v1);
}

void sub_02062068(const MapObjectManager *mapObjMan, int param1, int param2, const ObjectEvent *objectEvent)
{
    int v0;
    ObjectEvent *v1;
    UnkStruct_020620C4 *v2;

    GF_ASSERT(param2);

    v0 = sizeof(ObjectEvent) * param2;
    v1 = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELDMAP, v0);

    GF_ASSERT(v1 != NULL);
    memcpy(v1, objectEvent, v0);

    v2 = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELDMAP, sizeof(UnkStruct_020620C4));
    GF_ASSERT(v2 != NULL);

    v2->unk_00 = param1;
    v2->unk_04 = param2;
    v2->unk_08 = 0;
    v2->mapObjMan = mapObjMan;
    v2->objectEvent = v1;

    sub_020620C4(v2);
}

static void sub_020620C4(UnkStruct_020620C4 *param0)
{
    MapObject *mapObj;
    FieldSystem *fieldSystem;
    const ObjectEvent *objectEvent;

    fieldSystem = MapObjectMan_FieldSystem(param0->mapObjMan);
    objectEvent = param0->objectEvent;

    do {
        if (ObjectEvent_HasNoScript(objectEvent) == TRUE || FieldSystem_CheckFlag(fieldSystem, objectEvent->flag) == FALSE) {
            mapObj = MapObjectMan_AddMapObjectFromHeader(param0->mapObjMan, objectEvent, param0->unk_00);
            GF_ASSERT(mapObj != NULL);
        }

        objectEvent++;
        param0->unk_08++;
    } while (param0->unk_08 < param0->unk_04);

    Heap_FreeExplicit(HEAP_ID_FIELDMAP, param0->objectEvent);
    Heap_FreeExplicit(HEAP_ID_FIELDMAP, param0);
}

static MapObject *sub_02062120(const MapObjectManager *mapObjMan)
{
    int i = 0;
    int maxObjects = MapObjectMan_GetMaxObjects(mapObjMan);
    MapObject *mapObj = MapObjectMan_GetMapObject(mapObjMan);

    do {
        if (!MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_0)) {
            return mapObj;
        }

        mapObj++;
        i++;
    } while (i < maxObjects);

    return NULL;
}

static MapObject *sub_02062154(const MapObjectManager *mapObjMan, int param1, int param2)
{
    int v0 = 0;
    MapObject *mapObj;

    while (sub_020625B0(mapObjMan, &mapObj, &v0, MAP_OBJ_STATUS_0) == TRUE) {
        if (sub_02062E94(mapObj) == TRUE
            && MapObject_GetLocalID(mapObj) == param1
            && sub_02062C18(mapObj) == param2) {
            return mapObj;
        }
    }

    return NULL;
}

static void MapObjectMan_AddMoveTask(const MapObjectManager *mapObjMan, MapObject *mapObj)
{
    int v0 = sub_02062858(mapObjMan);
    int movementType = MapObject_GetMovementType(mapObj);
    SysTask *task;

    if (movementType == 48 || movementType == 50) {
        v0 += 2;
    }

    task = SysTask_Start(MapObjectTask_Move, mapObj, v0);
    GF_ASSERT(task != NULL);

    sub_02062A1C(mapObj, task);
}

static void sub_020621E8(MapObject *mapObj, const ObjectEvent *objectEvent, FieldSystem *fieldSystem)
{
    MapObject_SetLocalID(mapObj, ObjectEvent_GetLocalID(objectEvent));
    MapObject_SetGraphicsID(mapObj, sub_0206262C(fieldSystem, ObjectEvent_GetGraphicsID(objectEvent)));
    MapObject_SetMovementType(mapObj, ObjectEvent_GetMovementType(objectEvent));
    MapObject_SetTrainerType(mapObj, ObjectEvent_GetTrainerType(objectEvent));
    MapObject_SetFlag(mapObj, ObjectEvent_GetFlag(objectEvent));
    MapObject_SetScript(mapObj, ObjectEvent_GetScript(objectEvent));
    MapObject_SetInitialDir(mapObj, ObjectEvent_GetInitialDir(objectEvent));
    MapObject_SetDataAt(mapObj, ObjectEvent_GetDataAt(objectEvent, 0), 0);
    MapObject_SetDataAt(mapObj, ObjectEvent_GetDataAt(objectEvent, 1), 1);
    MapObject_SetDataAt(mapObj, ObjectEvent_GetDataAt(objectEvent, 2), 2);
    MapObject_SetMovementRangeX(mapObj, ObjectEvent_GetMovementRangeX(objectEvent));
    MapObject_SetMovementRangeZ(mapObj, ObjectEvent_GetMovementRangeZ(objectEvent));
    sub_020622B8(mapObj, objectEvent);
}

static void sub_020622B8(MapObject *mapObj, const ObjectEvent *objectEvent)
{
    int v0 = ObjectEvent_GetX(objectEvent);
    VecFx32 v1;

    v1.x = (((v0) << 4) * FX32_ONE) + ((16 * FX32_ONE) >> 1);

    MapObject_SetXInitial(mapObj, v0);
    MapObject_SetXPrev(mapObj, v0);
    MapObject_SetX(mapObj, v0);

    v0 = ObjectEvent_GetY(objectEvent);
    v1.y = (fx32)v0;
    v0 = ((v0) >> 3) / FX32_ONE;

    MapObject_SetYInitial(mapObj, v0);
    MapObject_SetYPrev(mapObj, v0);
    MapObject_SetY(mapObj, v0);

    v0 = ObjectEvent_GetZ(objectEvent);
    v1.z = (((v0) << 4) * FX32_ONE) + ((16 * FX32_ONE) >> 1);

    MapObject_SetZInitial(mapObj, v0);
    MapObject_SetZPrev(mapObj, v0);
    MapObject_SetZ(mapObj, v0);
    MapObject_SetPos(mapObj, &v1);
}

static void sub_0206234C(MapObject *mapObj, const MapObjectManager *mapObjMan)
{
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_0 | MAP_OBJ_STATUS_12 | MAP_OBJ_STATUS_11);

    if (MapObject_HasNoScript(mapObj) == TRUE) {
        sub_02062E78(mapObj, 1);
    }

    MapObject_SetMapObjectManager(mapObj, mapObjMan);
    MapObject_Face(mapObj, MapObject_GetInitialDir(mapObj));
    MapObject_Turn(mapObj, MapObject_GetInitialDir(mapObj));
    sub_020656DC(mapObj);
}

static void sub_0206239C(MapObject *mapObj)
{
    const UnkStruct_020EDF0C *v0 = sub_0206320C(MapObject_GetMovementType(mapObj));

    sub_02062AF8(mapObj, sub_02063224(v0));
    sub_02062B0C(mapObj, sub_02063228(v0));
    sub_02062B20(mapObj, sub_0206322C(v0));
}

static void sub_020623D4(MapObject *mapObj)
{
    const UnkStruct_ov5_021FB0F0 *v0;
    u32 v1 = MapObject_GetGraphicsID(mapObj);

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

static void sub_0206243C(MapObject *mapObj)
{
    memset(mapObj, 0, sizeof(MapObject));
}

static int sub_0206244C(const MapObject *mapObj, int param1, int objEventCount, const ObjectEvent *objectEvent)
{
    int localID;
    int flag;

    while (objEventCount) {
        localID = ObjectEvent_GetLocalID(objectEvent);

        if (MapObject_GetLocalID(mapObj) == localID) {
            if (ObjectEvent_HasNoScript(objectEvent) == TRUE) {
                flag = ObjectEvent_GetFlagNoScript(objectEvent);

                if (sub_02062E94(mapObj) == TRUE) {
                    if (sub_02062C18(mapObj) == flag) {
                        return 1;
                    }
                } else if (sub_02062918(mapObj) == flag) {
                    return 2;
                }
            } else if (sub_02062E94(mapObj) == TRUE && sub_02062C18(mapObj) == param1) {
                return 2;
            }
        }

        objEventCount--;
        objectEvent++;
    }

    return 0;
}

static MapObject *sub_020624CC(const MapObjectManager *mapObjMan, int localID, int flag)
{
    int v0 = 0;
    MapObject *mapObj;

    while (sub_020625B0(mapObjMan, &mapObj, &v0, MAP_OBJ_STATUS_0) == TRUE) {
        if (MapObject_GetLocalID(mapObj) == localID && sub_02062918(mapObj) == flag) {
            return mapObj;
        }
    }

    return NULL;
}

MapObject *MapObjMan_LocalMapObjByIndex(const MapObjectManager *mapObjMan, int index)
{
    int maxObjects;
    MapObject *mapObj;

    GF_ASSERT(mapObjMan != NULL);

    maxObjects = MapObjectMan_GetMaxObjects(mapObjMan);
    mapObj = MapObjectMan_GetMapObjectStatic(mapObjMan);

    do {
        if (MapObject_CheckStatusFlag(mapObj, MAP_OBJ_STATUS_0) == TRUE && sub_02062E94(mapObj) == FALSE
            && MapObject_GetLocalID(mapObj) == index) {
            return mapObj;
        }

        mapObj++;
        maxObjects--;
    } while (maxObjects > 0);

    return NULL;
}

MapObject *sub_02062570(const MapObjectManager *mapObjMan, int movementType)
{
    int maxObjects = MapObjectMan_GetMaxObjects(mapObjMan);
    MapObject *mapObj = MapObjectMan_GetMapObjectStatic(mapObjMan);

    do {
        if (MapObject_CheckStatusFlag(mapObj, MAP_OBJ_STATUS_0) == TRUE && MapObject_GetMovementType(mapObj) == movementType) {
            return mapObj;
        }

        mapObj++;
        maxObjects--;
    } while (maxObjects > 0);

    return NULL;
}

int sub_020625B0(const MapObjectManager *mapObjMan, MapObject **mapObj, int *param2, u32 status)
{
    int maxObjects = MapObjectMan_GetMaxObjects(mapObjMan);
    MapObject *v1;

    if ((*param2) >= maxObjects) {
        return 0;
    }

    v1 = MapObjectMan_GetMapObjectStatic(mapObjMan);
    v1 = &v1[(*param2)];

    do {
        (*param2)++;

        if (MapObject_CheckStatus(v1, status) == status) {
            *mapObj = v1;
            return TRUE;
        }

        v1++;
    } while ((*param2) < maxObjects);

    return FALSE;
}

static void sub_02062604(MapObject *mapObj)
{
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_START_MOVEMENT);
    sub_02062618(mapObj);
}

static void sub_02062618(MapObject *mapObj)
{
    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_SHOW_SHADOW | MAP_OBJ_STATUS_HIDE_SHADOW | MAP_OBJ_STATUS_26 | MAP_OBJ_STATUS_24);
}

static void sub_02062628(MapObject *mapObj)
{
    (void)0;
}

static int sub_0206262C(FieldSystem *fieldSystem, int graphicsID)
{
    if (graphicsID >= 0x65 && graphicsID <= 0x74) {
        graphicsID -= 0x65;
        graphicsID = sub_0203F164(fieldSystem, graphicsID);
    }

    return graphicsID;
}

static void sub_02062648(MapObject *mapObj)
{
    if (MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_12)) {
        sub_020642F8(mapObj);
    }
}

static void sub_02062660(MapObject *mapObj)
{
    sub_0206239C(mapObj);
    MapObject_InitMove(mapObj);
}

static void sub_02062670(MapObject *mapObj)
{
    const MapObjectManager *mapObjMan = MapObject_MapObjectManager(mapObj);

    if (MapObjectMan_IsDrawInitialized(mapObjMan) == FALSE) {
        return;
    }

    sub_02062648(mapObj);
    sub_02062A0C(mapObj, 0);
    ov5_021EDD78(mapObj, 0);

    if (sub_02062D4C(mapObj) == FALSE) {
        sub_020623D4(mapObj);
        sub_02062B54(mapObj);
        sub_02062D40(mapObj);
    }
}

int MapObject_HasNoScript(const MapObject *mapObj)
{
    u16 script = (u16)MapObject_GetScript(mapObj);

    if (script == 0xffff) {
        return TRUE;
    }

    return FALSE;
}

static void sub_020626D0(MapObject *mapObj, const ObjectEvent *objectEvent, int mapID)
{
    GF_ASSERT(sub_02062E94(mapObj) == TRUE);

    sub_02062E78(mapObj, 0);
    sub_02062914(mapObj, mapID);
    MapObject_SetScript(mapObj, ObjectEvent_GetScript(objectEvent));
    MapObject_SetFlag(mapObj, ObjectEvent_GetFlag(objectEvent));
}

static void sub_02062714(MapObject *mapObj, int mapID, const ObjectEvent *objectEvent)
{
    GF_ASSERT(ObjectEvent_HasNoScript(objectEvent) == TRUE);

    sub_02062E78(mapObj, 1);
    MapObject_SetScript(mapObj, ObjectEvent_GetScript(objectEvent));
    MapObject_SetFlag(mapObj, ObjectEvent_GetFlagNoScript(objectEvent));
    sub_02062914(mapObj, mapID);
}

int sub_02062758(const MapObject *mapObj, int param1)
{
    int v0 = sub_02062C0C(mapObj);
    v0 += param1;

    return v0;
}

int sub_02062764(const MapObject *mapObj, int param1, int param2)
{
    if (!MapObject_CheckStatusFlag(mapObj, MAP_OBJ_STATUS_0)) {
        return FALSE;
    }

    if (MapObject_GetLocalID(mapObj) != param1) {
        return FALSE;
    }

    if (sub_02062918(mapObj) != param2) {
        if (sub_02062E94(mapObj) == FALSE) {
            return FALSE;
        }

        if (sub_02062C18(mapObj) != param2) {
            return FALSE;
        }
    }

    return TRUE;
}

int sub_020627B4(const MapObject *mapObj, int param1, int param2, int param3)
{
    if (!MapObject_CheckStatusFlag(mapObj, MAP_OBJ_STATUS_0)) {
        return 0;
    }

    int v0 = sub_02062924(mapObj);

    if (v0 != param1) {
        return 0;
    }

    return sub_02062764(mapObj, param2, param3);
}

static void MapObjectTask_Move(SysTask *task, void *_mapObject)
{
    MapObject *mapObj = (MapObject *)_mapObject;

    MapObject_Move(mapObj);

    if (sub_02062CF8(mapObj) == FALSE) {
        return;
    }

    MapObjectTask_Draw(mapObj);
}

static void MapObjectTask_Draw(MapObject *mapObj)
{
    const MapObjectManager *mapObjMan = MapObject_MapObjectManager(mapObj);

    if (MapObjectMan_IsDrawInitialized(mapObjMan) == TRUE) {
        MapObject_Draw(mapObj);
    }
}

static MapObjectManager *MapObjectMan_Deconst(const MapObjectManager *mapObjMan)
{
    return (MapObjectManager *)mapObjMan;
}

void MapObjectMan_SetMaxObjects(MapObjectManager *mapObjMan, int maxObjs)
{
    mapObjMan->maxObjects = maxObjs;
}

int MapObjectMan_GetMaxObjects(const MapObjectManager *mapObjMan)
{
    return mapObjMan->maxObjects;
}

static void MapObjectMan_IncObjectCount(MapObjectManager *mapObjMan)
{
    mapObjMan->objectCnt++;
}

static void MapObjectMan_DecObjectCount(MapObjectManager *mapObjMan)
{
    mapObjMan->objectCnt--;
}

void MapObjectMan_SetStatusFlagOn(MapObjectManager *mapObjMan, u32 flag)
{
    mapObjMan->status |= flag;
}

void MapObjectMan_SetStatusFlagOff(MapObjectManager *mapObjMan, u32 flag)
{
    mapObjMan->status &= ~flag;
}

u32 MapObjectMan_CheckStatus(const MapObjectManager *mapObjMan, u32 flag)
{
    return mapObjMan->status & flag;
}

void sub_02062854(MapObjectManager *mapObjMan, int param1)
{
    mapObjMan->unk_0C = param1;
}

int sub_02062858(const MapObjectManager *mapObjMan)
{
    return mapObjMan->unk_0C;
}

UnkStruct_ov5_021ED0A4 *sub_0206285C(const MapObjectManager *mapObjMan)
{
    return &(((MapObjectManager *)mapObjMan)->unk_18);
}

void MapObjectMan_SetMapObject(MapObjectManager *mapObjMan, MapObject *mapObj)
{
    mapObjMan->mapObj = mapObj;
}

const MapObject *MapObjectMan_GetMapObjectConst(const MapObjectManager *mapObjMan)
{
    return mapObjMan->mapObj;
}

static MapObject *MapObjectMan_GetMapObjectStatic(const MapObjectManager *mapObjMan)
{
    return mapObjMan->mapObj;
}

MapObject *MapObjectMan_GetMapObject(const MapObjectManager *mapObjMan)
{
    return mapObjMan->mapObj;
}

void sub_02062880(const MapObject **mapObj)
{
    (*mapObj)++;
}

void MapObjectMan_SetFieldSystem(MapObjectManager *mapObjMan, FieldSystem *fieldSystem)
{
    mapObjMan->fieldSystem = fieldSystem;
}

FieldSystem *MapObjectMan_FieldSystem(const MapObjectManager *mapObjMan)
{
    return mapObjMan->fieldSystem;
}

void MapObjectMan_SetNARC(MapObjectManager *mapObjMan, NARC *narc)
{
    mapObjMan->narc = narc;
}

NARC *MapObjectMan_GetNARC(const MapObjectManager *mapObjMan)
{
    GF_ASSERT(mapObjMan->narc != NULL);
    return ((MapObjectManager *)mapObjMan)->narc;
}

void MapObject_SetStatus(MapObject *mapObj, u32 status)
{
    mapObj->status = status;
}

u32 MapObject_GetStatus(const MapObject *mapObj)
{
    return mapObj->status;
}

void MapObject_SetStatusFlagOn(MapObject *mapObj, u32 flag)
{
    mapObj->status |= flag;
}

void MapObject_SetStatusFlagOff(MapObject *mapObj, u32 flag)
{
    mapObj->status &= ~flag;
}

u32 MapObject_CheckStatus(const MapObject *mapObj, u32 flag)
{
    return mapObj->status & flag;
}

BOOL MapObject_CheckStatusFlag(const MapObject *mapObj, u32 flag)
{
    return mapObj->status & flag
        ? TRUE
        : FALSE;
}

void sub_020628E8(MapObject *mapObj, u32 param1)
{
    mapObj->unk_04 = param1;
}

u32 sub_020628EC(const MapObject *mapObj)
{
    return mapObj->unk_04;
}

void sub_020628F0(MapObject *mapObj, u32 param1)
{
    mapObj->unk_04 |= param1;
}

void sub_020628F8(MapObject *mapObj, u32 param1)
{
    mapObj->unk_04 &= ~param1;
}

u32 sub_02062904(const MapObject *mapObj, u32 param1)
{
    return mapObj->unk_04 & param1;
}

void MapObject_SetLocalID(MapObject *mapObj, u32 localID)
{
    mapObj->localID = localID;
}

u32 MapObject_GetLocalID(const MapObject *mapObj)
{
    return mapObj->localID;
}

void sub_02062914(MapObject *mapObj, int param1)
{
    mapObj->unk_0C = param1;
}

int sub_02062918(const MapObject *mapObj)
{
    return mapObj->unk_0C;
}

void MapObject_SetGraphicsID(MapObject *mapObj, u32 graphicsID)
{
    mapObj->graphicsID = graphicsID;
}

u32 MapObject_GetGraphicsID(const MapObject *mapObj)
{
    return mapObj->graphicsID;
}

u32 sub_02062924(const MapObject *mapObj)
{
    u32 graphicsID = MapObject_GetGraphicsID(mapObj);

    if (sub_020677F4(graphicsID) == TRUE) {
        graphicsID = sub_02067800(mapObj);
    }

    return graphicsID;
}

void MapObject_SetMovementType(MapObject *mapObj, u32 movementType)
{
    mapObj->movementType = movementType;
}

u32 MapObject_GetMovementType(const MapObject *mapObj)
{
    return mapObj->movementType;
}

void MapObject_SetTrainerType(MapObject *mapObj, u32 trainerType)
{
    mapObj->trainerType = trainerType;
}

u32 MapObject_GetTrainerType(const MapObject *mapObj)
{
    return mapObj->trainerType;
}

void MapObject_SetFlag(MapObject *mapObj, u32 flag)
{
    mapObj->flag = flag;
}

u32 MapObject_GetFlag(const MapObject *mapObj)
{
    return mapObj->flag;
}

void MapObject_SetScript(MapObject *mapObj, u32 script)
{
    mapObj->script = script;
}

u32 MapObject_GetScript(const MapObject *mapObj)
{
    return mapObj->script;
}

void MapObject_SetInitialDir(MapObject *mapObj, int initialDir)
{
    mapObj->initialDir = initialDir;
}

u32 MapObject_GetInitialDir(const MapObject *mapObj)
{
    return mapObj->initialDir;
}

void MapObject_Face(MapObject *mapObj, int dir)
{
    mapObj->prevFacingDir = mapObj->facingDir;
    mapObj->facingDir = dir;
}

void MapObject_TryFace(MapObject *mapObj, int dir)
{
    if (!MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_LOCK_DIR)) {
        mapObj->prevFacingDir = mapObj->facingDir;
        mapObj->facingDir = dir;
    }
}

int MapObject_GetFacingDir(const MapObject *mapObj)
{
    return mapObj->facingDir;
}

int MapObject_GetPrevFacingDir(const MapObject *mapObj)
{
    return mapObj->prevFacingDir;
}

void MapObject_Turn(MapObject *mapObj, int dir)
{
    mapObj->prevMovingDir = mapObj->movingDir;
    mapObj->movingDir = dir;
}

int MapObject_GetMovingDir(const MapObject *mapObj)
{
    return mapObj->movingDir;
}

void MapObject_TryFaceAndTurn(MapObject *mapObj, int dir)
{
    MapObject_TryFace(mapObj, dir);
    MapObject_Turn(mapObj, dir);
}

void MapObject_SetDataAt(MapObject *mapObj, int value, int index)
{
    switch (index) {
    case 0:
        mapObj->data[0] = value;
        break;
    case 1:
        mapObj->data[1] = value;
        break;
    case 2:
        mapObj->data[2] = value;
        break;
    default:
        GF_ASSERT(FALSE);
    }
}

int MapObject_GetDataAt(const MapObject *mapObj, int index)
{
    switch (index) {
    case 0:
        return mapObj->data[0];
    case 1:
        return mapObj->data[1];
    case 2:
        return mapObj->data[2];
    }

    GF_ASSERT(FALSE);
    return FALSE;
}

void MapObject_SetMovementRangeX(MapObject *mapObj, int movementRangeX)
{
    mapObj->movementRangeX = movementRangeX;
}

int MapObject_GetMovementRangeX(const MapObject *mapObj)
{
    return mapObj->movementRangeX;
}

void MapObject_SetMovementRangeZ(MapObject *mapObj, int movementRangeZ)
{
    mapObj->movementRangeZ = movementRangeZ;
}

int MapObject_GetMovementRangeZ(const MapObject *mapObj)
{
    return mapObj->movementRangeZ;
}

void sub_02062A0C(MapObject *mapObj, u32 param1)
{
    mapObj->unk_A0 = param1;
}

u32 sub_02062A14(const MapObject *mapObj)
{
    return mapObj->unk_A0;
}

void sub_02062A1C(MapObject *mapObj, SysTask *task)
{
    mapObj->task = task;
}

SysTask *sub_02062A24(const MapObject *mapObj)
{
    return mapObj->task;
}

void sub_02062A2C(const MapObject *mapObj)
{
    SysTask_Done(sub_02062A24(mapObj));
}

void MapObject_SetMapObjectManager(MapObject *mapObj, const MapObjectManager *mapObjMan)
{
    mapObj->mapObjMan = mapObjMan;
}

const MapObjectManager *MapObject_MapObjectManager(const MapObject *mapObj)
{
    return mapObj->mapObjMan;
}

static MapObjectManager *sub_02062A48(const MapObject *mapObj)
{
    return MapObjectMan_Deconst(mapObj->mapObjMan);
}

void *sub_02062A54(MapObject *mapObj, int size)
{
    void *v0;

    GF_ASSERT(size <= 16);

    v0 = sub_02062A78(mapObj);
    memset(v0, 0, size);

    return v0;
}

void *sub_02062A78(MapObject *mapObj)
{
    return mapObj->unk_D8;
}

void *sub_02062A7C(MapObject *mapObj, int size)
{
    u8 *v0;

    GF_ASSERT(size <= 16);

    v0 = sub_02062AA0(mapObj);
    memset(v0, 0, size);

    return v0;
}

void *sub_02062AA0(MapObject *mapObj)
{
    return mapObj->unk_E8;
}

void *MapObject_InitMovementData(MapObject *mapObj, int size)
{
    GF_ASSERT(size <= 16);

    void *movementData = MapObject_GetMovementData(mapObj);
    memset(movementData, 0, size);

    return movementData;
}

void *MapObject_GetMovementData(MapObject *mapObj)
{
    return mapObj->movementData;
}

void *sub_02062ACC(MapObject *mapObj, int size)
{
    u8 *v0;

    GF_ASSERT(size <= 32);

    v0 = sub_02062AF0(mapObj);
    memset(v0, 0, size);

    return v0;
}

void *sub_02062AF0(MapObject *mapObj)
{
    return mapObj->unk_108;
}

void sub_02062AF8(MapObject *mapObj, UnkFuncPtr_020EDF0C param1)
{
    mapObj->unk_B8 = param1;
}

void sub_02062B00(MapObject *mapObj)
{
    mapObj->unk_B8(mapObj);
}

void sub_02062B0C(MapObject *mapObj, UnkFuncPtr_020EDF0C_1 param1)
{
    mapObj->unk_BC = param1;
}

void sub_02062B14(MapObject *mapObj)
{
    mapObj->unk_BC(mapObj);
}

void sub_02062B20(MapObject *mapObj, UnkFuncPtr_020EDF0C_2 param1)
{
    mapObj->unk_C0 = param1;
}

void sub_02062B28(MapObject *mapObj)
{
    mapObj->unk_C0(mapObj);
}

void sub_02062B34(MapObject *mapObj)
{
    const UnkStruct_020EDF0C *v0 = sub_0206320C(MapObject_GetMovementType(mapObj));
    v0->unk_10(mapObj);
}

void sub_02062B4C(MapObject *mapObj, UnkFuncPtr_ov5_021FB0F0 param1)
{
    mapObj->unk_C4 = param1;
}

void sub_02062B54(MapObject *mapObj)
{
    mapObj->unk_C4(mapObj);
}

void sub_02062B60(MapObject *mapObj, UnkFuncPtr_ov5_021FB0F0_1 param1)
{
    mapObj->unk_C8 = param1;
}

void sub_02062B68(MapObject *mapObj)
{
    mapObj->unk_C8(mapObj);
}

void sub_02062B74(MapObject *mapObj, UnkFuncPtr_ov5_021FB0F0_2 param1)
{
    mapObj->unk_CC = param1;
}

void sub_02062B7C(MapObject *mapObj)
{
    mapObj->unk_CC(mapObj);
}

void sub_02062B88(MapObject *mapObj, UnkFuncPtr_ov5_021FB0F0_3 param1)
{
    mapObj->unk_D0 = param1;
}

void sub_02062B90(MapObject *mapObj)
{
    mapObj->unk_D0(mapObj);
}

void sub_02062B9C(MapObject *mapObj, UnkFuncPtr_ov5_021FB0F0_4 param1)
{
    mapObj->unk_D4 = param1;
}

void sub_02062BA4(MapObject *mapObj)
{
    mapObj->unk_D4(mapObj);
}

void MapObject_SetMovementAction(MapObject *mapObj, enum MovementAction movementAction)
{
    mapObj->movementAction = movementAction;
}

enum MovementAction MapObject_GetMovementAction(const MapObject *mapObj)
{
    return mapObj->movementAction;
}

void MapObject_SetMovementStep(MapObject *mapObj, int movementStep)
{
    mapObj->movementStep = movementStep;
}

void MapObject_AdvanceMovementStep(MapObject *mapObj)
{
    mapObj->movementStep++;
}

int MapObject_GetMovementStep(const MapObject *mapObj)
{
    return mapObj->movementStep;
}

void MapObject_SetCurrTileBehavior(MapObject *mapObj, u32 tileBehavior)
{
    mapObj->currTileBehavior = tileBehavior;
}

u32 MapObject_GetCurrTileBehavior(const MapObject *mapObj)
{
    return mapObj->currTileBehavior;
}

void MapObject_SetPrevTileBehavior(MapObject *mapObj, u32 tileBehavior)
{
    mapObj->prevTileBehavior = tileBehavior;
}

u32 MapObject_GetPrevTileBehavior(const MapObject *mapObj)
{
    return mapObj->prevTileBehavior;
}

FieldSystem *MapObject_FieldSystem(const MapObject *mapObj)
{
    MapObjectManager *mapObjMan = sub_02062A48(mapObj);
    return MapObjectMan_FieldSystem(mapObjMan);
}

int sub_02062C0C(const MapObject *mapObj)
{
    return sub_02062858(MapObject_MapObjectManager(mapObj));
}

int sub_02062C18(const MapObject *mapObj)
{
    GF_ASSERT(sub_02062E94(mapObj) == TRUE);
    return MapObject_GetFlag(mapObj);
}

void MapObjectMan_StopAllMovement(MapObjectManager *mapObjMan)
{
    MapObjectMan_SetStatusFlagOn(mapObjMan, MAP_OBJ_STATUS_1 | MAP_OBJ_STATUS_START_MOVEMENT);
}

void sub_02062C3C(MapObjectManager *mapObjMan)
{
    MapObjectMan_SetStatusFlagOff(mapObjMan, MAP_OBJ_STATUS_1 | MAP_OBJ_STATUS_START_MOVEMENT);
}

void MapObjectMan_PauseAllMovement(MapObjectManager *mapObjMan)
{
    int maxObjects = MapObjectMan_GetMaxObjects(mapObjMan);
    MapObject *mapObj = MapObjectMan_GetMapObject(mapObjMan);

    do {
        if (sub_02062CF8(mapObj)) {
            MapObject_SetPauseMovementOn(mapObj);
        }

        mapObj++;
        maxObjects--;
    } while (maxObjects);
}

void MapObjectMan_UnpauseAllMovement(MapObjectManager *mapObjMan)
{
    int maxObjects = MapObjectMan_GetMaxObjects(mapObjMan);
    MapObject *mapObj = MapObjectMan_GetMapObject(mapObjMan);

    do {
        if (sub_02062CF8(mapObj)) {
            MapObject_SetPauseMovementOff(mapObj);
        }

        mapObj++;
        maxObjects--;
    } while (maxObjects);
}

int MapObjectMan_IsDrawInitialized(const MapObjectManager *mapObjMan)
{
    if (MapObjectMan_CheckStatus(mapObjMan, MAP_OBJ_STATUS_0)) {
        return TRUE;
    }

    return FALSE;
}

u32 MapObject_CheckManagerStatus(const MapObject *mapObj, u32 flag)
{
    const MapObjectManager *mapObjMan = MapObject_MapObjectManager(mapObj);

    return MapObjectMan_CheckStatus(mapObjMan, flag);
}

void MapObjectMan_SetEndMovement(MapObjectManager *mapObjMan, int param1)
{
    if (param1 == FALSE) {
        MapObjectMan_SetStatusFlagOn(mapObjMan, MAP_OBJ_STATUS_END_MOVEMENT);
    } else {
        MapObjectMan_SetStatusFlagOff(mapObjMan, MAP_OBJ_STATUS_END_MOVEMENT);
    }
}

int sub_02062CE4(const MapObjectManager *mapObjMan)
{
    if (MapObjectMan_CheckStatus(mapObjMan, MAP_OBJ_STATUS_END_MOVEMENT)) {
        return FALSE;
    }

    return TRUE;
}

int sub_02062CF8(const MapObject *mapObj)
{
    return MapObject_CheckStatusFlag(mapObj, MAP_OBJ_STATUS_0);
}

void sub_02062D04(MapObject *mapObj)
{
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_1);
}

void sub_02062D10(MapObject *mapObj)
{
    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_1);
}

int MapObject_IsMoving(const MapObject *mapObj)
{
    return MapObject_CheckStatusFlag(mapObj, MAP_OBJ_STATUS_1);
}

void MapObject_SetStartMovement(MapObject *mapObj)
{
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_START_MOVEMENT);
}

void MapObject_SetEndMovementOff(MapObject *mapObj)
{
    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_END_MOVEMENT);
}

void sub_02062D40(MapObject *mapObj)
{
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_14);
}

int sub_02062D4C(const MapObject *mapObj)
{
    return MapObject_CheckStatusFlag(mapObj, MAP_OBJ_STATUS_14);
}

int MapObject_IsHidden(const MapObject *mapObj)
{
    return MapObject_CheckStatusFlag(mapObj, MAP_OBJ_STATUS_HIDE);
}

void MapObject_SetHidden(MapObject *mapObj, int hidden)
{
    if (hidden == TRUE) {
        MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_HIDE);
    } else {
        MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_HIDE);
    }
}

void sub_02062D80(MapObject *mapObj, int param1)
{
    if (param1 == TRUE) {
        MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_18);
    } else {
        MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_18);
    }
}

int sub_02062D9C(MapObject *mapObj)
{
    if (MapObject_CheckStatusFlag(mapObj, MAP_OBJ_STATUS_19) == TRUE) {
        return FALSE;
    }

    return TRUE;
}

void sub_02062DB4(MapObject *mapObj, int param1)
{
    if (param1 == TRUE) {
        MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_19);
    } else {
        MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_19);
    }
}

void MapObject_SetPauseMovementOn(MapObject *mapObj)
{
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_PAUSE_MOVEMENT);
}

void MapObject_SetPauseMovementOff(MapObject *mapObj)
{
    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_PAUSE_MOVEMENT);
}

int MapObject_IsMovementPaused(const MapObject *mapObj)
{
    if (MapObject_CheckStatusFlag(mapObj, MAP_OBJ_STATUS_PAUSE_MOVEMENT) == TRUE) {
        return TRUE;
    }

    return FALSE;
}

int sub_02062DFC(const MapObject *mapObj)
{
    const MapObjectManager *mapObjMan = MapObject_MapObjectManager(mapObj);

    if (MapObjectMan_IsDrawInitialized(mapObjMan) == FALSE) {
        return FALSE;
    }

    if (!MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_14)) {
        return FALSE;
    }

    return TRUE;
}

void MapObject_SetHeightCalculationDisabled(MapObject *mapObj, BOOL heightCalculationDisabled)
{
    if (heightCalculationDisabled == TRUE) {
        MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_HEIGHT_CALCULATION_DISABLED);
    } else {
        MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_HEIGHT_CALCULATION_DISABLED);
    }
}

int MapObject_IsHeightCalculationDisabled(const MapObject *mapObj)
{
    if (MapObject_CheckStatus(mapObj, MAP_OBJ_HEIGHT_CALCULATION_DISABLED)) {
        return TRUE;
    }

    return FALSE;
}

void sub_02062E5C(MapObject *mapObj, int param1)
{
    if (param1 == TRUE) {
        MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_10);
    } else {
        MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_10);
    }
}

void sub_02062E78(MapObject *mapObj, int param1)
{
    if (param1 == TRUE) {
        MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_25);
    } else {
        MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_25);
    }
}

int sub_02062E94(const MapObject *mapObj)
{
    if (MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_25)) {
        return TRUE;
    }

    return FALSE;
}

void sub_02062EAC(MapObject *mapObj, int param1)
{
    if (param1 == TRUE) {
        MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_26);
    } else {
        MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_26);
    }
}

int sub_02062EC8(const MapObject *mapObj)
{
    if (MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_26)) {
        return TRUE;
    }

    return FALSE;
}

void sub_02062EE0(MapObject *mapObj, int param1)
{
    if (param1 == TRUE) {
        MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_27);
    } else {
        MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_27);
    }
}

int sub_02062EFC(const MapObject *mapObj)
{
    if (MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_27)) {
        return TRUE;
    }

    return FALSE;
}

void sub_02062F14(MapObject *mapObj, int param1)
{
    if (param1 == TRUE) {
        MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_28);
    } else {
        MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_28);
    }
}

int sub_02062F30(const MapObject *mapObj)
{
    if (MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_28)) {
        return TRUE;
    }

    return FALSE;
}

void sub_02062F48(MapObject *mapObj, int param1)
{
    if (param1 == TRUE) {
        MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_24);
    } else {
        MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_24);
    }
}

int sub_02062F64(const MapObject *mapObj)
{
    if (MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_24)) {
        return TRUE;
    }

    return FALSE;
}

int sub_02062F7C(const MapObject *mapObj)
{
    if (MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_4)) {
        return TRUE;
    }

    return FALSE;
}

void sub_02062F90(MapObject *mapObj, int param1)
{
    if (param1 == TRUE) {
        MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_29);
    } else {
        MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_29);
    }
}

int sub_02062FAC(const MapObject *mapObj)
{
    if (MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_29)) {
        return TRUE;
    }

    return FALSE;
}

void sub_02062FC4(MapObject *mapObj, int param1)
{
    if (param1 == TRUE) {
        sub_020628F0(mapObj, (1 << 2));
    } else {
        sub_020628F8(mapObj, (1 << 2));
    }
}

int sub_02062FDC(const MapObject *mapObj)
{
    if (sub_02062904(mapObj, (1 << 2))) {
        return TRUE;
    }

    return FALSE;
}

int MapObject_GetXInitial(const MapObject *mapObj)
{
    return mapObj->xInitial;
}

void MapObject_SetXInitial(MapObject *mapObj, int x)
{
    mapObj->xInitial = x;
}

int MapObject_GetYInitial(const MapObject *mapObj)
{
    return mapObj->yInitial;
}

void MapObject_SetYInitial(MapObject *mapObj, int y)
{
    mapObj->yInitial = y;
}

int MapObject_GetZInitial(const MapObject *mapObj)
{
    return mapObj->zInitial;
}

void MapObject_SetZInitial(MapObject *mapObj, int z)
{
    mapObj->zInitial = z;
}

int MapObject_GetXPrev(const MapObject *mapObj)
{
    return mapObj->xPrev;
}

void MapObject_SetXPrev(MapObject *mapObj, int x)
{
    mapObj->xPrev = x;
}

int MapObject_GetYPrev(const MapObject *mapObj)
{
    return mapObj->yPrev;
}

void MapObject_SetYPrev(MapObject *mapObj, int y)
{
    mapObj->yPrev = y;
}

int MapObject_GetZPrev(const MapObject *mapObj)
{
    return mapObj->zPrev;
}

void MapObject_SetZPrev(MapObject *mapObj, int z)
{
    mapObj->zPrev = z;
}

int MapObject_GetX(const MapObject *mapObj)
{
    return mapObj->x;
}

void MapObject_SetX(MapObject *mapObj, int x)
{
    mapObj->x = x;
}

void MapObject_AddX(MapObject *mapObj, int dx)
{
    mapObj->x += dx;
}

int MapObject_GetY(const MapObject *mapObj)
{
    return mapObj->y;
}

void MapObject_SetY(MapObject *mapObj, int y)
{
    mapObj->y = y;
}

void MapObject_AddY(MapObject *mapObj, int dy)
{
    mapObj->y += dy;
}

int MapObject_GetZ(const MapObject *mapObj)
{
    return mapObj->z;
}

void MapObject_SetZ(MapObject *mapObj, int z)
{
    mapObj->z = z;
}

void MapObject_AddZ(MapObject *mapObj, int dz)
{
    mapObj->z += dz;
}

void MapObject_GetPosPtr(const MapObject *mapObj, VecFx32 *pos)
{
    *pos = mapObj->pos;
}

void MapObject_SetPos(MapObject *mapObj, const VecFx32 *pos)
{
    mapObj->pos = *pos;
}

const VecFx32 *MapObject_GetPos(const MapObject *mapObj)
{
    return &mapObj->pos;
}

fx32 MapObject_GetPosY(const MapObject *mapObj)
{
    return mapObj->pos.y;
}

void sub_02063078(const MapObject *mapObj, VecFx32 *vec)
{
    *vec = mapObj->unk_7C;
}

void sub_02063088(MapObject *mapObj, const VecFx32 *vec)
{
    mapObj->unk_7C = *vec;
}

VecFx32 *sub_02063098(MapObject *mapObj)
{
    return &mapObj->unk_7C;
}

void sub_0206309C(const MapObject *mapObj, VecFx32 *vec)
{
    *vec = mapObj->unk_88;
}

void sub_020630AC(MapObject *mapObj, const VecFx32 *vec)
{
    mapObj->unk_88 = *vec;
}

void sub_020630BC(const MapObject *mapObj, VecFx32 *vec)
{
    *vec = mapObj->unk_94;
}

void sub_020630CC(MapObject *mapObj, const VecFx32 *vec)
{
    mapObj->unk_94 = *vec;
}

int sub_020630DC(const MapObject *mapObj)
{
    fx32 v0 = MapObject_GetPosY(mapObj);
    int v1 = ((v0) >> 3) / FX32_ONE;

    return v1;
}

void ObjectEvent_SetLocalID(ObjectEvent *objectEvent, int localID)
{
    objectEvent->localID = localID;
}

int ObjectEvent_GetLocalID(const ObjectEvent *objectEvent)
{
    return objectEvent->localID;
}

void ObjectEvent_SetGraphicsID(ObjectEvent *objectEvent, int graphicsID)
{
    objectEvent->graphicsID = graphicsID;
}

int ObjectEvent_GetGraphicsID(const ObjectEvent *objectEvent)
{
    return objectEvent->graphicsID;
}

void ObjectEvent_SetMovementType(ObjectEvent *objectEvent, int movementType)
{
    objectEvent->movementType = movementType;
}

int ObjectEvent_GetMovementType(const ObjectEvent *objectEvent)
{
    return objectEvent->movementType;
}

void ObjectEvent_SetTrainerType(ObjectEvent *objectEvent, int trainerType)
{
    objectEvent->trainerType = trainerType;
}

int ObjectEvent_GetTrainerType(const ObjectEvent *objectEvent)
{
    return objectEvent->trainerType;
}

void ObjectEvent_SetFlag(ObjectEvent *objectEvent, int flag)
{
    objectEvent->flag = flag;
}

int ObjectEvent_GetFlag(const ObjectEvent *objectEvent)
{
    return objectEvent->flag;
}

void ObjectEvent_SetScript(ObjectEvent *objectEvent, int script)
{
    objectEvent->script = script;
}

int ObjectEvent_GetScript(const ObjectEvent *objectEvent)
{
    return objectEvent->script;
}

void ObjectEvent_SetInitialDir(ObjectEvent *objectEvent, int initialDir)
{
    objectEvent->dir = initialDir;
}

int ObjectEvent_GetInitialDir(const ObjectEvent *objectEvent)
{
    return objectEvent->dir;
}

void ObjectEvent_SetDataAt(ObjectEvent *objectEvent, int value, int index)
{
    switch (index) {
    case 0:
        objectEvent->data[0] = value;
        break;
    case 1:
        objectEvent->data[1] = value;
        break;
    case 2:
        objectEvent->data[2] = value;
        break;
    default:
        GF_ASSERT(FALSE);
    }
}

int ObjectEvent_GetDataAt(const ObjectEvent *objectEvent, int index)
{
    switch (index) {
    case 0:
        return objectEvent->data[0];
    case 1:
        return objectEvent->data[1];
    case 2:
        return objectEvent->data[2];
    }

    GF_ASSERT(FALSE);
    return FALSE;
}

void ObjectEvent_SetMovementRangeX(ObjectEvent *objectEvent, int movementRangeX)
{
    objectEvent->movementRangeX = movementRangeX;
}

int ObjectEvent_GetMovementRangeX(const ObjectEvent *objectEvent)
{
    return objectEvent->movementRangeX;
}

void ObjectEvent_SetMovementRangeZ(ObjectEvent *objectEvent, int movementRangeZ)
{
    objectEvent->movementRangeZ = movementRangeZ;
}

int ObjectEvent_GetMovementRangeZ(const ObjectEvent *objectEvent)
{
    return objectEvent->movementRangeZ;
}

void ObjectEvent_SetX(ObjectEvent *objectEvent, int x)
{
    objectEvent->x = x;
}

int ObjectEvent_GetX(const ObjectEvent *objectEvent)
{
    return objectEvent->x;
}

void ObjectEvent_SetY(ObjectEvent *objectEvent, int y)
{
    objectEvent->y = y;
}

int ObjectEvent_GetY(const ObjectEvent *objectEvent)
{
    return objectEvent->y;
}

void ObjectEvent_SetZ(ObjectEvent *objectEvent, int z)
{
    objectEvent->z = z;
}

int ObjectEvent_GetZ(const ObjectEvent *objectEvent)
{
    return objectEvent->z;
}

static const ObjectEvent *sub_020631A4(int localID, int objEventCount, const ObjectEvent *objectEvent)
{
    int i = 0;

    do {
        if (ObjectEvent_HasNoScript(&objectEvent[i]) == FALSE && ObjectEvent_GetLocalID(&objectEvent[i]) == localID) {
            return &objectEvent[i];
        }

        i++;
    } while (i < objEventCount);

    return NULL;
}

static int ObjectEvent_HasNoScript(const ObjectEvent *objectEvent)
{
    u16 script = (u16)ObjectEvent_GetScript(objectEvent);

    if (script == 0xffff) {
        return TRUE;
    }

    return FALSE;
}

static int ObjectEvent_GetFlagNoScript(const ObjectEvent *objectEvent)
{
    GF_ASSERT(ObjectEvent_HasNoScript(objectEvent) == TRUE);
    return ObjectEvent_GetFlag(objectEvent);
}

static const UnkStruct_020EDF0C *sub_0206320C(u32 param0)
{
    GF_ASSERT(param0 < 0x44);
    return Unk_020EE3A8[param0];
}

static UnkFuncPtr_020EDF0C sub_02063224(const UnkStruct_020EDF0C *param0)
{
    return param0->unk_04;
}

static UnkFuncPtr_020EDF0C_1 sub_02063228(const UnkStruct_020EDF0C *param0)
{
    return param0->unk_08;
}

static UnkFuncPtr_020EDF0C_2 sub_0206322C(const UnkStruct_020EDF0C *param0)
{
    return param0->unk_0C;
}

static UnkFuncPtr_ov5_021FB0F0 sub_02063230(const UnkStruct_ov5_021FB0F0 *param0)
{
    return param0->unk_00;
}

static UnkFuncPtr_ov5_021FB0F0_1 sub_02063234(const UnkStruct_ov5_021FB0F0 *param0)
{
    return param0->unk_04;
}

static UnkFuncPtr_ov5_021FB0F0_2 sub_02063238(const UnkStruct_ov5_021FB0F0 *param0)
{
    return param0->unk_08;
}

static UnkFuncPtr_ov5_021FB0F0_3 sub_0206323C(const UnkStruct_ov5_021FB0F0 *param0)
{
    return param0->unk_0C;
}

static UnkFuncPtr_ov5_021FB0F0_4 sub_02063240(const UnkStruct_ov5_021FB0F0 *param0)
{
    return param0->unk_10;
}

static const UnkStruct_ov5_021FB0F0 *sub_02063244(u32 param0)
{
    const UnkStruct_ov5_021FB97C *v0 = Unk_ov5_021FB97C;

    do {
        if (v0->unk_00 == param0) {
            return v0->unk_04;
        }

        v0++;
    } while (v0->unk_00 != 0xffff);

    GF_ASSERT(FALSE);
    return NULL;
}

MapObject *sub_0206326C(const MapObjectManager *mapObjMan, int x, int z, int param3)
{
    int maxObjects = MapObjectMan_GetMaxObjects(mapObjMan);
    MapObject *mapObj = MapObjectMan_GetMapObject(mapObjMan);

    do {
        if (MapObject_CheckStatus(mapObj, MAP_OBJ_STATUS_0)) {
            if (param3 && MapObject_GetXPrev(mapObj) == x && MapObject_GetZPrev(mapObj) == z) {
                return mapObj;
            }

            if (MapObject_GetX(mapObj) == x && MapObject_GetZ(mapObj) == z) {
                return mapObj;
            }
        }

        mapObj++;
        maxObjects--;
    } while (maxObjects);

    return NULL;
}

void MapObject_SetPosDirFromVec(MapObject *mapObj, const VecFx32 *pos, int dir)
{
    int x, y, z;

    x = ((pos->x) >> 4) / FX32_ONE;
    MapObject_SetX(mapObj, x);

    y = ((pos->y) >> 3) / FX32_ONE;
    MapObject_SetY(mapObj, y);

    z = ((pos->z) >> 4) / FX32_ONE;
    MapObject_SetZ(mapObj, z);

    MapObject_SetPos(mapObj, pos);
    MapObject_UpdateCoords(mapObj);

    MapObject_Face(mapObj, dir);

    sub_020656DC(mapObj);
    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_START_MOVEMENT);
    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_1 | MAP_OBJ_STATUS_END_MOVEMENT);
}

void MapObject_SetPosDirFromCoords(MapObject *mapObj, int x, int y, int z, int dir)
{
    VecFx32 pos;

    pos.x = ((x << 4) * FX32_ONE) + ((16 * FX32_ONE) >> 1);
    MapObject_SetX(mapObj, x);

    pos.y = ((y << 3) * FX32_ONE) + 0;
    MapObject_SetY(mapObj, y);

    pos.z = ((z << 4) * FX32_ONE) + ((16 * FX32_ONE) >> 1);
    MapObject_SetZ(mapObj, z);

    MapObject_SetPos(mapObj, &pos);
    MapObject_UpdateCoords(mapObj);

    MapObject_Face(mapObj, dir);

    MapObject_SetStatusFlagOn(mapObj, MAP_OBJ_STATUS_START_MOVEMENT);
    MapObject_SetStatusFlagOff(mapObj, MAP_OBJ_STATUS_1 | MAP_OBJ_STATUS_END_MOVEMENT);

    sub_020656DC(mapObj);
}

void MapObject_SetMoveCode(MapObject *mapObj, u32 param1)
{
    sub_02062B28(mapObj);
    MapObject_SetMovementType(mapObj, param1);
    sub_0206239C(mapObj);
    MapObject_InitMove(mapObj);
}

void sub_020633C8(MapObject *mapObj, int localID)
{
    MapObject_SetLocalID(mapObj, localID);

    MapObject_SetStartMovement(mapObj);
    sub_02062618(mapObj);
}

void sub_020633E0(MapObject *mapObj)
{
    return;
}

void sub_020633E4(MapObject *mapObj)
{
    return;
}

void sub_020633E8(MapObject *mapObj)
{
    return;
}

void sub_020633EC(MapObject *mapObj)
{
    return;
}

void sub_020633F0(MapObject *mapObj)
{
    return;
}

void sub_020633F4(MapObject *mapObj)
{
    return;
}

void sub_020633F8(MapObject *mapObj)
{
    return;
}

void sub_020633FC(MapObject *mapObj)
{
    return;
}
