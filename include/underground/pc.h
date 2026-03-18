#ifndef POKEPLATINUM_UNDERGROUND_PC_H
#define POKEPLATINUM_UNDERGROUND_PC_H

#include "underground/defs.h"
#include "underground/menus.h"

#include "coordinates.h"

int UndergroundPC_GetPCOwnerNetIDAtCoordinates(CoordinatesU16 *coordinates, int dir);
BOOL UndergroundPC_TryUsePC(int netID, CoordinatesU16 *coordinates);
void UndergroundPC_ProcessPCInteraction(int unused0, int unused1, void *data, void *data2);
int CommPacketSizeOf_PCInteraction(void);
void UndergroundPC_ProcessTakeFlagAttempt(int unused0, int unused1, void *data, void *unused3);
void UndergroundPC_ProcessTakenFlag(int unused0, int unused1, void *data, void *unused3);

#endif // POKEPLATINUM_UNDERGROUND_PC_H
