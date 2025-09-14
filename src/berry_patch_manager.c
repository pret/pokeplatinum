#include "berry_patch_manager.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/berry_patch_manager_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay005/map_object_anim_cmd.h"
#include "overlay005/ov5_021DF440.h"
#include "overlay005/ov5_021DFB54.h"
#include "overlay005/struct_ov5_021DF47C_decl.h"

#include "bag.h"
#include "berry_patches.h"
#include "easy3d.h"
#include "field_task.h"
#include "gfx_box_test.h"
#include "heap.h"
#include "map_object.h"
#include "player_avatar.h"
#include "savedata_misc.h"
#include "sys_task_manager.h"
#include "system.h"
#include "terrain_collision_manager.h"
#include "unk_020655F4.h"
#include "berry_patch_graphics.h"
#include "unk_0206CCB0.h"

struct BerryPatchManager {
    int heapID;
    BerryGrowthData *growthData;
    NNSG3dRenderObj renderObj;
    NNSG3dResMdl *model;
    NNSG3dResFileHeader *resource;
};

typedef struct {
    int state;
    int direction;
    int timer;
    SysTask *animationTask;
} BerryWateringTask;

static void BerryPatchManager_Init3DRendering(FieldSystem *fieldSystem, BerryPatchManager *manager);
static void BerryPatchManager_Cleanup3DRendering(BerryPatchManager *manager);

static u16 BerryPatches_ConvertBerryIDToItemID(int berryID)
{
    if (berryID == 0) {
        return 0;
    }

    return berryID + 149 - 1;
}

static u16 BerryPatches_ConvertItemIDToBerryID(int itemID)
{
    if (itemID == 0) {
        return 0;
    }

    return itemID - 149 + 1;
}

static u16 BerryPatches_ConvertMulchTypeToItemID(int mulchType)
{
    if (mulchType == 0) {
        return 0;
    }

    return mulchType + 95 - 1;
}

static int BerryPatches_ConvertItemIDToMulchType(int itemID)
{
    if (itemID == 0) {
        return 0;
    }

    return itemID - 95 + 1;
}

BerryPatchManager *BerryPatchManager_Create(FieldSystem *fieldSystem, int heapID)
{
    BerryPatchManager *manager = Heap_Alloc(heapID, sizeof(BerryPatchManager));
    MI_CpuClear8(manager, sizeof(BerryPatchManager));

    manager->heapID = heapID;
    manager->growthData = BerryGrowthData_Init(heapID);

    BerryPatchManager_Init3DRendering(fieldSystem, manager);
    return manager;
}

void BerryPatchManager_Destroy(BerryPatchManager *manager)
{
    BerryPatchManager_Cleanup3DRendering(manager);
    Heap_Free(manager->growthData);
    Heap_Free(manager);
}

void BerryPatches_ElapseTime(FieldSystem *fieldSystem, int minutes)
{
    BerryPatch *berryPatches;
    BerryGrowthData *growthData;

    if (fieldSystem->unk_04 == NULL) {
        growthData = BerryGrowthData_Init(11);
        berryPatches = MiscSaveBlock_GetBerryPatches(fieldSystem->saveData);
        BerryPatches_ElapseMinutes(berryPatches, growthData, minutes);
        Heap_Free(growthData);
    } else {
        growthData = fieldSystem->unk_04->berryPatchManager->growthData;
        berryPatches = MiscSaveBlock_GetBerryPatches(fieldSystem->saveData);
        BerryPatches_ElapseMinutes(berryPatches, growthData, minutes);
    }
}

static void BerryPatchManager_Init3DRendering(FieldSystem *fieldSystem, BerryPatchManager *manager)
{
    UnkStruct_ov5_021DF47C *renderManager = fieldSystem->unk_40;
    u32 resourceSize = ov5_021DF5A8(renderManager, 17);

    manager->resource = Heap_Alloc(manager->heapID, resourceSize);

    ov5_021DF5B4(renderManager, 17, manager->resource);
    Easy3D_InitRenderObjFromResource(&manager->renderObj, &manager->model, &manager->resource);
}

static void BerryPatchManager_Cleanup3DRendering(BerryPatchManager *manager)
{
    ov5_021DF554(manager->resource);
}

