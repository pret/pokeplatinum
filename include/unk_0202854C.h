#ifndef POKEPLATINUM_UNK_0202854C_H
#define POKEPLATINUM_UNK_0202854C_H

#include "struct_decls/struct_0202855C_decl.h"
#include "struct_decls/struct_02029894_decl.h"
#include "struct_decls/struct_020298B0_decl.h"

#include "savedata.h"
#include "trainer_info.h"

#define NUM_MAX_DECORATION_GOODS 200

int Underground_SaveSize(void);
int sub_02028554(void);
int sub_02028558(void);
SecretBaseRecord *sub_0202855C(u32 heapID);
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
u32 sub_02028930(UndergroundData *param0);
int sub_02028938(int param0);
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
int sub_02028C3C(UndergroundData *param0);
int sub_02028C54(UndergroundData *param0, int param1);
int sub_02028C60(UndergroundData *param0, int param1);
int sub_02028C6C(UndergroundData *param0, int param1);
BOOL sub_02028CB0(UndergroundData *param0, int param1, int param2);
void sub_02028CD8(UndergroundData *param0, int param1, int param2);
int sub_02028D58(UndergroundData *param0);
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
BOOL sub_0202920C(UndergroundData *param0);
void sub_02029220(UndergroundData *param0);
BOOL sub_02029234(UndergroundData *param0);
void sub_02029240(UndergroundData *param0);
void sub_02029250(UndergroundData *param0, int param1);
BOOL sub_02029274(UndergroundData *param0, int param1);
void sub_0202929C(UndergroundData *param0);
int sub_020292B4(UndergroundData *param0);
void sub_020292C0(UnkStruct_02029894 *param0);
void sub_020292CC(UnkStruct_02029894 *param0);
void sub_02029300(UnkStruct_02029894 *param0);
void sub_02029308(UnkStruct_02029894 *param0, int param1, int param2, int param3, int param4);
void sub_02029364(UnkStruct_02029894 *param0, int param1, int param2, int param3);
int sub_020293B0(const UnkStruct_02029894 *param0, int param1);
int sub_020293FC(const UnkStruct_02029894 *param0, int param1);
int sub_0202942C(const UnkStruct_02029894 *param0, int param1);
int sub_02029460(const UnkStruct_02029894 *param0);
int sub_0202948C(const UnkStruct_02029894 *param0);
int sub_020294B8(const SecretBaseRecord *param0);
int sub_020294C0(const SecretBaseRecord *param0);
void sub_020294D4(SecretBaseRecord *param0, int param1);
int sub_020294EC(const SecretBaseRecord *param0);
void sub_020294F4(SecretBaseRecord *param0, int param1);
int sub_02029524(const SecretBaseRecord *param0);
void sub_0202952C(SecretBaseRecord *param0);
void sub_0202955C(SecretBaseRecord *param0);
int sub_0202958C(const SecretBaseRecord *param0);
int sub_020295B8(const SecretBaseRecord *param0);
void sub_020295C0(SecretBaseRecord *param0);
int sub_020295F0(const SecretBaseRecord *param0);
void sub_020295F8(SecretBaseRecord *param0, int param1);
int sub_0202963C(const SecretBaseRecord *param0);
void sub_02029644(SecretBaseRecord *param0, int param1);
void sub_02029688(SecretBaseRecord *param0, int param1);
int sub_020296CC(const SecretBaseRecord *param0);
void sub_020296D4(SecretBaseRecord *param0);
int sub_02029704(const SecretBaseRecord *param0);
void sub_0202970C(SecretBaseRecord *param0);
int sub_0202973C(const SecretBaseRecord *param0);
void sub_02029744(SecretBaseRecord *param0);
int sub_02029774(const SecretBaseRecord *param0);
void sub_0202977C(SecretBaseRecord *param0);
int sub_020297AC(const SecretBaseRecord *param0);
void sub_020297B4(SecretBaseRecord *param0);
int sub_020297E4(const SecretBaseRecord *param0);
void sub_020297EC(SecretBaseRecord *param0);
int sub_0202981C(const SecretBaseRecord *param0);
void sub_02029824(SecretBaseRecord *param0);
void sub_02029854(UnkStruct_02029894 *param0, int param1, int param2, int param3);
int sub_02029874(const UnkStruct_02029894 *param0);
int sub_0202987C(const UnkStruct_02029894 *param0);
int sub_02029884(const UnkStruct_02029894 *param0);
BOOL sub_0202988C(const UnkStruct_02029894 *param0);
UnkStruct_02029894 *sub_02029894(SaveData *saveData);
SecretBaseRecord *SaveData_SecretBaseRecord(SaveData *saveData);
SecretBaseRecord *sub_020298AC(UnkStruct_02029894 *param0);
UndergroundData *SaveData_GetUndergroundData(SaveData *saveData);

#endif // POKEPLATINUM_UNK_0202854C_H
