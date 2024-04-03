#include <nitro.h>
#include <string.h>
#include <nitro/os.h>
#include <nnsys/g3d/glbstate.h>

#include "core_sys.h"

#include "struct_decls/sys_task.h"
#include "trainer_info.h"
#include "struct_decls/struct_0202855C_decl.h"
#include "struct_decls/struct_020298B0_decl.h"
#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "overlay023/struct_ov23_02249978_decl.h"

#include "field/field_system.h"
#include "struct_defs/struct_02057B48.h"
#include "struct_defs/struct_020590C4.h"
#include "struct_defs/struct_020619DC.h"
#include "overlay023/struct_ov23_0224A294.h"

#include "unk_0200D9E8.h"
#include "heap.h"
#include "constants/heap.h"
#include "trainer_info.h"
#include "unk_0202854C.h"
#include "unk_0202CD50.h"
#include "communication_information.h"
#include "communication_system.h"
#include "unk_020366A0.h"
#include "unk_0203A378.h"
#include "unk_0203CC84.h"
#include "unk_02054D00.h"
#include "unk_02057518.h"
#include "unk_0205E7D0.h"
#include "unk_0205F180.h"
#include "unk_02061804.h"
#include "unk_02063400.h"
#include "unk_020655F4.h"
#include "unk_0206CCB0.h"
#include "overlay005/ov5_021F55CC.h"
#include "overlay023/ov23_0223E140.h"
#include "overlay023/ov23_02241F74.h"
#include "overlay023/ov23_0224340C.h"
#include "overlay023/ov23_02249918.h"
#include "overlay023/ov23_022499E4.h"
#include "overlay023/ov23_0224A1D0.h"
#include "overlay023/ov23_0224B05C.h"

static int sub_020581CC(int param0, int param1);
static BOOL sub_02058A18(int param0, int param1);
static BOOL sub_020586A8(int param0, int param1, int param2, int param3);
static void sub_02057BC4(void * param0);
static void sub_02057C2C(void * param0);
static void CommPlayer_Add(u8 param0);
static void CommPlayer_Move(SysTask * param0, void * param1);
static void Task_CommPlayerManagerRun(SysTask * param0, void * param1);
static void sub_02057EF8(void * param0);
static void CommPlayer_MoveClient(int param0);
static void sub_020591A8(void);

static CommPlayer * sCommPlayerManager = NULL;

CommPlayer * CommPlayerData_Get (void)
{
    return sCommPlayerManager;
}

BOOL CommPlayerManager_Init (void * dest, FieldSystem * fieldSys, BOOL isUnderground)
{
    int netId;

    if (sCommPlayerManager) {
        return 0;
    }

    if (sCommPlayerManager == NULL) {
        sCommPlayerManager = dest;
        MI_CpuFill8(sCommPlayerManager, 0, sizeof(CommPlayer));
    }

    sCommPlayerManager->isUnderground = isUnderground;
    sCommPlayerManager->unk_04 = NULL;

    if (isUnderground) {
        sCommPlayerManager->unk_04 = Heap_AllocFromHeap(HEAP_ID_COMMUNICATION, ov23_02249918());
        ov23_0224991C(sCommPlayerManager->unk_04);
    }

    sCommPlayerManager->fieldSys = fieldSys;

    for (netId = 0; netId < MAX_CONNECTED_PLAYERS; netId++) {
        sCommPlayerManager->playerLocation[netId].dir = -1;
        sCommPlayerManager->playerLocation[netId].x = 0xffff;
        sCommPlayerManager->playerLocation[netId].z = 0xffff;
        sCommPlayerManager->playerLocation[netId].moveSpeed = 2;
        sCommPlayerManager->playerLocationServer[netId].dir = -1;
        sCommPlayerManager->playerLocationServer[netId].x = 0xffff;
        sCommPlayerManager->playerLocationServer[netId].z = 0xffff;
        sCommPlayerManager->playerLocationServer[netId].moveSpeed = 2;
        sCommPlayerManager->unk_102[netId] = -1;
        sCommPlayerManager->unk_E2[netId] = 0;
        sCommPlayerManager->unk_EA[netId] = 1;
        sCommPlayerManager->unk_F2[netId] = 0;
        sCommPlayerManager->unk_14A[netId].unk_20 = 0xff;
    }

    sCommPlayerManager->unk_2BC = 0;
    sCommPlayerManager->unk_2BF = 0;
    sCommPlayerManager->task = SysTask_Start(Task_CommPlayerManagerRun, NULL, (100 + 100));

    CommSys_EnableSendMovementData();
    CommPlayer_InitPersonal();

    return 1;
}

void CommPlayerMan_Reset (void)
{
    int netId;

    if (sCommPlayerManager == NULL) {
        return;
    }

    for (netId = 0; netId < MAX_CONNECTED_PLAYERS; netId++) {
        if (sCommPlayerManager->isUnderground) {
            CommPlayer_Destroy(netId, TRUE, FALSE);
        } else {
            CommPlayer_Destroy(netId, TRUE, TRUE);
        }
    }

    if (sCommPlayerManager->isUnderground) {
        sCommPlayerManager->isResetting = TRUE;
    }
}

void CommPlayerMan_Restart (void)
{
    if (sCommPlayerManager == NULL) {
        return;
    }

    sCommPlayerManager->unk_2BB = 1;
    sCommPlayerManager->isResetting = 0;

    CommPlayer_InitPersonal();
    CommPlayer_SendPos(1);
}

void CommPlayerMan_Delete (BOOL deletePlayerData)
{
    int netId, v1;

    if (sCommPlayerManager != NULL) {
        for (v1 = 0; v1 < 5; v1++) {
            if (sCommPlayerManager->unk_27C[v1]) {
                Heap_FreeToHeap(sCommPlayerManager->unk_27C[v1]);
                sCommPlayerManager->unk_27C[v1] = NULL;
            }
        }

        if (sCommPlayerManager->unk_2B2 >= 5) {
            sub_0206DF60(sCommPlayerManager->fieldSys, sCommPlayerManager->unk_2B2);
        }

        for (netId = 0; netId < MAX_CONNECTED_PLAYERS; netId++) {
            CommPlayer_Destroy(netId, FALSE, deletePlayerData);
        }

        SysTask_Done(sCommPlayerManager->task);

        if (sCommPlayerManager->unk_04) {
            ov23_02249938(sCommPlayerManager->unk_04);
            Heap_FreeToHeap(sCommPlayerManager->unk_04);
        }

        Heap_FreeToHeap(sCommPlayerManager);
        sCommPlayerManager = NULL;
    }
}

