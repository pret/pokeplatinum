#include <nitro.h>
#include <string.h>

#include "struct_decls/sys_task.h"

#include "functypes/sys_task_func.h"

#include "unk_0200679C.h"
#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_0201CCF0.h"

SysTask * SysTask_StartAndAllocateParam(SysTaskFunc param0, int paramSize, u32 param2, const u32 heapID)
{
    void * v0;

    if (paramSize) {
        v0 = Heap_AllocFromHeap(heapID, paramSize);

        if (v0 == NULL) {
            return NULL;
        }

        memset(v0, 0, paramSize);
    } else {
        v0 = NULL;
    }

    return SysTask_Start(param0, v0, param2);
}

void SysTask_FinishAndFreeParam (SysTask * param0)
{
    void * v0;

    v0 = SysTask_GetParam(param0);

    if (v0 != NULL) {
        Heap_FreeToHeap(v0);
    }

    SysTask_Done(param0);
}
