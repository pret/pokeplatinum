#ifndef POKEPLATINUM_UNDERGROUND_MAP_TRANSITION_H
#define POKEPLATINUM_UNDERGROUND_MAP_TRANSITION_H

#include "field/field_system_decl.h"

enum UGMapTransition {
    UG_MAP_TRANSITION_ENTER_START = 0,
    UG_MAP_TRANSITION_ENTER_ARRIVE,
    UG_MAP_TRANSITION_EXIT_START,
    UG_MAP_TRANSITION_EXIT_ARRIVE,
    UG_MAP_TRANSITION_COUNT,
};

void UndergroundMapTransition_StartTransition(FieldSystem *fieldSystem, enum UGMapTransition transition, BOOL *isDoneOut);

#endif // POKEPLATINUM_UNDERGROUND_MAP_TRANSITION_H
