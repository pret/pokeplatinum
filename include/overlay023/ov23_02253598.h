#ifndef POKEPLATINUM_OV23_02253598_H
#define POKEPLATINUM_OV23_02253598_H

#include "struct_defs/underground.h"
#include "struct_defs/underground_record.h"

#include "overlay023/funcptr_ov23_02253834.h"
#include "overlay023/struct_ov23_02253598_decl.h"

#include "bg_window.h"
#include "savedata.h"
#include "trainer_info.h"

void ov23_02253598(UnkStruct_ov23_02253598 *param0, UndergroundRecord *param1, SaveData *saveData);
void ov23_022535CC(void);
void ov23_022535EC(void);
void ov23_02253604(void);
int ov23_02253608(void);
void ov23_ShowTrainerRecord(BgConfig *param0, TrainerInfo *param1, UnkFuncPtr_ov23_02253834 exitCallback, void *exitCallbackArg, BOOL isCurrentTrainer);
void ov23_SendRecord(int targetNetID);
void ov23_02253968(void);
void ov23_SendRecordServer(int unused0, int size, void *data, void *unused3);
void ov23_ReceiveRecord(int unused0, int size, void *data, void *unused3);
BOOL ov23_IsLinkRecordReceived(void);
void ov23_ClearLinkRecordReceived(void);
void ov23_02253A00(UndergroundRecord *param0, int param1);
void *ov23_02253C64(BgConfig *param0, TrainerInfo *param1, Underground *underground, UnkFuncPtr_ov23_02253834 param3, void *param4);
void ov23_02253D10(void *param0);

#endif // POKEPLATINUM_OV23_02253598_H
