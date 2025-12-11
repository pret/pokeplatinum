#include "communication_information.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "constants/heap.h"

#include "struct_decls/struct_0202B370_decl.h"
#include "struct_defs/wi_fi_history.h"

#include "battle_regulation.h"
#include "communication_system.h"
#include "heap.h"
#include "record_mixed_rng.h"
#include "save_player.h"
#include "savedata.h"
#include "trainer_info.h"
#include "unk_0202854C.h"
#include "unk_0202ACE0.h"
#include "unk_0202C858.h"
#include "unk_02033200.h"
#include "unk_0203909C.h"

typedef struct CommPlayerInfo {
    u8 regulationBuffer[32];
    u8 trainerInfoBuffer[32];
    DWCFriendData friendData;
    u16 unk_4C[8];
    u8 macAddress[6];
    u8 netId;
    u8 country;
    u8 region;
    u8 unk_65;
} CommPlayerInfo;

typedef struct CommPlayerRecord {
    u16 win;
    u16 lose;
    u16 trades;
} CommPlayerRecord;

enum InfoState {
    INFO_STATE_EMPTY = 0,
    INFO_STATE_BEGIN_RECIEVE,
    INFO_STATE_RECIEVE,
    INFO_STATE_END_RECIEVE,
    INFO_STATE_MAX
};

typedef struct CommunicationInformation {
    TrainerInfo *personalTrainerInfo;
    const BattleRegulation *regulation;
    SaveData *saveData;
    CommPlayerInfo playerInfo[MAX_CONNECTED_PLAYERS];
    TrainerInfo *trainerInfo[MAX_CONNECTED_PLAYERS];
    CommPlayerRecord playerRecord[MAX_CONNECTED_PLAYERS];
    u8 infoState[MAX_CONNECTED_PLAYERS];
    u8 dataFinishedReading;
    u8 dataRecvFlag;
    u8 curNetId;
} CommunicationInformation;

static CommunicationInformation *sCommInfo;

void CommInfo_Init(SaveData *saveData, const BattleRegulation *regulation)
{
    int netId;
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(saveData);

    if (sCommInfo) {
        return;
    }

    sCommInfo = Heap_Alloc(HEAP_ID_COMMUNICATION, sizeof(CommunicationInformation));
    MI_CpuClear8(sCommInfo, sizeof(CommunicationInformation));

    for (netId = 0; netId < MAX_CONNECTED_PLAYERS; netId++) {
        sCommInfo->trainerInfo[netId] = (TrainerInfo *)&sCommInfo->playerInfo[netId].trainerInfoBuffer[0];
        CommInfo_InitPlayer(netId);
    }

    sCommInfo->dataFinishedReading = FALSE;
    sCommInfo->dataRecvFlag = FALSE;
    sCommInfo->curNetId = 0;
    sCommInfo->saveData = saveData;
    sCommInfo->regulation = regulation;

    TrainerInfo_Copy(trainerInfo, sCommInfo->trainerInfo[0]);
}

void CommInfo_Delete(void)
{
    int netId;

    if (sCommInfo) {
        for (netId = 0; netId < MAX_CONNECTED_PLAYERS; netId++) {
            sCommInfo->trainerInfo[netId] = NULL;
        }

        if (sCommInfo) {
            Heap_Free(sCommInfo);
        }

        sCommInfo = NULL;
    }
}

BOOL CommInfo_IsInitialized(void)
{
    return sCommInfo != NULL;
}

