#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_0202783C_decl.h"

#include "savedata/save_table.h"

#include "unk_02017728.h"
#include "heap.h"
#include "unk_0201D15C.h"
#include "unk_020244AC.h"
#include "unk_020277A4.h"
#include "unk_0209A74C.h"
#include "unk_0209AA74.h"
#include "constants/heap.h"

static void sub_020252EC(SaveDataBody * param0, const SavePageInfo * param1);
static void sub_020251DC(SavePageInfo * param0);
static void sub_02025258(SaveBlockInfo * param0, const SavePageInfo * param1);
static BOOL sub_0202513C(SaveData * param0);
static BOOL sub_02024DBC(SaveData * param0);
static int SaveData_LoadCheck(SaveData *saveData);
static void SaveDataExtra_LoadCheck(SaveData *saveData, int *frontierResult, int *videoResult);
static void sub_02024EC8(SaveData * param0, UnkStruct_020250DC * param1, int param2);
static int sub_02024F44(SaveData * param0, UnkStruct_020250DC * param1);
static void sub_0202506C(SaveData * param0, UnkStruct_020250DC * param1, int param2);
static void sub_020250DC(SaveData * param0, UnkStruct_020250DC * param1);
static BOOL sub_0202516C(const SaveData * param0, int param1, int param2);
static s32 sub_02025B3C(u32 param0, void * param1, u32 param2);
static BOOL sub_02025BB8(s32 param0, BOOL param1, BOOL * param2);
static void sub_02025C1C(s32 param0, int param1);
static void sub_020259F8(SaveData * param0, int param1, u32 * param2, u32 * param3, u8 * param4);
static void sub_02025A18(SaveData * param0, int param1, u32 param2, u32 param3, u8 param4);

static SaveData *sSaveDataPtr = NULL;

SaveData* InitializeSaveData (void)
{
    SaveData *saveData;
    int loadResult;

    saveData = Heap_AllocFromHeap(HEAP_BASE_ID_SAVE, sizeof(SaveData));
    MI_CpuClearFast(saveData, sizeof(SaveData));

    sSaveDataPtr = saveData;

    saveData->backupExists = sub_02025A3C();
    saveData->dataExists = FALSE;
    saveData->isNewGameData = TRUE;
    saveData->fullSaveRequired = TRUE;

    sub_020251DC(saveData->pageInfo);
    sub_02025258(saveData->blockInfo, saveData->pageInfo);

    MI_CpuClearFast(saveData->unk_20018, sizeof(saveData->unk_20018));

    loadResult = SaveData_LoadCheck(saveData);

    saveData->loadCheckStatus = 0;

    switch (loadResult) {
    case LOAD_RESULT_OK:
        saveData->fullSaveRequired = FALSE;
    case LOAD_RESULT_CORRUPT:
        sub_02024DBC(saveData);

        saveData->dataExists = TRUE;
        saveData->isNewGameData = FALSE;

        if (loadResult == LOAD_RESULT_CORRUPT) {
            saveData->loadCheckStatus |= NORMAL_LOAD_CORRUPT;
        }

        {
            int frontierResult, videoResult;

            SaveDataExtra_LoadCheck(saveData, &frontierResult, &videoResult);

            if (frontierResult == LOAD_RESULT_ERROR) {
                saveData->loadCheckStatus |= FRONTIER_LOAD_ERROR;
            } else if (frontierResult == LOAD_RESULT_CORRUPT) {
                saveData->loadCheckStatus |= FRONTIER_LOAD_CORRUPT;
            }

            if (videoResult == LOAD_RESULT_ERROR) {
                saveData->loadCheckStatus |= VIDEO_LOAD_ERROR;
            } else if (videoResult == LOAD_RESULT_CORRUPT) {
                saveData->loadCheckStatus |= VIDEO_LOAD_CORRUPT;
            }
        }
        break;
    case LOAD_RESULT_ERROR:
        saveData->loadCheckStatus |= NORMAL_LOAD_ERROR;
    case LOAD_RESULT_EMPTY:
        SaveData_Clear(saveData);
        break;
    }

    return saveData;
}

SaveData* SaveData_Ptr (void)
{
    GF_ASSERT(sSaveDataPtr != NULL);
    return sSaveDataPtr;
}

void* SaveData_SaveTable (SaveData *saveData, int saveTableID)
{
    GF_ASSERT(saveTableID < SAVE_TABLE_ENTRY_MAX);
    return &(saveData->body.data[saveData->pageInfo[saveTableID].location]);
}

const void* SaveData_SaveTableConst (const SaveData *saveData, int saveTableID)
{
    return SaveData_SaveTable((SaveData*)saveData, saveTableID);
}

BOOL SaveData_Erase (SaveData *saveData)
{
    int sectorIndex, unused;
    u8 *saveBuffer = Heap_AllocFromHeapAtEnd(HEAP_BASE_ID_APPLICATION, SAVE_SECTOR_SIZE);

    SleepLock(1);

    sub_0202516C(saveData, SAVE_BLOCK_ID_NORMAL, !saveData->unk_20020[SAVE_BLOCK_ID_NORMAL]);
    sub_0202516C(saveData, SAVE_BLOCK_ID_BOXES, !saveData->unk_20020[SAVE_BLOCK_ID_BOXES]);
    sub_0202516C(saveData, SAVE_BLOCK_ID_NORMAL, saveData->unk_20020[SAVE_BLOCK_ID_NORMAL]);
    sub_0202516C(saveData, SAVE_BLOCK_ID_BOXES, saveData->unk_20020[SAVE_BLOCK_ID_BOXES]);

    MI_CpuFillFast(saveBuffer, 0xffffffff, SAVE_SECTOR_SIZE);

    for (sectorIndex = 0; sectorIndex < SAVE_PAGE_MAX * 2; sectorIndex++) {
        sub_02025A9C(SAVE_SECTOR_SIZE * (sectorIndex + 0), saveBuffer, SAVE_SECTOR_SIZE);
        sub_02025A9C(SAVE_SECTOR_SIZE * (sectorIndex + 64), saveBuffer, SAVE_SECTOR_SIZE);
    }

    Heap_FreeToHeap(saveBuffer);
    SaveData_Clear(saveData);

    saveData->dataExists = FALSE;
    SleepUnlock(1);

    return TRUE;
}

