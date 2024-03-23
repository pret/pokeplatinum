#ifndef POKEPLATINUM_SAVEDATA_H
#define POKEPLATINUM_SAVEDATA_H

#include "constants/savedata/savedata.h"
#include "constants/savedata/save_table.h"

typedef struct {
    u32 saveCounter;
    u32 blockCounter;
    u32 size;
    u32 signature;
    u8 saveBlockID;
    u16 checksum;
} SaveBlockFooter;

typedef struct {
    u8 saveBlockID;
    u8 sectorStartPos;
    u8 sectorsInUse;
    u32 offset;
    u32 size;
} SaveBlockInfo;

typedef struct {
    int pageID;
    u32 size;
    u32 location;
    u16 checksum;
    u16 blockID;
} SavePageInfo;

typedef struct {
    u8 data[SAVE_SECTOR_SIZE * SAVE_PAGE_MAX];
} SaveDataBody;

typedef struct {
    BOOL unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    s32 unk_10;
    int unk_14;
    u32 unk_18;
    u32 unk_1C[2];
    volatile BOOL unk_24;
} UnkStruct_020250DC;

typedef struct SaveData {
    BOOL backupExists;
    BOOL dataExists;
    BOOL isNewGameData;
    BOOL fullSaveRequired;
    u32 loadCheckStatus;
    SaveDataBody body;
    u32 globalCounter;
    u32 unk_20018[SAVE_BLOCK_ID_MAX];
    u8 unk_20020[SAVE_BLOCK_ID_MAX];
    SavePageInfo pageInfo[SAVE_TABLE_ENTRY_MAX];
    SaveBlockInfo blockInfo[SAVE_BLOCK_ID_MAX];
    UnkStruct_020250DC unk_2029C;
    int unk_202C4;
    u32 unk_202C8;
} SaveData;

typedef struct {
    BOOL unk_00;
    u32 unk_04;
    u32 unk_08;
} UnkStruct_02024860;

typedef struct {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
    u16 unk_0C;
    u16 unk_0E;
} UnkStruct_020253B4;

typedef struct SaveData SaveData;

SaveData* InitializeSaveData(void);
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
BOOL sub_020247C8(SaveData *saveData);
BOOL SaveData_OverwriteCheck(const SaveData *saveData);
BOOL SaveData_FullSaveRequired(const SaveData *saveData);
void SaveData_SetFullSaveRequired(void);
void sub_02024814(SaveData * param0, int param1);
int sub_02024828(SaveData * param0);
void sub_02024850(SaveData * param0);
u16 SaveData_CalculateChecksum(const SaveData *saveData, const void * param1, u32 size);
int sub_020251A4(int param0);
void sub_02025340(SaveData * param0);
int SaveDataExtra_Save(const SaveData * param0, int param1, void * param2);
int SaveDataExtra_SaveMirror(SaveData * param0, int param1, void * param2);
void * SaveDataExtra_Get(SaveData * param0, int param1, int param2, int * param3);
void * SaveDataExtra_Mirror(SaveData * param0, int param1, int param2, int * param3, BOOL * param4);
BOOL sub_02025A3C(void);
BOOL sub_02025A9C(u32 param0, void * param1, u32 param2);
BOOL sub_02025AC0(u32 param0, void * param1, u32 param2);
BOOL SaveData_CRC(int param0);
void sub_02025C84(int param0);

#endif // POKEPLATINUM_SAVEDATA_H
