#include "communication_system.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "constants/heap.h"

#include "struct_defs/struct_020322D8.h"
#include "struct_defs/struct_020322F8.h"
#include "struct_defs/struct_0203233C.h"

#include "overlay004/ov4_021D0D80.h"

#include "comm_ring.h"
#include "communication_information.h"
#include "core_sys.h"
#include "heap.h"
#include "rtc.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_02030EE0.h"
#include "unk_020322D8.h"
#include "unk_0203266C.h"
#include "unk_02032798.h"
#include "unk_02033200.h"
#include "unk_020363E8.h"
#include "unk_020366A0.h"

enum {
    TRANSMISSION_TYPE_SERVER_CLIENT,
    TRANSMISSION_TYPE_PARALLEL,
    TRANSMISSION_TYPE_SWITCH_TO_SERVER_CLIENT,
    TRANSMISSION_TYPE_SWITCH_TO_PARALLEL
};

typedef struct {
    u8 *unk_00;
    UnkStruct_020322D8 *unk_04;
    UnkStruct_020322D8 *unk_08;
    u16 unk_0C;
    u8 unk_0E;
    u8 unk_0F_0 : 1;
    u8 unk_0F_1 : 1;
    u8 : 6;
} UnkStruct_020322D8_t;

typedef struct {
    int unk_00;
    u8 *unk_04;
    u16 unk_08;
    u8 unk_0A;
} CommRecvPackage;

typedef struct {
    u8 sendBuffer[2][64];
    u8 sendBufferServer[2][192];
    u8 sendBufferCommRing[264];
    u8 sendBufferCommRingServer[384];
    u8 *unk_488;
    u8 *recvBufferRingServer;
    u8 *recvBufferRing;
    u8 *tempBuffer;
    CommRing sendRing;
    CommRing recvRing;
    CommRing unk_4B0[8];
    CommRing sendRingServer;
    CommRing sendRingClient[8];
    SysTask *unk_57C;
    CommQueueMan commQueueManSend;
    CommQueueMan commQueueManSendServer;
    CommRecvPackage commRecvServer[8];
    CommRecvPackage commRecvClient;
    MATHRandContext32 rand;
    u16 unk_63C[8];
    u8 recvSpeed[8];
    u16 sendHeldKeys;
    u8 unk_656;
    u8 sendSpeed;
    u8 unk_658;
    s8 unk_659;
    u16 unk_65A;
    BOOL unk_65C;
    volatile int unk_660;
    volatile int unk_664[8];
    int allocSize;
    int maxPacketSize;
    u16 unk_68C;
    u8 unk_68E;
    u8 unk_68F[8];
    u8 unk_697[8];
    u8 unk_69F[4];
    u8 transmissionState;
    u8 unk_6A4;
    u8 transmissionType;
    u8 unk_6A6;
    u8 unk_6A7;
    u8 unk_6A8;
    u8 unk_6A9;
    u8 unk_6AA;
    u8 unk_6AB;
    u8 unk_6AC;
    u8 unk_6AD;
    u8 unk_6AE;
    u8 wifiConnected;
    u8 unk_6B0;
    u8 unk_6B1;
    u8 shuttingDown;
    u8 unk_6B3;
    u8 unk_6B4;
    u8 unk_6B5;
} CommunicationSystem;

static void sub_0203463C(void);
static void sub_0203498C(SysTask *param0, void *param1);
static void sub_02034B50(void);
static void CommSys_UpdateServerClient(void);
static void sub_02034F68(void);
static void sub_02035394(BOOL param0);
static void sub_020353B0(BOOL param0);
static void sub_020350A4(u16 param0, u16 *param1, u16 param2);
static void sub_02035200(u16 param0, u16 *param1, u16 param2);
static BOOL CommSys_CheckRecvLimit(void);
static void sub_02035534(void);
static void sub_020353CC(void);
static void CommSys_RecvData(void);
static void CommSys_RecvDataServer(void);
static BOOL sub_020357F0(u8 *param0);
static void sub_020358C0(u8 *param0);
static BOOL sub_020356A0(u8 *param0, int param1);
static BOOL sub_02035730(u8 *param0);
static void CommSys_Transmission(void);
static BOOL sub_0203594C(void);

static u32 Unk_021C07C8 = 0;
static CommunicationSystem *sCommunicationSystem = NULL;
static volatile u8 Unk_021C07C5 = 0;
static volatile u8 Unk_02100A1C = 4;
static volatile u8 Unk_02100A1D = 4;
static u8 Unk_021C07C4 = 0;

static BOOL CommSys_Init(BOOL shouldAlloc, int maxPacketSize)
{
    int i;
    BOOL reinit = FALSE;

    Unk_021C07C5 = FALSE;

    if (shouldAlloc) {
        int maxMachines = CommLocal_MaxMachines(sub_0203895C()) + 1;

        if (sCommunicationSystem != NULL) {
            return TRUE;
        }

        CommTool_Init(HEAP_ID_COMMUNICATION);

        Unk_021C07C8 = (u32)Heap_AllocFromHeap(HEAP_ID_COMMUNICATION, sizeof(CommunicationSystem) + 32);
        sCommunicationSystem = (CommunicationSystem *)(32 - (Unk_021C07C8 % 32) + Unk_021C07C8);

        MI_CpuClear8(sCommunicationSystem, sizeof(CommunicationSystem));

        if (CommLocal_IsWifiGroup(sub_0203895C())) {
            sCommunicationSystem->maxPacketSize = maxPacketSize * 2 + 64;
        } else {
            sCommunicationSystem->maxPacketSize = maxPacketSize + 64;
        }

        sCommunicationSystem->allocSize = sCommunicationSystem->maxPacketSize * maxMachines;
        sCommunicationSystem->transmissionType = TRANSMISSION_TYPE_SERVER_CLIENT;
        sCommunicationSystem->unk_6A6 = 38;
        sCommunicationSystem->recvBufferRing = Heap_AllocFromHeap(HEAP_ID_COMMUNICATION, sCommunicationSystem->maxPacketSize * 2);
        sCommunicationSystem->tempBuffer = Heap_AllocFromHeap(HEAP_ID_COMMUNICATION, sCommunicationSystem->maxPacketSize);
        sCommunicationSystem->recvBufferRingServer = Heap_AllocFromHeap(HEAP_ID_COMMUNICATION, sCommunicationSystem->allocSize);
        sCommunicationSystem->unk_488 = Heap_AllocFromHeap(HEAP_ID_COMMUNICATION, sCommunicationSystem->allocSize);

        if (sub_0203895C() == 10) {
            CommQueueMan_Init(&sCommunicationSystem->commQueueManSend, 100, &sCommunicationSystem->sendRing);
            CommQueueMan_Init(&sCommunicationSystem->commQueueManSendServer, 800, &sCommunicationSystem->sendRingServer);
        } else {
            CommQueueMan_Init(&sCommunicationSystem->commQueueManSend, 20, &sCommunicationSystem->sendRing);
            CommQueueMan_Init(&sCommunicationSystem->commQueueManSendServer, 280, &sCommunicationSystem->sendRingServer);
        }
    } else {
        reinit = TRUE;
        GF_ASSERT(sCommunicationSystem);
    }

    sCommunicationSystem->unk_68C = 0;

    for (i = 0; i < 4; i++) {
        sCommunicationSystem->unk_69F[i] = 0xff;
    }

    if (!reinit) {
        sub_0203463C();
    }

    CommSys_Seed(&sCommunicationSystem->rand);

    if (!reinit) {
        sCommunicationSystem->unk_57C = SysTask_ExecuteOnVBlank(sub_0203498C, NULL, 0);
    }

    sCommunicationSystem->wifiConnected = FALSE;
    return TRUE;
}