void CommPlayerMan_Reinit (void)
{
    int netId, v1;

    for (netId = 0; netId < MAX_CONNECTED_PLAYERS; netId++) {
        if (sCommPlayerManager->isUnderground) {
            ov23_0224AF4C(netId);
            ov23_0224AD98(netId);

            if (netId != 0) {
                ov23_0224AE60(netId);
            }
        }

        if (sCommPlayerManager->playerAvatar[netId] != NULL) {
            if (sCommPlayerManager->fieldSys->playerAvatar != sCommPlayerManager->playerAvatar[netId]) {
                if (sCommPlayerManager->isUnderground) {
                    sub_0205E8E8(sCommPlayerManager->playerAvatar[netId]);
                }
            }

            sCommPlayerManager->playerAvatar[netId] = NULL;
        }

        sCommPlayerManager->isActive[netId] = 0;
        sCommPlayerManager->playerLocation[netId].dir = -1;
        sCommPlayerManager->playerLocation[netId].x = 0xffff;
        sCommPlayerManager->playerLocation[netId].z = 0xffff;
        sCommPlayerManager->playerLocation[netId].moveSpeed = 2;
        sCommPlayerManager->playerLocationServer[netId].dir = -1;
        sCommPlayerManager->playerLocationServer[netId].x = 0xffff;
        sCommPlayerManager->playerLocationServer[netId].z = 0xffff;
        sCommPlayerManager->playerLocationServer[netId].moveSpeed = 2;
        sCommPlayerManager->unk_102[netId] = -1;
        sCommPlayerManager->unk_10A[netId] = 0;
        sCommPlayerManager->unk_E2[netId] = 0;
        sCommPlayerManager->unk_EA[netId] = 1;
        sCommPlayerManager->unk_F2[netId] = 0;
        sCommPlayerManager->unk_13A[netId] = 0;
        sCommPlayerManager->unk_142[netId] = 0;
    }

    sCommPlayerManager->unk_2BF = 0;
    CommPlayer_InitPersonal();

    if (sCommPlayerManager->task == NULL) {
        sCommPlayerManager->task = SysTask_Start(Task_CommPlayerManagerRun, NULL, (100 + 100));
    }
}

void CommPlayerMan_Stop (void)
{
    if (sCommPlayerManager->task) {
        Task_CommPlayerManagerRun(NULL, NULL);
        SysTask_Done(sCommPlayerManager->task);
    }

    sCommPlayerManager->task = NULL;
}

void CommPlayer_InitPersonal (void)
{
    sCommPlayerManager->playerAvatar[CommSys_CurNetId()] = sCommPlayerManager->fieldSys->playerAvatar;
    sCommPlayerManager->isActive[CommSys_CurNetId()] = 1;
    sCommPlayerManager->playerLocation[CommSys_CurNetId()].x = Player_XPos(sCommPlayerManager->fieldSys->playerAvatar);
    sCommPlayerManager->playerLocation[CommSys_CurNetId()].z = Player_ZPos(sCommPlayerManager->fieldSys->playerAvatar);
    sCommPlayerManager->playerLocation[CommSys_CurNetId()].dir = Player_Dir(sCommPlayerManager->fieldSys->playerAvatar);
    sCommPlayerManager->playerLocationServer[CommSys_CurNetId()].x = Player_XPos(sCommPlayerManager->fieldSys->playerAvatar);
    sCommPlayerManager->playerLocationServer[CommSys_CurNetId()].z = Player_ZPos(sCommPlayerManager->fieldSys->playerAvatar);
    sCommPlayerManager->playerLocationServer[CommSys_CurNetId()].dir = Player_Dir(sCommPlayerManager->fieldSys->playerAvatar);
}

void CommPlayer_CopyPersonal (int param0)
{
    int v0;

    sCommPlayerManager->unk_2BF = 0;
    v0 = CommSys_CurNetId();

    sCommPlayerManager->playerAvatar[v0] = sCommPlayerManager->fieldSys->playerAvatar;
    sCommPlayerManager->isActive[v0] = 1;
    sCommPlayerManager->playerLocation[v0].x = sCommPlayerManager->playerLocation[param0].x;
    sCommPlayerManager->playerLocation[v0].z = sCommPlayerManager->playerLocation[param0].z;
    sCommPlayerManager->playerLocation[v0].dir = sCommPlayerManager->playerLocation[param0].dir;
    sCommPlayerManager->playerLocationServer[v0].x = sCommPlayerManager->playerLocationServer[param0].x;
    sCommPlayerManager->playerLocationServer[v0].z = sCommPlayerManager->playerLocationServer[param0].z;
    sCommPlayerManager->playerLocationServer[v0].dir = sCommPlayerManager->playerLocationServer[param0].dir;
    sCommPlayerManager->unk_290[v0] = sCommPlayerManager->unk_290[param0];
    sCommPlayerManager->unk_290[param0] = NULL;

    if (sCommPlayerManager->unk_290[v0]) {
        TrainerInfo_Copy(sCommPlayerManager->unk_290[v0], (TrainerInfo *)&sCommPlayerManager->unk_14A[v0].unk_00);
    }

    sCommPlayerManager->unk_14A[param0].unk_20 = 0xff;
}

void CommPlayer_SendXZPos (BOOL param0, int param1, int param2)
{
    u8 v0[5 + 1];
    int v1 = Player_Dir(sCommPlayerManager->fieldSys->playerAvatar);

    v0[0] = param1;
    v0[1] = param1 >> 8;
    v0[2] = param2;
    v0[3] = param2 >> 8;
    v0[4] = v1;

    if (param0) {
        v0[4] = v0[4] | 0x80;
    }

    sub_020360D0(22, v0);
    sCommPlayerManager->unk_2BB = 1;
}

void CommPlayer_SendPos (BOOL param0)
{
    int v0 = Player_XPos(sCommPlayerManager->fieldSys->playerAvatar);
    int v1 = Player_ZPos(sCommPlayerManager->fieldSys->playerAvatar);

    CommPlayer_SendXZPos(param0, v0, v1);
}

void CommPlayer_SendPosServer (BOOL param0)
{
    int v0 = sCommPlayerManager->playerLocationServer[CommSys_CurNetId()].x;
    int v1 = sCommPlayerManager->playerLocationServer[CommSys_CurNetId()].z;

    CommPlayer_SendXZPos(param0, v0, v1);
}

static void sub_02057B48 (int param0, const CommPlayerLocation * playerLocation)
{
    u8 v0[4 + 1];
    int v1 = playerLocation->x, z = playerLocation->z;

    if (playerLocation->x < 0) {
        v1 = 0;
    } else if (playerLocation->x >= 0xf000) {
        v1 = 0xf000 - 1;
    }

    if (playerLocation->z < 0) {
        z = 0;
    } else if (playerLocation->z >= 0xf000) {
        z = 0xf000 - 1;
    }

    v0[0] = param0 & 0xf;
    v0[1] = v1;
    v0[2] = ((v1 >> 8) & 0x1) + ((z >> 7) & 0x2);
    v0[3] = z;

    if (playerLocation->unk_07) {
        v0[2] |= 0x80;
    }

    v0[0] += ((playerLocation->dir % 4) << 4);
    v0[0] += (playerLocation->moveSpeed << 6);

    CommSys_SendDataServer(23, v0, 0);
}

void sub_02057BC4 (void * param0)
{
    int v0 = sub_0205EB0C(sCommPlayerManager->fieldSys->playerAvatar);
    int v1 = sub_0205EB14(sCommPlayerManager->fieldSys->playerAvatar);

    if ((0 == v0) && CommSys_IsPlayerConnected(CommSys_CurNetId())) {
        if (!sCommPlayerManager->unk_2BA) {
            CommPlayer_SendPos(1);
            sCommPlayerManager->unk_2BA = 1;
        }
    }

    if ((1 == v0) && (1 == v1)) {
        sCommPlayerManager->unk_2BA = 0;
    }
}

