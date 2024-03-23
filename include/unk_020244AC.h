#ifndef POKEPLATINUM_UNK_020244AC_H
#define POKEPLATINUM_UNK_020244AC_H

//#include "unk_020244AC.h"

#define SECTOR_SIGNATURE 0x20060623

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

#endif // POKEPLATINUM_UNK_020244AC_H