static void CommSys_ClearData(void)
{
    int netId, size;
    int maxMachines = CommLocal_MaxMachines(sub_0203895C()) + 1;

    sCommunicationSystem->unk_658 = 0;
    sCommunicationSystem->unk_659 = 0;

    MI_CpuClear8(sCommunicationSystem->recvBufferRingServer, sCommunicationSystem->allocSize);
    MI_CpuClear8(sCommunicationSystem->sendRingClient, sizeof(CommRing) * (7 + 1));

    size = sCommunicationSystem->allocSize / maxMachines;

    for (netId = 0; netId < maxMachines; netId++) {
        CommRing_Init(&sCommunicationSystem->sendRingClient[netId], &sCommunicationSystem->recvBufferRingServer[netId * size], size);
    }

    MI_CpuClear8(sCommunicationSystem->unk_488, sCommunicationSystem->allocSize);
    MI_CpuClear8(sCommunicationSystem->unk_4B0, sizeof(CommRing) * (7 + 1));

    for (netId = 0; netId < maxMachines; netId++) {
        CommRing_Init(&sCommunicationSystem->unk_4B0[netId], &sCommunicationSystem->unk_488[netId * size], size);
    }

    MI_CpuClear8(sCommunicationSystem->sendBufferCommRingServer, (192 * 2));
    CommRing_Init(&sCommunicationSystem->sendRingServer, sCommunicationSystem->sendBufferCommRingServer, (192 * 2));

    MI_CpuFill8(sCommunicationSystem->sendBufferServer[0], 0xee, (192 * 2));
    MI_CpuFill8(sCommunicationSystem->sendBufferServer[1], 0xee, (192 * 2));
    MI_CpuClear8(sCommunicationSystem->sendBufferCommRing, (12 * 22));

    CommRing_Init(&sCommunicationSystem->sendRing, sCommunicationSystem->sendBufferCommRing, (12 * 22));

    MI_CpuFill8(sCommunicationSystem->sendBuffer[0], 0xee, 38);
    MI_CpuFill8(sCommunicationSystem->sendBuffer[1], 0xee, 38);

    sCommunicationSystem->sendBuffer[0][0] = 0xff;
    sCommunicationSystem->sendBuffer[1][0] = 0xff;

    MI_CpuClear8(sCommunicationSystem->recvBufferRing, sCommunicationSystem->maxPacketSize * 2);
    CommRing_Init(&sCommunicationSystem->recvRing, sCommunicationSystem->recvBufferRing, sCommunicationSystem->maxPacketSize * 2);

    sCommunicationSystem->unk_6AC = 0;
    sCommunicationSystem->unk_6AD = 0;

    for (netId = 0; netId < (7 + 1); netId++) {
        sCommunicationSystem->unk_68F[netId] = 0;
        sCommunicationSystem->unk_697[netId] = 1;
        sCommunicationSystem->unk_63C[netId] = 0;
        sCommunicationSystem->commRecvServer[netId].unk_0A = 0xee;
        sCommunicationSystem->commRecvServer[netId].unk_08 = 0xffff;
        sCommunicationSystem->commRecvServer[netId].unk_04 = NULL;
        sCommunicationSystem->commRecvServer[netId].unk_00 = 0;
        sCommunicationSystem->unk_664[netId] = 0;
    }

    sCommunicationSystem->unk_660 = 0;
    sCommunicationSystem->commRecvClient.unk_0A = 0xee;
    sCommunicationSystem->commRecvClient.unk_08 = 0xffff;
    sCommunicationSystem->commRecvClient.unk_04 = NULL;
    sCommunicationSystem->commRecvClient.unk_00 = 0;
    sCommunicationSystem->unk_6AA = 1;
    sCommunicationSystem->unk_6AB = 1;
    Unk_021C07C4 = 0;

    CommQueueMan_Reset(&sCommunicationSystem->commQueueManSend);
    CommQueueMan_Reset(&sCommunicationSystem->commQueueManSendServer);

    sCommunicationSystem->unk_6B0 = 0;
}

static void sub_0203463C(void)
{
    sCommunicationSystem->unk_6A7 = 0;
    sCommunicationSystem->unk_6A8 = 0;
    sCommunicationSystem->unk_65C = 1;

    CommSys_ClearData();

    Unk_02100A1C = 4;
    Unk_02100A1D = 4;
}

static void sub_02034670(void)
{
    CommSys_ClearData();
}

static void CommSys_ClearServerRecvData(int netId)
{
    sCommunicationSystem->unk_68F[netId] = 0;
    sCommunicationSystem->unk_697[netId] = 1;
    sCommunicationSystem->unk_664[netId] = 0;

    int v0 = CommLocal_MaxMachines(sub_0203895C()) + 1;
    int v1 = sCommunicationSystem->allocSize / v0;

    CommRing_Init(&sCommunicationSystem->unk_4B0[netId], &sCommunicationSystem->unk_488[netId * v1], v1);
    CommRing_Init(&sCommunicationSystem->sendRingClient[netId], &sCommunicationSystem->recvBufferRingServer[netId * v1], v1);

    sCommunicationSystem->commRecvServer[netId].unk_0A = 0xee;
    sCommunicationSystem->commRecvServer[netId].unk_08 = 0xffff;
    sCommunicationSystem->commRecvServer[netId].unk_04 = NULL;
    sCommunicationSystem->commRecvServer[netId].unk_00 = 0;
}

static void sub_02034734(void)
{
    int netId;

    for (netId = 1; netId < (7 + 1); netId++) {
        if (!CommSys_IsPlayerConnected(netId) && !sCommunicationSystem->unk_697[netId] && !CommSys_IsAlone()) {
            CommSys_ClearServerRecvData(netId);
        }
    }
}

static void sub_02034770(int param0)
{
    CommSys_ClearServerRecvData(param0);
}

BOOL CommSys_InitServer(BOOL param0, BOOL param1, int param2, BOOL param3)
{
    BOOL ret = TRUE;

    if (!CommLocal_IsWifiGroup(sub_0203895C())) {
        ret = CommServerClient_InitServer(param0, param1, param3);
        sub_02032124(sub_02034770);
    }

    CommSys_Init(param0, param2);
    return ret;
}

BOOL CommSys_InitClient(BOOL param0, BOOL param1, int param2)
{
    BOOL v0 = TRUE;

    if (!CommLocal_IsWifiGroup(sub_0203895C())) {
        v0 = CommServerClient_InitClient(param0, param1);
    }

    CommSys_Init(param0, param2);
    Unk_02100A1D = 4;

    return v0;
}

static void CommSys_UpdateTransitionType(void)
{
    BOOL changed = FALSE;

    if (CommSys_CurNetId() == 0) {
        if (Unk_02100A1C != 4) {
            return;
        }
    } else if (Unk_02100A1D != 4) {
        return;
    }

    if (sCommunicationSystem->transmissionType == TRANSMISSION_TYPE_SWITCH_TO_SERVER_CLIENT) {
        sCommunicationSystem->transmissionType = TRANSMISSION_TYPE_SERVER_CLIENT;
        changed = TRUE;
    }

    if (sCommunicationSystem->transmissionType == TRANSMISSION_TYPE_SWITCH_TO_PARALLEL) {
        sCommunicationSystem->transmissionType = TRANSMISSION_TYPE_PARALLEL;
        changed = TRUE;
    }

    if (changed) {
        sub_02034670();
    }

    CommSys_Transmission();
}

