#ifndef POKEPLATINUM_OV95_0224B3D8_H
#define POKEPLATINUM_OV95_0224B3D8_H

#include "trade_sequence/trade_sequence.h"

void *TradeReceivePhase_New(TradeSequenceData *sequenceData);
void TradeReceivePhase_Free(void *param);
BOOL TradeReceivePhase_Run(void *param, int *state);

#endif // POKEPLATINUM_OV95_0224B3D8_H
