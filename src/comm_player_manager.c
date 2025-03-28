#include "comm_player_manager.h"

#include <nitro.h>
#include <nitro/os.h>
#include <nnsys/g3d/glbstate.h>
#include <string.h>

#include "constants/communication/comm_packets.h"
#include "constants/heap.h"
#include "generated/trainer_score_events.h"

#include "struct_decls/struct_0202855C_decl.h"
#include "struct_decls/struct_020298B0_decl.h"
#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/struct_02057B48.h"
#include "struct_defs/struct_020590C4.h"

#include "field/field_system.h"
#include "overlay005/ov5_021F55CC.h"
#include "overlay023/ov23_0223E140.h"
#include "overlay023/ov23_02241F74.h"
#include "overlay023/ov23_0224340C.h"
#include "overlay023/ov23_02249918.h"
#include "overlay023/ov23_022499E4.h"
#include "overlay023/ov23_0224A1D0.h"
#include "overlay023/ov23_0224B05C.h"
#include "overlay023/struct_ov23_02249978_decl.h"

#include "communication_information.h"
#include "communication_system.h"
#include "field_system.h"
#include "game_records.h"
#include "heap.h"
#include "location.h"
#include "map_header_data.h"
#include "map_object.h"
#include "map_object_move.h"
#include "player_avatar.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "terrain_collision_manager.h"
#include "trainer_info.h"
#include "unk_0202854C.h"
#include "unk_020366A0.h"
#include "unk_0205F180.h"
#include "unk_020655F4.h"
#include "unk_0206CCB0.h"

static int sub_020581CC(int param0, int param1);
static BOOL CommPlayer_MoveBlow(int netId, int param1);
static BOOL CommPlayer_BlowAnimation(int netId, int param1, int unused, int animSpeed);
static void CommPlayer_SendDataTask(void *data);
static void sub_02057C2C(void *data);
static void CommPlayer_Add(u8 netId);
static void CommPlayer_Move(SysTask *unused0, void *unused1);
static void Task_CommPlayerManagerRun(SysTask *task, void *data);
static void sub_02057EF8(void *unused);
static void CommPlayer_MoveClient(int netId);
static void sub_020591A8(void);

static CommPlayerManager *sCommPlayerManager = NULL;

CommPlayerManager *CommPlayerMan_Get(void)
{
    return sCommPlayerManager;
}