BOOL SaveData_Load (SaveData *saveData)
{
    BOOL loadSucceeded;

    if (!saveData->backupExists) {
        return FALSE;
    }

    loadSucceeded = sub_02024DBC(saveData);

    if (loadSucceeded) {
        saveData->dataExists = TRUE;
        saveData->isNewGameData = FALSE;

        {
            int frontierResult, videoResult;

            SaveDataExtra_LoadCheck(saveData, &frontierResult, &videoResult);
        }

        return TRUE;
    } else {
        return FALSE;
    }
}

int SaveData_Save (SaveData *saveData)
{
    int saveResult;

    if (!saveData->backupExists) {
        return SAVE_RESULT_CORRUPT;
    }

    if (saveData->isNewGameData) {
        SleepLock(1);

        sub_0202516C(saveData, SAVE_BLOCK_ID_NORMAL, !saveData->unk_20020[SAVE_BLOCK_ID_NORMAL]);
        sub_0202516C(saveData, SAVE_BLOCK_ID_BOXES, !saveData->unk_20020[SAVE_BLOCK_ID_BOXES]);
        sub_0202516C(saveData, SAVE_BLOCK_ID_NORMAL, saveData->unk_20020[SAVE_BLOCK_ID_NORMAL]);
        sub_0202516C(saveData, SAVE_BLOCK_ID_BOXES, saveData->unk_20020[SAVE_BLOCK_ID_BOXES]);

        SleepUnlock(1);
    }

    saveResult = sub_0202513C(saveData);

    if (saveResult == SAVE_RESULT_OK) {
        saveData->dataExists = TRUE;
        saveData->isNewGameData = FALSE;
    }

    return saveResult;
}

int SaveData_SaveBlock (SaveData *saveData, int saveBlockID)
{
    int saveResult;

    GF_ASSERT(saveBlockID < SAVE_BLOCK_ID_MAX);
    GF_ASSERT(saveData->isNewGameData == FALSE);
    GF_ASSERT(saveData->dataExists == TRUE);

    sub_02024814(saveData, saveBlockID);

    do {
        saveResult = sub_02024828(saveData);
    } while (saveResult == SAVE_RESULT_PROCEED || saveResult == SAVE_RESULT_PROCEED_FINAL);

    return saveResult;
}

void SaveData_Clear (SaveData *saveData)
{
    saveData->isNewGameData = TRUE;
    saveData->fullSaveRequired = TRUE;

    sub_020252EC(&saveData->body, saveData->pageInfo);
}

BOOL SaveData_BackupExists (const SaveData *saveData)
{
    return saveData->backupExists;
}

u32 SaveData_LoadCheckStatus (const SaveData *saveData)
{
    return saveData->loadCheckStatus;
}

BOOL SaveData_DataExists (const SaveData *saveData)
{
    return saveData->dataExists;
}

BOOL SaveData_IsNewGameData (const SaveData *saveData)
{
    return saveData->isNewGameData;
}

BOOL sub_020247C8 (SaveData *saveData)
{
    UnkStruct_0202783C * v0;

    v0 = sub_0202783C(saveData);
    return sub_020278CC(v0);
}

static void sub_020247D4 (SaveData *saveData)
{
    UnkStruct_0202783C * v0;

    v0 = sub_0202783C(saveData);
    sub_020278B8(v0);
}

BOOL SaveData_OverwriteCheck (const SaveData *saveData)
{
    return (SaveData_IsNewGameData(saveData) && SaveData_DataExists(saveData));
}

BOOL SaveData_FullSaveRequired (const SaveData *saveData)
{
    return saveData->fullSaveRequired;
}

void SaveData_SetFullSaveRequired (void)
{
    sSaveDataPtr->fullSaveRequired = TRUE;
}

void sub_02024814 (SaveData * param0, int param1)
{
    sub_02024EC8(param0, &param0->unk_2029C, param1);
}

int sub_02024828 (SaveData *saveData)
{
    int saveResult;

    saveResult = sub_02024F44(saveData, &saveData->unk_2029C);

    if ((saveResult != SAVE_RESULT_PROCEED) && (saveResult != SAVE_RESULT_PROCEED_FINAL)) {
        sub_0202506C(saveData, &saveData->unk_2029C, saveResult);
    }

    return saveResult;
}

void sub_02024850 (SaveData * param0)
{
    sub_020250DC(param0, &param0->unk_2029C);
}

static void sub_02024860 (UnkStruct_02024860 * param0)
{
    param0->unk_00 = 0;
    param0->unk_04 = 0;
    param0->unk_08 = 0;
}

u16 SaveData_CalculateChecksum (const SaveData *saveData, const void *startAddress, u32 size)
{
    return sub_0201D628(startAddress, size);
}

static u16 SaveData_CalculateFooterChecksum (const SaveData *saveData, void * startAddress, u32 size)
{
    return sub_0201D628(startAddress, size - sizeof(SaveBlockFooter));
}

static u32 sub_02024888 (int param0, const SaveBlockInfo * param1)
{
    u32 v0;

    if (param0 == 0) {
        v0 = 0 * SAVE_SECTOR_SIZE;
    } else {
        v0 = 64 * SAVE_SECTOR_SIZE;
    }

    v0 += param1->offset;
    return v0;
}

static SaveBlockFooter* SaveBlockFooter_Ptr (SaveData *saveData, u32 bodyAddress, int blockID)
{
    u32 footerAddress;
    const SaveBlockInfo *blockInfo = &saveData->blockInfo[blockID];

    footerAddress = bodyAddress + blockInfo->offset;
    GF_ASSERT(blockInfo->size);

    footerAddress += blockInfo->size;
    footerAddress -= sizeof(SaveBlockFooter);

    return (SaveBlockFooter *)footerAddress;
}

