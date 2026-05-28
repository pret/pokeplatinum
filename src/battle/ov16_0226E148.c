#include "battle/ov16_0226E148.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/battle_system.h"

#include "battle/battle_subscreen.h"
#include "battle/battle_system.h"
#include "battle/struct_ov16_02268A14_decl.h"

#include "heap.h"
#include "narc.h"
#include "sound_playback.h"
#include "sys_task.h"
#include "sys_task_manager.h"

typedef struct {
    BattleSystem *battleSys;
    s16 step;
    s16 delay;
} StopRecordingTaskData;

static void SysTask_StopRecording(SysTask *sysTask, void *srtDataPtr);

SysTask *BattleSystem_StartStopRecordingTask(BattleSystem *battleSys)
{
    StopRecordingTaskData *srtData;
    SysTask *sysTask;

    srtData = Heap_Alloc(HEAP_ID_BATTLE, sizeof(StopRecordingTaskData));
    MI_CpuClear8(srtData, sizeof(StopRecordingTaskData));

    srtData->battleSys = battleSys;
    sysTask = SysTask_Start(SysTask_StopRecording, srtData, 1000);

    return sysTask;
}

void BattleSystem_EndStopRecordingTask(SysTask *sysTask)
{
    StopRecordingTaskData *srtData = SysTask_GetParam(sysTask);

    Heap_Free(srtData);
    SysTask_Done(sysTask);
}

static void SysTask_StopRecording(SysTask *sysTask, void *srtDataPtr)
{
    StopRecordingTaskData *srtData = srtDataPtr;
    BattleSubscreen *btlSubscreen = BattleSystem_GetBattleSubscreen(srtData->battleSys);

    switch (srtData->step) {
    case 0:
        GF_ASSERT(btlSubscreen != NULL);

        {
            NARC *bgNarc, *objNarc;

            bgNarc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, HEAP_ID_BATTLE);
            objNarc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);

            BattleSubscreen_SetupBackground(bgNarc, objNarc, btlSubscreen, 18, 0, NULL);
            NARC_dtor(bgNarc);
            NARC_dtor(objNarc);
        }
        srtData->step++;
        break;
    case 1:
        if (BattleSubscreen_IsReady(btlSubscreen) == 1) {
            srtData->step++;
        }
        break;
    case 2:
        if (BattleSystem_IsPlaybackActive(srtData->battleSys) == 1) {
            if (BattleSystem_MenuInput(btlSubscreen) == 1) {
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                srtData->step++;
            }
        }
        break;
    case 3:
        srtData->delay++;

        if (srtData->delay > 8) {
            BattleSystem_SetStopRecording(srtData->battleSys, 0);
            srtData->step++;
        }
        break;
    case 4:
        break;
    }
}