BOOL CommPlayerMan_Init(void *dest, FieldSystem *fieldSystem, BOOL isUnderground)
{
    if (sCommPlayerManager != NULL) {
        return FALSE;
    }

    if (sCommPlayerManager == NULL) {
        sCommPlayerManager = dest;
        MI_CpuFill8(sCommPlayerManager, 0, sizeof(CommPlayerManager));
    }

    sCommPlayerManager->isUnderground = isUnderground;
    sCommPlayerManager->unk_04 = NULL;

    if (isUnderground) {
        sCommPlayerManager->unk_04 = Heap_AllocFromHeap(HEAP_ID_COMMUNICATION, ov23_02249918());
        ov23_0224991C(sCommPlayerManager->unk_04);
    }

    sCommPlayerManager->fieldSystem = fieldSystem;

    for (int netId = 0; netId < MAX_CONNECTED_PLAYERS; netId++) {
        sCommPlayerManager->playerLocation[netId].dir = DIR_NONE;
        sCommPlayerManager->playerLocation[netId].x = 0xffff;
        sCommPlayerManager->playerLocation[netId].z = 0xffff;
        sCommPlayerManager->playerLocation[netId].moveSpeed = 2;
        sCommPlayerManager->playerLocationServer[netId].dir = DIR_NONE;
        sCommPlayerManager->playerLocationServer[netId].x = 0xffff;
        sCommPlayerManager->playerLocationServer[netId].z = 0xffff;
        sCommPlayerManager->playerLocationServer[netId].moveSpeed = 2;
        sCommPlayerManager->blowDir[netId] = DIR_NONE;
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

    return TRUE;
}

void CommPlayerMan_Reset(void)
{
    if (sCommPlayerManager == NULL) {
        return;
    }

    for (int netId = 0; netId < MAX_CONNECTED_PLAYERS; netId++) {
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

void CommPlayerMan_Restart(void)
{
    if (sCommPlayerManager == NULL) {
        return;
    }

    sCommPlayerManager->sendAllPos = TRUE;
    sCommPlayerManager->isResetting = FALSE;

    CommPlayer_InitPersonal();
    CommPlayer_SendPos(TRUE);
}

void CommPlayerMan_Delete(BOOL deletePlayerData)
{
    int netId, netJd;

    if (sCommPlayerManager != NULL) {
        for (netJd = 0; netJd < 5; netJd++) {
            if (sCommPlayerManager->unk_27C[netJd]) {
                Heap_FreeToHeap(sCommPlayerManager->unk_27C[netJd]);
                sCommPlayerManager->unk_27C[netJd] = NULL;
            }
        }

        if (sCommPlayerManager->unk_2B2 >= 5) {
            sub_0206DF60(sCommPlayerManager->fieldSystem, sCommPlayerManager->unk_2B2);
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

void CommPlayerMan_Reinit(void)
{
    for (int netId = 0; netId < MAX_CONNECTED_PLAYERS; netId++) {
        if (sCommPlayerManager->isUnderground) {
            ov23_0224AF4C(netId);
            ov23_0224AD98(netId);

            if (netId != 0) {
                ov23_0224AE60(netId);
            }
        }

        if (sCommPlayerManager->playerAvatar[netId] != NULL) {
            if (sCommPlayerManager->fieldSystem->playerAvatar != sCommPlayerManager->playerAvatar[netId]) {
                if (sCommPlayerManager->isUnderground) {
                    Player_DeleteAll(sCommPlayerManager->playerAvatar[netId]);
                }
            }

            sCommPlayerManager->playerAvatar[netId] = NULL;
        }

        sCommPlayerManager->isActive[netId] = FALSE;
        sCommPlayerManager->playerLocation[netId].dir = DIR_NONE;
        sCommPlayerManager->playerLocation[netId].x = 0xffff;
        sCommPlayerManager->playerLocation[netId].z = 0xffff;
        sCommPlayerManager->playerLocation[netId].moveSpeed = 2;
        sCommPlayerManager->playerLocationServer[netId].dir = DIR_NONE;
        sCommPlayerManager->playerLocationServer[netId].x = 0xffff;
        sCommPlayerManager->playerLocationServer[netId].z = 0xffff;
        sCommPlayerManager->playerLocationServer[netId].moveSpeed = 2;
        sCommPlayerManager->blowDir[netId] = DIR_NONE;
        sCommPlayerManager->unk_10A[netId] = 0;
        sCommPlayerManager->unk_E2[netId] = 0;
        sCommPlayerManager->unk_EA[netId] = 1;
        sCommPlayerManager->unk_F2[netId] = 0;
        sCommPlayerManager->moveTimerServer[netId] = 0;
        sCommPlayerManager->moveTimer[netId] = 0;
    }

    sCommPlayerManager->unk_2BF = 0;
    CommPlayer_InitPersonal();

    if (sCommPlayerManager->task == NULL) {
        sCommPlayerManager->task = SysTask_Start(Task_CommPlayerManagerRun, NULL, (100 + 100));
    }
}

void CommPlayerMan_Stop(void)
{
    if (sCommPlayerManager->task) {
        Task_CommPlayerManagerRun(NULL, NULL);
        SysTask_Done(sCommPlayerManager->task);
    }

    sCommPlayerManager->task = NULL;
}

void CommPlayer_InitPersonal(void)
{
    sCommPlayerManager->playerAvatar[CommSys_CurNetId()] = sCommPlayerManager->fieldSystem->playerAvatar;
    sCommPlayerManager->isActive[CommSys_CurNetId()] = TRUE;
    sCommPlayerManager->playerLocation[CommSys_CurNetId()].x = Player_GetXPos(sCommPlayerManager->fieldSystem->playerAvatar);
    sCommPlayerManager->playerLocation[CommSys_CurNetId()].z = Player_GetZPos(sCommPlayerManager->fieldSystem->playerAvatar);
    sCommPlayerManager->playerLocation[CommSys_CurNetId()].dir = PlayerAvatar_GetDir(sCommPlayerManager->fieldSystem->playerAvatar);
    sCommPlayerManager->playerLocationServer[CommSys_CurNetId()].x = Player_GetXPos(sCommPlayerManager->fieldSystem->playerAvatar);
    sCommPlayerManager->playerLocationServer[CommSys_CurNetId()].z = Player_GetZPos(sCommPlayerManager->fieldSystem->playerAvatar);
    sCommPlayerManager->playerLocationServer[CommSys_CurNetId()].dir = PlayerAvatar_GetDir(sCommPlayerManager->fieldSystem->playerAvatar);
}

void CommPlayer_CopyPersonal(int netJd)
{
    int netId;

    sCommPlayerManager->unk_2BF = FALSE;
    netId = CommSys_CurNetId();

    sCommPlayerManager->playerAvatar[netId] = sCommPlayerManager->fieldSystem->playerAvatar;
    sCommPlayerManager->isActive[netId] = TRUE;
    sCommPlayerManager->playerLocation[netId].x = sCommPlayerManager->playerLocation[netJd].x;
    sCommPlayerManager->playerLocation[netId].z = sCommPlayerManager->playerLocation[netJd].z;
    sCommPlayerManager->playerLocation[netId].dir = sCommPlayerManager->playerLocation[netJd].dir;
    sCommPlayerManager->playerLocationServer[netId].x = sCommPlayerManager->playerLocationServer[netJd].x;
    sCommPlayerManager->playerLocationServer[netId].z = sCommPlayerManager->playerLocationServer[netJd].z;
    sCommPlayerManager->playerLocationServer[netId].dir = sCommPlayerManager->playerLocationServer[netJd].dir;
    sCommPlayerManager->unk_290[netId] = sCommPlayerManager->unk_290[netJd];
    sCommPlayerManager->unk_290[netJd] = NULL;

    if (sCommPlayerManager->unk_290[netId]) {
        TrainerInfo_Copy(sCommPlayerManager->unk_290[netId], (TrainerInfo *)&sCommPlayerManager->unk_14A[netId].unk_00);
    }

    sCommPlayerManager->unk_14A[netJd].unk_20 = 0xff;
}

void CommPlayer_SendXZPos(BOOL param0, int x, int z)
{
    u8 data[5 + 1];
    int dir = PlayerAvatar_GetDir(sCommPlayerManager->fieldSystem->playerAvatar);

    data[0] = x;
    data[1] = x >> 8;
    data[2] = z;
    data[3] = z >> 8;
    data[4] = dir;

    if (param0) {
        data[4] = data[4] | 0x80;
    }

    CommSys_SendDataFixedSize(22, data);
    sCommPlayerManager->sendAllPos = TRUE;
}

void CommPlayer_SendPos(BOOL param0)
{
    int x = Player_GetXPos(sCommPlayerManager->fieldSystem->playerAvatar);
    int z = Player_GetZPos(sCommPlayerManager->fieldSystem->playerAvatar);

    CommPlayer_SendXZPos(param0, x, z);
}

void CommPlayer_SendPosServer(BOOL param0)
{
    int x = sCommPlayerManager->playerLocationServer[CommSys_CurNetId()].x;
    int z = sCommPlayerManager->playerLocationServer[CommSys_CurNetId()].z;

    CommPlayer_SendXZPos(param0, x, z);
}

static void CommPlayer_SendPosNetId(int netId, const CommPlayerLocation *playerLocation)
{
    u8 data[COMM_PACKET_SIZE_POS_NETID + 1];
    int x = playerLocation->x, z = playerLocation->z;

    if (playerLocation->x < 0) {
        x = 0;
    } else if (playerLocation->x >= 0xf000) {
        x = 0xf000 - 1;
    }

    if (playerLocation->z < 0) {
        z = 0;
    } else if (playerLocation->z >= 0xf000) {
        z = 0xf000 - 1;
    }

    data[0] = netId & 0xf;
    data[1] = x;
    data[2] = ((x >> 8) & 0x1) + ((z >> 7) & 0x2);
    data[3] = z;

    if (playerLocation->collisionFlag) {
        data[2] |= 0x80;
    }

    data[0] += ((playerLocation->dir % 4) << 4);
    data[0] += (playerLocation->moveSpeed << 6);

    CommSys_SendDataServer(23, data, 0);
}

void CommPlayer_SendDataTask(void *data)
{
    int v0 = PlayerAvatar_MoveState(sCommPlayerManager->fieldSystem->playerAvatar);
    int moveState = Player_MoveState(sCommPlayerManager->fieldSystem->playerAvatar);

    if ((0 == v0) && CommSys_IsPlayerConnected(CommSys_CurNetId())) {
        if (!sCommPlayerManager->unk_2BA) {
            CommPlayer_SendPos(TRUE);
            sCommPlayerManager->unk_2BA = 1;
        }
    }

    if ((1 == v0) && (1 == moveState)) {
        sCommPlayerManager->unk_2BA = 0;
    }
}

static void sub_02057C2C(void *data)
{
    for (int netId = 0; netId < MAX_CONNECTED_PLAYERS; netId++) {
        if (sCommPlayerManager->isActive[netId]) {
            CommPlayerLocation *location = &sCommPlayerManager->playerLocationServer[netId];

            if (sCommPlayerManager->movementChanged[netId] || sCommPlayerManager->sendAllPos) {
                sCommPlayerManager->movementChanged[netId] = 0;
                CommPlayer_SendPosNetId(netId, location);
            }
        }
    }

    sCommPlayerManager->sendAllPos = FALSE;
}

u32 CommPlayer_Size(void)
{
    return sizeof(CommPlayerManager);
}

static void CommPlayer_Add(u8 netId)
{
    PlayerAvatar *playerAvatar;

    if (sCommPlayerManager->playerAvatar[netId] != NULL) {
        return;
    }

    if (sCommPlayerManager->isResetting) {
        return;
    }

    TrainerInfo *trainerInfo = CommInfo_TrainerInfo(netId);

    if (trainerInfo) {
        if (!sCommPlayerManager->isUnderground && netId != CommSys_CurNetId()) {
            MapObject *obj = MapObjMan_LocalMapObjByIndex(sCommPlayerManager->fieldSystem->mapObjMan, 0xff + netId + 1);

            if (obj != NULL) {
                MapObject_Delete(obj);
            }
        }

        int version = 0;

        if (0 == TrainerInfo_GameCode(trainerInfo)) {
            version = 1;
        }

        playerAvatar = PlayerAvatar_Init(sCommPlayerManager->fieldSystem->mapObjMan, sCommPlayerManager->playerLocation[netId].x, sCommPlayerManager->playerLocation[netId].z, sCommPlayerManager->playerLocation[netId].dir, 0x0, TrainerInfo_Gender(trainerInfo), version, NULL);

        GF_ASSERT(playerAvatar != NULL);
        sCommPlayerManager->playerAvatar[netId] = playerAvatar;

        MapObject_SetLocalID(Player_MapObject(playerAvatar), 0xff + netId + 1);

        if (sCommPlayerManager->isUnderground) {
            UndergroundMan_SetReturnLog(netId);
        }

        if (sCommPlayerManager->isUnderground && !sCommPlayerManager->isActive[netId]) {
            if (!sCommPlayerManager->isResetting) {
                ov5_021F5634(sCommPlayerManager->fieldSystem, sCommPlayerManager->playerLocation[netId].x, 0, sCommPlayerManager->playerLocation[netId].z);
            }

            sCommPlayerManager->isActive[netId] = TRUE;
        } else if (!sCommPlayerManager->isUnderground) {
            sCommPlayerManager->isActive[netId] = TRUE;
        }
    }
}

void CommPlayer_Destroy(u8 netId, BOOL param1, BOOL param2)
{
    if (sCommPlayerManager == NULL) {
        return;
    }

    MI_CpuClear8(sCommPlayerManager->unk_5A, MAX_CONNECTED_PLAYERS);

    if (sCommPlayerManager->isUnderground) {
        ov23_0224AF4C(netId);
    }

    if (sCommPlayerManager->playerAvatar[netId] != NULL) {
        if (sCommPlayerManager->fieldSystem->playerAvatar != sCommPlayerManager->playerAvatar[netId]) {
            if (sCommPlayerManager->isUnderground || param2) {
                Player_DeleteAll(sCommPlayerManager->playerAvatar[netId]);
            } else {
                Player_Delete(sCommPlayerManager->playerAvatar[netId]);
            }
        }

        sCommPlayerManager->playerAvatar[netId] = NULL;
    }

    if ((sCommPlayerManager->isActive[netId]) && (!param1)) {
        sCommPlayerManager->isActive[netId] = 0;
    }

    sCommPlayerManager->movementChanged[netId] = 1;

    if (!param1) {
        sCommPlayerManager->unk_FA[netId] = 0;

        if (sCommPlayerManager->isUnderground) {
            ov23_0224AE60(netId);
        }
    }
}

static void CommPlayer_SendMoveSpeed()
{
    u8 moveSpeed = 2;

    if (PAD_BUTTON_B & gSystem.heldKeys) {
        moveSpeed = 1;
    }

    CommSys_SetSendSpeed(moveSpeed);
}

static void Task_CommPlayerManagerRun(SysTask *task, void *data)
{
    if (CommSys_IsInitialized()) {
        CommPlayer_SendMoveSpeed();

        if (CommSys_CurNetId() == 0) {
            sub_02057C2C(data);
            CommPlayer_SendDataTask(data);

            if (sCommPlayerManager->unk_04) {
                ov23_02249954(sCommPlayerManager->unk_04);
            }
        } else {
            CommPlayer_SendDataTask(data);
        }

        sub_02057EF8(data);
    }

    for (int netId = 0; netId < MAX_CONNECTED_PLAYERS; netId++) {
        if (sCommPlayerManager->isUnderground) {
            if (CommSys_CurNetId() == 0) {
                if (NULL == CommInfo_TrainerInfo(netId)) {
                    ov23_0224B5CC(netId);
                }
            }
        }
    }
}

static void sub_02057EF8(void *unused)
{
    for (int netId = 0; netId < MAX_CONNECTED_PLAYERS; netId++) {
        if (!CommSys_IsPlayerConnected(netId)) {
            if (!(CommSys_IsAlone() && (netId == 0))) {
                if ((CommSys_CurNetId() == 0) && (sCommPlayerManager->isUnderground)) {
                    Underground_SecretBaseRemovePlayer(netId);
                }
            }
        }

        if (CommSys_IsPlayerConnected(netId) || (CommSys_IsAlone() && (netId == 0))) {
            CommPlayer_MoveClient(netId);

            if (sCommPlayerManager->isUnderground) {
                ov23_0224AF7C(netId);
            }
        } else if (sCommPlayerManager->isActive[netId]) {
            if (CommSys_CurNetId() == 0 && sCommPlayerManager->isUnderground) {
                ov23_022436F0(netId);
                ov23_02241648(netId);
            }

            u8 netId_u8 = netId;
            CommPlayer_RecvDelete(0, 1, &netId_u8, sCommPlayerManager->fieldSystem);
        }
    }
}

BOOL sub_02057FAC(void)
{
    if (sCommPlayerManager != NULL) {
        return sCommPlayerManager->unk_2BC;
    }

    return FALSE;
}

void sub_02057FC4(BOOL param0)
{
    if (sCommPlayerManager != NULL) {
        if (sCommPlayerManager->unk_2BC != param0) {
            sCommPlayerManager->unk_2BC = param0;
        }

        CommSys_SendDataFixedSize(62, &sCommPlayerManager->unk_2BC);
    }
}

static void sub_02057FF0(BOOL param0)
{
    if (sCommPlayerManager != NULL) {
        if (sCommPlayerManager->unk_2BC != param0) {
            sCommPlayerManager->unk_2BC = param0;
            CommSys_SendDataFixedSize(62, &sCommPlayerManager->unk_2BC);
        }
    }
}

void sub_02058018(int netId, int param1, void *param2, void *unused)
{
    u8 *buffer = (u8 *)param2;

    if (sCommPlayerManager) {
        GF_ASSERT(param1 == 1);
        GF_ASSERT(netId < MAX_CONNECTED_PLAYERS);
        GF_ASSERT((buffer[0] == 1) || (buffer[0] == 0));

        sub_02059058(netId, buffer[0]);
    }
}

void sub_0205805C(FieldSystem *fieldSystem, BOOL param1)
{
    if (sCommPlayerManager == NULL) {
        return;
    }

    if (!sCommPlayerManager->isUnderground) {
        sub_02057FF0(param1);
        sCommPlayerManager->unk_2C1 = param1;
    }

    if (fieldSystem->playerAvatar) {
        sCommPlayerManager->playerAvatar[CommSys_CurNetId()] = fieldSystem->playerAvatar;
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

static int CommPlayer_Direction(u16 unused, u16 keys)
{
    if (keys & PAD_KEY_LEFT) {
        return 2;
    }

    if (keys & PAD_KEY_RIGHT) {
        return 3;
    }

    if (keys & PAD_KEY_UP) {
        return 0;
    }

    if (keys & PAD_KEY_DOWN) {
        return 1;
    }

    return -1;
}

BOOL CommPlayer_CheckNPCCollision(int x, int z)
{
    int npcCnt = MapHeaderData_GetNumObjectEvents(sCommPlayerManager->fieldSystem), i;
    const ObjectEvent *objEventList = MapHeaderData_GetObjectEvents(sCommPlayerManager->fieldSystem);

    for (i = 0; i < npcCnt; i++) {
        if ((objEventList[i].x == x) && (objEventList[i].z == z)) {
            return 1;
        }
    }

    return 0;
}

static BOOL CommPlayer_CheckCollision(int x, int z, int netIdTarget)
{
    if ((x != 0xffff) && (z != 0xffff)) {
        for (int netId = 0; netId < MAX_CONNECTED_PLAYERS; netId++) {
            if (netId == netIdTarget) {
                continue;
            }

            if (x == CommPlayer_GetXServer(netId) && z == CommPlayer_GetZServer(netId)) {
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

    return TerrainCollisionManager_CheckCollision(sCommPlayerManager->fieldSystem, x, z);
}

static int sub_020581CC(int param0, int param1)
{
    if (param0 < 5) {
        return 8;
    } else if (param0 < 10) {
        return 4;
    }

    return 2;
}

static int sub_020581E0(int param0)
{
    int v0[5] = { 2, 4, 8, 16, 2 };

    GF_ASSERT(param0 < 5);
    return v0[param0];
}

static void CommPlayer_Move(SysTask *unused0, void *unused1)
{
    u16 keys;
    int dir, x, z, netId, v6;
    CommPlayerLocation *playerLocation;
    UnkStruct_ov23_02249978 *v8 = NULL;

    for (netId = 0; netId < MAX_CONNECTED_PLAYERS; netId++) {
        if (sCommPlayerManager->isActive[netId] && sCommPlayerManager->unk_E2[netId] && sCommPlayerManager->unk_EA[netId]) {
            playerLocation = &sCommPlayerManager->playerLocationServer[netId];

            if (sCommPlayerManager->unk_04) {
                v8 = ov23_0224993C(sCommPlayerManager->unk_04, netId);
            }

            if (sCommPlayerManager->isUnderground) {
                if (ov23_0224C1C8(netId)) {
                    continue;
                }
            }

            if (sCommPlayerManager->moveTimerServer[netId] != 0) {
                sCommPlayerManager->moveTimerServer[netId]--;
            }

            if (sCommPlayerManager->moveTimerServer[netId] == 0) {
                if (sCommPlayerManager->isUnderground) {
                    if (ov23_0224444C(netId)) {
                        continue;
                    }

                    if (!ov23_0224ACC0(netId)) {
                        if (ov23_0224D7C8(netId)) {
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

            if (!sCommPlayerManager->unk_F2[netId]) {
                keys = sub_02035E84(netId);
            } else {
                keys = 0;
            }

            playerLocation->moveSpeed = CommSys_RecvSpeed(netId);

            if (sCommPlayerManager->moveTimerServer[netId] != 0) {
                continue;
            }

            v6 = sub_020581CC(sCommPlayerManager->unk_10A[netId], sCommPlayerManager->unk_12A[netId]);

            if (CommPlayer_MoveBlow(netId, v6)) {
                sCommPlayerManager->moveTimerServer[netId] = v6;
                sCommPlayerManager->movementChanged[netId] = 1;
                continue;
            }

            if (playerLocation->collisionFlag == 1) {
                sCommPlayerManager->movementChanged[netId] = 1;
            }

            playerLocation->collisionFlag = 0;

            if (sCommPlayerManager->unk_122[netId] == 2) {
                u8 v9 = netId;

                sCommPlayerManager->unk_122[netId] = 1;
                sub_02035B48(40, &v9);
                continue;
            }

            dir = CommPlayer_Direction(keys, keys);
            x = CommPlayer_AddXServer(netId);
            z = CommPlayer_AddZServer(netId);

            if ((x != 0xffff) && (z != 0xffff) && (dir != -1)) {
                if (playerLocation->dir != dir) {
                    playerLocation->dir = dir;
                    sCommPlayerManager->moveTimerServer[netId] = 4;
                    sCommPlayerManager->movementChanged[netId] = 1;

                    if (sCommPlayerManager->unk_122[netId] > 2) {
                        sCommPlayerManager->unk_122[netId]--;
                        continue;
                    }
                } else if (sCommPlayerManager->unk_122[netId] != 0) {
                    continue;
                } else if (sCommPlayerManager->isUnderground && (ov23_0224B8E0(netId, x, z) == 1)) {
                    continue;
                } else if (CommPlayer_CheckCollision(x, z, netId)) {
                    playerLocation->collisionFlag = 1;
                    sCommPlayerManager->movementChanged[netId] = 1;
                    sCommPlayerManager->moveTimerServer[netId] = 4;
                } else {
                    sCommPlayerManager->movementChanged[netId] = 1;
                    playerLocation->x = x;
                    playerLocation->z = z;
                    playerLocation->dir = dir;

                    sCommPlayerManager->moveTimerServer[netId] = sub_020581E0(playerLocation->moveSpeed);

                    if (sCommPlayerManager->unk_11A[netId] != 0) {
                        sCommPlayerManager->unk_11A[netId]--;

                        if (sCommPlayerManager->unk_11A[netId] == 0) {
                            u8 v10 = 1;
                            ov23_0224540C(netId, 1, &v10, NULL);
                        }
                    }
                }
            }
        }
    }
}

void CommPlayer_RecvLocation(int netId, int unused0, void *src, void *unused1)
{
    u8 *buffer = (u8 *)src;
    CommPlayerLocation *playerLocation;

    if (sCommPlayerManager == NULL) {
        return;
    }

    playerLocation = &sCommPlayerManager->playerLocationServer[netId];

    if (buffer[4] & 0x80) {
        sCommPlayerManager->sendAllPos = TRUE;
        return;
    }

    if (playerLocation->dir == -1) {
        int netId;

        for (netId = 0; netId < MAX_CONNECTED_PLAYERS; netId++) {
            sCommPlayerManager->movementChanged[netId] = 1;
        }
    }

    playerLocation->x = 0;
    playerLocation->z = 0;
    playerLocation->x += ((u32)buffer[0]) & 0xff;
    playerLocation->x += ((u32)buffer[1] << 8) & 0xff00;
    playerLocation->z += ((u32)buffer[2]) & 0xff;
    playerLocation->z += ((u32)buffer[3] << 8) & 0xff00;
    playerLocation->dir = buffer[4] & 0xf;

    sCommPlayerManager->isActive[netId] = 1;
    sCommPlayerManager->movementChanged[netId] = 1;

    if (TerrainCollisionManager_CheckCollision(sCommPlayerManager->fieldSystem, playerLocation->x, playerLocation->z)) {
        GF_ASSERT(0);
    }
}

void CommPlayer_RecvDelete(int unused0, int unused1, void *src, void *unused2)
{
    u8 *buffer = (u8 *)src;
    u8 netId = buffer[0];

    if (sCommPlayerManager == NULL) {
        return;
    }

    if (netId == CommSys_CurNetId()) {
        return;
    }

    if (sCommPlayerManager->isUnderground) {
        ov23_022430B8(netId);

        if (!sCommPlayerManager->isResetting) {
            ov5_021F5634(sCommPlayerManager->fieldSystem, sCommPlayerManager->playerLocation[netId].x, 0, sCommPlayerManager->playerLocation[netId].z);
        }
    }

    CommPlayer_Destroy(netId, 0, 0);
    CommInfo_InitPlayer(netId);
}

int CommPacketSizeOf_RecvLocation(void)
{
    return COMM_PACKET_SIZE_LOCATION;
}

void CommPlayer_RecvLocationAndInit(int netId, int size, void *src, void *unused)
{
    u8 *buffer = (u8 *)src;
    CommPlayerLocation *playerLocation;
    int netJd = buffer[0] & 0xf;

    if (sCommPlayerManager == NULL) {
        return;
    }

    if ((netId == CommSys_CurNetId()) && sCommPlayerManager->unk_2C3) {
        return;
    }

    playerLocation = &sCommPlayerManager->playerLocation[netJd];

    if (buffer[2] & 0x80) {
        playerLocation->collisionFlag = 1;
    } else {
        playerLocation->collisionFlag = 0;
    }

    playerLocation->x = 0;
    playerLocation->z = 0;
    playerLocation->x += ((u32)buffer[1]) & 0xff;
    playerLocation->x += ((u32)buffer[2] << 8) & 0x100;
    playerLocation->z += ((u32)buffer[3]) & 0xff;
    playerLocation->z += ((u32)buffer[2] << 7) & 0x100;
    playerLocation->dir = ((buffer[0] >> 4) & 0x3);
    playerLocation->moveSpeed = ((buffer[0] >> 6) & 0x3);

    CommPlayer_Add(netJd);
}

static void sub_02058644(int netId)
{
    UndergroundData *underground = sub_020298B0(FieldSystem_GetSaveData(sCommPlayerManager->fieldSystem));
    SaveData_SecretBaseRecord(FieldSystem_GetSaveData(sCommPlayerManager->fieldSystem));

    if (sCommPlayerManager->isUnderground) {
        if (netId == CommSys_CurNetId()) {
            sub_0202929C(underground);

            if (sub_020292B4(underground) == 50) {
                GameRecords_IncrementTrainerScore(SaveData_GetGameRecordsPtr(sCommPlayerManager->fieldSystem->saveData), TRAINER_SCORE_EVENT_UNK_37);
            }
        }
    }
}

static BOOL CommPlayer_BlowAnimation(int netId, int param1, int unused, int animSpeed)
{
    MapObject *obj;
    u8 walkAnimationCode[] = {
        0x14, 0x15, 0x16, 0x17, 0x10, 0x11, 0x12, 0x13, 0xc, 0xd, 0xe, 0xf
    };

    if ((sCommPlayerManager->blowDir[netId] == -1) || (sCommPlayerManager->playerAvatar[netId] == NULL)) {
        return FALSE;
    }

    if (param1 == 0) {
        return TRUE;
    }

    obj = Player_MapObject(sCommPlayerManager->playerAvatar[netId]);

    if (PlayerAvatar_GetDir(sCommPlayerManager->playerAvatar[netId]) != CommPlayer_GetOppositeDir(sCommPlayerManager->blowDir[netId])) {
        MapObject_SetStatusFlagOff(obj, MAP_OBJ_STATUS_LOCK_DIR);
        Player_SetDir(sCommPlayerManager->playerAvatar[netId], CommPlayer_GetOppositeDir(sCommPlayerManager->blowDir[netId]));
        MapObject_SetStatusFlagOn(obj, MAP_OBJ_STATUS_LOCK_DIR);
    }

    LocalMapObj_CheckAnimationFinished(obj);

    if (LocalMapObj_IsAnimationSet(obj) == 1) {
        sub_02058644(netId);

        switch (animSpeed) {
        case 0:
            LocalMapObj_SetAnimationCode(obj, walkAnimationCode[sCommPlayerManager->blowDir[netId]]);
            break;
        case 1:
            LocalMapObj_SetAnimationCode(obj, walkAnimationCode[sCommPlayerManager->blowDir[netId] + 4]);
            break;
        case 2:
            LocalMapObj_SetAnimationCode(obj, walkAnimationCode[sCommPlayerManager->blowDir[netId] + 8]);
            break;
        }
    }

    return TRUE;
}

static void CommPlayer_MoveClient(int netId)
{
    u16 pad = 0;
    CommPlayerLocation *playerLocation = &sCommPlayerManager->playerLocation[netId];
    PlayerAvatar *playerAvatar;
    int moveSpeed;

    if (sCommPlayerManager->moveTimer[netId] != 0) {
        sCommPlayerManager->moveTimer[netId]--;
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
        int dx = Player_GetXPos(playerAvatar) - playerLocation->x;
        int dy = Player_GetZPos(playerAvatar) - playerLocation->z;
        int dir = PlayerAvatar_GetDir(playerAvatar);

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
        }

        if (CommPlayer_BlowAnimation(netId, pad, pad, playerLocation->moveSpeed)) {
            return;
        }

        u32 animCode = 0xff;
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
        } else if (!CommSys_IsSendingMovementData() && sCommPlayerManager->isUnderground && (netId == CommSys_CurNetId())) {
            animCode = sub_0206147C(playerAvatar, pad, pad, v10, 1, 0);
        } else if (((pad & ~PAD_BUTTON_B) == 0) && (playerLocation->collisionFlag)) {
            moveSpeed = 3;

            switch (playerLocation->dir) {
            case DIR_NORTH:
                animCode = 0x1c;
                break;
            case DIR_SOUTH:
            default:
                animCode = 0x1d;
                break;
            case DIR_WEST:
                animCode = 0x1e;
                break;
            case DIR_EAST:
                animCode = 0x1f;
                break;
            }
        } else if (((pad & ~PAD_BUTTON_B) == 0) && (playerLocation->dir != dir)) {
            animCode = sub_02065838(playerLocation->dir, 0x24);
        } else {
            animCode = sub_0206147C(playerAvatar, pad, pad, v10, 1, 0);
        }

        if (sub_02061544(playerAvatar) == 0) {
            if (sub_020613AC(playerAvatar) == 0) {
                return;
            }
        }

        if (animCode != 0xff) {
            PlayerAvatar_SetAnimationCode(playerAvatar, animCode, 1);

            if (pad & ~PAD_BUTTON_B) {
                if (sCommPlayerManager->moveTimer[netId] == 0) {
                    sCommPlayerManager->moveTimer[netId] = sub_020581E0(moveSpeed);
                }

                if (sCommPlayerManager->moveTimer[netId] != 0) {
                    sCommPlayerManager->moveTimer[netId]--;
                }

                sub_02058644(netId);
            }
        }
    }
}

static BOOL CommPlayer_MoveBlow(int netId, int param1)
{
    int x, z;
    CommPlayerLocation *playerLocation;

    if (sCommPlayerManager->unk_10A[netId] == 0) {
        return 0;
    }

    if (sCommPlayerManager->unk_10A[netId] == 0xff) {
        return 1;
    }

    sCommPlayerManager->unk_10A[netId]--;

    if (1 == param1) {
        return 1;
    }

    x = CommPlayer_GetXServer(netId);
    z = CommPlayer_GetZServer(netId);
    x += MapObject_GetDxFromDir(sCommPlayerManager->unk_112[netId]);
    z += MapObject_GetDzFromDir(sCommPlayerManager->unk_112[netId]);

    if (sCommPlayerManager->unk_10A[netId] != 0) {
        if (CommPlayer_CheckCollision(x, z, netId)) {
            sCommPlayerManager->unk_10A[netId] = 1;
        }
    }

    if (sCommPlayerManager->unk_10A[netId] == 1) {
        return 1;
    } else if (sCommPlayerManager->unk_10A[netId] == 0) {
        u8 data = 1;

        ov23_0224540C(netId, 1, &data, NULL);
        return 1;
    }

    playerLocation = &sCommPlayerManager->playerLocationServer[netId];
    playerLocation->x = x;
    playerLocation->z = z;

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

void sub_02058B0C(int netId, int param1, BOOL param2)
{
    CommPlayerLocation *playerLocation = &sCommPlayerManager->playerLocationServer[netId];

    playerLocation->dir = CommPlayer_GetOppositeDir(param1);
    sCommPlayerManager->unk_112[netId] = param1;

    if (param2) {
        sCommPlayerManager->unk_12A[netId] = 1;
        sCommPlayerManager->unk_10A[netId] = 45;
    } else {
        sCommPlayerManager->unk_12A[netId] = 0;
        sCommPlayerManager->unk_10A[netId] = 27;
    }

    sCommPlayerManager->movementChanged[netId] = 1;
}

void sub_02058B7C(int netId)
{
    sCommPlayerManager->unk_10A[netId] = 0;
}

void sub_02058B94(int netId)
{
    sCommPlayerManager->unk_10A[netId] = 0xff;
}

void CommPlayer_StartBlowAnimation(int netId, int param1, BOOL unused)
{
    MapObject *obj;

    if (sCommPlayerManager->playerAvatar[netId] == NULL) {
        return;
    }

    obj = Player_MapObject(sCommPlayerManager->playerAvatar[netId]);

    MapObject_SetStatusFlagOn(obj, MAP_OBJ_STATUS_LOCK_DIR);
    MapObject_SetStatusFlagOn(obj, MAP_OBJ_STATUS_PAUSE_ANIMATION);

    sCommPlayerManager->blowDir[netId] = param1;
}

void CommPlayer_StopBlowAnimation(int netId)
{
    MapObject *obj;

    if (sCommPlayerManager->playerAvatar[netId] == NULL) {
        return;
    }

    if (sCommPlayerManager->blowDir[netId] != -1) {
        obj = Player_MapObject(sCommPlayerManager->playerAvatar[netId]);

        sub_020656AC(obj);
        MapObject_SetStatusFlagOff(obj, MAP_OBJ_STATUS_LOCK_DIR);
        MapObject_SetStatusFlagOff(obj, MAP_OBJ_STATUS_PAUSE_ANIMATION);

        sCommPlayerManager->blowDir[netId] = -1;
    }
}

int CommPacketSizeOf_RecvLocationAndInit(void)
{
    return COMM_PACKET_SIZE_POS_NETID;
}

BOOL sub_02058C40(void)
{
    if (CommSys_IsAlone()) {
        return TRUE;
    }

    if (!sCommPlayerManager) {
        return FALSE;
    }

    if (!CommSys_IsPlayerConnected(CommSys_CurNetId())) {
        return FALSE;
    }

    if (sCommPlayerManager->isUnderground && !ov23_02249BD4()) {
        return FALSE;
    }

    return TRUE;
}

BOOL CommPlayer_IsActive(int netId)
{
    return sCommPlayerManager->isActive[netId];
}

int CommPlayer_XPos(int netId)
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

int CommPlayer_ZPos(int netId)
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

int sub_02058D48(int netId)
{
    if (!sCommPlayerManager) {
        return 0xffff;
    }

    return sCommPlayerManager->playerLocation[netId].x;
}

int sub_02058D68(int netId)
{
    if (!sCommPlayerManager) {
        return 0xffff;
    }

    return sCommPlayerManager->playerLocation[netId].z;
}

int sub_02058D88(int netId)
{
    if (CommPlayer_XPos(netId) == 0xffff) {
        return 0xffff;
    }

    return sCommPlayerManager->playerLocation[netId].x + MapObject_GetDxFromDir(sCommPlayerManager->playerLocation[netId].dir);
}

int sub_02058DC0(int netId)
{
    if (CommPlayer_ZPos(netId) == 0xffff) {
        return 0xffff;
    }

    return sCommPlayerManager->playerLocation[netId].z + MapObject_GetDzFromDir(sCommPlayerManager->playerLocation[netId].dir);
}

int CommPlayer_GetXServer(int netId)
{
    if (!sCommPlayerManager) {
        return 0xffff;
    } else if (CommSys_CurNetId() == netId) {
        return sCommPlayerManager->playerLocationServer[netId].x;
    } else if (!sub_02058C40() || !sCommPlayerManager->isActive[netId]) {
        return 0xffff;
    }

    return sCommPlayerManager->playerLocationServer[netId].x;
}

int CommPlayer_GetZServer(int netId)
{
    if (!sCommPlayerManager) {
        return 0xffff;
    } else if (CommSys_CurNetId() == netId) {
        return sCommPlayerManager->playerLocationServer[netId].z;
    } else if (!sub_02058C40() || !sCommPlayerManager->isActive[netId]) {
        return 0xffff;
    }

    return sCommPlayerManager->playerLocationServer[netId].z;
}

int sub_02058EA0(int netId)
{
    if (!sCommPlayerManager) {
        return 0xffff;
    }

    return sCommPlayerManager->playerLocationServer[netId].x;
}

int sub_02058EC0(int netId)
{
    if (!sCommPlayerManager) {
        return 0xffff;
    }

    return sCommPlayerManager->playerLocationServer[netId].z;
}

int CommPlayer_AddXServer(int netId)
{
    if (CommPlayer_GetXServer(netId) == 0xffff) {
        return 0xffff;
    }

    return sCommPlayerManager->playerLocationServer[netId].x + MapObject_GetDxFromDir(sCommPlayerManager->playerLocationServer[netId].dir);
}

int CommPlayer_AddZServer(int netId)
{
    if (CommPlayer_GetZServer(netId) == 0xffff) {
        return 0xffff;
    }

    return sCommPlayerManager->playerLocationServer[netId].z + MapObject_GetDzFromDir(sCommPlayerManager->playerLocationServer[netId].dir);
}

int CommPlayer_Dir(int netId)
{
    if (!sub_02058C40() || !sCommPlayerManager->isActive[netId]) {
        return -1;
    }

    return sCommPlayerManager->playerLocation[netId].dir;
}

int CommPlayer_DirServer(int netId)
{
    if (!sub_02058C40() || !sCommPlayerManager->isActive[netId]) {
        return -1;
    }

    return sCommPlayerManager->playerLocationServer[netId].dir;
}

void CommPlayer_LookTowardsServer(int netIdTarget, int netIdSet)
{
    int dir = CommPlayer_GetOppositeDir(sCommPlayerManager->playerLocationServer[netIdTarget].dir);

    sCommPlayerManager->playerLocationServer[netIdSet].dir = dir;
    sCommPlayerManager->movementChanged[netIdSet] = TRUE;
}

void CommPlayer_LookTowards(int netIdTarget, int netIdSet)
{
    int dir = CommPlayer_GetOppositeDir(sCommPlayerManager->playerLocation[netIdTarget].dir);
    sCommPlayerManager->playerLocation[netIdSet].dir = dir;
}

int sub_0205900C(int xPos, int yPos)
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

void sub_02059058(int netId, BOOL param1)
{
    if (sCommPlayerManager->unk_E2[netId] != param1) {
        sCommPlayerManager->unk_E2[netId] = param1;
        sCommPlayerManager->playerLocationServer[netId].collisionFlag = 0;
        sCommPlayerManager->movementChanged[netId] = 1;
        sCommPlayerManager->playerLocationServer[netId].moveSpeed = 2;
    }
}

BOOL sub_02059094(int netId)
{
    if (sCommPlayerManager->unk_2C2) {
        return 0;
    }

    if (!sCommPlayerManager->unk_EA[netId]) {
        return 0;
    }

    return sCommPlayerManager->unk_E2[netId];
}

BOOL sub_020590C4(void)
{
    UnkStruct_020590C4 batleGrid1v1[] = {
        { 4, 7 },
        { 11, 7 }
    };
    UnkStruct_020590C4 battleGrid2v2[] = {
        { 4, 6 },
        { 11, 6 },
        { 4, 8 },
        { 11, 8 }
    };
    int connectedPlayers = CommType_MaxPlayers(sub_0203895C());
    int netId, netJd, playerCnt = 0, v6[4], v7;
    int v8 = 0;
    UnkStruct_020590C4 *v9;

    if (connectedPlayers == 2) {
        v9 = batleGrid1v1;
    } else {
        v9 = battleGrid2v2;
    }

    for (netId = 0; netId < connectedPlayers; netId++) {
        for (netJd = 0; netJd < connectedPlayers; netJd++) {
            if ((CommPlayer_XPos(netJd) == v9[netId].unk_00) && (CommPlayer_ZPos(netJd) == v9[netId].unk_02)) {
                playerCnt++;
                v6[netJd] = netId;

                if (netJd == CommSys_CurNetId()) {
                    v8 = 1;
                }
                break;
            }
        }
    }

    if (playerCnt == connectedPlayers) {
        for (netId = 0; netId < connectedPlayers; netId++) {
            sub_020362DC(v6[netId], netId);
        }
    }

    return v8;
}

void sub_02059180(int netId, int unused0, void *src, void *unused3)
{
    u8 *buffer = src;

    if (buffer[0] == 3) {
        sCommPlayerManager->unk_F2[netId] = 0;
    } else {
        sCommPlayerManager->unk_2B4[netId] = buffer[0];
    }
}

static UnkStruct_020590C4 Unk_02100B6C[] = {
    { 0x4, 0x7 },
    { 0xB, 0x7 }
};

static UnkStruct_020590C4 Unk_02100B74[] = {
    { 0x4, 0x6 },
    { 0xB, 0x6 },
    { 0x4, 0x8 },
    { 0xB, 0x8 }
};

static void sub_020591A8(void)
{
    int connectedPlayers = CommType_MaxPlayers(sub_0203895C());
    int netJd = 0;
    UnkStruct_020590C4 *v6;
    u8 netId;

    if (connectedPlayers == 2) {
        v6 = Unk_02100B6C;
    } else {
        v6 = Unk_02100B74;
    }

    for (netId = 0; netId < connectedPlayers; netId++) {
        if (!sCommPlayerManager->unk_2B4[netId]) {
            continue;
        }

        for (netJd = 0; netJd < connectedPlayers; netJd++) {
            if ((CommPlayer_GetXServer(netId) == v6[netJd].unk_00) && (CommPlayer_GetZServer(netId) == v6[netJd].unk_02)) {
                sCommPlayerManager->unk_F2[netId] = 1;
                sub_02035B48(95, &netId);
            }
        }
    }
}

void CommPlayer_SetBattleDir(void)
{
    int netId = CommSys_CurNetId();
    int code;

    if (CommPlayer_XPos(netId) > 8) {
        CommPlayer_SetDir(2);
        code = sub_02065838(2, 0x24);
    } else {
        CommPlayer_SetDir(3);
        code = sub_02065838(3, 0x24);
    }

    PlayerAvatar_SetAnimationCode(sCommPlayerManager->playerAvatar[netId], code, 1);
    CommPlayerMan_ForceDir();
}

BOOL sub_0205928C(void)
{
    int connectedPlayers = CommType_MaxPlayers(sub_0203895C());
    int netId = 0, dir;

    for (netId = 0; netId < connectedPlayers; netId++) {
        if ((sCommPlayerManager->isActive[netId] == 0) || (sCommPlayerManager->movementChanged[netId] == 1)) {
            return 0;
        }
    }

    for (netId = 0; netId < connectedPlayers; netId++) {
        CommPlayerLocation *playerLocation = &sCommPlayerManager->playerLocationServer[netId];

        dir = CommPlayer_GetOppositeDir(playerLocation->dir);
        playerLocation->x += MapObject_GetDxFromDir(dir);
        playerLocation->z += MapObject_GetDzFromDir(dir);
        playerLocation->moveSpeed = 2;

        sCommPlayerManager->movementChanged[netId] = 1;
        sub_02059058(netId, 1);
    }

    return 1;
}

int CommPlayer_GetOppositeDir(int dir)
{
    if (dir == FACE_UP) {
        return FACE_DOWN;
    } else if (dir == FACE_DOWN) {
        return FACE_UP;
    } else if (dir == FACE_LEFT) {
        return FACE_RIGHT;
    } else if (dir == FACE_RIGHT) {
        return FACE_LEFT;
    }

    GF_ASSERT(FALSE);
    return FACE_LEFT;
}

void sub_02059354(int netId, int param1)
{
    sCommPlayerManager->unk_11A[netId] = param1;
    sCommPlayerManager->moveTimerServer[netId] = 15;
}

void sub_02059378(int netId)
{
    sCommPlayerManager->unk_11A[netId] = 0;
}

void sub_02059390(int netId, int param1)
{
    sCommPlayerManager->unk_122[netId] = param1;
    sCommPlayerManager->moveTimerServer[netId] = 15;
}

void sub_020593B4(int netId)
{
    sCommPlayerManager->unk_122[netId] = 0;
}

int CommPlayer_GetMovementTimer(int netId)
{
    return sCommPlayerManager->moveTimer[netId];
}

int CommPlayer_GetMovementTimerServer(int netId)
{
    return sCommPlayerManager->moveTimerServer[netId];
}

void CommPlayer_SetDir(int dir)
{
    Player_SetDir(sCommPlayerManager->fieldSystem->playerAvatar, dir);
    sCommPlayerManager->playerLocation[CommSys_CurNetId()].dir = dir;
    CommPlayer_SendPos(FALSE);
}

void CommPlayer_SetDirClient(int netId, int dir)
{
    sCommPlayerManager->playerLocation[netId].dir = dir;
    Player_SetDir(sCommPlayerManager->playerAvatar[netId], dir);
}

int CommPlayer_DirClient(int netId)
{
    if (!sCommPlayerManager->playerAvatar[netId]) {
        return -1;
    }

    return PlayerAvatar_GetDir(sCommPlayerManager->playerAvatar[netId]);
}

void sub_02059464(int param0)
{
    if (0 != param0) {
        sCommPlayerManager->unk_00 |= param0;
    }

    FieldSystem_PauseProcessing();
    sCommPlayerManager->unk_2BC = 0;
}

void sub_0205948C(int param0)
{
    if (0 != param0) {
        sCommPlayerManager->unk_00 &= ~(param0);
    }

    if (sCommPlayerManager->unk_00 == 0x10) {
        u8 data = 1;
        CommSys_SendDataFixedSize(62, &data);
    }

    if (sCommPlayerManager->unk_00 == 0) {
        if (0x10 != param0) {
            FieldSystem_ResumeProcessing();
            sub_02057FC4(1);
        } else {
            FieldSystem_ResumeProcessing();
            sCommPlayerManager->unk_2BC = 1;
        }
    }
}

void sub_020594EC(void)
{
    sCommPlayerManager->unk_00 = 0;
}

void sub_020594FC(void)
{
    FieldSystem_PauseProcessing();
    sCommPlayerManager->unk_2BC = 0;
}

void sub_02059514(void)
{
    FieldSystem_ResumeProcessing();
    sub_02057FC4(1);
}

void sub_02059524(void)
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

void sub_02059570(void)
{
    if (sCommPlayerManager->unk_2BF == 0) {
        if (sCommPlayerManager->isUnderground) {
            if (!ov23_02243298(CommSys_CurNetId())) {
                sub_02057FC4(0);
            }
        }
    }
}

void CommPlayerMan_ForcePos(void)
{
    int netId, x, z, dir;
    MapObject *obj;

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

        obj = Player_MapObject(sCommPlayerManager->playerAvatar[netId]);
        x = sCommPlayerManager->playerLocation[netId].x;
        z = sCommPlayerManager->playerLocation[netId].z;
        dir = sCommPlayerManager->playerLocation[netId].dir;

        MapObject_SetX(obj, x);
        MapObject_SetZ(obj, z);
        MapObject_SetPosDirFromCoords(obj, x, 0, z, dir);
    }
}

void CommPlayerMan_ForceDir(void)
{
    sCommPlayerManager->forceDirTimer = 8;
}

void sub_02059638(BOOL param0)
{
    sCommPlayerManager->unk_2C3 = param0;
}