static BOOL SaveBlockFooter_Validate (SaveData *saveData, u32 bodyAddress, int blockID)
{
    const SaveBlockInfo *blockInfo = &saveData->blockInfo[blockID];
    SaveBlockFooter *footer = SaveBlockFooter_Ptr(saveData, bodyAddress, blockID);
    u32 startAddress = bodyAddress + blockInfo->offset;

    if (footer->size != blockInfo->size) {
        return FALSE;
    }

    if (footer->signature != SECTOR_SIGNATURE) {
        return FALSE;
    }

    if (footer->saveBlockID != blockID) {
        return FALSE;
    }

    if (footer->checksum != SaveData_CalculateFooterChecksum(saveData, (void *)startAddress, blockInfo->size)) {
        return FALSE;
    }

    return TRUE;
}

static void sub_02024920 (UnkStruct_02024860 * param0, SaveData *saveData, u32 bodyAddress, int blockID)
{
    SaveBlockFooter *footer = SaveBlockFooter_Ptr(saveData, bodyAddress, blockID);

    param0->unk_00 = SaveBlockFooter_Validate(saveData, bodyAddress, blockID);
    param0->unk_04 = footer->saveCounter;
    param0->unk_08 = footer->blockCounter;
}

static void SaveBlockFooter_Set (SaveData *saveData, u32 bodyAddress, int blockID)
{
    const SaveBlockInfo * blockInfo = &saveData->blockInfo[blockID];
    SaveBlockFooter * footer = SaveBlockFooter_Ptr(saveData, bodyAddress, blockID);
    u32 startAddress = bodyAddress + blockInfo->offset;

    footer->saveCounter = saveData->globalCounter;
    footer->blockCounter = saveData->unk_20018[blockID];
    footer->size = blockInfo->size;
    footer->signature = SECTOR_SIGNATURE;
    footer->saveBlockID = blockID;
    footer->checksum = SaveData_CalculateFooterChecksum(saveData, (void *)startAddress, blockInfo->size);
}

static int sub_0202499C (u32 param0, u32 param1)
{
    if ((param0 == 0xffffffff) && (param1 == 0)) {
        return -1;
    } else if ((param0 == 0) && (param1 == 0xffffffff)) {
        return 1;
    } else if (param0 > param1) {
        return 1;
    } else if (param0 < param1) {
        return -1;
    }

    return 0;
}

static int sub_020249D4 (const UnkStruct_02024860 * param0, const UnkStruct_02024860 * param1, int * param2, int * param3)
{
    int v0, v1;

    v0 = sub_0202499C(param0->unk_04, param1->unk_04);
    v1 = sub_0202499C(param0->unk_08, param1->unk_08);

    if (param0->unk_00 && param1->unk_00) {
        if (v0 > 0) {
            GF_ASSERT(v1 > 0);
            *param2 = 0;
            *param3 = 1;
        } else if (v0 < 0) {
            GF_ASSERT(v1 < 0);
            *param2 = 1;
            *param3 = 0;
        } else if (v1 > 0) {
            *param2 = 0;
            *param3 = 1;
        } else if (v1 < 0) {
            *param2 = 1;
            *param3 = 0;
        } else {
            *param2 = 0;
            *param3 = 1;
        }

        return 2;
    } else if (param0->unk_00 && !param1->unk_00) {
        *param2 = 0;
        *param3 = 2;
        return 1;
    } else if (!param0->unk_00 && param1->unk_00) {
        *param2 = 1;
        *param3 = 2;
        return 1;
    } else {
        *param2 = 2;
        *param3 = 2;
        return 0;
    }
}

static void inline_02024ABC (SaveData *saveData, const UnkStruct_02024860 * param1, const UnkStruct_02024860 * param2, int param3, int param4)
{
    saveData->globalCounter = param1[param3].unk_04;
    saveData->unk_20018[SAVE_BLOCK_ID_NORMAL] = param1[param3].unk_08;
    saveData->unk_20018[SAVE_BLOCK_ID_BOXES] = param2[param4].unk_08;
    saveData->unk_20020[SAVE_BLOCK_ID_NORMAL] = param3;
    saveData->unk_20020[SAVE_BLOCK_ID_BOXES] = param4;
}