static void CommSys_SwitchTransitionType(int type)
{
    if ((sCommunicationSystem->transmissionType == TRANSMISSION_TYPE_SERVER_CLIENT) && (type == TRANSMISSION_TYPE_PARALLEL)) {
        sCommunicationSystem->transmissionType = TRANSMISSION_TYPE_SWITCH_TO_PARALLEL;
        return;
    }

    if ((sCommunicationSystem->transmissionType == TRANSMISSION_TYPE_PARALLEL) && (type == TRANSMISSION_TYPE_SERVER_CLIENT)) {
        sCommunicationSystem->transmissionType = TRANSMISSION_TYPE_SWITCH_TO_SERVER_CLIENT;
        return;
    }
}

void CommSys_SwitchTransitionTypeToParallel(void)
{
    CommSys_SwitchTransitionType(TRANSMISSION_TYPE_PARALLEL);
}

void CommSys_SwitchTransitionTypeToServerClient(void)
{
    CommSys_SwitchTransitionType(TRANSMISSION_TYPE_SERVER_CLIENT);
}

static int CommSys_TransmissionType(void)
{
    if (sCommunicationSystem->transmissionType == TRANSMISSION_TYPE_SWITCH_TO_SERVER_CLIENT) {
        return TRANSMISSION_TYPE_PARALLEL;
    }

    if (sCommunicationSystem->transmissionType == TRANSMISSION_TYPE_SWITCH_TO_PARALLEL) {
        return TRANSMISSION_TYPE_SERVER_CLIENT;
    }

    return sCommunicationSystem->transmissionType;
}

BOOL CommSys_TransitionTypeIsParallel(void)
{
    if (TRANSMISSION_TYPE_PARALLEL == CommSys_TransmissionType()) {
        return TRUE;
    }

    return FALSE;
}

void CommSys_Delete(void)
{
    BOOL v0 = FALSE;

    if (sCommunicationSystem) {
        if (CommLocal_IsWifiGroup(sub_0203895C())) {
            ov4_021D2184();
            v0 = 1;
        } else {
            if (sub_02033768()) {
                v0 = 1;
            }
        }
    }

    if (v0) {
        CommTool_Delete();
        CommInfo_Delete();

        Unk_021C07C5 = 0;
        SysTask_Done(sCommunicationSystem->unk_57C);
        sCommunicationSystem->unk_57C = NULL;

        Heap_FreeToHeap(sCommunicationSystem->recvBufferRing);
        Heap_FreeToHeap(sCommunicationSystem->tempBuffer);
        Heap_FreeToHeap(sCommunicationSystem->recvBufferRingServer);
        Heap_FreeToHeap(sCommunicationSystem->unk_488);
        CommQueueMan_Delete(&sCommunicationSystem->commQueueManSendServer);
        CommQueueMan_Delete(&sCommunicationSystem->commQueueManSend);
        Heap_FreeToHeap((void *)Unk_021C07C8);

        sCommunicationSystem = NULL;
        Unk_021C07C8 = 0;
    }
}

BOOL sub_02034984(u16 param0)
{
    return sub_020339E8(param0);
}

static void sub_0203498C(SysTask *param0, void *param1)
{
    if (Unk_021C07C5) {
        sub_020353CC();

        if (((CommSys_CurNetId() == 0) && (CommSys_IsPlayerConnected(0))) || CommSys_IsAlone()) {
            CommSys_UpdateServerClient();
        }

        Unk_021C07C5 = 0;
    }
}

static void sub_020349C4(void)
{
    if (!sub_0203406C()) {
        return;
    }

    if (CommSys_CurNetId() == 0) {
        if (CommServerClient_IsClientConnecting()) {
            return;
        }

        CommSys_Delete();
    } else {
        CommSys_Delete();
    }
}

BOOL CommSys_Update(void)
{
    sub_02036C50();

    if (sCommunicationSystem != NULL) {
        if (!sCommunicationSystem->shuttingDown) {
            sCommunicationSystem->unk_6B5++;
            Unk_021C07C5 = 0;
            CommSys_UpdateTransitionType();
            sCommunicationSystem->sendHeldKeys |= (gCoreSys.heldKeys & 0x7fff);
            sub_02035534();
            sub_02034B50();
            sCommunicationSystem->sendHeldKeys &= 0x8000;

            if (CommSys_TransmissionType() == TRANSMISSION_TYPE_SERVER_CLIENT) {
                CommSys_RecvData();
            }

            if (((CommSys_CurNetId() == 0) && (CommSys_IsPlayerConnected(0)) || CommSys_IsAlone()) && !sub_0203272C(sub_0203895C())) {
                sub_02034F68();
            }

            if ((CommSys_CurNetId() == 0) || (CommSys_TransmissionType() == TRANSMISSION_TYPE_PARALLEL) || CommSys_IsAlone()) {
                CommSys_RecvDataServer();
            }

            Unk_021C07C5 = 1;
        }

        sub_02033D94(sCommunicationSystem->unk_68C);

        if (CommSys_CurNetId() == 0) {
            sub_02034734();
        }

        sub_020349C4();
    } else {
        sub_02033D94(0);
    }

    sub_02038A20(0);
    sub_0203650C();

    return TRUE;
}

void CommSys_Reset(void)
{
    BOOL v0 = Unk_021C07C5;

    Unk_021C07C5 = 0;

    if (sCommunicationSystem) {
        sub_0203463C();
    }

    Unk_021C07C5 = v0;
}

void CommSys_ResetDS(void)
{
    BOOL v0 = Unk_021C07C5;

    Unk_021C07C5 = 0;

    if (sCommunicationSystem) {
        sCommunicationSystem->transmissionType = 1;
        sub_0203463C();
    }

    Unk_021C07C5 = v0;
}

void CommSys_ResetBattleClient(void)
{
    BOOL v0 = Unk_021C07C5;

    Unk_021C07C5 = 0;

    if (sCommunicationSystem) {
        sub_0203463C();
        sub_02033518();
    }

    Unk_021C07C5 = v0;
}

