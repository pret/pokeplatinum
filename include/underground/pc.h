#ifndef POKEPLATINUM_UNDERGROUND_PC_H
#define POKEPLATINUM_UNDERGROUND_PC_H

#include "underground/defs.h"
#include "underground/menus.h"

#include "coordinates.h"

int UndergroundPC_GetPCOwnerNetIDAtCoordinates(CoordinatesU16 *coordinates, int dir);
BOOL UndergroundPC_TryUsePC(int netID, CoordinatesU16 *coordinates);
void CommCmd_IntreactUndergroundPC(int unused0, int unused1, void *data, void *data2);
int CommPacketSizeOf_PCInteraction(void);
void CommCmd_AttemptUndergroundTakeFlag(int unused0, int unused1, void *data, void *unused3);
void CommCmd_UndergroundTakenFlag(int unused0, int unused1, void *data, void *unused3);

#endif // POKEPLATINUM_UNDERGROUND_PC_H
