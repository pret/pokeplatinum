#ifndef POKEPLATINUM_UNK_0202854C_H
#define POKEPLATINUM_UNK_0202854C_H

#include "struct_decls/struct_02029894_decl.h"
#include "struct_defs/underground_data.h"
#include "struct_defs/underground_record.h"

#include "savedata.h"
#include "trainer_info.h"

#define NUM_MAX_DECORATION_GOODS 200

enum BaseFlagType {
    BASE_FLAG_NORMAL,
    BASE_FLAG_BRONZE,
    BASE_FLAG_SILVER,
    BASE_FLAG_GOLD,
    BASE_FLAG_PLATINUM
};

int Underground_SaveSize(void);
int sub_02028554(void);
int UndergroundRecord_Size(void);
UndergroundRecord *UndergroundRecord_Init(u32 heapID);
void Underground_Init(UndergroundData *param0);
void sub_02028658(SaveData *saveData, int param1);
void sub_02028758(SaveData *saveData, s32 param1, BOOL param2);
void SaveData_LoadAndUpdateUnderground(SaveData *saveData);
void sub_020287E0(SaveData *saveData);
void sub_020287F8(SaveData *saveData);
BOOL sub_02028810(SaveData *saveData);
void UndergroundData_SetUnusedField(UndergroundData *undergroundData);
void sub_02028830(UndergroundData *param0, const TrainerInfo *param1);
TrainerInfo *sub_020288C8(const UndergroundData *param0, int heapID, int param2);
u32 UndergroundData_GetRandomSeed(UndergroundData *param0);
int Underground_ConvertTreasureToBagItem(int treasureID);
BOOL sub_0202895C(UndergroundData *param0, int param1);
BOOL sub_02028984(UndergroundData *param0, int param1);
int sub_020289A0(UndergroundData *param0);
int sub_020289B8(UndergroundData *param0, int param1);
int sub_020289C4(UndergroundData *param0, int param1);
void sub_02028A10(UndergroundData *param0, int param1, int param2);
int sub_02028ACC(UndergroundData *param0, int param1, int param2);
BOOL sub_02028AFC(UndergroundData *param0, int param1);
void sub_02028B20(UndergroundData *param0, int param1);
void sub_02028B34(UndergroundData *param0);
int sub_02028B70(UndergroundData *param0);
int sub_02028B88(UndergroundData *param0, int param1);
int sub_02028B94(UndergroundData *param0, int param1);
BOOL sub_02028BC8(UndergroundData *param0, int param1);
void sub_02028BE8(UndergroundData *param0, int param1, int param2);
int UndergroundData_GetSphereCount(UndergroundData *undergroundData);
int sub_02028C54(UndergroundData *param0, int param1);
int sub_02028C60(UndergroundData *param0, int param1);
int sub_02028C6C(UndergroundData *param0, int param1);
BOOL sub_02028CB0(UndergroundData *param0, int param1, int param2);
void sub_02028CD8(UndergroundData *param0, int param1, int param2);
int UndergroundData_GetTreasureCount(UndergroundData *undergroundData);
int sub_02028D74(UndergroundData *param0, int param1);
int sub_02028D80(UndergroundData *param0, int param1);
BOOL sub_02028DB4(UndergroundData *param0, int param1);
void sub_02028DD8(UndergroundData *param0, int param1, int param2);
int sub_02028E28(UndergroundData *param0);
int sub_02028E44(UndergroundData *param0, int param1);
int sub_02028E50(UndergroundData *param0, int param1);
BOOL sub_02028E84(UndergroundData *param0, int param1);
void sub_02028EA8(UndergroundData *param0, int param1, int param2);
void sub_02028EF8(UndergroundData *param0, int param1, int param2, int param3, int param4);
int sub_02028F40(UndergroundData *param0, int param1);
int sub_02028F5C(UndergroundData *param0, int param1);
int sub_02028F88(UndergroundData *param0, int param1);
void sub_02028FB4(UndergroundData *param0, int param1);
void sub_02028FE0(UndergroundData *param0, int param1, int param2, int param3, int param4, int param5);
int sub_02029030(UndergroundData *param0, int param1);
int sub_0202903C(UndergroundData *param0, int param1);
int sub_0202905C(UndergroundData *param0, int param1);
int sub_0202907C(UndergroundData *param0, int param1);
void sub_02029088(UndergroundData *param0, int param1, int param2, int param3, int param4, int param5, int param6);
int sub_020290DC(UndergroundData *param0, int param1);
int sub_020290E8(UndergroundData *param0, int param1);
int sub_02029108(UndergroundData *param0, int param1);
int sub_02029128(UndergroundData *param0, int param1);
int sub_02029134(UndergroundData *param0, int param1);
int sub_02029140(UndergroundData *param0, int param1, int param2);
void sub_020291A4(UndergroundData *param0, int param1);
int sub_020291CC(UndergroundData *param0, int param1);
int sub_020291EC(UndergroundData *param0, int param1);
BOOL UndergroundData_HasNeverMined(UndergroundData *undergroundData);
void UndergroundData_SetHasMined(UndergroundData *undergroundData);
BOOL sub_02029234(UndergroundData *param0);
void sub_02029240(UndergroundData *param0);
void UndergroundData_SetPlateMined(UndergroundData *undergroundData, int miningItemID);
BOOL UndergroundData_HasPlateNeverBeenMined(UndergroundData *undergroundData, int miningItemID);
void UndergroundData_IncrementStepCount(UndergroundData *param0);
int UndergroundData_GetStepCount(UndergroundData *param0);
void sub_020292C0(UnkStruct_02029894 *param0);
void sub_020292CC(UnkStruct_02029894 *param0);
void sub_02029300(UnkStruct_02029894 *param0);
void sub_02029308(UnkStruct_02029894 *param0, int param1, int param2, int param3, int param4);
void sub_02029364(UnkStruct_02029894 *param0, int param1, int param2, int param3);
int sub_020293B0(const UnkStruct_02029894 *param0, int param1);
int sub_020293FC(const UnkStruct_02029894 *param0, int param1);
int sub_0202942C(const UnkStruct_02029894 *param0, int param1);
int sub_GetMaxRemovableRocks(const UnkStruct_02029894 *param0);
int sub_GetMaxDisplayItemsCount(const UnkStruct_02029894 *param0);
int UndergroundRecord_GetTrainerScore(const UndergroundRecord *undergroundRecord);
BOOL UndergroundRecord_HasPlatBaseFlag(const UndergroundRecord *undergroundRecord);
void UndergroundRecord_SetTrainerScore(UndergroundRecord *undergroundRecord, int param1);
int UndergroundRecord_GetPeopleMet(const UndergroundRecord *undergroundRecord);
void UndergroundRecord_IncrementPeopleMet(UndergroundRecord *undergroundRecord, int param1);
int UndergroundRecord_GetNumGiftsGiven(const UndergroundRecord *undergroundRecord);
void UndergroundRecord_IncrementGiftsGiven(UndergroundRecord *undergroundRecord);
void sub_0202955C(UndergroundRecord *param0);
enum BaseFlagType UndergroundRecord_GetFlagRank(const UndergroundRecord *undergroundRecord);
int UndergroundRecord_GetCapturedFlagCount(const UndergroundRecord *undergroundRecord);
void UndergroundRecord_IncrementCapturedFlagCount(UndergroundRecord *undergroundRecord);
int UndergroundRecord_GetNumSpheresDug(const UndergroundRecord *undergroundRecord);
void UndergroundRecord_AddNumSpheresDug(UndergroundRecord *undergroundRecord, int amount);
int UndergroundRecord_GetNumFossilsDug(const UndergroundRecord *undergroundRecord);
void UndergroundRecord_AddNumFossilsDug(UndergroundRecord *undergroundRecord, int amount);
void sub_02029688(UndergroundRecord *param0, int param1);
int UndergroundRecord_GetNumTrapsHit(const UndergroundRecord *undergroundRecord);
void UndergroundRecord_IncrementNumTrapsHit(UndergroundRecord *undergroundRecord);
int sub_02029704(const UndergroundRecord *param0);
void sub_0202970C(UndergroundRecord *param0);
int sub_0202973C(const UndergroundRecord *param0);
void sub_02029744(UndergroundRecord *param0);
int sub_02029774(const UndergroundRecord *param0);
void sub_0202977C(UndergroundRecord *param0);
int sub_020297AC(const UndergroundRecord *param0);
void sub_020297B4(UndergroundRecord *param0);
int sub_020297E4(const UndergroundRecord *param0);
void sub_020297EC(UndergroundRecord *param0);
int sub_0202981C(const UndergroundRecord *param0);
void sub_02029824(UndergroundRecord *param0);
void sub_02029854(UnkStruct_02029894 *param0, int param1, int param2, int param3);
int sub_02029874(const UnkStruct_02029894 *param0);
int sub_0202987C(const UnkStruct_02029894 *param0);
int sub_02029884(const UnkStruct_02029894 *param0);
BOOL sub_0202988C(const UnkStruct_02029894 *param0);
UnkStruct_02029894 *sub_02029894(SaveData *saveData);
UndergroundRecord *SaveData_UndergroundRecord(SaveData *saveData);
UndergroundRecord *sub_020298AC(UnkStruct_02029894 *param0);
UndergroundData *SaveData_GetUndergroundData(SaveData *saveData);

#endif // POKEPLATINUM_UNK_0202854C_H
