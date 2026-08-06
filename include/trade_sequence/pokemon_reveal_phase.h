#ifndef POKEPLATINUM_OV95_0224ABC0_H
#define POKEPLATINUM_OV95_0224ABC0_H

#include "trade_sequence/trade_sequence.h"

void *TradePokemonRevealPhase_New(TradeSequenceData *sequenceData);
void TradePokemonRevealPhase_Free(void *param);
BOOL TradePokemonRevealPhase_Run(void *param, int *state);

#endif // POKEPLATINUM_OV95_0224ABC0_H
