#if !defined(NITRO_MB_TASK_H_)
#define NITRO_MB_TASK_H_

#if defined(__cplusplus)
extern  "C"
{
#endif

#define MB_TASK_PRIORITY_ABOVE (OS_THREAD_PRIORITY_MAX + 1)

#define MB_TASK_PRIORITY_BELOW (OS_THREAD_PRIORITY_MAX + 2)

#define MB_TASK_PRIORITY_NORMAL (OS_THREAD_PRIORITY_MAX + 3)

#define MB_TASK_WORK_MIN (sizeof(OSThread) + 256)

struct MBiTaskInfo_tag;

typedef void (* MB_TASK_FUNC) (struct MBiTaskInfo_tag *);

typedef struct MBiTaskInfo_tag {
    struct MBiTaskInfo_tag * next;
    u32 busy : 1;
    u32 priority : 31;
    MB_TASK_FUNC task;
    MB_TASK_FUNC callback;
    u32 param[4];
} MBiTaskInfo;

void MBi_InitTaskThread(void * p_work, u32 size);
BOOL MBi_IsTaskAvailable(void);
void MBi_InitTaskInfo(MBiTaskInfo * pt);
BOOL MBi_IsTaskBusy(volatile const MBiTaskInfo * pt);
void MBi_SetTask(MBiTaskInfo * pt, MB_TASK_FUNC task, MB_TASK_FUNC callback, u32 priority);
void MBi_EndTaskThread(MB_TASK_FUNC callback);

#if defined(__cplusplus)
}
#endif

#endif
