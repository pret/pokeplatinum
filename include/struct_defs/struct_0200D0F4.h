#ifndef POKEPLATINUM_STRUCT_0200D0F4_H
#define POKEPLATINUM_STRUCT_0200D0F4_H

#include "cell_actor.h"
#include "sprite_renderer.h"

typedef struct CellActorData {
    CellActor *cellActor;
    CellActorResourceData *cellActorResource;
    CellActorResourceDataList *cellActorResourceList;
    BOOL vramTransfer;
} CellActorData;

#endif // POKEPLATINUM_STRUCT_0200D0F4_H
