#ifndef POKEPLATINUM_OV95_02248590_H
#define POKEPLATINUM_OV95_02248590_H

#include "trade_sequence/trade_sequence.h"

void *TradeTubePhase_New(TradeSequenceData *sequenceData);
void TradeTubePhase_Free(void *param);
BOOL TradeTubePhase_Run(void *param, int *state);

#endif // POKEPLATINUM_OV95_02248590_H
