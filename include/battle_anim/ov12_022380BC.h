#ifndef POKEPLATINUM_OV12_022380BC_H
#define POKEPLATINUM_OV12_022380BC_H

#include "battle_anim/struct_ov12_022380DC.h"

extern const s16 gEncounterCoords[][3];
extern const s16 gSlideTrainerInCoords[][3];

void ov12_022380BC(BattlerSpriteContext *battlerSpriteCtx, enum HeapID heapID);
void ov12_022380CC(BattlerSpriteContext *battlerSpriteCtx, enum HeapID heapID);
void ov12_022382BC(BattlerSpriteContext *battlerSpriteCtx, enum HeapID heapID);
void ov12_02238390(BattlerSpriteContext *battlerSpriteCtx, enum HeapID heapID);
s16 ov12_022384CC(int battlerType, int coordIndex);

#endif // POKEPLATINUM_OV12_022380BC_H