static int SaveData_LoadCheck (SaveData *saveData)
{
    UnkStruct_02024860 v0[2];
    UnkStruct_02024860 v1[2];
    u8 * v2;
    u8 * v3;
    int v4, v5;
    int v6, v7, v8, v9;

    v2 = Heap_AllocFromHeapAtEnd(3, SAVE_SECTOR_SIZE * SAVE_PAGE_MAX);
    v3 = Heap_AllocFromHeapAtEnd(3, SAVE_SECTOR_SIZE * SAVE_PAGE_MAX);

    if (sub_02025AC0(0 * SAVE_SECTOR_SIZE, v2, SAVE_SECTOR_SIZE * SAVE_PAGE_MAX)) {
        sub_02024920(&v0[0], saveData, (u32)v2, 0);
        sub_02024920(&v1[0], saveData, (u32)v2, 1);
    } else {
        sub_02024860(&v0[0]);
        sub_02024860(&v1[0]);
    }

    if (sub_02025AC0(64 * SAVE_SECTOR_SIZE, v3, SAVE_SECTOR_SIZE * SAVE_PAGE_MAX)) {
        sub_02024920(&v0[1], saveData, (u32)v3, 0);
        sub_02024920(&v1[1], saveData, (u32)v3, 1);
    } else {
        sub_02024860(&v0[1]);
        sub_02024860(&v1[1]);
    }

    Heap_FreeToHeap(v2);
    Heap_FreeToHeap(v3);

    v4 = sub_020249D4(&v0[0], &v0[1], &v6, &v8);
    v5 = sub_020249D4(&v1[0], &v1[1], &v7, &v9);

    if ((v4 == 0) && (v5 == 0)) {
        return LOAD_RESULT_EMPTY;
    }

    if ((v4 == 0) || (v5 == 0)) {
        return LOAD_RESULT_ERROR;
    }

    if ((v4 == 2) && (v5 == 2)) {
        if (v0[v6].unk_04 == v1[v7].unk_04) {
            inline_02024ABC(saveData, v0, v1, v6, v7);
            return LOAD_RESULT_OK;
        } else {
            inline_02024ABC(saveData, v0, v1, v8, v7);
            return LOAD_RESULT_CORRUPT;
        }
    }

    if ((v4 == 1) && (v5 == 2)) {
        if (v0[v6].unk_04 == v1[v7].unk_04) {
            inline_02024ABC(saveData, v0, v1, v6, v7);
            return LOAD_RESULT_CORRUPT;
        } else if (v0[v6].unk_04 == v1[v9].unk_04) {
            inline_02024ABC(saveData, v0, v1, v6, v9);
            return LOAD_RESULT_CORRUPT;
        }

        return LOAD_RESULT_ERROR;
    }

    if ((v4 == 2) && (v5 == 1)) {
        if (v0[v6].unk_04 == v1[v7].unk_04) {
            inline_02024ABC(saveData, v0, v1, v6, v7);
            return LOAD_RESULT_OK;
        } else {
            inline_02024ABC(saveData, v0, v1, v8, v7);
            return LOAD_RESULT_CORRUPT;
        }
    }

    if ((v4 == 1) && (v5 == 1) && (v6 == v7)) {
        GF_ASSERT(v0[v6].unk_04 == v1[v7].unk_04);
        inline_02024ABC(saveData, v0, v1, v6, v7);
        return LOAD_RESULT_OK;
    } else {
        GF_ASSERT(v0[v6].unk_04 == v1[v7].unk_04);
        inline_02024ABC(saveData, v0, v1, v6, v7);
        return LOAD_RESULT_CORRUPT;
    }
}

static void SaveDataExtra_LoadCheck (SaveData *saveData, int *frontierResult, int *videoResult)
{
    void *saveBuffer;
    int loadResult;
    BOOL v2;
    int extraSaveID;
    UnkStruct_0202783C *v4 = sub_0202783C(saveData);
    u32 v5, v6;
    u8 v7;

    *frontierResult = LOAD_RESULT_OK;
    *videoResult = LOAD_RESULT_OK;

    if (sub_020247C8(saveData) == FALSE) {
        return;
    }

    sub_020279A8(v4, EXTRA_SAVE_TABLE_ENTRY_FRONTIER, &v5, &v6, &v7);

    if ((v5 != EXTRA_SAVE_TABLE_ENTRY_NONE) || (v6 != EXTRA_SAVE_TABLE_ENTRY_NONE)) {
        saveBuffer = SaveDataExtra_Mirror(saveData, HEAP_BASE_ID_APPLICATION, EXTRA_SAVE_TABLE_ENTRY_FRONTIER, &loadResult, &v2);
        Heap_FreeToHeap(saveBuffer);

        if (loadResult == LOAD_RESULT_CORRUPT) {
            *frontierResult = LOAD_RESULT_ERROR;
        } else if ((loadResult == LOAD_RESULT_OK) && (v2 == TRUE)) {
            *frontierResult = LOAD_RESULT_CORRUPT;
        }
    }

    for (extraSaveID = 2; extraSaveID <= 5; extraSaveID++) {
        sub_020279A8(v4, extraSaveID, &v5, &v6, &v7);

        if ((v5 != 0xffffffff) || (v6 != 0xffffffff)) {
            saveBuffer = SaveDataExtra_Mirror(saveData, 3, extraSaveID, &loadResult, &v2);
            Heap_FreeToHeap(saveBuffer);

            if (loadResult == LOAD_RESULT_CORRUPT) {
                *videoResult = LOAD_RESULT_ERROR;
            } else if ((loadResult == LOAD_RESULT_OK) && (v2 == TRUE)) {
                if ((*videoResult) != LOAD_RESULT_ERROR) {
                    *videoResult = LOAD_RESULT_CORRUPT;
                }
            }
        }
    }
}

static BOOL sub_02024DA4 (int param0, const SaveBlockInfo * param1, u8 * param2)
{
    u32 v0;

    v0 = sub_02024888(param0, param1);
    param2 += param1->offset;

    return sub_02025AC0(v0, param2, param1->size);
}

static BOOL sub_02024DBC (SaveData * param0)
{
    int v0;
    u32 v1;
    const SaveBlockInfo * v2 = param0->blockInfo;

    for (v0 = 0; v0 < 2; v0++) {
        if (sub_02024DA4(param0->unk_20020[v0], &param0->blockInfo[v0], param0->body.data) == 0) {
            return 0;
        }

        if (SaveBlockFooter_Validate(param0, (u32)param0->body.data, v0) == 0) {
            return 0;
        }
    }

    for (v0 = 0; v0 < 38; v0++) {
        param0->pageInfo[v0].checksum = sub_0201D628(SaveData_SaveTable(param0, v0), param0->pageInfo[v0].size);
    }

    return 1;
}

static s32 sub_02024E30 (SaveData * param0, int param1, u8 param2)
{
    u32 v0;
    BOOL v1;
    u8 * v2;
    const SaveBlockInfo * v3 = &param0->blockInfo[param1];

    SaveBlockFooter_Set(param0, (u32)param0->body.data, param1);

    v0 = sub_02024888(param2, v3);
    v2 = param0->body.data + v3->offset;

    return sub_02025B3C(v0, v2, v3->size - sizeof(SaveBlockFooter));
}

static s32 sub_02024E68 (SaveData * param0, int param1, u8 param2)
{
    u32 v0;
    BOOL v1;
    u8 * v2;
    const SaveBlockInfo * v3 = &param0->blockInfo[param1];

    v0 = sub_02024888(param2, v3) + v3->size - sizeof(SaveBlockFooter);
    v2 = param0->body.data + v3->offset + v3->size - sizeof(SaveBlockFooter);

    return sub_02025B3C(v0, v2, sizeof(SaveBlockFooter));
}