static void sub_02034B50(void)
{
    if (sub_0203272C(sub_0203895C())) {
        if (sCommunicationSystem->wifiConnected) {
            if (sCommunicationSystem->unk_65C) {
                if (!CommSys_CheckRecvLimit()) {
                    return;
                }

                if (Unk_02100A1D == 4) {
                    sub_020357F0(sCommunicationSystem->sendBuffer[0]);
                    Unk_02100A1D = 2;
                }
            } else {
                if (Unk_02100A1D == 4) {
                    if (!sub_020357F0(sCommunicationSystem->sendBuffer[0])) {
                        return;
                    }

                    Unk_02100A1D = 2;
                }
            }

            if (sub_0203594C()) {
                return;
            }

            if (ov4_021D1590(sCommunicationSystem->sendBuffer[0], 38)) {
                int i;
                int v1 = CommLocal_MaxMachines(sub_0203895C()) + 1;

                for (i = 0; i < v1; i++) {
                    if (CommSys_IsPlayerConnected(i)) {
                        sCommunicationSystem->unk_664[i]++;
                    }
                }

                Unk_02100A1D = 4;
            }
        }
    } else if (CommLocal_IsWifiGroup(sub_0203895C())) {
        if (sCommunicationSystem->wifiConnected) {
            if (sCommunicationSystem->unk_65C) {
                if (sCommunicationSystem->unk_660 > 3) {
                    return;
                }

                if (Unk_02100A1D == 4) {
                    sub_020357F0(sCommunicationSystem->sendBuffer[0]);
                    Unk_02100A1D = 2;
                }
            } else {
                if (Unk_02100A1D == 4) {
                    if (!sub_020357F0(sCommunicationSystem->sendBuffer[0])) {
                        return;
                    }

                    Unk_02100A1D = 2;
                }
            }

            if (sub_0203594C()) {
                return;
            }

            if (ov4_021D142C(sCommunicationSystem->sendBuffer[0], 38)) {
                Unk_02100A1D = 4;
                sCommunicationSystem->unk_660++;
            }
        }
    } else if (((sub_02031934() == 4) && (CommSys_IsPlayerConnected(CommSys_CurNetId()))) || CommSys_IsAlone()) {
        while (TRUE) {
            if (Unk_02100A1D != 4) {
                break;
            }

            if (sCommunicationSystem->unk_660 > 3) {
                break;
            }

            sub_020357F0(sCommunicationSystem->sendBuffer[sCommunicationSystem->unk_6A7]);
            sub_020357F0(sCommunicationSystem->sendBuffer[1 - sCommunicationSystem->unk_6A7]);
            Unk_02100A1D = 0;
            break;
        }

        sub_020353CC();
    }
}

static BOOL sub_02034CF8(int param0)
{
    int v0;
    int v1;
    int i, v3, v4 = 0;

    v0 = sub_02036128(sub_0203895C());
    v1 = CommLocal_MaxMachines(sub_0203895C()) + 1;

    for (i = 0; i < v1; i++) {
        CommRing_UpdateEndPos(&sCommunicationSystem->unk_4B0[i]);

        if (CommSys_IsPlayerConnected(i)) {
            sCommunicationSystem->sendBufferServer[param0][i * v0] = 0xe;
        } else {
            sCommunicationSystem->sendBufferServer[param0][i * v0] = 0xff;
            v4++;
            continue;
        }

        v3 = CommRing_Read(&sCommunicationSystem->unk_4B0[i], &sCommunicationSystem->sendBufferServer[param0][i * v0], v0);

        if (sCommunicationSystem->sendBufferServer[param0][i * v0] == 0xe) {
            v4++;
        }
    }

    if (v4 == v1) {
        return FALSE;
    }

    return TRUE;
}

static void CommSys_UpdateServerClient(void)
{
    int i, v2, v3;
    int v1 = 0;

    if (!sCommunicationSystem) {
        return;
    }

    if (CommLocal_IsWifiGroup(sub_0203895C())) {
        return;
    }

    v2 = sub_02036128(sub_0203895C());
    v3 = CommLocal_MaxMachines(sub_0203895C()) + 1;

    if ((Unk_02100A1C == 2) || (Unk_02100A1C == 0)) {
        Unk_02100A1C++;

        if (CommSys_TransmissionType() == 1 && Unk_021C07C4 == 0) {
            sub_02034CF8(sCommunicationSystem->unk_6A8);
            Unk_021C07C4 = 1;
        }

        if ((sub_02031934() == 4) && !CommSys_IsAlone() && !sub_02031E9C(sCommunicationSystem->sendBufferServer[sCommunicationSystem->unk_6A8], 192, 14, sub_020353B0)) {
            Unk_02100A1C--;
        }

        if ((Unk_02100A1C == 1) || (Unk_02100A1C == 3)) {
            Unk_021C07C4 = 0;

            for (i = 0; i < v3; i++) {
                if (CommSys_IsPlayerConnected(i)) {
                    sCommunicationSystem->unk_664[i]++;
                } else if (CommSys_IsAlone() && (i == 0)) {
                    sCommunicationSystem->unk_664[i]++;
                }
            }

            sub_020350A4(0, (u16 *)sCommunicationSystem->sendBufferServer[sCommunicationSystem->unk_6A8], 192);
            sCommunicationSystem->unk_6A8 = 1 - sCommunicationSystem->unk_6A8;
        }

        if ((sub_02031934() != 4) || CommSys_IsAlone()) {
            Unk_02100A1C++;
        }
    }
}

static BOOL CommSys_CheckRecvLimit(void)
{
    int i;
    int v1 = CommLocal_MaxMachines(sub_0203895C()) + 1;

    for (i = 1; i < v1; i++) {
        if (CommSys_IsPlayerConnected(i) && sCommunicationSystem->unk_664[i] > 3) {
            return FALSE;
        }
    }

    return TRUE;
}

static void sub_02034F68(void)
{
    int i;
    int v1 = CommLocal_MaxMachines(sub_0203895C()) + 1;

    if (CommLocal_IsWifiGroup(sub_0203895C())) {
        if (CommSys_IsPlayerConnected(0)) {
            if (sCommunicationSystem->unk_65C) {
                if (!CommSys_CheckRecvLimit()) {
                    return;
                }

                if (Unk_02100A1C == 4) {
                    if (CommSys_TransmissionType() == 1) {
                        sub_02034CF8(0);
                    }

                    Unk_02100A1C = 2;
                }
            } else {
                if (Unk_02100A1C == 4 && CommSys_TransmissionType() == 1 && !sub_02034CF8(0)) {
                    return;
                }

                Unk_02100A1C = 2;
            }

            if (ov4_021D14D4(sCommunicationSystem->sendBufferServer[0], 192)) {
                Unk_02100A1C = 4;

                for (i = 0; i < v1; i++) {
                    if (CommSys_IsPlayerConnected(i)) {
                        sCommunicationSystem->unk_664[i]++;
                    }
                }
            } else {
                (void)0;
            }
        }
    } else if ((sub_02031934() == 4) || (CommSys_IsAlone())) {
        if (Unk_02100A1C != 4) {
            return;
        }

        if (!CommSys_CheckRecvLimit()) {
            return;
        }

        if (CommSys_TransmissionType() == 0) {
            sub_020358C0(sCommunicationSystem->sendBufferServer[sCommunicationSystem->unk_6A8]);
            sub_020358C0(sCommunicationSystem->sendBufferServer[1 - sCommunicationSystem->unk_6A8]);
        }

        Unk_02100A1C = 0;

        CommSys_UpdateServerClient();
    }
}

void sub_0203509C(u16 param0, u16 *param1, u16 param2)
{
    sub_020350A4(param0, param1, param2);
}

