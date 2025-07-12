#ifndef POKEPLATINUM_STRUCT_OV23_02248D20_H
#define POKEPLATINUM_STRUCT_OV23_02248D20_H

#include "struct_defs/underground.h"

#include "overlay023/funcptr_ov23_02248D20.h"

#include "colored_arrow.h"
#include "list_menu.h"
#include "string_list.h"

typedef struct {
    UnkFuncPtr_ov23_02248D20 unk_00;
    Underground *unk_04;
    StringList *unk_08;
    ListMenu *unk_0C;
    ColoredArrow *unk_10;
    u16 unk_14;
    u16 unk_16;
    u16 unk_18;
    u16 unk_1A;
    u8 unk_1C;
    u8 heapID;
    u8 unk_1E;
    u16 unk_20;
} UnkStruct_ov23_02248D20;

#endif // POKEPLATINUM_STRUCT_OV23_02248D20_H
