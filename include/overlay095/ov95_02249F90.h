#ifndef POKEPLATINUM_OV95_02249F90_H
#define POKEPLATINUM_OV95_02249F90_H

#include "overlay095/ov95_02246C20.h"

void *TradeWormholePhase_New(TradeSequenceData *sequenceData);
void TradeWormholePhase_Free(void *param);
BOOL TradeWormholePhase_Run(void *param, int *state);

#endif // POKEPLATINUM_OV95_02249F90_H
