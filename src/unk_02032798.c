#include <nitro.h>
#include <string.h>

#include "functypes/funcptr_02032868.h"
#include "functypes/funcptr_0203290C.h"
#include "struct_defs/struct_02039A58.h"
#include "functypes/funcptr_020F8E60.h"

#include "heap.h"
#include "unk_02032798.h"
#include "communication_information.h"
#include "communication_system.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"

typedef struct {
    const UnkStruct_02039A58 * unk_00;
    int unk_04;
    void * unk_08;
    u8 unk_0C[8];
    u8 unk_14;
} CommCmdTable;

static void sub_02032958(int param0, int param1, void * param2, void * param3);
static void sub_0203299C(int param0, int param1, void * param2, void * param3);
static void sub_020329C4(int param0, int param1, void * param2, void * param3);
static int sub_02032954(void);

static const UnkStruct_02039A58 Unk_020E5D64[] = {
    {NULL, sub_0203294C, NULL},
    {NULL, sub_0203294C, NULL},
    {sub_0203619C, sub_0203294C, NULL},
    {CommInfo_RecvPlayerData, CommPlayerInfo_Size, NULL},
    {CommInfo_RecvPlayerDataArray, CommPlayerInfo_Size, NULL},
    {CommunicatitonInformaion_FinishReading, sub_0203294C, NULL},
    {sub_02037A78, sub_02037B54, NULL},
    {sub_02037AD8, sub_02037B54, NULL},
    {NULL, NULL, NULL},
    {NULL, NULL, NULL},
    {sub_02036008, sub_02032950, NULL},
    {sub_02036030, sub_02032950, NULL},
    {sub_02036058, sub_02032950, NULL},
    {sub_02032958, sub_0203294C, NULL},
    {sub_0203299C, sub_0203294C, NULL},
    {sub_020329C4, sub_0203294C, NULL},
    {sub_02036464, sub_02032950, NULL},
    {sub_020364DC, sub_02032950, NULL},
    {sub_020364C8, sub_02032954, NULL},
    {sub_02036574, sub_02036590, NULL},
    {sub_02036670, CommTool_TempDataSize, NULL},
    {sub_02038240, sub_0203294C, NULL}
};

static CommCmdTable * Unk_021C07B0 = NULL;

void CommCmd_Init (const UnkStruct_02039A58 * param0, int param1, void * param2)
{
    int v0;

    if (!Unk_021C07B0) {
        Unk_021C07B0 = Heap_AllocFromHeap(15, sizeof(CommCmdTable));
    }

    Unk_021C07B0->unk_00 = param0;
    Unk_021C07B0->unk_04 = param1;
    Unk_021C07B0->unk_08 = param2;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        Unk_021C07B0->unk_0C[v0] = 0;
    }

    Unk_021C07B0->unk_14 = 0;
}

void sub_020327E0 (void)
{
    if (Unk_021C07B0) {
        Heap_FreeToHeap(Unk_021C07B0);
        Unk_021C07B0 = NULL;
    }
}

void CommCmd_Callback (int param0, int param1, int param2, void * param3)
{
    UnkFuncPtr_020F8E60 v0;

    if (param1 < 22) {
        v0 = Unk_020E5D64[param1].unk_00;
    } else {
        GF_ASSERT(Unk_021C07B0);

        if (param1 > (Unk_021C07B0->unk_04 + 22)) {
            sub_020363BC();
            return;
        }

        v0 = Unk_021C07B0->unk_00[param1 - 22].unk_00;
    }

    if (v0 != NULL) {
        if (Unk_021C07B0) {
            v0(param0, param2, param3, Unk_021C07B0->unk_08);
        } else {
            v0(param0, param2, param3, NULL);
        }
    }
}

int sub_02032868 (int param0)
{
    int v0 = 0;
    UnkFuncPtr_02032868 v1;

    if (param0 < 22) {
        v1 = Unk_020E5D64[param0].unk_04;
    } else {
        GF_ASSERT(Unk_021C07B0);

        if (Unk_021C07B0 == NULL) {
            sub_020363BC();
            return v0;
        }

        if (param0 > (Unk_021C07B0->unk_04 + 22)) {
            GF_ASSERT(0);
            sub_020363BC();
            return v0;
        }

        v1 = Unk_021C07B0->unk_00[param0 - 22].unk_04;
    }

    if (v1 != NULL) {
        v0 = v1();
    }

    return v0;
}

BOOL sub_020328D0 (int param0)
{
    if (param0 < 22) {
        return Unk_020E5D64[param0].unk_08 != NULL;
    }

    return Unk_021C07B0->unk_00[param0 - 22].unk_08 != NULL;
}

void * sub_0203290C (int param0, int param1, int param2)
{
    UnkFuncPtr_0203290C v0;

    if (param0 < 22) {
        v0 = Unk_020E5D64[param0].unk_08;
        return v0(param1, NULL, param2);
    } else {
        v0 = Unk_021C07B0->unk_00[param0 - 22].unk_08;
        return v0(param1, Unk_021C07B0->unk_08, param2);
    }

    return NULL;
}

int sub_02032944 (void)
{
    return 0xffff;
}

int sub_0203294C (void)
{
    return 0;
}

int sub_02032950 (void)
{
    return 1;
}

static int sub_02032954 (void)
{
    return 2;
}

static void sub_02032958 (int param0, int param1, void * param2, void * param3)
{
    u8 * v0 = param2;
    int v1;

    if (CommSys_CurNetId() != 0) {
        return;
    }

    Unk_021C07B0->unk_0C[param0] = 1;

    for (v1 = 0; v1 < (7 + 1); v1++) {
        if (!CommSys_IsPlayerConnected(v1)) {
            continue;
        }

        if (!Unk_021C07B0->unk_0C[v1]) {
            return;
        }
    }

    CommSys_SendDataServer(14, NULL, 0);
}

static void sub_0203299C (int param0, int param1, void * param2, void * param3)
{
    u8 * v0 = param2;
    int v1;

    Unk_021C07B0->unk_00 = NULL;
    Unk_021C07B0->unk_04 = 0;
    Unk_021C07B0->unk_08 = NULL;
    Unk_021C07B0->unk_14 = 1;

    sub_020360D0(15, param2);
}

static void sub_020329C4 (int param0, int param1, void * param2, void * param3)
{
    u8 * v0 = param2;
    int v1;

    if (CommSys_CurNetId() != 0) {
        return;
    }

    Unk_021C07B0->unk_0C[param0] = 0;
}
