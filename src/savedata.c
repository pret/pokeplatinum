#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_0202783C_decl.h"

#include "savedata/save_table.h"

#include "unk_02017728.h"
#include "heap.h"
#include "unk_0201D15C.h"
#include "savedata.h"
#include "unk_020277A4.h"
#include "unk_0209A74C.h"
#include "unk_0209AA74.h"
#include "constants/heap.h"

static void sub_020252EC(SaveDataBody * param0, const SavePageInfo * param1);
static void sub_020251DC(SavePageInfo * param0);
static void sub_02025258(SaveBlockInfo * param0, const SavePageInfo * param1);
static BOOL SaveDataState_Save(SaveData * param0);
static BOOL SaveDataState_Load(SaveData * param0);
static int SaveData_LoadCheck(SaveData *saveData);
static void SaveDataExtra_LoadCheck(SaveData *saveData, int *frontierResult, int *videoResult);
static void SaveDataState_Init(SaveData * param0, SaveDataState * param1, int param2);
static int SaveDataState_Main(SaveData * param0, SaveDataState * param1);
static void SaveDataState_End(SaveData * param0, SaveDataState * param1, int param2);
static void SaveDataState_Cancel(SaveData * param0, SaveDataState * param1);
static BOOL SaveBlockFooter_Erase(const SaveData * param0, int param1, int param2);
static s32 sub_02025B3C(u32 param0, void * param1, u32 param2);
static BOOL sub_02025BB8(s32 param0, BOOL param1, BOOL * param2);
static void sub_02025C1C(s32 param0, int param1);
static void sub_020259F8(SaveData * param0, int param1, u32 * param2, u32 * param3, u8 * param4);
static void sub_02025A18(SaveData * param0, int param1, u32 param2, u32 param3, u8 param4);

static SaveData *sSaveDataPtr = NULL;

