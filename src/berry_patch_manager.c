#include "berry_patch_manager.h"

#include <nitro.h>
#include <string.h>

#include "constants/items.h"

#include "struct_decls/berry_patch_manager_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay005/map_object_anim_cmd.h"
#include "overlay005/ov5_021DF440.h"
#include "overlay005/ov5_021DFB54.h"
#include "overlay005/struct_ov5_021DF47C_decl.h"

#include "bag.h"
#include "berry_patch_graphics.h"
#include "berry_patches.h"
#include "easy3d.h"
#include "field_task.h"
#include "gfx_box_test.h"
#include "heap.h"
#include "location.h"
#include "map_object.h"
#include "player_avatar.h"
#include "savedata_misc.h"
#include "sys_task_manager.h"
#include "system.h"
#include "terrain_collision_manager.h"
#include "tv_episode_segment.h"
#include "unk_020655F4.h"

struct BerryPatchManager {
    enum HeapID heapID;
    BerryGrowthData *growthData;
    NNSG3dRenderObj renderObj;
    NNSG3dResMdl *model;
    NNSG3dResFileHeader *resource;
};

typedef struct BerryWateringTask {
    enum BerryWateringState state;
    enum FaceDirection direction;
    int timer;
    SysTask *animationTask;
} BerryWateringTask;

static void BerryPatchManager_Init3DRendering(FieldSystem *fieldSystem, BerryPatchManager *manager);
static void BerryPatchManager_Cleanup3DRendering(BerryPatchManager *manager);

static u16 BerryPatches_ConvertTagNumberToItemID(int tagNumber)
{
    if (tagNumber == BERRY_TAG_NONE) {
        return ITEM_NONE;
    }

    return tagNumber + FIRST_BERRY_IDX - 1;
}

static u16 BerryPatches_ConvertItemIDToTagNumber(int itemID)
{
    if (itemID == ITEM_NONE) {
        return BERRY_TAG_NONE;
    }

    return itemID - FIRST_BERRY_IDX + 1;
}

static u16 BerryPatches_ConvertMulchTypeToItemID(enum MulchType mulchType)
{
    if (mulchType == MULCH_TYPE_NONE) {
        return ITEM_NONE;
    }

    return mulchType + FIRST_MULCH_IDX - 1;
}

static enum MulchType BerryPatches_ConvertItemIDToMulchType(int itemID)
{
    if (itemID == ITEM_NONE) {
        return MULCH_TYPE_NONE;
    }

    return itemID - FIRST_MULCH_IDX + 1;
}

BerryPatchManager *BerryPatchManager_New(FieldSystem *fieldSystem, enum HeapID heapID)
{
    BerryPatchManager *manager = Heap_Alloc(heapID, sizeof(BerryPatchManager));
    MI_CpuClear8(manager, sizeof(BerryPatchManager));

    manager->heapID = heapID;
    manager->growthData = BerryGrowthData_Init(heapID);

    BerryPatchManager_Init3DRendering(fieldSystem, manager);
    return manager;
}

void BerryPatchManager_Free(BerryPatchManager *manager)
{
    BerryPatchManager_Cleanup3DRendering(manager);
    Heap_Free(manager->growthData);
    Heap_Free(manager);
}

