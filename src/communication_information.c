#include <nitro.h>
#include <string.h>
#include <dwc.h>

#include "trainer_info.h"
#include "struct_decls/struct_0202B370_decl.h"
#include "struct_decls/struct_0202B4A0_decl.h"
#include "struct_decls/struct_0202C878_decl.h"
#include "savedata.h"

#include "struct_defs/struct_0202610C.h"

#include "heap.h"
#include "constants/heap.h"
#include "unk_02025E08.h"
#include "trainer_info.h"
#include "unk_0202602C.h"
#include "unk_0202854C.h"
#include "unk_0202ACE0.h"
#include "unk_0202B37C.h"
#include "unk_0202C858.h"
#include "communication_information.h"
#include "unk_02033200.h"
#include "communication_system.h"
#include "unk_0203909C.h"

typedef struct {
    u8 regulationBuffer[32];
    u8 trainerInfoBuffer[32];
    DWCFriendData friendData;
    u16 unk_4C[8];
    u8 macAddress[6];
    u8 netId;
    u8 country;
    u8 region;
    u8 unk_65;
} CommPlayerData;

typedef struct {
    u16 win;
    u16 lose;
    u16 trades;
} CommPlayerRecord;

enum InfoState {
    INFO_STATE_EMPTY,
    INFO_STATE_BEGIN_RECIEVE,
    INFO_STATE_RECIEVE,
    INFO_STATE_END_RECIEVE,
    INFO_STATE_MAX
};

typedef struct {
    TrainerInfo * personalTrainerInfo;
    const BattleRegulation * regulation;
    SaveData * saveData;
    CommPlayerData playerData[8];
    TrainerInfo * trainerInfo[8];
    CommPlayerRecord playerRecord[8];
    u8 infoState[8];
    u8 dataFinishedReading;
    u8 dataRecvFlag;
    u8 curNetId;
} CommunicationInformation;

static CommunicationInformation * sCommInfo;

void CommunicationInformation_Init (SaveData * saveData, const BattleRegulation * regulation)
{
    int netId;
    TrainerInfo * trainerInfo = SaveData_GetTrainerInfo(saveData);

    if (sCommInfo) {
        return;
    }

    sCommInfo = Heap_AllocFromHeap(HEAP_ID_COMMUNICATION, sizeof(CommunicationInformation));
    MI_CpuClear8(sCommInfo, sizeof(CommunicationInformation));

    for (netId = 0; netId < (7 + 1); netId++) {
        sCommInfo->trainerInfo[netId] = (TrainerInfo *)&sCommInfo->playerData[netId].trainerInfoBuffer[0];
        CommunicationInformation_InitPlayer(netId);
    }

    sCommInfo->dataFinishedReading = FALSE;
    sCommInfo->dataRecvFlag = FALSE;
    sCommInfo->curNetId = 0;
    sCommInfo->saveData = saveData;
    sCommInfo->regulation = regulation;

    TrainerInfo_Copy(trainerInfo, sCommInfo->trainerInfo[0]);
}

void CommunicationInformation_Delete (void)
{
    int netId;

    if (sCommInfo) {
        for (netId = 0; netId < (7 + 1); netId++) {
            sCommInfo->trainerInfo[netId] = NULL;
        }

        if (sCommInfo) {
            Heap_FreeToHeap(sCommInfo);
        }

        sCommInfo = NULL;
    }
}

BOOL CommunicationInformation_IsInitialized (void)
{
    return sCommInfo != NULL;
}

void CommunicationInformation_SendBattleRegulation (void)
{
    u16 netId = CommunicationSystem_GetCurNetId();
    TrainerInfo * trainerInfo;
    const u16 * v2;
    UnkStruct_0202B4A0 * v3 = sub_0202B4A0(sCommInfo->saveData);
    UnkStruct_0202B370 * v4 = sub_0202B370(sCommInfo->saveData);
    UnkStruct_0202C878 * v5 = sub_0202C878(sCommInfo->saveData);

    if (sCommInfo->personalTrainerInfo) {
        trainerInfo = sCommInfo->personalTrainerInfo;
    } else {
        trainerInfo = SaveData_GetTrainerInfo(sCommInfo->saveData);
    }

    TrainerInfo_Copy(trainerInfo, sCommInfo->trainerInfo[netId]);
    OS_GetMacAddress(&sCommInfo->playerData[netId].macAddress[0]);

    v2 = sub_0202B42C(v3, 1, 0);

    MI_CpuCopy8(v2, sCommInfo->playerData[netId].unk_4C, sizeof(sCommInfo->playerData[netId].unk_4C));

    sCommInfo->playerData[netId].country = sub_0202C8C0(v5);
    sCommInfo->playerData[netId].region = sub_0202C8C4(v5);
    sCommInfo->playerData[netId].unk_65 = sub_02028810(sCommInfo->saveData);
    sCommInfo->playerData[netId].unk_65 = 1 - sCommInfo->playerData[netId].unk_65;

    DWC_CreateExchangeToken(sub_0202AD28(v4), &sCommInfo->playerData[netId].friendData);
    MI_CpuClear8(sCommInfo->playerData[netId].regulationBuffer, 32);

    if (sCommInfo->regulation) {
        BattleRegulation_Copy(sCommInfo->regulation, (BattleRegulation *)sCommInfo->playerData[netId].regulationBuffer);
    }

    CommunicationSystem_SendData(3, &sCommInfo->playerData[netId], sizeof(CommPlayerData));
}

