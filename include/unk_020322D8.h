#ifndef POKEPLATINUM_UNK_020322D8_H
#define POKEPLATINUM_UNK_020322D8_H

#include "comm_ring.h"
#include "struct_defs/struct_020322F8.h"
#include "struct_defs/struct_0203233C.h"

BOOL CommQueue_IsEmpty(CommQueueMan * param0);
BOOL sub_02032498(CommQueueMan * param0, int param1, u8 * param2, int param3, BOOL param4, BOOL param5);
BOOL sub_02032574(CommQueueMan * param0, UnkStruct_0203233C * param1, BOOL param2);
void CommQueueMan_Init(CommQueueMan * param0, int param1, CommRing * param2);
void CommQueueMan_Reset(CommQueueMan * param0);
void sub_02032638(CommQueueMan * param0);
BOOL CommQueue_CompareCmd(CommQueueMan * param0, int param1);

#endif // POKEPLATINUM_UNK_020322D8_H
