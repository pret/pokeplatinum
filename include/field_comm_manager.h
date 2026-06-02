#ifndef POKEPLATINUM_UNK_0205964C_H
#define POKEPLATINUM_UNK_0205964C_H

#include <nitro/math.h>

#include "field/field_system_decl.h"
#include "functypes/funcptr_020598EC.h"

#include "party.h"
#include "savedata.h"
#include "sys_task_manager.h"
#include "trainer_case.h"
#include "underground.h"

typedef struct FieldCommunicationManager {
    TrainerCase *trainerCase[4];
    u8 trainerCaseCopied[4];
    u8 padding_14[4];
    FieldSystem *fieldSystem;
    MATHRandContext32 rand;
    FieldCommTask task;
    SysTask *sysTask;
    u16 timer;
    u8 connectID;
    u8 padding_3F;
    u8 pauseTask;
    u8 isUnderground;
    u8 isReturningFromBattle;
    u8 battleRoomMovement;
    Party *party;
} FieldCommunicationManager;

FieldCommunicationManager *FieldCommManager_Get(void);
void FieldCommManager_Init(FieldSystem *fieldSystem);
void FieldCommManager_Delete(void);
void FieldCommManager_StartBattleServer(FieldSystem *fieldSystem, int commType, int regulation);
void FieldCommManager_StartBattleClient(FieldSystem *fieldSystem, int commType, int regulation);
void FieldCommManager_ConnectBattleClient(int connectID);
void FieldCommManager_ReconnectBattleClient(void);
void FieldCommManager_EnterBattleRoom(FieldSystem *fieldSystem);
void FieldCommManager_EndBattleNoSync(void);
void FieldCommManager_EndBattleSync(void);
void FieldCommManager_UpdateBattleRoomMovement(int unused0, int unused1, void *message, void *unused3);
BOOL FieldCommManager_IsInMovementState(void);
void FieldCommManager_SetTrainerCaseCopiedFlag(int netId, int unused1, void *unused2, void *unused3);
u8 *FieldCommManager_GetTrainerCase(int netId, void *unused1, int unused2);
SecretBase *FieldCommManager_GetCurrentOccupiedSecretBase(SaveData *saveData);
void FieldCommManager_PauseUndergroundResources(void);
void FieldCommManager_UnpauseUndergroundResources(void);

#endif // POKEPLATINUM_UNK_0205964C_H
