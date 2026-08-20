#ifndef POKEPLATINUM_WFC_FACILITY_SELECTOR_HELPERS_H
#define POKEPLATINUM_WFC_FACILITY_SELECTOR_HELPERS_H

#include "bg_window.h"
#include "sys_task_manager.h"

typedef struct WFCFacilitySelectorMonitorFlicker {
    SysTask *task;
    BgConfig *bgConfig;
    u16 monitorState;
    u16 delay;
} WFCFacilitySelectorMonitorFlicker;

typedef struct WFCFacilitySelectorEffects {
    BgConfig *unused;
    WFCFacilitySelectorMonitorFlicker *flicker;
} WFCFacilitySelectorEffects;

WFCFacilitySelectorEffects *WFCFacilitySelectorEffects_Init(BgConfig *bgConfig);
void WFCFacilitySelectorEffects_Free(WFCFacilitySelectorEffects *effects);
u16 BattleFrontier_GetWFCLatestStreakIndex(u8 facility);
u16 BattleFrontier_GetWFCStreakActiveIndex(u8 facility);

#endif // POKEPLATINUM_WFC_FACILITY_SELECTOR_HELPERS_H