static s32 sub_02024E98 (SaveData * param0, int param1, u8 param2)
{
    u32 v0;
    BOOL v1;
    u8 * v2;
    const SaveBlockInfo * v3 = &param0->blockInfo[param1];

    v0 = sub_02024888(param2, v3) + v3->size - sizeof(SaveBlockFooter) + 8;
    v2 = param0->body.data + v3->offset + v3->size - sizeof(SaveBlockFooter) + 8;

    return sub_02025B3C(v0, v2, 8);
}

static void sub_02024EC8 (SaveData * param0, UnkStruct_020250DC * param1, int param2)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        param1->unk_1C[v0] = param0->unk_20018[v0];
        param0->unk_20018[v0]++;
    }

    param1->unk_14 = 0;
    param1->unk_00 = 0;
    param1->unk_24 = 0;

    if (param2 == 2) {
        if (param0->fullSaveRequired) {
            param1->unk_00 = 1;
            param1->unk_18 = param0->globalCounter;
            param0->globalCounter++;

            param1->unk_04 = 0;
            param1->unk_08 = 0;
            param1->unk_0C = 2;
        } else {
            param1->unk_04 = 0;
            param1->unk_08 = 0;
            param1->unk_0C = 0 + 1;
        }
    } else {
        param1->unk_04 = param2;
        param1->unk_08 = param2;
        param1->unk_0C = param2 + 1;
    }

    SleepLock(1);
}

static int sub_02024F44 (SaveData * param0, UnkStruct_020250DC * param1)
{
    BOOL v0;

    switch (param1->unk_14) {
    case 0:
        param1->unk_10 = sub_02024E30(param0, param1->unk_08, !param0->unk_20020[param1->unk_08]);
        param1->unk_24 = 1;
        param1->unk_14++;
    case 1:
        if (sub_02025BB8(param1->unk_10, param1->unk_24, &v0) == 0) {
            break;
        }

        param1->unk_24 = 0;

        if (!v0) {
            return 3;
        }

        param1->unk_14++;
    case 2:
        param1->unk_10 = sub_02024E98(param0, param1->unk_08, !param0->unk_20020[param1->unk_08]);
        param1->unk_24 = 1;
        param1->unk_14++;
    case 3:
        if (sub_02025BB8(param1->unk_10, param1->unk_24, &v0) == 0) {
            break;
        }

        param1->unk_24 = 0;

        if (!v0) {
            return 3;
        }

        param1->unk_14++;

        if (param1->unk_08 + 1 == param1->unk_0C) {
            return 1;
        }
    case 4:
        param1->unk_10 = sub_02024E68(param0, param1->unk_08, !param0->unk_20020[param1->unk_08]);
        param1->unk_24 = 1;
        param1->unk_14++;
    case 5:
        if (sub_02025BB8(param1->unk_10, param1->unk_24, &v0) == 0) {
            break;
        }

        param1->unk_24 = 0;

        if (!v0) {
            return 3;
        }

        param1->unk_08++;

        if (param1->unk_08 == param1->unk_0C) {
            return 2;
        }

        param1->unk_14 = 0;
        break;
    }

    return 0;
}

static void sub_0202506C (SaveData * param0, UnkStruct_020250DC * param1, int param2)
{
    int v0;

    if (param2 == 3) {
        if (param1->unk_00) {
            param0->globalCounter = param1->unk_18;
        }

        for (v0 = 0; v0 < 2; v0++) {
            param0->unk_20018[v0] = param1->unk_1C[v0];
        }
    } else {
        for (v0 = param1->unk_04; v0 < param1->unk_0C; v0++) {
            param0->unk_20020[v0] = !param0->unk_20020[v0];
        }

        param0->dataExists = 1;
        param0->isNewGameData = 0;
        param0->fullSaveRequired = 0;
    }

    SleepUnlock(1);
}

static void sub_020250DC (SaveData * param0, UnkStruct_020250DC * param1)
{
    int v0;

    if (param1->unk_00) {
        param0->globalCounter = param1->unk_18;
    }

    for (v0 = 0; v0 < 2; v0++) {
        param0->unk_20018[v0] = param1->unk_1C[v0];
    }

    if (!CARD_TryWaitBackupAsync()) {
        CARD_CancelBackupAsync();
    }

    if (param1->unk_24) {
        CARD_UnlockBackup(param1->unk_10);
        OS_ReleaseLockID(param1->unk_10);
        param1->unk_24 = 0;
    }

    SleepUnlock(1);
}

BOOL sub_0202513C (SaveData * param0)
{
    int v0;
    UnkStruct_020250DC v1;

    sub_02024EC8(param0, &v1, 2);

    do {
        v0 = sub_02024F44(param0, &v1);
    } while (v0 == 0 || v0 == 1);

    sub_0202506C(param0, &v1, v0);
    return v0;
}

static BOOL sub_0202516C (const SaveData * param0, int param1, int param2)
{
    u32 v0;
    SaveBlockFooter v1;
    const SaveBlockInfo * v2 = &param0->blockInfo[param1];

    MI_CpuFill8(&v1, 0xff, sizeof(SaveBlockFooter));
    v0 = sub_02024888(param2, v2) + v2->size - sizeof(SaveBlockFooter);

    return sub_02025A9C(v0, &v1, sizeof(SaveBlockFooter));
}

int sub_020251A4 (int param0)
{
    int v0;
    const SaveTableEntry * v1 = gSaveTable;

    GF_ASSERT(param0 < gSaveTableSize);
    v0 = v1[param0].sizeFunc();

    v0 += 4 - (v0 % 4);
    v0 += 4;

    return v0;
}

