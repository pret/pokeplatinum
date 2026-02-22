#ifndef POKEPLATINUM_UNDERGROUND_TRAP_PRICES_H
#define POKEPLATINUM_UNDERGROUND_TRAP_PRICES_H

#include "generated/traps.h"

#define RANDOM_SPHERE_TYPE 6

const u8 Trap_GetSpherePriceType(const enum Trap trapID);
const u8 Trap_GetSpherePriceMinSize(const enum Trap trapID);
const u8 Trap_GetSpherePriceMaxSize(const enum Trap trapID);

#endif // POKEPLATINUM_UNDERGROUND_TRAP_PRICES_H
