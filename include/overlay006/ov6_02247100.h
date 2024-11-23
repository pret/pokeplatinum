#ifndef POKEPLATINUM_OV6_02247100_H
#define POKEPLATINUM_OV6_02247100_H

#include "field/field_system_decl.h"

#include "field_task.h"
#include "pokemon.h"

void *ov6_02247100(FieldSystem *fieldSystem, u32 param1);
BOOL ov6_02247120(FieldTask *task);
void *ov6_022472C8(FieldSystem *fieldSystem, u32 param1, int param2);
BOOL ov6_022472E8(FieldTask *task);
void *ov6_02247488(FieldSystem *, Pokemon *, u32 param0);
BOOL ov6_022474AC(FieldTask *task);
void *ov6_02247530(FieldSystem *fieldSystem, Pokemon *param1, u32 param2);
BOOL ov6_02247554(FieldTask *task);

#endif // POKEPLATINUM_OV6_02247100_H
