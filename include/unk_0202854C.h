#ifndef POKEPLATINUM_UNK_0202854C_H
#define POKEPLATINUM_UNK_0202854C_H

#include "struct_decls/struct_02029894_decl.h"
#include "struct_defs/underground.h"
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
void Underground_Init(Underground *underground);
void sub_02028658(SaveData *saveData, int param1);
void sub_02028758(SaveData *saveData, s32 param1, BOOL param2);
void SaveData_LoadAndUpdateUnderground(SaveData *saveData);
void sub_020287E0(SaveData *saveData);
void sub_020287F8(SaveData *saveData);
BOOL sub_02028810(SaveData *saveData);
void Underground_SetUnusedField(Underground *underground);
void sub_02028830(Underground *underground, const TrainerInfo *info);
TrainerInfo *sub_020288C8(const Underground *underground, int heapID, int param2);
u32 Underground_GetRandomSeed(Underground *underground);
int Underground_ConvertTreasureToBagItem(int treasureID);
BOOL sub_0202895C(Underground *underground, int param1);
BOOL sub_02028984(Underground *underground, int param1);
int sub_020289A0(Underground *underground);
int sub_020289B8(Underground *underground, int param1);
int sub_020289C4(Underground *underground, int param1);
void sub_02028A10(Underground *underground, int param1, int param2);
int sub_02028ACC(Underground *underground, int param1, int param2);
BOOL sub_02028AFC(Underground *underground, int param1);
void sub_02028B20(Underground *underground, int param1);
void sub_02028B34(Underground *underground);
int sub_02028B70(Underground *underground);
int sub_02028B88(Underground *underground, int param1);
int sub_02028B94(Underground *underground, int param1);
BOOL sub_02028BC8(Underground *underground, int param1);
void sub_02028BE8(Underground *underground, int param1, int param2);
int Underground_GetSphereCount(Underground *underground);
int sub_02028C54(Underground *underground, int param1);
int sub_02028C60(Underground *underground, int param1);
int sub_02028C6C(Underground *underground, int param1);
BOOL Underground_TryAddSphere(Underground *underground, int sphereType, int sphereSize);
void sub_02028CD8(Underground *underground, int param1, int param2);
int Underground_GetTreasureCount(Underground *underground);
int sub_02028D74(Underground *underground, int param1);
int sub_02028D80(Underground *underground, int param1);
BOOL Underground_TryAddTreasure(Underground *underground, int treasureID);
void sub_02028DD8(Underground *underground, int param1, int param2);
int sub_02028E28(Underground *underground);
int sub_02028E44(Underground *underground, int param1);
int sub_02028E50(Underground *underground, int param1);
BOOL sub_02028E84(Underground *underground, int param1);
void sub_02028EA8(Underground *underground, int param1, int param2);
void sub_02028EF8(Underground *underground, int param1, int param2, int param3, int param4);
int sub_02028F40(Underground *underground, int param1);
int sub_02028F5C(Underground *underground, int param1);
int sub_02028F88(Underground *underground, int param1);
void sub_02028FB4(Underground *underground, int param1);
void sub_02028FE0(Underground *underground, int param1, int param2, int param3, int param4, int param5);
int sub_02029030(Underground *underground, int param1);
int sub_0202903C(Underground *underground, int param1);
int sub_0202905C(Underground *underground, int param1);
int sub_0202907C(Underground *underground, int param1);
void sub_02029088(Underground *underground, int param1, int param2, int param3, int param4, int param5, int param6);
int sub_020290DC(Underground *underground, int param1);
int sub_020290E8(Underground *underground, int param1);
int sub_02029108(Underground *underground, int param1);
int sub_02029128(Underground *underground, int param1);
int sub_02029134(Underground *underground, int param1);
int sub_02029140(Underground *underground, int param1, int param2);
void sub_020291A4(Underground *underground, int param1);
int sub_020291CC(Underground *underground, int param1);
int sub_020291EC(Underground *underground, int param1);
BOOL Underground_HasNeverMined(Underground *underground);
void Underground_SetHasMined(Underground *underground);
BOOL sub_02029234(Underground *underground);
void sub_02029240(Underground *underground);
void Underground_SetPlateMined(Underground *underground, int miningItemID);
BOOL Underground_HasPlateNeverBeenMined(Underground *underground, int miningItemID);
void Underground_IncrementStepCount(Underground *underground);
int Underground_GetStepCount(Underground *underground);
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
Underground *SaveData_GetUnderground(SaveData *saveData);

#endif // POKEPLATINUM_UNK_0202854C_H