static void sub_020350A4(u16 param0, u16 *param1, u16 param2)
{
    u8 *v0 = (u8 *)param1;
    int i;
    int v2 = param2;

    sCommunicationSystem->unk_660--;

    if (v0 == NULL) {
        return;
    }

    if (v0[0] == 0xb) {
        if (CommSys_TransmissionType() == 1) {
            return;
        }

        v0++;
        v2--;
    } else if (CommSys_TransmissionType() == 0) {
        return;
    }

    if ((sCommunicationSystem->unk_6AA) && (v0[0] & 0x1)) {
        return;
    }

    sCommunicationSystem->unk_6AA = 0;

    if (CommSys_TransmissionType() == 1) {
        int v3 = sub_02036128(sub_0203895C());
        int v4 = CommLocal_MaxMachines(sub_0203895C()) + 1;

        for (i = 0; i < v4; i++) {
            if (v0[0] == 0xff) {
                sCommunicationSystem->unk_68C = sCommunicationSystem->unk_68C & ~(1 << i);
            } else {
                sCommunicationSystem->unk_68C = sCommunicationSystem->unk_68C | (1 << i);
            }

            if (v0[0] == 0xff) {
                v0 += v3;
            } else if (v0[0] == 0xe) {
                v0 += v3;
            } else if ((sCommunicationSystem->unk_697[i]) && (v0[0] & 0x1)) {
                v0 += v3;
            } else {
                v0++;
                CommRring_Write(&sCommunicationSystem->sendRingClient[i], v0, v3 - 1, 1360 + i);
                v0 += (v3 - 1);
                sCommunicationSystem->unk_697[i] = 0;
            }
        }
    } else {
        v0++;
        sCommunicationSystem->unk_68C = v0[0];
        sCommunicationSystem->unk_68C *= 256;

        v0++;
        sCommunicationSystem->unk_68C += v0[0];

        v0++;
        v2 -= 3;
        v2 = v0[0];

        v0++;
        CommRring_Write(&sCommunicationSystem->recvRing, v0, v2, 1380);
    }
}

void sub_020351F8(u16 param0, u16 *buffer, u16 param2)
{
    sub_02035200(param0, buffer, param2);
}

static void sub_02035200(u16 param0, u16 *_buffer, u16 param2)
{
    u8 *buffer = (u8 *)_buffer;
    int v1;

    sCommunicationSystem->unk_664[param0]--;

    if (buffer == NULL) {
        return;
    }

    if ((sCommunicationSystem->unk_697[param0]) && (buffer[0] & 0x1)) {
        v1 = 0;
        return;
    }

    sCommunicationSystem->unk_697[param0] = 0;

    if (CommSys_TransmissionType() == 1) {
        int v2 = sub_02036128(sub_0203895C());
        int v3 = CommLocal_MaxMachines(sub_0203895C()) + 1;

        if (!(buffer[0] & 0x2)) {
            CommRring_Write(&sCommunicationSystem->unk_4B0[param0], buffer, v2, 1449);
        }

        sCommunicationSystem->unk_68F[param0]++;
    } else {
        sub_020356A0(buffer, param0);

        if (buffer[0] & 0x2) {
            return;
        }

        buffer++;
        CommRring_Write(&sCommunicationSystem->sendRingClient[param0], buffer, (12 - 1), 1458);
    }
}

void sub_020352C0(u16 param0, u16 *param1, u16 param2)
{
    u8 *buffer = (u8 *)param1;
    int v1;

    sCommunicationSystem->unk_664[param0]--;

    if (buffer == NULL) {
        return;
    }

    if ((sCommunicationSystem->unk_697[param0]) && (buffer[0] & 0x1)) {
        v1 = 0;
        return;
    }

    sCommunicationSystem->unk_697[param0] = 0;

    if (CommSys_TransmissionType() == 1) {
        int v2 = sub_02036128(sub_0203895C());
        int v3 = CommLocal_MaxMachines(sub_0203895C()) + 1;

        if (buffer[0] == 0xff) {
            sCommunicationSystem->unk_68C = sCommunicationSystem->unk_68C & ~(1 << param0);
        } else {
            sCommunicationSystem->unk_68C = sCommunicationSystem->unk_68C | (1 << param0);
        }

        if (buffer[0] == 0xff) {
            (void)0;
        } else if (buffer[0] == 0x2) {
            (void)0;
        } else if (buffer[0] == 0xe) {
            (void)0;
        } else if ((sCommunicationSystem->unk_697[param0]) && (buffer[0] & 0x1)) {
            (void)0;
        } else {
            buffer++;
            CommRring_Write(&sCommunicationSystem->sendRingClient[param0], buffer, v2 - 1, 1515);
            sCommunicationSystem->unk_697[param0] = 0;
        }
    }
}

static void sub_02035394(BOOL param0)
{
    if (param0) {
        Unk_02100A1D++;
    } else {
        GF_ASSERT(0);
    }
}

static void sub_020353B0(BOOL param0)
{
    if (param0) {
        Unk_02100A1C++;
    } else {
        GF_ASSERT(0);
    }
}

static void sub_020353CC(void)
{
    if (!sCommunicationSystem) {
        return;
    }

    if (CommLocal_IsWifiGroup(sub_0203895C())) {
        return;
    }

    int v3 = sub_02036128(sub_0203895C());
    int v4 = CommLocal_MaxMachines(sub_0203895C()) + 1;

    if (CommSys_IsAlone()) {
        if ((Unk_02100A1D == 2) || (Unk_02100A1D == 0)) {
            Unk_02100A1D++;
            sub_02035394(1);

            sub_02035200(0, (u16 *)sCommunicationSystem->sendBuffer[sCommunicationSystem->unk_6A7], v3);
            sCommunicationSystem->unk_6A7 = 1 - sCommunicationSystem->unk_6A7;
            sCommunicationSystem->unk_660++;
            return;
        }
    }

    if (sub_02031934() == 4) {
        if (!CommSys_IsPlayerConnected(CommSys_CurNetId())) {
            if (CommSys_CurNetId() == 1) {
                (void)0;
            }

            return;
        }

        if ((Unk_02100A1D == 2) || (Unk_02100A1D == 0)) {
            if (CommSys_CurNetId() != 0) {
                Unk_02100A1D++;

                if (!sub_02031E9C(sCommunicationSystem->sendBuffer[sCommunicationSystem->unk_6A7], v3, 14, sub_02035394)) {
                    Unk_02100A1D--;
                } else {
                    sCommunicationSystem->unk_6A7 = 1 - sCommunicationSystem->unk_6A7;
                    sCommunicationSystem->unk_660++;
                }
            } else if (sub_020318EC() & 0xfffe) {
                Unk_02100A1D++;
                sub_02035394(1);
                sub_02035200(0, (u16 *)sCommunicationSystem->sendBuffer[sCommunicationSystem->unk_6A7], v3);
                sCommunicationSystem->unk_6A7 = 1 - sCommunicationSystem->unk_6A7;
                sCommunicationSystem->unk_660++;
            }
        }
    }
}

static void sub_02035534(void)
{
    u16 v0 = 0;

    if (sCommunicationSystem->unk_658 == 0) {
        return;
    }

    if (!(sCommunicationSystem->sendHeldKeys & (PAD_KEY_LEFT | PAD_KEY_RIGHT | PAD_KEY_UP | PAD_KEY_DOWN))) {
        return;
    }

    if (sCommunicationSystem->unk_658 == 2) {
        if (sCommunicationSystem->sendHeldKeys & PAD_KEY_LEFT) {
            v0 |= PAD_KEY_RIGHT;
        }

        if (sCommunicationSystem->sendHeldKeys & PAD_KEY_RIGHT) {
            v0 |= PAD_KEY_LEFT;
        }

        if (sCommunicationSystem->sendHeldKeys & PAD_KEY_UP) {
            v0 |= PAD_KEY_DOWN;
        }

        if (sCommunicationSystem->sendHeldKeys & PAD_KEY_DOWN) {
            v0 |= PAD_KEY_UP;
        }
    } else {
        if (sCommunicationSystem->unk_65A) {
            v0 = sCommunicationSystem->unk_65A;
            sCommunicationSystem->unk_659--;

            if (sCommunicationSystem->unk_659 < 0) {
                sCommunicationSystem->unk_65A = 0;
            }
        } else {
            switch (MATH_Rand32(&sCommunicationSystem->rand, 4)) {
            case 0:
                v0 = PAD_KEY_LEFT;
                break;
            case 1:
                v0 = PAD_KEY_RIGHT;
                break;
            case 2:
                v0 = PAD_KEY_UP;
                break;
            case 3:
                v0 = PAD_KEY_DOWN;
                break;
            }

            sCommunicationSystem->unk_659 = MATH_Rand32(&sCommunicationSystem->rand, 16);
            sCommunicationSystem->unk_65A = v0;
        }
    }

    sCommunicationSystem->sendHeldKeys &= ~(PAD_KEY_LEFT | PAD_KEY_RIGHT | PAD_KEY_UP | PAD_KEY_DOWN);
    sCommunicationSystem->sendHeldKeys += v0;
}