static void sub_020251DC (SavePageInfo * param0)
{
    const SaveTableEntry * v0 = gSaveTable;
    int v1;
    int v2 = 0;

    GF_ASSERT(gSaveTableSize == 38);

    for (v1 = 0; v1 < gSaveTableSize; v1++) {
        GF_ASSERT(v0[v1].dataID == v1);

        param0[v1].pageID = v0[v1].dataID;
        param0[v1].size = sub_020251A4(v1);
        param0[v1].location = v2;
        param0[v1].checksum = 0;
        param0[v1].blockID = v0[v1].blockID;

        v2 += param0[v1].size;

        if ((v1 == gSaveTableSize - 1) || (v0[v1].blockID != v0[v1 + 1].blockID)) {
            v2 += sizeof(SaveBlockFooter);
        }
    }

    if (v1 % 4 != 0) {
    }

    GF_ASSERT(v2 <= 0x1000 * 32);
}

static void sub_02025258 (SaveBlockInfo * param0, const SavePageInfo * param1)
{
    int v0 = 0;
    int v1, v2;
    int v3, v4;

    v1 = 0;
    v2 = 0;
    v4 = 0;

    for (v3 = 0; v3 < 2; v3++) {
        param0[v3].saveBlockID = v3;
        param0[v3].size = 0;

        for (; param1[v4].blockID == v3 && v4 < gSaveTableSize; v4++) {
            param0[v3].size += param1[v4].size;
        }

        param0[v3].size += sizeof(SaveBlockFooter);
        param0[v3].sectorStartPos = v1;
        param0[v3].offset = v2;
        param0[v3].sectorsInUse = (param0[v3].size + 0x1000 - 1) / 0x1000;

        v1 += param0[v3].sectorsInUse;
        v2 += param0[v3].size;
    }

    GF_ASSERT(v1 == param0[2 - 1].sectorStartPos + param0[2 - 1].sectorsInUse);
    GF_ASSERT(v1 <= 32);
}

static void sub_020252EC (SaveDataBody * param0, const SavePageInfo * param1)
{
    const SaveTableEntry * v0 = gSaveTable;
    int v1;
    int v2;
    void * v3;
    u32 v4;

    MI_CpuClearFast(param0->data, sizeof(param0->data));

    for (v1 = 0; v1 < gSaveTableSize; v1++) {
        v4 = param1[v1].location;
        v3 = &param0->data[v4];
        v2 = param1[v1].size;
        MI_CpuClearFast(v3, v2);
        v0[v1].initFunc(v3);
    }
}

void sub_02025340 (SaveData * param0)
{
    const SaveTableEntry * v0 = gExtraSaveTable;
    int v1;
    int v2;
    void * v3;

    if (sub_020247C8(param0) == 1) {
        return;
    }

    for (v1 = 0; v1 < gExtraSaveTableSize; v1++) {
        if (v0[v1].dataID == 0) {
            continue;
        }

        v3 = SaveDataExtra_Get(param0, 3, v0[v1].dataID, &v2);

        GF_ASSERT(v3 != NULL);
        MI_CpuClear8(v3, v0[v1].sizeFunc());

        v0[v1].initFunc(v3);

        SaveDataExtra_Save(param0, v0[v1].dataID, v3);
        Heap_FreeToHeap(v3);
    }

    sub_020247D4(param0);
}

static void sub_020253B4 (const SaveData * param0, void * param1, int param2, u32 param3)
{
    UnkStruct_020253B4 * v0;

    v0 = (UnkStruct_020253B4 *)((u8 *)param1 + param3);

    v0->unk_00 = SECTOR_SIGNATURE;
    v0->unk_04 = param0->unk_202C8 + 1;
    v0->unk_08 = param3;
    v0->unk_0C = param2;
    v0->unk_0E = sub_0201D628(param1, param3 + sizeof(UnkStruct_020253B4) - 2);
}

static BOOL sub_020253E0 (const SaveData * param0, void * param1, int param2, u32 param3)
{
    const UnkStruct_020253B4 * v0;

    v0 = (const UnkStruct_020253B4 *)((u8 *)param1 + param3);

    if (v0->unk_00 != SECTOR_SIGNATURE) {
        return 0;
    }

    if (v0->unk_08 != param3) {
        return 0;
    }

    if (v0->unk_0C != param2) {
        return 0;
    }

    if (v0->unk_0E != sub_0201D628(param1, param3 + sizeof(UnkStruct_020253B4) - 2)) {
        return 0;
    }

    return 1;
}

static u32 sub_02025420 (void * param0, u32 param1)
{
    const UnkStruct_020253B4 * v0 = (const UnkStruct_020253B4 *)((u8 *)param0 + param1);
    return v0->unk_04;
}

int SaveDataExtra_Save (const SaveData * param0, int param1, void * param2)
{
    const SaveTableEntry * v0;
    u32 v1;
    BOOL v2;

    SleepLock(1);

    GF_ASSERT(param1 < gExtraSaveTableSize);
    v0 = &gExtraSaveTable[param1];

    GF_ASSERT(v0->dataID == param1);
    v1 = v0->sizeFunc() + sizeof(UnkStruct_020253B4);

    if (param0->unk_202C4 == 1) {
        sub_020253B4(param0, param2, param1, v0->sizeFunc());
        v2 = sub_02025A9C((0 + v0->blockID) * 0x1000, param2, v1);

        GF_ASSERT(sub_020253E0(param0, param2, param1, v0->sizeFunc()) == 1);
        sub_020253B4(param0, param2, param1, v0->sizeFunc());

        v2 |= sub_02025A9C((64 + v0->blockID) * 0x1000, param2, v1);
        GF_ASSERT(sub_020253E0(param0, param2, param1, v0->sizeFunc()) == 1);
    } else {
        sub_020253B4(param0, param2, param1, v0->sizeFunc());
        v2 = sub_02025A9C((64 + v0->blockID) * 0x1000, param2, v1);

        GF_ASSERT(sub_020253E0(param0, param2, param1, v0->sizeFunc()) == 1);
        sub_020253B4(param0, param2, param1, v0->sizeFunc());

        v2 |= sub_02025A9C((0 + v0->blockID) * 0x1000, param2, v1);
        GF_ASSERT(sub_020253E0(param0, param2, param1, v0->sizeFunc()) == 1);
    }

    if (v2 == 1) {
        SleepUnlock(1);
        return 2;
    } else {
        SleepUnlock(1);
        return 3;
    }
}