int CommPlayerData_sizeof (void)
{
    return sizeof(CommPlayerData);
}

void CommunicatitonInformaion_FinishReading (int param0, int param1, void * param2, void * param3)
{
    if (sCommInfo) {
        sCommInfo->dataFinishedReading = TRUE;
    } else {
        (void)0;
    }
}

BOOL CommunicationInformation_IsDataFinishedReading (void)
{
    return sCommInfo->dataFinishedReading;
}

void CommunicationInformation_RecvPlayerDataArray (int netId, int param1, void * src, void * unused)
{
    CommPlayerData * playerData = (CommPlayerData *)src;

    if (!sCommInfo) {
        return;
    }

    if (!CommunicationSystem_IsPlayerConnected(netId)) {
        return;
    }

    MI_CpuCopy8(src, &sCommInfo->playerData[playerData->netId], sizeof(CommPlayerData));
    sCommInfo->curNetId = playerData->netId;

    if (TrainerInfo_HasNoName(sCommInfo->trainerInfo[sCommInfo->curNetId]) == 1) {
        return;
    }

    if (sCommInfo->infoState[sCommInfo->curNetId] < INFO_STATE_RECIEVE) {
        sCommInfo->infoState[sCommInfo->curNetId] = INFO_STATE_BEGIN_RECIEVE;

        if (CommunicationSystem_GetCurNetId() == sCommInfo->curNetId) {
            sCommInfo->infoState[sCommInfo->curNetId] = INFO_STATE_END_RECIEVE;
        }
    }
}

void CommunicationInformation_RecvPlayerData (int netId, int param1, void * src, void * param3)
{
    if (!sCommInfo) {
        return;
    }

    MI_CpuCopy8(src, &sCommInfo->playerData[netId], sizeof(CommPlayerData));
    sub_02033FDC(&sCommInfo->playerData[netId].macAddress[0], netId);

    sCommInfo->infoState[netId] = INFO_STATE_BEGIN_RECIEVE;

    if (CommunicationSystem_GetCurNetId() == netId) {
        sCommInfo->infoState[netId] = INFO_STATE_END_RECIEVE;
    } else {
        sCommInfo->dataRecvFlag = TRUE;
    }
}

BOOL CommunicationInformation_ServerSendArray (void)
{
    int netId;

    if (!sCommInfo->dataRecvFlag) {
        return FALSE;
    }

    if (CommunicationSystem_GetCurNetId() != 0) {
        return FALSE;
    }

    if (!sub_02036254(5)) {
        for (netId = 0; netId < (7 + 1); netId++) {
            if (sCommInfo->infoState[netId] != INFO_STATE_EMPTY) {
                sCommInfo->playerData[netId].netId = netId;
                MI_CpuCopy8(sCommInfo->trainerInfo[netId], sCommInfo->playerData[netId].trainerInfoBuffer, TrainerInfo_Size());
                CommunicationSystem_ServerSetSendQueue(4, &sCommInfo->playerData[netId], sizeof(CommPlayerData));
            }
        }

        CommunicationSystem_ServerSetSendQueue(5, NULL, 0);
        sCommInfo->dataRecvFlag = FALSE;
        return TRUE;
    }

    return FALSE;
}

BOOL CommunicationInformation_IsReceivingData (void)
{
    return sCommInfo->dataRecvFlag;
}

void CommunicationInformation_InitPlayer (int netId)
{
    TrainerInfo_Init(sCommInfo->trainerInfo[netId]);
    sCommInfo->infoState[netId] = INFO_STATE_EMPTY;
}

BOOL sub_02032DC4 (int netId)
{
    return sCommInfo->infoState[netId] == INFO_STATE_BEGIN_RECIEVE;
}

BOOL sub_02032DE0 (int netId)
{
    return (sCommInfo->infoState[netId] == INFO_STATE_RECIEVE) || (sCommInfo->infoState[netId] == INFO_STATE_BEGIN_RECIEVE);
}

BOOL sub_02032E00 (int netId)
{
    return sCommInfo->infoState[netId] == INFO_STATE_RECIEVE;
}

void sub_02032E1C (int netId)
{
    sCommInfo->infoState[netId] = INFO_STATE_RECIEVE;
}

void CommunicationInformation_SetReceiveEnd (int netId)
{
    sCommInfo->infoState[netId] = INFO_STATE_END_RECIEVE;
}

