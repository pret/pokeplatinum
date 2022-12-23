#ifndef POKEPLATINUM_STRUCT_OV83_0223E138_H
#define POKEPLATINUM_STRUCT_OV83_0223E138_H

#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_0205AA50.h"
#include "overlay083/struct_ov83_0223DEA0.h"
#include "overlay083/struct_ov83_0223FE50.h"

#include <nnsys.h>

typedef struct {
    int unk_00;
    UnkStruct_02018340 * unk_04;
    UnkStruct_0205AA50 * unk_08;
    UnkStruct_0205AA50 * unk_0C;
    int unk_10;
    int unk_14;
    UnkStruct_ov83_0223DEA0 * unk_18;
    UnkStruct_ov83_0223FE50 * unk_1C;
    void * unk_20;
    NNSG2dScreenData * unk_24;
    void * unk_28;
    NNSG2dScreenData * unk_2C;
    BOOL unk_30;
} UnkStruct_ov83_0223E138;

#endif // POKEPLATINUM_STRUCT_OV83_0223E138_H