int SaveDataExtra_SaveMirror (SaveData * param0, int param1, void * param2)
{
    const SaveTableEntry * v0;
    u32 v1;
    BOOL v2;
    u32 v3, v4, v5;
    u8 v6;

    SleepLock(1);

    GF_ASSERT(param1 < gExtraSaveTableSize);
    v0 = &gExtraSaveTable[param1];

    GF_ASSERT(v0->dataID == param1);
    v1 = v0->sizeFunc() + sizeof(UnkStruct_020253B4);

    sub_020259F8(param0, param1, &v3, &v4, &v6);

    do {
        v5 = ARNG_Next(v3);
    } while (v5 == 0xffffffff);

    sub_02025A18(param0, param1, v5, v3, v6 ^ 1);

    *((u32 *)param2) = v5;

    if (v6 == 1) {
        sub_020253B4(param0, param2, param1, v0->sizeFunc());
        v2 = sub_02025A9C((0 + v0->blockID) * 0x1000, param2, v1);
        GF_ASSERT(sub_020253E0(param0, param2, param1, v0->sizeFunc()) == 1);
    } else {
        sub_020253B4(param0, param2, param1, v0->sizeFunc());
        v2 = sub_02025A9C((64 + v0->blockID) * 0x1000, param2, v1);
        GF_ASSERT(sub_020253E0(param0, param2, param1, v0->sizeFunc()) == 1);
    }

    if (v2 == 1) {
        SleepUnlock(1);
        return 2;
    } else {
        SleepUnlock(1);
        return 3;
    }
}

void * SaveDataExtra_Get (SaveData * param0, int param1, int param2, int * param3)
{
    const SaveTableEntry * v0;
    void * v1;
    u32 v2;
    BOOL v3, v4;
    u32 v5, v6;

    GF_ASSERT(param2 < gExtraSaveTableSize);
    v0 = &gExtraSaveTable[param2];

    GF_ASSERT(v0->dataID == param2);
    v2 = v0->sizeFunc() + sizeof(UnkStruct_020253B4);
    v1 = Heap_AllocFromHeap(param1, v2);

    sub_02025AC0((0 + v0->blockID) * 0x1000, v1, v2);

    v3 = sub_020253E0(param0, v1, param2, v0->sizeFunc());
    v5 = sub_02025420(v1, v0->sizeFunc());

    sub_02025AC0((64 + v0->blockID) * 0x1000, v1, v2);

    v4 = sub_020253E0(param0, v1, param2, v0->sizeFunc());
    v6 = sub_02025420(v1, v0->sizeFunc());

    *param3 = 1;

    if ((v3 == 1) && (v4 == 0)) {
        param0->unk_202C4 = 0;
        param0->unk_202C8 = v5;
        sub_02025AC0((0 + v0->blockID) * 0x1000, v1, v2);
        return v1;
    }

    if ((v3 == 0) && (v4 == 1)) {
        param0->unk_202C4 = 1;
        param0->unk_202C8 = v6;
        sub_02025AC0((64 + v0->blockID) * 0x1000, v1, v2);
        return v1;
    }

    if ((v3 == 1) && (v4 == 1)) {
        if (sub_0202499C(v5, v6) != -1) {
            param0->unk_202C4 = 0;
            param0->unk_202C8 = v5;
            sub_02025AC0((0 + v0->blockID) * 0x1000, v1, v2);
            return v1;
        } else {
            param0->unk_202C4 = 1;
            param0->unk_202C8 = v6;
            sub_02025AC0((64 + v0->blockID) * 0x1000, v1, v2);
            return v1;
        }
    }

    *param3 = 2;

    param0->unk_202C4 = 0;
    param0->unk_202C8 = 0;

    return v1;
}

void * SaveDataExtra_Mirror (SaveData * param0, int param1, int param2, int * param3, BOOL * param4)
{
    const SaveTableEntry * v0;
    void * v1;
    u32 v2;
    BOOL v3, v4;
    u32 v5, v6;
    u32 v7, v8;
    u8 v9;
    UnkStruct_0202783C * v10 = sub_0202783C(param0);

    GF_ASSERT(param2 < gExtraSaveTableSize);
    GF_ASSERT(param2 != 0);

    v0 = &gExtraSaveTable[param2];
    GF_ASSERT(v0->dataID == param2);

    v2 = v0->sizeFunc() + sizeof(UnkStruct_020253B4);
    v1 = Heap_AllocFromHeap(param1, v2);

    sub_020259F8(param0, param2, &v7, &v8, &v9);
    sub_02025AC0((0 + v0->blockID) * 0x1000, v1, v2);

    v3 = sub_020253E0(param0, v1, param2, v0->sizeFunc());
    MI_CpuCopy8(v1, &v5, sizeof(u32));

    sub_02025AC0((64 + v0->blockID) * 0x1000, v1, v2);
    v4 = sub_020253E0(param0, v1, param2, v0->sizeFunc());

    MI_CpuCopy8(v1, &v6, sizeof(u32));

    *param3 = 1;
    *param4 = 0;

    if ((v3 == 1) && (v4 == 0)) {
        if (v7 == v5) {
            if (v9 == 1) {
                sub_02025A18(param0, param2, v8, v8, 0);
                *param4 = 1;
            }

            sub_02025AC0((0 + v0->blockID) * 0x1000, v1, v2);
            return v1;
        }
    }

    if ((v3 == 0) && (v4 == 1)) {
        if (v7 == v6) {
            if (v9 == 0) {
                sub_02025A18(param0, param2, v8, v8, 1);
                *param4 = 1;
            }

            sub_02025AC0((64 + v0->blockID) * 0x1000, v1, v2);
            return v1;
        }
    }

    if ((v3 == 1) && (v4 == 1)) {
        if (v9 == 0) {
            if (v7 == v5) {
                sub_02025AC0((0 + v0->blockID) * 0x1000, v1, v2);
                return v1;
            } else if (v8 == v6) {
                sub_02025A18(param0, param2, v8, v8, v9 ^ 1);
                *param4 = 1;
                sub_02025AC0((64 + v0->blockID) * 0x1000, v1, v2);
                return v1;
            }
        } else {
            if (v7 == v6) {
                sub_02025AC0((64 + v0->blockID) * 0x1000, v1, v2);
                return v1;
            } else if (v8 == v5) {
                sub_02025A18(param0, param2, v8, v8, v9 ^ 1);
                *param4 = 1;
                sub_02025AC0((0 + v0->blockID) * 0x1000, v1, v2);
                return v1;
            }
        }
    }

    *param3 = 2;
    sub_020279D0(v10, v0->dataID, 0xffffffff, 0xffffffff, 0);

    return v1;
}