int CommunicationInformation_GetNewNetworkId (void)
{
    int netId;

    for (netId = 0; netId < (7 + 1); netId++) {
        if (sCommInfo->infoState[netId] == INFO_STATE_BEGIN_RECIEVE) {
            return netId;
        }
    }

    return 0xff;
}

int CommunicationInformation_GetRecvCnt (void)
{
    int netId;
    int cnt = 0;

    for (netId = 0; netId < (7 + 1); netId++) {
        switch (sCommInfo->infoState[netId]) {
        case INFO_STATE_RECIEVE:
        case INFO_STATE_END_RECIEVE:
            cnt++;
            break;
        }
    }

    return cnt;
}

BOOL sub_02032E90 (void)
{
    int netId;
    BOOL ret = FALSE;

    if (sCommInfo) {
        if (sub_02035E18() == 0) {
            return ret;
        }

        for (netId = 0; netId < (7 + 1); netId++) {
            if (!CommunicationSystem_IsPlayerConnected(netId) && !((netId == 0) && sub_02036180())) {
                if (sCommInfo->infoState[netId] != 0) {
                    CommunicationInformation_InitPlayer(netId);
                    ret = TRUE;
                }
            }
        }
    }

    return ret;
}

TrainerInfo * CommunicationInformation_GetTrainerInformation (int netId)
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

DWCFriendData * CommunicationInformation_GetDWCFriendData (int netId)
{
    if (sCommInfo->infoState[netId] != INFO_STATE_EMPTY) {
        return &sCommInfo->playerData[netId].friendData;
    }

    return NULL;
}

int sub_02032F40 (int param0)
{
    return sub_02039390(sCommInfo->saveData, param0);
}

u16 * sub_02032F54 (int netId)
{
    if (sCommInfo->infoState[netId] != 0) {
        return sCommInfo->playerData[netId].unk_4C;
    }

    return NULL;
}

int CommunicationInformation_GetPlayerCountry (int netId)
{
    if (sCommInfo->infoState[netId] != 0) {
        return sCommInfo->playerData[netId].country;
    }

    return 0;
}

int CommunicationInformation_GetPlayerRegion (int netId)
{
    if (sCommInfo->infoState[netId] != 0) {
        return sCommInfo->playerData[netId].region;
    }

    return 0;
}

int sub_02032FC0 (int param0)
{
    if (sCommInfo->infoState[param0] != 0) {
        return sCommInfo->playerData[param0].unk_65;
    }

    return 0;
}

BOOL CommunicationInformation_CheckBattleRegulation (void)
{
    int netId, i;

    for (netId = 0; netId < (7 + 1) - 1; netId++) {
        if (CommunicationSystem_IsPlayerConnected(netId) && (sCommInfo->infoState[netId] != 0)) {
            if (CommunicationSystem_IsPlayerConnected(netId + 1) && (sCommInfo->infoState[netId + 1] != 0)) {
                for (i = 0; i < 32; i++) {
                    if (sCommInfo->playerData[netId].regulationBuffer[i] != sCommInfo->playerData[netId + 1].regulationBuffer[i]) {
                        return FALSE;
                    }
                }
            }
        }
    }

    return TRUE;
}

static void CommunicationInformation_UpdatePlayerRecord (int param0, int val)
{
    int netId;
    int v1, v2;

    if (sCommInfo == NULL) {
        return;
    }

    if (param0 != 2) {
        v1 = sub_020362F4(CommunicationSystem_GetCurNetId()) & 0x1;
    }

    for (netId = 0; netId < sub_02035E18(); netId++) {
        if (CommunicationSystem_IsPlayerConnected(netId) && (sCommInfo->infoState[netId] != 0)) {
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

void CommunicationInformation_SavePlayerRecord (SaveData * saveData)
{
    UnkStruct_0202B370 * v0 = sub_0202B370(saveData);
    int netId, v2, v3;

    for (netId = 0; netId < sub_02035E18(); netId++) {
        DWCFriendData * friendData = CommunicationInformation_GetDWCFriendData(netId);

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

    for (netId = 0; netId < (7 + 1); netId++) {
        sCommInfo->playerRecord[netId].win = 0;
        sCommInfo->playerRecord[netId].lose = 0;
        sCommInfo->playerRecord[netId].trades = 0;
    }
}

void sub_020331B4 (SaveData * saveData, int param1)
{
    if (param1 == 1) {
        CommunicationInformation_UpdatePlayerRecord(0, 1);
    } else if (param1 == -1) {
        CommunicationInformation_UpdatePlayerRecord(1, 1);
    }

    CommunicationInformation_SavePlayerRecord(saveData);
}

void CommunicationInformation_SetTradeResult (SaveData * saveData, int val)
{
    CommunicationInformation_UpdatePlayerRecord(2, val);
    CommunicationInformation_SavePlayerRecord(saveData);
}

void CommunicationInformation_SetPersonalTrainerInfo (TrainerInfo * trainerInfo)
{
    sCommInfo->personalTrainerInfo = trainerInfo;
}
