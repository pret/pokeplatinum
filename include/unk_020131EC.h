#ifndef POKEPLATINUM_UNK_020131EC_H
#define POKEPLATINUM_UNK_020131EC_H

#include "constants/heap.h"
#include "constants/narc.h"

#include "struct_defs/struct_02013610.h"

void sub_020133D4(enum NarcID narcID, int param1, int param2, int param3, int param4, int param5, int param6, void *param7);
void sub_020134E4(int param0, int param1, int param2, int param3, int param4, int param5, int *param6, const void *param7, void *param8);
void sub_02013560(int param0, int param1, const UnkStruct_02013610 *param2, int *param3, const void *param4, void *param5);
void sub_020135F0(enum NarcID narcID, int param1, enum HeapId heapID, const UnkStruct_02013610 *param3, void *param4);
void sub_02013610(enum NarcID narcID, int param1, enum HeapId heapID, void *param3);
void *sub_0201363C(enum NarcID narcID, int param1, enum HeapId heapID);
void *sub_02013660(enum NarcID narcID, int param1, enum HeapId heapID);
void sub_020136A4(enum NarcID narcID, int param1, enum HeapId heapID, int param3, int param4, int param5, int param6, void *param7, u32 param8, BOOL param9, int param10, int param11);
void sub_02013720(enum NarcID narcID, int param1, enum HeapId heapID, const UnkStruct_02013610 *param3, void *param4, u32 param5, BOOL param6, int param7, int param8);
void sub_02013750(enum NarcID narcID, int charID, enum HeapId heapID, void *param3, u32 personality, BOOL param5, int param6, int param7);

#endif // POKEPLATINUM_UNK_020131EC_H