static void sub_02057C2C (void * param0)
{
    int v0;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if (sCommPlayerManager->isActive[v0]) {
            CommPlayerLocation * v1 = &sCommPlayerManager->playerLocationServer[v0];

            if (sCommPlayerManager->unk_132[v0] || sCommPlayerManager->unk_2BB) {
                sCommPlayerManager->unk_132[v0] = 0;
                sub_02057B48(v0, v1);
            }
        }
    }

    sCommPlayerManager->unk_2BB = 0;
}

u32 CommPlayer_Size (void)
{
    return sizeof(CommPlayer);
}

static void CommPlayer_Add (u8 param0)
{
    fx32 v0, v1;
    PlayerAvatar * playerAvatar;

    if (sCommPlayerManager->playerAvatar[param0] != NULL) {
        return;
    }

    if (sCommPlayerManager->isResetting) {
        return;
    }

    {
        TrainerInfo * v3 = CommInfo_TrainerInfo(param0);

        if (v3 == NULL) {
            (void)0;
        }

        if (v3) {
            if (!sCommPlayerManager->isUnderground) {
                if (param0 != CommSys_CurNetId()) {
                    LocalMapObject * v4 = sub_0206251C(sCommPlayerManager->fieldSys->unk_38, 0xff + param0 + 1);

                    if (v4) {
                        sub_02061AF4(v4);
                    }
                }
            }

            {
                int v5 = 0;

                if (0 == TrainerInfo_GameCode(v3)) {
                    v5 = 1;
                }

                playerAvatar = sub_0205E7D0(sCommPlayerManager->fieldSys->unk_38, sCommPlayerManager->playerLocation[param0].x, sCommPlayerManager->playerLocation[param0].z, sCommPlayerManager->playerLocation[param0].dir, 0x0, TrainerInfo_Gender(v3), v5, NULL);
            }

            GF_ASSERT(playerAvatar != NULL);
            sCommPlayerManager->playerAvatar[param0] = playerAvatar;

            sub_0206290C(Player_LocalMapObject(playerAvatar), 0xff + param0 + 1);

            if (sCommPlayerManager->isUnderground) {
                ov23_02243038(param0);
            }

            if (sCommPlayerManager->isUnderground && !sCommPlayerManager->isActive[param0]) {
                if (!sCommPlayerManager->isResetting) {
                    ov5_021F5634(sCommPlayerManager->fieldSys, sCommPlayerManager->playerLocation[param0].x, 0, sCommPlayerManager->playerLocation[param0].z);
                }

                sCommPlayerManager->isActive[param0] = 1;
            } else if (!sCommPlayerManager->isUnderground) {
                sCommPlayerManager->isActive[param0] = 1;
            }
        }
    }
}

void CommPlayer_Destroy (u8 param0, BOOL param1, BOOL param2)
{
    int v0;

    if (sCommPlayerManager == NULL) {
        return;
    }

    MI_CpuClear8(sCommPlayerManager->unk_5A, (7 + 1));

    if (sCommPlayerManager->isUnderground) {
        ov23_0224AF4C(param0);
    }

    if (sCommPlayerManager->playerAvatar[param0] != NULL) {
        if (sCommPlayerManager->fieldSys->playerAvatar != sCommPlayerManager->playerAvatar[param0]) {
            if (sCommPlayerManager->isUnderground || param2) {
                sub_0205E8E8(sCommPlayerManager->playerAvatar[param0]);
            } else {
                sub_0205E8E0(sCommPlayerManager->playerAvatar[param0]);
            }
        }

        sCommPlayerManager->playerAvatar[param0] = NULL;
    }

    if ((sCommPlayerManager->isActive[param0]) && (!param1)) {
        sCommPlayerManager->isActive[param0] = 0;
    }

    sCommPlayerManager->unk_132[param0] = 1;

    if (!param1) {
        sCommPlayerManager->unk_FA[param0] = 0;

        if (sCommPlayerManager->isUnderground) {
            ov23_0224AE60(param0);

            if (param0 != 0) {
                (void)0;
            }
        }
    }
}

static void CommPlayer_SendMoveSpeed ()
{
    u8 v0 = 2;

    if (PAD_BUTTON_B & gCoreSys.heldKeys) {
        v0 = 1;
    }

    sub_02035E5C(v0);
}

static void Task_CommPlayerManagerRun (SysTask * task, void * data)
{
    int netId;

    if (CommSys_IsInitialized()) {
        CommPlayer_SendMoveSpeed();

        if (CommSys_CurNetId() == 0) {
            sub_02057C2C(data);
            sub_02057BC4(data);

            if (sCommPlayerManager->unk_04) {
                ov23_02249954(sCommPlayerManager->unk_04);
            }
        } else {
            sub_02057BC4(data);
        }

        sub_02057EF8(data);
    }

    for (netId = 0; netId < MAX_CONNECTED_PLAYERS; netId++) {
        if (sCommPlayerManager->isUnderground) {
            if (CommSys_CurNetId() == 0) {
                if (NULL == CommInfo_TrainerInfo(netId)) {
                    ov23_0224B5CC(netId);
                }
            }
        }
    }
}

static void sub_02057EF8 (void * param0)
{
    int netId, v1;

    for (netId = 0; netId < MAX_CONNECTED_PLAYERS; netId++) {
        if (!CommSys_IsPlayerConnected(netId)) {
            if (!(sub_02036180() && (netId == 0))) {
                if ((CommSys_CurNetId() == 0) && (sCommPlayerManager->isUnderground)) {
                    ov23_0224D898(netId);
                }
            }
        }

        if (CommSys_IsPlayerConnected(netId) || (sub_02036180() && (netId == 0))) {
            CommPlayer_MoveClient(netId);

            if (sCommPlayerManager->isUnderground) {
                ov23_0224AF7C(netId);
            }
        } else {
            if (sCommPlayerManager->isActive[netId]) {
                if ((CommSys_CurNetId() == 0) && (sCommPlayerManager->isUnderground)) {
                    ov23_022436F0(netId);
                    ov23_02241648(netId);
                }

                {
                    u8 netId_u8 = netId;
                    CommPlayer_RecvDelete(0, 1, &netId_u8, sCommPlayerManager->fieldSys);
                }
            }
        }
    }
}

BOOL sub_02057FAC (void)
{
    if (sCommPlayerManager != NULL) {
        return sCommPlayerManager->unk_2BC;
    }

    return 0;
}

void sub_02057FC4 (BOOL param0)
{
    if (sCommPlayerManager != NULL) {
        if (sCommPlayerManager->unk_2BC != param0) {
            sCommPlayerManager->unk_2BC = param0;
        }

        sub_020360D0(62, &sCommPlayerManager->unk_2BC);
    }
}

static void sub_02057FF0 (BOOL param0)
{
    if (sCommPlayerManager != NULL) {
        if (sCommPlayerManager->unk_2BC != param0) {
            sCommPlayerManager->unk_2BC = param0;
            sub_020360D0(62, &sCommPlayerManager->unk_2BC);
        }
    }
}

