#ifndef POKEPLATINUM_UNK_020322D8_H
#define POKEPLATINUM_UNK_020322D8_H

#include "struct_defs/struct_020322F8.h"
#include "struct_defs/struct_0203233C.h"

#include "comm_ring.h"

BOOL CommQueue_IsEmpty(CommQueueMan *param0);
BOOL CommQueue_Write(CommQueueMan *param0, int cmd, u8 *data, int size, BOOL param4, BOOL param5);
BOOL sub_02032574(CommQueueMan *param0, UnkStruct_0203233C *param1, BOOL param2);
void CommQueueMan_Init(CommQueueMan *param0, int param1, CommRing *param2);
void CommQueueMan_Reset(CommQueueMan *param0);
void CommQueueMan_Delete(CommQueueMan *param0);
BOOL CommQueue_CompareCmd(CommQueueMan *param0, int param1);

#endif // POKEPLATINUM_UNK_020322D8_H
