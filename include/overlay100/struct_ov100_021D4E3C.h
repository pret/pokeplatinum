#ifndef POKEPLATINUM_STRUCT_OV100_021D4E3C_H
#define POKEPLATINUM_STRUCT_OV100_021D4E3C_H

#include "screen_scroll_manager.h"
#include "sys_task_manager.h"

typedef struct ScreenScrollTask {
    ScreenScrollManager *screenScrollMgr;
    SysTask *task;
    u32 swapCounter;
} ScreenScrollTask;

#endif // POKEPLATINUM_STRUCT_OV100_021D4E3C_H