void sub_02035664(void)
{
    sCommunicationSystem->unk_658 = 1;
}

void sub_02035678(void)
{
    sCommunicationSystem->unk_658 = 2;
}

void sub_0203568C(void)
{
    sCommunicationSystem->unk_658 = 0;
}

static BOOL sub_020356A0(u8 *param0, int param1)
{
    u8 v1[2];

    sCommunicationSystem->unk_63C[param1] = 0;

    if (0x10 == (*param0 & 0x10)) {
        v1[0] = *param0 & 0xc;

        if (v1[0] == 0x0) {
            sCommunicationSystem->unk_63C[param1] |= PAD_KEY_UP;
        } else if (v1[0] == 0x4) {
            sCommunicationSystem->unk_63C[param1] |= PAD_KEY_DOWN;
        } else if (v1[0] == 0x8) {
            sCommunicationSystem->unk_63C[param1] |= PAD_KEY_LEFT;
        } else if (v1[0] == 0xC) {
            sCommunicationSystem->unk_63C[param1] |= PAD_KEY_RIGHT;
        }

        sCommunicationSystem->recvSpeed[param1] = (*param0 >> 5) & 0x7;
    }

    return TRUE;
}

void sub_0203572C(void)
{
    return;
}

static BOOL sub_02035730(u8 *param0)
{
    if (sCommunicationSystem->unk_656) {
        return FALSE;
    }

    if (CommSys_IsSendingMovementData() == 0) {
        return FALSE;
    }

    if (sCommunicationSystem->unk_6A9) {
        sCommunicationSystem->unk_6A9--;
    }

    if (sCommunicationSystem->sendHeldKeys & PAD_KEY_UP) {
        param0[0] = param0[0] | 0x0 | 0x10;
        sCommunicationSystem->unk_6A9 = 8;
    } else if (sCommunicationSystem->sendHeldKeys & PAD_KEY_DOWN) {
        param0[0] = param0[0] | 0x4 | 0x10;
        sCommunicationSystem->unk_6A9 = 8;
    } else if (sCommunicationSystem->sendHeldKeys & PAD_KEY_LEFT) {
        param0[0] = param0[0] | 0x8 | 0x10;
        sCommunicationSystem->unk_6A9 = 8;
    } else if (sCommunicationSystem->sendHeldKeys & PAD_KEY_RIGHT) {
        param0[0] = param0[0] | 0xC | 0x10;
        sCommunicationSystem->unk_6A9 = 8;
    }

    param0[0] |= (sCommunicationSystem->sendSpeed << 5);
    return FALSE;
}

static BOOL sub_020357F0(u8 *param0)
{
    int v1 = sub_02036128(sub_0203895C());
    int v2 = CommLocal_MaxMachines(sub_0203895C()) + 1;

    if (sCommunicationSystem->unk_6AC == 0) {
        param0[0] = 0x0;
    } else {
        param0[0] = 0x1;
    }

    if (CommSys_TransmissionType() == 0) {
        sub_02035730(param0);
    }

    sCommunicationSystem->unk_6AC = 0;

    if (CommQueue_IsEmpty(&sCommunicationSystem->commQueueManSend)) {
        param0[0] |= 0x2;

        if (param0[0] == 0x2) {
            return FALSE;
        }
    } else {
        UnkStruct_0203233C v3;

        v3.unk_04 = v1 - 1;
        v3.unk_00 = &param0[1];

        if (!sub_02032574(&sCommunicationSystem->commQueueManSend, &v3, 1)) {
            sCommunicationSystem->unk_6AC = 1;
        }

        if (CommSys_TransmissionType() == 1) {
            sCommunicationSystem->unk_68E++;

            param0[0] |= ((sCommunicationSystem->unk_68E << 4) & 0xf0);
        }
    }

    return TRUE;
}

static void sub_020358C0(u8 *param0)
{
    param0[0] = 0xb;

    if (sCommunicationSystem->unk_6AD == 0) {
        param0[1] = 0x0;
    } else {
        param0[1] = 0x1;
    }

    u16 v1 = sub_020318EC();

    param0[2] = v1 >> 8;
    param0[3] = v1 & 0xff;

    UnkStruct_0203233C v2;

    v2.unk_04 = 192 - 5;
    v2.unk_00 = &param0[5];

    if (sub_02032574(&sCommunicationSystem->commQueueManSendServer, &v2, 0)) {
        sCommunicationSystem->unk_6AD = 0;
        param0[4] = (192 - 5) - v2.unk_04;
    } else {
        sCommunicationSystem->unk_6AD = 1;
        param0[4] = 192 - 5;
    }
}

void sub_02035938(u8 param0)
{
    sCommunicationSystem->unk_6B4 = param0;
}

static BOOL sub_0203594C(void)
{
    if (sCommunicationSystem->unk_6B4 == 0) {
        return FALSE;
    }

    if ((sCommunicationSystem->unk_6B5 % sCommunicationSystem->unk_6B4) == 0) {
        return TRUE;
    }

    return FALSE;
}

BOOL CommSys_SendDataHuge(int cmd, const void *data, int param2)
{
    if (!CommSys_IsPlayerConnected(CommSys_CurNetId()) && !CommSys_IsAlone()) {
        return FALSE;
    }

    if (CommQueue_Write(&sCommunicationSystem->commQueueManSend, cmd, (u8 *)data, param2, 1, 0)) {
        return TRUE;
    }

    if (sub_0203895C() == 10) {
        sub_020363BC();
    }

    return FALSE;
}

BOOL CommSys_SendData(int cmd, const void *data, int param2)
{
    if (!CommSys_IsPlayerConnected(CommSys_CurNetId()) && !CommSys_IsAlone()) {
        return FALSE;
    }

    if (CommQueue_Write(&sCommunicationSystem->commQueueManSend, cmd, (u8 *)data, param2, 1, 1)) {
        return TRUE;
    }

    if (sub_0203895C() == 10) {
        sub_020363BC();
    }

    return FALSE;
}

BOOL sub_02035A3C(int cmd, const void *data, int param2)
{
    if (CommSys_CurNetId() != 0) {
        GF_ASSERT(FALSE);
        return FALSE;
    }

    if (!CommSys_IsPlayerConnected(0) && !CommSys_IsAlone()) {
        return FALSE;
    }

    if (CommSys_TransmissionType() == 1) {
        return CommSys_SendDataHuge(cmd, data, param2);
    }

    if (CommQueue_Write(&sCommunicationSystem->commQueueManSendServer, cmd, (u8 *)data, param2, 1, 0)) {
        return TRUE;
    }

    if (sub_0203895C() == 10) {
        sub_020363BC();
    }

    return FALSE;
}

