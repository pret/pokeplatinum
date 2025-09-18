#ifndef POKEPLATINUM_MOVEMENT_ACTION_DESCRIPTOR_H
#define POKEPLATINUM_MOVEMENT_ACTION_DESCRIPTOR_H

#include "functypes/funcptr_020EDF0C.h"
#include "functypes/funcptr_020EDF0C_1.h"
#include "functypes/funcptr_020EDF0C_2.h"
#include "functypes/funcptr_020EDF0C_3.h"

typedef struct {
    int movementType;
    UnkFuncPtr_020EDF0C initFunc;
    UnkFuncPtr_020EDF0C_1 updateFunc;
    UnkFuncPtr_020EDF0C_2 completeFunc;
    UnkFuncPtr_020EDF0C_3 cleanupFunc;
} MovementActionDescriptor;

#endif // POKEPLATINUM_MOVEMENT_ACTION_DESCRIPTOR_H
