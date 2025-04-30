#ifndef POKEPLATINUM_GREAT_MARSH_BINOCULARS_H
#define POKEPLATINUM_GREAT_MARSH_BINOCULARS_H

#include "field/field_system_decl.h"

#include "great_marsh_lookout.h"
#include "location.h"

typedef struct BinocularCoords {
    u16 x;
    u16 z;
} BinocularCoords;

// Data used to control the map view displayed while using the Great Marsh lookout binoculars.
typedef struct GreatMarshBinoculars {
    BinocularCoords coordsList[BINOCULARS_CYCLE_COUNT + 1];
    Location viewLocation;
    FieldSystem *fieldSystem;
    int lookoutMapId;
} GreatMarshBinoculars;

int GreatMarshBinoculars_GetMonSpecies(FieldSystem *fieldSystem);
GreatMarshBinoculars *GreatMarshBinoculars_InitData(const int heapID, FieldSystem *fieldSystem);
void GreatMarshBinoculars_FreeData(GreatMarshBinoculars *data);
void GreatMarshBinoculars_SetNextLocationWithCoords(const u8 cycleNum, GreatMarshBinoculars *binocularsData);
Location *GreatMarshBinoculars_GetLocation(GreatMarshBinoculars *binocData);

#endif // POKEPLATINUM_GREAT_MARSH_BINOCULARS_H
