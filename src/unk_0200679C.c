#include <nitro.h>
#include <string.h>

#include "unk_0200679C.h"
#include "sys_task.h"
#include "heap.h"
#include "sys_task_manager.h"

SysTask *SysTask_StartAndAllocateParam(SysTaskFunc callback, int paramSize, u32 priority, const u32 heapID)
{
    void *param;

    if (paramSize) {
        param = Heap_AllocFromHeap(heapID, paramSize);

        if (param == NULL) {
            return NULL;
        }

        memset(param, 0, paramSize);
    } else {
        param = NULL;
    }

    return SysTask_Start(callback, param, priority);
}

void SysTask_FinishAndFreeParam(SysTask *task)
{
    void *param = SysTask_GetParam(task);
    if (param != NULL) {
        Heap_FreeToHeap(param);
    }

    SysTask_Done(task);
}
