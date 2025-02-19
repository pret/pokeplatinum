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

void Shop_Start(FieldTask *task, FieldSystem *fieldSystem, u16 *shopItems, u8 martType, BOOL incDeptStoreBuyCount);
BOOL ov7_0224CEAC(FieldTask *param0);

#endif // POKEPLATINUM_OV7_0224CD28_H
