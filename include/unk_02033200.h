#ifndef POKEPLATINUM_UNK_02033200_H
#define POKEPLATINUM_UNK_02033200_H

#include <nitro/wm.h>

#include "struct_defs/sentence.h"
#include "struct_defs/struct_0203330C.h"

#include "trainer_info.h"

void CommServerClient_Init(TrainerInfo *param0, BOOL param1);
BOOL sub_020332D0(void);
void WirelessDriver_Init(void);
BOOL WirelessDriver_IsReady(void);
BOOL WirelessDriver_Initialized(void);
void WirelessDriver_Shutdown(void);
void sub_02033518(void);
BOOL CommServerClient_InitServer(BOOL param0, BOOL param1, BOOL param2);
BOOL CommServerClient_InitClient(BOOL param0, BOOL param1);
BOOL sub_020336D4(void);
BOOL sub_02033768(void);
void sub_02033794(BOOL param0);
int sub_02033808(void);
int sub_0203383C(int param0);
BOOL sub_02033870(void);
void sub_02033884(void);
int sub_02033898(int param0);
int sub_020338EC(void);
int sub_0203394C(void);
void sub_020339AC(int param0, TrainerInfo *param1);
BOOL sub_020339E8(u16 param0);
void sub_02033A5C(void);
void sub_02033D94(u16 param0);
BOOL sub_02033DFC(void);
BOOL CommServerClient_IsInitialized(void);
BOOL sub_02033E30(void);
BOOL CommServerClient_IsClientConnecting(void);
BOOL sub_02033E68(void);
BOOL CommServerClient_CheckError(void);
void sub_02033EA8(BOOL param0);
void sub_02033ED4(BOOL param0);
WMBssDesc *sub_02033F3C(int param0);
UnkStruct_0203330C *sub_02033F6C(int param0);
TrainerInfo *sub_02033F9C(void);
TrainerInfo *sub_02033FB0(int param0);
void sub_02033FDC(u8 *param0, int param1);
BOOL sub_0203406C(void);
void sub_0203408C(void);
void sub_020340A8(Sentence *param0);
void sub_020340C4(void *param0);
void *sub_020340E8(void);
void sub_020340FC(void);
int sub_02034120(int param0);
BOOL sub_02034148(void);
void sub_02034150(void *param0);
const void *sub_02034168(int param0);

#endif // POKEPLATINUM_UNK_02033200_H
