#include <nitro.h>
#include <nitro/sinit.h>
#include <string.h>

#include "applications/poketch/poketch_system.h"
#include "overlay034/dowsing_machine_task_data.h"
#include "overlay034/ov34_02256540.h"
#include "overlay034/struct_ov34_02256540_decl.h"

#include "bg_window.h"
#include "heap.h"
#include "script_manager.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    DowsingMachineTaskData taskData;
    UnkStruct_ov34_02256540 *unk_48;
    PoketchSystem *poketchSys;
    HiddenItemTilePosition *unk_50;
} UnkStruct_ov34_0225621C;

static void NitroStaticInit(void);

static BOOL ov34_022561D4(void **param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3);
static BOOL ov34_0225621C(UnkStruct_ov34_0225621C *param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3);
static void ov34_02256244(UnkStruct_ov34_0225621C *param0);
static void ov34_02256260(SysTask *param0, void *param1);
static void ov34_02256294(void *param0);
static void ov34_0225629C(UnkStruct_ov34_0225621C *param0, u32 param1);
static BOOL ov34_022562B0(UnkStruct_ov34_0225621C *param0);
static BOOL ov34_022562F0(UnkStruct_ov34_0225621C *param0);
static BOOL DowsingMachine_IfScreenTapped(UnkStruct_ov34_0225621C *param0, u32 *param1, u32 *param2);
static void DowsingMachine_FindNearbyHiddenItems(UnkStruct_ov34_0225621C *param0, int param1, int param2);
static void DowsingMachine_GetItemScreenPosition(int screenTileX, int screenTileZ, int *screenX, int *screenZ);
static BOOL ov34_0225650C(UnkStruct_ov34_0225621C *param0);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(ov34_022561D4, ov34_02256294);
}

static BOOL ov34_022561D4(void **param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3)
{
    UnkStruct_ov34_0225621C *v0 = (UnkStruct_ov34_0225621C *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov34_0225621C));

    if (v0 != NULL) {
        if (ov34_0225621C(v0, poketchSys, param2, param3)) {
            if (SysTask_Start(ov34_02256260, v0, 1) != NULL) {
                *param0 = v0;
                return 1;
            }
        }

        Heap_Free(v0);
    }

    return 0;
}

static BOOL ov34_0225621C(UnkStruct_ov34_0225621C *param0, PoketchSystem *poketchSys, BgConfig *param2, u32 param3)
{
    if (ov34_02256540(&(param0->unk_48), &(param0->taskData), param2)) {
        param0->unk_00 = 0;
        param0->unk_01 = 0;
        param0->unk_02 = 0;
        param0->unk_50 = NULL;
        param0->poketchSys = poketchSys;

        return 1;
    }

    return 0;
}

static void ov34_02256244(UnkStruct_ov34_0225621C *param0)
{
    if (param0->unk_50) {
        Heap_Free(param0->unk_50);
    }

    ov34_02256604(param0->unk_48);
    Heap_Free(param0);
}

static void ov34_02256260(SysTask *param0, void *param1)
{
    static BOOL (*const v0[])(UnkStruct_ov34_0225621C *) = {
        ov34_022562B0,
        ov34_022562F0,
        ov34_0225650C
    };

    UnkStruct_ov34_0225621C *v1 = (UnkStruct_ov34_0225621C *)param1;

    if (v1->unk_00 < NELEMS(v0)) {
        if (v0[v1->unk_00](v1)) {
            ov34_02256244(v1);
            SysTask_Done(param0);
            PoketchSystem_NotifyAppUnloaded(v1->poketchSys);
        }
    } else {
    }
}

static void ov34_02256294(void *param0)
{
    ((UnkStruct_ov34_0225621C *)param0)->unk_02 = 1;
}

static void ov34_0225629C(UnkStruct_ov34_0225621C *param0, u32 param1)
{
    if (param0->unk_02 == 0) {
        param0->unk_00 = param1;
    } else {
        param0->unk_00 = 2;
    }

    param0->unk_01 = 0;
}

static BOOL ov34_022562B0(UnkStruct_ov34_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov34_02256640(param0->unk_48, 0);
        param0->unk_01++;
        break;
    case 1:
        if (ov34_02256664(param0->unk_48, 0)) {
            PoketchSystem_NotifyAppLoaded(param0->poketchSys);
            ov34_0225629C(param0, 1);
        }
        break;
    }

    return 0;
}