void sub_02058018 (int netId, int param1, void * param2, void * param3)
{
    u8 * v0 = (u8 *)param2;

    if (sCommPlayerManager) {
        GF_ASSERT(param1 == 1);
        GF_ASSERT(netId < MAX_CONNECTED_PLAYERS);
        GF_ASSERT((v0[0] == 1) || (v0[0] == 0));

        sub_02059058(netId, v0[0]);
    }
}

void sub_0205805C (FieldSystem * fieldSys, BOOL param1)
{
    if (sCommPlayerManager == NULL) {
        return;
    }

    if (!sCommPlayerManager->isUnderground) {
        sub_02057FF0(param1);
        sCommPlayerManager->unk_2C1 = param1;
    }

    if (fieldSys->playerAvatar) {
        sCommPlayerManager->playerAvatar[CommSys_CurNetId()] = fieldSys->playerAvatar;
    }

    if (CommSys_IsInitialized() && (CommSys_CurNetId() == 0)) {
        CommPlayer_Move(NULL, sCommPlayerManager);
    }

    if (CommSys_IsInitialized() && (CommSys_CurNetId() == 0)) {
        if (!sCommPlayerManager->isUnderground) {
            sub_020591A8();
        }
    }
}

static int CommPlayer_Direction (u16 unused, u16 keys)
{
    if ((keys & PAD_KEY_LEFT)) {
        return 2;
    }

    if ((keys & PAD_KEY_RIGHT)) {
        return 3;
    }

    if ((keys & PAD_KEY_UP)) {
        return 0;
    }

    if ((keys & PAD_KEY_DOWN)) {
        return 1;
    }

    return(-1);
}

BOOL CommPlayer_CheckNPCCollision (int x, int z)
{
    int v0, i;
    const UnkStruct_020619DC * npcList;

    v0 = sub_0203A4B4(sCommPlayerManager->fieldSys);
    npcList = sub_0203A4BC(sCommPlayerManager->fieldSys);

    for (i = 0; i < v0; i++) {
        if ((npcList[i].unk_1A == x) && (npcList[i].unk_1C == z)) {
            return 1;
        }
    }

    return 0;
}

static BOOL CommPlayer_CheckCollision (int x, int z, int netIdTarget)
{
    int netId;

    if ((x != 0xffff) && (z != 0xffff)) {
        for (netId = 0; netId < MAX_CONNECTED_PLAYERS; netId++) {
            if (netId == netIdTarget) {
                continue;
            }

            if ((x == sub_02058DF8(netId)) && (z == sub_02058E4C(netId))) {
                return TRUE;
            }
        }

        if (CommPlayer_CheckNPCCollision(x, z)) {
            return TRUE;
        }

        if (sCommPlayerManager->isUnderground) {
            if (!ov23_0224D1A0(x, z)) {
                return TRUE;
            }
        }
    }

    return FieldSystem_CheckCollision(sCommPlayerManager->fieldSys, x, z);
}

static int sub_020581CC (int param0, int param1)
{
    int v0;

    if (param0 < 5) {
        return 8;
    } else if (param0 < 10) {
        return 4;
    }

    return 2;
}

static int sub_020581E0 (int param0)
{
    int v0[5] = {2, 4, 8, 16, 2};

    GF_ASSERT(param0 < 5);
    return v0[param0];
}

static void CommPlayer_Move (SysTask * param0, void * param1)
{
    u16 v0;
    u8 v1;
    int dir, v3, v4, v5, v6;
    CommPlayerLocation * playerLocation;
    UnkStruct_ov23_02249978 * v8 = NULL;

    for (v5 = 0; v5 < MAX_CONNECTED_PLAYERS; v5++) {
        if (sCommPlayerManager->isActive[v5] && sCommPlayerManager->unk_E2[v5] && sCommPlayerManager->unk_EA[v5]) {
            playerLocation = &sCommPlayerManager->playerLocationServer[v5];

            if (sCommPlayerManager->unk_04) {
                v8 = ov23_0224993C(sCommPlayerManager->unk_04, v5);
            }

            if (sCommPlayerManager->isUnderground) {
                if (ov23_0224C1C8(v5)) {
                    continue;
                }
            }

            if (sCommPlayerManager->unk_13A[v5] != 0) {
                sCommPlayerManager->unk_13A[v5]--;
            }

            if (sCommPlayerManager->unk_13A[v5] == 0) {
                if (sCommPlayerManager->isUnderground) {
                    if (ov23_0224444C(v5)) {
                        continue;
                    }

                    if (!ov23_0224ACC0(v5)) {
                        if (ov23_0224D7C8(v5)) {
                            continue;
                        }
                    }
                }
            }

            if (v8) {
                if (!ov23_022499AC(v8)) {
                    continue;
                }
            }

            if (!sCommPlayerManager->unk_F2[v5]) {
                v0 = sub_02035E84(v5);
            } else {
                v0 = 0;
            }

            playerLocation->moveSpeed = sub_02035E70(v5);

            if (sCommPlayerManager->unk_13A[v5] != 0) {
                continue;
            }

            v6 = sub_020581CC(sCommPlayerManager->unk_10A[v5], sCommPlayerManager->unk_12A[v5]);

            if (sub_02058A18(v5, v6)) {
                sCommPlayerManager->unk_13A[v5] = v6;
                sCommPlayerManager->unk_132[v5] = 1;
                continue;
            }

            if (playerLocation->unk_07 == 1) {
                sCommPlayerManager->unk_132[v5] = 1;
            }

            playerLocation->unk_07 = 0;

            if (sCommPlayerManager->unk_122[v5] == 2) {
                u8 v9 = v5;

                sCommPlayerManager->unk_122[v5] = 1;
                sub_02035B48(40, &v9);
                continue;
            }

            dir = CommPlayer_Direction(v0, v0);
            v3 = CommPlayer_AddXServer(v5);
            v4 = sub_02058F18(v5);

            if ((v3 != 0xffff) && (v4 != 0xffff) && (dir != -1)) {
                if (playerLocation->dir != dir) {
                    playerLocation->dir = dir;
                    sCommPlayerManager->unk_13A[v5] = 4;
                    sCommPlayerManager->unk_132[v5] = 1;

                    if (sCommPlayerManager->unk_122[v5] > 2) {
                        sCommPlayerManager->unk_122[v5]--;
                        continue;
                    }
                } else if (sCommPlayerManager->unk_122[v5] != 0) {
                    continue;
                } else if (sCommPlayerManager->isUnderground && (ov23_0224B8E0(v5, v3, v4) == 1)) {
                    continue;
                } else if (CommPlayer_CheckCollision(v3, v4, v5)) {
                    playerLocation->unk_07 = 1;
                    sCommPlayerManager->unk_132[v5] = 1;
                    sCommPlayerManager->unk_13A[v5] = 4;
                } else {
                    sCommPlayerManager->unk_132[v5] = 1;
                    playerLocation->x = v3;
                    playerLocation->z = v4;
                    playerLocation->dir = dir;

                    sCommPlayerManager->unk_13A[v5] = sub_020581E0(playerLocation->moveSpeed);

                    if (sCommPlayerManager->unk_11A[v5] != 0) {
                        sCommPlayerManager->unk_11A[v5]--;

                        if (sCommPlayerManager->unk_11A[v5] == 0) {
                            u8 v10 = 1;
                            ov23_0224540C(v5, 1, &v10, NULL);
                        }
                    }
                }
            }
        }
    }
}

