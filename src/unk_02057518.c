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
static void sub_0205820C(SysTask * param0, void * param1);
static void sub_02057E80(SysTask * param0, void * param1);
static void sub_02057EF8(void * param0);
static void sub_020587C0(int param0);
static void sub_020591A8(void);

static CommPlayerData * sCommPlayerData = NULL;

CommPlayerData * CommPlayerData_Get (void)
{
    return sCommPlayerData;
}

BOOL CommPlayerManager_Init (void * dest, FieldSystem * fieldSys, BOOL isUnderground)
{
    int netId;

    if (sCommPlayerData) {
        return 0;
    }

    if (sCommPlayerData == NULL) {
        sCommPlayerData = dest;
        MI_CpuFill8(sCommPlayerData, 0, sizeof(CommPlayerData));
    }

    sCommPlayerData->isUnderground = isUnderground;
    sCommPlayerData->unk_04 = NULL;

    if (isUnderground) {
        sCommPlayerData->unk_04 = Heap_AllocFromHeap(HEAP_ID_COMMUNICATION, ov23_02249918());
        ov23_0224991C(sCommPlayerData->unk_04);
    }

    sCommPlayerData->fieldSys = fieldSys;

    for (netId = 0; netId < MAX_CONNECTED_PLAYERS; netId++) {
        sCommPlayerData->playerLocation[netId].dir = -1;
        sCommPlayerData->playerLocation[netId].x = 0xffff;
        sCommPlayerData->playerLocation[netId].z = 0xffff;
        sCommPlayerData->playerLocation[netId].moveSpeed = 2;
        sCommPlayerData->playerLocationServer[netId].dir = -1;
        sCommPlayerData->playerLocationServer[netId].x = 0xffff;
        sCommPlayerData->playerLocationServer[netId].z = 0xffff;
        sCommPlayerData->playerLocationServer[netId].moveSpeed = 2;
        sCommPlayerData->unk_102[netId] = -1;
        sCommPlayerData->unk_E2[netId] = 0;
        sCommPlayerData->unk_EA[netId] = 1;
        sCommPlayerData->unk_F2[netId] = 0;
        sCommPlayerData->unk_14A[netId].unk_20 = 0xff;
    }

    sCommPlayerData->unk_2BC = 0;
    sCommPlayerData->unk_2BF = 0;
    sCommPlayerData->task = SysTask_Start(sub_02057E80, NULL, (100 + 100));

    CommSys_EnableSendMovementData();
    CommPlayer_InitPersonal();

    return 1;
}

void CommPlayerMan_Reset (void)
{
    int netId;

    if (sCommPlayerData == NULL) {
        return;
    }

    for (netId = 0; netId < MAX_CONNECTED_PLAYERS; netId++) {
        if (sCommPlayerData->isUnderground) {
            CommPlayer_Destory(netId, TRUE, FALSE);
        } else {
            CommPlayer_Destory(netId, TRUE, TRUE);
        }
    }

    if (sCommPlayerData->isUnderground) {
        sCommPlayerData->isResetting = TRUE;
    }
}

void CommPlayerMan_Restart (void)
{
    if (sCommPlayerData == NULL) {
        return;
    }

    sCommPlayerData->unk_2BB = 1;
    sCommPlayerData->isResetting = 0;

    CommPlayer_InitPersonal();
    CommPlayer_SendPos(1);
}

void CommPlayerMan_Delete (BOOL deletePlayerData)
{
    int netId, v1;

    if (sCommPlayerData != NULL) {
        for (v1 = 0; v1 < 5; v1++) {
            if (sCommPlayerData->unk_27C[v1]) {
                Heap_FreeToHeap(sCommPlayerData->unk_27C[v1]);
                sCommPlayerData->unk_27C[v1] = NULL;
            }
        }

        if (sCommPlayerData->unk_2B2 >= 5) {
            sub_0206DF60(sCommPlayerData->fieldSys, sCommPlayerData->unk_2B2);
        }

        for (netId = 0; netId < MAX_CONNECTED_PLAYERS; netId++) {
            CommPlayer_Destory(netId, FALSE, deletePlayerData);
        }

        SysTask_Done(sCommPlayerData->task);

        if (sCommPlayerData->unk_04) {
            ov23_02249938(sCommPlayerData->unk_04);
            Heap_FreeToHeap(sCommPlayerData->unk_04);
        }

        Heap_FreeToHeap(sCommPlayerData);
        sCommPlayerData = NULL;
    }
}

void CommPlayerMan_Reinit (void)
{
    int netId, v1;

    for (netId = 0; netId < MAX_CONNECTED_PLAYERS; netId++) {
        if (sCommPlayerData->isUnderground) {
            ov23_0224AF4C(netId);
            ov23_0224AD98(netId);

            if (netId != 0) {
                ov23_0224AE60(netId);
            }
        }

        if (sCommPlayerData->unk_08[netId] != NULL) {
            if (sCommPlayerData->fieldSys->unk_3C != sCommPlayerData->unk_08[netId]) {
                if (sCommPlayerData->isUnderground) {
                    sub_0205E8E8(sCommPlayerData->unk_08[netId]);
                }
            }

            sCommPlayerData->unk_08[netId] = NULL;
        }

        sCommPlayerData->unk_48[netId] = 0;
        sCommPlayerData->playerLocation[netId].dir = -1;
        sCommPlayerData->playerLocation[netId].x = 0xffff;
        sCommPlayerData->playerLocation[netId].z = 0xffff;
        sCommPlayerData->playerLocation[netId].moveSpeed = 2;
        sCommPlayerData->playerLocationServer[netId].dir = -1;
        sCommPlayerData->playerLocationServer[netId].x = 0xffff;
        sCommPlayerData->playerLocationServer[netId].z = 0xffff;
        sCommPlayerData->playerLocationServer[netId].moveSpeed = 2;
        sCommPlayerData->unk_102[netId] = -1;
        sCommPlayerData->unk_10A[netId] = 0;
        sCommPlayerData->unk_E2[netId] = 0;
        sCommPlayerData->unk_EA[netId] = 1;
        sCommPlayerData->unk_F2[netId] = 0;
        sCommPlayerData->unk_13A[netId] = 0;
        sCommPlayerData->unk_142[netId] = 0;
    }

    sCommPlayerData->unk_2BF = 0;
    CommPlayer_InitPersonal();

    if (sCommPlayerData->task == NULL) {
        sCommPlayerData->task = SysTask_Start(sub_02057E80, NULL, (100 + 100));
    }
}

