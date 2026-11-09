#ifndef POKEPLATINUM_UNK_02095AF0_H
#define POKEPLATINUM_UNK_02095AF0_H

#include "struct_defs/struct_02029C88.h"
#include "struct_defs/struct_02095C60.h"

#include "contest.h"

void Contest_InitCommCommands(void *contest);
BOOL Contest_SendPhoto(Contest *unused, int contestantID, const ContestPhoto *contestPhoto);
BOOL Contest_SendAllPhotos(Contest *contest, ContestPhoto **contestPhotos);
BOOL sub_02095C60(UnkStruct_02095C60 *param0, u32 param1);
BOOL sub_02095CA8(UnkStruct_02095C60 *param0, int param1);

#endif // POKEPLATINUM_UNK_02095AF0_H