void CommPlayer_RecvLocation (int param0, int param1, void * src, void * param3)
{
    u8 * v0 = (u8 *)src;
    CommPlayerLocation * playerLocation;

    if (sCommPlayerManager == NULL) {
        return;
    }

    playerLocation = &sCommPlayerManager->playerLocationServer[param0];

    if (v0[4] & 0x80) {
        sCommPlayerManager->unk_2BB = 1;
        return;
    }

    if (playerLocation->dir == -1) {
        int netId;

        for (netId = 0; netId < MAX_CONNECTED_PLAYERS; netId++) {
            sCommPlayerManager->unk_132[netId] = 1;
        }
    }

    playerLocation->x = 0;
    playerLocation->z = 0;
    playerLocation->x += ((u32)v0[0]) & 0xff;
    playerLocation->x += ((u32)v0[1] << 8) & 0xff00;
    playerLocation->z += ((u32)v0[2]) & 0xff;
    playerLocation->z += ((u32)v0[3] << 8) & 0xff00;
    playerLocation->dir = v0[4] & 0xf;

    sCommPlayerManager->isActive[param0] = 1;
    sCommPlayerManager->unk_132[param0] = 1;

    if (FieldSystem_CheckCollision(sCommPlayerManager->fieldSys, playerLocation->x, playerLocation->z)) {
        GF_ASSERT(0);
    }
}

void CommPlayer_RecvDelete (int param0, int param1, void * param2, void * param3)
{
    u8 * v0 = (u8 *)param2;
    u8 v1 = v0[0];

    if (sCommPlayerManager == NULL) {
        return;
    }

    if (v1 == CommSys_CurNetId()) {
        return;
    }

    if (sCommPlayerManager->isUnderground) {
        ov23_022430B8(v1);

        if (!sCommPlayerManager->isResetting) {
            ov5_021F5634(sCommPlayerManager->fieldSys, sCommPlayerManager->playerLocation[v1].x, 0, sCommPlayerManager->playerLocation[v1].z);
        }
    }

    CommPlayer_Destroy(v1, 0, 0);
    CommInfo_InitPlayer(v1);
}

int sub_020585A4 (void)
{
    return 5;
}

void sub_020585A8 (int param0, int param1, void * param2, void * param3)
{
    u16 v0;
    u8 * v1 = (u8 *)param2;
    CommPlayerLocation * playerLocation;
    int v3;

    v3 = v1[0] & 0xf;

    if (sCommPlayerManager == NULL) {
        return;
    }

    if ((param0 == CommSys_CurNetId()) && sCommPlayerManager->unk_2C3) {
        return;
    }

    playerLocation = &sCommPlayerManager->playerLocation[v3];

    if (v1[2] & 0x80) {
        playerLocation->unk_07 = 1;
    } else {
        playerLocation->unk_07 = 0;
    }

    playerLocation->x = 0;
    playerLocation->z = 0;
    playerLocation->x += ((u32)v1[1]) & 0xff;
    playerLocation->x += ((u32)v1[2] << 8) & 0x100;
    playerLocation->z += ((u32)v1[3]) & 0xff;
    playerLocation->z += ((u32)v1[2] << 7) & 0x100;
    playerLocation->dir = ((v1[0] >> 4) & 0x3);
    playerLocation->moveSpeed = ((v1[0] >> 6) & 0x3);

    CommPlayer_Add(v3);
}

static void sub_02058644 (int param0)
{
    UnkStruct_020298B0 * v0 = sub_020298B0(sub_0203D174(sCommPlayerManager->fieldSys));
    UnkStruct_0202855C * v1 = sub_020298A0(sub_0203D174(sCommPlayerManager->fieldSys));

    if (sCommPlayerManager->isUnderground) {
        if (param0 == CommSys_CurNetId()) {
            sub_0202929C(v0);

            if (sub_020292B4(v0) == 50) {
                sub_0202CFEC(sub_0202CD88(sCommPlayerManager->fieldSys->unk_0C), 37);
            }
        }
    }
}

static BOOL sub_020586A8 (int param0, int param1, int param2, int param3)
{
    LocalMapObject * v0;
    int v1;
    u8 v3[] = {
        0x14, 0x15, 0x16, 0x17, 0x10, 0x11, 0x12, 0x13, 0xc, 0xd, 0xe, 0xf
    };

    if ((sCommPlayerManager->unk_102[param0] == -1) || (sCommPlayerManager->playerAvatar[param0] == NULL)) {
        return 0;
    }

    if (param1 == 0) {
        return 1;
    }

    v0 = Player_LocalMapObject(sCommPlayerManager->playerAvatar[param0]);

    if (Player_Dir(sCommPlayerManager->playerAvatar[param0]) != CommPlayer_GetOppositeDir(sCommPlayerManager->unk_102[param0])) {
        sub_020628C4(v0, (1 << 7));
        Player_SetDir(sCommPlayerManager->playerAvatar[param0], CommPlayer_GetOppositeDir(sCommPlayerManager->unk_102[param0]));
        sub_020628BC(v0, (1 << 7));
    }

    if (sub_02065684(v0) == 1) {
        (void)0;
    }

    if (sub_020655F4(v0) == 1) {
        sub_02058644(param0);

        switch (param3) {
        case 0:
            sub_02065638(v0, v3[sCommPlayerManager->unk_102[param0]]);
            break;
        case 1:
            sub_02065638(v0, v3[sCommPlayerManager->unk_102[param0] + 4]);
            break;
        case 2:
            sub_02065638(v0, v3[sCommPlayerManager->unk_102[param0] + 8]);
            break;
        }
    } else {
        (void)0;
    }

    return 1;
}