void CommInfo_SendBattleRegulation(void)
{
    u16 netId = CommSys_CurNetId();
    TrainerInfo *trainerInfo;
    const u16 *v2;
    RecordMixedRNG *v3 = SaveData_GetRecordMixedRNG(sCommInfo->saveData);
    WiFiList *v4 = SaveData_GetWiFiList(sCommInfo->saveData);
    WiFiHistory *wiFiHistory = SaveData_WiFiHistory(sCommInfo->saveData);

    if (sCommInfo->personalTrainerInfo) {
        trainerInfo = sCommInfo->personalTrainerInfo;
    } else {
        trainerInfo = SaveData_GetTrainerInfo(sCommInfo->saveData);
    }

    TrainerInfo_Copy(trainerInfo, sCommInfo->trainerInfo[netId]);
    OS_GetMacAddress(&sCommInfo->playerInfo[netId].macAddress[0]);

    v2 = RecordMixedRNG_GetEntryName(v3, 1, 0);

    MI_CpuCopy8(v2, sCommInfo->playerInfo[netId].unk_4C, sizeof(sCommInfo->playerInfo[netId].unk_4C));

    sCommInfo->playerInfo[netId].country = WiFiHistory_GetCountry(wiFiHistory);
    sCommInfo->playerInfo[netId].region = WiFiHistory_GetRegion(wiFiHistory);
    sCommInfo->playerInfo[netId].unk_65 = sub_02028810(sCommInfo->saveData);
    sCommInfo->playerInfo[netId].unk_65 = 1 - sCommInfo->playerInfo[netId].unk_65;

    DWC_CreateExchangeToken(WiFiList_GetUserData(v4), &sCommInfo->playerInfo[netId].friendData);
    MI_CpuClear8(sCommInfo->playerInfo[netId].regulationBuffer, 32);

    if (sCommInfo->regulation) {
        BattleRegulation_Copy(sCommInfo->regulation, (BattleRegulation *)sCommInfo->playerInfo[netId].regulationBuffer);
    }

    CommSys_SendData(3, &sCommInfo->playerInfo[netId], sizeof(CommPlayerInfo));
}

int CommPlayerInfo_Size(void)
{
    return sizeof(CommPlayerInfo);
}

void CommunicatitonInformaion_FinishReading(int unused0, int unused1, void *unused2, void *unused3)
{
    if (sCommInfo) {
        sCommInfo->dataFinishedReading = TRUE;
    } else {
        (void)0;
    }
}

BOOL CommInfo_IsDataFinishedReading(void)
{
    return sCommInfo->dataFinishedReading;
}

void CommInfo_RecvPlayerDataArray(int netId, int param1, void *src, void *unused)
{
    CommPlayerInfo *playerInfo = (CommPlayerInfo *)src;

    if (!sCommInfo) {
        return;
    }

    if (!CommSys_IsPlayerConnected(netId)) {
        return;
    }

    MI_CpuCopy8(src, &sCommInfo->playerInfo[playerInfo->netId], sizeof(CommPlayerInfo));
    sCommInfo->curNetId = playerInfo->netId;

    if (TrainerInfo_HasNoName(sCommInfo->trainerInfo[sCommInfo->curNetId]) == 1) {
        return;
    }

    if (sCommInfo->infoState[sCommInfo->curNetId] < INFO_STATE_RECIEVE) {
        sCommInfo->infoState[sCommInfo->curNetId] = INFO_STATE_BEGIN_RECIEVE;

        if (CommSys_CurNetId() == sCommInfo->curNetId) {
            sCommInfo->infoState[sCommInfo->curNetId] = INFO_STATE_END_RECIEVE;
        }
    }
}

void CommInfo_RecvPlayerData(int netId, int param1, void *src, void *param3)
{
    if (!sCommInfo) {
        return;
    }

    MI_CpuCopy8(src, &sCommInfo->playerInfo[netId], sizeof(CommPlayerInfo));
    sub_02033FDC(&sCommInfo->playerInfo[netId].macAddress[0], netId);

    sCommInfo->infoState[netId] = INFO_STATE_BEGIN_RECIEVE;

    if (CommSys_CurNetId() == netId) {
        sCommInfo->infoState[netId] = INFO_STATE_END_RECIEVE;
    } else {
        sCommInfo->dataRecvFlag = TRUE;
    }
}

