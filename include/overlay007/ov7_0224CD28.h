#ifndef POKEPLATINUM_OV7_0224CD28_H
#define POKEPLATINUM_OV7_0224CD28_H

#include "field/field_system_decl.h"

#include "field_task.h"

enum MartTypes {
    MART_TYPE_NORMAL = 0,
    MART_TYPE_DECOR,
    MART_TYPE_SEAL,
    MART_TYPE_FRONTIER, // uses Battle Points instead of normal money
};

void ov7_0224CDA4(FieldTask *param0, FieldSystem *fieldSystem, u16 *param2, u8 martType, BOOL param4);
BOOL ov7_0224CEAC(FieldTask *param0);

#endif // POKEPLATINUM_OV7_0224CD28_H
