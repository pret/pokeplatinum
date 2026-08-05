#include "overlay104/ov104_0223C164.h"

#include <nitro.h>

#include "constants/battle_frontier.h"
#include "constants/battle_frontier_stats.h"

#include "bg_window.h"
#include "heap.h"
#include "sys_task.h"
#include "sys_task_manager.h"

#define TILESET_WIDTH      16
#define DARK_TILES_OFFSET  12
#define LIGHT_TILES_OFFSET 14

static WFCFacilitySelectorMonitorFlicker *WFCFacilitySelectorMonitorFlicker_Init(BgConfig *bgConfig);
static void Task_UpdateMonitorTiles(SysTask *task, void *taskData);
static void GetMonitorTileset(u16 *tiles, u8 tileset);
static void WFCFacilitySelectorMonitorFlicker_Free(WFCFacilitySelectorMonitorFlicker *flicker);

WFCFacilitySelectorEffects *WFCFacilitySelectorEffects_Init(BgConfig *bgConfig)
{
    WFCFacilitySelectorEffects *effects = Heap_Alloc(HEAP_ID_94, sizeof(WFCFacilitySelectorEffects));
    MI_CpuClear8(effects, sizeof(WFCFacilitySelectorEffects));
    effects->flicker = WFCFacilitySelectorMonitorFlicker_Init(bgConfig);

    return effects;
}

static WFCFacilitySelectorMonitorFlicker *WFCFacilitySelectorMonitorFlicker_Init(BgConfig *bgConfig)
{
    WFCFacilitySelectorMonitorFlicker *flicker = Heap_Alloc(HEAP_ID_94, sizeof(WFCFacilitySelectorMonitorFlicker));
    MI_CpuClear8(flicker, sizeof(WFCFacilitySelectorMonitorFlicker));

    flicker->bgConfig = bgConfig;
    flicker->monitorState = 0;
    flicker->task = SysTask_Start(Task_UpdateMonitorTiles, flicker, 80000 - 500);

    return flicker;
}

static void Task_UpdateMonitorTiles(SysTask *task, void *taskData)
{
    WFCFacilitySelectorMonitorFlicker *flicker = taskData;

    if (flicker->delay < 2) {
        flicker->delay++;
        return;
    }

    flicker->delay = 0;
    flicker->monitorState ^= 1;

    u16 tiles[4];
    GetMonitorTileset(tiles, flicker->monitorState);

    Bg_LoadToTilemapRect(flicker->bgConfig, BG_LAYER_MAIN_3, tiles, 14, 2, 2, 2);
    Bg_ScheduleTilemapTransfer(flicker->bgConfig, BG_LAYER_MAIN_3);
}

static void GetMonitorTileset(u16 *tiles, u8 tileset)
{
    u32 offset = tileset == 0 ? DARK_TILES_OFFSET : LIGHT_TILES_OFFSET;

    for (u32 r = 0; r < 2; r++) {
        for (u32 c = 0; c < 2; c++) {
            tiles[(r * 2) + c] = ((TILESET_WIDTH * 6) + r * TILESET_WIDTH) + (offset + c);
        }
    }
}

void WFCFacilitySelectorEffects_Free(WFCFacilitySelectorEffects *effects)
{
    WFCFacilitySelectorMonitorFlicker_Free(effects->flicker);
    Heap_Free(effects);
}

static void WFCFacilitySelectorMonitorFlicker_Free(WFCFacilitySelectorMonitorFlicker *flicker)
{
    SysTask_Done(flicker->task);
    Heap_Free(flicker);
}

u16 BattleFrontier_GetWFCLatestStreakIndex(u8 facility)
{
    u16 index;

    switch (facility) {
    case FACILITY_FACTORY:
        index = STAT_FACTORY_LATEST_STREAK_50_MULTI_WFC;
        break;
    case FACILITY_FACTORY_OPEN:
        index = STAT_FACTORY_LATEST_STREAK_OPEN_MULTI_WFC;
        break;
    case FACILITY_CASTLE:
        index = STAT_CASTLE_LATEST_STREAK_MULTI_WFC;
        break;
    case FACILITY_HALL:
        index = STAT_HALL_LATEST_STREAK_MULTI_WFC;
        break;
    case FACILITY_ARCADE:
        index = STAT_ARCADE_LATEST_STREAK_MULTI_WFC;
        break;
    case FACILITY_TOWER:
        index = STAT_TOWER_LATEST_STREAK_MODE_6;
        break;
    }

    return index;
}

u16 BattleFrontier_GetWFCStreakActiveIndex(u8 facility)
{
    u16 index;

    switch (facility) {
    case FACILITY_FACTORY:
        index = STAT_FACTORY_50_WFC_STREAK_ACTIVE;
        break;
    case FACILITY_FACTORY_OPEN:
        index = STAT_FACTORY_OPEN_WFC_STREAK_ACTIVE;
        break;
    case FACILITY_CASTLE:
        index = STAT_CASTLE_WFC_STREAK_ACTIVE;
        break;
    case FACILITY_HALL:
        index = STAT_HALL_WFC_STREAK_ACTIVE;
        break;
    case FACILITY_ARCADE:
        index = STAT_ARCADE_WFC_STREAK_ACTIVE;
        break;
    case FACILITY_TOWER:
        index = STAT_TOWER_WFC_STREAK_ACTIVE;
        break;
    }

    return index;
}