static BOOL BerryPatches_IsInView(FieldSystem *fieldSystem, const VecFx32 *position)
{
    const VecFx32 scale = { FX32_ONE, FX32_ONE, FX32_ONE };
    MtxFx33 transform;

    MTX_Identity33(&transform);

    if (GFXBoxTest_IsModelInView(fieldSystem->unk_04->berryPatchManager->model, position, &transform, &scale) != 0) {
        return 1;
    } else {
        return 0;
    }
}

void BerryPatches_UpdateGrowthStates(FieldSystem *fieldSystem)
{
    int objectIndex = 0;
    MapObject *mapObject;
    BerryPatch *berryPatches = MiscSaveBlock_GetBerryPatches(fieldSystem->saveData);

    while (sub_020625B0(fieldSystem->mapObjMan, &mapObject, &objectIndex, (1 << 0)) == 1) {
        if (BerryPatch_IsBerryPatch(MapObject_GetGraphicsID(mapObject)) == 1) {
            if (BerryPatches_IsInView(fieldSystem, MapObject_GetPos(mapObject))) {
                int patchID = MapObject_GetDataAt(mapObject, 0);
                BerryPatches_SetIsPatchGrowing(berryPatches, patchID, 1);
            }
        }
    }
}

BOOL BerryPatches_HarvestBerry(FieldSystem *fieldSystem, MapObject *param1)
{
    int patchID, yieldAmount, berryID;
    BerryPatch *berryPatches = MiscSaveBlock_GetBerryPatches(fieldSystem->saveData);

    patchID = MapObject_GetDataAt(param1, 0);
    berryID = BerryPatches_GetPatchBerryID(berryPatches, patchID);
    yieldAmount = BerryPatches_GetPatchYield(berryPatches, patchID);

    sub_0206D914(fieldSystem, BerryPatches_ConvertBerryIDToItemID(berryID), BerryPatches_GetPatchYieldRating(berryPatches, patchID), yieldAmount);
    BerryPatches_HarvestPatch(berryPatches, patchID);
    BerryPatch_MarkForUpdate(param1);

    return Bag_TryAddItem(SaveData_GetBag(fieldSystem->saveData), BerryPatches_ConvertBerryIDToItemID(berryID), yieldAmount, HEAP_ID_FIELD1);
}

void BerryPatches_SetMulchType(FieldSystem *fieldSystem, MapObject *param1, u16 param2)
{
    int patchID;
    BerryPatch *berryPatches = MiscSaveBlock_GetBerryPatches(fieldSystem->saveData);

    patchID = MapObject_GetDataAt(param1, 0);
    BerryPatches_SetPatchMulchType(berryPatches, patchID, BerryPatches_ConvertItemIDToMulchType(param2));
}

void BerryPatches_PlantBerry(FieldSystem *fieldSystem, MapObject *param1, u16 param2)
{
    int patchID;
    BerryPatch *berryPatches = MiscSaveBlock_GetBerryPatches(fieldSystem->saveData);

    patchID = MapObject_GetDataAt(param1, 0);
    BerryPatches_PlantInPatch(berryPatches, patchID, fieldSystem->unk_04->berryPatchManager->growthData, BerryPatches_ConvertItemIDToBerryID(param2));
}

void BerryPatches_ResetMoisture(FieldSystem *fieldSystem, MapObject *mapObject)
{
    int patchID;
    BerryPatch *berryPatches = MiscSaveBlock_GetBerryPatches(fieldSystem->saveData);

    patchID = MapObject_GetDataAt(mapObject, 0);
    BerryPatches_ResetPatchMoisture(berryPatches, patchID);
}

int BerryPatches_GetGrowthStage(const FieldSystem *fieldSystem, const MapObject *param1)
{
    int patchID;
    BerryPatch *berryPatches = MiscSaveBlock_GetBerryPatches(fieldSystem->saveData);

    patchID = MapObject_GetDataAt(param1, 0);
    return BerryPatches_GetPatchGrowthStage(berryPatches, patchID);
}

int BerryPatches_GetBerryID(const FieldSystem *fieldSystem, const MapObject *mapObject)
{
    int patchID;
    BerryPatch *berryPatches = MiscSaveBlock_GetBerryPatches(fieldSystem->saveData);

    patchID = MapObject_GetDataAt(mapObject, 0);
    return BerryPatches_GetPatchBerryID(berryPatches, patchID);
}

u16 BerryPatches_GetItemID(const FieldSystem *fieldSystem, const MapObject *param1)
{
    int patchID;
    BerryPatch *berryPatches = MiscSaveBlock_GetBerryPatches(fieldSystem->saveData);

    patchID = MapObject_GetDataAt(param1, 0);
    return BerryPatches_ConvertBerryIDToItemID(BerryPatches_GetPatchBerryID(berryPatches, patchID));
}