static void CommPlayer_MoveClient (int netId)
{
    u16 pad = 0;
    CommPlayerLocation * playerLocation;
    PlayerAvatar * playerAvatar;
    int moveSpeed;

    playerLocation = &sCommPlayerManager->playerLocation[netId];

    if (sCommPlayerManager->unk_142[netId] != 0) {
        sCommPlayerManager->unk_142[netId]--;
        return;
    }

    if ((playerLocation->x == 0xffff) || (playerLocation->z == 0xffff)) {
        return;
    }

    if (sCommPlayerManager->isResetting) {
        return;
    }

    if (!sCommPlayerManager->isUnderground) {
        if (netId == CommSys_CurNetId()) {
            if (!sCommPlayerManager->unk_2C1) {
                return;
            }
        }
    }

    playerAvatar = sCommPlayerManager->playerAvatar[netId];

    if (playerAvatar) {
        int dx = Player_XPos(playerAvatar) - playerLocation->x;
        int dy = Player_ZPos(playerAvatar) - playerLocation->z;
        int dir = Player_Dir(playerAvatar);

        if ((dx == 0) && (dy == 0)) {
            pad = 0;
        } else if (abs(dx) > abs(dy)) {
            if (dx > 0) {
                pad = PAD_KEY_LEFT;
            } else {
                pad = PAD_KEY_RIGHT;
            }
        } else {
            if (dy > 0) {
                pad = PAD_KEY_UP;
            } else {
                pad = PAD_KEY_DOWN;
            }
        }

        if (abs(dx) + abs(dy) > 2) {
            (void)0;
        }

        if (sub_020586A8(netId, pad, pad, playerLocation->moveSpeed)) {
            return;
        }

        {
            u32 v9 = 0xff;
            int v10;

            moveSpeed = playerLocation->moveSpeed;

            switch (playerLocation->moveSpeed) {
            case 0:
                v10 = 5;
                break;
            case 1:
                v10 = 4;
                pad |= PAD_BUTTON_B;
                break;
            case 2:
                v10 = 2;
                break;
            case 3:
                v10 = 1;
                break;
            }

            if (sCommPlayerManager->forceDirTimer && (netId == CommSys_CurNetId())) {
                sCommPlayerManager->forceDirTimer--;
            } else if (!sub_02035EE0() && sCommPlayerManager->isUnderground && (netId == CommSys_CurNetId())) {
                v9 = sub_0206147C(
                    playerAvatar, pad, pad, v10, 1, 0);
            } else if (((pad & ~PAD_BUTTON_B) == 0) && (playerLocation->unk_07)) {
                moveSpeed = 3;

                switch (playerLocation->dir) {
                case 0:
                    v9 = 0x1c;
                    break;
                case 1:
                default:
                    v9 = 0x1d;
                    break;
                case 2:
                    v9 = 0x1e;
                    break;
                case 3:
                    v9 = 0x1f;
                    break;
                }
            } else if (((pad & ~PAD_BUTTON_B) == 0) && (playerLocation->dir != dir)) {
                v9 = sub_02065838(playerLocation->dir, 0x24);
            } else {
                v9 = sub_0206147C(playerAvatar, pad, pad, v10, 1, 0);
            }

            if (sub_02061544(playerAvatar) == 0) {
                if (sub_020613AC(playerAvatar) == 0) {
                    return;
                }
            }

            if (v9 != 0xff) {
                sub_02061550(playerAvatar, v9, 1);

                if (pad & ~PAD_BUTTON_B) {
                    if (sCommPlayerManager->unk_142[netId] == 0) {
                        sCommPlayerManager->unk_142[netId] = sub_020581E0(moveSpeed);
                    }

                    if (sCommPlayerManager->unk_142[netId] != 0) {
                        sCommPlayerManager->unk_142[netId]--;
                    }

                    sub_02058644(netId);
                }
            }
        }
    }
}

static BOOL sub_02058A18 (int param0, int param1)
{
    int v0, v1;
    CommPlayerLocation * playerLocation;

    if (sCommPlayerManager->unk_10A[param0] == 0) {
        return 0;
    }

    if (sCommPlayerManager->unk_10A[param0] == 0xff) {
        return 1;
    }

    sCommPlayerManager->unk_10A[param0]--;

    if (1 == param1) {
        return 1;
    }

    v0 = sub_02058DF8(param0);
    v1 = sub_02058E4C(param0);
    v0 += sub_0206419C(sCommPlayerManager->unk_112[param0]);
    v1 += sub_020641A8(sCommPlayerManager->unk_112[param0]);

    if (sCommPlayerManager->unk_10A[param0] != 0) {
        if (CommPlayer_CheckCollision(v0, v1, param0)) {
            sCommPlayerManager->unk_10A[param0] = 1;
        }
    }

    if (sCommPlayerManager->unk_10A[param0] == 1) {
        return 1;
    } else if (sCommPlayerManager->unk_10A[param0] == 0) {
        u8 v3 = 1;

        ov23_0224540C(param0, 1, &v3, NULL);
        return 1;
    }

    playerLocation = &sCommPlayerManager->playerLocationServer[param0];
    playerLocation->x = v0;
    playerLocation->z = v1;

    switch (param1) {
    case 2:
        playerLocation->moveSpeed = 0;
        break;
    case 4:
        playerLocation->moveSpeed = 1;
        break;
    case 8:
        playerLocation->moveSpeed = 2;
        break;
    }

    return 1;
}

void sub_02058B0C (int param0, int param1, BOOL param2)
{
    CommPlayerLocation * playerLocation = &sCommPlayerManager->playerLocationServer[param0];
    u8 v1[3];

    playerLocation->dir = CommPlayer_GetOppositeDir(param1);
    sCommPlayerManager->unk_112[param0] = param1;

    if (param2) {
        sCommPlayerManager->unk_12A[param0] = 1;
        sCommPlayerManager->unk_10A[param0] = 45;
    } else {
        sCommPlayerManager->unk_12A[param0] = 0;
        sCommPlayerManager->unk_10A[param0] = 27;
    }

    sCommPlayerManager->unk_132[param0] = 1;
}

void sub_02058B7C (int param0)
{
    sCommPlayerManager->unk_10A[param0] = 0;
}

void sub_02058B94 (int param0)
{
    sCommPlayerManager->unk_10A[param0] = 0xff;
}

void sub_02058BA8 (int param0, int param1, BOOL param2)
{
    LocalMapObject * v0;

    if (sCommPlayerManager->playerAvatar[param0] == NULL) {
        return;
    }

    v0 = Player_LocalMapObject(sCommPlayerManager->playerAvatar[param0]);

    sub_020628BC(v0, (1 << 7));
    sub_020628BC(v0, (1 << 8));

    sCommPlayerManager->unk_102[param0] = param1;
}

void sub_02058BE8 (int param0)
{
    LocalMapObject * obj;

    if (sCommPlayerManager->playerAvatar[param0] == NULL) {
        return;
    }

    if (sCommPlayerManager->unk_102[param0] != -1) {
        obj = Player_LocalMapObject(sCommPlayerManager->playerAvatar[param0]);

        sub_020656AC(obj);
        sub_020628C4(obj, (1 << 7));
        sub_020628C4(obj, (1 << 8));

        sCommPlayerManager->unk_102[param0] = -1;
    }
}

int sub_02058C3C (void)
{
    return 4;
}

BOOL sub_02058C40 (void)
{
    if (sub_02036180()) {
        return 1;
    }

    if (!sCommPlayerManager) {
        return 0;
    }

    if (!CommSys_IsPlayerConnected(CommSys_CurNetId())) {
        return 0;
    }

    if (sCommPlayerManager->isUnderground && !ov23_02249BD4()) {
        return 0;
    }

    return 1;
}

BOOL CommPlayer_IsActive (int netId)
{
    return sCommPlayerManager->isActive[netId];
}

int CommPlayer_XPos (int netId)
{
    if (!sCommPlayerManager) {
        return 0xffff;
    } else if (CommSys_CurNetId() == netId) {
        return sCommPlayerManager->playerLocation[netId].x;
    } else if (!sub_02058C40() || !sCommPlayerManager->isActive[netId]) {
        return 0xffff;
    }

    return sCommPlayerManager->playerLocation[netId].x;
}

