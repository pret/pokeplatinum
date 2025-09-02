#ifndef POKEPLATINUM_OV6_02242AF0_H
#define POKEPLATINUM_OV6_02242AF0_H

#include "field/field_system_decl.h"

typedef struct GreatMarshTramState {
    u16 location;
} GreatMarshTramState;

void GreatMarshTram_DynamicMapFeaturesInit(FieldSystem *fieldSystem);
void GreatMarshTram_MoveToLocation(FieldSystem *fieldSystem, u16 param1, u16 param2);
u32 GreatMarshTram_CheckLocation(FieldSystem *fieldSystem, u16 param1);

#endif // POKEPLATINUM_OV6_02242AF0_H
