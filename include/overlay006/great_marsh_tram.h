#ifndef POKEPLATINUM_GREAT_MARSH_TRAM_H
#define POKEPLATINUM_GREAT_MARSH_TRAM_H

#include "field/field_system_decl.h"

typedef struct GreatMarshTramState {
    u16 location;
} GreatMarshTramState;

void GreatMarshTram_DynamicMapFeaturesInit(FieldSystem *fieldSystem);
void GreatMarshTram_MoveToLocation(FieldSystem *fieldSystem, u16 destination, u16 movementType);
u32 GreatMarshTram_CheckLocation(FieldSystem *fieldSystem, u16 location);

#endif // POKEPLATINUM_GREAT_MARSH_TRAM_H