int CommPlayer_ZPos (int netId)
{
    if (!sCommPlayerManager) {
        return 0xffff;
    } else if (CommSys_CurNetId() == netId) {
        return sCommPlayerManager->playerLocation[netId].z;
    } else if (!sub_02058C40() || !sCommPlayerManager->isActive[netId]) {
        return 0xffff;
    }

    return sCommPlayerManager->playerLocation[netId].z;
}

int sub_02058D48 (int netId)
{
    if (!sCommPlayerManager) {
        return 0xffff;
    }

    return sCommPlayerManager->playerLocation[netId].x;
}

int sub_02058D68 (int netId)
{
    if (!sCommPlayerManager) {
        return 0xffff;
    }

    return sCommPlayerManager->playerLocation[netId].z;
}

int sub_02058D88 (int netId)
{
    if (CommPlayer_XPos(netId) == 0xffff) {
        return 0xffff;
    }

    return sCommPlayerManager->playerLocation[netId].x + sub_0206419C(sCommPlayerManager->playerLocation[netId].dir);
}

int sub_02058DC0 (int param0)
{
    if (CommPlayer_ZPos(param0) == 0xffff) {
        return 0xffff;
    }

    return sCommPlayerManager->playerLocation[param0].z + sub_020641A8(sCommPlayerManager->playerLocation[param0].dir);
}

int sub_02058DF8 (int param0)
{
    if (!sCommPlayerManager) {
        return 0xffff;
    } else if (CommSys_CurNetId() == param0) {
        return sCommPlayerManager->playerLocationServer[param0].x;
    } else if (!sub_02058C40() || !sCommPlayerManager->isActive[param0]) {
        return 0xffff;
    }

    return sCommPlayerManager->playerLocationServer[param0].x;
}

int sub_02058E4C (int param0)
{
    if (!sCommPlayerManager) {
        return 0xffff;
    } else if (CommSys_CurNetId() == param0) {
        return sCommPlayerManager->playerLocationServer[param0].z;
    } else if (!sub_02058C40() || !sCommPlayerManager->isActive[param0]) {
        return 0xffff;
    }

    return sCommPlayerManager->playerLocationServer[param0].z;
}

int sub_02058EA0 (int param0)
{
    if (!sCommPlayerManager) {
        return 0xffff;
    }

    return sCommPlayerManager->playerLocationServer[param0].x;
}

int sub_02058EC0 (int param0)
{
    if (!sCommPlayerManager) {
        return 0xffff;
    }

    return sCommPlayerManager->playerLocationServer[param0].z;
}

int CommPlayer_AddXServer (int netId)
{
    if (sub_02058DF8(netId) == 0xffff) {
        return 0xffff;
    }

    return sCommPlayerManager->playerLocationServer[netId].x + sub_0206419C(sCommPlayerManager->playerLocationServer[netId].dir);
}

int sub_02058F18 (int param0)
{
    if (sub_02058E4C(param0) == 0xffff) {
        return 0xffff;
    }

    return sCommPlayerManager->playerLocationServer[param0].z + sub_020641A8(sCommPlayerManager->playerLocationServer[param0].dir);
}

int CommPlayer_Dir (int param0)
{
    if (!sub_02058C40() || !sCommPlayerManager->isActive[param0]) {
        return -1;
    }

    return sCommPlayerManager->playerLocation[param0].dir;
}

int CommPlayer_DirServer (int param0)
{
    if (!sub_02058C40() || !sCommPlayerManager->isActive[param0]) {
        return -1;
    }

    return sCommPlayerManager->playerLocationServer[param0].dir;
}

void CommPlayer_LookTowardsServer (int netIdTarget, int netIdSet)
{
    int dir = CommPlayer_GetOppositeDir(sCommPlayerManager->playerLocationServer[netIdTarget].dir);

    sCommPlayerManager->playerLocationServer[netIdSet].dir = dir;
    sCommPlayerManager->unk_132[netIdSet] = TRUE;
}

void CommPlayer_LookTowards (int netIdTarget, int netIdSet)
{
    int dir = CommPlayer_GetOppositeDir(sCommPlayerManager->playerLocation[netIdTarget].dir);
    sCommPlayerManager->playerLocation[netIdSet].dir = dir;
}

int sub_0205900C (int xPos, int yPos)
{
    int netId, x, y;

    if (!sCommPlayerManager) {
        return 0xff;
    }

    for (netId = 0; netId < MAX_CONNECTED_PLAYERS; netId++) {
        if (sCommPlayerManager->isActive[netId] == 0) {
            continue;
        }

        x = sCommPlayerManager->playerLocationServer[netId].x;
        y = sCommPlayerManager->playerLocationServer[netId].z;

        if ((xPos == x) && (yPos == y)) {
            return netId;
        }
    }

    return 0xff;
}

void sub_02059058 (int netId, BOOL param1)
{
    if (sCommPlayerManager->unk_E2[netId] != param1) {
        sCommPlayerManager->unk_E2[netId] = param1;
        sCommPlayerManager->playerLocationServer[netId].unk_07 = 0;
        sCommPlayerManager->unk_132[netId] = 1;
        sCommPlayerManager->playerLocationServer[netId].moveSpeed = 2;
    }
}

BOOL sub_02059094 (int netId)
{
    if (sCommPlayerManager->unk_2C2) {
        return 0;
    }

    if (!sCommPlayerManager->unk_EA[netId]) {
        return 0;
    }

    return sCommPlayerManager->unk_E2[netId];
}

BOOL sub_020590C4 (void)
{
    UnkStruct_020590C4 v0[] = {
        {4, 7},
        {11, 7}
    };
    UnkStruct_020590C4 v1[] = {
        {4, 6},
        {11, 6},
        {4, 8},
        {11, 8}
    };
    int connectedPlayers = sub_02036148(sub_0203895C());
    int netId, v4, v5 = 0, v6[4], v7;
    int v8 = 0;
    UnkStruct_020590C4 * v9;

    if (connectedPlayers == 2) {
        v9 = v0;
    } else {
        v9 = v1;
    }

    for (netId = 0; netId < connectedPlayers; netId++) {
        for (v4 = 0; v4 < connectedPlayers; v4++) {
            if ((CommPlayer_XPos(v4) == v9[netId].unk_00) && (CommPlayer_ZPos(v4) == v9[netId].unk_02)) {
                v5++;
                v6[v4] = netId;

                if (v4 == CommSys_CurNetId()) {
                    v8 = 1;
                }
                break;
            }
        }
    }

    if (v5 == connectedPlayers) {
        for (netId = 0; netId < connectedPlayers; netId++) {
            sub_020362DC(v6[netId], netId);
        }
    }

    return v8;
}

void sub_02059180 (int netId, int unused1, void * src, void * unused3)
{
    u8 * buffer = src;

    if (buffer[0] == 3) {
        sCommPlayerManager->unk_F2[netId] = 0;
    } else {
        sCommPlayerManager->unk_2B4[netId] = buffer[0];
    }
}

static UnkStruct_020590C4 Unk_02100B6C[] = {
    {0x4, 0x7},
    {0xB, 0x7}
};

