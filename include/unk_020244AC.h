#ifndef POKEPLATINUM_UNK_020244AC_H
#define POKEPLATINUM_UNK_020244AC_H

#include "struct_decls/struct_021C0794_decl.h"

#define SECTOR_SIGNATURE 0x20060623

SaveData* InitializeSaveData(void);
SaveData* GetSaveDataPtr(void);
void* SaveData_Get(SaveData *saveData, int saveTableID);
const void* GetSaveDataConst(const SaveData *saveData, int saveTableID);
BOOL EraseSaveData(SaveData *saveData);
BOOL LoadSaveData(SaveData *saveData);
int SaveSaveData(SaveData *saveData);
int SavePartialSaveData(SaveData *saveData, int saveBlockID);
void ClearSaveData(SaveData *saveData);
BOOL SaveData_GetBackupExists(const SaveData *saveData);
u32 SaveData_GetLoadCheckStatus(const SaveData *saveData);
BOOL SaveData_GetDataExists(const SaveData *saveData);
BOOL SaveData_GetNewGameData(const SaveData *saveData);
BOOL sub_020247C8(SaveData *saveData);
BOOL SaveDataOverwriteCheck(const SaveData *saveData);
BOOL SaveData_GetFullSaveRequired(const SaveData *saveData);
void SaveData_SetFullSaveRequired(void);
void sub_02024814(SaveData * param0, int param1);
int sub_02024828(SaveData * param0);
void sub_02024850(SaveData * param0);
u16 CalculateSaveDataChecksum(const SaveData *saveData, const void * param1, u32 size);
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
