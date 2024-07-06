#ifndef POKEPLATINUM_UNK_0205964C_H
#define POKEPLATINUM_UNK_0205964C_H

#include "struct_decls/struct_02029894_decl.h"
#include "struct_defs/struct_0205964C.h"

#include "field/field_system_decl.h"

#include "savedata.h"

typedef struct FieldCommunicationManager {
    TrainerCard *trainerCard[4];
    u8 unk_10[4];
    u8 padding_14[4];
    FieldSystem *fieldSystem;
    MATHRandContext32 unk_1C;
    FieldCommTask task;
    SysTask *sysTask;
    u16 timer;
    u8 unk_3E;
    u8 padding_3F;
    u8 unk_40;
    u8 unk_41;
    u8 isReturningFromBattle;
    u8 unk_43;
    Party *party;
} FieldCommunicationManager;

FieldCommunicationManager *FieldCommMan_Get(void);
void FieldCommMan_Init(FieldSystem *fieldSystem);
void FieldCommMan_Delete(void);
void FieldCommMan_StartBattleServer(FieldSystem *fieldSystem, int param1, int param2);
void FieldCommMan_StartBattleClient(FieldSystem *fieldSystem, int param1, int param2);
void FieldCommMan_ConnectBattleClient(int param0);
void FieldCommMan_ReconnectBattleClient(void);
void FieldCommMan_EnterBattleRoom(FieldSystem *fieldSystem);
void FieldCommMan_EndBattle(void);
void sub_020598A0(void);
void sub_02059D0C(int param0, int param1, void *param2, void *param3);
BOOL sub_02059D2C(void);
void sub_02059EAC(int param0, int param1, void *param2, void *param3);
u8 *sub_02059EBC(int param0, void *param1, int param2);
UnkStruct_02029894 *sub_0205A080(SaveData *param0);
void sub_0205A0A0(void);
void sub_0205A0BC(void);

#endif // POKEPLATINUM_UNK_0205964C_H
