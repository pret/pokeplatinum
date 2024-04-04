#ifndef POKEPLATINUM_UNK_02057518_H
#define POKEPLATINUM_UNK_02057518_H

#include "field/field_system_decl.h"
#include "overlay023/struct_ov23_0224A294.h"

CommPlayerManager * CommPlayerData_Get(void);
BOOL CommPlayerManager_Init(void * param0, FieldSystem * param1, BOOL param2);
void CommPlayerMan_Reset(void);
void CommPlayerMan_Restart(void);
void CommPlayerMan_Delete(BOOL param0);
void CommPlayerMan_Reinit(void);
void CommPlayerMan_Stop(void);
void CommPlayer_InitPersonal(void);
void CommPlayer_CopyPersonal(int param0);
void CommPlayer_SendXZPos(BOOL param0, int param1, int param2);
void CommPlayer_SendPos(BOOL param0);
void CommPlayer_SendPosServer(BOOL param0);
u32 CommPlayer_Size(void);
void CommPlayer_Destroy(u8 param0, BOOL param1, BOOL param2);
BOOL sub_02057FAC(void);
void sub_02057FC4(BOOL param0);
void sub_02058018(int param0, int param1, void * param2, void * param3);
void sub_0205805C(FieldSystem * param0, BOOL param1);
BOOL CommPlayer_CheckNPCCollision(int param0, int param1);
void CommPlayer_RecvLocation(int param0, int param1, void * param2, void * param3);
void CommPlayer_RecvDelete(int param0, int param1, void * param2, void * param3);
int sub_020585A4(void);
void sub_020585A8(int param0, int param1, void * param2, void * param3);
void sub_02058B0C(int param0, int param1, BOOL param2);
void sub_02058B7C(int param0);
void sub_02058B94(int param0);
void sub_02058BA8(int param0, int param1, BOOL param2);
void sub_02058BE8(int param0);
int sub_02058C3C(void);
BOOL sub_02058C40(void);
BOOL CommPlayer_IsActive(int param0);
int CommPlayer_XPos(int param0);
int CommPlayer_ZPos(int param0);
int sub_02058D48(int param0);
int sub_02058D68(int param0);
int sub_02058D88(int param0);
int sub_02058DC0(int param0);
int sub_02058DF8(int param0);
int sub_02058E4C(int param0);
int sub_02058EA0(int param0);
int sub_02058EC0(int param0);
int CommPlayer_AddXServer(int param0);
int CommPlayer_AddZServer(int param0);
int CommPlayer_Dir(int param0);
int CommPlayer_DirServer(int param0);
void CommPlayer_LookTowardsServer(int param0, int param1);
void CommPlayer_LookTowards(int param0, int param1);
int sub_0205900C(int param0, int param1);
void sub_02059058(int param0, BOOL param1);
BOOL sub_02059094(int param0);
BOOL sub_020590C4(void);
void sub_02059180(int param0, int param1, void * param2, void * param3);
void CommPlayer_SetBattleDir(void);
BOOL sub_0205928C(void);
int CommPlayer_GetOppositeDir(int param0);
void sub_02059354(int param0, int param1);
void sub_02059378(int param0);
void sub_02059390(int param0, int param1);
void sub_020593B4(int param0);
int sub_020593CC(int param0);
int sub_020593E0(int param0);
void CommPlayer_SetDir(int param0);
void CommPlayer_SetDirClient(int param0, int param1);
int CommPlayer_DirClient(int param0);
void sub_02059464(int param0);
void sub_0205948C(int param0);
void sub_020594EC(void);
void sub_020594FC(void);
void sub_02059514(void);
void sub_02059524(void);
void sub_02059570(void);
void CommPlayerManager_ForcePos(void);
void CommPlayerManager_ForceDir(void);
void sub_02059638(BOOL param0);

#endif // POKEPLATINUM_UNK_02057518_H
