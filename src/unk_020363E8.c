#include <nitro.h>
#include <string.h>

#include "heap.h"
#include "communication_system.h"
#include "unk_020363E8.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
} UnkStruct_02036574;

#define COMM_TOOL_TEMP_DATA_SIZE    70

typedef struct {
    UnkStruct_02036574 unk_00[MAX_CONNECTED_PLAYERS];
    u8 unk_10[MAX_CONNECTED_PLAYERS];
    u8 unk_18[MAX_CONNECTED_PLAYERS][COMM_TOOL_TEMP_DATA_SIZE + 2];
    u8 hasRecievedTempData[MAX_CONNECTED_PLAYERS];
    u8 syncState;
    u8 syncNo;
    u8 sendTiming;
} CommTool;

static CommTool * sCommTool = NULL;

void CommTool_Init (int netId)
{
    if (!sCommTool) {
        sCommTool = Heap_AllocFromHeap(netId, sizeof(CommTool));
        MI_CpuFill8(sCommTool, 0, sizeof(CommTool));
    }

    for (int netJd = 0; netJd < MAX_CONNECTED_PLAYERS; netJd++) {
        sCommTool->unk_10[netJd] = 0xff;
    }

    sCommTool->syncState = 0xff;
    sCommTool->syncNo = 0xff;
    sCommTool->sendTiming = 0;
}

void sub_02036438 (void)
{
    Heap_FreeToHeap(sCommTool);
    sCommTool = NULL;
}

BOOL sub_02036450 (void)
{
    if (sCommTool) {
        return 1;
    }

    return 0;
}

void sub_02036464 (int netId, int param1, void * param2, void * param3)
{
    u8 * v0 = param2;
    u8 v1 = v0[0];
    u8 v2[2];
    int v3;

    if (CommSys_CurNetId() == 0) {
        v2[0] = netId;
        v2[1] = v1;
        sub_02035B48(18, &v2);

        sCommTool->unk_10[netId] = v1;

        for (v3 = 0; v3 < (7 + 1); v3++) {
            if (CommSys_IsPlayerConnected(v3)) {
                if (v1 != sCommTool->unk_10[v3]) {
                    return;
                }
            }
        }

        sub_02035B48(17, &v1);
    }
}

void sub_020364C8 (int netId, int param1, void * param2, void * param3)
{
    u8 * v0 = param2;
    sCommTool->unk_10[v0[0]] = v0[1];
}

void sub_020364DC (int netId, int param1, void * param2, void * param3)
{
    u8 * v0 = param2;
    u8 v1 = v0[0];

    sCommTool->syncState = v1;
}

void CommTiming_StartSync (u8 param0)
{
    sCommTool->syncNo = param0;
    sCommTool->sendTiming = TRUE;
}

void sub_0203650C (void)
{
    if (sCommTool) {
        if (sCommTool->sendTiming) {
            if (sub_020360D0(16, &sCommTool->syncNo)) {
                sCommTool->sendTiming = 0;
            }
        }
    }
}

BOOL CommTiming_IsSyncState (u8 syncState)
{
    if (sCommTool == NULL) {
        return TRUE;
    }

    if (sCommTool->syncState == syncState) {
        return TRUE;
    }

    return FALSE;
}

int sub_02036564 (int param0)
{
    return sCommTool->unk_10[param0];
}

void sub_02036574 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_02036574 * v0 = param2;

    sCommTool->unk_00[param0].unk_00 = v0->unk_00;
    sCommTool->unk_00[param0].unk_01 = v0->unk_01;
}

int sub_02036590 (void)
{
    return sizeof(UnkStruct_02036574);
}

void sub_02036594 (u8 param0, u8 param1)
{
    UnkStruct_02036574 v0;

    v0.unk_00 = param0;
    v0.unk_01 = param1;

    sub_020360D0(19, &v0);
}

int sub_020365A8 (int param0, u8 param1)
{
    if (!sCommTool) {
        return -1;
    }

    if (sCommTool->unk_00[param0].unk_00 == param1) {
        return sCommTool->unk_00[param0].unk_01;
    }

    return -1;
}

void sub_020365D0 (void)
{
    int v0;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        MI_CpuFill8(&sCommTool->unk_00[v0], 0, sizeof(UnkStruct_02036574));
    }
}

void sub_020365F4 (void)
{
    int v0;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        sCommTool->hasRecievedTempData[v0] = 0;
    }
}

BOOL sub_02036614 (int param0, const void * param1)
{
    if (sCommTool) {
        MI_CpuCopy8(param1, sCommTool->unk_18[param0], COMM_TOOL_TEMP_DATA_SIZE);
        sub_020360D0(20, sCommTool->unk_18[param0]);
        return 1;
    }

    return 0;
}

const void * sub_0203664C (int netId)
{
    if (sCommTool->hasRecievedTempData[netId]) {
        return &sCommTool->unk_18[netId];
    }

    return NULL;
}

void sub_02036670 (int netId, int param1, void * param2, void * param3)
{
    sCommTool->hasRecievedTempData[netId] = TRUE;
    MI_CpuCopy8(param2, sCommTool->unk_18[netId], COMM_TOOL_TEMP_DATA_SIZE);
}

int CommTool_TempDataSize (void)
{
    return COMM_TOOL_TEMP_DATA_SIZE;
}
