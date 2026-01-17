#ifndef POKEPLATINUM_UNDERGROUND_RECORDS_H
#define POKEPLATINUM_UNDERGROUND_RECORDS_H

#include "struct_defs/underground.h"
#include "struct_defs/underground_record.h"

#include "bg_window.h"
#include "savedata.h"
#include "trainer_info.h"

typedef void (*ExitRecordScreenCallback)(void *);

typedef struct RecordScreenContext {
    ExitRecordScreenCallback exitCallback;
    void *exitCallbackArg;
    Window window;
    u8 padding[20];
} RecordScreenContext;

void RecordsEnv_Init(void *dest, UndergroundRecord *undergroundRecord, SaveData *saveData);
void RecordsEnv_Free(void);
void UndergroundRecords_ForceExitTrainerCase(void);
void UndergroundRecords_Dummy(void);
int RecordsEnv_Size(void);
void UndergroundRecords_ShowTrainerCase(BgConfig *bgConfig, TrainerInfo *trainerInfo, ExitRecordScreenCallback exitCallback, void *exitCallbackArg, BOOL isCurrentTrainer);
void UndergroundRecords_SendRecord(int targetNetID);
void UndergroundRecords_RetrieveTrainerScore(void);
void UndergroundRecords_SendRecordServer(int unused0, int size, void *data, void *unused3);
void UndergroundRecords_ProcessLinkRecord(int unused0, int size, void *data, void *unused3);
BOOL UndergroundRecords_IsLinkRecordReceived(void);
void UndergroundRecords_ClearLinkRecordReceived(void);
void UndergroundRecords_PrintEntryForDecoration(UndergroundRecord *undergroundRecord, int bankEntry);
RecordScreenContext *UndergroundRecords_ShowCheckFlagsScreen(BgConfig *bgConfig, TrainerInfo *trainerInfo, Underground *underground, ExitRecordScreenCallback exitCallback, void *exitCallbackArg);
void UndergroundRecords_ExitCheckFlagsScreen(RecordScreenContext *ctx);

#endif // POKEPLATINUM_UNDERGROUND_RECORDS_H