SaveData* SaveData_Init (void)
{
    SaveData *saveData = Heap_AllocFromHeap(HEAP_ID_SAVE, sizeof(SaveData));;

    MI_CpuClearFast(saveData, sizeof(SaveData));

    sSaveDataPtr = saveData;

    saveData->backupExists = sub_02025A3C();
    saveData->dataExists = FALSE;
    saveData->isNewGameData = TRUE;
    saveData->fullSaveRequired = TRUE;

    sub_020251DC(saveData->pageInfo);
    sub_02025258(saveData->blockInfo, saveData->pageInfo);

    MI_CpuClearFast(saveData->blockCounters, sizeof(saveData->blockCounters));

    int loadResult = SaveData_LoadCheck(saveData);

    saveData->loadCheckStatus = 0;

    switch (loadResult) {
    case LOAD_RESULT_OK:
        saveData->fullSaveRequired = FALSE;
    case LOAD_RESULT_CORRUPT:
        SaveDataState_Load(saveData);

        saveData->dataExists = TRUE;
        saveData->isNewGameData = FALSE;

        if (loadResult == LOAD_RESULT_CORRUPT) {
            saveData->loadCheckStatus |= NORMAL_LOAD_CORRUPT;
        }

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
    u8 *saveBuffer = Heap_AllocFromHeapAtEnd(HEAP_ID_APPLICATION, SAVE_SECTOR_SIZE);

    SleepLock(1);

    SaveBlockFooter_Erase(saveData, SAVE_BLOCK_ID_NORMAL, !saveData->blockOffsets[SAVE_BLOCK_ID_NORMAL]);
    SaveBlockFooter_Erase(saveData, SAVE_BLOCK_ID_BOXES, !saveData->blockOffsets[SAVE_BLOCK_ID_BOXES]);
    SaveBlockFooter_Erase(saveData, SAVE_BLOCK_ID_NORMAL, saveData->blockOffsets[SAVE_BLOCK_ID_NORMAL]);
    SaveBlockFooter_Erase(saveData, SAVE_BLOCK_ID_BOXES, saveData->blockOffsets[SAVE_BLOCK_ID_BOXES]);

    MI_CpuFillFast(saveBuffer, 0xffffffff, SAVE_SECTOR_SIZE);

    for (int sectorIndex = 0; sectorIndex < SAVE_PAGE_MAX * 2; sectorIndex++) {
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

    loadSucceeded = SaveDataState_Load(saveData);

    if (loadSucceeded) {
        saveData->dataExists = TRUE;
        saveData->isNewGameData = FALSE;

        int frontierResult, videoResult;
        SaveDataExtra_LoadCheck(saveData, &frontierResult, &videoResult);
        return TRUE;
    }
    
    return FALSE;
}

int SaveData_Save (SaveData *saveData)
{
    if (!saveData->backupExists) {
        return SAVE_RESULT_CORRUPT;
    }

    if (saveData->isNewGameData) {
        SleepLock(1);

        SaveBlockFooter_Erase(saveData, SAVE_BLOCK_ID_NORMAL, !saveData->blockOffsets[SAVE_BLOCK_ID_NORMAL]);
        SaveBlockFooter_Erase(saveData, SAVE_BLOCK_ID_BOXES, !saveData->blockOffsets[SAVE_BLOCK_ID_BOXES]);
        SaveBlockFooter_Erase(saveData, SAVE_BLOCK_ID_NORMAL, saveData->blockOffsets[SAVE_BLOCK_ID_NORMAL]);
        SaveBlockFooter_Erase(saveData, SAVE_BLOCK_ID_BOXES, saveData->blockOffsets[SAVE_BLOCK_ID_BOXES]);

        SleepUnlock(1);
    }

    int saveResult = SaveDataState_Save(saveData);

    if (saveResult == SAVE_RESULT_OK) {
        saveData->dataExists = TRUE;
        saveData->isNewGameData = FALSE;
    }

    return saveResult;
}

int SaveData_SaveBlock (SaveData *saveData, int saveBlockID)
{
    GF_ASSERT(saveBlockID < SAVE_BLOCK_ID_MAX);
    GF_ASSERT(saveData->isNewGameData == FALSE);
    GF_ASSERT(saveData->dataExists == TRUE);

    sub_02024814(saveData, saveBlockID);

    int saveResult;
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

//ravetodo SaveData_SaveStateInit
void sub_02024814 (SaveData *saveData, int blockID)
{
    SaveDataState_Init(saveData, &saveData->saveState, blockID);
}

//ravetodo SaveData_SaveStateMain
int sub_02024828 (SaveData *saveData)
{
    int saveResult = SaveDataState_Main(saveData, &saveData->saveState);

    if ((saveResult != SAVE_RESULT_PROCEED) && (saveResult != SAVE_RESULT_PROCEED_FINAL)) {
        SaveDataState_End(saveData, &saveData->saveState, saveResult);
    }

    return saveResult;
}

//ravetodo SaveData_SaveStateCancel
void sub_02024850 (SaveData *saveData)
{
    SaveDataState_Cancel(saveData, &saveData->saveState);
}

static void SaveData_CheckInfoInit (SaveCheckInfo *checkInfo)
{
    checkInfo->isValid = FALSE;
    checkInfo->globalCounter = 0;
    checkInfo->blockCounter = 0;
}

u16 SaveData_CalculateChecksum (const SaveData *saveData, const void *startAddress, u32 size)
{
    return sub_0201D628(startAddress, size);
}

static u16 SaveData_CalculateFooterChecksum (const SaveData *saveData, void *startAddress, u32 size)
{
    return sub_0201D628(startAddress, size - sizeof(SaveBlockFooter));
}

static u32 SaveData_SaveOffset (int sectorID, const SaveBlockInfo *blockInfo)
{
    u32 offset;

    if (sectorID == SECTOR_ID_PRIMARY) {
        offset = PRIMARY_SECTOR_START * SAVE_SECTOR_SIZE;
    } else {
        offset = BACKUP_SECTOR_START * SAVE_SECTOR_SIZE;
    }

    offset += blockInfo->offset;
    return offset;
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

static void SaveBlockFooter_CheckInfo (SaveCheckInfo *checkInfo, SaveData *saveData, u32 bodyAddress, int blockID)
{
    SaveBlockFooter *footer = SaveBlockFooter_Ptr(saveData, bodyAddress, blockID);

    checkInfo->isValid = SaveBlockFooter_Validate(saveData, bodyAddress, blockID);
    checkInfo->globalCounter = footer->saveCounter;
    checkInfo->blockCounter = footer->blockCounter;
}

static void SaveBlockFooter_Set (SaveData *saveData, u32 bodyAddress, int blockID)
{
    const SaveBlockInfo * blockInfo = &saveData->blockInfo[blockID];
    SaveBlockFooter * footer = SaveBlockFooter_Ptr(saveData, bodyAddress, blockID);
    u32 startAddress = bodyAddress + blockInfo->offset;

    footer->saveCounter = saveData->globalCounter;
    footer->blockCounter = saveData->blockCounters[blockID];
    footer->size = blockInfo->size;
    footer->signature = SECTOR_SIGNATURE;
    footer->saveBlockID = blockID;
    footer->checksum = SaveData_CalculateFooterChecksum(saveData, (void *)startAddress, blockInfo->size);
}

static int SaveCheckInfo_CompareCounters (u32 counter1, u32 counter2)
{
    if ((counter1 == 0xffffffff) && (counter2 == 0)) {
        return -1;
    } else if ((counter1 == 0) && (counter2 == 0xffffffff)) {
        return 1;
    } else if (counter1 > counter2) {
        return 1;
    } else if (counter1 < counter2) {
        return -1;
    }

    return 0;
}

static int SaveCheckInfo_CompareSectors (const SaveCheckInfo *checkInfo1, const SaveCheckInfo *checkInfo2, int *currentSector, int *staleSector)
{
    int globalDiff = SaveCheckInfo_CompareCounters(checkInfo1->globalCounter, checkInfo2->globalCounter);
    int blockDiff = SaveCheckInfo_CompareCounters(checkInfo1->blockCounter, checkInfo2->blockCounter);

    if (checkInfo1->isValid && checkInfo2->isValid) {
        if (globalDiff > 0) {
            GF_ASSERT(blockDiff > 0);
            *currentSector = SECTOR_ID_PRIMARY;
            *staleSector = SECTOR_ID_BACKUP;
        } else if (globalDiff < 0) {
            GF_ASSERT(blockDiff < 0);
            *currentSector = SECTOR_ID_BACKUP;
            *staleSector = SECTOR_ID_PRIMARY;
        } else if (blockDiff > 0) {
            *currentSector = SECTOR_ID_PRIMARY;
            *staleSector = SECTOR_ID_BACKUP;
        } else if (blockDiff < 0) {
            *currentSector = SECTOR_ID_BACKUP;
            *staleSector = SECTOR_ID_PRIMARY;
        } else {
            *currentSector = SECTOR_ID_PRIMARY;
            *staleSector = SECTOR_ID_BACKUP;
        }

        return SECTOR_RESULT_VALID;

    } else if (checkInfo1->isValid && !checkInfo2->isValid) {
        *currentSector = SECTOR_ID_PRIMARY;
        *staleSector = SECTOR_ID_MAX;
        return SECTOR_RESULT_PARTIAL_VALID;
    } else if (!checkInfo1->isValid && checkInfo2->isValid) {
        *currentSector = SECTOR_ID_BACKUP;
        *staleSector = SECTOR_ID_MAX;
        return SECTOR_RESULT_PARTIAL_VALID;
    } else {
        *currentSector = SECTOR_ID_MAX;
        *staleSector = SECTOR_ID_MAX;
        return SECTOR_RESULT_INVALID;
    }
}

static void SaveData_SetBlockCheckInfo (SaveData *saveData, const SaveCheckInfo *normalCheck, const SaveCheckInfo *boxCheck, int normalOffset, int boxOffset)
{
    saveData->globalCounter = normalCheck[normalOffset].globalCounter;
    saveData->blockCounters[SAVE_BLOCK_ID_NORMAL] = normalCheck[normalOffset].blockCounter;
    saveData->blockCounters[SAVE_BLOCK_ID_BOXES] = boxCheck[boxOffset].blockCounter;
    saveData->blockOffsets[SAVE_BLOCK_ID_NORMAL] = normalOffset;
    saveData->blockOffsets[SAVE_BLOCK_ID_BOXES] = boxOffset;
}

static int SaveData_LoadCheck (SaveData *saveData)
{
    SaveCheckInfo normalInfo[SECTOR_ID_MAX];
    SaveCheckInfo boxInfo[SECTOR_ID_MAX];
    u8* primaryBuffer;
    u8* backupBuffer;
    int normalResult, boxResult;
    int currNormalSector, currBoxSector, staleNormalSector, staleBoxSector;

    primaryBuffer = Heap_AllocFromHeapAtEnd(HEAP_ID_APPLICATION, SAVE_SECTOR_SIZE * SAVE_PAGE_MAX);
    backupBuffer = Heap_AllocFromHeapAtEnd(HEAP_ID_APPLICATION, SAVE_SECTOR_SIZE * SAVE_PAGE_MAX);

    if (sub_02025AC0(PRIMARY_SECTOR_START * SAVE_SECTOR_SIZE, primaryBuffer, SAVE_SECTOR_SIZE * SAVE_PAGE_MAX)) {
        SaveBlockFooter_CheckInfo(&normalInfo[SECTOR_ID_PRIMARY], saveData, (u32)primaryBuffer, SAVE_BLOCK_ID_NORMAL);
        SaveBlockFooter_CheckInfo(&boxInfo[SECTOR_ID_PRIMARY], saveData, (u32)primaryBuffer, SAVE_BLOCK_ID_BOXES);
    } else {
        SaveData_CheckInfoInit(&normalInfo[SECTOR_ID_PRIMARY]);
        SaveData_CheckInfoInit(&boxInfo[SECTOR_ID_PRIMARY]);
    }

    if (sub_02025AC0(BACKUP_SECTOR_START * SAVE_SECTOR_SIZE, backupBuffer, SAVE_SECTOR_SIZE * SAVE_PAGE_MAX)) {
        SaveBlockFooter_CheckInfo(&normalInfo[SECTOR_ID_BACKUP], saveData, (u32)backupBuffer, SAVE_BLOCK_ID_NORMAL);
        SaveBlockFooter_CheckInfo(&boxInfo[SECTOR_ID_BACKUP], saveData, (u32)backupBuffer, SAVE_BLOCK_ID_BOXES);
    } else {
        SaveData_CheckInfoInit(&normalInfo[SECTOR_ID_BACKUP]);
        SaveData_CheckInfoInit(&boxInfo[SECTOR_ID_BACKUP]);
    }

    Heap_FreeToHeap(primaryBuffer);
    Heap_FreeToHeap(backupBuffer);

    normalResult = SaveCheckInfo_CompareSectors(&normalInfo[SECTOR_ID_PRIMARY], &normalInfo[SECTOR_ID_BACKUP], &currNormalSector, &staleNormalSector);
    boxResult = SaveCheckInfo_CompareSectors(&boxInfo[SECTOR_ID_PRIMARY], &boxInfo[SECTOR_ID_BACKUP], &currBoxSector, &staleBoxSector);

    if ((normalResult == SECTOR_RESULT_INVALID) && (boxResult == SECTOR_RESULT_INVALID)) {
        return LOAD_RESULT_EMPTY;
    }

    if ((normalResult == SECTOR_RESULT_INVALID) || (boxResult == SECTOR_RESULT_INVALID)) {
        return LOAD_RESULT_ERROR;
    }

    if ((normalResult == SECTOR_RESULT_VALID) && (boxResult == SECTOR_RESULT_VALID)) {
        if (normalInfo[currNormalSector].globalCounter == boxInfo[currBoxSector].globalCounter) {
            SaveData_SetBlockCheckInfo(saveData, normalInfo, boxInfo, currNormalSector, currBoxSector);
            return LOAD_RESULT_OK;
        } else {
            SaveData_SetBlockCheckInfo(saveData, normalInfo, boxInfo, staleNormalSector, currBoxSector);
            return LOAD_RESULT_CORRUPT;
        }
    }

    if ((normalResult == SECTOR_RESULT_PARTIAL_VALID) && (boxResult == SECTOR_RESULT_VALID)) {
        if (normalInfo[currNormalSector].globalCounter == boxInfo[currBoxSector].globalCounter) {
            SaveData_SetBlockCheckInfo(saveData, normalInfo, boxInfo, currNormalSector, currBoxSector);
            return LOAD_RESULT_CORRUPT;
        } else if (normalInfo[currNormalSector].globalCounter == boxInfo[staleBoxSector].globalCounter) {
            SaveData_SetBlockCheckInfo(saveData, normalInfo, boxInfo, currNormalSector, staleBoxSector);
            return LOAD_RESULT_CORRUPT;
        }

        return LOAD_RESULT_ERROR;
    }

    if ((normalResult == SECTOR_RESULT_VALID) && (boxResult == SECTOR_RESULT_PARTIAL_VALID)) {
        if (normalInfo[currNormalSector].globalCounter == boxInfo[currBoxSector].globalCounter) {
            SaveData_SetBlockCheckInfo(saveData, normalInfo, boxInfo, currNormalSector, currBoxSector);
            return LOAD_RESULT_OK;
        } else {
            SaveData_SetBlockCheckInfo(saveData, normalInfo, boxInfo, staleNormalSector, currBoxSector);
            return LOAD_RESULT_CORRUPT;
        }
    }

    if ((normalResult == SECTOR_RESULT_PARTIAL_VALID) && (boxResult == SECTOR_RESULT_PARTIAL_VALID) && (currNormalSector == currBoxSector)) {
        GF_ASSERT(normalInfo[currNormalSector].globalCounter == boxInfo[currBoxSector].globalCounter);
        SaveData_SetBlockCheckInfo(saveData, normalInfo, boxInfo, currNormalSector, currBoxSector);
        return LOAD_RESULT_OK;
    } else {
        GF_ASSERT(normalInfo[currNormalSector].globalCounter == boxInfo[currBoxSector].globalCounter);
        SaveData_SetBlockCheckInfo(saveData, normalInfo, boxInfo, currNormalSector, currBoxSector);
        return LOAD_RESULT_CORRUPT;
    }
}

static void SaveDataExtra_LoadCheck (SaveData *saveData, int *frontierResult, int *videoResult)
{
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

    void *saveBuffer;
    if ((v5 != EXTRA_SAVE_TABLE_ENTRY_NONE) || (v6 != EXTRA_SAVE_TABLE_ENTRY_NONE)) {
        saveBuffer = SaveDataExtra_Mirror(saveData, HEAP_ID_APPLICATION, EXTRA_SAVE_TABLE_ENTRY_FRONTIER, &loadResult, &v2);
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

static BOOL SaveBlock_Load (int sectorID, const SaveBlockInfo *blockInfo, u8 *blockOffset)
{
    u32 saveOffset;

    saveOffset = SaveData_SaveOffset(sectorID, blockInfo);
    blockOffset += blockInfo->offset;

    return sub_02025AC0(saveOffset, blockOffset, blockInfo->size);
}

static BOOL SaveDataState_Load (SaveData *saveData)
{
    int i;

    for (i = 0; i < SAVE_BLOCK_ID_MAX; i++) {
        if (SaveBlock_Load(saveData->blockOffsets[i], &saveData->blockInfo[i], saveData->body.data) == FALSE) {
            return FALSE;
        }

        if (SaveBlockFooter_Validate(saveData, (u32)saveData->body.data, i) == FALSE) {
            return FALSE;
        }
    }

    for (i = 0; i < SAVE_TABLE_ENTRY_MAX; i++) {
        saveData->pageInfo[i].checksum = sub_0201D628(SaveData_SaveTable(saveData, i), saveData->pageInfo[i].size);
    }

    return TRUE;
}

static s32 SaveDataState_InitBlock (SaveData *saveData, int blockID, u8 sectorID)
{
    u32 saveOffset;
    u8* bodyOffset;
    const SaveBlockInfo* blockInfo = &saveData->blockInfo[blockID];

    SaveBlockFooter_Set(saveData, (u32)saveData->body.data, blockID);

    saveOffset = SaveData_SaveOffset(sectorID, blockInfo);
    bodyOffset = saveData->body.data + blockInfo->offset;

    return sub_02025B3C(saveOffset, bodyOffset, blockInfo->size - sizeof(SaveBlockFooter));
}

static s32 SaveDataState_InitFooter (SaveData *saveData, int blockID, u8 sectorID)
{
    u32 saveOffset;
    u8* bodyOffset;
    const SaveBlockInfo* blockInfo = &saveData->blockInfo[blockID];

    saveOffset = SaveData_SaveOffset(sectorID, blockInfo) + blockInfo->size - sizeof(SaveBlockFooter);
    bodyOffset = saveData->body.data + blockInfo->offset + blockInfo->size - sizeof(SaveBlockFooter);

    return sub_02025B3C(saveOffset, bodyOffset, sizeof(SaveBlockFooter));
}

static s32 sub_02024E98 (SaveData *saveData, int blockID, u8 sectorID)
{
    u32 saveOffset;
    u8* bodyOffset;
    const SaveBlockInfo* blockInfo = &saveData->blockInfo[blockID];

    saveOffset = SaveData_SaveOffset(sectorID, blockInfo) + blockInfo->size - sizeof(SaveBlockFooter) + 8;
    bodyOffset = saveData->body.data + blockInfo->offset + blockInfo->size - sizeof(SaveBlockFooter) + 8;

    return sub_02025B3C(saveOffset, bodyOffset, 8);
}

static void SaveDataState_Init (SaveData *saveData, SaveDataState *saveState, int blockID)
{
    int blockIndex;

    for (blockIndex = 0; blockIndex < SAVE_BLOCK_ID_MAX; blockIndex++) {
        saveState->blockCounterBackup[blockIndex] = saveData->blockCounters[blockIndex];
        saveData->blockCounters[blockIndex]++;
    }

    saveState->stateSequence = 0;
    saveState->fullSaveMode = FALSE;
    saveState->isLocked = FALSE;

    if (blockID == SAVE_BLOCK_ID_MAX) {
        if (saveData->fullSaveRequired) {
            saveState->fullSaveMode = TRUE;
            saveState->globalCounterBackup = saveData->globalCounter;
            saveData->globalCounter++;

            saveState->startBlock = SAVE_BLOCK_ID_NORMAL;
            saveState->currentBlock = SAVE_BLOCK_ID_NORMAL;
            saveState->endBlock = SAVE_BLOCK_ID_MAX;
        } else {
            saveState->startBlock = SAVE_BLOCK_ID_NORMAL;
            saveState->currentBlock = SAVE_BLOCK_ID_NORMAL;
            saveState->endBlock = SAVE_BLOCK_ID_NORMAL + 1;
        }
    } else {
        saveState->startBlock = blockID;
        saveState->currentBlock = blockID;
        saveState->endBlock = blockID + 1;
    }

    SleepLock(1);
}

static int SaveDataState_Main (SaveData *saveData, SaveDataState *saveState)
{
    BOOL saveResult;

    switch (saveState->stateSequence) {
    case 0:
        saveState->lockID = SaveDataState_InitBlock(saveData, saveState->currentBlock, !saveData->blockOffsets[saveState->currentBlock]);
        saveState->isLocked = TRUE;
        saveState->stateSequence++;
    case 1:
        if (sub_02025BB8(saveState->lockID, saveState->isLocked, &saveResult) == FALSE) {
            break;
        }

        saveState->isLocked = FALSE;

        if (!saveResult) {
            return SAVE_RESULT_CORRUPT;
        }

        saveState->stateSequence++;
    case 2:
        saveState->lockID = sub_02024E98(saveData, saveState->currentBlock, !saveData->blockOffsets[saveState->currentBlock]);
        saveState->isLocked = TRUE;
        saveState->stateSequence++;
    case 3:
        if (sub_02025BB8(saveState->lockID, saveState->isLocked, &saveResult) == FALSE) {
            break;
        }

        saveState->isLocked = FALSE;

        if (!saveResult) {
            return SAVE_RESULT_CORRUPT;
        }

        saveState->stateSequence++;

        if (saveState->currentBlock + 1 == saveState->endBlock) {
            return SAVE_RESULT_PROCEED_FINAL;
        }
    case 4:
        saveState->lockID = SaveDataState_InitFooter(saveData, saveState->currentBlock, !saveData->blockOffsets[saveState->currentBlock]);
        saveState->isLocked = TRUE;
        saveState->stateSequence++;
    case 5:
        if (sub_02025BB8(saveState->lockID, saveState->isLocked, &saveResult) == FALSE) {
            break;
        }

        saveState->isLocked = FALSE;

        if (!saveResult) {
            return SAVE_RESULT_CORRUPT;
        }

        saveState->currentBlock++;

        if (saveState->currentBlock == saveState->endBlock) {
            return SAVE_RESULT_OK;
        }

        saveState->stateSequence = 0;
        break;
    }

    return 0;
}

static void SaveDataState_End (SaveData *saveData, SaveDataState *saveState, int saveResult)
{
    int i;

    if (saveResult == SAVE_RESULT_CORRUPT) {
        if (saveState->fullSaveMode) {
            saveData->globalCounter = saveState->globalCounterBackup;
        }

        for (i = 0; i < SAVE_BLOCK_ID_MAX; i++) {
            saveData->blockCounters[i] = saveState->blockCounterBackup[i];
        }
    } else {
        for (i = saveState->startBlock; i < saveState->endBlock; i++) {
            saveData->blockOffsets[i] = !saveData->blockOffsets[i];
        }

        saveData->dataExists = TRUE;
        saveData->isNewGameData = FALSE;
        saveData->fullSaveRequired = FALSE;
    }

    SleepUnlock(1);
}

static void SaveDataState_Cancel (SaveData *saveData, SaveDataState *saveState)
{
    int i;

    if (saveState->fullSaveMode) {
        saveData->globalCounter = saveState->globalCounterBackup;
    }

    for (i = 0; i < SAVE_BLOCK_ID_MAX; i++) {
        saveData->blockCounters[i] = saveState->blockCounterBackup[i];
    }

    if (!CARD_TryWaitBackupAsync()) {
        CARD_CancelBackupAsync();
    }

    if (saveState->isLocked) {
        CARD_UnlockBackup(saveState->lockID);
        OS_ReleaseLockID(saveState->lockID);
        saveState->isLocked = FALSE;
    }

    SleepUnlock(1);
}

BOOL SaveDataState_Save (SaveData *saveData)
{
    int saveResult;
    SaveDataState saveState;

    SaveDataState_Init(saveData, &saveState, SAVE_BLOCK_ID_MAX);

    do {
        saveResult = SaveDataState_Main(saveData, &saveState);
    } while (saveResult == SAVE_RESULT_PROCEED || saveResult == SAVE_RESULT_PROCEED_FINAL);

    SaveDataState_End(saveData, &saveState, saveResult);
    return saveResult;
}

static BOOL SaveBlockFooter_Erase (const SaveData *saveData, int blockID, int sectorID)
{
    u32 saveOffset;
    SaveBlockFooter footer;
    const SaveBlockInfo* blockInfo = &saveData->blockInfo[blockID];

    MI_CpuFill8(&footer, 0xff, sizeof(SaveBlockFooter));
    saveOffset = SaveData_SaveOffset(sectorID, blockInfo) + blockInfo->size - sizeof(SaveBlockFooter);

    return sub_02025A9C(saveOffset, &footer, sizeof(SaveBlockFooter));
}

int SaveTableEntry_BodySize (int saveTableID)
{
    int size;
    const SaveTableEntry* saveTable = gSaveTable;

    GF_ASSERT(saveTableID < gSaveTableSize);
    size = saveTable[saveTableID].sizeFunc();

    size += 4 - (size % 4);
    size += 4;

    return size;
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
        param0[v1].size = SaveTableEntry_BodySize(v1);
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
        if (SaveCheckInfo_CompareCounters(v5, v6) != -1) {
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
    int v2 = SaveTableEntry_BodySize(param0) - 4;
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

    v4 = SaveTableEntry_BodySize(param0) - 4;
    v3 = v4 / 2;
    v2 = v1;
    v5 = sub_0201D628(v1, v4);
    v2[v3] = v5;
    v6 = (u32) & v2[v3];
}