static UnkStruct_020590C4 Unk_02100B74[] = {
    {0x4, 0x6},
    {0xB, 0x6},
    {0x4, 0x8},
    {0xB, 0x8}
};

static void sub_020591A8 (void)
{
    int v0 = sub_02036148(sub_0203895C());
    int v1, v3 = 0, v4[4];
    int v5 = 0;
    UnkStruct_020590C4 * v6;
    u8 netId;

    if (v0 == 2) {
        v6 = Unk_02100B6C;
    } else {
        v6 = Unk_02100B74;
    }

    for (netId = 0; netId < v0; netId++) {
        if (!sCommPlayerManager->unk_2B4[netId]) {
            continue;
        }

        for (v1 = 0; v1 < v0; v1++) {
            if ((sub_02058DF8(netId) == v6[v1].unk_00) && (sub_02058E4C(netId) == v6[v1].unk_02)) {
                sCommPlayerManager->unk_F2[netId] = 1;
                sub_02035B48(95, &netId);
            }
        }
    }
}

void CommPlayer_SetBattleDir (void)
{
    int netId = CommSys_CurNetId();
    int v1;

    if (CommPlayer_XPos(netId) > 8) {
        CommPlayer_SetDir(2);
        v1 = sub_02065838(2, 0x24);
    } else {
        CommPlayer_SetDir(3);
        v1 = sub_02065838(3, 0x24);
    }

    sub_02061550(sCommPlayerManager->playerAvatar[netId], v1, 1);
    CommPlayerManager_ForceDir();
}

BOOL sub_0205928C (void)
{
    int v0 = sub_02036148(sub_0203895C());
    int netId, v3 = 0, v4[4], v5;
    int v6 = 0;

    for (netId = 0; netId < v0; netId++) {
        if ((sCommPlayerManager->isActive[netId] == 0) || (sCommPlayerManager->unk_132[netId] == 1)) {
            return 0;
        }
    }

    for (netId = 0; netId < v0; netId++) {
        CommPlayerLocation * playerLocation = &sCommPlayerManager->playerLocationServer[netId];

        v5 = CommPlayer_GetOppositeDir(playerLocation->dir);
        playerLocation->x += sub_0206419C(v5);
        playerLocation->z += sub_020641A8(v5);
        playerLocation->moveSpeed = 2;

        sCommPlayerManager->unk_132[netId] = 1;
        sub_02059058(netId, 1);
    }

    return 1;
}

int CommPlayer_GetOppositeDir (int dir)
{
    if (dir == 0) {
        return 1;
    } else if (dir == 1) {
        return 0;
    } else if (dir == 2) {
        return 3;
    } else if (dir == 3) {
        return 2;
    }

    GF_ASSERT(FALSE);
    return 2;
}

void sub_02059354 (int netId, int param1)
{
    sCommPlayerManager->unk_11A[netId] = param1;
    sCommPlayerManager->unk_13A[netId] = 15;
}

void sub_02059378 (int netId)
{
    sCommPlayerManager->unk_11A[netId] = 0;
}

void sub_02059390 (int netId, int param1)
{
    sCommPlayerManager->unk_122[netId] = param1;
    sCommPlayerManager->unk_13A[netId] = 15;
}

void sub_020593B4 (int netId)
{
    sCommPlayerManager->unk_122[netId] = 0;
}

int sub_020593CC (int netId)
{
    return sCommPlayerManager->unk_142[netId];
}

int sub_020593E0 (int netId)
{
    return sCommPlayerManager->unk_13A[netId];
}

void CommPlayer_SetDir (int dir)
{
    Player_SetDir(sCommPlayerManager->fieldSys->playerAvatar, dir);
    sCommPlayerManager->playerLocation[CommSys_CurNetId()].dir = dir;
    CommPlayer_SendPos(FALSE);
}

void CommPlayer_SetDirClient (int netId, int dir)
{
    sCommPlayerManager->playerLocation[netId].dir = dir;
    Player_SetDir(sCommPlayerManager->playerAvatar[netId], dir);
}

int CommPlayer_DirClient (int netId)
{
    if (!sCommPlayerManager->playerAvatar[netId]) {
        return -1;
    }

    return Player_Dir(sCommPlayerManager->playerAvatar[netId]);
}

void sub_02059464 (int param0)
{
    if (0 != param0) {
        sCommPlayerManager->unk_00 |= param0;
    }

    sub_0203D128();
    sCommPlayerManager->unk_2BC = 0;
}

void sub_0205948C (int param0)
{
    if (0 != param0) {
        sCommPlayerManager->unk_00 &= ~(param0);
    }

    if (sCommPlayerManager->unk_00 == 0x10) {
        u8 v0 = 1;
        sub_020360D0(62, &v0);
    }

    if (sCommPlayerManager->unk_00 == 0) {
        if (0x10 != param0) {
            sub_0203D140();
            sub_02057FC4(1);
        } else {
            sub_0203D140();
            sCommPlayerManager->unk_2BC = 1;
        }
    }
}

void sub_020594EC (void)
{
    sCommPlayerManager->unk_00 = 0;
}

void sub_020594FC (void)
{
    sub_0203D128();
    sCommPlayerManager->unk_2BC = 0;
}

void sub_02059514 (void)
{
    sub_0203D140();
    sub_02057FC4(1);
}

void sub_02059524 (void)
{
    if (sCommPlayerManager->unk_2BF == 0) {
        if (!sCommPlayerManager->isUnderground) {
            sub_02059514();
            sCommPlayerManager->unk_2BF = 1;
        } else if (ov23_02243298(CommSys_CurNetId())) {
            sub_02059514();
            sCommPlayerManager->unk_2BF = 1;
        } else {
            (void)0;
        }
    }
}

void sub_02059570 (void)
{
    if (sCommPlayerManager->unk_2BF == 0) {
        if (sCommPlayerManager->isUnderground) {
            if (!ov23_02243298(CommSys_CurNetId())) {
                sub_02057FC4(0);
            }
        }
    }
}

void CommPlayerManager_ForcePos (void)
{
    int netId, x, z, dir;
    LocalMapObject * obj;

    if (!sCommPlayerManager) {
        return;
    }

    for (netId = 0; netId < MAX_CONNECTED_PLAYERS; netId++) {
        if (sCommPlayerManager->playerAvatar[netId] == NULL) {
            continue;
        }

        if (CommSys_CurNetId() == netId) {
            continue;
        }

        obj = Player_LocalMapObject(sCommPlayerManager->playerAvatar[netId]);
        x = sCommPlayerManager->playerLocation[netId].x;
        z = sCommPlayerManager->playerLocation[netId].z;
        dir = sCommPlayerManager->playerLocation[netId].dir;

        LocalMapObj_SetX(obj, x);
        LocalMapObj_SetZ(obj, z);
        LocalMapObj_SetPosDir(obj, x, 0, z, dir);
    }
}

void CommPlayerManager_ForceDir (void)
{
    sCommPlayerManager->forceDirTimer = 8;
}

void sub_02059638 (BOOL param0)
{
    sCommPlayerManager->unk_2C3 = param0;
}