BOOL CommInfo_ServerSendArray(void)
{
    int netId;

    if (!sCommInfo->dataRecvFlag) {
        return FALSE;
    }

    if (CommSys_CurNetId() != 0) {
        return FALSE;
    }

    if (!sub_02036254(5)) {
        for (netId = 0; netId < MAX_CONNECTED_PLAYERS; netId++) {
            if (sCommInfo->infoState[netId] != INFO_STATE_EMPTY) {
                sCommInfo->playerInfo[netId].netId = netId;
                MI_CpuCopy8(sCommInfo->trainerInfo[netId], sCommInfo->playerInfo[netId].trainerInfoBuffer, TrainerInfo_Size());
                CommSys_WriteToQueueServer(4, &sCommInfo->playerInfo[netId], sizeof(CommPlayerInfo));
            }
        }

        CommSys_WriteToQueueServer(5, NULL, 0);
        sCommInfo->dataRecvFlag = FALSE;
        return TRUE;
    }

    return FALSE;
}

BOOL CommInfo_IsReceivingData(void)
{
    return sCommInfo->dataRecvFlag;
}

void CommInfo_InitPlayer(int netId)
{
    TrainerInfo_Init(sCommInfo->trainerInfo[netId]);
    sCommInfo->infoState[netId] = INFO_STATE_EMPTY;
}

BOOL sub_02032DC4(int netId)
{
    return sCommInfo->infoState[netId] == INFO_STATE_BEGIN_RECIEVE;
}

BOOL sub_02032DE0(int netId)
{
    return sCommInfo->infoState[netId] == INFO_STATE_RECIEVE || sCommInfo->infoState[netId] == INFO_STATE_BEGIN_RECIEVE;
}

BOOL sub_02032E00(int netId)
{
    return sCommInfo->infoState[netId] == INFO_STATE_RECIEVE;
}

void sub_02032E1C(int netId)
{
    sCommInfo->infoState[netId] = INFO_STATE_RECIEVE;
}

void CommInfo_SetReceiveEnd(int netId)
{
    sCommInfo->infoState[netId] = INFO_STATE_END_RECIEVE;
}

int CommInfo_NewNetworkId(void)
{
    int netId;

    for (netId = 0; netId < MAX_CONNECTED_PLAYERS; netId++) {
        if (sCommInfo->infoState[netId] == INFO_STATE_BEGIN_RECIEVE) {
            return netId;
        }
    }

    return 0xff;
}

int CommInfo_CountReceived(void)
{
    int netId;
    int cnt = 0;

    for (netId = 0; netId < MAX_CONNECTED_PLAYERS; netId++) {
        switch (sCommInfo->infoState[netId]) {
        case INFO_STATE_RECIEVE:
        case INFO_STATE_END_RECIEVE:
            cnt++;
            break;
        }
    }

    return cnt;
}

BOOL sub_02032E90(void)
{
    int netId;
    BOOL ret = FALSE;

    if (sCommInfo) {
        if (CommSys_ConnectedCount() == 0) {
            return ret;
        }

        for (netId = 0; netId < MAX_CONNECTED_PLAYERS; netId++) {
            if (!CommSys_IsPlayerConnected(netId)
                && !(netId == 0 && CommSys_IsAlone())
                && sCommInfo->infoState[netId] != 0) {
                CommInfo_InitPlayer(netId);
                ret = TRUE;
            }
        }
    }

    return ret;
}

TrainerInfo *CommInfo_TrainerInfo(int netId)
{
    if (!sCommInfo) {
        return NULL;
    }

    switch (sCommInfo->infoState[netId]) {
    case INFO_STATE_BEGIN_RECIEVE:
    case INFO_STATE_RECIEVE:
    case INFO_STATE_END_RECIEVE:
        return sCommInfo->trainerInfo[netId];
    }

    return NULL;
}

DWCFriendData *CommInfo_DWCFriendData(int netId)
{
    if (sCommInfo->infoState[netId] != INFO_STATE_EMPTY) {
        return &sCommInfo->playerInfo[netId].friendData;
    }

    return NULL;
}

int sub_02032F40(int param0)
{
    return sub_02039390(sCommInfo->saveData, param0);
}

u16 *sub_02032F54(int netId)
{
    if (sCommInfo->infoState[netId] != 0) {
        return sCommInfo->playerInfo[netId].unk_4C;
    }

    return NULL;
}

