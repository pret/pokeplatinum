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
    const CommCmdTable * cmdTable;
    int unk_04;
    void * unk_08;
    u8 unk_0C[8];
    u8 unk_14;
} CommCmdManager;

static void sub_02032958(int param0, int param1, void * param2, void * param3);
static void sub_0203299C(int param0, int param1, void * param2, void * param3);
static void sub_020329C4(int param0, int param1, void * param2, void * param3);
static int sub_02032954(void);

static const CommCmdTable Unk_020E5D64[] = {
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
    {sub_02036008, CommPacketSizeOf_NetId, NULL},
    {sub_02036030, CommPacketSizeOf_NetId, NULL},
    {sub_02036058, CommPacketSizeOf_NetId, NULL},
    {sub_02032958, sub_0203294C, NULL},
    {sub_0203299C, sub_0203294C, NULL},
    {sub_020329C4, sub_0203294C, NULL},
    {CommCmd_16, CommPacketSizeOf_NetId, NULL},
    {CommCmd_17, CommPacketSizeOf_NetId, NULL},
    {CommCmd_18, sub_02032954, NULL},
    {sub_02036574, sub_02036590, NULL},
    {sub_02036670, CommTool_TempDataSize, NULL},
    {sub_02038240, sub_0203294C, NULL}
};

static CommCmdManager * sCommCmdManager = NULL;

void CommCmd_Init (const CommCmdTable * cmdTable, int param1, void * param2)
{
    int v0;

    if (!sCommCmdManager) {
        sCommCmdManager = Heap_AllocFromHeap(15, sizeof(CommCmdManager));
    }

    sCommCmdManager->cmdTable = cmdTable;
    sCommCmdManager->unk_04 = param1;
    sCommCmdManager->unk_08 = param2;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        sCommCmdManager->unk_0C[v0] = 0;
    }

    sCommCmdManager->unk_14 = 0;
}

void sub_020327E0 (void)
{
    if (sCommCmdManager) {
        Heap_FreeToHeap(sCommCmdManager);
        sCommCmdManager = NULL;
    }
}

void CommCmd_Callback (int param0, int cmd, int param2, void * param3)
{
    UnkFuncPtr_020F8E60 v0;

    if (cmd < 22) {
        v0 = Unk_020E5D64[cmd].unk_00;
    } else {
        GF_ASSERT(sCommCmdManager);

        if (cmd > (sCommCmdManager->unk_04 + 22)) {
            sub_020363BC();
            return;
        }

        v0 = sCommCmdManager->cmdTable[cmd - 22].unk_00;
    }

    if (v0 != NULL) {
        if (sCommCmdManager) {
            v0(param0, param2, param3, sCommCmdManager->unk_08);
        } else {
            v0(param0, param2, param3, NULL);
        }
    }
}

int CommCmd_PacketSizeOf (int cmd)
{
    int v0 = 0;
    UnkFuncPtr_02032868 v1;

    if (cmd < 22) {
        v1 = Unk_020E5D64[cmd].unk_04;
    } else {
        GF_ASSERT(sCommCmdManager);

        if (sCommCmdManager == NULL) {
            sub_020363BC();
            return v0;
        }

        if (cmd > (sCommCmdManager->unk_04 + 22)) {
            GF_ASSERT(0);
            sub_020363BC();
            return v0;
        }

        v1 = sCommCmdManager->cmdTable[cmd - 22].unk_04;
    }

    if (v1 != NULL) {
        v0 = v1();
    }

    return v0;
}

BOOL sub_020328D0 (int cmd)
{
    if (cmd < 22) {
        return Unk_020E5D64[cmd].unk_08 != NULL;
    }

    return sCommCmdManager->cmdTable[cmd - 22].unk_08 != NULL;
}

void * sub_0203290C (int cmd, int netId, int param2)
{
    UnkFuncPtr_0203290C v0;

    if (cmd < 22) {
        v0 = Unk_020E5D64[cmd].unk_08;
        return v0(netId, NULL, param2);
    } else {
        v0 = sCommCmdManager->cmdTable[cmd - 22].unk_08;
        return v0(netId, sCommCmdManager->unk_08, param2);
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

int CommPacketSizeOf_NetId (void)
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

    sCommCmdManager->unk_0C[param0] = 1;

    for (v1 = 0; v1 < (7 + 1); v1++) {
        if (!CommSys_IsPlayerConnected(v1)) {
            continue;
        }

        if (!sCommCmdManager->unk_0C[v1]) {
            return;
        }
    }

    CommSys_SendDataServer(14, NULL, 0);
}

static void sub_0203299C (int param0, int param1, void * param2, void * param3)
{
    u8 * v0 = param2;
    int v1;

    sCommCmdManager->cmdTable = NULL;
    sCommCmdManager->unk_04 = 0;
    sCommCmdManager->unk_08 = NULL;
    sCommCmdManager->unk_14 = 1;

    CommSys_SendDataFixedSize(15, param2);
}

static void sub_020329C4 (int param0, int param1, void * param2, void * param3)
{
    u8 * v0 = param2;
    int v1;

    if (CommSys_CurNetId() != 0) {
        return;
    }

    sCommCmdManager->unk_0C[param0] = 0;
}