BOOL CommSys_SendDataServer(int cmd, const void *data, int param2)
{
    if (CommSys_CurNetId() != 0) {
        sub_020363BC();

        return FALSE;
    }

    if (!CommSys_IsPlayerConnected(0) && !CommSys_IsAlone()) {
        return FALSE;
    }

    if (CommSys_TransmissionType() == 1) {
        return CommSys_SendData(cmd, data, param2);
    }

    if (CommQueue_Write(&sCommunicationSystem->commQueueManSendServer, cmd, (u8 *)data, param2, 1, 1)) {
        return TRUE;
    }

    if (sub_0203895C() == 10) {
        sub_020363BC();
    }

    return FALSE;
}

BOOL sub_02035B48(int cmd, const void *data)
{
    return CommSys_SendDataServer(cmd, data, 0);
}

int CommSys_SendRingRemainingSize(void)
{
    return CommRing_RemainingSize(&sCommunicationSystem->sendRing);
}

static void CommSys_EndCallback(int netId, int command, int param2, void *param3, CommRecvPackage *param4)
{
    CommCmd_Callback(netId, command, param2, param3);
    param4->unk_0A = 0xee;
    param4->unk_08 = 0xffff;
    param4->unk_04 = NULL;
    param4->unk_00 = 0;
}

static void CommSys_RecvDataSingle(CommRing *ring, int netId, u8 *buffer, CommRecvPackage *param3)
{
    int size;
    u8 cmd;
    int v2;
    int v3;

    while (CommRing_DataSize(ring) != 0) {
        v2 = ring->startIndex;

        if (param3->unk_0A != 0xee) {
            cmd = param3->unk_0A;
        } else {
            cmd = CommRing_ReadByte(ring);

            if (cmd == 0xee) {
                continue;
            }
        }

        v2 = ring->startIndex;
        param3->unk_0A = cmd;

        if (param3->unk_08 != 0xffff) {
            size = param3->unk_08;
        } else {
            size = CommCmd_PacketSizeOf(cmd);

            if (sCommunicationSystem->unk_6B1) {
                return;
            }

            if (0xffff == size) {
                if (CommRing_DataSize(ring) < 1) {
                    ring->startIndex = v2;
                    break;
                }

                size = CommRing_ReadByte(ring) * 0x100;
                size += CommRing_ReadByte(ring);
                v2 = ring->startIndex;
            }

            param3->unk_08 = size;
        }

        if (sub_020328D0(cmd)) {
            if (param3->unk_04 == NULL) {
                param3->unk_04 = sub_0203290C(cmd, netId, param3->unk_08);
            }

            v3 = CommRing_Read(ring, buffer, size - param3->unk_00);

            if (param3->unk_04) {
                MI_CpuCopy8(buffer, &param3->unk_04[param3->unk_00], v3);
            }

            param3->unk_00 += v3;

            if (param3->unk_00 >= size) {
                CommSys_EndCallback(netId, cmd, size, param3->unk_04, param3);

                if (cmd == 17) {
                    break;
                }
            }
        } else {
            if (CommRing_DataSize(ring) >= size) {
                CommRing_Read(ring, buffer, size);
                CommSys_EndCallback(netId, cmd, size, (void *)buffer, param3);

                if (cmd == 17) {
                    break;
                }
            } else {
                ring->startIndex = v2;
                break;
            }
        }
    }
}

static void CommSys_RecvData(void)
{
    int v0 = 0;

    if (!sCommunicationSystem) {
        return;
    }

    if (sCommunicationSystem->unk_6B3) {
        return;
    }

    CommRing_UpdateEndPos(&sCommunicationSystem->recvRing);

    if (CommRing_DataSize(&sCommunicationSystem->recvRing) > 0) {
        CommSys_RecvDataSingle(&sCommunicationSystem->recvRing, v0, sCommunicationSystem->tempBuffer, &sCommunicationSystem->commRecvClient);
    }
}

static void CommSys_RecvDataServer(void)
{
    int i, v3;

    if (!sCommunicationSystem) {
        return;
    }

    if (sCommunicationSystem->unk_6B3) {
        return;
    }

    v3 = CommLocal_MaxMachines(sub_0203895C()) + 1;

    for (i = 0; i < v3; i++) {
        CommRing_UpdateEndPos(&sCommunicationSystem->sendRingClient[i]);

        if (CommRing_DataSize(&sCommunicationSystem->sendRingClient[i]) > 0) {
            CommSys_RecvDataSingle(&sCommunicationSystem->sendRingClient[i], i, sCommunicationSystem->tempBuffer, &sCommunicationSystem->commRecvServer[i]);
        }
    }
}

BOOL CommSys_IsPlayerConnected(u16 param0)
{
    if (!sCommunicationSystem) {
        return FALSE;
    }

    if (CommLocal_IsWifiGroup(sub_0203895C())) {
        if (sCommunicationSystem->wifiConnected) {
            u16 v0 = DWC_GetAIDBitmap();

            if (v0 & (1 << param0)) {
                return TRUE;
            }
        }

        return FALSE;
    }

    if (!CommSys_IsInitialized()) {
        return FALSE;
    }

    if (sub_02031934() != 4) {
        return FALSE;
    }

    if (CommSys_CurNetId() == param0) {
        return TRUE;
    } else if (CommSys_CurNetId() == 0) {
        u16 v1 = sub_020318EC();

        if (v1 & (1 << param0)) {
            return TRUE;
        }
    } else if (sCommunicationSystem->unk_68C & (1 << param0)) {
        return TRUE;
    }

    return FALSE;
}

int CommSys_ConnectedCount(void)
{
    int v0 = 0, i;

    for (i = 0; i < (7 + 1); i++) {
        if (CommSys_IsPlayerConnected(i)) {
            v0++;
        }
    }

    return v0;
}

BOOL CommSys_IsInitialized(void)
{
    if (sCommunicationSystem) {
        if (CommLocal_IsWifiGroup(sub_0203895C())) {
            return TRUE;
        }
    }

    return CommServerClient_IsInitialized();
}

void CommSys_SetSendSpeed(u8 param0)
{
    sCommunicationSystem->sendSpeed = param0;
}

u8 CommSys_RecvSpeed(int param0)
{
    return sCommunicationSystem->recvSpeed[param0];
}

u16 sub_02035E84(int param0)
{
    int v0;

    if (!sCommunicationSystem) {
        return 0;
    }

    v0 = sCommunicationSystem->unk_63C[param0];
    sCommunicationSystem->unk_63C[param0] = 0;

    return v0;
}

void CommSys_EnableSendMovementData(void)
{
    if (sCommunicationSystem) {
        sCommunicationSystem->sendHeldKeys |= 0x8000;
    }
}

void CommSys_DisableSendMovementData(void)
{
    if (sCommunicationSystem) {
        sCommunicationSystem->sendHeldKeys = 0;
    }
}

BOOL CommSys_IsSendingMovementData(void)
{
    if (sCommunicationSystem) {
        return sCommunicationSystem->sendHeldKeys & 0x8000;
    }

    return TRUE;
}

