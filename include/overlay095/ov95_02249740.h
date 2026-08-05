#ifndef POKEPLATINUM_OV95_02249740_H
#define POKEPLATINUM_OV95_02249740_H

#include "overlay095/ov95_02246C20.h"

void *TradeBallFlybyPhase_New(TradeSequenceData *sequenceData);
void TradeBallFlybyPhase_Free(void *param);
BOOL TradeBallFlybyPhase_Run(void *param, int *state);

#endif // POKEPLATINUM_OV95_02249740_H
