#ifndef __CORE_H__
#define __CORE_H__

#include "gs/nonport.h"

#if defined(__cplusplus)
extern "C" {
#endif

#define GSICORE_MAXTASKS 40

typedef enum {
    GSTaskResult_None,
    GSTaskResult_Finished,
    GSTaskResult_Canceled,
    GSTaskResult_TimedOut,
    GSTaskResult_InProgress
} GSTaskResult;

typedef void (* GSTaskExecuteFunc) (void * theTaskData);
typedef void (* GSTaskCallbackFunc)(void * theTaskData, GSTaskResult theResult);
typedef void (* GSTaskCancelFunc)  (void * theTaskData);
typedef void (* GSTaskCleanupFunc) (void * theTaskData);
typedef GSTaskResult (* GSTaskThinkFunc)(void * theTaskData);

typedef struct {
    int mId;
    gsi_time mTimeout;
    gsi_time mStartTime;
    gsi_i32 mIsStarted;
    gsi_i32 mIsRunning;
    gsi_i32 mIsCanceled;
    gsi_i32 mIsCallbackPending;
    void * mTaskData;
    GSTaskExecuteFunc mExecuteFunc;
    GSTaskCallbackFunc mCallbackFunc;
    GSTaskCancelFunc mCancelFunc;
    GSTaskCleanupFunc mCleanupFunc;
    GSTaskThinkFunc mThinkFunc;
} GSTask;

typedef struct {
    gsi_i32 mIsInitialized;
    gsi_i32 mIsShuttingDown;
    GSICriticalSection mQueueCrit;
    GSTask * mTaskArray[GSICORE_MAXTASKS];
} GSCoreMgr;

void gsCoreInitialize();
void gsCoreThink();
void gsCoreShutdown();
gsi_i32 gsCoreIsShutdown();
void gsiCoreExecuteTask(GSTask * theTask, gsi_time theTimeoutMs);
void gsiCoreCancelTask(GSTask * theTask);
GSTask * gsiCoreCreateTask();

#if defined(__cplusplus)
}
#endif

#endif
