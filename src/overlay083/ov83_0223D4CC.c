#include "overlay083/ov83_0223D4CC.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02039A58.h"

#include "overlay004/ov4_021D0D80.h"

#include "communication_system.h"
#include "heap.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_02032798.h"
#include "unk_020366A0.h"

typedef struct {
    BOOL unk_00;
    int unk_04;
    u8 unk_08[38];
    int unk_30;
} UnkStruct_ov83_0223D5CC;

typedef struct {
    UnkStruct_ov83_0223D5CC unk_00[8];
    const CommCmdTable *unk_190;
    int unk_194;
    void *unk_198;
    SysTask *unk_19C;
} UnkStruct_ov83_0223D584;

typedef struct UnkStruct_ov83_0223D4CC_t {
    int unk_00;
    void *unk_04;
} UnkStruct_ov83_0223D4CC;

static UnkStruct_ov83_0223D584 *ov83_0223D584(const CommCmdTable *param0, int param1, void *param2, int heapID);
static void ov83_0223D5CC(SysTask *param0, void *param1);
static void ov83_0223D620(UnkStruct_ov83_0223D584 *param0);
static BOOL ov83_0223D638(UnkStruct_ov83_0223D584 *param0, int param1, const void *param2, int param3);

UnkStruct_ov83_0223D4CC *ov83_0223D4CC(const CommCmdTable *param0, int param1, void *param2, int param3, int heapID)
{
    UnkStruct_ov83_0223D4CC *v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov83_0223D4CC));
    v0->unk_00 = param3;
    v0->unk_04 = NULL;

    if (param3 == 1) {
        CommCmd_Init(param0, param1, param2);
    } else {
        v0->unk_04 = ov83_0223D584(param0, param1, param2, heapID);
    }

    return v0;
}

BOOL ov83_0223D508(int param0, const void *param1, int param2, UnkStruct_ov83_0223D4CC *param3)
{
    if (param3->unk_00 == 1) {
        if (sub_0203895C() == 29) {
            BOOL v0 = 1;

            if (sub_0203626C(param0)) {
                v0 = 0;
            }

            if (!ov4_021D1404()) {
                v0 = 0;
            }

            if (!v0) {
                return 0;
            }
        }

        return CommSys_SendData(param0, param1, param2);
    } else {
        return ov83_0223D638(param3->unk_04, param0, param1, param2);
    }
}

void ov83_0223D558(UnkStruct_ov83_0223D4CC *param0)
{
    if (param0->unk_00 == 0) {
        ov83_0223D620(param0->unk_04);
    }

    Heap_Free(param0);
}

int ov83_0223D570(UnkStruct_ov83_0223D4CC *param0)
{
    if (param0->unk_00 == 1) {
        return CommSys_CurNetId();
    } else {
        return 0;
    }
}

static UnkStruct_ov83_0223D584 *ov83_0223D584(const CommCmdTable *param0, int param1, void *param2, int heapID)
{
    UnkStruct_ov83_0223D584 *v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov83_0223D584));
    memset(v0, 0, sizeof(UnkStruct_ov83_0223D584));

    v0->unk_190 = param0;
    v0->unk_194 = param1;
    v0->unk_198 = param2;
    v0->unk_19C = SysTask_ExecuteAfterVBlank(ov83_0223D5CC, v0, 5000);

    return v0;
}

static void ov83_0223D5CC(SysTask *param0, void *param1)
{
    UnkStruct_ov83_0223D584 *v0 = param1;
    int v1;

    for (v1 = 0; v1 < 8; v1++) {
        if (v0->unk_00[v1].unk_00 == 1) {
            v0->unk_190[v0->unk_00[v1].unk_04].unk_00(
                0, v0->unk_00[v1].unk_30, v0->unk_00[v1].unk_08, v0->unk_198);

            memset(&v0->unk_00[v1], 0, sizeof(UnkStruct_ov83_0223D5CC));
        }
    }
}

static void ov83_0223D620(UnkStruct_ov83_0223D584 *param0)
{
    SysTask_Done(param0->unk_19C);
    Heap_Free(param0);
}

static BOOL ov83_0223D638(UnkStruct_ov83_0223D584 *param0, int param1, const void *param2, int param3)
{
    int v0;
    int v1;
    UnkStruct_ov83_0223D5CC *v2 = NULL;

    for (v0 = 0; v0 < 8; v0++) {
        if (param0->unk_00[v0].unk_00 == 0) {
            v2 = &param0->unk_00[v0];
            break;
        }
    }

    GF_ASSERT(v2);
    param1 -= 22;

    v1 = param0->unk_190[param1].unk_04();

    GF_ASSERT(v1 == param3);
    GF_ASSERT(param3 < 38);

    v2->unk_04 = param1;

    if (param3 > 0) {
        memcpy(v2->unk_08, param2, param3);
    }

    v2->unk_30 = param3;
    v2->unk_00 = 1;

    return 1;
}
