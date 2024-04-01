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
    u8 unk_63;
    u8 unk_64;
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

    sCommInfo->playerData[netId].unk_63 = sub_0202C8C0(v5);
    sCommInfo->playerData[netId].unk_64 = sub_0202C8C4(v5);
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

BOOL sub_02032DE0 (int param0)
{
    return (sCommInfo->infoState[param0] == 2) || (sCommInfo->infoState[param0] == 1);
}

BOOL sub_02032E00 (int param0)
{
    return sCommInfo->infoState[param0] == 2;
}

void sub_02032E1C (int param0)
{
    sCommInfo->infoState[param0] = 2;
}

void sub_02032E30 (int param0)
{
    sCommInfo->infoState[param0] = 3;
}

int sub_02032E44 (void)
{
    int v0;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if (sCommInfo->infoState[v0] == 1) {
            return v0;
        }
    }

    return 0xff;
}

int sub_02032E64 (void)
{
    int v0;
    int v1 = 0;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        switch (sCommInfo->infoState[v0]) {
        case 2:
        case 3:
            v1++;
            break;
        }
    }

    return v1;
}

BOOL sub_02032E90 (void)
{
    int v0;
    BOOL v1 = 0;

    if (sCommInfo) {
        if (sub_02035E18() == 0) {
            return v1;
        }

        for (v0 = 0; v0 < (7 + 1); v0++) {
            if (!CommunicationSystem_IsPlayerConnected(v0) && !((v0 == 0) && sub_02036180())) {
                if (sCommInfo->infoState[v0] != 0) {
                    CommunicationInformation_InitPlayer(v0);
                    v1 = 1;
                }
            }
        }
    }

    return v1;
}

TrainerInfo * CommunicationInformation_GetTrainerInformation (int netId)
{
    if (!sCommInfo) {
        return NULL;
    }

    switch (sCommInfo->infoState[netId]) {
    case 1:
    case 2:
    case 3:
        return sCommInfo->trainerInfo[netId];
    }

    return NULL;
}

DWCFriendData * CommunicationInformation_GetDWCFriendData (int netId)
{
    if (sCommInfo->infoState[netId] != 0) {
        return &sCommInfo->playerData[netId].friendData;
    }

    return NULL;
}

int sub_02032F40 (int param0)
{
    return sub_02039390(sCommInfo->saveData, param0);
}

u16 * sub_02032F54 (int param0)
{
    if (sCommInfo->infoState[param0] != 0) {
        return sCommInfo->playerData[param0].unk_4C;
    }

    return NULL;
}

int sub_02032F78 (int param0)
{
    if (sCommInfo->infoState[param0] != 0) {
        return sCommInfo->playerData[param0].unk_63;
    }

    return 0;
}

int sub_02032F9C (int param0)
{
    if (sCommInfo->infoState[param0] != 0) {
        return sCommInfo->playerData[param0].unk_64;
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

BOOL sub_02032FE4 (void)
{
    int netId, v1;

    for (netId = 0; netId < (7 + 1) - 1; netId++) {
        if (CommunicationSystem_IsPlayerConnected(netId) && (sCommInfo->infoState[netId] != 0)) {
            if (CommunicationSystem_IsPlayerConnected(netId + 1) && (sCommInfo->infoState[netId + 1] != 0)) {
                for (v1 = 0; v1 < 32; v1++) {
                    if (sCommInfo->playerData[netId].regulationBuffer[v1] != sCommInfo->playerData[netId + 1].regulationBuffer[v1]) {
                        return FALSE;
                    }
                }
            }
        }
    }

    return 1;
}

static void CommunicationInformation_UpdatePlayerRecord (int param0, int param1)
{
    int v0;
    int v1, v2;

    if (sCommInfo == NULL) {
        return;
    }

    if (param0 != 2) {
        v1 = sub_020362F4(CommunicationSystem_GetCurNetId()) & 0x1;
    }

    for (v0 = 0; v0 < sub_02035E18(); v0++) {
        if (CommunicationSystem_IsPlayerConnected(v0) && (sCommInfo->infoState[v0] != 0)) {
            if (param0 == 0) {
                v2 = sub_020362F4(v0) & 0x1;

                if (v1 != v2) {
                    sCommInfo->playerRecord[v0].win += param1;
                }
            } else if (param0 == 1) {
                v2 = sub_020362F4(v0) & 0x1;

                if (v1 != v2) {
                    sCommInfo->playerRecord[v0].lose += param1;
                }
            } else {
                sCommInfo->playerRecord[v0].trades += param1;
            }
        }
    }
}

void CommunicationInformation_SavePlayerRecord (SaveData * param0)
{
    UnkStruct_0202B370 * v0 = sub_0202B370(param0);
    int v1, v2, v3;

    for (v1 = 0; v1 < sub_02035E18(); v1++) {
        DWCFriendData * v4 = CommunicationInformation_GetDWCFriendData(v1);

        if (v4 == NULL) {
            continue;
        }

        v2 = sub_0203909C(param0, v4, &v3);

        switch (v2) {
        case 0:
        case 1:
            GF_ASSERT(v3 >= 0);

            sub_0202B174(v0, v3, sCommInfo->playerRecord[v1].win, sCommInfo->playerRecord[v1].lose, sCommInfo->playerRecord[v1].trades);
            break;
        }
    }

    for (v1 = 0; v1 < (7 + 1); v1++) {
        sCommInfo->playerRecord[v1].win = 0;
        sCommInfo->playerRecord[v1].lose = 0;
        sCommInfo->playerRecord[v1].trades = 0;
    }
}

void sub_020331B4 (SaveData * param0, int param1)
{
    if (param1 == 1) {
        CommunicationInformation_UpdatePlayerRecord(0, 1);
    } else if (param1 == -1) {
        CommunicationInformation_UpdatePlayerRecord(1, 1);
    }

    CommunicationInformation_SavePlayerRecord(param0);
}

void CommunicationInformation_SetTradeResult (SaveData * param0, int param1)
{
    CommunicationInformation_UpdatePlayerRecord(2, param1);
    CommunicationInformation_SavePlayerRecord(param0);
}

void CommunicationInformation_SetPersonalTrainerInfo (TrainerInfo * trainerInfo)
{
    sCommInfo->personalTrainerInfo = trainerInfo;
}
