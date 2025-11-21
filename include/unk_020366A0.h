#ifndef POKEPLATINUM_UNK_020366A0_H
#define POKEPLATINUM_UNK_020366A0_H

#include "overlay065/struct_ov65_0222F6EC.h"

#include "battle_regulation.h"
#include "bg_window.h"
#include "enums.h"
#include "savedata.h"

BOOL CommMan_IsInitialized(void);
void sub_02036794(SaveData *saveData);
void sub_020367D0(void);
void sub_020367F0(void);
void sub_02036814(BOOL param0);
void sub_02036824(void);
BOOL sub_02036834(void);
void sub_02036884(void);
void sub_02036894(void);
void sub_020368A4(void);
void CommMan_StartBattleServer(SaveData *saveData, int param1, int param2, const BattleRegulation *param3, BOOL param4);
void CommMan_StartBattleClient(SaveData *saveData, int param1, int param2, const BattleRegulation *param3, BOOL param4);
void sub_02036948(int param0);
void sub_02036964(void);
void sub_02036978(void);
void sub_02036994(BOOL param0);
BOOL sub_0203699C(void);
void sub_020369EC(SaveData *saveData);
void sub_02036A38(int param0);
int sub_02036A68(void);
BOOL sub_02036AA0(void);
void sub_02036AC4(void);
BOOL sub_02036B44(void);
void sub_02036B68(void);
void sub_02036B84(void);
void sub_02036BA0(void);
void sub_02036BC8(void);
void sub_02036BD8(void);
void sub_02036BE8(SaveData *saveData, int param1);
void sub_02036C1C(SaveData *saveData, int param1);
void sub_02036C50(void);
void sub_0203781C(void);
void sub_02037854(int param0);
void sub_02037878(void);
void sub_02037888(int param0);
void sub_020378B8(void);
void sub_020378C8(int param0);
void sub_02037A78(int param0, int param1, void *param2, void *param3);
void sub_02037AD8(int param0, int param1, void *param2, void *param3);
int sub_02037B54(void);
void sub_02037B58(int param0);
void sub_02037BC0(SaveData *saveData);
void sub_02037BFC(void);
BOOL sub_02037C18(void);
void sub_02037D48(SaveData *saveData);
void sub_02037D84(void);
u8 sub_02037DA0(void);
BOOL sub_02037DB0(void);
void sub_02037F94(int param0, int param1, int param2);
int sub_020380A0(int param0);
int sub_020380E4();
void sub_02038240(int param0, int param1, void *param2, void *param3);
BOOL sub_02038284(void);
BOOL sub_02038294(void);
BOOL sub_020382C0(void);
UnkStruct_ov65_0222F6EC *sub_020382F8(void);
void sub_02038350(void);
void sub_02038378(void);
void sub_02038398(void);
void sub_020383D4(void);
BOOL sub_020383E8(void);
void sub_02038438(SaveData *saveData);
void sub_0203848C(void);
void sub_020384C0(SaveData *saveData);
void sub_02038514(void);
void sub_02038548(SaveData *saveData);
void sub_0203859C(void);
BOOL sub_020385D0(void);
void *sub_0203871C(SaveData *saveData, int param1);
void sub_0203878C(SaveData *saveData, const void *param1);
void sub_020387E8(void);
BOOL sub_02038804(void);
BOOL sub_0203881C(void);
void sub_0203883C(UnkEnum_ov66_02232F38 param0);
void sub_0203888C(void);
u32 sub_020388AC(void);
void *sub_020388E8(void);
void CommMan_SetErrorHandling(BOOL param0, BOOL param1);
BOOL sub_02038938(void);
int sub_0203895C(void);
int sub_02038974(void);
void sub_0203898C(u8 *param0);
void sub_020389A0(u8 *param0);
BOOL CommMan_IsConnectedToWifi(void);
void sub_020389C4(u8 param0);
u8 sub_020389D8(void);
void sub_020389FC(int param0);
void NetworkError_DisplayGTSCriticalError(void);
void sub_02038A1C(int param0, BgConfig *param1);
void sub_02038A20(int param0);
BOOL sub_02038AB8(void);
BOOL Link_SetErrorState(int param0);
void sub_02038B00(void);
void sub_02038B20(void);
void sub_02038B40(void);
void sub_02038B60(void);
void sub_02038B84(void);
void sub_02038EA4(void);
BOOL sub_02038EB4(void);

#endif // POKEPLATINUM_UNK_020366A0_H