u16 BerryPatches_GetMulchItemID(const FieldSystem *fieldSystem, const MapObject *param1)
{
    int patchID;
    BerryPatch *berryPatches = MiscSaveBlock_GetBerryPatches(fieldSystem->saveData);

    patchID = MapObject_GetDataAt(param1, 0);
    return BerryPatches_ConvertMulchTypeToItemID(BerryPatches_GetPatchMulchType(berryPatches, patchID));
}

int BerryPatches_GetMoisture(const FieldSystem *fieldSystem, const MapObject *param1)
{
    int patchID;
    BerryPatch *berryPatches = MiscSaveBlock_GetBerryPatches(fieldSystem->saveData);

    patchID = MapObject_GetDataAt(param1, 0);
    return BerryPatches_GetPatchMoisture(berryPatches, patchID);
}

int BerryPatches_GetYield(const FieldSystem *fieldSystem, const MapObject *param1)
{
    int patchID;
    BerryPatch *berryPatches = MiscSaveBlock_GetBerryPatches(fieldSystem->saveData);

    patchID = MapObject_GetDataAt(param1, 0);
    return BerryPatches_GetPatchYield(berryPatches, patchID);
}

u32 BerryPatches_GetPatchFlags(const FieldSystem *fieldSystem, const MapObject *mapObject)
{
    u32 patchFlags = 0;

    if ((mapObject == NULL) || (MapObject_GetGraphicsID(mapObject) != 0x64)) {
        return 0x0;
    }

    switch (BerryPatches_GetGrowthStage(fieldSystem, mapObject)) {
    case 0:
        patchFlags |= 0x1;

        if (BerryPatches_GetMulchItemID(fieldSystem, mapObject) == 0) {
            patchFlags |= 0x2;
        }
        break;
    default:
        patchFlags |= 0x4;
        break;
    }

    return patchFlags;
}

static const MapObjectAnimCmd Unk_020EC51C[] = {
    { 0xA, 0x1 },
    { 0xfe, 0x0 }
};

static const MapObjectAnimCmd Unk_020EC524[] = {
    { 0xB, 0x1 },
    { 0xfe, 0x0 }
};

static BOOL BerryWatering_CheckCollision(FieldSystem *fieldSystem, BerryWateringTask *task, int direction)
{
    int playerX = Player_GetXPos(fieldSystem->playerAvatar);
    int playerZ = Player_GetZPos(fieldSystem->playerAvatar);

    if (direction == 2) {
        playerX--;
    } else if (direction == 3) {
        playerX++;
    } else if (direction == 0) {
        playerZ--;
    } else if (direction == 1) {
        playerZ++;
    } else {
        GF_ASSERT(0);
    }

    if (TerrainCollisionManager_CheckCollision(fieldSystem, playerX, playerZ)) {
        return 1;
    }

    return sub_0206326C(fieldSystem->mapObjMan, playerX, playerZ, 0) != NULL;
}

static MapObject *BerryWatering_GetAdjacentObject(FieldSystem *fieldSystem, int direction)
{
    int playerX = Player_GetXPos(fieldSystem->playerAvatar);
    int playerZ = Player_GetZPos(fieldSystem->playerAvatar);
    playerZ -= 1;

    if (direction == 2) {
        playerX -= 1;
    } else if (direction == 3) {
        playerX += 1;
    }

    return sub_0206326C(fieldSystem->mapObjMan, playerX, playerZ, 0);
}

static MapObject *BerryWatering_GetTargetPatch(FieldSystem *fieldSystem, BerryWateringTask *task)
{
    int playerX = Player_GetXPos(fieldSystem->playerAvatar);
    int playerZ = Player_GetZPos(fieldSystem->playerAvatar);

    if (task->direction == 0) {
        playerZ -= 1;
    } else if (task->direction == 1) {
        playerZ += 1;
    } else {
        GF_ASSERT(0);
    }

    return sub_0206326C(fieldSystem->mapObjMan, playerX, playerZ, 0);
}

static BOOL BerryWatering_IsBerryPatch(MapObject *mapObject)
{
    return MapObject_GetGraphicsID(mapObject) == 0x64;
}

