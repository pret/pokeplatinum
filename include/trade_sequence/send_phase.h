#ifndef POKEPLATINUM_OV95_02247B6C_H
#define POKEPLATINUM_OV95_02247B6C_H

#include "trade_sequence/trade_sequence.h"

void *TradeSendPhase_New(TradeSequenceData *sequenceData);
void TradeSendPhase_Free(void *param);
BOOL TradeSendPhase_Run(void *param, int *state);

#endif // POKEPLATINUM_OV95_02247B6C_H