void CommPlayerMan_Stop (void)
{
    if (sCommPlayerData->task) {
        sub_02057E80(NULL, NULL);
        SysTask_Done(sCommPlayerData->task);
    }

    sCommPlayerData->task = NULL;
}

void CommPlayer_InitPersonal (void)
{
    sCommPlayerData->unk_08[CommSys_CurNetId()] = sCommPlayerData->fieldSys->unk_3C;
    sCommPlayerData->unk_48[CommSys_CurNetId()] = 1;
    sCommPlayerData->playerLocation[CommSys_CurNetId()].x = Player_XPos(sCommPlayerData->fieldSys->unk_3C);
    sCommPlayerData->playerLocation[CommSys_CurNetId()].z = Player_ZPos(sCommPlayerData->fieldSys->unk_3C);
    sCommPlayerData->playerLocation[CommSys_CurNetId()].dir = Player_Dir(sCommPlayerData->fieldSys->unk_3C);
    sCommPlayerData->playerLocationServer[CommSys_CurNetId()].x = Player_XPos(sCommPlayerData->fieldSys->unk_3C);
    sCommPlayerData->playerLocationServer[CommSys_CurNetId()].z = Player_ZPos(sCommPlayerData->fieldSys->unk_3C);
    sCommPlayerData->playerLocationServer[CommSys_CurNetId()].dir = Player_Dir(sCommPlayerData->fieldSys->unk_3C);
}

void CommPlayer_CopyPersonal (int param0)
{
    int v0;

    sCommPlayerData->unk_2BF = 0;
    v0 = CommSys_CurNetId();

    sCommPlayerData->unk_08[v0] = sCommPlayerData->fieldSys->unk_3C;
    sCommPlayerData->unk_48[v0] = 1;
    sCommPlayerData->playerLocation[v0].x = sCommPlayerData->playerLocation[param0].x;
    sCommPlayerData->playerLocation[v0].z = sCommPlayerData->playerLocation[param0].z;
    sCommPlayerData->playerLocation[v0].dir = sCommPlayerData->playerLocation[param0].dir;
    sCommPlayerData->playerLocationServer[v0].x = sCommPlayerData->playerLocationServer[param0].x;
    sCommPlayerData->playerLocationServer[v0].z = sCommPlayerData->playerLocationServer[param0].z;
    sCommPlayerData->playerLocationServer[v0].dir = sCommPlayerData->playerLocationServer[param0].dir;
    sCommPlayerData->unk_290[v0] = sCommPlayerData->unk_290[param0];
    sCommPlayerData->unk_290[param0] = NULL;

    if (sCommPlayerData->unk_290[v0]) {
        TrainerInfo_Copy(sCommPlayerData->unk_290[v0], (TrainerInfo *)&sCommPlayerData->unk_14A[v0].unk_00);
    }

    sCommPlayerData->unk_14A[param0].unk_20 = 0xff;
}

void CommPlayer_SendXZPos (BOOL param0, int param1, int param2)
{
    u8 v0[5 + 1];
    int v1 = Player_Dir(sCommPlayerData->fieldSys->unk_3C);

    v0[0] = param1;
    v0[1] = param1 >> 8;
    v0[2] = param2;
    v0[3] = param2 >> 8;
    v0[4] = v1;

    if (param0) {
        v0[4] = v0[4] | 0x80;
    }

    sub_020360D0(22, v0);
    sCommPlayerData->unk_2BB = 1;
}

void CommPlayer_SendPos (BOOL param0)
{
    int v0 = Player_XPos(sCommPlayerData->fieldSys->unk_3C);
    int v1 = Player_ZPos(sCommPlayerData->fieldSys->unk_3C);

    CommPlayer_SendXZPos(param0, v0, v1);
}

void CommPlayer_SendPosServer (BOOL param0)
{
    int v0 = sCommPlayerData->playerLocationServer[CommSys_CurNetId()].x;
    int v1 = sCommPlayerData->playerLocationServer[CommSys_CurNetId()].z;

    CommPlayer_SendXZPos(param0, v0, v1);
}

static void sub_02057B48 (int param0, const CommPlayerLocation * playerLocation)
{
    u8 v0[4 + 1];
    int v1 = playerLocation->x, v2 = playerLocation->z;

    if (playerLocation->x < 0) {
        v1 = 0;
    } else if (playerLocation->x >= 0xf000) {
        v1 = 0xf000 - 1;
    }

    if (playerLocation->z < 0) {
        v2 = 0;
    } else if (playerLocation->z >= 0xf000) {
        v2 = 0xf000 - 1;
    }

    v0[0] = param0 & 0xf;
    v0[1] = v1;
    v0[2] = ((v1 >> 8) & 0x1) + ((v2 >> 7) & 0x2);
    v0[3] = v2;

    if (playerLocation->unk_07) {
        v0[2] |= 0x80;
    }

    v0[0] += ((playerLocation->dir % 4) << 4);
    v0[0] += (playerLocation->moveSpeed << 6);

    sub_02035AC4(23, v0, 0);
}

void sub_02057BC4 (void * param0)
{
    int v0 = sub_0205EB0C(sCommPlayerData->fieldSys->unk_3C);
    int v1 = sub_0205EB14(sCommPlayerData->fieldSys->unk_3C);

    if ((0 == v0) && CommSys_IsPlayerConnected(CommSys_CurNetId())) {
        if (!sCommPlayerData->unk_2BA) {
            CommPlayer_SendPos(1);
            sCommPlayerData->unk_2BA = 1;
        }
    }

    if ((1 == v0) && (1 == v1)) {
        sCommPlayerData->unk_2BA = 0;
    }
}