static void BerryWatering_WaterPatch(FieldSystem *fieldSystem, BerryWateringTask *task)
{
    MapObject *targetPatch = BerryWatering_GetTargetPatch(fieldSystem, task);

    if (targetPatch != NULL) {
        BerryPatches_ResetMoisture(fieldSystem, targetPatch);
    }
}

static void BerryWatering_StartAnimation(FieldSystem *fieldSystem, BerryWateringTask *task, const MapObjectAnimCmd *animationCmd)
{
    MapObject *playerObject = Player_MapObject(fieldSystem->playerAvatar);
    task->animationTask = MapObject_StartAnimation(playerObject, animationCmd);
}

static BOOL BerryWatering_TaskMain(FieldTask *taskManager)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskManager);
    BerryWateringTask *task = FieldTask_GetEnv(taskManager);

    switch (task->state) {
    case 0:
        PlayerAvatar_SetTransitionState(fieldSystem->playerAvatar, PLAYER_TRANSITION_WATER_BERRIES);
        PlayerAvatar_RequestChangeState(fieldSystem->playerAvatar);
        MapObject_SetPauseMovementOff(Player_MapObject(fieldSystem->playerAvatar));
        task->state = 1;
        break;
    case 1:
        BerryWatering_WaterPatch(fieldSystem, task);
        task->timer = 0;
        task->state = 2;
    case 2:
        if (gSystem.heldKeys & PAD_KEY_LEFT) {
            MapObject *adjacentObject = BerryWatering_GetAdjacentObject(fieldSystem, 2);

            if ((adjacentObject == NULL) || !BerryWatering_IsBerryPatch(adjacentObject)) {
                task->state = 4;
                break;
            } else if (!BerryWatering_CheckCollision(fieldSystem, task, 2)) {
                BerryWatering_StartAnimation(fieldSystem, task, Unk_020EC51C);
                task->state = 3;
                break;
            }
        } else if (gSystem.heldKeys & PAD_KEY_RIGHT) {
            MapObject *adjacentObject = BerryWatering_GetAdjacentObject(fieldSystem, 3);

            if ((adjacentObject == NULL) || !BerryWatering_IsBerryPatch(adjacentObject)) {
                task->state = 4;
                break;
            } else if (!BerryWatering_CheckCollision(fieldSystem, task, 3)) {
                BerryWatering_StartAnimation(fieldSystem, task, Unk_020EC524);
                task->state = 3;
                break;
            }
        } else if ((gSystem.heldKeys & PAD_KEY_UP) && (task->direction == 1)) {
            Player_SetDir(fieldSystem->playerAvatar, 0);
            task->state = 4;
            break;
        } else if ((gSystem.heldKeys & PAD_KEY_DOWN) && (task->direction == 0)) {
            task->state = 4;
            break;
        }

        task->timer++;

        if (task->timer > 30 * 3) {
            Player_SetDir(fieldSystem->playerAvatar, task->direction);
            task->state = 4;
        }
        break;
    case 3:
        if (MapObject_HasAnimationEnded(task->animationTask)) {
            MapObject *targetPatch;

            MapObject_FinishAnimation(task->animationTask);
            targetPatch = BerryWatering_GetTargetPatch(fieldSystem, task);

            if ((targetPatch != NULL) && BerryWatering_IsBerryPatch(targetPatch)) {
                task->state = 1;
            } else {
                Player_SetDir(fieldSystem->playerAvatar, task->direction);
                task->state = 4;
            }
        }
        break;
    case 4:
        Player_SetDir(fieldSystem->playerAvatar, task->direction);
        MapObject_SetPauseMovementOn(Player_MapObject(fieldSystem->playerAvatar));
        Heap_Free(task);
        return 1;
    }

    return 0;
}

void BerryPatches_StartWatering(FieldSystem *fieldSystem)
{
    BerryWateringTask *task = Heap_Alloc(HEAP_ID_FIELD3, sizeof(BerryWateringTask));

    task->state = 0;
    task->animationTask = NULL;
    task->direction = PlayerAvatar_GetDir(fieldSystem->playerAvatar);

    FieldTask_InitCall(fieldSystem->task, BerryWatering_TaskMain, task);
}

void BerryPatches_EndWatering(FieldSystem *fieldSystem)
{
    int playerState = PlayerAvatar_GetPlayerState(fieldSystem->playerAvatar);
    u32 transitionState = Player_ConvertStateToTransition(playerState);

    PlayerAvatar_SetTransitionState(fieldSystem->playerAvatar, transitionState);
    PlayerAvatar_RequestChangeState(fieldSystem->playerAvatar);
}