BOOL CommSys_WriteToQueueServer(int cmd, const void *data, int param2)
{
    if (CommSys_TransmissionType() == 1) {
        return CommQueue_Write(&sCommunicationSystem->commQueueManSend, cmd, (u8 *)data, param2, 1, 0);
    } else {
        return CommQueue_Write(&sCommunicationSystem->commQueueManSendServer, cmd, (u8 *)data, param2, 1, 0);
    }
}

BOOL CommSys_WriteToQueue(int cmd, const void *data, int param2)
{
    return CommQueue_Write(&sCommunicationSystem->commQueueManSend, cmd, (u8 *)data, param2, 0, 0);
}

static void CommSys_Transmission(void)
{
    BOOL v0 = FALSE;

    if (!sCommunicationSystem) {
        return;
    }

    switch (sCommunicationSystem->transmissionState) {
    case 1:
        if (CommSys_TransmissionType() == 1) {
            v0 = CommSys_SendDataFixedSize(11, &sCommunicationSystem->unk_6A4);
        } else {
            v0 = CommSys_SendDataServer(11, &sCommunicationSystem->unk_6A4, 1);
        }

        if (v0) {
            sCommunicationSystem->transmissionState = 2;
        }
        break;
    case 3:
        if (CommSys_SendDataFixedSize(12, &sCommunicationSystem->unk_6A4)) {
            CommSys_SwitchTransitionType(sCommunicationSystem->unk_6A4);
            sCommunicationSystem->transmissionState = 0;
        }
        break;
    }
}

void sub_02036008(int unused0, int unused1, void *param2, void *unused3)
{
    u8 *v0 = param2;

    if (CommSys_CurNetId() != 0) {
        return;
    }

    sCommunicationSystem->transmissionState = 1;
    sCommunicationSystem->unk_6A4 = v0[0];
}

void sub_02036030(int unused0, int unused1, void *param2, void *unused3)
{
    u8 *v0 = param2;

    if (CommSys_CurNetId() == 0) {
        return;
    }

    sCommunicationSystem->unk_6A4 = v0[0];
    sCommunicationSystem->transmissionState = 3;
}

void sub_02036058(int unused0, int unused1, void *param2, void *unused3)
{
    u8 *v0 = param2;

    if (CommSys_CurNetId() != 0) {
        return;
    }

    if (sCommunicationSystem->transmissionState == 2) {
        CommSys_SwitchTransitionType(v0[0]);
        sCommunicationSystem->transmissionState = 0;
    }
}

u16 CommSys_CurNetId(void)
{
    if (sCommunicationSystem) {
        if (CommLocal_IsWifiGroup(sub_0203895C())) {
            int netId = ov4_021D1E30();

            if (netId != -1) {
                return netId;
            }
        } else if (CommSys_IsAlone()) {
            return 0;
        } else {
            return sub_02031F90();
        }
    }

    return 0;
}

BOOL CommSys_SendDataFixedSize(int cmd, const void *data)
{
    return CommSys_SendData(cmd, data, 0);
}

BOOL Link_Message(int cmd)
{
    return CommSys_SendData(cmd, NULL, 0);
}

BOOL sub_020360E8(void)
{
    return CommServerClient_IsClientConnecting();
}

BOOL CommSys_CheckError(void)
{
    if (CommSys_IsAlone()) {
        return FALSE;
    }

    if (sCommunicationSystem && sCommunicationSystem->unk_6B1) {
        CommMan_SetErrorHandling(1, 1);
        return TRUE;
    }

    return CommServerClient_CheckError();
}

u16 sub_02036128(u16 param0)
{
    if (CommLocal_MaxMachines(param0) >= 5) {
        return 12;
    }

    if (CommSys_TransmissionType() == 0) {
        return 12;
    }

    return 38;
}

int CommType_MaxPlayers(int param0)
{
    return CommLocal_MaxMachines(param0) + 1;
}

int CommType_MinPlayers(int param0)
{
    return sub_02032698(param0) + 1;
}

void CommSys_SetAlone(BOOL param0)
{
    if (sCommunicationSystem) {
        sCommunicationSystem->unk_6AE = param0;
    }
}

BOOL CommSys_IsAlone(void)
{
    if (sCommunicationSystem) {
        return sCommunicationSystem->unk_6AE;
    }

    return FALSE;
}

void sub_0203619C(int param0, int param1, void *param2, void *param3)
{
    u8 v0;

    if (!sub_0203406C() && CommSys_CurNetId() == 0) {
        sub_02035B48(2, &v0);
    }

    sub_0203408C();
}

void CommSys_Seed(MATHRandContext32 *rand)
{
    u64 seed = 0;
    RTCDate date;
    RTCTime time;

    GetCurrentDateTime(&date, &time);
    seed = (((((((u64)date.year * 16ULL + date.month) * 32ULL) + date.day) * 32ULL + time.hour) * 64ULL + time.minute) * 64ULL + (time.second + gCoreSys.vblankCounter));
    MATH_InitRand32(rand, seed);
}

BOOL sub_02036254(int param0)
{
    return CommQueue_CompareCmd(&sCommunicationSystem->commQueueManSendServer, param0);
}

BOOL sub_0203626C(int param0)
{
    return CommQueue_CompareCmd(&sCommunicationSystem->commQueueManSend, param0);
}

BOOL sub_02036284(void)
{
    return CommQueue_IsEmpty(&sCommunicationSystem->commQueueManSendServer);
}

BOOL sub_0203629C(void)
{
    return CommQueue_IsEmpty(&sCommunicationSystem->commQueueManSend);
}

void CommSys_SetWifiConnected(BOOL param0)
{
    sCommunicationSystem->wifiConnected = param0;
}

BOOL CommSys_WifiConnected(void)
{
    return sCommunicationSystem->wifiConnected;
}

void sub_020362DC(int param0, int param1)
{
    if (sCommunicationSystem) {
        sCommunicationSystem->unk_69F[param1] = param0;
    }
}

int sub_020362F4(int networkId)
{
    if (sCommunicationSystem && sCommunicationSystem->unk_69F[networkId] != 0xff) {
        return sCommunicationSystem->unk_69F[networkId];
    }

    return networkId;
}

BOOL sub_02036314(void)
{
    if (!CommLocal_IsWifiGroup(sub_0203895C())) {
        return FALSE;
    }

    return ov4_021D254C();
}

void sub_0203632C(BOOL param0)
{
    int i;

    if (CommLocal_IsWifiGroup(sub_0203895C())) {
        if (sCommunicationSystem->unk_65C == param0) {
            return;
        }

        sCommunicationSystem->unk_65C = param0;

        if (param0) {
            sCommunicationSystem->unk_660 = 0;

            for (i = 0; i < MAX_CONNECTED_PLAYERS; i++) {
                sCommunicationSystem->unk_664[i] = 0;
            }
        }
    }
}

void sub_02036378(BOOL param0)
{
    sub_0203632C(param0);

    if (CommLocal_IsWifiGroup(sub_0203895C())) {
        if (param0) {
            ov4_021D2598(0);
        } else {
            ov4_021D2598(1);
        }
    }
}

BOOL sub_020363A0(void)
{
    if (sCommunicationSystem->unk_6A9) {
        return TRUE;
    }

    return FALSE;
}

void sub_020363BC(void)
{
    sCommunicationSystem->unk_6B1 = 1;
}

void CommSys_StartShutdown(void)
{
    if (sCommunicationSystem) {
        sCommunicationSystem->shuttingDown = 1;
    }
}
