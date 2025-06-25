#ifndef POKEPLATINUM_UNK_020556C4_H
#define POKEPLATINUM_UNK_020556C4_H

#include "struct_defs/struct_020556C4.h"

void OverworldMapHistory_Clear(OverworldMapHistory *mapHistory);
void OverworldMapHistory_PushViaWarp(OverworldMapHistory *mapHistory, int x, int z);
void OverworldMapHistory_Push(OverworldMapHistory *mapHistory, int x, int z, int faceDirection);

#endif // POKEPLATINUM_UNK_020556C4_H