static void sub_020259F8 (SaveData * param0, int param1, u32 * param2, u32 * param3, u8 * param4)
{
    sub_020279A8(sub_0202783C(param0), param1, param2, param3, param4);
}

static void sub_02025A18 (SaveData * param0, int param1, u32 param2, u32 param3, u8 param4)
{
    sub_020279D0(sub_0202783C(param0), param1, param2, param3, param4);
}

BOOL sub_02025A3C (void)
{
    s32 v0;
    BOOL v1;
    u32 v2;

    v0 = OS_GetLockID();
    GF_ASSERT(v0 != OS_LOCK_ID_ERROR);

    CARD_LockBackup(v0);

    if (CARD_IdentifyBackup(CARD_BACKUP_TYPE_FLASH_4MBITS)) {
        v1 = CARD_BACKUP_TYPE_FLASH_4MBITS;
    } else if (CARD_IdentifyBackup(CARD_BACKUP_TYPE_FLASH_2MBITS)) {
        v1 = CARD_BACKUP_TYPE_FLASH_2MBITS;
    } else {
        v1 = CARD_BACKUP_TYPE_NOT_USE;
    }

    CARD_UnlockBackup(v0);
    OS_ReleaseLockID(v0);

    if (v1 == CARD_BACKUP_TYPE_FLASH_4MBITS) {
        (void)0;
    } else if (v1 == CARD_BACKUP_TYPE_FLASH_2MBITS) {
        (void)0;
    } else {
        (void)0;
    }

    return v1 != CARD_BACKUP_TYPE_NOT_USE;
}

BOOL sub_02025A9C (u32 param0, void * param1, u32 param2)
{
    s32 v0;
    BOOL v1;

    v0 = sub_02025B3C(param0, param1, param2);

    while (sub_02025BB8(v0, 1, &v1) == 0) {
        (void)0;
    }

    return v1;
}

BOOL sub_02025AC0 (u32 param0, void * param1, u32 param2)
{
    s32 v0;
    BOOL v1;

    v0 = OS_GetLockID();
    GF_ASSERT(v0 != OS_LOCK_ID_ERROR);

    CARD_LockBackup(v0);
    CARD_ReadFlashAsync(param0, param1, param2, NULL, NULL);

    v1 = CARD_WaitBackupAsync();

    CARD_UnlockBackup(v0);
    OS_ReleaseLockID(v0);

    if (!v1) {
        Heap_FreeToHeap(sSaveDataPtr);
        sub_0209A74C(1);
    }

    return v1;
}

static BOOL Unk_021C0798;

static void sub_02025B30 (void * param0)
{
    Unk_021C0798 = 1;
}

static s32 sub_02025B3C (u32 param0, void * param1, u32 param2)
{
    s32 v0;
    u32 v1;
    BOOL v2;

    v0 = OS_GetLockID();
    GF_ASSERT(v0 != OS_LOCK_ID_ERROR);

    CARD_LockBackup(v0);

    v2 = CARD_ReadFlash(0, &v1, sizeof(v1));

    if (!v2) {
        sub_02025C1C(v0, 1);
    }

    Unk_021C0798 = 0;
    CARD_WriteAndVerifyFlashAsync(param0, param1, param2, sub_02025B30, NULL);

    return v0;
}

static BOOL sub_02025BB8 (s32 param0, BOOL param1, BOOL * param2)
{
    if (Unk_021C0798 == 1) {
        if (param1 == 0) {
            return 1;
        }

        CARD_UnlockBackup(param0);
        OS_ReleaseLockID(param0);

        switch (CARD_GetResultCode()) {
        case CARD_RESULT_SUCCESS:
            *param2 = 1;
            break;
        default:
            GF_ASSERT(0);
        case CARD_RESULT_TIMEOUT:
            *param2 = 0;
            sub_02025C1C(param0, 0);
        case CARD_RESULT_NO_RESPONSE:
            *param2 = 0;
            sub_02025C1C(param0, 1);
            break;
        }

        return 1;
    }

    return 0;
}

static void sub_02025C1C (s32 param0, int param1)
{
    CARD_UnlockBackup(param0);
    OS_ReleaseLockID(param0);

    Heap_FreeToHeap(sSaveDataPtr);
    sub_0209AA74(1, param1);
}

BOOL SaveData_CRC (int param0)
{
    SaveData * v0 = SaveData_Ptr();
    void * v1 = SaveData_SaveTable(v0, param0);
    int v2 = sub_020251A4(param0) - 4;
    int v3 = v2 / 2;
    u16 * v4 = v1;
    u16 v5;
    u32 v6;

    v5 = sub_0201D628(v1, v2);

    if (v4[v3] == v5) {
        return 1;
    }

    v6 = (u32) & v4[v3];
    GF_ASSERT(0);

    return 0;
}

void sub_02025C84 (int param0)
{
    SaveData * v0 = SaveData_Ptr();
    void * v1 = SaveData_SaveTable(v0, param0);
    u16 * v2 = v1;
    int v3, v4;
    u16 v5;
    u32 v6;

    v4 = sub_020251A4(param0) - 4;
    v3 = v4 / 2;
    v2 = v1;
    v5 = sub_0201D628(v1, v4);
    v2[v3] = v5;
    v6 = (u32) & v2[v3];
}
