#ifndef POKEPLATINUM_SAVEDATA_H
#define POKEPLATINUM_SAVEDATA_H

#include "constants/savedata/savedata.h"
#include "constants/savedata/save_table.h"

typedef struct SaveBlockFooter {
    u32 saveCounter;
    u32 blockCounter;
    u32 size;
    u32 signature;
    u8 saveBlockID;
    u16 checksum;
} SaveBlockFooter;

typedef struct SaveBlockInfo {
    u8 saveBlockID;
    u8 sectorStartPos;
    u8 sectorsInUse;
    u32 offset;
    u32 size;
} SaveBlockInfo;

typedef struct SavePageInfo {
    int pageID;
    u32 size;
    u32 location;
    u16 checksum;
    u16 blockID;
} SavePageInfo;

typedef struct SaveDataBody {
    u8 data[SAVE_SECTOR_SIZE * SAVE_PAGE_MAX];
} SaveDataBody;

typedef struct SaveDataState {
    BOOL fullSaveMode;
    int startBlock;
    int currentBlock;
    int endBlock;
    s32 lockID;
    int mainSequence;
    u32 globalCounterBackup;
    u32 blockCounterBackup[SAVE_BLOCK_ID_MAX];
    volatile BOOL locked;
} SaveDataState;

typedef struct SaveData {
    BOOL backupExists;
    BOOL dataExists;
    BOOL isNewGameData;
    BOOL fullSaveRequired;
    u32 loadCheckStatus;
    SaveDataBody body;
    u32 globalCounter;
    u32 blockCounters[SAVE_BLOCK_ID_MAX];
    u8 blockOffsets[SAVE_BLOCK_ID_MAX];
    SavePageInfo pageInfo[SAVE_TABLE_ENTRY_MAX];
    SaveBlockInfo blockInfo[SAVE_BLOCK_ID_MAX];
    SaveDataState state;
    int sectorSwitch;
    u32 sectorCounter;
} SaveData;

typedef struct SaveCheckInfo {
    BOOL valid;
    u32 globalCounter;
    u32 blockCounter;
} SaveCheckInfo;

typedef struct SaveCheckFooter {
    u32 signature;
    u32 saveCounter;
    u32 size;
    u16 id;
    u16 checksum;
} SaveCheckFooter;

SaveData* SaveData_Init(void);
SaveData* SaveData_Ptr(void);
void* SaveData_SaveTable(SaveData *saveData, int saveTableID);
const void* SaveData_SaveTableConst(const SaveData *saveData, int saveTableID);
BOOL SaveData_Erase(SaveData *saveData);
BOOL SaveData_Load(SaveData *saveData);
int SaveData_Save(SaveData *saveData);
int SaveData_SaveBlock(SaveData *saveData, int saveBlockID);
void SaveData_Clear(SaveData *saveData);
BOOL SaveData_BackupExists(const SaveData *saveData);
u32 SaveData_LoadCheckStatus(const SaveData *saveData);
BOOL SaveData_DataExists(const SaveData *saveData);
BOOL SaveData_IsNewGameData(const SaveData *saveData);
BOOL SaveData_MiscSaveBlock_InitFlag(SaveData *saveData);
BOOL SaveData_OverwriteCheck(const SaveData *saveData);
BOOL SaveData_FullSaveRequired(const SaveData *saveData);
void SaveData_SetFullSaveRequired(void);
void SaveData_SaveStateInit(SaveData *saveData, int blockID);
int SaveData_SaveStateMain(SaveData *saveData);
void SaveData_SaveStateCancel(SaveData *saveData);
u16 SaveData_CalculateChecksum(const SaveData *saveData, const void *startAddress, u32 size);
int SaveTableEntry_BodySize(int saveTableID);
void SaveDataExtra_Init(SaveData *saveData);
int SaveDataExtra_Save(const SaveData *saveData, int extraSaveID, void *data);
int SaveDataExtra_SaveMirror(SaveData *saveData, int extraSaveID, void *data);
void* SaveDataExtra_Get(SaveData *saveData, int heapID, int extraSaveID, int *loadResult);
void* SaveDataExtra_Mirror(SaveData *saveData, int heapID, int extraSaveID, int *loadResult, BOOL *isOld);
BOOL SaveData_CardBackupType(void);
BOOL SaveData_CardSave(u32 address, void *data, u32 size);
BOOL SaveData_CardLoad(u32 address, void *data, u32 size);
BOOL SaveData_Checksum(int saveTableID);
void SaveData_SetChecksum(int saveTableID);

#endif // POKEPLATINUM_SAVEDATA_H