void BerryPatches_ElapseTime(FieldSystem *fieldSystem, int minutes)
{
    if (fieldSystem->unk_04 == NULL) {
        BerryGrowthData *growthData = BerryGrowthData_Init(HEAP_ID_FIELD2);
        BerryPatch *berryPatches = MiscSaveBlock_GetBerryPatches(fieldSystem->saveData);
        BerryPatches_ElapseMinutes(berryPatches, growthData, minutes);
        Heap_Free(growthData);
    } else {
        BerryGrowthData *growthData = fieldSystem->unk_04->berryPatchManager->growthData;
        BerryPatch *berryPatches = MiscSaveBlock_GetBerryPatches(fieldSystem->saveData);
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

    return GFXBoxTest_IsModelInView(fieldSystem->unk_04->berryPatchManager->model, position, &transform, &scale) != FALSE;
}

void BerryPatches_UpdateGrowthStates(FieldSystem *fieldSystem)
{
    int objectIndex = 0;
    MapObject *mapObject;
    BerryPatch *berryPatches = MiscSaveBlock_GetBerryPatches(fieldSystem->saveData);

    while (MapObjectMan_FindObjectWithStatus(fieldSystem->mapObjMan, &mapObject, &objectIndex, 1 << 0) == 1) {
        if (BerryPatchGraphics_IsBerryPatch(MapObject_GetGraphicsID(mapObject)) == TRUE && BerryPatches_IsInView(fieldSystem, MapObject_GetPos(mapObject))) {
            int patchID = MapObject_GetDataAt(mapObject, 0);
            BerryPatches_SetIsPatchGrowing(berryPatches, patchID, TRUE);
        }
    }
}

BOOL BerryPatches_HarvestBerry(FieldSystem *fieldSystem, MapObject *mapObject)
{
    int patchID, yieldAmount, berryID;
    BerryPatch *berryPatches = MiscSaveBlock_GetBerryPatches(fieldSystem->saveData);

    patchID = MapObject_GetDataAt(mapObject, 0);
    berryID = BerryPatches_GetPatchBerryID(berryPatches, patchID);
    yieldAmount = BerryPatches_GetPatchYield(berryPatches, patchID);

    FieldSystem_SaveTVEpisodeSegment_PlantingAndWateringShow(fieldSystem, BerryPatches_ConvertTagNumberToItemID(berryID), BerryPatches_GetPatchYieldRating(berryPatches, patchID), yieldAmount);
    BerryPatches_HarvestPatch(berryPatches, patchID);
    BerryPatchGraphics_MarkForUpdate(mapObject);

    return Bag_TryAddItem(SaveData_GetBag(fieldSystem->saveData), BerryPatches_ConvertTagNumberToItemID(berryID), yieldAmount, HEAP_ID_FIELD1);
}

void BerryPatches_SetMulchType(FieldSystem *fieldSystem, MapObject *mapObject, u16 mulchItemID)
{
    BerryPatch *berryPatches = MiscSaveBlock_GetBerryPatches(fieldSystem->saveData);
    int patchID = MapObject_GetDataAt(mapObject, 0);
    BerryPatches_SetPatchMulchType(berryPatches, patchID, BerryPatches_ConvertItemIDToMulchType(mulchItemID));
}

void BerryPatches_PlantBerry(FieldSystem *fieldSystem, MapObject *mapObject, u16 berryItemID)
{
    BerryPatch *berryPatches = MiscSaveBlock_GetBerryPatches(fieldSystem->saveData);
    int patchID = MapObject_GetDataAt(mapObject, 0);
    BerryPatches_PlantInPatch(berryPatches, patchID, fieldSystem->unk_04->berryPatchManager->growthData, BerryPatches_ConvertItemIDToTagNumber(berryItemID));
}

void BerryPatches_ResetMoisture(FieldSystem *fieldSystem, MapObject *mapObject)
{
    BerryPatch *berryPatches = MiscSaveBlock_GetBerryPatches(fieldSystem->saveData);
    int patchID = MapObject_GetDataAt(mapObject, 0);
    BerryPatches_ResetPatchMoisture(berryPatches, patchID);
}

int BerryPatches_GetGrowthStage(const FieldSystem *fieldSystem, const MapObject *mapObject)
{
    BerryPatch *berryPatches = MiscSaveBlock_GetBerryPatches(fieldSystem->saveData);
    int patchID = MapObject_GetDataAt(mapObject, 0);
    return BerryPatches_GetPatchGrowthStage(berryPatches, patchID);
}

int BerryPatches_GetBerryID(const FieldSystem *fieldSystem, const MapObject *mapObject)
{
    BerryPatch *berryPatches = MiscSaveBlock_GetBerryPatches(fieldSystem->saveData);
    int patchID = MapObject_GetDataAt(mapObject, 0);
    return BerryPatches_GetPatchBerryID(berryPatches, patchID);
}

u16 BerryPatches_GetItemID(const FieldSystem *fieldSystem, const MapObject *mapObject)
{
    BerryPatch *berryPatches = MiscSaveBlock_GetBerryPatches(fieldSystem->saveData);
    int patchID = MapObject_GetDataAt(mapObject, 0);
    return BerryPatches_ConvertTagNumberToItemID(BerryPatches_GetPatchBerryID(berryPatches, patchID));
}

u16 BerryPatches_GetMulchItemID(const FieldSystem *fieldSystem, const MapObject *mapObject)
{
    BerryPatch *berryPatches = MiscSaveBlock_GetBerryPatches(fieldSystem->saveData);
    int patchID = MapObject_GetDataAt(mapObject, 0);
    return BerryPatches_ConvertMulchTypeToItemID(BerryPatches_GetPatchMulchType(berryPatches, patchID));
}

int BerryPatches_GetMoisture(const FieldSystem *fieldSystem, const MapObject *mapObject)
{
    BerryPatch *berryPatches = MiscSaveBlock_GetBerryPatches(fieldSystem->saveData);
    int patchID = MapObject_GetDataAt(mapObject, 0);
    return BerryPatches_GetPatchMoisture(berryPatches, patchID);
}

int BerryPatches_GetYield(const FieldSystem *fieldSystem, const MapObject *mapObject)
{
    BerryPatch *berryPatches = MiscSaveBlock_GetBerryPatches(fieldSystem->saveData);
    int patchID = MapObject_GetDataAt(mapObject, 0);
    return BerryPatches_GetPatchYield(berryPatches, patchID);
}

u32 BerryPatches_GetPatchFlags(const FieldSystem *fieldSystem, const MapObject *mapObject)
{
    u32 patchFlags = 0;

    if ((mapObject == NULL) || (MapObject_GetGraphicsID(mapObject) != 100)) {
        return BERRY_PATCH_FLAG_INVALID;
    }

    switch (BerryPatches_GetGrowthStage(fieldSystem, mapObject)) {
    case BERRY_GROWTH_STAGE_NONE:
        patchFlags |= BERRY_PATCH_FLAG_EMPTY;

        if (BerryPatches_GetMulchItemID(fieldSystem, mapObject) == ITEM_NONE) {
            patchFlags |= BERRY_PATCH_FLAG_CAN_MULCH;
        }
        break;
    default:
        patchFlags |= BERRY_PATCH_FLAG_HAS_BERRY;
        break;
    }

    return patchFlags;
}

// Animation sequence for watering berries while facing left
static const MapObjectAnimCmd BerryWatering_LeftAnimation[] = {
    { 10, 1 }, // Play animation frame 10 for 1 frame
    { 0xfe, 0 } // End of animation sequence
};

// Animation sequence for watering berries while facing right
static const MapObjectAnimCmd BerryWatering_RightAnimation[] = {
    { 11, 1 }, // Play animation frame 11 for 1 frame
    { 0xfe, 0 } // End of animation sequence
};

static BOOL BerryPatches_CheckCollision(FieldSystem *fieldSystem, BerryWateringTask *task, enum FaceDirection direction)
{
    int playerX = Player_GetXPos(fieldSystem->playerAvatar);
    int playerZ = Player_GetZPos(fieldSystem->playerAvatar);

    if (direction == FACE_LEFT) {
        playerX--;
    } else if (direction == FACE_RIGHT) {
        playerX++;
    } else if (direction == FACE_UP) {
        playerZ--;
    } else if (direction == FACE_DOWN) {
        playerZ++;
    } else {
        GF_ASSERT(FALSE);
    }

    if (TerrainCollisionManager_CheckCollision(fieldSystem, playerX, playerZ)) {
        return TRUE;
    }

    return sub_0206326C(fieldSystem->mapObjMan, playerX, playerZ, 0) != NULL;
}

static MapObject *BerryPatches_GetAdjacentObject(FieldSystem *fieldSystem, enum FaceDirection direction)
{
    int playerX = Player_GetXPos(fieldSystem->playerAvatar);
    int playerZ = Player_GetZPos(fieldSystem->playerAvatar);
    playerZ -= 1;

    if (direction == FACE_LEFT) {
        playerX -= 1;
    } else if (direction == FACE_RIGHT) {
        playerX += 1;
    }

    return sub_0206326C(fieldSystem->mapObjMan, playerX, playerZ, 0);
}

static MapObject *BerryPatches_GetTargetPatch(FieldSystem *fieldSystem, BerryWateringTask *task)
{
    int playerX = Player_GetXPos(fieldSystem->playerAvatar);
    int playerZ = Player_GetZPos(fieldSystem->playerAvatar);

    if (task->direction == FACE_UP) {
        playerZ -= 1;
    } else if (task->direction == FACE_DOWN) {
        playerZ += 1;
    } else {
        GF_ASSERT(FALSE);
    }

    return sub_0206326C(fieldSystem->mapObjMan, playerX, playerZ, 0);
}

static BOOL BerryPatches_IsBerryPatch(MapObject *mapObject)
{
    return MapObject_GetGraphicsID(mapObject) == 100;
}

static void BerryPatches_WaterPatch(FieldSystem *fieldSystem, BerryWateringTask *task)
{
    MapObject *targetPatch = BerryPatches_GetTargetPatch(fieldSystem, task);

    if (targetPatch != NULL) {
        BerryPatches_ResetMoisture(fieldSystem, targetPatch);
    }
}

static void BerryPatches_StartAnimation(FieldSystem *fieldSystem, BerryWateringTask *task, const MapObjectAnimCmd *animationCmd)
{
    MapObject *playerObject = Player_MapObject(fieldSystem->playerAvatar);
    task->animationTask = MapObject_StartAnimation(playerObject, animationCmd);
}

static BOOL BerryPatches_TaskMain(FieldTask *taskManager)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskManager);
    BerryWateringTask *task = FieldTask_GetEnv(taskManager);

    switch (task->state) {
    case BERRY_WATERING_STATE_INIT:
        PlayerAvatar_SetTransitionState(fieldSystem->playerAvatar, PLAYER_TRANSITION_WATER_BERRIES);
        PlayerAvatar_RequestChangeState(fieldSystem->playerAvatar);
        MapObject_SetPauseMovementOff(Player_MapObject(fieldSystem->playerAvatar));
        task->state = BERRY_WATERING_STATE_WATERING;
        break;
    case BERRY_WATERING_STATE_WATERING:
        BerryPatches_WaterPatch(fieldSystem, task);
        task->timer = 0;
        task->state = BERRY_WATERING_STATE_INPUT;
    case BERRY_WATERING_STATE_INPUT:
        if (gSystem.heldKeys & PAD_KEY_LEFT) {
            MapObject *adjacentObject = BerryPatches_GetAdjacentObject(fieldSystem, FACE_LEFT);

            if ((adjacentObject == NULL) || !BerryPatches_IsBerryPatch(adjacentObject)) {
                task->state = BERRY_WATERING_STATE_CLEANUP;
                break;
            } else if (!BerryPatches_CheckCollision(fieldSystem, task, FACE_LEFT)) {
                BerryPatches_StartAnimation(fieldSystem, task, BerryWatering_LeftAnimation);
                task->state = BERRY_WATERING_STATE_ANIMATION;
                break;
            }
        } else if (gSystem.heldKeys & PAD_KEY_RIGHT) {
            MapObject *adjacentObject = BerryPatches_GetAdjacentObject(fieldSystem, FACE_RIGHT);

            if ((adjacentObject == NULL) || !BerryPatches_IsBerryPatch(adjacentObject)) {
                task->state = BERRY_WATERING_STATE_CLEANUP;
                break;
            } else if (!BerryPatches_CheckCollision(fieldSystem, task, FACE_RIGHT)) {
                BerryPatches_StartAnimation(fieldSystem, task, BerryWatering_RightAnimation);
                task->state = BERRY_WATERING_STATE_ANIMATION;
                break;
            }
        } else if ((gSystem.heldKeys & PAD_KEY_UP) && (task->direction == FACE_DOWN)) {
            Player_SetDir(fieldSystem->playerAvatar, FACE_UP);
            task->state = BERRY_WATERING_STATE_CLEANUP;
            break;
        } else if ((gSystem.heldKeys & PAD_KEY_DOWN) && (task->direction == FACE_UP)) {
            task->state = BERRY_WATERING_STATE_CLEANUP;
            break;
        }

        task->timer++;

        if (task->timer > 30 * 3) {
            Player_SetDir(fieldSystem->playerAvatar, task->direction);
            task->state = BERRY_WATERING_STATE_CLEANUP;
        }
        break;
    case BERRY_WATERING_STATE_ANIMATION:
        if (MapObject_HasAnimationEnded(task->animationTask)) {
            MapObject *targetPatch;

            MapObject_FinishAnimation(task->animationTask);
            targetPatch = BerryPatches_GetTargetPatch(fieldSystem, task);

            if ((targetPatch != NULL) && BerryPatches_IsBerryPatch(targetPatch)) {
                task->state = BERRY_WATERING_STATE_WATERING;
            } else {
                Player_SetDir(fieldSystem->playerAvatar, task->direction);
                task->state = BERRY_WATERING_STATE_CLEANUP;
            }
        }
        break;
    case BERRY_WATERING_STATE_CLEANUP:
        Player_SetDir(fieldSystem->playerAvatar, task->direction);
        MapObject_SetPauseMovementOn(Player_MapObject(fieldSystem->playerAvatar));
        Heap_Free(task);
        return TRUE;
    }

    return FALSE;
}

void BerryPatches_StartWatering(FieldSystem *fieldSystem)
{
    BerryWateringTask *task = Heap_Alloc(HEAP_ID_FIELD3, sizeof(BerryWateringTask));

    task->state = BERRY_WATERING_STATE_INIT;
    task->animationTask = NULL;
    task->direction = PlayerAvatar_GetDir(fieldSystem->playerAvatar);

    FieldTask_InitCall(fieldSystem->task, BerryPatches_TaskMain, task);
}

void BerryPatches_EndWatering(FieldSystem *fieldSystem)
{
    int playerState = PlayerAvatar_GetPlayerState(fieldSystem->playerAvatar);
    u32 transitionState = Player_ConvertStateToTransition(playerState);

    PlayerAvatar_SetTransitionState(fieldSystem->playerAvatar, transitionState);
    PlayerAvatar_RequestChangeState(fieldSystem->playerAvatar);
}
