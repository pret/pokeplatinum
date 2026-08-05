#ifndef POKEPLATINUM_OV104_0223C164_H
#define POKEPLATINUM_OV104_0223C164_H

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

#endif // POKEPLATINUM_OV104_0223C164_H