static BOOL ov34_022562F0(UnkStruct_ov34_0225621C *param0)
{
    u32 v0, v1;

    if (param0->unk_02) {
        ov34_02256A0C(param0->unk_48);
        ov34_0225629C(param0, 2);
        return 0;
    }

    switch (param0->unk_01) {
    case 0:
        if (DowsingMachine_IfScreenTapped(param0, &v0, &v1)) {
            DowsingMachine_FindNearbyHiddenItems(param0, v0, v1);
            PoketchSystem_PlaySoundEffect(1640);
            ov34_02256640(param0->unk_48, 2);
            param0->unk_01 = 1;
        }
        break;
    case 1:
        if (ov34_02256664(param0->unk_48, 2)) {
            param0->unk_01 = 0;
            break;
        }

        if ((PoketchSystem_IsPlayerMoving(param0->poketchSys) == 1) || (PoketechSystem_IsRunningTask(param0->poketchSys))) {
            ov34_02256A0C(param0->unk_48);
            param0->unk_01 = 2;
            break;
        }

        if (DowsingMachine_IfScreenTapped(param0, &v0, &v1)) {
            DowsingMachine_FindNearbyHiddenItems(param0, v0, v1);
            ov34_02256A0C(param0->unk_48);
            param0->unk_01 = 3;
            break;
        }
        break;
    case 2:
        if (ov34_02256664(param0->unk_48, 2)) {
            param0->unk_01 = 0;
        }
        break;
    case 3:
        if (ov34_02256664(param0->unk_48, 2)) {
            PoketchSystem_PlaySoundEffect(1640);
            ov34_02256640(param0->unk_48, 2);
            param0->unk_01 = 1;
        }
        break;
    }

    return 0;
}

static BOOL DowsingMachine_IfScreenTapped(UnkStruct_ov34_0225621C *param0, u32 *x, u32 *y)
{
    if (PoketechSystem_IsRunningTask(param0->poketchSys) == 0) {
        if (TouchScreen_GetTapState(x, y)) {
            if (((u32)((*x) - 24) < (u32)(200 - 24)) & ((u32)((*y) - 24) < (u32)(168 - 24))) {
                return 1;
            }
        }
    }

    return 0;
}

static void DowsingMachine_FindNearbyHiddenItems(UnkStruct_ov34_0225621C *param0, int touchX, int touchZ)
{
    static const fx32 rangeDistances[] = {
        8 << FX32_SHIFT,
        24 << FX32_SHIFT,
        48 << FX32_SHIFT,
    };
    HiddenItemTilePosition *hiddenItems = FieldSystem_GetNearbyHiddenItems(PoketchSystem_GetFieldSystem(param0->poketchSys), HEAP_ID_POKETCH_APP);
    DowsingMachineTaskData *taskData = &(param0->taskData);

    taskData->foundItemType = DOWSING_MACHINE_FOUND_NO_ITEMS;
    taskData->touchX = touchX;
    taskData->touchZ = touchZ;
    taskData->nearbyItemCount = 0;

    if (hiddenItems) {
        int screenX, screenZ;
        int itemIndex;
        fx32 itemDistance;

        for (itemIndex = 0; hiddenItems[itemIndex].range != 0xff; itemIndex++) {
            DowsingMachine_GetItemScreenPosition(hiddenItems[itemIndex].screenTileX, hiddenItems[itemIndex].screenTileZ, &screenX, &screenZ);
            itemDistance = FX_Sqrt(((screenX - touchX) * (screenX - touchX) + (screenZ - touchZ) * (screenZ - touchZ)) << FX32_SHIFT);

            if (itemDistance <= rangeDistances[hiddenItems[itemIndex].range]) {
                if (taskData->nearbyItemCount < 8) {
                    taskData->hiddenItemPositions[taskData->nearbyItemCount].screenX = screenX;
                    taskData->hiddenItemPositions[taskData->nearbyItemCount].screenZ = screenZ;
                    taskData->hiddenItemPositions[taskData->nearbyItemCount].range = hiddenItems[itemIndex].range;
                    taskData->nearbyItemCount++;
                    taskData->foundItemType = DOWSING_MACHINE_FOUND_NEARBY_ITEMS;
                }
            } else if (itemDistance <= rangeDistances[(NELEMS(rangeDistances) - 1)]) {
                if (taskData->foundItemType == 0) {
                    taskData->foundItemType = DOWSING_MACHINE_FOUND_FAR_ITEMS;
                }
            }
        }

        Heap_Free(hiddenItems);
    }
}

static void DowsingMachine_GetItemScreenPosition(int screenTileX, int screenTileZ, int *screenX, int *screenZ)
{
    fx32 v0, v1;
    fx32 v2, v3;

    screenTileX -= 7;
    screenTileZ -= 7;

    *screenX = 112 + (screenTileX * 11);
    *screenZ = 101 + (screenTileZ * 11);
}

static BOOL ov34_0225650C(UnkStruct_ov34_0225621C *param0)
{
    switch (param0->unk_01) {
    case 0:
        ov34_02256640(param0->unk_48, 1);
        param0->unk_01++;
        break;
    case 1:
        if (ov34_02256670(param0->unk_48)) {
            return 1;
        }
        break;
    }

    return 0;
}