int CommInfo_PlayerCountry(int netId)
{
    if (sCommInfo->infoState[netId] != 0) {
        return sCommInfo->playerInfo[netId].country;
    }

    return 0;
}

int CommInfo_PlayerRegion(int netId)
{
    if (sCommInfo->infoState[netId] != 0) {
        return sCommInfo->playerInfo[netId].region;
    }

    return 0;
}

int sub_02032FC0(int param0)
{
    if (sCommInfo->infoState[param0] != 0) {
        return sCommInfo->playerInfo[param0].unk_65;
    }

    return 0;
}

BOOL CommInfo_CheckBattleRegulation(void)
{
    int netId, i;

    for (netId = 0; netId < MAX_CONNECTED_PLAYERS - 1; netId++) {
        if (CommSys_IsPlayerConnected(netId) && (sCommInfo->infoState[netId] != 0)) {
            if (CommSys_IsPlayerConnected(netId + 1) && (sCommInfo->infoState[netId + 1] != 0)) {
                for (i = 0; i < 32; i++) {
                    if (sCommInfo->playerInfo[netId].regulationBuffer[i] != sCommInfo->playerInfo[netId + 1].regulationBuffer[i]) {
                        return FALSE;
                    }
                }
            }
        }
    }

    return TRUE;
}

static void CommInfo_UpdatePlayerRecord(int param0, int val)
{
    int netId;
    int v1, v2;

    if (sCommInfo == NULL) {
        return;
    }

    if (param0 != 2) {
        v1 = sub_020362F4(CommSys_CurNetId()) & 0x1;
    }

    for (netId = 0; netId < CommSys_ConnectedCount(); netId++) {
        if (CommSys_IsPlayerConnected(netId) && (sCommInfo->infoState[netId] != 0)) {
            if (param0 == 0) {
                v2 = sub_020362F4(netId) & 0x1;

                if (v1 != v2) {
                    sCommInfo->playerRecord[netId].win += val;
                }
            } else if (param0 == 1) {
                v2 = sub_020362F4(netId) & 0x1;

                if (v1 != v2) {
                    sCommInfo->playerRecord[netId].lose += val;
                }
            } else {
                sCommInfo->playerRecord[netId].trades += val;
            }
        }
    }
}

void CommInfo_SavePlayerRecord(SaveData *saveData)
{
    WiFiList *v0 = SaveData_GetWiFiList(saveData);
    int netId, v2, v3;

    for (netId = 0; netId < CommSys_ConnectedCount(); netId++) {
        DWCFriendData *friendData = CommInfo_DWCFriendData(netId);

        if (friendData == NULL) {
            continue;
        }

        v2 = sub_0203909C(saveData, friendData, &v3);

        switch (v2) {
        case 0:
        case 1:
            GF_ASSERT(v3 >= 0);

            sub_0202B174(v0, v3, sCommInfo->playerRecord[netId].win, sCommInfo->playerRecord[netId].lose, sCommInfo->playerRecord[netId].trades);
            break;
        }
    }

    for (netId = 0; netId < MAX_CONNECTED_PLAYERS; netId++) {
        sCommInfo->playerRecord[netId].win = 0;
        sCommInfo->playerRecord[netId].lose = 0;
        sCommInfo->playerRecord[netId].trades = 0;
    }
}

void sub_020331B4(SaveData *saveData, int param1)
{
    if (param1 == 1) {
        CommInfo_UpdatePlayerRecord(0, 1);
    } else if (param1 == -1) {
        CommInfo_UpdatePlayerRecord(1, 1);
    }

    CommInfo_SavePlayerRecord(saveData);
}

void CommInfo_SetTradeResult(SaveData *saveData, int val)
{
    CommInfo_UpdatePlayerRecord(2, val);
    CommInfo_SavePlayerRecord(saveData);
}

void CommInfo_SetPersonalTrainerInfo(TrainerInfo *trainerInfo)
{
    sCommInfo->personalTrainerInfo = trainerInfo;
}
