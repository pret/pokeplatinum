#ifndef POKEPLATINUM_STRUCT_CONTEST_CAMERA_FLASH_TASK_H
#define POKEPLATINUM_STRUCT_CONTEST_CAMERA_FLASH_TASK_H

#include "sys_task_manager.h"

typedef struct ContestCameraFlashTask {
    SysTask *sysTask;
    const u8 *cameraFlashFrameDelays;
    s16 frameCounter;
    u8 flashCounter;
    u8 state;
    u8 contestantID;
    u8 padding_0D[3];
} ContestCameraFlashTask;

#endif // POKEPLATINUM_STRUCT_CONTEST_CAMERA_FLASH_TASK_H
