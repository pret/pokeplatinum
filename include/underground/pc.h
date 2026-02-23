#ifndef POKEPLATINUM_UNDERGROUND_PC_H
#define POKEPLATINUM_UNDERGROUND_PC_H

#include "underground/defs.h"
#include "underground/menus.h"

int UndergroundPC_GetPCOwnerNetIDAtCoordinates(Coordinates *coordinates, int dir);
BOOL UndergroundPC_TryUsePC(int netID, Coordinates *coordinates);
void UndergroundPC_ProcessPCInteraction(int unused0, int unused1, void *data, void *data2);
int CommPacketSizeOf_PCInteraction(void);
void UndergroundPC_ProcessTakeFlagAttempt(int unused0, int unused1, void *data, void *unused3);
void UndergroundPC_ProcessTakenFlag(int unused0, int unused1, void *data, void *unused3);

#endif // POKEPLATINUM_UNDERGROUND_PC_H