static void sub_02057C2C (void * param0)
{
    int v0;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if (sCommPlayerData->unk_48[v0]) {
            CommPlayerLocation * v1 = &sCommPlayerData->playerLocationServer[v0];

            if (sCommPlayerData->unk_132[v0] || sCommPlayerData->unk_2BB) {
                sCommPlayerData->unk_132[v0] = 0;
                sub_02057B48(v0, v1);
            }
        }
    }

    sCommPlayerData->unk_2BB = 0;
}

u32 CommPlayer_Size (void)
{
    return sizeof(CommPlayerData);
}

static void CommPlayer_Add (u8 param0)
{
    fx32 v0, v1;
    UnkStruct_0205E884 * v2;

    if (sCommPlayerData->unk_08[param0] != NULL) {
        return;
    }

    if (sCommPlayerData->isResetting) {
        return;
    }

    {
        TrainerInfo * v3 = CommInfo_TrainerInfo(param0);

        if (v3 == NULL) {
            (void)0;
        }

        if (v3) {
            if (!sCommPlayerData->isUnderground) {
                if (param0 != CommSys_CurNetId()) {
                    UnkStruct_02061AB4 * v4 = sub_0206251C(sCommPlayerData->fieldSys->unk_38, 0xff + param0 + 1);

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

                v2 = sub_0205E7D0(sCommPlayerData->fieldSys->unk_38, sCommPlayerData->playerLocation[param0].x, sCommPlayerData->playerLocation[param0].z, sCommPlayerData->playerLocation[param0].dir, 0x0, TrainerInfo_Gender(v3), v5, NULL);
            }

            GF_ASSERT(v2);
            sCommPlayerData->unk_08[param0] = v2;

            sub_0206290C(sub_0205EB3C(v2), 0xff + param0 + 1);

            if (sCommPlayerData->isUnderground) {
                ov23_02243038(param0);
            }

            if (sCommPlayerData->isUnderground && !sCommPlayerData->unk_48[param0]) {
                if (!sCommPlayerData->isResetting) {
                    ov5_021F5634(sCommPlayerData->fieldSys, sCommPlayerData->playerLocation[param0].x, 0, sCommPlayerData->playerLocation[param0].z);
                }

                sCommPlayerData->unk_48[param0] = 1;
            } else if (!sCommPlayerData->isUnderground) {
                sCommPlayerData->unk_48[param0] = 1;
            }
        }
    }
}

void CommPlayer_Destory (u8 param0, BOOL param1, BOOL param2)
{
    int v0;

    if (sCommPlayerData == NULL) {
        return;
    }

    MI_CpuClear8(sCommPlayerData->unk_5A, (7 + 1));

    if (sCommPlayerData->isUnderground) {
        ov23_0224AF4C(param0);
    }

    if (sCommPlayerData->unk_08[param0] != NULL) {
        if (sCommPlayerData->fieldSys->unk_3C != sCommPlayerData->unk_08[param0]) {
            if (sCommPlayerData->isUnderground || param2) {
                sub_0205E8E8(sCommPlayerData->unk_08[param0]);
            } else {
                sub_0205E8E0(sCommPlayerData->unk_08[param0]);
            }
        }

        sCommPlayerData->unk_08[param0] = NULL;
    }

    if ((sCommPlayerData->unk_48[param0]) && (!param1)) {
        sCommPlayerData->unk_48[param0] = 0;
    }

    sCommPlayerData->unk_132[param0] = 1;

    if (!param1) {
        sCommPlayerData->unk_FA[param0] = 0;

        if (sCommPlayerData->isUnderground) {
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

static void sub_02057E80 (SysTask * param0, void * param1)
{
    int v0;

    if (CommSys_IsInitialized()) {
        CommPlayer_SendMoveSpeed();

        if (CommSys_CurNetId() == 0) {
            sub_02057C2C(param1);
            sub_02057BC4(param1);

            if (sCommPlayerData->unk_04) {
                ov23_02249954(sCommPlayerData->unk_04);
            }
        } else {
            sub_02057BC4(param1);
        }

        sub_02057EF8(param1);
    }

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if (sCommPlayerData->isUnderground) {
            if (CommSys_CurNetId() == 0) {
                if (NULL == CommInfo_TrainerInfo(v0)) {
                    ov23_0224B5CC(v0);
                }
            }
        }
    }
}

static void sub_02057EF8 (void * param0)
{
    int v0, v1;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if (!CommSys_IsPlayerConnected(v0)) {
            if (!(sub_02036180() && (v0 == 0))) {
                if ((CommSys_CurNetId() == 0) && (sCommPlayerData->isUnderground)) {
                    ov23_0224D898(v0);
                }
            }
        }

        if (CommSys_IsPlayerConnected(v0) || (sub_02036180() && (v0 == 0))) {
            sub_020587C0(v0);

            if (sCommPlayerData->isUnderground) {
                ov23_0224AF7C(v0);
            }
        } else {
            if (sCommPlayerData->unk_48[v0]) {
                if ((CommSys_CurNetId() == 0) && (sCommPlayerData->isUnderground)) {
                    ov23_022436F0(v0);
                    ov23_02241648(v0);
                }

                {
                    u8 v2 = v0;
                    sub_0205853C(0, 1, &v2, sCommPlayerData->fieldSys);
                }
            }
        }
    }
}

BOOL sub_02057FAC (void)
{
    if (sCommPlayerData != NULL) {
        return sCommPlayerData->unk_2BC;
    }

    return 0;
}

void sub_02057FC4 (BOOL param0)
{
    if (sCommPlayerData != NULL) {
        if (sCommPlayerData->unk_2BC != param0) {
            sCommPlayerData->unk_2BC = param0;
        }

        sub_020360D0(62, &sCommPlayerData->unk_2BC);
    }
}

static void sub_02057FF0 (BOOL param0)
{
    if (sCommPlayerData != NULL) {
        if (sCommPlayerData->unk_2BC != param0) {
            sCommPlayerData->unk_2BC = param0;
            sub_020360D0(62, &sCommPlayerData->unk_2BC);
        }
    }
}

void sub_02058018 (int param0, int param1, void * param2, void * param3)
{
    u8 * v0 = (u8 *)param2;

    if (sCommPlayerData) {
        GF_ASSERT(param1 == 1);
        GF_ASSERT(param0 < (7 + 1));
        GF_ASSERT((v0[0] == 1) || (v0[0] == 0));

        sub_02059058(param0, v0[0]);
    }
}

void sub_0205805C (FieldSystem * param0, BOOL param1)
{
    if (sCommPlayerData == NULL) {
        return;
    }

    if (!sCommPlayerData->isUnderground) {
        sub_02057FF0(param1);
        sCommPlayerData->unk_2C1 = param1;
    }

    if (param0->unk_3C) {
        sCommPlayerData->unk_08[CommSys_CurNetId()] = param0->unk_3C;
    }

    if (CommSys_IsInitialized() && (CommSys_CurNetId() == 0)) {
        sub_0205820C(NULL, sCommPlayerData);
    }

    if (CommSys_IsInitialized() && (CommSys_CurNetId() == 0)) {
        if (!sCommPlayerData->isUnderground) {
            sub_020591A8();
        }
    }
}

static int sub_020580DC (u16 param0, u16 param1)
{
    if ((param1 & PAD_KEY_LEFT)) {
        return 2;
    }

    if ((param1 & PAD_KEY_RIGHT)) {
        return 3;
    }

    if ((param1 & PAD_KEY_UP)) {
        return 0;
    }

    if ((param1 & PAD_KEY_DOWN)) {
        return 1;
    }

    return(-1);
}

BOOL sub_02058108 (int param0, int param1)
{
    int v0, v1;
    const UnkStruct_020619DC * v2;

    v0 = sub_0203A4B4(sCommPlayerData->fieldSys);
    v2 = sub_0203A4BC(sCommPlayerData->fieldSys);

    for (v1 = 0; v1 < v0; v1++) {
        if ((v2[v1].unk_1A == param0) && (v2[v1].unk_1C == param1)) {
            return 1;
        }
    }

    return 0;
}

static BOOL sub_0205814C (int param0, int param1, int param2)
{
    int v0;

    if ((param0 != 0xffff) && (param1 != 0xffff)) {
        for (v0 = 0; v0 < (7 + 1); v0++) {
            if (v0 == param2) {
                continue;
            }

            if ((param0 == sub_02058DF8(v0)) && (param1 == sub_02058E4C(v0))) {
                return 1;
            }
        }

        if (sub_02058108(param0, param1)) {
            return 1;
        }

        if (sCommPlayerData->isUnderground) {
            if (!ov23_0224D1A0(param0, param1)) {
                return 1;
            }
        }
    }

    return sub_02054F68(sCommPlayerData->fieldSys, param0, param1);
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

static void sub_0205820C (SysTask * param0, void * param1)
{
    u16 v0;
    u8 v1;
    int v2, v3, v4, v5, v6;
    CommPlayerLocation * playerLocation;
    UnkStruct_ov23_02249978 * v8 = NULL;

    for (v5 = 0; v5 < (7 + 1); v5++) {
        if (sCommPlayerData->unk_48[v5] && sCommPlayerData->unk_E2[v5] && sCommPlayerData->unk_EA[v5]) {
            playerLocation = &sCommPlayerData->playerLocationServer[v5];

            if (sCommPlayerData->unk_04) {
                v8 = ov23_0224993C(sCommPlayerData->unk_04, v5);
            }

            if (sCommPlayerData->isUnderground) {
                if (ov23_0224C1C8(v5)) {
                    continue;
                }
            }

            if (sCommPlayerData->unk_13A[v5] != 0) {
                sCommPlayerData->unk_13A[v5]--;
            }

            if (sCommPlayerData->unk_13A[v5] == 0) {
                if (sCommPlayerData->isUnderground) {
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

            if (!sCommPlayerData->unk_F2[v5]) {
                v0 = sub_02035E84(v5);
            } else {
                v0 = 0;
            }

            playerLocation->moveSpeed = sub_02035E70(v5);

            if (sCommPlayerData->unk_13A[v5] != 0) {
                continue;
            }

            v6 = sub_020581CC(sCommPlayerData->unk_10A[v5], sCommPlayerData->unk_12A[v5]);

            if (sub_02058A18(v5, v6)) {
                sCommPlayerData->unk_13A[v5] = v6;
                sCommPlayerData->unk_132[v5] = 1;
                continue;
            }

            if (playerLocation->unk_07 == 1) {
                sCommPlayerData->unk_132[v5] = 1;
            }

            playerLocation->unk_07 = 0;

            if (sCommPlayerData->unk_122[v5] == 2) {
                u8 v9 = v5;

                sCommPlayerData->unk_122[v5] = 1;
                sub_02035B48(40, &v9);
                continue;
            }

            v2 = sub_020580DC(v0, v0);
            v3 = sub_02058EE0(v5);
            v4 = sub_02058F18(v5);

            if ((v3 != 0xffff) && (v4 != 0xffff) && (v2 != -1)) {
                if (playerLocation->dir != v2) {
                    playerLocation->dir = v2;
                    sCommPlayerData->unk_13A[v5] = 4;
                    sCommPlayerData->unk_132[v5] = 1;

                    if (sCommPlayerData->unk_122[v5] > 2) {
                        sCommPlayerData->unk_122[v5]--;
                        continue;
                    }
                } else if (sCommPlayerData->unk_122[v5] != 0) {
                    continue;
                } else if (sCommPlayerData->isUnderground && (ov23_0224B8E0(v5, v3, v4) == 1)) {
                    continue;
                } else if (sub_0205814C(v3, v4, v5)) {
                    playerLocation->unk_07 = 1;
                    sCommPlayerData->unk_132[v5] = 1;
                    sCommPlayerData->unk_13A[v5] = 4;
                } else {
                    sCommPlayerData->unk_132[v5] = 1;
                    playerLocation->x = v3;
                    playerLocation->z = v4;
                    playerLocation->dir = v2;

                    sCommPlayerData->unk_13A[v5] = sub_020581E0(playerLocation->moveSpeed);

                    if (sCommPlayerData->unk_11A[v5] != 0) {
                        sCommPlayerData->unk_11A[v5]--;

                        if (sCommPlayerData->unk_11A[v5] == 0) {
                            u8 v10 = 1;
                            ov23_0224540C(v5, 1, &v10, NULL);
                        }
                    }
                }
            }
        }
    }
}

void sub_02058488 (int param0, int param1, void * param2, void * param3)
{
    u8 * v0 = (u8 *)param2;
    CommPlayerLocation * playerLocation;

    if (sCommPlayerData == NULL) {
        return;
    }

    playerLocation = &sCommPlayerData->playerLocationServer[param0];

    if (v0[4] & 0x80) {
        sCommPlayerData->unk_2BB = 1;
        return;
    }

    if (playerLocation->dir == -1) {
        int v2;

        for (v2 = 0; v2 < (7 + 1); v2++) {
            sCommPlayerData->unk_132[v2] = 1;
        }
    }

    playerLocation->x = 0;
    playerLocation->z = 0;
    playerLocation->x += ((u32)v0[0]) & 0xff;
    playerLocation->x += ((u32)v0[1] << 8) & 0xff00;
    playerLocation->z += ((u32)v0[2]) & 0xff;
    playerLocation->z += ((u32)v0[3] << 8) & 0xff00;
    playerLocation->dir = v0[4] & 0xf;

    sCommPlayerData->unk_48[param0] = 1;
    sCommPlayerData->unk_132[param0] = 1;

    if (sub_02054F68(sCommPlayerData->fieldSys, playerLocation->x, playerLocation->z)) {
        GF_ASSERT(0);
    }
}

void sub_0205853C (int param0, int param1, void * param2, void * param3)
{
    u8 * v0 = (u8 *)param2;
    u8 v1 = v0[0];

    if (sCommPlayerData == NULL) {
        return;
    }

    if (v1 == CommSys_CurNetId()) {
        return;
    }

    if (sCommPlayerData->isUnderground) {
        ov23_022430B8(v1);

        if (!sCommPlayerData->isResetting) {
            ov5_021F5634(sCommPlayerData->fieldSys, sCommPlayerData->playerLocation[v1].x, 0, sCommPlayerData->playerLocation[v1].z);
        }
    }

    CommPlayer_Destory(v1, 0, 0);
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

    if (sCommPlayerData == NULL) {
        return;
    }

    if ((param0 == CommSys_CurNetId()) && sCommPlayerData->unk_2C3) {
        return;
    }

    playerLocation = &sCommPlayerData->playerLocation[v3];

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
    UnkStruct_020298B0 * v0 = sub_020298B0(sub_0203D174(sCommPlayerData->fieldSys));
    UnkStruct_0202855C * v1 = sub_020298A0(sub_0203D174(sCommPlayerData->fieldSys));

    if (sCommPlayerData->isUnderground) {
        if (param0 == CommSys_CurNetId()) {
            sub_0202929C(v0);

            if (sub_020292B4(v0) == 50) {
                sub_0202CFEC(sub_0202CD88(sCommPlayerData->fieldSys->unk_0C), 37);
            }
        }
    }
}

static BOOL sub_020586A8 (int param0, int param1, int param2, int param3)
{
    UnkStruct_02061AB4 * v0;
    int v1, v2;
    u8 v3[] = {
        0x14, 0x15, 0x16, 0x17, 0x10, 0x11, 0x12, 0x13, 0xc, 0xd, 0xe, 0xf
    };

    if ((sCommPlayerData->unk_102[param0] == -1) || (sCommPlayerData->unk_08[param0] == NULL)) {
        return 0;
    }

    if (param1 == 0) {
        return 1;
    }

    v0 = sub_0205EB3C(sCommPlayerData->unk_08[param0]);

    if (Player_Dir(sCommPlayerData->unk_08[param0]) != sub_02059328(sCommPlayerData->unk_102[param0])) {
        sub_020628C4(v0, (1 << 7));
        sub_0205EA84(sCommPlayerData->unk_08[param0], sub_02059328(sCommPlayerData->unk_102[param0]));
        sub_020628BC(v0, (1 << 7));
    }

    if (sub_02065684(v0) == 1) {
        (void)0;
    }

    if (sub_020655F4(v0) == 1) {
        sub_02058644(param0);

        switch (param3) {
        case 0:
            sub_02065638(v0, v3[sCommPlayerData->unk_102[param0]]);
            break;
        case 1:
            sub_02065638(v0, v3[sCommPlayerData->unk_102[param0] + 4]);
            break;
        case 2:
            sub_02065638(v0, v3[sCommPlayerData->unk_102[param0] + 8]);
            break;
        }
    } else {
        (void)0;
    }

    return 1;
}

static void sub_020587C0 (int param0)
{
    BOOL v0 = 0, v1 = 1;
    u16 v2 = 0;
    CommPlayerLocation * playerLocation;
    UnkStruct_0205E884 * v4;
    int v5;

    playerLocation = &sCommPlayerData->playerLocation[param0];

    if (sCommPlayerData->unk_142[param0] != 0) {
        sCommPlayerData->unk_142[param0]--;
        return;
    }

    if ((playerLocation->x == 0xffff) || (playerLocation->z == 0xffff)) {
        return;
    }

    if (sCommPlayerData->isResetting) {
        return;
    }

    if (!sCommPlayerData->isUnderground) {
        if (param0 == CommSys_CurNetId()) {
            if (!sCommPlayerData->unk_2C1) {
                return;
            }
        }
    }

    v4 = sCommPlayerData->unk_08[param0];

    if (v4) {
        int v6 = Player_XPos(v4) - playerLocation->x;
        int v7 = Player_ZPos(v4) - playerLocation->z;
        int v8 = Player_Dir(v4);

        if ((v6 == 0) && (v7 == 0)) {
            v2 = 0;
        } else if (abs(v6) > abs(v7)) {
            if (v6 > 0) {
                v2 = PAD_KEY_LEFT;
            } else {
                v2 = PAD_KEY_RIGHT;
            }
        } else {
            if (v7 > 0) {
                v2 = PAD_KEY_UP;
            } else {
                v2 = PAD_KEY_DOWN;
            }
        }

        if (abs(v6) + abs(v7) > 2) {
            v1 = 0;
        }

        if (sub_020586A8(param0, v2, v2, playerLocation->moveSpeed)) {
            return;
        }

        {
            u32 v9 = 0xff;
            int v10;

            v5 = playerLocation->moveSpeed;

            switch (playerLocation->moveSpeed) {
            case 0:
                v10 = 5;
                break;
            case 1:
                v10 = 4;
                v2 |= PAD_BUTTON_B;
                break;
            case 2:
                v10 = 2;
                break;
            case 3:
                v10 = 1;
                break;
            }

            if (sCommPlayerData->unk_2C0 && (param0 == CommSys_CurNetId())) {
                sCommPlayerData->unk_2C0--;
            } else if (!sub_02035EE0() && sCommPlayerData->isUnderground && (param0 == CommSys_CurNetId())) {
                v9 = sub_0206147C(
                    v4, v2, v2, v10, 1, 0);
            } else if (((v2 & ~PAD_BUTTON_B) == 0) && (playerLocation->unk_07)) {
                v5 = 3;

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
            } else if (((v2 & ~PAD_BUTTON_B) == 0) && (playerLocation->dir != v8)) {
                v9 = sub_02065838(playerLocation->dir, 0x24);
            } else {
                v9 = sub_0206147C(v4, v2, v2, v10, 1, 0);
            }

            if (sub_02061544(v4) == 0) {
                if (sub_020613AC(v4) == 0) {
                    return;
                }
            }

            if (v9 != 0xff) {
                sub_02061550(v4, v9, 1);

                if (v2 & ~PAD_BUTTON_B) {
                    if (sCommPlayerData->unk_142[param0] == 0) {
                        sCommPlayerData->unk_142[param0] = sub_020581E0(v5);
                    }

                    if (sCommPlayerData->unk_142[param0] != 0) {
                        sCommPlayerData->unk_142[param0]--;
                    }

                    sub_02058644(param0);
                }
            }
        }
    }
}

static BOOL sub_02058A18 (int param0, int param1)
{
    int v0, v1;
    CommPlayerLocation * playerLocation;

    if (sCommPlayerData->unk_10A[param0] == 0) {
        return 0;
    }

    if (sCommPlayerData->unk_10A[param0] == 0xff) {
        return 1;
    }

    sCommPlayerData->unk_10A[param0]--;

    if (1 == param1) {
        return 1;
    }

    v0 = sub_02058DF8(param0);
    v1 = sub_02058E4C(param0);
    v0 += sub_0206419C(sCommPlayerData->unk_112[param0]);
    v1 += sub_020641A8(sCommPlayerData->unk_112[param0]);

    if (sCommPlayerData->unk_10A[param0] != 0) {
        if (sub_0205814C(v0, v1, param0)) {
            sCommPlayerData->unk_10A[param0] = 1;
        }
    }

    if (sCommPlayerData->unk_10A[param0] == 1) {
        return 1;
    } else if (sCommPlayerData->unk_10A[param0] == 0) {
        u8 v3 = 1;

        ov23_0224540C(param0, 1, &v3, NULL);
        return 1;
    }

    playerLocation = &sCommPlayerData->playerLocationServer[param0];
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
    CommPlayerLocation * playerLocation = &sCommPlayerData->playerLocationServer[param0];
    u8 v1[3];

    playerLocation->dir = sub_02059328(param1);
    sCommPlayerData->unk_112[param0] = param1;

    if (param2) {
        sCommPlayerData->unk_12A[param0] = 1;
        sCommPlayerData->unk_10A[param0] = 45;
    } else {
        sCommPlayerData->unk_12A[param0] = 0;
        sCommPlayerData->unk_10A[param0] = 27;
    }

    sCommPlayerData->unk_132[param0] = 1;
}

void sub_02058B7C (int param0)
{
    sCommPlayerData->unk_10A[param0] = 0;
}

void sub_02058B94 (int param0)
{
    sCommPlayerData->unk_10A[param0] = 0xff;
}

void sub_02058BA8 (int param0, int param1, BOOL param2)
{
    UnkStruct_02061AB4 * v0;

    if (sCommPlayerData->unk_08[param0] == NULL) {
        return;
    }

    v0 = sub_0205EB3C(sCommPlayerData->unk_08[param0]);

    sub_020628BC(v0, (1 << 7));
    sub_020628BC(v0, (1 << 8));

    sCommPlayerData->unk_102[param0] = param1;
}

void sub_02058BE8 (int param0)
{
    UnkStruct_02061AB4 * v0;

    if (sCommPlayerData->unk_08[param0] == NULL) {
        return;
    }

    if (sCommPlayerData->unk_102[param0] != -1) {
        v0 = sub_0205EB3C(sCommPlayerData->unk_08[param0]);

        sub_020656AC(v0);
        sub_020628C4(v0, (1 << 7));
        sub_020628C4(v0, (1 << 8));

        sCommPlayerData->unk_102[param0] = -1;
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

    if (!sCommPlayerData) {
        return 0;
    }

    if (!CommSys_IsPlayerConnected(CommSys_CurNetId())) {
        return 0;
    }

    if (sCommPlayerData->isUnderground && !ov23_02249BD4()) {
        return 0;
    }

    return 1;
}

BOOL sub_02058C90 (int param0)
{
    return sCommPlayerData->unk_48[param0];
}

int sub_02058CA0 (int param0)
{
    if (!sCommPlayerData) {
        return 0xffff;
    } else if (CommSys_CurNetId() == param0) {
        return sCommPlayerData->playerLocation[param0].x;
    } else if (!sub_02058C40() || !sCommPlayerData->unk_48[param0]) {
        return 0xffff;
    }

    return sCommPlayerData->playerLocation[param0].x;
}

int sub_02058CF4 (int param0)
{
    if (!sCommPlayerData) {
        return 0xffff;
    } else if (CommSys_CurNetId() == param0) {
        return sCommPlayerData->playerLocation[param0].z;
    } else if (!sub_02058C40() || !sCommPlayerData->unk_48[param0]) {
        return 0xffff;
    }

    return sCommPlayerData->playerLocation[param0].z;
}

int sub_02058D48 (int param0)
{
    if (!sCommPlayerData) {
        return 0xffff;
    }

    return sCommPlayerData->playerLocation[param0].x;
}

int sub_02058D68 (int param0)
{
    if (!sCommPlayerData) {
        return 0xffff;
    }

    return sCommPlayerData->playerLocation[param0].z;
}

int sub_02058D88 (int param0)
{
    if (sub_02058CA0(param0) == 0xffff) {
        return 0xffff;
    }

    return sCommPlayerData->playerLocation[param0].x + sub_0206419C(sCommPlayerData->playerLocation[param0].dir);
}

int sub_02058DC0 (int param0)
{
    if (sub_02058CF4(param0) == 0xffff) {
        return 0xffff;
    }

    return sCommPlayerData->playerLocation[param0].z + sub_020641A8(sCommPlayerData->playerLocation[param0].dir);
}

int sub_02058DF8 (int param0)
{
    if (!sCommPlayerData) {
        return 0xffff;
    } else if (CommSys_CurNetId() == param0) {
        return sCommPlayerData->playerLocationServer[param0].x;
    } else if (!sub_02058C40() || !sCommPlayerData->unk_48[param0]) {
        return 0xffff;
    }

    return sCommPlayerData->playerLocationServer[param0].x;
}

int sub_02058E4C (int param0)
{
    if (!sCommPlayerData) {
        return 0xffff;
    } else if (CommSys_CurNetId() == param0) {
        return sCommPlayerData->playerLocationServer[param0].z;
    } else if (!sub_02058C40() || !sCommPlayerData->unk_48[param0]) {
        return 0xffff;
    }

    return sCommPlayerData->playerLocationServer[param0].z;
}

int sub_02058EA0 (int param0)
{
    if (!sCommPlayerData) {
        return 0xffff;
    }

    return sCommPlayerData->playerLocationServer[param0].x;
}

int sub_02058EC0 (int param0)
{
    if (!sCommPlayerData) {
        return 0xffff;
    }

    return sCommPlayerData->playerLocationServer[param0].z;
}

int sub_02058EE0 (int param0)
{
    if (sub_02058DF8(param0) == 0xffff) {
        return 0xffff;
    }

    return sCommPlayerData->playerLocationServer[param0].x + sub_0206419C(sCommPlayerData->playerLocationServer[param0].dir);
}

int sub_02058F18 (int param0)
{
    if (sub_02058E4C(param0) == 0xffff) {
        return 0xffff;
    }

    return sCommPlayerData->playerLocationServer[param0].z + sub_020641A8(sCommPlayerData->playerLocationServer[param0].dir);
}

int sub_02058F50 (int param0)
{
    if (!sub_02058C40() || !sCommPlayerData->unk_48[param0]) {
        return -1;
    }

    return sCommPlayerData->playerLocation[param0].dir;
}

int sub_02058F80 (int param0)
{
    if (!sub_02058C40() || !sCommPlayerData->unk_48[param0]) {
        return -1;
    }

    return sCommPlayerData->playerLocationServer[param0].dir;
}

void sub_02058FB0 (int param0, int param1)
{
    int v0 = sub_02059328(sCommPlayerData->playerLocationServer[param0].dir);

    sCommPlayerData->playerLocationServer[param1].dir = v0;
    sCommPlayerData->unk_132[param1] = 1;
}

void sub_02058FE4 (int param0, int param1)
{
    int v0 = sub_02059328(sCommPlayerData->playerLocation[param0].dir);
    sCommPlayerData->playerLocation[param1].dir = v0;
}

int sub_0205900C (int param0, int param1)
{
    int v0, v1, v2;

    if (!sCommPlayerData) {
        return 0xff;
    }

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if (sCommPlayerData->unk_48[v0] == 0) {
            continue;
        }

        v1 = sCommPlayerData->playerLocationServer[v0].x;
        v2 = sCommPlayerData->playerLocationServer[v0].z;

        if ((param0 == v1) && (param1 == v2)) {
            return v0;
        }
    }

    return 0xff;
}

void sub_02059058 (int param0, BOOL param1)
{
    if (sCommPlayerData->unk_E2[param0] != param1) {
        sCommPlayerData->unk_E2[param0] = param1;
        sCommPlayerData->playerLocationServer[param0].unk_07 = 0;
        sCommPlayerData->unk_132[param0] = 1;
        sCommPlayerData->playerLocationServer[param0].moveSpeed = 2;
    }
}

BOOL sub_02059094 (int param0)
{
    if (sCommPlayerData->unk_2C2) {
        return 0;
    }

    if (!sCommPlayerData->unk_EA[param0]) {
        return 0;
    }

    return sCommPlayerData->unk_E2[param0];
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
    int v2 = sub_02036148(sub_0203895C());
    int v3, v4, v5 = 0, v6[4], v7;
    int v8 = 0;
    UnkStruct_020590C4 * v9;

    if (v2 == 2) {
        v9 = v0;
    } else {
        v9 = v1;
    }

    for (v3 = 0; v3 < v2; v3++) {
        for (v4 = 0; v4 < v2; v4++) {
            if ((sub_02058CA0(v4) == v9[v3].unk_00) && (sub_02058CF4(v4) == v9[v3].unk_02)) {
                v5++;
                v6[v4] = v3;

                if (v4 == CommSys_CurNetId()) {
                    v8 = 1;
                }
                break;
            }
        }
    }

    if (v5 == v2) {
        for (v3 = 0; v3 < v2; v3++) {
            sub_020362DC(v6[v3], v3);
        }
    }

    return v8;
}

void sub_02059180 (int param0, int param1, void * param2, void * param3)
{
    u8 * v0 = param2;

    if (v0[0] == 3) {
        sCommPlayerData->unk_F2[param0] = 0;
    } else {
        sCommPlayerData->unk_2B4[param0] = v0[0];
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
    int v1, v2, v3 = 0, v4[4];
    int v5 = 0;
    UnkStruct_020590C4 * v6;
    u8 v7;

    if (v0 == 2) {
        v6 = Unk_02100B6C;
    } else {
        v6 = Unk_02100B74;
    }

    for (v7 = 0; v7 < v0; v7++) {
        if (!sCommPlayerData->unk_2B4[v7]) {
            continue;
        }

        for (v1 = 0; v1 < v0; v1++) {
            if ((sub_02058DF8(v7) == v6[v1].unk_00) && (sub_02058E4C(v7) == v6[v1].unk_02)) {
                sCommPlayerData->unk_F2[v7] = 1;
                sub_02035B48(95, &v7);
            }
        }
    }
}

void sub_02059240 (void)
{
    int v0 = CommSys_CurNetId();
    int v1;

    if (sub_02058CA0(v0) > 8) {
        sub_020593F4(2);
        v1 = sub_02065838(2, 0x24);
    } else {
        sub_020593F4(3);
        v1 = sub_02065838(3, 0x24);
    }

    sub_02061550(sCommPlayerData->unk_08[v0], v1, 1);
    sub_02059624();
}

BOOL sub_0205928C (void)
{
    int v0 = sub_02036148(sub_0203895C());
    int v1, v2, v3 = 0, v4[4], v5;
    int v6 = 0;

    for (v1 = 0; v1 < v0; v1++) {
        if ((sCommPlayerData->unk_48[v1] == 0) || (sCommPlayerData->unk_132[v1] == 1)) {
            return 0;
        }
    }

    for (v1 = 0; v1 < v0; v1++) {
        CommPlayerLocation * playerLocation = &sCommPlayerData->playerLocationServer[v1];

        v5 = sub_02059328(playerLocation->dir);
        playerLocation->x += sub_0206419C(v5);
        playerLocation->z += sub_020641A8(v5);
        playerLocation->moveSpeed = 2;

        sCommPlayerData->unk_132[v1] = 1;
        sub_02059058(v1, 1);
    }

    return 1;
}

int sub_02059328 (int param0)
{
    if (param0 == 0) {
        return 1;
    } else if (param0 == 1) {
        return 0;
    } else if (param0 == 2) {
        return 3;
    } else if (param0 == 3) {
        return 2;
    }

    GF_ASSERT(FALSE);
    return 2;
}

void sub_02059354 (int param0, int param1)
{
    sCommPlayerData->unk_11A[param0] = param1;
    sCommPlayerData->unk_13A[param0] = 15;
}

void sub_02059378 (int param0)
{
    sCommPlayerData->unk_11A[param0] = 0;
}

void sub_02059390 (int param0, int param1)
{
    sCommPlayerData->unk_122[param0] = param1;
    sCommPlayerData->unk_13A[param0] = 15;
}

void sub_020593B4 (int param0)
{
    sCommPlayerData->unk_122[param0] = 0;
}

int sub_020593CC (int param0)
{
    return sCommPlayerData->unk_142[param0];
}

int sub_020593E0 (int param0)
{
    return sCommPlayerData->unk_13A[param0];
}

void sub_020593F4 (int param0)
{
    sub_0205EA84(sCommPlayerData->fieldSys->unk_3C, param0);
    sCommPlayerData->playerLocation[CommSys_CurNetId()].dir = param0;
    CommPlayer_SendPos(0);
}

void sub_02059424 (int param0, int param1)
{
    sCommPlayerData->playerLocation[param0].dir = param1;
    sub_0205EA84(sCommPlayerData->unk_08[param0], param1);
}

int sub_02059444 (int param0)
{
    if (!sCommPlayerData->unk_08[param0]) {
        return -1;
    }

    return Player_Dir(sCommPlayerData->unk_08[param0]);
}

void sub_02059464 (int param0)
{
    if (0 != param0) {
        sCommPlayerData->unk_00 |= param0;
    }

    sub_0203D128();
    sCommPlayerData->unk_2BC = 0;
}

void sub_0205948C (int param0)
{
    if (0 != param0) {
        sCommPlayerData->unk_00 &= ~(param0);
    }

    if (sCommPlayerData->unk_00 == 0x10) {
        u8 v0 = 1;
        sub_020360D0(62, &v0);
    }

    if (sCommPlayerData->unk_00 == 0) {
        if (0x10 != param0) {
            sub_0203D140();
            sub_02057FC4(1);
        } else {
            sub_0203D140();
            sCommPlayerData->unk_2BC = 1;
        }
    }
}

void sub_020594EC (void)
{
    sCommPlayerData->unk_00 = 0;
}

void sub_020594FC (void)
{
    sub_0203D128();
    sCommPlayerData->unk_2BC = 0;
}

void sub_02059514 (void)
{
    sub_0203D140();
    sub_02057FC4(1);
}

void sub_02059524 (void)
{
    if (sCommPlayerData->unk_2BF == 0) {
        if (!sCommPlayerData->isUnderground) {
            sub_02059514();
            sCommPlayerData->unk_2BF = 1;
        } else if (ov23_02243298(CommSys_CurNetId())) {
            sub_02059514();
            sCommPlayerData->unk_2BF = 1;
        } else {
            (void)0;
        }
    }
}

void sub_02059570 (void)
{
    if (sCommPlayerData->unk_2BF == 0) {
        if (sCommPlayerData->isUnderground) {
            if (!ov23_02243298(CommSys_CurNetId())) {
                sub_02057FC4(0);
            }
        }
    }
}

void sub_020595A4 (void)
{
    int v0, v1, v2, v3;
    UnkStruct_02061AB4 * v4;

    if (!sCommPlayerData) {
        return;
    }

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if (sCommPlayerData->unk_08[v0] == NULL) {
            continue;
        }

        if (CommSys_CurNetId() == v0) {
            continue;
        }

        v4 = sub_0205EB3C(sCommPlayerData->unk_08[v0]);
        v1 = sCommPlayerData->playerLocation[v0].x;
        v2 = sCommPlayerData->playerLocation[v0].z;
        v3 = sCommPlayerData->playerLocation[v0].dir;

        sub_02063024(v4, v1);
        sub_02063044(v4, v2);
        sub_02063340(v4, v1, 0, v2, v3);
    }
}

void sub_02059624 (void)
{
    sCommPlayerData->unk_2C0 = 8;
}

void sub_02059638 (BOOL param0)
{
    sCommPlayerData->unk_2C3 = param0;
}
