#ifndef POKEPLATINUM_UNDERGROUND_PC_H
#define POKEPLATINUM_UNDERGROUND_PC_H

#include "overlay023/underground_defs.h"
#include "overlay023/underground_menu.h"

#define PC_NONE 0xFF

int UndergroundPC_GetPCAtCoordinates(Coordinates *coordinates, int dir);
BOOL UndergroundPC_TryUsePC(int netID, Coordinates *coordinates);
void UndergroundPC_ProcessPCInteraction(int unused0, int unused1, void *data, void *data2);
int CommPacketSizeOf_PCInteraction(void);
void UndergroundPC_ProcessTakeFlagAttempt(int unused0, int unused1, void *data, void *unused3);
void UndergroundPC_ProcessTakenFlag(int unused0, int unused1, void *data, void *unused3);

#endif // POKEPLATINUM_UNDERGROUND_PC_H
