#ifndef POKEPLATINUM_OV95_0224A390_H
#define POKEPLATINUM_OV95_0224A390_H

#include "trade_sequence/trade_sequence.h"

void *ReceiveBall_New(TradeSequenceData *sequenceData);
void ReceiveBall_Free(void *param);
BOOL ReceiveBall_Run(void *param, int *state);

#endif // POKEPLATINUM_OV95_0224A390_H
